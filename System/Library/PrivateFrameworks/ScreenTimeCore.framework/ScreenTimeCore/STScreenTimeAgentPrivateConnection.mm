@interface STScreenTimeAgentPrivateConnection
+ (id)newConnection;
+ (id)newContactsServiceConnection;
@end

@implementation STScreenTimeAgentPrivateConnection

+ (id)newConnection
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.ScreenTimeAgent.private" options:4096];
  newInterface = [self newInterface];
  [v3 setRemoteObjectInterface:newInterface];

  return v3;
}

+ (id)newContactsServiceConnection
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.ScreenTimeAgent.Contacts" options:4096];
  newContactsServiceInterface = [self newContactsServiceInterface];
  [v3 setRemoteObjectInterface:newContactsServiceInterface];

  return v3;
}

@end