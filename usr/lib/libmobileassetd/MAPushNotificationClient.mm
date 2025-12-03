@interface MAPushNotificationClient
- (MAPushNotificationClient)initWithConnection:(id)connection;
- (id)description;
- (void)didReceivePushNotificationWithInfo:(id)info;
@end

@implementation MAPushNotificationClient

- (MAPushNotificationClient)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v13.receiver = self;
  v13.super_class = MAPushNotificationClient;
  v6 = [(MAPushNotificationClient *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
    v7->_pid = [connectionCopy processIdentifier];
    v7->_uid = [connectionCopy effectiveUserIdentifier];
    if (proc_name(v7->_pid, v15, 0xFFu) >= 1)
    {
      v8 = [NSString stringWithUTF8String:v15];
      name = v7->_name;
      v7->_name = v8;
    }

    if (proc_pidpath(v7->_pid, buffer, 0x1000u) >= 1)
    {
      v10 = [NSString stringWithUTF8String:buffer];
      path = v7->_path;
      v7->_path = v10;
    }
  }

  return v7;
}

- (id)description
{
  name = [(MAPushNotificationClient *)self name];
  v4 = [(MAPushNotificationClient *)self pid];
  v5 = [(MAPushNotificationClient *)self uid];
  path = [(MAPushNotificationClient *)self path];
  connection = [(MAPushNotificationClient *)self connection];
  remoteObjectInterface = [connection remoteObjectInterface];
  connection2 = [(MAPushNotificationClient *)self connection];
  exportedInterface = [connection2 exportedInterface];
  connection3 = [(MAPushNotificationClient *)self connection];
  remoteObjectProxy = [connection3 remoteObjectProxy];
  v13 = [NSString stringWithFormat:@"%@ (pid = %d, uid = %d, path = %@, connection remote object interface = %@, exported interface = %@, remote object proxy = %@)", name, v4, v5, path, remoteObjectInterface, exportedInterface, remoteObjectProxy];

  return v13;
}

- (void)didReceivePushNotificationWithInfo:(id)info
{
  infoCopy = info;
  connection = [(MAPushNotificationClient *)self connection];
  v5 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_29];
  [v5 didReceivePushNotificationWithInfo:infoCopy];
}

void __63__MAPushNotificationClient_didReceivePushNotificationWithInfo___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _MADLog(@"PushNotification");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "XPC error connecting for didReceivePushNotificationWithInfo: %{public}@", &v4, 0xCu);
  }
}

@end