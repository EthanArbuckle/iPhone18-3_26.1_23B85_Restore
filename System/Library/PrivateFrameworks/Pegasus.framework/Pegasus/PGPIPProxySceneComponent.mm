@interface PGPIPProxySceneComponent
- (PGPIPProxySceneComponent)initWithScene:(id)scene;
- (UIScene)_scene;
- (void)_sceneWillInvalidate:(id)invalidate;
@end

@implementation PGPIPProxySceneComponent

- (PGPIPProxySceneComponent)initWithScene:(id)scene
{
  sceneCopy = scene;
  v11.receiver = self;
  v11.super_class = PGPIPProxySceneComponent;
  v5 = [(PGPIPProxySceneComponent *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(PGPIPProxySceneComponent *)v5 _setScene:sceneCopy];
    _sceneIdentifier = [sceneCopy _sceneIdentifier];
    identifier = v6->_identifier;
    v6->_identifier = _sceneIdentifier;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"PGPIPSceneComponentDidConnectNotification" object:v6];
  }

  return v6;
}

- (void)_sceneWillInvalidate:(id)invalidate
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"PGPIPSceneComponentDidDisconnectNotification" object:self];
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->__scene);

  return WeakRetained;
}

@end