@interface _UISceneOpaqueHitTestingClientComponent
- (id)_windowScene;
- (uint64_t)_setupWindowWithWindowScene:(uint64_t)result;
- (void)_handleSceneWillConnect:(id)a3;
- (void)invalidate;
- (void)setScene:(id)a3;
@end

@implementation _UISceneOpaqueHitTestingClientComponent

- (void)setScene:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UISceneOpaqueHitTestingClientComponent;
  [(FBSSceneComponent *)&v6 setScene:a3];
  v4 = [(_UISceneOpaqueHitTestingClientComponent *)self _windowScene];
  if (v4)
  {
    [(_UISceneOpaqueHitTestingClientComponent *)self _setupWindowWithWindowScene:v4];
  }

  else
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:self selector:sel__handleSceneWillConnect_ name:@"UISceneWillConnectNotification" object:0];
  }
}

- (id)_windowScene
{
  if (a1)
  {
    v1 = [a1 clientScene];
    if (v1)
    {
      v2 = [(UIScene *)UIWindowScene _sceneForFBSScene:v1];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UISceneWillConnectNotification" object:0];

  [(UIWindow *)self->_backgroundHitTestWindow setHidden:1];
  backgroundHitTestWindow = self->_backgroundHitTestWindow;
  self->_backgroundHitTestWindow = 0;

  v5.receiver = self;
  v5.super_class = _UISceneOpaqueHitTestingClientComponent;
  [(FBSSceneComponent *)&v5 invalidate];
}

- (void)_handleSceneWillConnect:(id)a3
{
  v4 = [(_UISceneOpaqueHitTestingClientComponent *)self _windowScene];
  if (v4)
  {
    v6 = v4;
    [(_UISceneOpaqueHitTestingClientComponent *)self _setupWindowWithWindowScene:v4];
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 removeObserver:self name:@"UISceneWillConnectNotification" object:0];

    v4 = v6;
  }
}

@end