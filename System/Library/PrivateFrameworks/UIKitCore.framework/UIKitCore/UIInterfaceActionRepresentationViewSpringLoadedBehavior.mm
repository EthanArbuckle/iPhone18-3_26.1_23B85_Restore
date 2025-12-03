@interface UIInterfaceActionRepresentationViewSpringLoadedBehavior
- (BOOL)shouldAllowInteraction:(id)interaction withContext:(id)context;
@end

@implementation UIInterfaceActionRepresentationViewSpringLoadedBehavior

- (BOOL)shouldAllowInteraction:(id)interaction withContext:(id)context
{
  view = [interaction view];
  action = [view action];
  isEnabled = [action isEnabled];

  return isEnabled;
}

@end