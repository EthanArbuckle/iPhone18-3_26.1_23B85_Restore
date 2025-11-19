@interface _UIUpdateLinkViewInteraction
- (void)_updateWindowFrom:(void *)a3 to:;
- (void)dealloc;
- (void)didMoveToView:(id)a3;
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

- (void)didMoveToView:(id)a3
{
  v5 = [(UIView *)self->_view _window];
  v6 = [a3 _window];
  [(_UIUpdateLinkViewInteraction *)self _updateWindowFrom:v5 to:v6];

  self->_view = a3;
}

- (void)_updateWindowFrom:(void *)a3 to:
{
  if (a1)
  {
    [(_UIUpdateLinkTrackingWindow *)*(a1 + 16) _switchWindowFrom:a2 to:a3];
    v6 = *(a1 + 16);
    v7 = [a2 _windowHostingScene];
    v8 = [a3 _windowHostingScene];
    [(_UIUpdateLinkTrackingScene *)v6 _switchSceneFrom:v7 to:v8];

    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = [v9 _canEngage];
      if (v9[48] != v10)
      {
        v9[48] = v10;
        v11 = (v10 & v9[50]);

        [(UIUpdateLink *)v9 _setActive:v11];
      }
    }
  }
}

@end