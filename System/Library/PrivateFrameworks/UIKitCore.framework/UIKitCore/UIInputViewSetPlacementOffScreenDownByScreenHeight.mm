@interface UIInputViewSetPlacementOffScreenDownByScreenHeight
- (id)verticalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView;
@end

@implementation UIInputViewSetPlacementOffScreenDownByScreenHeight

- (id)verticalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView
{
  viewCopy = view;
  if (view)
  {
    v6 = MEMORY[0x1E69977A0];
    containerViewCopy = containerView;
    v8 = viewCopy;
    [containerViewCopy frame];
    v10 = v9;
    [v8 frame];
    viewCopy = [v6 constraintWithItem:v8 attribute:3 relatedBy:0 toItem:containerViewCopy attribute:4 multiplier:1.0 constant:v10 - v11];
  }

  return viewCopy;
}

@end