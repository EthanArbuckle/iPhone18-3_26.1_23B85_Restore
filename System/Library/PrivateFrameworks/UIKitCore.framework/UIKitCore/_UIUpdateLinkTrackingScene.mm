@interface _UIUpdateLinkTrackingScene
- (id)_initWithScene:(void *)scene;
- (void)_sceneEnterForeground;
- (void)_sceneExitForeground;
- (void)_switchSceneFrom:(void *)from to:;
@end

@implementation _UIUpdateLinkTrackingScene

- (void)_sceneEnterForeground
{
  self->_sceneForeground = 1;
  _canEngage = [(_UIUpdateLinkTrackingScene *)self _canEngage];
  if (self->super.super._engaged != _canEngage)
  {
    self->super.super._engaged = _canEngage;
    v4 = _canEngage && self->super.super._enabled;

    [(UIUpdateLink *)self _setActive:v4];
  }
}

- (id)_initWithScene:(void *)scene
{
  if (!scene)
  {
    return 0;
  }

  _init = [(UIUpdateLink *)scene _init];
  v4 = _init;
  if (_init)
  {
    [(_UIUpdateLinkTrackingScene *)_init _switchSceneFrom:a2 to:?];
  }

  return v4;
}

- (void)_switchSceneFrom:(void *)from to:
{
  if (self && *(self + 64) != from)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = defaultCenter;
    if (a2)
    {
      [defaultCenter removeObserver:self name:@"UISceneWillEnterForegroundNotification" object:a2];
      [v8 removeObserver:self name:@"UISceneDidEnterBackgroundNotification" object:a2];
      [v8 removeObserver:self name:@"UISceneDidDisconnectNotification" object:a2];
      defaultCenter = v8;
    }

    if (from)
    {
      [defaultCenter addObserver:self selector:sel__sceneEnterForeground name:@"UISceneWillEnterForegroundNotification" object:from];
      [v8 addObserver:self selector:sel__sceneExitForeground name:@"UISceneDidEnterBackgroundNotification" object:from];
      [v8 addObserver:self selector:sel__sceneExitForeground name:@"UISceneDidDisconnectNotification" object:from];
      if ([from activationState])
      {
        v7 = [from activationState] == 1;
      }

      else
      {
        v7 = 1;
      }

      defaultCenter = v8;
    }

    else
    {
      v7 = 0;
    }

    *(self + 56) = v7;
    *(self + 64) = from;
  }
}

- (void)_sceneExitForeground
{
  self->_sceneForeground = 0;
  _canEngage = [(_UIUpdateLinkTrackingScene *)self _canEngage];
  if (self->super.super._engaged != _canEngage)
  {
    self->super.super._engaged = _canEngage;
    v4 = _canEngage && self->super.super._enabled;

    [(UIUpdateLink *)self _setActive:v4];
  }
}

@end