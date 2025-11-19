@interface CloudTabServices
+ (id)_serverConnection;
+ (void)clearAllCloudTabDevices;
+ (void)clearTabsForCurrentDevice;
+ (void)didToggleCloudTabs:(BOOL)a3 terminateAfterUpdating:(BOOL)a4;
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
  v3 = [a1 _serverConnection];
  v2 = [v3 messageWithName:kWebBookmarksClearAllCloudTabDevicesMessageName];
  [v3 sendMessage:v2];
}

+ (void)clearTabsForCurrentDevice
{
  v3 = [a1 _serverConnection];
  v2 = [v3 messageWithName:kWebBookmarksClearCloudTabsForCurrentDeviceMessageName];
  [v3 sendMessage:v2];
}

+ (void)didToggleCloudTabs:(BOOL)a3 terminateAfterUpdating:(BOOL)a4
{
  v7 = [a1 _serverConnection];
  v6 = [v7 messageWithName:kWebBookmarksDidToggleCloudTabsMessageName];
  xpc_dictionary_set_BOOL(v6, kWebBookmarksEnabledKey, a3);
  xpc_dictionary_set_BOOL(v6, kWebBookmarksTerminateAfterUpdatingKey, a4);
  [v7 sendMessage:v6];
}

@end