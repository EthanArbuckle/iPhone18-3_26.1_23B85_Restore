@interface ICQRemoteContainerViewController
- (ICQRemoteContainerViewController)init;
- (ICQRemoteContainerViewController)initWithCoder:(id)a3;
- (ICQRemoteContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (ICQRemoteContainerViewController)initWithRootViewController:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
@end

@implementation ICQRemoteContainerViewController

- (ICQRemoteContainerViewController)initWithRootViewController:(id)a3
{
  v5 = a3;
  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v10 = [MEMORY[0x277D75418] currentDevice];
    v11 = [v10 userInterfaceIdiom];

    if (v11 == 1)
    {
      v12 = ICQRemoteContaineriPadViewController;
    }

    else
    {
      v12 = ICQRemoteContaineriPhoneViewController;
    }

    v9 = [[v12 alloc] initWithRootViewController:v5];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = ICQRemoteContainerViewController;
    v7 = [(ICQRemoteContainerViewController *)&v15 initWithNibName:0 bundle:0];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_rootViewController, a3);
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

- (ICQRemoteContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  [(ICQRemoteContainerViewController *)self doesNotRecognizeSelector:a2, a4];

  return 0;
}

- (ICQRemoteContainerViewController)initWithCoder:(id)a3
{
  [(ICQRemoteContainerViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

@end