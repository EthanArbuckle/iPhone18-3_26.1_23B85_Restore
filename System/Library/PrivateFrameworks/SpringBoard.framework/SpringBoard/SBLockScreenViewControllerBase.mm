@interface SBLockScreenViewControllerBase
- (SBBiometricUnlockBehaviorDelegate)biometricUnlockBehaviorDelegate;
- (SBIdleTimerCoordinating)idleTimerCoordinator;
- (UIVisualEffectView)wakeEffectView;
- (id)coordinatorRequestedIdleTimerBehavior:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (int64_t)backlightLuminance;
- (void)jiggleLockIcon;
- (void)prepareForUILock;
- (void)prepareForUIUnlock;
- (void)setCustomLockScreenActionContext:(id)a3;
- (void)setInScreenOffMode:(BOOL)a3 forAutoUnlock:(BOOL)a4 fromUnlockSource:(int)a5;
- (void)setPasscodeLockVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setPasscodeLockVisible:(BOOL)a3 intent:(int)a4 ignoringPreflightRequirementsForPresentation:(BOOL)a5 animated:(BOOL)a6 completion:(id)a7;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SBLockScreenViewControllerBase

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = SBLockScreenViewControllerBase;
  [(SBLockScreenViewControllerBase *)&v8 viewDidLoad];
  v3 = [(SBLockScreenViewControllerBase *)self view];
  v4 = objc_alloc(MEMORY[0x277D75D68]);
  [v3 bounds];
  v5 = [v4 initWithFrame:?];
  [v5 setAutoresizingMask:18];
  [v3 addSubview:v5];
  [v3 sendSubviewToBack:v5];
  v6 = objc_alloc_init(MEMORY[0x277D65E88]);
  legacyWallpaperWakeAnimator = self->_legacyWallpaperWakeAnimator;
  self->_legacyWallpaperWakeAnimator = v6;

  [(SBFLegacyWallpaperWakeAnimator *)self->_legacyWallpaperWakeAnimator setWakeEffectView:v5];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v14.receiver = self;
  v14.super_class = SBLockScreenViewControllerBase;
  v6 = a4;
  [(SBLockScreenViewControllerBase *)&v14 viewWillTransitionToSize:v6 withTransitionCoordinator:width, height];
  v7 = SBFWindowForViewControllerTransition();
  v8 = [v7 _toWindowOrientation];

  [v6 transitionDuration];
  v10 = v9;
  v11 = +[SBWallpaperController sharedInstance];
  [v11 orientationSource:3 willRotateToInterfaceOrientation:v8 duration:v10];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__SBLockScreenViewControllerBase_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v13[3] = &__block_descriptor_48_e56_v16__0___UIViewControllerTransitionCoordinatorContext__8l;
  v13[4] = v8;
  *&v13[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__SBLockScreenViewControllerBase_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v12[3] = &__block_descriptor_40_e56_v16__0___UIViewControllerTransitionCoordinatorContext__8l;
  v12[4] = v8;
  [v6 animateAlongsideTransition:v13 completion:v12];
}

void __85__SBLockScreenViewControllerBase_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = +[SBWallpaperController sharedInstance];
  [v2 orientationSource:3 willAnimateRotationToInterfaceOrientation:*(a1 + 32) duration:*(a1 + 40)];
}

void __85__SBLockScreenViewControllerBase_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = +[SBWallpaperController sharedInstance];
  [v2 orientationSource:3 didRotateFromInterfaceOrientation:*(a1 + 32)];
}

- (id)succinctDescription
{
  v2 = [(SBLockScreenViewControllerBase *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBLockScreenViewControllerBase *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (void)setPasscodeLockVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5);
  }
}

- (void)setPasscodeLockVisible:(BOOL)a3 intent:(int)a4 ignoringPreflightRequirementsForPresentation:(BOOL)a5 animated:(BOOL)a6 completion:(id)a7
{
  if (a7)
  {
    (*(a7 + 2))(a7);
  }
}

- (void)prepareForUIUnlock
{
  v2 = +[SBIdleTimerGlobalCoordinator sharedInstance];
  [v2 resetIdleTimerForReason:@"LS:PrepareForUIUnlock"];
}

- (void)prepareForUILock
{
  v3 = +[SBBacklightController sharedInstance];
  v4 = [v3 screenIsOn];

  if (v4)
  {
    v5 = +[SBIdleTimerGlobalCoordinator sharedInstance];
    [v5 resetIdleTimerForReason:@"LS:PrepareForUILock"];

    [(SBLockScreenViewControllerBase *)self setInScreenOffMode:0];
  }

  v6 = +[SBAlertItemsController sharedInstance];
  [v6 convertUnlockedAlertsToLockedAlerts];
}

- (void)setInScreenOffMode:(BOOL)a3 forAutoUnlock:(BOOL)a4 fromUnlockSource:(int)a5
{
  v5 = a3;
  if (a3)
  {
    [MEMORY[0x277D75D18] _performWithAnimation:{&__block_literal_global_448, a4, *&a5}];
    v6 = SBLockScreenDimmedNotification;
    v7 = MEMORY[0x277D66F88];
  }

  else
  {
    v6 = SBLockScreenUndimmedNotification;
    v7 = MEMORY[0x277D66F90];
  }

  v8 = +[SBEventObserverRegistry sharedInstance];
  [v8 setValue:v5 forState:*MEMORY[0x277D66FA8]];

  v9 = +[SBEventObserverRegistry sharedInstance];
  [v9 postEventToInterestedObservers:*v7];

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 postNotificationName:*v6 object:0];
}

void __84__SBLockScreenViewControllerBase_setInScreenOffMode_forAutoUnlock_fromUnlockSource___block_invoke()
{
  v0 = [SBApp HUDController];
  [v0 dismissHUDs:1];
}

- (int64_t)backlightLuminance
{
  v2 = [(SBLockScreenViewControllerBase *)self traitCollection];
  v3 = [v2 _backlightLuminance];

  return v3;
}

- (void)setCustomLockScreenActionContext:(id)a3
{
  v5 = a3;
  if (self->_customLockScreenActionContext != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_customLockScreenActionContext, a3);
    v5 = v6;
  }
}

- (void)jiggleLockIcon
{
  v2 = [(UIViewController *)self _sbWindowScene];
  v4 = [v2 statusBarManager];

  v3 = [v4 statusBar];
  [v3 jiggleLockIcon];
}

- (SBIdleTimerCoordinating)idleTimerCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_idleTimerCoordinator);

  return WeakRetained;
}

- (SBBiometricUnlockBehaviorDelegate)biometricUnlockBehaviorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_biometricUnlockBehaviorDelegate);

  return WeakRetained;
}

- (UIVisualEffectView)wakeEffectView
{
  WeakRetained = objc_loadWeakRetained(&self->_wakeEffectView);

  return WeakRetained;
}

- (id)coordinatorRequestedIdleTimerBehavior:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();

  return +[SBIdleTimerBehavior disabledBehavior];
}

@end