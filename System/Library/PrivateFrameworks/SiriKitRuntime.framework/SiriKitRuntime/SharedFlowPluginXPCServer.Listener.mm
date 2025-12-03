@interface SharedFlowPluginXPCServer.Listener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtCC14SiriKitRuntime25SharedFlowPluginXPCServer8Listener)init;
@end

@implementation SharedFlowPluginXPCServer.Listener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = specialized SharedFlowPluginXPCServer.Listener.listener(_:shouldAcceptNewConnection:)(connectionCopy);

  return v9 & 1;
}

- (_TtCC14SiriKitRuntime25SharedFlowPluginXPCServer8Listener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end