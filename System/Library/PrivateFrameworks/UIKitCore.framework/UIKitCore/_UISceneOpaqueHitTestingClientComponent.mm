@interface _UISceneOpaqueHitTestingClientComponent
- (id)_windowScene;
- (uint64_t)_setupWindowWithWindowScene:(uint64_t)result;
- (void)_handleSceneWillConnect:(id)connect;
- (void)invalidate;
- (void)setScene:(id)scene;
@end

@implementation _UISceneOpaqueHitTestingClientComponent

- (void)setScene:(id)scene
{
  v6.receiver = self;
  v6.super_class = _UISceneOpaqueHitTestingClientComponent;
  [(FBSSceneComponent *)&v6 setScene:scene];
  _windowScene = [(_UISceneOpaqueHitTestingClientComponent *)self _windowScene];
  if (_windowScene)
  {
    [(_UISceneOpaqueHitTestingClientComponent *)self _setupWindowWithWindowScene:_windowScene];
  }

  else
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__handleSceneWillConnect_ name:@"UISceneWillConnectNotification" object:0];
  }
}

- (id)_windowScene
{
  if (self)
  {
    clientScene = [self clientScene];
    if (clientScene)
    {
      v2 = [(UIScene *)UIWindowScene _sceneForFBSScene:clientScene];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)_setupWindowWithWindowScene:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    v4 = [[_UIBackgroundHitTestWindow alloc] initWithWindowScene:v3];

    v5 = *(v2 + 24);
    *(v2 + 24) = v4;

    v6 = *(v2 + 24);

    return [v6 setHidden:0];
  }

  return result;
}

- (void)invalidate
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UISceneWillConnectNotification" object:0];

  [(UIWindow *)self->_backgroundHitTestWindow setHidden:1];
  backgroundHitTestWindow = self->_backgroundHitTestWindow;
  self->_backgroundHitTestWindow = 0;

  v5.receiver = self;
  v5.super_class = _UISceneOpaqueHitTestingClientComponent;
  [(FBSSceneComponent *)&v5 invalidate];
}

- (void)_handleSceneWillConnect:(id)connect
{
  _windowScene = [(_UISceneOpaqueHitTestingClientComponent *)self _windowScene];
  if (_windowScene)
  {
    v6 = _windowScene;
    [(_UISceneOpaqueHitTestingClientComponent *)self _setupWindowWithWindowScene:_windowScene];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"UISceneWillConnectNotification" object:0];

    _windowScene = v6;
  }
}

@end