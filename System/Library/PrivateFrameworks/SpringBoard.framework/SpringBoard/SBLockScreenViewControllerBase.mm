@interface SBLockScreenViewControllerBase
- (SBBiometricUnlockBehaviorDelegate)biometricUnlockBehaviorDelegate;
- (SBIdleTimerCoordinating)idleTimerCoordinator;
- (UIVisualEffectView)wakeEffectView;
- (id)coordinatorRequestedIdleTimerBehavior:(id)behavior;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (int64_t)backlightLuminance;
- (void)jiggleLockIcon;
- (void)prepareForUILock;
- (void)prepareForUIUnlock;
- (void)setCustomLockScreenActionContext:(id)context;
- (void)setInScreenOffMode:(BOOL)mode forAutoUnlock:(BOOL)unlock fromUnlockSource:(int)source;
- (void)setPasscodeLockVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion;
- (void)setPasscodeLockVisible:(BOOL)visible intent:(int)intent ignoringPreflightRequirementsForPresentation:(BOOL)presentation animated:(BOOL)animated completion:(id)completion;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SBLockScreenViewControllerBase

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = SBLockScreenViewControllerBase;
  [(SBLockScreenViewControllerBase *)&v8 viewDidLoad];
  view = [(SBLockScreenViewControllerBase *)self view];
  v4 = objc_alloc(MEMORY[0x277D75D68]);
  [view bounds];
  v5 = [v4 initWithFrame:?];
  [v5 setAutoresizingMask:18];
  [view addSubview:v5];
  [view sendSubviewToBack:v5];
  v6 = objc_alloc_init(MEMORY[0x277D65E88]);
  legacyWallpaperWakeAnimator = self->_legacyWallpaperWakeAnimator;
  self->_legacyWallpaperWakeAnimator = v6;

  [(SBFLegacyWallpaperWakeAnimator *)self->_legacyWallpaperWakeAnimator setWakeEffectView:v5];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v14.receiver = self;
  v14.super_class = SBLockScreenViewControllerBase;
  coordinatorCopy = coordinator;
  [(SBLockScreenViewControllerBase *)&v14 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v7 = SBFWindowForViewControllerTransition();
  _toWindowOrientation = [v7 _toWindowOrientation];

  [coordinatorCopy transitionDuration];
  v10 = v9;
  v11 = +[SBWallpaperController sharedInstance];
  [v11 orientationSource:3 willRotateToInterfaceOrientation:_toWindowOrientation duration:v10];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__SBLockScreenViewControllerBase_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v13[3] = &__block_descriptor_48_e56_v16__0___UIViewControllerTransitionCoordinatorContext__8l;
  v13[4] = _toWindowOrientation;
  *&v13[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__SBLockScreenViewControllerBase_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v12[3] = &__block_descriptor_40_e56_v16__0___UIViewControllerTransitionCoordinatorContext__8l;
  v12[4] = _toWindowOrientation;
  [coordinatorCopy animateAlongsideTransition:v13 completion:v12];
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
  succinctDescriptionBuilder = [(SBLockScreenViewControllerBase *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBLockScreenViewControllerBase *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (void)setPasscodeLockVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)setPasscodeLockVisible:(BOOL)visible intent:(int)intent ignoringPreflightRequirementsForPresentation:(BOOL)presentation animated:(BOOL)animated completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
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
  screenIsOn = [v3 screenIsOn];

  if (screenIsOn)
  {
    v5 = +[SBIdleTimerGlobalCoordinator sharedInstance];
    [v5 resetIdleTimerForReason:@"LS:PrepareForUILock"];

    [(SBLockScreenViewControllerBase *)self setInScreenOffMode:0];
  }

  v6 = +[SBAlertItemsController sharedInstance];
  [v6 convertUnlockedAlertsToLockedAlerts];
}

- (void)setInScreenOffMode:(BOOL)mode forAutoUnlock:(BOOL)unlock fromUnlockSource:(int)source
{
  modeCopy = mode;
  if (mode)
  {
    [MEMORY[0x277D75D18] _performWithAnimation:{&__block_literal_global_448, unlock, *&source}];
    v6 = SBLockScreenDimmedNotification;
    v7 = MEMORY[0x277D66F88];
  }

  else
  {
    v6 = SBLockScreenUndimmedNotification;
    v7 = MEMORY[0x277D66F90];
  }

  v8 = +[SBEventObserverRegistry sharedInstance];
  [v8 setValue:modeCopy forState:*MEMORY[0x277D66FA8]];

  v9 = +[SBEventObserverRegistry sharedInstance];
  [v9 postEventToInterestedObservers:*v7];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:*v6 object:0];
}

void __84__SBLockScreenViewControllerBase_setInScreenOffMode_forAutoUnlock_fromUnlockSource___block_invoke()
{
  v0 = [SBApp HUDController];
  [v0 dismissHUDs:1];
}

- (int64_t)backlightLuminance
{
  traitCollection = [(SBLockScreenViewControllerBase *)self traitCollection];
  _backlightLuminance = [traitCollection _backlightLuminance];

  return _backlightLuminance;
}

- (void)setCustomLockScreenActionContext:(id)context
{
  contextCopy = context;
  if (self->_customLockScreenActionContext != contextCopy)
  {
    v6 = contextCopy;
    objc_storeStrong(&self->_customLockScreenActionContext, context);
    contextCopy = v6;
  }
}

- (void)jiggleLockIcon
{
  _sbWindowScene = [(UIViewController *)self _sbWindowScene];
  statusBarManager = [_sbWindowScene statusBarManager];

  statusBar = [statusBarManager statusBar];
  [statusBar jiggleLockIcon];
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

- (id)coordinatorRequestedIdleTimerBehavior:(id)behavior
{
  objc_opt_class();
  NSRequestConcreteImplementation();

  return +[SBIdleTimerBehavior disabledBehavior];
}

@end