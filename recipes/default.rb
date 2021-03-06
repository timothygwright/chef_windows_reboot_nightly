#
# Cookbook:: windows_reboot_nightly
# Recipe:: default
#
# Copyright:: 2019, Nghiem Ba Hieu
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

windows_task 'reboot-nightly' do
  command 'powershell.exe -command "Restart-Computer -force"'
  run_level :highest
  frequency :daily
  start_time node['reboot_nightly']['time']
end
