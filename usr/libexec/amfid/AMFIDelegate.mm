@interface AMFIDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation AMFIDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = objc_alloc_init(AMFIService);
  v6 = off_100028C50;
  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[AMFIDelegate listener:shouldAcceptNewConnection:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: received NSXPC Connection", &v9, 0xCu);
  }

  [(AMFIService *)v5 setConnection:connectionCopy];
  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AMFIProtocol];
  [connectionCopy setExportedInterface:v7];

  [connectionCopy setExportedObject:v5];
  [connectionCopy resume];

  return 1;
}

@end