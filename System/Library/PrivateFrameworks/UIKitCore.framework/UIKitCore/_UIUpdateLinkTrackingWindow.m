@interface _UIUpdateLinkTrackingWindow
- (void)_switchWindowFrom:(void *)a3 to:;
- (void)_windowSceneDidChange:(id)a3;
- (void)_windowSceneWillChange:(id)a3;
- (void)_windowVisibilityChanged:(id)a3;
@end

@implementation _UIUpdateLinkTrackingWindow

- (void)_switchWindowFrom:(void *)a3 to:
{
  if (a1 && *(a1 + 80) != a3)
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    if (a2)
    {
      [v6 removeObserver:a1 name:@"UIWindowDidBecomeVisibleNotification" object:a2];
      [v6 removeObserver:a1 name:@"UIWindowDidBecomeHiddenNotification" object:a2];
      [v6 removeObserver:a1 name:@"_UIWindowWillMoveToNilSceneNotification" object:a2];
      [v6 removeObserver:a1 name:@"_UIWindowWillMoveToSceneNotification" object:a2];
      [v6 removeObserver:a1 name:@"_UIWindowDidMoveToSceneNotification" object:a2];
    }

    if (a3)
    {
      [v6 addObserver:a1 selector:sel__windowVisibilityChanged_ name:@"UIWindowDidBecomeVisibleNotification" object:a3];
      [v6 addObserver:a1 selector:sel__windowVisibilityChanged_ name:@"UIWindowDidBecomeHiddenNotification" object:a3];
      [v6 addObserver:a1 selector:sel__windowSceneWillChange_ name:@"_UIWindowWillMoveToNilSceneNotification" object:a3];
      [v6 addObserver:a1 selector:sel__windowSceneWillChange_ name:@"_UIWindowWillMoveToSceneNotification" object:a3];
      [v6 addObserver:a1 selector:sel__windowSceneDidChange_ name:@"_UIWindowDidMoveToSceneNotification" object:a3];
    }

    *(a1 + 72) = [a3 _isVisible];
    *(a1 + 80) = a3;
  }
}

- (void)_windowVisibilityChanged:(id)a3
{
  v5 = [a3 object];
  self->_windowVisible = [v5 _isVisible];
  v4 = [(_UIUpdateLinkTrackingWindow *)self _canEngage];
  if (self->super.super.super._engaged != v4)
  {
    self->super.super.super._engaged = v4;
    [(UIUpdateLink *)self _setActive:?];
  }
}

- (void)_windowSceneWillChange:(id)a3
{
  v6 = [a3 object];
  v4 = [v6 _windowHostingScene];
  [(_UIUpdateLinkTrackingScene *)self _switchSceneFrom:v4 to:0];
  if (self)
  {
    v5 = [(_UIUpdateLinkTrackingWindow *)self _canEngage];
    if (self->super.super.super._engaged != v5)
    {
      self->super.super.super._engaged = v5;
      [(UIUpdateLink *)self _setActive:?];
    }
  }
}

- (void)_windowSceneDidChange:(id)a3
{
  v6 = [a3 object];
  v4 = [v6 _windowHostingScene];
  [(_UIUpdateLinkTrackingScene *)self _switchSceneFrom:v4 to:?];
  if (self)
  {
    v5 = [(_UIUpdateLinkTrackingWindow *)self _canEngage];
    if (self->super.super.super._engaged != v5)
    {
      self->super.super.super._engaged = v5;
      [(UIUpdateLink *)self _setActive:?];
    }
  }
}

@end