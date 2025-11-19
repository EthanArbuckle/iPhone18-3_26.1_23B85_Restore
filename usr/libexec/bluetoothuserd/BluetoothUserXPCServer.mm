@interface BluetoothUserXPCServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC14bluetoothuserd22BluetoothUserXPCServer)init;
@end

@implementation BluetoothUserXPCServer

- (_TtC14bluetoothuserd22BluetoothUserXPCServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10005DC3C(v6, v7);

  return v9 & 1;
}

@end