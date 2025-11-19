@interface SKRExecutionListenerManager
- (SKRExecutionListenerManager)init;
@end

@implementation SKRExecutionListenerManager

- (SKRExecutionListenerManager)init
{
  v8.receiver = self;
  v8.super_class = SKRExecutionListenerManager;
  v2 = [(SKRExecutionListenerManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(SKRSharedFlowPluginXPCServer);
    sharedPluginServer = v2->_sharedPluginServer;
    v2->_sharedPluginServer = v3;

    v5 = objc_alloc_init(MEMORY[0x1E699BB40]);
    encoreServiceLauncher = v2->_encoreServiceLauncher;
    v2->_encoreServiceLauncher = v5;
  }

  return v2;
}

@end