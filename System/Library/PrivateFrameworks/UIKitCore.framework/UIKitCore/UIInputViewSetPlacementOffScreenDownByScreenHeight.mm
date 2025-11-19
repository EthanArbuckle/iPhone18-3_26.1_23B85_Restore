@interface UIInputViewSetPlacementOffScreenDownByScreenHeight
- (id)verticalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5;
@end

@implementation UIInputViewSetPlacementOffScreenDownByScreenHeight

- (id)verticalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5
{
  v5 = a4;
  if (a4)
  {
    v6 = MEMORY[0x1E69977A0];
    v7 = a5;
    v8 = v5;
    [v7 frame];
    v10 = v9;
    [v8 frame];
    v5 = [v6 constraintWithItem:v8 attribute:3 relatedBy:0 toItem:v7 attribute:4 multiplier:1.0 constant:v10 - v11];
  }

  return v5;
}

@end