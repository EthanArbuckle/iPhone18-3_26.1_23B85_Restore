@interface ICQRemoteContaineriPadViewController
- (ICQRemoteContaineriPadViewController)initWithRootViewController:(id)controller;
@end

@implementation ICQRemoteContaineriPadViewController

- (ICQRemoteContaineriPadViewController)initWithRootViewController:(id)controller
{
  v7.receiver = self;
  v7.super_class = ICQRemoteContaineriPadViewController;
  v3 = [(ICQRemoteContainerViewController *)&v7 initWithRootViewController:controller];
  v4 = v3;
  if (v3)
  {
    [(ICQRemoteContaineriPadViewController *)v3 setModalPresentationStyle:0];
    rootViewController = [(ICQRemoteContainerViewController *)v4 rootViewController];
    [rootViewController setModalPresentationStyle:2];
  }

  return v4;
}

@end