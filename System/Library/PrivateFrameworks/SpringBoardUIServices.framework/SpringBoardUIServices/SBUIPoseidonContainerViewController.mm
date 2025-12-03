@interface SBUIPoseidonContainerViewController
- (BOOL)coachingActive;
- (SBUIPoseidonContainerViewController)initWithAuthenticationInformationProvider:(id)provider;
- (SBUIPoseidonContainerViewControllerDelegate)delegate;
- (SBUIPoseidonContainerViewControllerLockStatusProvider)authenticationInformationProvider;
- (id)_poseidonIconView;
- (void)_setCounterTransformForOrientation:(int64_t)orientation;
- (void)_setLocalTransformForOrientation:(int64_t)orientation;
- (void)_updateRotation;
- (void)fillRestToOpenWithDuration:(double)duration;
- (void)loadView;
- (void)poseidonIconViewCoachingStateDidChange:(id)change;
- (void)resetRestToOpen;
- (void)setAuthenticated:(BOOL)authenticated;
- (void)setBioLockout:(BOOL)lockout;
- (void)setLegibilitySettings:(id)settings;
- (void)setResignActive:(BOOL)active;
- (void)setScreenOn:(BOOL)on;
- (void)setTestPoseidonIconView:(id)view;
- (void)showCoaching:(BOOL)coaching;
- (void)startRestToOpenCoaching:(BOOL)coaching withCompletion:(id)completion;
- (void)updateContainsFirstRowIcons:(BOOL)icons;
- (void)updateSidebarComplicationFrame:(CGRect)frame;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SBUIPoseidonContainerViewController

- (SBUIPoseidonContainerViewController)initWithAuthenticationInformationProvider:(id)provider
{
  providerCopy = provider;
  v8.receiver = self;
  v8.super_class = SBUIPoseidonContainerViewController;
  v5 = [(SBUIPoseidonContainerViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SBUIPoseidonContainerViewController *)v5 setAuthenticationInformationProvider:providerCopy];
  }

  return v6;
}

- (void)loadView
{
  v3 = objc_alloc_init(SBUIPoseidonIconView);
  [(SBUIPoseidonIconView *)v3 setDelegate:self];
  [(SBUIPoseidonIconView *)v3 bs_setHitTestingDisabled:1];
  [(SBUIPoseidonContainerViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SBUIPoseidonContainerViewController;
  [(SBUIPoseidonContainerViewController *)&v3 viewDidLoad];
  [(SBUIPoseidonContainerViewController *)self _updateRotation];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v15.receiver = self;
  v15.super_class = SBUIPoseidonContainerViewController;
  coordinatorCopy = coordinator;
  [(SBUIPoseidonContainerViewController *)&v15 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  _poseidonIconView = [(SBUIPoseidonContainerViewController *)self _poseidonIconView];
  v9 = _poseidonIconView;
  if (_poseidonIconView)
  {
    [_poseidonIconView transform];
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  CGAffineTransformRotate(&v14, &v13, -1.0e-13);
  [v9 setTransform:&v14];
  if (v9)
  {
    [v9 localTransform];
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  CGAffineTransformRotate(&v14, &v13, 1.0e-13);
  [v9 setLocalTransform:&v14];
  v10 = SBFWindowForViewControllerTransition();
  _toWindowOrientation = [v10 _toWindowOrientation];

  [(SBUIPoseidonContainerViewController *)self _setLocalTransformForOrientation:_toWindowOrientation];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90__SBUIPoseidonContainerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v12[3] = &unk_1E789EBF0;
  v12[4] = self;
  v12[5] = _toWindowOrientation;
  [coordinatorCopy animateAlongsideTransition:v12 completion:0];
}

- (void)_setCounterTransformForOrientation:(int64_t)orientation
{
  _poseidonIconView = [(SBUIPoseidonContainerViewController *)self _poseidonIconView];
  SBTransformFromOrientationToOrientation();
  [_poseidonIconView setTransform:&v4];
}

- (void)_setLocalTransformForOrientation:(int64_t)orientation
{
  _poseidonIconView = [(SBUIPoseidonContainerViewController *)self _poseidonIconView];
  if (orientation > 2)
  {
    if (orientation == 3)
    {
      v6 = 1.57079633;
      goto LABEL_10;
    }

    if (orientation == 4)
    {
      v6 = -1.57079633;
LABEL_10:
      CGAffineTransformMakeRotation(&v7, v6);
      goto LABEL_11;
    }
  }

  else
  {
    if (orientation < 2)
    {
      v5 = *(MEMORY[0x1E695EFD0] + 16);
      *&v7.a = *MEMORY[0x1E695EFD0];
      *&v7.c = v5;
      *&v7.tx = *(MEMORY[0x1E695EFD0] + 32);
LABEL_11:
      [_poseidonIconView setLocalTransform:&v7];
      goto LABEL_12;
    }

    if (orientation == 2)
    {
      v6 = -3.14159265;
      goto LABEL_10;
    }
  }

LABEL_12:
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (([(_UILegibilitySettings *)self->_legibilitySettings isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    _poseidonIconView = [(SBUIPoseidonContainerViewController *)self _poseidonIconView];
    [_poseidonIconView setLegibilitySettings:self->_legibilitySettings];
  }
}

- (void)setAuthenticated:(BOOL)authenticated
{
  if (self->_authenticated != authenticated)
  {
    block[7] = v3;
    block[8] = v4;
    self->_authenticated = authenticated;
    if (authenticated)
    {
      [(SBUIPoseidonContainerViewController *)self setBioLockout:0];
      if (self->_fingerOffSinceWake)
      {
        v6 = 0;
      }

      else if (self->_unlockSource == 1)
      {
        v6 = 110000000;
      }

      else
      {
        v6 = 0;
      }

      v7 = dispatch_time(0, v6);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __56__SBUIPoseidonContainerViewController_setAuthenticated___block_invoke;
      block[3] = &unk_1E789DA38;
      block[4] = self;
      dispatch_after(v7, MEMORY[0x1E69E96A0], block);
    }
  }
}

- (void)setScreenOn:(BOOL)on
{
  if (self->_screenOn != on)
  {
    onCopy = on;
    self->_screenOn = on;
    if (on)
    {
      [(SBUIPoseidonContainerViewController *)self _updateRotation];
    }

    else
    {
      [(SBUIPoseidonContainerViewController *)self startRestToOpenCoaching:0 withCompletion:0];
      [(SBUIPoseidonContainerViewController *)self setFingerOffSinceWake:0];
      [(SBUIPoseidonContainerViewController *)self setUnlockSource:0];
    }

    [(SBUIPoseidonContainerViewController *)self showCoaching:onCopy];
  }
}

- (void)setBioLockout:(BOOL)lockout
{
  if (self->_bioLockout != lockout)
  {
    self->_bioLockout = lockout;
    if (lockout)
    {
      [(SBUIPoseidonContainerViewController *)self showCoaching:0];
    }
  }
}

- (void)setResignActive:(BOOL)active
{
  if (self->_resignActive != active)
  {
    self->_resignActive = active;
    if (active)
    {
      [(SBUIPoseidonContainerViewController *)self showCoaching:0];

      [(SBUIPoseidonContainerViewController *)self startRestToOpenCoaching:0 withCompletion:0];
    }

    else
    {

      [(SBUIPoseidonContainerViewController *)self showCoaching:1];
    }
  }
}

- (void)startRestToOpenCoaching:(BOOL)coaching withCompletion:(id)completion
{
  coachingCopy = coaching;
  completionCopy = completion;
  delegate = [(SBUIPoseidonContainerViewController *)self delegate];
  if (coachingCopy && (-[SBUIPoseidonContainerViewController authenticationInformationProvider](self, "authenticationInformationProvider"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isBiometricLockedOut], v8, (v9 & 1) == 0))
  {
    _poseidonIconView = [(SBUIPoseidonContainerViewController *)self _poseidonIconView];
    state = [_poseidonIconView state];

    if (state == 2)
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1);
      }
    }

    else
    {
      _poseidonIconView2 = [(SBUIPoseidonContainerViewController *)self _poseidonIconView];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __78__SBUIPoseidonContainerViewController_startRestToOpenCoaching_withCompletion___block_invoke;
      v14[3] = &unk_1E789EC18;
      v15 = delegate;
      selfCopy = self;
      v17 = completionCopy;
      [_poseidonIconView2 setState:2 forIdleTimeout:0 withCompletion:v14];
    }
  }

  else
  {
    _poseidonIconView3 = [(SBUIPoseidonContainerViewController *)self _poseidonIconView];
    [_poseidonIconView3 setState:0];
  }
}

uint64_t __78__SBUIPoseidonContainerViewController_startRestToOpenCoaching_withCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) poseidonContainerViewControllerCoachingStateDidChange:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)fillRestToOpenWithDuration:(double)duration
{
  _poseidonIconView = [(SBUIPoseidonContainerViewController *)self _poseidonIconView];
  [_poseidonIconView fillRestToOpenWithDuration:duration];
}

- (void)resetRestToOpen
{
  _poseidonIconView = [(SBUIPoseidonContainerViewController *)self _poseidonIconView];
  [_poseidonIconView resetRestToOpen];
}

- (void)updateContainsFirstRowIcons:(BOOL)icons
{
  iconsCopy = icons;
  _poseidonIconView = [(SBUIPoseidonContainerViewController *)self _poseidonIconView];
  [_poseidonIconView setContainsFirstRowIcons:iconsCopy];
}

- (void)updateSidebarComplicationFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  _poseidonIconView = [(SBUIPoseidonContainerViewController *)self _poseidonIconView];
  [_poseidonIconView setSidebarFrame:{x, y, width, height}];
}

- (BOOL)coachingActive
{
  _poseidonIconView = [(SBUIPoseidonContainerViewController *)self _poseidonIconView];
  v3 = [_poseidonIconView state] != 0;

  return v3;
}

- (void)showCoaching:(BOOL)coaching
{
  if (!coaching)
  {
    _poseidonIconView = [(SBUIPoseidonContainerViewController *)self _poseidonIconView];
    state = [_poseidonIconView state];

    if (state == 2)
    {
      return;
    }

    _poseidonIconView2 = [(SBUIPoseidonContainerViewController *)self _poseidonIconView];
    [_poseidonIconView2 setState:0];
    goto LABEL_9;
  }

  authenticationInformationProvider = [(SBUIPoseidonContainerViewController *)self authenticationInformationProvider];
  if (!self->_authenticated)
  {
    _poseidonIconView2 = authenticationInformationProvider;
    if (([authenticationInformationProvider isBiometricLockedOut] & 1) == 0 && objc_msgSend(_poseidonIconView2, "hasBiometricAuthenticationCapabilityEnabled") && !self->_resignActive)
    {
      _poseidonIconView3 = [(SBUIPoseidonContainerViewController *)self _poseidonIconView];
      [_poseidonIconView3 setState:1];
    }

LABEL_9:
    authenticationInformationProvider = _poseidonIconView2;
  }
}

- (id)_poseidonIconView
{
  testPoseidonIconView = self->_testPoseidonIconView;
  if (testPoseidonIconView)
  {
    view = testPoseidonIconView;
  }

  else
  {
    view = [(SBUIPoseidonContainerViewController *)self view];
  }

  return view;
}

- (void)_updateRotation
{
  activeInterfaceOrientation = [*MEMORY[0x1E69DDA98] activeInterfaceOrientation];
  [(SBUIPoseidonContainerViewController *)self _setCounterTransformForOrientation:activeInterfaceOrientation];

  [(SBUIPoseidonContainerViewController *)self _setLocalTransformForOrientation:activeInterfaceOrientation];
}

- (void)poseidonIconViewCoachingStateDidChange:(id)change
{
  delegate = [(SBUIPoseidonContainerViewController *)self delegate];
  [delegate poseidonContainerViewControllerCoachingStateDidChange:self];
}

- (void)setTestPoseidonIconView:(id)view
{
  viewCopy = view;
  if (self->_testPoseidonIconView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_testPoseidonIconView, view);
    viewCopy = v6;
  }
}

- (SBUIPoseidonContainerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBUIPoseidonContainerViewControllerLockStatusProvider)authenticationInformationProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_authenticationInformationProvider);

  return WeakRetained;
}

@end