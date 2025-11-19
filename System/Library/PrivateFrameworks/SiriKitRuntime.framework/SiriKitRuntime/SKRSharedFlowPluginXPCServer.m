@interface SKRSharedFlowPluginXPCServer
- (SKRSharedFlowPluginXPCServer)init;
@end

@implementation SKRSharedFlowPluginXPCServer

- (SKRSharedFlowPluginXPCServer)init
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.executor);
  Logger.debugF(file:function:)();
  type metadata accessor for SharedFlowPluginService();
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  swift_allocObject();
  SharedFlowPluginService.init(overrideFlowLoader:overrideSiriKitRuntime:)(v9, 0);
  v4 = objc_allocWithZone(type metadata accessor for SharedFlowPluginXPCServer.Listener());

  *(&self->super.isa + OBJC_IVAR___SKRSharedFlowPluginXPCServer_listener) = specialized SharedFlowPluginXPCServer.Listener.init(sharedFlowPluginService:)(v5, v4);
  v8.receiver = self;
  v8.super_class = type metadata accessor for SharedFlowPluginXPCServer();
  v6 = [(SKRSharedFlowPluginXPCServer *)&v8 init];

  return v6;
}

@end