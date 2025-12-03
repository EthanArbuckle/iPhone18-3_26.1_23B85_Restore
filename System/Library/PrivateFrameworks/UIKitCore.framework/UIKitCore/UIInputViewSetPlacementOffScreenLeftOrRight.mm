@interface UIInputViewSetPlacementOffScreenLeftOrRight
- (id)verticalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView;
- (void)setOtherPlacement:(id)placement;
@end

@implementation UIInputViewSetPlacementOffScreenLeftOrRight

- (id)verticalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView
{
  if (self->_otherPlacement)
  {
    v5 = [(UIInputViewSetPlacement *)self->_otherPlacement verticalConstraintForInputViewSet:set hostView:view containerView:containerView];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIInputViewSetPlacementOffScreenLeftOrRight;
    v5 = [(UIInputViewSetPlacement *)&v7 verticalConstraintForInputViewSet:set hostView:view containerView:containerView];
  }

  return v5;
}

- (void)setOtherPlacement:(id)placement
{
  placementCopy = placement;
  if ([placementCopy showsInputViews] && (objc_msgSend(placementCopy, "showsKeyboard") & 1) == 0)
  {
    v5 = placementCopy;
    otherPlacement = self->_otherPlacement;
    self->_otherPlacement = v5;
  }

  else
  {
    otherPlacement = self->_otherPlacement;
    self->_otherPlacement = 0;
  }
}

@end