@interface _PUProgressIndicatorTileView
- (UIView)extraHittableSubview;
- (_PUProgressIndicatorTileViewDelegate)traitCollectionDelegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)setTraitCollectionDelegate:(id)delegate;
- (void)traitCollectionDidChange:(id)change;
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

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = _PUProgressIndicatorTileView;
  [(_PUProgressIndicatorTileView *)&v5 traitCollectionDidChange:change];
  if (self->_delegateFlags.respondsToDidChangeTraitCollection)
  {
    traitCollectionDelegate = [(_PUProgressIndicatorTileView *)self traitCollectionDelegate];
    [traitCollectionDelegate viewTraitCollectionDidChange:self];
  }
}

- (void)setTraitCollectionDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_traitCollectionDelegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_traitCollectionDelegate, obj);
    self->_delegateFlags.respondsToDidChangeTraitCollection = objc_opt_respondsToSelector() & 1;
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v8 = +[PUOneUpSettings sharedInstance];
  allowsVisualIntelligenceV2 = [v8 allowsVisualIntelligenceV2];

  if (allowsVisualIntelligenceV2)
  {
    if ([(_PUProgressIndicatorTileView *)self showingErrorProgressView])
    {
      v16.receiver = self;
      v16.super_class = _PUProgressIndicatorTileView;
      v10 = [(_PUProgressIndicatorTileView *)&v16 hitTest:eventCopy withEvent:x, y];
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
    v10 = [(_PUProgressIndicatorTileView *)&v15 hitTest:eventCopy withEvent:x, y];
    extraHittableSubview = [(_PUProgressIndicatorTileView *)self extraHittableSubview];
    v12 = extraHittableSubview;
    if (!v10)
    {
      superview = [extraHittableSubview superview];

      if (superview == self)
      {
        [v12 convertPoint:self fromView:{x, y}];
        v10 = [v12 hitTest:eventCopy withEvent:?];
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