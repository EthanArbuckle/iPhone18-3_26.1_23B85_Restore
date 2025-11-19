@interface XPCServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC24SecureMessagingAgentCore9XPCServer)init;
@end

@implementation XPCServer

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = specialized XPCServer.listener(_:shouldAcceptNewConnection:)(v7);

  return v9 & 1;
}

- (_TtC24SecureMessagingAgentCore9XPCServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end