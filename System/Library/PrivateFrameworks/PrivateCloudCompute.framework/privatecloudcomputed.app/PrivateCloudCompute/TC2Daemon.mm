@interface TC2Daemon
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC20privatecloudcomputed9TC2Daemon)init;
@end

@implementation TC2Daemon

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1001CA33C(v7);

  return v9 & 1;
}

- (_TtC20privatecloudcomputed9TC2Daemon)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end