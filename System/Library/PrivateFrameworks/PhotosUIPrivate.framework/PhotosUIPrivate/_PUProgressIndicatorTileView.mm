@interface _PUProgressIndicatorTileView
- (UIView)extraHittableSubview;
- (_PUProgressIndicatorTileViewDelegate)traitCollectionDelegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)setTraitCollectionDelegate:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation _PUProgressIndicatorTileView

- (_PUProgressIndicatorTileViewDelegate)traitCollectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_traitCollectionDelegate);

  return WeakRetained;
}

- (UIView)extraHittableSubview
{
  WeakRetained = objc_loadWeakRetained(&self->_extraHittableSubview);

  return WeakRetained;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = _PUProgressIndicatorTileView;
  [(_PUProgressIndicatorTileView *)&v5 traitCollectionDidChange:a3];
  if (self->_delegateFlags.respondsToDidChangeTraitCollection)
  {
    v4 = [(_PUProgressIndicatorTileView *)self traitCollectionDelegate];
    [v4 viewTraitCollectionDidChange:self];
  }
}

- (void)setTraitCollectionDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_traitCollectionDelegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_traitCollectionDelegate, obj);
    self->_delegateFlags.respondsToDidChangeTraitCollection = objc_opt_respondsToSelector() & 1;
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = +[PUOneUpSettings sharedInstance];
  v9 = [v8 allowsVisualIntelligenceV2];

  if (v9)
  {
    if ([(_PUProgressIndicatorTileView *)self showingErrorProgressView])
    {
      v16.receiver = self;
      v16.super_class = _PUProgressIndicatorTileView;
      v10 = [(_PUProgressIndicatorTileView *)&v16 hitTest:v7 withEvent:x, y];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = _PUProgressIndicatorTileView;
    v10 = [(_PUProgressIndicatorTileView *)&v15 hitTest:v7 withEvent:x, y];
    v11 = [(_PUProgressIndicatorTileView *)self extraHittableSubview];
    v12 = v11;
    if (!v10)
    {
      v13 = [v11 superview];

      if (v13 == self)
      {
        [v12 convertPoint:self fromView:{x, y}];
        v10 = [v12 hitTest:v7 withEvent:?];
      }

      else
      {
        v10 = 0;
      }
    }
  }

  return v10;
}

@end