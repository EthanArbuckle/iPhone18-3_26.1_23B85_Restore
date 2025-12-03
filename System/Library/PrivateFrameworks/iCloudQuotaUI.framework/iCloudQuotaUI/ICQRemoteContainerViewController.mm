@interface ICQRemoteContainerViewController
- (ICQRemoteContainerViewController)init;
- (ICQRemoteContainerViewController)initWithCoder:(id)coder;
- (ICQRemoteContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (ICQRemoteContainerViewController)initWithRootViewController:(id)controller;
- (unint64_t)supportedInterfaceOrientations;
@end

@implementation ICQRemoteContainerViewController

- (ICQRemoteContainerViewController)initWithRootViewController:(id)controller
{
  controllerCopy = controller;
  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      v12 = ICQRemoteContaineriPadViewController;
    }

    else
    {
      v12 = ICQRemoteContaineriPhoneViewController;
    }

    v9 = [[v12 alloc] initWithRootViewController:controllerCopy];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = ICQRemoteContainerViewController;
    v7 = [(ICQRemoteContainerViewController *)&v15 initWithNibName:0 bundle:0];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_rootViewController, controller);
    }

    v9 = v8;
    self = v9;
  }

  v13 = v9;

  return v13;
}

- (ICQRemoteContainerViewController)init
{
  [(ICQRemoteContainerViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICQRemoteContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  [(ICQRemoteContainerViewController *)self doesNotRecognizeSelector:a2, bundle];

  return 0;
}

- (ICQRemoteContainerViewController)initWithCoder:(id)coder
{
  [(ICQRemoteContainerViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

@end