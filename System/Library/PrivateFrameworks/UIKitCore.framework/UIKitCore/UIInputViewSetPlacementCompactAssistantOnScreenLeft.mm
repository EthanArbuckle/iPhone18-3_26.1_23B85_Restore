@interface UIInputViewSetPlacementCompactAssistantOnScreenLeft
- (id)horizontalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView;
@end

@implementation UIInputViewSetPlacementCompactAssistantOnScreenLeft

- (id)horizontalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView
{
  viewCopy = view;
  if (view)
  {
    containerViewCopy = containerView;
    leftAnchor = [viewCopy leftAnchor];
    leftAnchor2 = [containerViewCopy leftAnchor];

    viewCopy = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:16.0];
  }

  return viewCopy;
}

@end