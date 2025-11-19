@interface Daemon
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation Daemon

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = Daemon.listener(_:shouldAcceptNewConnection:)(v6, v7);

  return v9;
}

@end