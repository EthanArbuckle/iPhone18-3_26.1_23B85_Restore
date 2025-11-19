@interface JITXPCListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener)init;
@end

@implementation JITXPCListener

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_25F0FB558(v6, v7);

  return v9 & 1;
}

- (_TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end