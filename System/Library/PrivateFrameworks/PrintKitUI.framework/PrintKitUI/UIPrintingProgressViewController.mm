@interface UIPrintingProgressViewController
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation;
- (UIPrintingProgressViewController)initWithTitle:(id)title message:(id)message printingProgress:(id)progress;
- (unint64_t)supportedInterfaceOrientations;
- (void)cancelProgress;
- (void)dismissProgress;
- (void)doneProgress;
- (void)setDonePrinting:(BOOL)printing;
@end

@implementation UIPrintingProgressViewController

- (UIPrintingProgressViewController)initWithTitle:(id)title message:(id)message printingProgress:(id)progress
{
  titleCopy = title;
  messageCopy = message;
  progressCopy = progress;
  v28.receiver = self;
  v28.super_class = UIPrintingProgressViewController;
  v11 = [(UIPrintingProgressViewController *)&v28 initWithStyle:1];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_printingProgress, progressCopy);
    [(UIPrintingProgressViewController *)v12 setDonePrinting:0];
    view = [(UIPrintingProgressViewController *)v12 view];
    [view setBounces:0];

    hostingWindowScene = [progressCopy hostingWindowScene];

    if (!hostingWindowScene)
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      _findUISceneForLegacyInterfaceOrientation = [mEMORY[0x277D75128] _findUISceneForLegacyInterfaceOrientation];
      [progressCopy setHostingWindowScene:_findUISceneForLegacyInterfaceOrientation];
    }

    v17 = objc_alloc(MEMORY[0x277D75DA0]);
    hostingWindowScene2 = [progressCopy hostingWindowScene];
    v19 = [v17 initWithWindowScene:hostingWindowScene2];
    window = v12->_window;
    v12->_window = v19;

    [(UIWindow *)v12->_window setWindowLevel:*MEMORY[0x277D772B8] + -6.0];
    [(UIWindow *)v12->_window setHidden:1];
    [(UIWindow *)v12->_window _setRoleHint:*MEMORY[0x277D77688]];
    v21 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v12];
    navController = v12->_navController;
    v12->_navController = v21;

    [(UIWindow *)v12->_window setRootViewController:v12->_navController];
    v23 = [UIPrintingMessageView alloc];
    view2 = [(UIPrintingProgressViewController *)v12 view];
    v25 = [(UIPrintingMessageView *)v23 initInView:view2 title:titleCopy];
    messageView = v12->_messageView;
    v12->_messageView = v25;

    [(UIPrintingMessageView *)v12->_messageView setMessage:messageCopy];
    [(UIPrintingMessageView *)v12->_messageView setHidden:0];
  }

  return v12;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation
{
  v20 = *MEMORY[0x277D85DE8];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    return 1;
  }

  if (orientation == 2)
  {
    return 0;
  }

  v7 = 1;
  [MEMORY[0x277D75DA0] allWindowsIncludingInternalWindows:0 onlyVisibleWindows:1];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v18 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if (v13 != self->_window && ![(UIWindow *)v13 _shouldAutorotateToInterfaceOrientation:orientation, v15])
        {
          v7 = 0;
          goto LABEL_16;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v7 = 1;
  }

LABEL_16:

  return v7;
}

- (unint64_t)supportedInterfaceOrientations
{
  v16 = *MEMORY[0x277D85DE8];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    return 30;
  }

  v5 = [MEMORY[0x277D75DA0] allWindowsIncludingInternalWindows:0 onlyVisibleWindows:1];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    v4 = 26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4 &= [*(*(&v11 + 1) + 8 * i) _supportedInterfaceOrientationsForRootViewController];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  else
  {
    v4 = 26;
  }

  return v4;
}

- (void)doneProgress
{
  v2 = objc_loadWeakRetained(&self->_printingProgress);

  [v2 hideProgressAnimated:1];
}

- (void)cancelProgress
{
  [objc_loadWeakRetained(&self->_printingProgress) progressCancel];

  [(UIPrintingProgressViewController *)self doneProgress];
}

- (void)setDonePrinting:(BOOL)printing
{
  printingCopy = printing;
  v5 = objc_alloc(MEMORY[0x277D751E0]);
  v6 = &selRef_doneProgress;
  if (!printingCopy)
  {
    v6 = &selRef_cancelProgress;
  }

  v8 = [v5 initWithBarButtonSystemItem:!printingCopy target:self action:*v6];
  navigationItem = [(UIPrintingProgressViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v8];
}

- (void)dismissProgress
{
  [*(self + 133) setHidden:1];
  window = self->_window;
  self->_window = 0;

  navController = self->_navController;
  self->_navController = 0;
}

@end