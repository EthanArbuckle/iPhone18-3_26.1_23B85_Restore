@interface UIInputViewSetPlacementCompactAssistantOnScreenRight
- (id)horizontalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView;
@end

@implementation UIInputViewSetPlacementCompactAssistantOnScreenRight

- (id)horizontalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView
{
  if (view)
  {
    viewCopy = view;
    rightAnchor = [containerView rightAnchor];
    rightAnchor2 = [viewCopy rightAnchor];

    v9 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:16.0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end