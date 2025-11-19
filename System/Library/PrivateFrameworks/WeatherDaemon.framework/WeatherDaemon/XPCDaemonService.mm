@interface XPCDaemonService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)start;
- (void)stop;
@end

@implementation XPCDaemonService

- (void)start
{
  v2 = self;
  XPCDaemonService.start()();
}

- (void)stop
{
  v2 = self;
  XPCDaemonService.stop()();
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = XPCDaemonService.listener(_:shouldAcceptNewConnection:)(v8, v7);

  return v9;
}

@end