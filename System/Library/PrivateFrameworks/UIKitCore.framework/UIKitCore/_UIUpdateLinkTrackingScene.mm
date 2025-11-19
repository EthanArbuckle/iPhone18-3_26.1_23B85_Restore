@interface _UIUpdateLinkTrackingScene
- (id)_initWithScene:(void *)a1;
- (void)_sceneEnterForeground;
- (void)_sceneExitForeground;
- (void)_switchSceneFrom:(void *)a3 to:;
@end

@implementation _UIUpdateLinkTrackingScene

- (void)_sceneEnterForeground
{
  self->_sceneForeground = 1;
  v3 = [(_UIUpdateLinkTrackingScene *)self _canEngage];
  if (self->super.super._engaged != v3)
  {
    self->super.super._engaged = v3;
    v4 = v3 && self->super.super._enabled;

    [(UIUpdateLink *)self _setActive:v4];
  }
}

- (id)_initWithScene:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = [(UIUpdateLink *)a1 _init];
  v4 = v3;
  if (v3)
  {
    [(_UIUpdateLinkTrackingScene *)v3 _switchSceneFrom:a2 to:?];
  }

  return v4;
}

- (void)_switchSceneFrom:(void *)a3 to:
{
  if (a1 && *(a1 + 64) != a3)
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = v6;
    if (a2)
    {
      [v6 removeObserver:a1 name:@"UISceneWillEnterForegroundNotification" object:a2];
      [v8 removeObserver:a1 name:@"UISceneDidEnterBackgroundNotification" object:a2];
      [v8 removeObserver:a1 name:@"UISceneDidDisconnectNotification" object:a2];
      v6 = v8;
    }

    if (a3)
    {
      [v6 addObserver:a1 selector:sel__sceneEnterForeground name:@"UISceneWillEnterForegroundNotification" object:a3];
      [v8 addObserver:a1 selector:sel__sceneExitForeground name:@"UISceneDidEnterBackgroundNotification" object:a3];
      [v8 addObserver:a1 selector:sel__sceneExitForeground name:@"UISceneDidDisconnectNotification" object:a3];
      if ([a3 activationState])
      {
        v7 = [a3 activationState] == 1;
      }

      else
      {
        v7 = 1;
      }

      v6 = v8;
    }

    else
    {
      v7 = 0;
    }

    *(a1 + 56) = v7;
    *(a1 + 64) = a3;
  }
}

- (void)_sceneExitForeground
{
  self->_sceneForeground = 0;
  v3 = [(_UIUpdateLinkTrackingScene *)self _canEngage];
  if (self->super.super._engaged != v3)
  {
    self->super.super._engaged = v3;
    v4 = v3 && self->super.super._enabled;

    [(UIUpdateLink *)self _setActive:v4];
  }
}

@end