@interface XPCServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC24SecureMessagingAgentCore9XPCServer)init;
@end

@implementation XPCServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = specialized XPCServer.listener(_:shouldAcceptNewConnection:)(connectionCopy);

  return v9 & 1;
}

- (_TtC24SecureMessagingAgentCore9XPCServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end