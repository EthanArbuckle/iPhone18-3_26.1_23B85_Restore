@interface ICQRemoteContaineriPadViewController
- (ICQRemoteContaineriPadViewController)initWithRootViewController:(id)a3;
@end

@implementation ICQRemoteContaineriPadViewController

- (ICQRemoteContaineriPadViewController)initWithRootViewController:(id)a3
{
  v7.receiver = self;
  v7.super_class = ICQRemoteContaineriPadViewController;
  v3 = [(ICQRemoteContainerViewController *)&v7 initWithRootViewController:a3];
  v4 = v3;
  if (v3)
  {
    [(ICQRemoteContaineriPadViewController *)v3 setModalPresentationStyle:0];
    v5 = [(ICQRemoteContainerViewController *)v4 rootViewController];
    [v5 setModalPresentationStyle:2];
  }

  return v4;
}

@end