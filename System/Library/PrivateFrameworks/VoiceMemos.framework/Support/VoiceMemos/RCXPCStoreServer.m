@interface RCXPCStoreServer
+ (id)startStoreServers:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation RCXPCStoreServer

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a4;
  v9.receiver = self;
  v9.super_class = RCXPCStoreServer;
  if ([(RCXPCStoreServer *)&v9 listener:a3 shouldAcceptNewConnection:v6])
  {
    v7 = (*(self->_shouldAcceptDatabaseConnection + 2))();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)startStoreServers:(id)a3
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002EF0;
  v10[3] = &unk_100055198;
  v11 = a3;
  v3 = v11;
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