@interface _SBStatusBarWindowRootViewController
- (SBStatusBarWindow)statusBarWindow;
- (_SBStatusBarWindowRootViewController)initWithWindow:(id)window;
- (unint64_t)supportedInterfaceOrientations;
- (void)getRotationContentSettings:(id *)settings forWindow:(id)window;
- (void)loadView;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation _SBStatusBarWindowRootViewController

- (_SBStatusBarWindowRootViewController)initWithWindow:(id)window
{
  windowCopy = window;
  v8.receiver = self;
  v8.super_class = _SBStatusBarWindowRootViewController;
  v5 = [(_SBStatusBarWindowRootViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_statusBarWindow, windowCopy);
  }

  return v6;
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = _SBStatusBarWindowRootViewController;
  [(_SBStatusBarWindowRootViewController *)&v4 loadView];
  view = [(_SBStatusBarWindowRootViewController *)self view];
  [view setOpaque:0];
  [view setUserInteractionEnabled:0];
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
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice userInterfaceIdiom] != 1)
      {

LABEL_12:
        v6 = 2;
        goto LABEL_13;
      }
    }

    _sbWindowScene = [WeakRetained _sbWindowScene];
    isExtendedDisplayWindowScene = [_sbWindowScene isExtendedDisplayWindowScene];

    if ((v5 & 1) == 0)
    {
    }

    if (isExtendedDisplayWindowScene)
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v19.receiver = self;
  v19.super_class = _SBStatusBarWindowRootViewController;
  [(_SBStatusBarWindowRootViewController *)&v19 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleStatusBar"))
  {
    WeakRetained = objc_loadWeakRetained(&self->_statusBarWindow);
    statusBar = [WeakRetained statusBar];
    _toWindowOrientation = [WeakRetained _toWindowOrientation];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __91___SBStatusBarWindowRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v15[3] = &unk_2783BD2E8;
    v16 = statusBar;
    v17 = WeakRetained;
    v18 = _toWindowOrientation;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __91___SBStatusBarWindowRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
    v13[3] = &unk_2783A9488;
    v14 = v16;
    v11 = v16;
    v12 = WeakRetained;
    [coordinatorCopy animateAlongsideTransition:v15 completion:v13];
  }
}

- (void)getRotationContentSettings:(id *)settings forWindow:(id)window
{
  if (settings)
  {
    settings->var6 = 0;
  }
}

- (SBStatusBarWindow)statusBarWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBarWindow);

  return WeakRetained;
}

@end