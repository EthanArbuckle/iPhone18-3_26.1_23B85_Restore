@interface PGPIPProxySceneComponent
- (PGPIPProxySceneComponent)initWithScene:(id)a3;
- (UIScene)_scene;
- (void)_sceneWillInvalidate:(id)a3;
@end

@implementation PGPIPProxySceneComponent

- (PGPIPProxySceneComponent)initWithScene:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PGPIPProxySceneComponent;
  v5 = [(PGPIPProxySceneComponent *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(PGPIPProxySceneComponent *)v5 _setScene:v4];
    v7 = [v4 _sceneIdentifier];
    identifier = v6->_identifier;
    v6->_identifier = v7;

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 postNotificationName:@"PGPIPSceneComponentDidConnectNotification" object:v6];
  }

  return v6;
}

- (void)_sceneWillInvalidate:(id)a3
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"PGPIPSceneComponentDidDisconnectNotification" object:self];
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->__scene);

  return WeakRetained;
}

@end