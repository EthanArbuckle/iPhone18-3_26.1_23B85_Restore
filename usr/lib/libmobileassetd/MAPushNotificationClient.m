@interface MAPushNotificationClient
- (MAPushNotificationClient)initWithConnection:(id)a3;
- (id)description;
- (void)didReceivePushNotificationWithInfo:(id)a3;
@end

@implementation MAPushNotificationClient

- (MAPushNotificationClient)initWithConnection:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = MAPushNotificationClient;
  v6 = [(MAPushNotificationClient *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    v7->_pid = [v5 processIdentifier];
    v7->_uid = [v5 effectiveUserIdentifier];
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
  v3 = [(MAPushNotificationClient *)self name];
  v4 = [(MAPushNotificationClient *)self pid];
  v5 = [(MAPushNotificationClient *)self uid];
  v6 = [(MAPushNotificationClient *)self path];
  v7 = [(MAPushNotificationClient *)self connection];
  v8 = [v7 remoteObjectInterface];
  v9 = [(MAPushNotificationClient *)self connection];
  v10 = [v9 exportedInterface];
  v11 = [(MAPushNotificationClient *)self connection];
  v12 = [v11 remoteObjectProxy];
  v13 = [NSString stringWithFormat:@"%@ (pid = %d, uid = %d, path = %@, connection remote object interface = %@, exported interface = %@, remote object proxy = %@)", v3, v4, v5, v6, v8, v10, v12];

  return v13;
}

- (void)didReceivePushNotificationWithInfo:(id)a3
{
  v4 = a3;
  v6 = [(MAPushNotificationClient *)self connection];
  v5 = [v6 remoteObjectProxyWithErrorHandler:&__block_literal_global_29];
  [v5 didReceivePushNotificationWithInfo:v4];
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