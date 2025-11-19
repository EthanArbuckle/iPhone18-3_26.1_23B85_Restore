@interface ACMDialog
+ (id)dialog;
- (ACMDialog)init;
- (int64_t)modalTransitionStyle;
- (void)dealloc;
- (void)hideWithParentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)loadView;
- (void)showWithParentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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

- (void)showWithParentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  if ([(ACMDialog *)self isMovingFromParentViewController])
  {
    v9 = [a5 copy];
    v10 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __62__ACMDialog_showWithParentViewController_animated_completion___block_invoke;
    block[3] = &unk_29EE917A0;
    block[4] = self;
    block[5] = a3;
    v14 = v6;
    block[6] = v9;
    dispatch_after(v10, MEMORY[0x29EDCA578], block);
  }

  else if ([(ACMDialog *)self presentingViewController])
  {
    if (-[ACMDialog presentingViewController](self, "presentingViewController") == a3 || (v11 = -[ACMDialog presentingViewController](self, "presentingViewController"), v11 == [a3 navigationController]))
    {
      if (qword_2A1EB8ED0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        ACFLog(3, "[ACMDialog showWithParentViewController:animated:completion:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMDialog.m", 70, 0, "Attempt to show %@ with parent: %@, while it always has a parent: %@", self, a3, [(ACMDialog *)self presentingViewController]);
      }
    }

    else if (qword_2A1EB8ED0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACMDialog showWithParentViewController:animated:completion:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMDialog.m", 74, 0, "Already shown");
    }

    if (a5)
    {
      v12 = *(a5 + 2);

      v12(a5);
    }
  }

  else
  {

    [a3 presentViewController:self animated:v6 completion:a5];
  }
}

- (void)hideWithParentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  if ([(ACMDialog *)self isBeingPresented])
  {
    v9 = [a5 copy];
    v10 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __62__ACMDialog_hideWithParentViewController_animated_completion___block_invoke;
    block[3] = &unk_29EE917A0;
    block[4] = self;
    block[5] = a3;
    v16 = v6;
    block[6] = v9;
    dispatch_after(v10, MEMORY[0x29EDCA578], block);
  }

  else if ([(ACMDialog *)self presentingViewController]&& ([(ACMDialog *)self isBeingDismissed]& 1) == 0)
  {
    v12 = [a3 navigationController];
    if (v12 != [(ACMDialog *)self presentingViewController])
    {
      v13 = [(ACMDialog *)self presentingViewController];
      if (qword_2A1EB8ED0)
      {
        if (v13 != a3 && (ACFLogSettingsGetLevelMask() & 8) != 0)
        {
          ACFLog(3, "[ACMDialog hideWithParentViewController:animated:completion:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMDialog.m", 103, 0, "Attempt to dismiss %@ with parent: %@, while it has diferent parent: %@", self, a3, [(ACMDialog *)self presentingViewController]);
        }
      }
    }

    v14 = [(ACMDialog *)self presentingViewController];

    [v14 dismissViewControllerAnimated:v6 completion:a5];
  }

  else if (a5)
  {
    v11 = *(a5 + 2);

    v11(a5);
  }
}

- (void)loadView
{
  [objc_msgSend(MEMORY[0x29EDC7C40] "mainScreen")];
  v7 = [objc_alloc(MEMORY[0x29EDC7DA0]) initWithFrame:{v3, v4, v5, v6}];
  [v7 setBackgroundColor:{objc_msgSend(MEMORY[0x29EDC7A00], "clearColor")}];
  [v7 setAutoresizesSubviews:1];
  v8 = [(ACMDialog *)self backgroundImageName];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x29EDC7AD8]) initWithImage:ACMImageWithName(v8)];
    [v9 setFrame:{0.0, -20.0, 320.0, 480.0}];
    [v7 addSubview:v9];
    [v7 bringSubviewToFront:v9];
  }

  [(ACMDialog *)self setView:v7];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if ([(ACMDialog *)self shouldManuallyChangeStatusBarStyle])
  {
    -[ACMDialog setSavedStatusBarStyle:](self, "setSavedStatusBarStyle:", [objc_msgSend(MEMORY[0x29EDC7938] "sharedApplication")]);
    [objc_msgSend(MEMORY[0x29EDC7938] "sharedApplication")];
  }

  v5.receiver = self;
  v5.super_class = ACMDialog;
  [(ACMDialog *)&v5 viewWillAppear:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = ACMDialog;
  [(ACMDialog *)&v3 viewDidAppear:a3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = ACMDialog;
  [(ACMDialog *)&v5 viewDidDisappear:?];
  if ([(ACMDialog *)self shouldManuallyChangeStatusBarStyle])
  {
    [objc_msgSend(MEMORY[0x29EDC7938] "sharedApplication")];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = ACMDialog;
  [(ACMDialog *)&v3 viewWillDisappear:a3];
}

@end