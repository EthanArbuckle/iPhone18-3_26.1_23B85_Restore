@interface PPSClient
- (PPSClient)initWithConnection:(id)connection remoteProxy:(id)proxy;
@end

@implementation PPSClient

- (PPSClient)initWithConnection:(id)connection remoteProxy:(id)proxy
{
  connectionCopy = connection;
  proxyCopy = proxy;
  v12.receiver = self;
  v12.super_class = PPSClient;
  v9 = [(PPSClient *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, connection);
    objc_storeStrong(&v10->_remoteProxy, proxy);
  }

  return v10;
}

@end