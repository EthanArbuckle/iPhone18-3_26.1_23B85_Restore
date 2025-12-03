@interface ACMDialog
+ (id)dialog;
- (ACMDialog)init;
- (int64_t)modalTransitionStyle;
- (void)dealloc;
- (void)hideWithParentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)loadView;
- (void)showWithParentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ACMDialog

+ (id)dialog
{
  v2 = objc_opt_new();

  return v2;
}

- (ACMDialog)init
{
  v3.receiver = self;
  v3.super_class = ACMDialog;
  return [(ACMDialog *)&v3 initWithNibName:0 bundle:0];
}

- (void)dealloc
{
  [MEMORY[0x29EDC9738] cancelPreviousPerformRequestsWithTarget:self];
  [(ACMDialog *)self setView:0];
  v3.receiver = self;
  v3.super_class = ACMDialog;
  [(ACMDialog *)&v3 dealloc];
}

- (int64_t)modalTransitionStyle
{
  if (floor(*MEMORY[0x29EDB9EA0]) > 993.0 || ![objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
  {
    return 2;
  }

  v4.receiver = self;
  v4.super_class = ACMDialog;
  return [(ACMDialog *)&v4 modalTransitionStyle];
}

- (void)showWithParentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  if ([(ACMDialog *)self isMovingFromParentViewController])
  {
    v9 = [completion copy];
    v10 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __62__ACMDialog_showWithParentViewController_animated_completion___block_invoke;
    block[3] = &unk_29EE917A0;
    block[4] = self;
    block[5] = controller;
    v14 = animatedCopy;
    block[6] = v9;
    dispatch_after(v10, MEMORY[0x29EDCA578], block);
  }

  else if ([(ACMDialog *)self presentingViewController])
  {
    if (-[ACMDialog presentingViewController](self, "presentingViewController") == controller || (v11 = -[ACMDialog presentingViewController](self, "presentingViewController"), v11 == [controller navigationController]))
    {
      if (qword_2A1EB8ED0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        ACFLog(3, "[ACMDialog showWithParentViewController:animated:completion:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMDialog.m", 70, 0, "Attempt to show %@ with parent: %@, while it always has a parent: %@", self, controller, [(ACMDialog *)self presentingViewController]);
      }
    }

    else if (qword_2A1EB8ED0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACMDialog showWithParentViewController:animated:completion:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMDialog.m", 74, 0, "Already shown");
    }

    if (completion)
    {
      v12 = *(completion + 2);

      v12(completion);
    }
  }

  else
  {

    [controller presentViewController:self animated:animatedCopy completion:completion];
  }
}

- (void)hideWithParentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  if ([(ACMDialog *)self isBeingPresented])
  {
    v9 = [completion copy];
    v10 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __62__ACMDialog_hideWithParentViewController_animated_completion___block_invoke;
    block[3] = &unk_29EE917A0;
    block[4] = self;
    block[5] = controller;
    v16 = animatedCopy;
    block[6] = v9;
    dispatch_after(v10, MEMORY[0x29EDCA578], block);
  }

  else if ([(ACMDialog *)self presentingViewController]&& ([(ACMDialog *)self isBeingDismissed]& 1) == 0)
  {
    navigationController = [controller navigationController];
    if (navigationController != [(ACMDialog *)self presentingViewController])
    {
      presentingViewController = [(ACMDialog *)self presentingViewController];
      if (qword_2A1EB8ED0)
      {
        if (presentingViewController != controller && (ACFLogSettingsGetLevelMask() & 8) != 0)
        {
          ACFLog(3, "[ACMDialog hideWithParentViewController:animated:completion:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMDialog.m", 103, 0, "Attempt to dismiss %@ with parent: %@, while it has diferent parent: %@", self, controller, [(ACMDialog *)self presentingViewController]);
        }
      }
    }

    presentingViewController2 = [(ACMDialog *)self presentingViewController];

    [presentingViewController2 dismissViewControllerAnimated:animatedCopy completion:completion];
  }

  else if (completion)
  {
    v11 = *(completion + 2);

    v11(completion);
  }
}

- (void)loadView
{
  [objc_msgSend(MEMORY[0x29EDC7C40] "mainScreen")];
  v7 = [objc_alloc(MEMORY[0x29EDC7DA0]) initWithFrame:{v3, v4, v5, v6}];
  [v7 setBackgroundColor:{objc_msgSend(MEMORY[0x29EDC7A00], "clearColor")}];
  [v7 setAutoresizesSubviews:1];
  backgroundImageName = [(ACMDialog *)self backgroundImageName];
  if (backgroundImageName)
  {
    v9 = [objc_alloc(MEMORY[0x29EDC7AD8]) initWithImage:ACMImageWithName(backgroundImageName)];
    [v9 setFrame:{0.0, -20.0, 320.0, 480.0}];
    [v7 addSubview:v9];
    [v7 bringSubviewToFront:v9];
  }

  [(ACMDialog *)self setView:v7];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if ([(ACMDialog *)self shouldManuallyChangeStatusBarStyle])
  {
    -[ACMDialog setSavedStatusBarStyle:](self, "setSavedStatusBarStyle:", [objc_msgSend(MEMORY[0x29EDC7938] "sharedApplication")]);
    [objc_msgSend(MEMORY[0x29EDC7938] "sharedApplication")];
  }

  v5.receiver = self;
  v5.super_class = ACMDialog;
  [(ACMDialog *)&v5 viewWillAppear:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = ACMDialog;
  [(ACMDialog *)&v3 viewDidAppear:appear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = ACMDialog;
  [(ACMDialog *)&v5 viewDidDisappear:?];
  if ([(ACMDialog *)self shouldManuallyChangeStatusBarStyle])
  {
    [objc_msgSend(MEMORY[0x29EDC7938] "sharedApplication")];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = ACMDialog;
  [(ACMDialog *)&v3 viewWillDisappear:disappear];
}

@end