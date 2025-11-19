@interface UIInputViewSetPlacementCompactAssistantOnScreenRight
- (id)horizontalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5;
@end

@implementation UIInputViewSetPlacementCompactAssistantOnScreenRight

- (id)horizontalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5
{
  if (a4)
  {
    v6 = a4;
    v7 = [a5 rightAnchor];
    v8 = [v6 rightAnchor];

    v9 = [v7 constraintEqualToAnchor:v8 constant:16.0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end