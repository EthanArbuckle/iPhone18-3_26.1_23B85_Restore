@interface _UIUpdateLinkViewInteraction
- (void)_updateWindowFrom:(void *)from to:;
- (void)dealloc;
- (void)didMoveToView:(id)view;
@end

@implementation _UIUpdateLinkViewInteraction

- (void)dealloc
{
  link = self->_link;
  if (link)
  {
    link->_interaction = 0;
  }

  v3.receiver = self;
  v3.super_class = _UIUpdateLinkViewInteraction;
  [(_UIUpdateLinkViewInteraction *)&v3 dealloc];
}

- (void)didMoveToView:(id)view
{
  _window = [(UIView *)self->_view _window];
  _window2 = [view _window];
  [(_UIUpdateLinkViewInteraction *)self _updateWindowFrom:_window to:_window2];

  self->_view = view;
}

- (void)_updateWindowFrom:(void *)from to:
{
  if (self)
  {
    [(_UIUpdateLinkTrackingWindow *)*(self + 16) _switchWindowFrom:a2 to:from];
    v6 = *(self + 16);
    _windowHostingScene = [a2 _windowHostingScene];
    _windowHostingScene2 = [from _windowHostingScene];
    [(_UIUpdateLinkTrackingScene *)v6 _switchSceneFrom:_windowHostingScene to:_windowHostingScene2];

    v9 = *(self + 16);
    if (v9)
    {
      _canEngage = [v9 _canEngage];
      if (v9[48] != _canEngage)
      {
        v9[48] = _canEngage;
        v11 = (_canEngage & v9[50]);

        [(UIUpdateLink *)v9 _setActive:v11];
      }
    }
  }
}

@end