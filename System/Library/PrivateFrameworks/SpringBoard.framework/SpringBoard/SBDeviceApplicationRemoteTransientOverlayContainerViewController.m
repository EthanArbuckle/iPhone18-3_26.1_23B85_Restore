@interface SBDeviceApplicationRemoteTransientOverlayContainerViewController
- (SBDeviceApplicationRemoteTransientOverlayContainerViewController)initWithViewProvider:(id)a3;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)viewWillLayoutSubviews;
@end

@implementation SBDeviceApplicationRemoteTransientOverlayContainerViewController

- (SBDeviceApplicationRemoteTransientOverlayContainerViewController)initWithViewProvider:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBDeviceApplicationRemoteTransientOverlayContainerViewController;
  v5 = [(SBDeviceApplicationRemoteTransientOverlayContainerViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewProvider, v4);
  }

  return v6;
}

- (int64_t)preferredStatusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_viewProvider);
  v3 = [WeakRetained preferredStatusBarStyle];

  return v3;
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_viewProvider);
  v3 = [WeakRetained preferredInterfaceOrientationForPresentation];

  return v3;
}

- (unint64_t)supportedInterfaceOrientations
{
  WeakRetained = objc_loadWeakRetained(&self->_viewProvider);
  v3 = [WeakRetained supportedInterfaceOrientations];

  return v3;
}

- (void)viewWillLayoutSubviews
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = SBDeviceApplicationRemoteTransientOverlayContainerViewController;
  [(SBDeviceApplicationRemoteTransientOverlayContainerViewController *)&v14 viewWillLayoutSubviews];
  v3 = [(SBDeviceApplicationRemoteTransientOverlayContainerViewController *)self view];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 subviews];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        [v3 bounds];
        [v9 setFrame:?];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

@end