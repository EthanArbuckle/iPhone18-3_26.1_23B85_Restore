@interface SBDeviceApplicationRemoteTransientOverlayContainerViewController
- (SBDeviceApplicationRemoteTransientOverlayContainerViewController)initWithViewProvider:(id)provider;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)viewWillLayoutSubviews;
@end

@implementation SBDeviceApplicationRemoteTransientOverlayContainerViewController

- (SBDeviceApplicationRemoteTransientOverlayContainerViewController)initWithViewProvider:(id)provider
{
  providerCopy = provider;
  v8.receiver = self;
  v8.super_class = SBDeviceApplicationRemoteTransientOverlayContainerViewController;
  v5 = [(SBDeviceApplicationRemoteTransientOverlayContainerViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewProvider, providerCopy);
  }

  return v6;
}

- (int64_t)preferredStatusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_viewProvider);
  preferredStatusBarStyle = [WeakRetained preferredStatusBarStyle];

  return preferredStatusBarStyle;
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_viewProvider);
  preferredInterfaceOrientationForPresentation = [WeakRetained preferredInterfaceOrientationForPresentation];

  return preferredInterfaceOrientationForPresentation;
}

- (unint64_t)supportedInterfaceOrientations
{
  WeakRetained = objc_loadWeakRetained(&self->_viewProvider);
  supportedInterfaceOrientations = [WeakRetained supportedInterfaceOrientations];

  return supportedInterfaceOrientations;
}

- (void)viewWillLayoutSubviews
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = SBDeviceApplicationRemoteTransientOverlayContainerViewController;
  [(SBDeviceApplicationRemoteTransientOverlayContainerViewController *)&v14 viewWillLayoutSubviews];
  view = [(SBDeviceApplicationRemoteTransientOverlayContainerViewController *)self view];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  subviews = [view subviews];
  v5 = [subviews countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(subviews);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        [view bounds];
        [v9 setFrame:?];
        ++v8;
      }

      while (v6 != v8);
      v6 = [subviews countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

@end