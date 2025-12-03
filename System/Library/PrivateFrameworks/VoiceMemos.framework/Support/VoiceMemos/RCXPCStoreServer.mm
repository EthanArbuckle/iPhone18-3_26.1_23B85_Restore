@interface RCXPCStoreServer
+ (id)startStoreServers:(id)servers;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation RCXPCStoreServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = RCXPCStoreServer;
  if ([(RCXPCStoreServer *)&v9 listener:listener shouldAcceptNewConnection:connectionCopy])
  {
    v7 = (*(self->_shouldAcceptDatabaseConnection + 2))();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)startStoreServers:(id)servers
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002EF0;
  v10[3] = &unk_100055198;
  serversCopy = servers;
  v3 = serversCopy;
  v4 = objc_retainBlock(v10);
  v5 = kCloudStoreXPCServiceName;
  v6 = RCCloudRecordingsStoreURL();
  v7 = (v4[2])(v4, v5, v6);

  [v7 startListening];
  v12 = v7;
  v8 = [NSArray arrayWithObjects:&v12 count:1];

  return v8;
}

@end