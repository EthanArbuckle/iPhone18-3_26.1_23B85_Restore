@interface _UIInteractiveHighlightEffect
- (UIEdgeInsets)preferredContentInsets;
- (UIView)superview;
- (UIView)view;
- (UIVisualEffectView)effectView;
- (_UIPortalView)portalView;
- (void)applyBackgroundEffectWithMagnitude:(double)magnitude interactive:(BOOL)interactive completion:(id)completion;
- (void)dealloc;
@end

@implementation _UIInteractiveHighlightEffect

- (void)applyBackgroundEffectWithMagnitude:(double)magnitude interactive:(BOOL)interactive completion:(id)completion
{
  interactiveCopy = interactive;
  completionCopy = completion;
  if (interactiveCopy)
  {
    [(_UIInteractiveHighlightEnvironment *)self->_environment applyContentInsets:self->_preferredContentInsets.top, self->_preferredContentInsets.left, self->_preferredContentInsets.bottom, self->_preferredContentInsets.right];
  }

  [(_UIInteractiveHighlightEnvironment *)self->_environment applyBackgroundEffectWithMagnitude:interactiveCopy interactive:completionCopy completion:magnitude];
}

- (void)dealloc
{
  [(_UIInteractiveHighlightEffect *)self finalizeEffect];
  v3.receiver = self;
  v3.super_class = _UIInteractiveHighlightEffect;
  [(_UIInteractiveHighlightEffect *)&v3 dealloc];
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (UIVisualEffectView)effectView
{
  WeakRetained = objc_loadWeakRetained(&self->_effectView);

  return WeakRetained;
}

- (UIEdgeInsets)preferredContentInsets
{
  top = self->_preferredContentInsets.top;
  left = self->_preferredContentInsets.left;
  bottom = self->_preferredContentInsets.bottom;
  right = self->_preferredContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIView)superview
{
  WeakRetained = objc_loadWeakRetained(&self->_superview);

  return WeakRetained;
}

- (_UIPortalView)portalView
{
  WeakRetained = objc_loadWeakRetained(&self->_portalView);

  return WeakRetained;
}

@end