@interface CloudTabServices
+ (id)_serverConnection;
+ (void)clearAllCloudTabDevices;
+ (void)clearTabsForCurrentDevice;
+ (void)didToggleCloudTabs:(BOOL)tabs terminateAfterUpdating:(BOOL)updating;
@end

@implementation CloudTabServices

+ (id)_serverConnection
{
  v2 = [WebBookmarksXPCConnection alloc];
  v3 = [(WebBookmarksXPCConnection *)v2 initClientForMachService:kWebBookmarksdServiceName];

  return v3;
}

+ (void)clearAllCloudTabDevices
{
  _serverConnection = [self _serverConnection];
  v2 = [_serverConnection messageWithName:kWebBookmarksClearAllCloudTabDevicesMessageName];
  [_serverConnection sendMessage:v2];
}

+ (void)clearTabsForCurrentDevice
{
  _serverConnection = [self _serverConnection];
  v2 = [_serverConnection messageWithName:kWebBookmarksClearCloudTabsForCurrentDeviceMessageName];
  [_serverConnection sendMessage:v2];
}

+ (void)didToggleCloudTabs:(BOOL)tabs terminateAfterUpdating:(BOOL)updating
{
  _serverConnection = [self _serverConnection];
  v6 = [_serverConnection messageWithName:kWebBookmarksDidToggleCloudTabsMessageName];
  xpc_dictionary_set_BOOL(v6, kWebBookmarksEnabledKey, tabs);
  xpc_dictionary_set_BOOL(v6, kWebBookmarksTerminateAfterUpdatingKey, updating);
  [_serverConnection sendMessage:v6];
}

@end