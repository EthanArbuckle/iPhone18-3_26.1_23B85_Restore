@interface UIInputViewSetPlacementCompactAssistantOnScreenLeft
- (id)horizontalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5;
@end

@implementation UIInputViewSetPlacementCompactAssistantOnScreenLeft

- (id)horizontalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5
{
  v5 = a4;
  if (a4)
  {
    v6 = a5;
    v7 = [v5 leftAnchor];
    v8 = [v6 leftAnchor];

    v5 = [v7 constraintEqualToAnchor:v8 constant:16.0];
  }

  return v5;
}

@end