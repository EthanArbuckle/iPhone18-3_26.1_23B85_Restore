@interface TC2Daemon
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC20privatecloudcomputed9TC2Daemon)init;
@end

@implementation TC2Daemon

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1001CA33C(connectionCopy);

  return v9 & 1;
}

- (_TtC20privatecloudcomputed9TC2Daemon)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end