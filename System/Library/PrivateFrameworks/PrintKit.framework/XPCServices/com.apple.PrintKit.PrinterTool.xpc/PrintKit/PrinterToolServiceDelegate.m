@interface PrinterToolServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation PrinterToolServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = getPrintdRPCProtocolInterface();
  [v4 setExportedInterface:v5];

  v6 = [[PrintdRPCService alloc] initWithXPCConnection:v4];
  [v4 setExportedObject:v6];

  [v4 activate];
  return 1;
}

@end