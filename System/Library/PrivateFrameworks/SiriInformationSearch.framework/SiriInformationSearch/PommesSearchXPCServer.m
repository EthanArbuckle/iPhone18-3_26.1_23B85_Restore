@interface PommesSearchXPCServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation PommesSearchXPCServer

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = specialized PommesSearchServiceDelegate.listener(_:shouldAcceptNewConnection:)(v7);

  return v9 & 1;
}

@end