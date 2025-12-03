@interface UIInputViewSetPlacementOffScreenDown
- (id)verticalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView;
@end

@implementation UIInputViewSetPlacementOffScreenDown

- (id)verticalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView
{
  if (view)
  {
    v6 = [MEMORY[0x1E69977A0] constraintWithItem:view attribute:3 relatedBy:0 toItem:containerView attribute:4 multiplier:1.0 constant:0.0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end