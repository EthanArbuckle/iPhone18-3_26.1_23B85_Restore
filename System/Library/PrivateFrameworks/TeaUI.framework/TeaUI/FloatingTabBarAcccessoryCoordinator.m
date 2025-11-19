@interface FloatingTabBarAcccessoryCoordinator
- (void)accessoryViewTapped;
- (void)presentationControllerDidDismiss:(id)a3;
@end

@implementation FloatingTabBarAcccessoryCoordinator

- (void)accessoryViewTapped
{
  v2 = self;
  sub_1D808A60C();
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  FloatingTabBarAcccessoryCoordinator.presentationControllerDidDismiss(_:)(v5);
}

@end