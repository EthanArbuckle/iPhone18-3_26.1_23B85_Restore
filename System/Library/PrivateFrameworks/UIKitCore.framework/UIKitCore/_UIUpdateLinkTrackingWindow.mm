@interface _UIUpdateLinkTrackingWindow
- (void)_switchWindowFrom:(void *)from to:;
- (void)_windowSceneDidChange:(id)change;
- (void)_windowSceneWillChange:(id)change;
- (void)_windowVisibilityChanged:(id)changed;
@end

@implementation _UIUpdateLinkTrackingWindow

- (void)_switchWindowFrom:(void *)from to:
{
  if (self && *(self + 80) != from)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    if (a2)
    {
      [defaultCenter removeObserver:self name:@"UIWindowDidBecomeVisibleNotification" object:a2];
      [defaultCenter removeObserver:self name:@"UIWindowDidBecomeHiddenNotification" object:a2];
      [defaultCenter removeObserver:self name:@"_UIWindowWillMoveToNilSceneNotification" object:a2];
      [defaultCenter removeObserver:self name:@"_UIWindowWillMoveToSceneNotification" object:a2];
      [defaultCenter removeObserver:self name:@"_UIWindowDidMoveToSceneNotification" object:a2];
    }

    if (from)
    {
      [defaultCenter addObserver:self selector:sel__windowVisibilityChanged_ name:@"UIWindowDidBecomeVisibleNotification" object:from];
      [defaultCenter addObserver:self selector:sel__windowVisibilityChanged_ name:@"UIWindowDidBecomeHiddenNotification" object:from];
      [defaultCenter addObserver:self selector:sel__windowSceneWillChange_ name:@"_UIWindowWillMoveToNilSceneNotification" object:from];
      [defaultCenter addObserver:self selector:sel__windowSceneWillChange_ name:@"_UIWindowWillMoveToSceneNotification" object:from];
      [defaultCenter addObserver:self selector:sel__windowSceneDidChange_ name:@"_UIWindowDidMoveToSceneNotification" object:from];
    }

    *(self + 72) = [from _isVisible];
    *(self + 80) = from;
  }
}

- (void)_windowVisibilityChanged:(id)changed
{
  object = [changed object];
  self->_windowVisible = [object _isVisible];
  _canEngage = [(_UIUpdateLinkTrackingWindow *)self _canEngage];
  if (self->super.super.super._engaged != _canEngage)
  {
    self->super.super.super._engaged = _canEngage;
    [(UIUpdateLink *)self _setActive:?];
  }
}

- (void)_windowSceneWillChange:(id)change
{
  object = [change object];
  _windowHostingScene = [object _windowHostingScene];
  [(_UIUpdateLinkTrackingScene *)self _switchSceneFrom:_windowHostingScene to:0];
  if (self)
  {
    _canEngage = [(_UIUpdateLinkTrackingWindow *)self _canEngage];
    if (self->super.super.super._engaged != _canEngage)
    {
      self->super.super.super._engaged = _canEngage;
      [(UIUpdateLink *)self _setActive:?];
    }
  }
}

- (void)_windowSceneDidChange:(id)change
{
  object = [change object];
  _windowHostingScene = [object _windowHostingScene];
  [(_UIUpdateLinkTrackingScene *)self _switchSceneFrom:_windowHostingScene to:?];
  if (self)
  {
    _canEngage = [(_UIUpdateLinkTrackingWindow *)self _canEngage];
    if (self->super.super.super._engaged != _canEngage)
    {
      self->super.super.super._engaged = _canEngage;
      [(UIUpdateLink *)self _setActive:?];
    }
  }
}

@end