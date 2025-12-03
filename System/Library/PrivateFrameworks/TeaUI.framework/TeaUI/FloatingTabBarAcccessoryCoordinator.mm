@interface FloatingTabBarAcccessoryCoordinator
- (void)accessoryViewTapped;
- (void)presentationControllerDidDismiss:(id)dismiss;
@end

@implementation FloatingTabBarAcccessoryCoordinator

- (void)accessoryViewTapped
{
  selfCopy = self;
  sub_1D808A60C();
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  FloatingTabBarAcccessoryCoordinator.presentationControllerDidDismiss(_:)(selfCopy);
}

@end