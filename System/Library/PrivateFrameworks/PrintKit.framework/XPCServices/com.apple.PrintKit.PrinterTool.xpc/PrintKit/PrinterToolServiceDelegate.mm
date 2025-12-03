@interface PrinterToolServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation PrinterToolServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = getPrintdRPCProtocolInterface();
  [connectionCopy setExportedInterface:v5];

  v6 = [[PrintdRPCService alloc] initWithXPCConnection:connectionCopy];
  [connectionCopy setExportedObject:v6];

  [connectionCopy activate];
  return 1;
}

@end