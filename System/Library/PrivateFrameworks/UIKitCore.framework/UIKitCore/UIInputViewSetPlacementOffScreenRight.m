@interface UIInputViewSetPlacementOffScreenRight
- (id)horizontalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5;
@end

@implementation UIInputViewSetPlacementOffScreenRight

- (id)horizontalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5
{
  if (a4)
  {
    v6 = [MEMORY[0x1E69977A0] constraintWithItem:a4 attribute:1 relatedBy:0 toItem:a5 attribute:2 multiplier:1.0 constant:0.0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end