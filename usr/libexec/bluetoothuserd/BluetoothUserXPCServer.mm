@interface BluetoothUserXPCServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC14bluetoothuserd22BluetoothUserXPCServer)init;
@end

@implementation BluetoothUserXPCServer

- (_TtC14bluetoothuserd22BluetoothUserXPCServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_10005DC3C(listenerCopy, connectionCopy);

  return v9 & 1;
}

@end