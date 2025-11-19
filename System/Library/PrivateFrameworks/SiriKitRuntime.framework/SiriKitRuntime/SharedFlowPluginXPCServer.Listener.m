@interface SharedFlowPluginXPCServer.Listener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtCC14SiriKitRuntime25SharedFlowPluginXPCServer8Listener)init;
@end

@implementation SharedFlowPluginXPCServer.Listener

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = specialized SharedFlowPluginXPCServer.Listener.listener(_:shouldAcceptNewConnection:)(v7);

  return v9 & 1;
}

- (_TtCC14SiriKitRuntime25SharedFlowPluginXPCServer8Listener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end