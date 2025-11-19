@interface SBUIPoseidonContainerViewController
- (BOOL)coachingActive;
- (SBUIPoseidonContainerViewController)initWithAuthenticationInformationProvider:(id)a3;
- (SBUIPoseidonContainerViewControllerDelegate)delegate;
- (SBUIPoseidonContainerViewControllerLockStatusProvider)authenticationInformationProvider;
- (id)_poseidonIconView;
- (void)_setCounterTransformForOrientation:(int64_t)a3;
- (void)_setLocalTransformForOrientation:(int64_t)a3;
- (void)_updateRotation;
- (void)fillRestToOpenWithDuration:(double)a3;
- (void)loadView;
- (void)poseidonIconViewCoachingStateDidChange:(id)a3;
- (void)resetRestToOpen;
- (void)setAuthenticated:(BOOL)a3;
- (void)setBioLockout:(BOOL)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setResignActive:(BOOL)a3;
- (void)setScreenOn:(BOOL)a3;
- (void)setTestPoseidonIconView:(id)a3;
- (void)showCoaching:(BOOL)a3;
- (void)startRestToOpenCoaching:(BOOL)a3 withCompletion:(id)a4;
- (void)updateContainsFirstRowIcons:(BOOL)a3;
- (void)updateSidebarComplicationFrame:(CGRect)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SBUIPoseidonContainerViewController

- (SBUIPoseidonContainerViewController)initWithAuthenticationInformationProvider:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBUIPoseidonContainerViewController;
  v5 = [(SBUIPoseidonContainerViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SBUIPoseidonContainerViewController *)v5 setAuthenticationInformationProvider:v4];
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v15.receiver = self;
  v15.super_class = SBUIPoseidonContainerViewController;
  v7 = a4;
  [(SBUIPoseidonContainerViewController *)&v15 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(SBUIPoseidonContainerViewController *)self _poseidonIconView];
  v9 = v8;
  if (v8)
  {
    [v8 transform];
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
  v11 = [v10 _toWindowOrientation];

  [(SBUIPoseidonContainerViewController *)self _setLocalTransformForOrientation:v11];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90__SBUIPoseidonContainerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v12[3] = &unk_1E789EBF0;
  v12[4] = self;
  v12[5] = v11;
  [v7 animateAlongsideTransition:v12 completion:0];
}

- (void)_setCounterTransformForOrientation:(int64_t)a3
{
  v3 = [(SBUIPoseidonContainerViewController *)self _poseidonIconView];
  SBTransformFromOrientationToOrientation();
  [v3 setTransform:&v4];
}

- (void)_setLocalTransformForOrientation:(int64_t)a3
{
  v4 = [(SBUIPoseidonContainerViewController *)self _poseidonIconView];
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v6 = 1.57079633;
      goto LABEL_10;
    }

    if (a3 == 4)
    {
      v6 = -1.57079633;
LABEL_10:
      CGAffineTransformMakeRotation(&v7, v6);
      goto LABEL_11;
    }
  }

  else
  {
    if (a3 < 2)
    {
      v5 = *(MEMORY[0x1E695EFD0] + 16);
      *&v7.a = *MEMORY[0x1E695EFD0];
      *&v7.c = v5;
      *&v7.tx = *(MEMORY[0x1E695EFD0] + 32);
LABEL_11:
      [v4 setLocalTransform:&v7];
      goto LABEL_12;
    }

    if (a3 == 2)
    {
      v6 = -3.14159265;
      goto LABEL_10;
    }
  }

LABEL_12:
}

- (void)setLegibilitySettings:(id)a3
{
  v6 = a3;
  if (([(_UILegibilitySettings *)self->_legibilitySettings isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
    v5 = [(SBUIPoseidonContainerViewController *)self _poseidonIconView];
    [v5 setLegibilitySettings:self->_legibilitySettings];
  }
}

- (void)setAuthenticated:(BOOL)a3
{
  if (self->_authenticated != a3)
  {
    block[7] = v3;
    block[8] = v4;
    self->_authenticated = a3;
    if (a3)
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

- (void)setScreenOn:(BOOL)a3
{
  if (self->_screenOn != a3)
  {
    v4 = a3;
    self->_screenOn = a3;
    if (a3)
    {
      [(SBUIPoseidonContainerViewController *)self _updateRotation];
    }

    else
    {
      [(SBUIPoseidonContainerViewController *)self startRestToOpenCoaching:0 withCompletion:0];
      [(SBUIPoseidonContainerViewController *)self setFingerOffSinceWake:0];
      [(SBUIPoseidonContainerViewController *)self setUnlockSource:0];
    }

    [(SBUIPoseidonContainerViewController *)self showCoaching:v4];
  }
}

- (void)setBioLockout:(BOOL)a3
{
  if (self->_bioLockout != a3)
  {
    self->_bioLockout = a3;
    if (a3)
    {
      [(SBUIPoseidonContainerViewController *)self showCoaching:0];
    }
  }
}

- (void)setResignActive:(BOOL)a3
{
  if (self->_resignActive != a3)
  {
    self->_resignActive = a3;
    if (a3)
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

- (void)startRestToOpenCoaching:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SBUIPoseidonContainerViewController *)self delegate];
  if (v4 && (-[SBUIPoseidonContainerViewController authenticationInformationProvider](self, "authenticationInformationProvider"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isBiometricLockedOut], v8, (v9 & 1) == 0))
  {
    v11 = [(SBUIPoseidonContainerViewController *)self _poseidonIconView];
    v12 = [v11 state];

    if (v12 == 2)
    {
      if (v6)
      {
        v6[2](v6, 1);
      }
    }

    else
    {
      v13 = [(SBUIPoseidonContainerViewController *)self _poseidonIconView];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __78__SBUIPoseidonContainerViewController_startRestToOpenCoaching_withCompletion___block_invoke;
      v14[3] = &unk_1E789EC18;
      v15 = v7;
      v16 = self;
      v17 = v6;
      [v13 setState:2 forIdleTimeout:0 withCompletion:v14];
    }
  }

  else
  {
    v10 = [(SBUIPoseidonContainerViewController *)self _poseidonIconView];
    [v10 setState:0];
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

- (void)fillRestToOpenWithDuration:(double)a3
{
  v4 = [(SBUIPoseidonContainerViewController *)self _poseidonIconView];
  [v4 fillRestToOpenWithDuration:a3];
}

- (void)resetRestToOpen
{
  v2 = [(SBUIPoseidonContainerViewController *)self _poseidonIconView];
  [v2 resetRestToOpen];
}

- (void)updateContainsFirstRowIcons:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBUIPoseidonContainerViewController *)self _poseidonIconView];
  [v4 setContainsFirstRowIcons:v3];
}

- (void)updateSidebarComplicationFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(SBUIPoseidonContainerViewController *)self _poseidonIconView];
  [v7 setSidebarFrame:{x, y, width, height}];
}

- (BOOL)coachingActive
{
  v2 = [(SBUIPoseidonContainerViewController *)self _poseidonIconView];
  v3 = [v2 state] != 0;

  return v3;
}

- (void)showCoaching:(BOOL)a3
{
  if (!a3)
  {
    v6 = [(SBUIPoseidonContainerViewController *)self _poseidonIconView];
    v7 = [v6 state];

    if (v7 == 2)
    {
      return;
    }

    v8 = [(SBUIPoseidonContainerViewController *)self _poseidonIconView];
    [v8 setState:0];
    goto LABEL_9;
  }

  v4 = [(SBUIPoseidonContainerViewController *)self authenticationInformationProvider];
  if (!self->_authenticated)
  {
    v8 = v4;
    if (([v4 isBiometricLockedOut] & 1) == 0 && objc_msgSend(v8, "hasBiometricAuthenticationCapabilityEnabled") && !self->_resignActive)
    {
      v5 = [(SBUIPoseidonContainerViewController *)self _poseidonIconView];
      [v5 setState:1];
    }

LABEL_9:
    v4 = v8;
  }
}

- (id)_poseidonIconView
{
  testPoseidonIconView = self->_testPoseidonIconView;
  if (testPoseidonIconView)
  {
    v3 = testPoseidonIconView;
  }

  else
  {
    v3 = [(SBUIPoseidonContainerViewController *)self view];
  }

  return v3;
}

- (void)_updateRotation
{
  v3 = [*MEMORY[0x1E69DDA98] activeInterfaceOrientation];
  [(SBUIPoseidonContainerViewController *)self _setCounterTransformForOrientation:v3];

  [(SBUIPoseidonContainerViewController *)self _setLocalTransformForOrientation:v3];
}

- (void)poseidonIconViewCoachingStateDidChange:(id)a3
{
  v4 = [(SBUIPoseidonContainerViewController *)self delegate];
  [v4 poseidonContainerViewControllerCoachingStateDidChange:self];
}

- (void)setTestPoseidonIconView:(id)a3
{
  v5 = a3;
  if (self->_testPoseidonIconView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_testPoseidonIconView, a3);
    v5 = v6;
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