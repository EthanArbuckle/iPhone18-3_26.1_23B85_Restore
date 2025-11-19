@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC20WorkoutKitXPCService15ServiceDelegate)init;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = specialized ServiceDelegate.listener(_:shouldAcceptNewConnection:)(v7);

  return v9 & 1;
}

- (_TtC20WorkoutKitXPCService15ServiceDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ServiceDelegate();
  return [(ServiceDelegate *)&v3 init];
}

@end