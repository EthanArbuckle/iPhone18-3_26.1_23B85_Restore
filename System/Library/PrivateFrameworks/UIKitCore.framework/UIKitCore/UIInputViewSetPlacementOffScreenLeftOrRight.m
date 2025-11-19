@interface UIInputViewSetPlacementOffScreenLeftOrRight
- (id)verticalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5;
- (void)setOtherPlacement:(id)a3;
@end

@implementation UIInputViewSetPlacementOffScreenLeftOrRight

- (id)verticalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5
{
  if (self->_otherPlacement)
  {
    v5 = [(UIInputViewSetPlacement *)self->_otherPlacement verticalConstraintForInputViewSet:a3 hostView:a4 containerView:a5];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIInputViewSetPlacementOffScreenLeftOrRight;
    v5 = [(UIInputViewSetPlacement *)&v7 verticalConstraintForInputViewSet:a3 hostView:a4 containerView:a5];
  }

  return v5;
}

- (void)setOtherPlacement:(id)a3
{
  v6 = a3;
  if ([v6 showsInputViews] && (objc_msgSend(v6, "showsKeyboard") & 1) == 0)
  {
    v5 = v6;
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