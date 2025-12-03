@interface JITXPCListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener)init;
@end

@implementation JITXPCListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_25F0FB558(listenerCopy, connectionCopy);

  return v9 & 1;
}

- (_TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end