@interface UIInputViewSetPlacementOffScreenLeft
- (id)horizontalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView;
@end

@implementation UIInputViewSetPlacementOffScreenLeft

- (id)horizontalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView
{
  if (view)
  {
    v6 = [MEMORY[0x1E69977A0] constraintWithItem:view attribute:2 relatedBy:0 toItem:containerView attribute:1 multiplier:1.0 constant:0.0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end