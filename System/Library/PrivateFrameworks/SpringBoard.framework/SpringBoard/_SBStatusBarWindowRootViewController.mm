@interface _SBStatusBarWindowRootViewController
- (SBStatusBarWindow)statusBarWindow;
- (_SBStatusBarWindowRootViewController)initWithWindow:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)getRotationContentSettings:(id *)a3 forWindow:(id)a4;
- (void)loadView;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation _SBStatusBarWindowRootViewController

- (_SBStatusBarWindowRootViewController)initWithWindow:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _SBStatusBarWindowRootViewController;
  v5 = [(_SBStatusBarWindowRootViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_statusBarWindow, v4);
  }

  return v6;
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = _SBStatusBarWindowRootViewController;
  [(_SBStatusBarWindowRootViewController *)&v4 loadView];
  v3 = [(_SBStatusBarWindowRootViewController *)self view];
  [v3 setOpaque:0];
  [v3 setUserInteractionEnabled:0];
}

- (unint64_t)supportedInterfaceOrientations
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBarWindow);
  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleStatusBar"))
  {
    v4 = __sb__runningInSpringBoard();
    v5 = v4;
    if (v4)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v2 = [MEMORY[0x277D75418] currentDevice];
      if ([v2 userInterfaceIdiom] != 1)
      {

LABEL_12:
        v6 = 2;
        goto LABEL_13;
      }
    }

    v7 = [WeakRetained _sbWindowScene];
    v8 = [v7 isExtendedDisplayWindowScene];

    if ((v5 & 1) == 0)
    {
    }

    if (v8)
    {
      goto LABEL_12;
    }

    v6 = 30;
  }

  else
  {
    [WeakRetained orientation];
    v6 = SBFInterfaceOrientationMaskForInterfaceOrientation();
  }

LABEL_13:

  return v6;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = _SBStatusBarWindowRootViewController;
  [(_SBStatusBarWindowRootViewController *)&v19 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleStatusBar"))
  {
    WeakRetained = objc_loadWeakRetained(&self->_statusBarWindow);
    v9 = [WeakRetained statusBar];
    v10 = [WeakRetained _toWindowOrientation];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __91___SBStatusBarWindowRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v15[3] = &unk_2783BD2E8;
    v16 = v9;
    v17 = WeakRetained;
    v18 = v10;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __91___SBStatusBarWindowRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
    v13[3] = &unk_2783A9488;
    v14 = v16;
    v11 = v16;
    v12 = WeakRetained;
    [v7 animateAlongsideTransition:v15 completion:v13];
  }
}

- (void)getRotationContentSettings:(id *)a3 forWindow:(id)a4
{
  if (a3)
  {
    a3->var6 = 0;
  }
}

- (SBStatusBarWindow)statusBarWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBarWindow);

  return WeakRetained;
}

@end