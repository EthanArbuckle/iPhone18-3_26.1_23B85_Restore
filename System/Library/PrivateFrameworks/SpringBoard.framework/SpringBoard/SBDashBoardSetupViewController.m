@interface SBDashBoardSetupViewController
- (BOOL)_canCycleAnimationComponents;
- (BOOL)_canShowSolariumCursiveAnimation;
- (BOOL)_haveImportantLanguagesChangedFrom:(id)a3;
- (BOOL)_isRunningBookendAnimation;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)handleEvent:(id)a3;
- (SBDashBoardSetupViewController)initWithCoverSheetViewController:(id)a3;
- (SBDashBoardSetupViewController)initWithCoverSheetViewController:(id)a3 telephonyManager:(id)a4;
- (id)_alignedMarketingOrdering;
- (id)_applicableIdentifierForDictionary:(id)a3 identifier:(id)a4;
- (id)_currentActivationLockStringsDictionary;
- (id)_currentLanguageIdentifier;
- (id)_currentStoreRestrictedStringsDictionary;
- (id)_displayStringForLocalizedString:(id)a3 fallbackString:(id)a4;
- (id)_importantLanguageIdentifiers;
- (id)_subcriptionDataSourceDescription:(int64_t)a3;
- (id)_subscriptionInfoForSubscriptionDataSource:(int64_t)a3;
- (id)_supportedLanguageIdentifierFromRegionalLanguageIdentifier:(id)a3 countryCode:(id)a4;
- (id)firstSupportedLanguageIdentifierInRegionalLanguageIdentifiers:(id)a3 countryCode:(id)a4;
- (unint64_t)_componentsToStartCycling;
- (void)_animateComponentsForNewCycle;
- (void)_cancelWifiScan;
- (void)_checkIfActivationLocked;
- (void)_didClickHomeAffordance:(id)a3;
- (void)_evaluateUpdatingLanguageForImportantLanguageChanges;
- (void)_handleHoverEvent:(id)a3;
- (void)_incrementLocalizedStringsForNewCycle;
- (void)_infoButtonTapped:(id)a3;
- (void)_invalidateWallpaperLoadingTimerAndShowUIIfNeeded;
- (void)_makeSetupAccessoryViewsVisible:(BOOL)a3 animated:(BOOL)a4 delay:(double)a5;
- (void)_regulatoryInfoButtonTapped:(id)a3;
- (void)_resetDisplayedLocalizedStringsImmediately:(BOOL)a3;
- (void)_retrieveChildIconIfNecessaryWithCompletion:(id)a3;
- (void)_setSuppressingWallpaperForCursiveTextAnimation:(BOOL)a3;
- (void)_shareIdentityButtonTapped:(id)a3;
- (void)_startCyclingComponents:(unint64_t)a3 withDelay:(double)a4;
- (void)_startWallpaperLoadingTimerWithDuration:(double)a3;
- (void)_startWifiScan;
- (void)_stopCyclingComponents:(unint64_t)a3;
- (void)_updateDisplayedStrings;
- (void)_updateForLockInfo:(id)a3;
- (void)_updateLanguageFromSubscriptionDataSource:(int64_t)a3;
- (void)_updateLanguageFromTelephony;
- (void)_updateStringOrderingForLanguageChange;
- (void)_updateWifiPrimaryLanguageFromDiscoveredCountryCodes:(id)a3;
- (void)aggregateAppearance:(id)a3;
- (void)aggregateBehavior:(id)a3;
- (void)animationWillBeginForLanguage:(id)a3 animationDuration:(double)a4;
- (void)dealloc;
- (void)loadView;
- (void)subscriptionInfoDidChangeForStateProvider:(id)a3 slot:(int64_t)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SBDashBoardSetupViewController

- (SBDashBoardSetupViewController)initWithCoverSheetViewController:(id)a3
{
  v4 = a3;
  v5 = +[SBTelephonyManager sharedTelephonyManager];
  v6 = [(SBDashBoardSetupViewController *)self initWithCoverSheetViewController:v4 telephonyManager:v5];

  return v6;
}

- (SBDashBoardSetupViewController)initWithCoverSheetViewController:(id)a3 telephonyManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28.receiver = self;
  v28.super_class = SBDashBoardSetupViewController;
  v8 = [(SBDashBoardSetupViewController *)&v28 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.springboard.fetchappleaccount", v9);
    queue = v8->_queue;
    v8->_queue = v10;

    v12 = +[SBSetupManager sharedInstance];
    setupManager = v8->_setupManager;
    v8->_setupManager = v12;

    objc_storeWeak(&v8->_coverSheetViewController, v6);
    objc_storeStrong(&v8->_telephonyManager, a4);
    [(SBDashBoardSetupViewController *)v8 _updateStringOrderingForLanguageChange];
    v8->_customDelayDuration = 1.5;
    v14 = [MEMORY[0x277D29520] sharedInstance];
    v27 = 0;
    LOBYTE(v9) = [v14 needOwnershipWarning:&v27];
    v15 = v27;
    v8->_isStoreRestricted = v9;

    storeRestrictedStrings = v8->_storeRestrictedStrings;
    v8->_storeRestrictedStrings = v15;
    v17 = v15;

    [(SBDashBoardSetupViewController *)v8 _checkIfActivationLocked];
    v18 = [(SBDashBoardSetupViewController *)v8 setupView];
    v19 = [v18 homeAffordanceView];

    [v19 setSystemPointerInteractionEnabled:1];
    v20 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v8 action:sel__didClickHomeAffordance_];
    pointerClickGestureRecognizer = v8->_pointerClickGestureRecognizer;
    v8->_pointerClickGestureRecognizer = v20;

    [(UITapGestureRecognizer *)v8->_pointerClickGestureRecognizer setDelegate:v8];
    [v19 addGestureRecognizer:v8->_pointerClickGestureRecognizer];
    v22 = [objc_alloc(MEMORY[0x277D755A0]) initWithTarget:v8 action:sel__handleHoverEvent_];
    hoverGestureRecognizer = v8->_hoverGestureRecognizer;
    v8->_hoverGestureRecognizer = v22;

    v24 = [(SBDashBoardSetupViewController *)v8 view];
    [v24 addGestureRecognizer:v8->_hoverGestureRecognizer];

    v25 = [SBApp telephonyStateProvider];

    [v25 addObserver:v8];
    [(SBDashBoardSetupViewController *)v8 _updateLanguageFromTelephony];
  }

  return v8;
}

- (void)dealloc
{
  v3 = [SBApp telephonyStateProvider];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBDashBoardSetupViewController;
  [(CSCoverSheetViewControllerBase *)&v4 dealloc];
}

- (void)_didClickHomeAffordance:(id)a3
{
  v4 = [MEMORY[0x277D02B80] actionWithType:11];
  [(CSCoverSheetViewControllerBase *)self sendAction:v4];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  if (self->_pointerClickGestureRecognizer == a3)
  {
    return [a4 _isPointerTouch];
  }

  else
  {
    return 0;
  }
}

- (void)_handleHoverEvent:(id)a3
{
  v22 = a3;
  if ([v22 state] == 2)
  {
    v4 = [(SBDashBoardSetupViewController *)self setupView];
    [v22 locationInView:v4];
    v6 = v5;
    v8 = v7;

    v9 = [(SBDashBoardSetupViewController *)self setupView];
    v10 = [v9 homeAffordanceView];

    [v10 extendedFrameForPointerAnimationSuppression];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [(SBDashBoardSetupViewController *)self _componentsRelevantToPointerSuppression];
    v25.origin.x = v12;
    v25.origin.y = v14;
    v25.size.width = v16;
    v25.size.height = v18;
    v24.x = v6;
    v24.y = v8;
    v20 = CGRectContainsPoint(v25, v24);
    v21 = [(SBDashBoardSetupViewController *)self isCyclingComponents:v19];
    if (v20)
    {
      if (v21)
      {
        [(SBDashBoardSetupViewController *)self _stopCyclingComponents:v19];
      }
    }

    else if (!v21)
    {
      [(SBDashBoardSetupViewController *)self _startCyclingComponents:v19 withDelay:0.25];
    }
  }
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SBDashBoardSetupViewController;
  if (!-[CSCoverSheetViewControllerBase handleEvent:](&v11, sel_handleEvent_, v4) || ([v4 isConsumable] & 1) == 0)
  {
    v6 = [v4 type];
    v5 = 0;
    if (v6 > 23)
    {
      if (v6 == 24)
      {
        if (!self->_suppressingWallpaperForCursiveTextAnimation || ![(SBDashBoardSetupViewController *)self _canShowSolariumCursiveAnimation])
        {
          [(SBDashBoardSetupViewController *)self _makeSetupAccessoryViewsVisible:1 animated:1 delay:0.0];
        }

        if (self->_solariumCursiveTextLanguage)
        {
          [(SBDashBoardSetupViewController *)self _startWallpaperLoadingTimerWithDuration:0.0];
        }

        [(SBDashBoardSetupViewController *)self _startCyclingComponents:[(SBDashBoardSetupViewController *)self _componentsToStartCycling] withDelay:0.0];
        [(SBDashBoardSetupViewController *)self _checkIfActivationLocked];
      }

      else
      {
        if (v6 != 25)
        {
          goto LABEL_19;
        }

        [(SBDashBoardSetupViewController *)self _stopCyclingComponents:63];
        [(SBDashBoardSetupViewController *)self _makeSetupAccessoryViewsVisible:0 animated:0 delay:0.0];
      }
    }

    else
    {
      if (v6 != 1)
      {
        if (v6 != 8)
        {
          goto LABEL_19;
        }

        [(CSCoverSheetViewControllerBase *)self rebuildAppearance];
      }

      v7 = [(SBDashBoardSetupViewController *)self setupView];
      v8 = [(CSCoverSheetViewControllerBase *)self activeAppearance];
      v9 = [v8 legibilitySettings];
      [v7 setLegibilitySettings:v9];
    }

    v5 = 0;
    goto LABEL_19;
  }

  v5 = [v4 isConsumable];
LABEL_19:

  return v5;
}

- (void)loadView
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = SBFEffectiveHomeButtonType() == 2;
  v13 = [SBDashBoardSetupView alloc];
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetViewController);
  v15 = [WeakRetained coverSheetContext];
  v16 = [(SBDashBoardSetupView *)v13 initWithFrame:v12 usingHomeAffordance:v15 coverSheetContext:self->_isStoreRestricted isStoreRestricted:[(SBDashBoardSetupViewController *)self _isSecurityResearchDevice] isSecurityResearchDevice:v5, v7, v9, v11];

  [(SBDashBoardSetupView *)v16 setAutoresizingMask:18];
  v17 = [(SBDashBoardSetupView *)v16 infoButton];
  [v17 addTarget:self action:sel__infoButtonTapped_ forControlEvents:64];

  queue = self->_queue;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __42__SBDashBoardSetupViewController_loadView__block_invoke;
  v23 = &unk_2783A92D8;
  v24 = self;
  v25 = v16;
  v19 = v16;
  dispatch_async(queue, &v20);
  [(SBDashBoardSetupViewController *)self setView:v19, v20, v21, v22, v23, v24];
}

void __42__SBDashBoardSetupViewController_loadView__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __42__SBDashBoardSetupViewController_loadView__block_invoke_2;
  v2[3] = &unk_2783AD178;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _retrieveChildIconIfNecessaryWithCompletion:v2];
}

void __42__SBDashBoardSetupViewController_loadView__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __42__SBDashBoardSetupViewController_loadView__block_invoke_3;
    v5[3] = &unk_2783A92D8;
    v6 = v3;
    v7 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

void __42__SBDashBoardSetupViewController_loadView__block_invoke_3(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:*(a1 + 32)];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(a1 + 40) setChildIconView:v2];
  [*(a1 + 40) setChildIconVisible:1 animated:1 withDelay:0.0];
}

- (void)viewDidLoad
{
  v3 = [(SBDashBoardSetupViewController *)self view];
  [(CSCoverSheetViewControllerBase *)self registerView:v3 forRole:2];

  if ([(SBDashBoardSetupViewController *)self _canShowSolariumCursiveAnimation])
  {
    objc_initWeak(&location, self);
    v4 = [(SBDashBoardSetupViewController *)self setupView];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__SBDashBoardSetupViewController_viewDidLoad__block_invoke;
    v6[3] = &unk_2783AC358;
    objc_copyWeak(&v7, &location);
    [v4 prepareSolariumCursiveTextViewWithDelegate:self completion:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  [(SBDashBoardSetupViewController *)self setOverrideUserInterfaceStyle:1];
  v5.receiver = self;
  v5.super_class = SBDashBoardSetupViewController;
  [(CSCoverSheetViewControllerBase *)&v5 viewDidLoad];
}

void __45__SBDashBoardSetupViewController_viewDidLoad__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setSuppressingWallpaperForCursiveTextAnimation:a2 ^ 1u];
  v3 = 18.0;
  if (a2)
  {
    v3 = 0.5;
  }

  [WeakRetained _startWallpaperLoadingTimerWithDuration:v3];
}

- (void)_setSuppressingWallpaperForCursiveTextAnimation:(BOOL)a3
{
  v3 = a3;
  if (self->_suppressingWallpaperForCursiveTextAnimation == a3)
  {
    if (!a3 && !self->_isCyclingComponents)
    {
      customDelayDuration = self->_customDelayDuration;

      [(SBDashBoardSetupViewController *)self _makeSetupAccessoryViewsVisible:1 animated:1 delay:customDelayDuration];
    }
  }

  else
  {
    v5 = [(SBDashBoardSetupViewController *)self setupView];
    [v5 setSuppressingAllElements:v3];

    self->_suppressingWallpaperForCursiveTextAnimation = v3;
    [(CSCoverSheetViewControllerBase *)self rebuildBehavior];

    [(CSCoverSheetViewControllerBase *)self updateAppearanceForController:self];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBDashBoardSetupViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillAppear:a3];
  [(SBDashBoardSetupViewController *)self _startWifiScan];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SBDashBoardSetupViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewDidAppear:a3];
  if ([(SBDashBoardSetupViewController *)self _canShowSolariumCursiveAnimation])
  {
    suppressingWallpaperForCursiveTextAnimation = self->_suppressingWallpaperForCursiveTextAnimation;
    [(SBDashBoardSetupViewController *)self _startCyclingComponents:[(SBDashBoardSetupViewController *)self _componentsToStartCycling] withDelay:0.5];
    if (suppressingWallpaperForCursiveTextAnimation)
    {
      goto LABEL_6;
    }
  }

  else
  {
    [(SBDashBoardSetupViewController *)self _startCyclingComponents:[(SBDashBoardSetupViewController *)self _componentsToStartCycling] withDelay:0.5];
  }

  [(SBDashBoardSetupViewController *)self _makeSetupAccessoryViewsVisible:1 animated:1 delay:0.5];
LABEL_6:
  v5 = [MEMORY[0x277D02B80] actionWithType:3];
  [(CSCoverSheetViewControllerBase *)self sendAction:v5];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBDashBoardSetupViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillDisappear:a3];
  [(SBDashBoardSetupViewController *)self _stopCyclingComponents:6];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBDashBoardSetupViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidDisappear:a3];
  [(SBDashBoardSetupViewController *)self _stopCyclingComponents:63];
  [(SBDashBoardSetupViewController *)self _makeSetupAccessoryViewsVisible:0 animated:0 delay:0.0];
  [(SBDashBoardSetupViewController *)self _cancelWifiScan];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = SBDashBoardSetupViewController;
  [(CSCoverSheetViewControllerBase *)&v10 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  if (v7)
  {
    [v7 targetTransform];
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
  }

  if (!CGAffineTransformIsIdentity(&v9))
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __85__SBDashBoardSetupViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v8[3] = &unk_2783A9488;
    v8[4] = self;
    [v7 animateAlongsideTransition:v8 completion:0];
  }
}

void __85__SBDashBoardSetupViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) setupView];
  [v2 setOrientation:{objc_msgSend(*(a1 + 32), "interfaceOrientation")}];
}

- (void)_retrieveChildIconIfNecessaryWithCompletion:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D4DA68] current];
  v5 = [v4 isChild];
  v6 = [v5 BOOLValue];

  v7 = SBLogDashBoard();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "is a child, loading account", buf, 2u);
    }

    v9 = [MEMORY[0x277CB8F48] defaultStore];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __78__SBDashBoardSetupViewController__retrieveChildIconIfNecessaryWithCompletion___block_invoke;
    v10[3] = &unk_2783AD1C8;
    v11 = v3;
    [v9 aa_primaryAppleAccountWithCompletion:v10];
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "not a child, bailing", buf, 2u);
    }

    if (v3)
    {
      (*(v3 + 2))(v3, 0);
    }
  }
}

void __78__SBDashBoardSetupViewController__retrieveChildIconIfNecessaryWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = SBLogDashBoard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __78__SBDashBoardSetupViewController__retrieveChildIconIfNecessaryWithCompletion___block_invoke_cold_1();
    }

LABEL_4:

    (*(*(a1 + 32) + 16))();
    goto LABEL_9;
  }

  v8 = [v5 appleID];

  if (!v8)
  {
    v7 = SBLogDashBoard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __78__SBDashBoardSetupViewController__retrieveChildIconIfNecessaryWithCompletion___block_invoke_cold_2(v7);
    }

    goto LABEL_4;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v9 = getAAUIProfilePictureStoreClass_softClass;
  v18 = getAAUIProfilePictureStoreClass_softClass;
  if (!getAAUIProfilePictureStoreClass_softClass)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __getAAUIProfilePictureStoreClass_block_invoke;
    v14[3] = &unk_2783A9718;
    v14[4] = &v15;
    __getAAUIProfilePictureStoreClass_block_invoke(v14);
    v9 = v16[3];
  }

  v10 = v9;
  _Block_object_dispose(&v15, 8);
  v11 = objc_alloc_init(v9);
  [v11 setPictureDiameter:95.0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__SBDashBoardSetupViewController__retrieveChildIconIfNecessaryWithCompletion___block_invoke_2;
  v12[3] = &unk_2783AD1A0;
  v13 = *(a1 + 32);
  [v11 profilePictureForAccountOwnerWithCompletion:v12];

LABEL_9:
}

void __78__SBDashBoardSetupViewController__retrieveChildIconIfNecessaryWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = SBLogDashBoard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __78__SBDashBoardSetupViewController__retrieveChildIconIfNecessaryWithCompletion___block_invoke_2_cold_1();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)aggregateAppearance:(id)a3
{
  v4 = a3;
  v58.receiver = self;
  v58.super_class = SBDashBoardSetupViewController;
  [(CSCoverSheetViewControllerBase *)&v58 aggregateAppearance:v4];
  v5 = MEMORY[0x277CBEB98];
  v6 = [MEMORY[0x277D02BC8] wallpaper];
  v7 = [v6 hidden:1];
  v8 = [v5 setWithObject:v7];
  [v4 setComponents:v8];

  v9 = [MEMORY[0x277D02BC8] homeAffordance];
  v10 = [v9 priority:80];
  v11 = [(CSCoverSheetViewControllerBase *)self appearanceIdentifier];
  v12 = [v10 identifier:v11];
  v13 = [v12 hidden:1];
  [v4 addComponent:v13];

  v14 = [MEMORY[0x277D02BC8] dateView];
  v15 = [v14 priority:80];
  v16 = [v15 hidden:1];
  [v4 addComponent:v16];

  v17 = [MEMORY[0x277D02BC8] complicationContainer];
  v18 = [v17 priority:80];
  v19 = [v18 hidden:1];
  [v4 addComponent:v19];

  v20 = [MEMORY[0x277D02BC8] footerCallToActionLabel];
  v21 = [v20 priority:80];
  v22 = [v21 hidden:1];
  [v4 addComponent:v22];

  v23 = [MEMORY[0x277D02BC8] quickActions];
  v24 = [v23 priority:80];
  v25 = [v24 hidden:1];
  [v4 addComponent:v25];

  if (self->_activationInfoViewController)
  {
    [(SBDashBoardSetupViewController *)self _canShowSolariumCursiveAnimation];
  }

  else
  {
    regulatoryInfoViewController = self->_regulatoryInfoViewController;
    if ([(SBDashBoardSetupViewController *)self _canShowSolariumCursiveAnimation]&& !regulatoryInfoViewController)
    {
      suppressingWallpaperForCursiveTextAnimation = self->_suppressingWallpaperForCursiveTextAnimation;
      v43 = objc_opt_new();
      v44 = [v43 priority:80];
      v45 = v44;
      if (suppressingWallpaperForCursiveTextAnimation)
      {
        v46 = [MEMORY[0x277D75348] blackColor];
        v47 = [v45 color:v46];
        [v4 addComponent:v47];

        v48 = objc_opt_new();
        v49 = [v48 priority:80];
        v30 = 1;
        v50 = [v49 hidden:1];
        [v4 addComponent:v50];

        v26 = objc_opt_new();
        v51 = [v26 priority:80];
        v52 = [v51 hidden:1];
        [v4 addComponent:v52];
      }

      else
      {
        v55 = [v44 style:&unk_283370178];
        [v4 addComponent:v55];

        v56 = +[SBWallpaperController sharedInstance];
        v26 = [v56 averageColorForVariant:0];

        [v26 _luminance];
        v30 = v57 <= 0.75;
      }

      goto LABEL_6;
    }
  }

  if (self->_isStoreRestricted || self->_regulatoryInfoViewController)
  {
    v26 = objc_opt_new();
    v27 = [v26 priority:80];
    v28 = [MEMORY[0x277D75348] whiteColor];
    v29 = [v27 color:v28];
    [v4 addComponent:v29];

    v30 = 0;
  }

  else
  {
    v26 = objc_opt_new();
    v53 = [v26 priority:80];
    v54 = [v53 style:&unk_283370190];
    [v4 addComponent:v54];

    v30 = 1;
  }

LABEL_6:

  if (self->_isActivationLocked && !BYSetupAssistantHasCompletedInitialRun() || self->_isStoreRestricted)
  {
    v31 = [MEMORY[0x277D02BC8] proudLock];
    v32 = [v31 priority:80];
    v33 = [v32 hidden:1];
    [v4 addComponent:v33];
  }

  v34 = objc_alloc(MEMORY[0x277D760A8]);
  if (v30)
  {
    v35 = [MEMORY[0x277D75348] whiteColor];
    v36 = 1;
  }

  else
  {
    v35 = [MEMORY[0x277D75348] blackColor];
    v36 = 2;
  }

  v37 = [v34 initWithStyle:v36 contentColor:v35];
  [v4 setLegibilitySettings:v37];

  v38 = objc_opt_new();
  v39 = [v38 priority:80];
  v40 = [v39 shouldRenderInline:1];
  [v4 addComponent:v40];
}

- (void)aggregateBehavior:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SBDashBoardSetupViewController;
  [(CSCoverSheetViewControllerBase *)&v7 aggregateBehavior:v4];
  regulatoryInfoViewController = self->_regulatoryInfoViewController;
  if (*&self->_activationInfoViewController == 0)
  {
    v6 = 14;
  }

  else
  {
    v6 = 12;
  }

  [v4 setIdleTimerDuration:v6];
  [v4 setIdleTimerMode:2];
  [v4 setIdleWarnMode:1];
  [v4 setScrollingStrategy:3];
  if (regulatoryInfoViewController || self->_isStoreRestricted)
  {
    [v4 addRestrictedCapabilities:4152];
  }
}

- (BOOL)_canShowSolariumCursiveAnimation
{
  if (+[SBSolariumCursiveTextAvailability isFeatureEnabled])
  {
    if (self->_isActivationLocked)
    {
      v3 = SBLogDashBoard();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 0;
        v4 = "[Solarium Cursive Check] Activation locked";
        v5 = &v9;
LABEL_7:
        _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
      }
    }

    else
    {
      if (self->_isStoreRestricted)
      {
        v3 = SBLogDashBoard();
        if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_8;
        }

        v8 = 0;
        v4 = "[Solarium Cursive Check] In Store Mode (Do Not Buy)";
        v5 = &v8;
        goto LABEL_7;
      }

      if (![(SBDashBoardSetupViewController *)self _isSecurityResearchDevice])
      {
        return 1;
      }

      v3 = SBLogDashBoard();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 0;
        v4 = "[Solarium Cursive Check] Feature not enabled";
        v5 = &v7;
        goto LABEL_7;
      }
    }
  }

  else
  {
    v3 = SBLogDashBoard();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "[Solarium Cursive Check] Feature not enabled";
      v5 = buf;
      goto LABEL_7;
    }
  }

LABEL_8:

  return 0;
}

- (void)_startWallpaperLoadingTimerWithDuration:(double)a3
{
  if (![(SBDashBoardSetupViewController *)self _canShowSolariumCursiveAnimation])
  {
    v7 = SBLogDashBoard();
    if (!os_log_type_enabled(&v7->super.super.super.super, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v10 = "Bailed on Bookend presentation";
LABEL_9:
    _os_log_impl(&dword_21ED4E000, &v7->super.super.super.super, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
    goto LABEL_10;
  }

  cursiveTextAnimationApproximationTimer = self->_cursiveTextAnimationApproximationTimer;
  if (cursiveTextAnimationApproximationTimer && ![(NSTimer *)cursiveTextAnimationApproximationTimer isValid])
  {
    v7 = SBLogDashBoard();
    if (!os_log_type_enabled(&v7->super.super.super.super, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v10 = "Another Bookend Timer is already running";
    goto LABEL_9;
  }

  v6 = MEMORY[0x277CBEBB8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__SBDashBoardSetupViewController__startWallpaperLoadingTimerWithDuration___block_invoke;
  v11[3] = &unk_2783AD1F0;
  v11[4] = self;
  v7 = self;
  v8 = [v6 scheduledTimerWithTimeInterval:0 repeats:v11 block:a3];
  v9 = self->_cursiveTextAnimationApproximationTimer;
  self->_cursiveTextAnimationApproximationTimer = v8;

LABEL_10:
}

void __74__SBDashBoardSetupViewController__startWallpaperLoadingTimerWithDuration___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = v1;
    v3 = SBLogDashBoard();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Bookend Timer expired; force starting UI", v4, 2u);
    }

    [v2 _invalidateWallpaperLoadingTimerAndShowUIIfNeeded];
    [v2 _startCyclingComponents:objc_msgSend(v2 withDelay:{"_componentsToStartCycling"), 0.0}];
  }
}

- (void)_invalidateWallpaperLoadingTimerAndShowUIIfNeeded
{
  if (self->_cursiveTextAnimationApproximationTimer)
  {
    v3 = SBLogDashBoard();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating Bookend Timer", v5, 2u);
    }

    [(NSTimer *)self->_cursiveTextAnimationApproximationTimer invalidate];
    cursiveTextAnimationApproximationTimer = self->_cursiveTextAnimationApproximationTimer;
    self->_cursiveTextAnimationApproximationTimer = 0;

    [(SBDashBoardSetupViewController *)self _setSuppressingWallpaperForCursiveTextAnimation:0];
  }
}

- (void)_startCyclingComponents:(unint64_t)a3 withDelay:(double)a4
{
  v4 = self->_componentsToCycle | a3;
  self->_componentsToCycle = v4;
  if (!self->_isCyclingComponents && v4 && ![(NSTimer *)self->_cycleStartTimer isValid])
  {
    [(SBDashBoardSetupViewController *)self _resetDisplayedLocalizedStringsImmediately:0];
    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __68__SBDashBoardSetupViewController__startCyclingComponents_withDelay___block_invoke;
    v15[3] = &unk_2783A8C68;
    objc_copyWeak(&v16, &location);
    v7 = MEMORY[0x223D6F7F0](v15);
    v8 = v7;
    if (a4 <= 0.0)
    {
      (*(v7 + 16))(v7);
    }

    else
    {
      v9 = MEMORY[0x277CBEBB8];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __68__SBDashBoardSetupViewController__startCyclingComponents_withDelay___block_invoke_2;
      v12[3] = &unk_2783AD218;
      objc_copyWeak(&v14, &location);
      v13 = v8;
      v10 = [v9 scheduledTimerWithTimeInterval:0 repeats:v12 block:a4];
      cycleStartTimer = self->_cycleStartTimer;
      self->_cycleStartTimer = v10;

      objc_destroyWeak(&v14);
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __68__SBDashBoardSetupViewController__startCyclingComponents_withDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained _isRunningBookendAnimation])
  {
    v1 = [WeakRetained setupView];
    [v1 animateComponents:1 toActive:1 withCompletion:0];
  }

  else
  {
    [WeakRetained _animateComponentsForNewCycle];
  }
}

void __68__SBDashBoardSetupViewController__startCyclingComponents_withDelay___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained[143] invalidate];
    v3 = v4[143];
    v4[143] = 0;

    (*(*(a1 + 32) + 16))();
    WeakRetained = v4;
  }
}

- (BOOL)_canCycleAnimationComponents
{
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetViewController);
  v4 = [WeakRetained isInScreenOffMode];

  v5 = [(SBDashBoardSetupViewController *)self view];
  v6 = [v5 window];

  if ([(SBDashBoardSetupViewController *)self _appearState]== 2)
  {
    return (v6 != 0) & ~v4;
  }

  else
  {
    return 0;
  }
}

- (BOOL)_isRunningBookendAnimation
{
  v16 = *MEMORY[0x277D85DE8];
  solariumCursiveTextLanguage = self->_solariumCursiveTextLanguage;
  cursiveTextAnimationApproximationTimer = self->_cursiveTextAnimationApproximationTimer;
  suppressingWallpaperForCursiveTextAnimation = self->_suppressingWallpaperForCursiveTextAnimation;
  v5 = SBLogDashBoard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109632;
    v11[1] = solariumCursiveTextLanguage != 0;
    v12 = 1024;
    v13 = cursiveTextAnimationApproximationTimer != 0;
    v14 = 1024;
    v15 = suppressingWallpaperForCursiveTextAnimation;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[Bookend] Info: Language: %d, Timer: %d, Suppressing UI: %d", v11, 0x14u);
  }

  v6 = cursiveTextAnimationApproximationTimer != 0;

  v7 = +[SBSolariumCursiveTextAvailability isFeatureEnabled];
  v8 = !v7;
  if (solariumCursiveTextLanguage)
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6 || suppressingWallpaperForCursiveTextAnimation;
  }

  return v9 & 1;
}

- (void)_animateComponentsForNewCycle
{
  if ([(SBDashBoardSetupViewController *)self _canShowSolariumCursiveAnimation])
  {
    if (self->_suppressingWallpaperForCursiveTextAnimation)
    {
      v3 = 0;
    }

    else
    {
      componentsToCycle = self->_componentsToCycle;
      v5 = componentsToCycle | 1;
      v6 = componentsToCycle & 0xFFFFFFFFFFFFFFFELL;
      if (self->_solariumCursiveTextLanguage)
      {
        v3 = v6;
      }

      else
      {
        v3 = v5;
      }
    }
  }

  else
  {
    v3 = self->_componentsToCycle;
  }

  v7 = [(SBDashBoardSetupViewController *)self _canCycleAnimationComponents];
  if (v3)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  self->_isCyclingComponents = v8;
  if (v8)
  {
    objc_initWeak(&location, self);
    [(SBDashBoardSetupViewController *)self _updateDisplayedStrings];
    v9 = [(SBDashBoardSetupViewController *)self setupView];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__SBDashBoardSetupViewController__animateComponentsForNewCycle__block_invoke;
    v10[3] = &unk_2783A8C68;
    objc_copyWeak(&v11, &location);
    [v9 animateComponents:v3 toActive:1 withCompletion:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __63__SBDashBoardSetupViewController__animateComponentsForNewCycle__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained _isRunningBookendAnimation])
  {
    v1 = WeakRetained;
    if (!WeakRetained)
    {
      goto LABEL_7;
    }

    [WeakRetained rebuildAppearance];
  }

  else
  {
    v1 = WeakRetained;
    if (!WeakRetained)
    {
      goto LABEL_7;
    }

    [WeakRetained _incrementLocalizedStringsForNewCycle];
    [WeakRetained rebuildAppearance];
    [WeakRetained _animateComponentsForNewCycle];
  }

  v1 = WeakRetained;
LABEL_7:
}

- (void)_stopCyclingComponents:(unint64_t)a3
{
  if (self->_isCyclingComponents)
  {
    if (!a3)
    {
      return;
    }

    v5 = (self->_componentsToCycle & ~a3) != 0;
    self->_componentsToCycle &= ~a3;
    self->_isCyclingComponents = v5;
    v7 = [(SBDashBoardSetupViewController *)self setupView];
    [(NSTimer *)v7 animateComponents:a3 toActive:0 withCompletion:0];
    cycleStartTimer = v7;
  }

  else
  {
    if (![(NSTimer *)self->_cycleStartTimer isValid])
    {
      return;
    }

    [(NSTimer *)self->_cycleStartTimer invalidate];
    cycleStartTimer = self->_cycleStartTimer;
    self->_cycleStartTimer = 0;
  }
}

- (void)_incrementLocalizedStringsForNewCycle
{
  v3 = self->_currentStringsIndex + 1;
  self->_currentStringsIndex = v3;
  if (v3 >= [(NSMutableArray *)self->_currentStringsOrdering count])
  {
    v4 = [(NSArray *)self->_stringsOrdering mutableCopy];
    currentStringsOrdering = self->_currentStringsOrdering;
    self->_currentStringsOrdering = v4;

    self->_currentStringsIndex = 0;
LABEL_5:
    if (!self->_shouldResetOrderingOnNextCycle)
    {
      return;
    }

    goto LABEL_6;
  }

  if (self->_currentStringsIndex <= 5)
  {
    goto LABEL_5;
  }

LABEL_6:

  [(SBDashBoardSetupViewController *)self _resetDisplayedLocalizedStringsImmediately:0];
}

- (void)_resetDisplayedLocalizedStringsImmediately:(BOOL)a3
{
  v3 = a3;
  [(NSMutableArray *)self->_currentStringsOrdering removeObjectsInRange:0, self->_currentStringsIndex];
  v7 = [(SBDashBoardSetupViewController *)self _importantLanguageIdentifiers];
  [(NSMutableArray *)self->_currentStringsOrdering removeObjectsInArray:v7];
  currentStringsOrdering = self->_currentStringsOrdering;
  v6 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(v7, "count")}];
  [(NSMutableArray *)currentStringsOrdering insertObjects:v7 atIndexes:v6];

  self->_currentStringsIndex = 0;
  if (v3)
  {
    [(SBDashBoardSetupViewController *)self _updateDisplayedStrings];
  }

  self->_shouldResetOrderingOnNextCycle = 0;
}

- (void)_updateDisplayedStrings
{
  v50[1] = *MEMORY[0x277D85DE8];
  v3 = [(SBDashBoardSetupViewController *)self setupView];
  v4 = [(SBDashBoardSetupViewController *)self _currentLanguageIdentifier];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = MEMORY[0x277CCA8D8];
  v7 = [v5 localizations];
  v50[0] = v4;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];
  v9 = [v6 preferredLocalizationsFromArray:v7 forPreferences:v8];
  v10 = [v9 firstObject];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v4;
  }

  v13 = v12;

  v14 = SBFEffectiveHomeButtonType();
  if (v14 == 2)
  {
    v15 = @"SWIPE_UP_TO_OPEN";
  }

  else
  {
    v15 = @"PRESS_HOME_TO_OPEN";
  }

  v16 = @"Press home to open";
  if (v14 == 2)
  {
    v16 = @"Swipe up to open";
  }

  v17 = v16;
  v18 = v15;
  v19 = [v5 localizedStringForKey:@"GREETING" value:@"Hello" table:@"CoverSheetCommon" localization:v13];
  v48 = v5;
  v20 = [v5 localizedStringForKey:v18 value:v17 table:@"CoverSheetCommon" localization:v13];

  v49 = v3;
  v47 = v19;
  [v3 setTitleString:v19 forLanguage:v13];
  v22 = v21;
  if (![(SBDashBoardSetupViewController *)self _canShowSolariumCursiveAnimation])
  {
    v23 = 1.5;
    if (v22 >= 1.5)
    {
      v23 = v22;
    }

    self->_customDelayDuration = v23;
  }

  [v3 setCallToActionString:v20 forLanguage:v13];
  if (self->_isStoreRestricted)
  {
    v24 = [(SBDashBoardSetupViewController *)self _applicableIdentifierForDictionary:self->_storeRestrictedStrings identifier:v4];
    v44 = [(NSDictionary *)self->_storeRestrictedStrings bs_safeDictionaryForKey:v24];
    v45 = v13;
    v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing Title for %@ -> %@", v4, v24];
    v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing Body for %@ -> %@", v4, v24];
    v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing Link for %@ -> %@", v4, v24];
    v25 = [v44 bs_safeStringForKey:*MEMORY[0x277D29540]];
    v26 = [v44 bs_safeStringForKey:*MEMORY[0x277D29530]];
    v27 = [v44 bs_safeStringForKey:*MEMORY[0x277D29538]];
    v28 = [(SBDashBoardSetupViewController *)self _displayStringForLocalizedString:v25 fallbackString:v43];
    v29 = [(SBDashBoardSetupViewController *)self _displayStringForLocalizedString:v26 fallbackString:v42];
    [(SBDashBoardSetupViewController *)self _displayStringForLocalizedString:v27 fallbackString:v41];
    v31 = v30 = v20;
    [v49 setStoreRestrictedStrings:v28 bodyString:v29 linkString:v31 forLanguage:v4];

    v20 = v30;
    v13 = v45;
  }

  if (self->_isActivationLocked)
  {
    v32 = [(SBDashBoardSetupViewController *)self _applicableIdentifierForDictionary:self->_activationLockStrings identifier:v4];
    v33 = [(NSDictionary *)self->_activationLockStrings bs_safeDictionaryForKey:v32];
    v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing Title for %@ -> %@", v4, v32];
    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing Description for %@ -> %@", v4, v32];
    v35 = [v33 bs_safeStringForKey:@"ActivationLockInfoTitle"];
    [v33 bs_safeStringForKey:@"ActivationLockInfoDescription"];
    v37 = v36 = v20;
    [(SBDashBoardSetupViewController *)self _displayStringForLocalizedString:v35 fallbackString:v46];
    v39 = v38 = v13;
    v40 = [(SBDashBoardSetupViewController *)self _displayStringForLocalizedString:v37 fallbackString:v34];
    [v49 setActivationLockWarningString:v39 detailString:v40 forLanguage:v4];

    v13 = v38;
    v20 = v36;
  }

  [v49 setNeedsLayout];
}

- (id)_displayStringForLocalizedString:(id)a3 fallbackString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  if (!v5)
  {
    v8 = SBLogDashBoard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [SBDashBoardSetupViewController _displayStringForLocalizedString:fallbackString:];
    }

    if (os_variant_has_internal_content())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  v9 = v7;

  return v7;
}

- (id)_applicableIdentifierForDictionary:(id)a3 identifier:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA8D8];
  v6 = a4;
  v7 = [a3 allKeys];
  v15[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v9 = [v5 preferredLocalizationsFromArray:v7 forPreferences:v8];

  v10 = [v9 firstObject];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  v13 = v12;

  return v12;
}

- (id)_alignedMarketingOrdering
{
  v2 = MEMORY[0x277CBEB18];
  v3 = [MEMORY[0x277CBEAF8] baseSystemLanguages];
  v4 = [v2 arrayWithArray:v3];

  v5 = SBFEffectiveHomeButtonType();
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = @"PRESS_HOME_TO_OPEN";
  if (v5 == 2)
  {
    v7 = @"SWIPE_UP_TO_OPEN";
  }

  v8 = v7;
  v9 = [v6 localizedStringForKey:v8 value:0 table:@"CoverSheetCommon" localization:@"pt-BR"];
  v10 = [v6 localizedStringForKey:v8 value:0 table:@"CoverSheetCommon" localization:@"pt-PT"];
  if (([v9 isEqualToString:v10] & 1) == 0)
  {
    v11 = [v4 count];
    if ([v4 count])
    {
      v12 = 0;
      while (1)
      {
        v13 = [v4 objectAtIndex:v12];
        v14 = [v13 isEqualToString:@"pt"];

        if (v14)
        {
          break;
        }

        if (++v12 >= [v4 count])
        {
          goto LABEL_10;
        }
      }

      v11 = v12;
    }

LABEL_10:
    [v4 insertObject:@"pt-PT" atIndex:v11 + 1];
  }

  [v4 addObject:@"zh_HK"];

  return v4;
}

- (void)_updateStringOrderingForLanguageChange
{
  v3 = [(SBDashBoardSetupViewController *)self _alignedMarketingOrdering];
  stringsOrdering = self->_stringsOrdering;
  self->_stringsOrdering = v3;

  v5 = [(NSArray *)self->_stringsOrdering mutableCopy];
  currentStringsOrdering = self->_currentStringsOrdering;
  self->_currentStringsOrdering = v5;
}

- (id)_currentStoreRestrictedStringsDictionary
{
  storeRestrictedStrings = self->_storeRestrictedStrings;
  v3 = [(SBDashBoardSetupViewController *)self _currentLanguageIdentifier];
  v4 = [(NSDictionary *)storeRestrictedStrings objectForKey:v3];

  return v4;
}

- (id)_currentActivationLockStringsDictionary
{
  activationLockStrings = self->_activationLockStrings;
  v3 = [(SBDashBoardSetupViewController *)self _currentLanguageIdentifier];
  v4 = [(NSDictionary *)activationLockStrings objectForKey:v3];

  return v4;
}

- (id)_currentLanguageIdentifier
{
  solariumCursiveTextLanguage = self->_solariumCursiveTextLanguage;
  if (solariumCursiveTextLanguage)
  {
    v3 = solariumCursiveTextLanguage;
  }

  else
  {
    v3 = [(NSMutableArray *)self->_currentStringsOrdering objectAtIndex:self->_currentStringsIndex];
  }

  return v3;
}

- (id)_importantLanguageIdentifiers
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = v3;
  if (self->_telephonyPrimaryLanguage)
  {
    [v3 addObject:?];
  }

  wifiPrimaryLanguage = self->_wifiPrimaryLanguage;
  if (wifiPrimaryLanguage && ![(NSString *)wifiPrimaryLanguage isEqualToString:self->_telephonyPrimaryLanguage])
  {
    [v4 addObject:self->_wifiPrimaryLanguage];
  }

  v6 = [MEMORY[0x277CBEAF8] _deviceLanguage];
  v7 = v6;
  if (v6 && ([v6 isEqualToString:self->_telephonyPrimaryLanguage] & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", self->_wifiPrimaryLanguage) & 1) == 0)
  {
    [v4 addObject:v7];
  }

  v8 = SBLogDashBoard();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v4 debugDescription];
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Important Languages: %{public}@", &v12, 0xCu);
  }

  if (![v4 count])
  {
    v10 = SBLogDashBoard();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "No languages determined, defaulting to en", &v12, 2u);
    }

    [v4 addObject:@"en"];
  }

  return v4;
}

- (id)_subscriptionInfoForSubscriptionDataSource:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = [(SBTelephonyManager *)self->_telephonyManager _secondarySubscriptionInfoIfEnabled];
  }

  else
  {
    if (a3)
    {
      goto LABEL_6;
    }

    v3 = [(SBTelephonyManager *)self->_telephonyManager _primarySubscriptionInfo];
  }

  a2 = v3;
LABEL_6:

  return a2;
}

- (id)_subcriptionDataSourceDescription:(int64_t)a3
{
  if (a3)
  {
    return @"Secondary Subscription Data Source";
  }

  else
  {
    return @"Primary Subscription Data Source";
  }
}

- (void)_updateLanguageFromSubscriptionDataSource:(int64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [(SBDashBoardSetupViewController *)self _subscriptionInfoForSubscriptionDataSource:?];
  v6 = [v5 lastKnownNetworkCountryCode];
  v7 = [MEMORY[0x277CBEAF8] languagesForRegion:v6 subdivision:0 withThreshold:0 filter:0];
  v8 = [(SBDashBoardSetupViewController *)self firstSupportedLanguageIdentifierInRegionalLanguageIdentifiers:v7 countryCode:v6];
  v9 = SBLogDashBoard();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(SBDashBoardSetupViewController *)self _subcriptionDataSourceDescription:a3];
    v16 = 138543618;
    v17 = v8;
    v18 = 2114;
    v19 = v10;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Supported language identifier: %{public}@, subscription data source: %{public}@", &v16, 0x16u);
  }

  if (!v8)
  {
    goto LABEL_12;
  }

  v11 = [(SBDashBoardSetupViewController *)self _importantLanguageIdentifiers];
  v12 = self->_telephonyPrimaryLanguage;
  objc_storeStrong(&self->_telephonyPrimaryLanguage, v8);
  v13 = SBLogDashBoard();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543618;
    v17 = v12;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "[Cell][Primary] Language changed from %{public}@ to %{public}@", &v16, 0x16u);
  }

  if ([(NSString *)self->_telephonyPrimaryLanguage isEqualToString:v12]|| ![(SBDashBoardSetupViewController *)self _haveImportantLanguagesChangedFrom:v11])
  {

LABEL_12:
    [(SBDashBoardSetupViewController *)self _updateStringOrderingForLanguageChange];
    goto LABEL_13;
  }

  v14 = SBLogDashBoard();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v11 firstObject];
    v16 = 138543362;
    v17 = v15;
    _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "[Cell][Primary] Updating important languages, previous best was: %{public}@", &v16, 0xCu);
  }

  [(SBDashBoardSetupViewController *)self _evaluateUpdatingLanguageForImportantLanguageChanges];
LABEL_13:
}

- (void)_updateLanguageFromTelephony
{
  [(SBDashBoardSetupViewController *)self _updateLanguageFromSubscriptionDataSource:0];
  if (!self->_telephonyPrimaryLanguage)
  {

    [(SBDashBoardSetupViewController *)self _updateLanguageFromSubscriptionDataSource:1];
  }
}

- (id)firstSupportedLanguageIdentifierInRegionalLanguageIdentifiers:(id)a3 countryCode:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(SBDashBoardSetupViewController *)self _supportedLanguageIdentifierFromRegionalLanguageIdentifier:*(*(&v17 + 1) + 8 * i) countryCode:v7, v17];
        if (v13)
        {
          v15 = v13;
          v14 = v8;
          goto LABEL_13;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = SBLogDashBoard();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = v7;
    _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "No supported languages found for country code: %{public}@", buf, 0xCu);
  }

  v15 = 0;
LABEL_13:

  return v15;
}

- (id)_supportedLanguageIdentifierFromRegionalLanguageIdentifier:(id)a3 countryCode:(id)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEAF8] languageFromLanguage:v6 byReplacingRegion:a4];
  if ([v7 length])
  {
    v8 = MEMORY[0x277CCA8D8];
    currentStringsOrdering = self->_currentStringsOrdering;
    v21[0] = v7;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v11 = [v8 preferredLocalizationsFromArray:currentStringsOrdering forPreferences:v10];
    v12 = [v11 firstObject];

    v13 = SBLogDashBoard();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543874;
      v16 = v12;
      v17 = 2114;
      v18 = v6;
      v19 = 2114;
      v20 = v7;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Supported language: %{public}@ found for identifier: %{public}@, languageWithRegion: %{public}@", &v15, 0x20u);
    }
  }

  else
  {
    v13 = SBLogDashBoard();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543618;
      v16 = v6;
      v17 = 2114;
      v18 = v7;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "No supported language found for identifier: %{public}@, languageWithRegion: %{public}@", &v15, 0x16u);
    }

    v12 = 0;
  }

  return v12;
}

- (void)_updateWifiPrimaryLanguageFromDiscoveredCountryCodes:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v4;
  v38 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (v38)
  {
    v37 = *v49;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v49 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v48 + 1) + 8 * i);
        v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v9 = [MEMORY[0x277D218D0] preferredLanguagesForRegion:v7];
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v39 = v9;
        v10 = [v9 reverseObjectEnumerator];
        v11 = [v10 countByEnumeratingWithState:&v44 objects:v57 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v45;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v45 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [(SBDashBoardSetupViewController *)self _supportedLanguageIdentifierFromRegionalLanguageIdentifier:*(*(&v44 + 1) + 8 * j) countryCode:v7];
              if (v15)
              {
                [v8 addObject:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v44 objects:v57 count:16];
          }

          while (v12);
        }

        [v5 setObject:v8 forKeyedSubscript:v7];
      }

      v38 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
    }

    while (v38);
  }

  v16 = SBLogDashBoard();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v53 = v5;
    _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "Preferred language identifiers for wifi discovered country codes: %{public}@", buf, 0xCu);
  }

  v17 = [v5 allValues];
  v18 = [v17 count];

  if (v18)
  {
    do
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v19 = obj;
      v20 = [v19 countByEnumeratingWithState:&v40 objects:v56 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v41;
        do
        {
          for (k = 0; k != v21; ++k)
          {
            if (*v41 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v40 + 1) + 8 * k);
            v25 = [v5 objectForKeyedSubscript:v24];
            v26 = [v25 lastObject];
            if (v26)
            {
              if (([v35 containsObject:v26] & 1) == 0)
              {
                [v35 addObject:v26];
              }

              [v25 removeLastObject];
            }

            if (![v25 count])
            {
              [v5 setObject:0 forKeyedSubscript:v24];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v40 objects:v56 count:16];
        }

        while (v21);
      }

      v27 = [v5 allValues];
      v28 = [v27 count];
    }

    while (v28);
  }

  if ([v35 count])
  {
    v29 = [(SBDashBoardSetupViewController *)self _importantLanguageIdentifiers];
    v30 = [v29 firstObject];
    v31 = [v35 firstObject];
    v32 = self->_wifiPrimaryLanguage;
    objc_storeStrong(&self->_wifiPrimaryLanguage, v31);
    v33 = SBLogDashBoard();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v53 = v32;
      v54 = 2114;
      v55 = v31;
      _os_log_impl(&dword_21ED4E000, v33, OS_LOG_TYPE_DEFAULT, "[WiFi] Language changed from %{public}@ to %{public}@", buf, 0x16u);
    }

    if (![(NSString *)self->_wifiPrimaryLanguage isEqualToString:v32]&& [(SBDashBoardSetupViewController *)self _haveImportantLanguagesChangedFrom:v29])
    {
      v34 = SBLogDashBoard();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v53 = v30;
        _os_log_impl(&dword_21ED4E000, v34, OS_LOG_TYPE_DEFAULT, "[WiFi] Updating important languages, previous best was: %{public}@", buf, 0xCu);
      }

      [(SBDashBoardSetupViewController *)self _evaluateUpdatingLanguageForImportantLanguageChanges];
    }
  }
}

- (BOOL)_haveImportantLanguagesChangedFrom:(id)a3
{
  v4 = a3;
  v5 = [(SBDashBoardSetupViewController *)self _importantLanguageIdentifiers];
  v6 = [v4 count];
  if (v6 == [v5 count])
  {
    if ([v5 count])
    {
      v7 = 0;
      do
      {
        v8 = [v4 objectAtIndex:v7];
        v9 = [v5 objectAtIndex:v7];
        v10 = [v8 isEqualToString:v9];

        if ((v10 & 1) == 0)
        {
          break;
        }

        ++v7;
      }

      while (v7 < [v5 count]);
      v11 = v10 ^ 1;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)_evaluateUpdatingLanguageForImportantLanguageChanges
{
  if (self->_isCyclingComponents)
  {
    self->_shouldResetOrderingOnNextCycle = 1;
  }

  else
  {
    [(SBDashBoardSetupViewController *)self _resetDisplayedLocalizedStringsImmediately:1];
  }
}

- (void)_checkIfActivationLocked
{
  v3 = [MEMORY[0x277D08F78] sharedInstance];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__SBDashBoardSetupViewController__checkIfActivationLocked__block_invoke;
  v4[3] = &unk_2783AD240;
  v4[4] = self;
  [v3 activationLockInfoFromDeviceWithCompletion:v4];
}

void __58__SBDashBoardSetupViewController__checkIfActivationLocked__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = SBLogDashBoard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __58__SBDashBoardSetupViewController__checkIfActivationLocked__block_invoke_cold_1(v6, v7);
    }
  }

  else
  {
    if (![v5 isRestrictedSKU])
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __58__SBDashBoardSetupViewController__checkIfActivationLocked__block_invoke_161;
      v8[3] = &unk_2783A92D8;
      v8[4] = *(a1 + 32);
      v9 = v5;
      dispatch_async(MEMORY[0x277D85CD0], v8);

      goto LABEL_5;
    }

    v7 = SBLogDashBoard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[Activation Lock] Info available, but SKU is restricted.", buf, 2u);
    }
  }

LABEL_5:
}

- (void)_updateForLockInfo:(id)a3
{
  isActivationLocked = self->_isActivationLocked;
  v5 = a3;
  self->_isActivationLocked = [v5 isActivationLocked];
  v6 = [v5 maskedAppleID];
  v7 = [v6 copy];
  maskedAppleID = self->_maskedAppleID;
  self->_maskedAppleID = v7;

  v9 = [v5 localeStrings];

  v10 = [v9 copy];
  activationLockStrings = self->_activationLockStrings;
  self->_activationLockStrings = v10;

  if (isActivationLocked != self->_isActivationLocked)
  {
    v12 = [(SBDashBoardSetupViewController *)self setupView];
    [v12 setActivationLocked:self->_isActivationLocked];

    [(CSCoverSheetViewControllerBase *)self updateAppearanceForController:self];
    if (self->_isActivationLocked)
    {
      [(SBDashBoardSetupViewController *)self _invalidateWallpaperLoadingTimerAndShowUIIfNeeded];
      [(SBDashBoardSetupViewController *)self _stopCyclingComponents:63];
      v13 = [(SBDashBoardSetupViewController *)self _componentsToStartCycling];

      [(SBDashBoardSetupViewController *)self _startCyclingComponents:v13 withDelay:0.0];
    }
  }
}

- (unint64_t)_componentsToStartCycling
{
  if ([(SBDashBoardSetupViewController *)self _canShowSolariumCursiveAnimation])
  {
    if (!self->_solariumCursiveTextLanguage && (cursiveTextAnimationApproximationTimer = self->_cursiveTextAnimationApproximationTimer) != 0 && [(NSTimer *)cursiveTextAnimationApproximationTimer isValid])
    {
      v3 = 1;
    }

    else
    {
      v3 = 63;
      if (self->_suppressingWallpaperForCursiveTextAnimation)
      {
        v3 = 1;
      }
    }
  }

  else
  {
    v3 = 63;
  }

  if (self->_isActivationLocked)
  {
    return v3;
  }

  else
  {
    return v3 & 0x1F;
  }
}

- (void)_infoButtonTapped:(id)a3
{
  v4 = a3;
  v5 = [(SBDashBoardSetupViewController *)self setupView];
  objc_initWeak(&location, self);
  activationInfoViewController = self->_activationInfoViewController;
  if (*&self->_activationInfoViewController == 0)
  {
    v9 = objc_alloc_init(SBActivationInfoViewController);
    v10 = [(CSCoverSheetViewControllerBase *)self legibilitySettings];
    [(SBActivationInfoViewController *)v9 setLegibilitySettings:v10];

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __52__SBDashBoardSetupViewController__infoButtonTapped___block_invoke;
    v22[3] = &unk_2783AD268;
    objc_copyWeak(&v26, &location);
    v11 = v9;
    v23 = v11;
    v24 = v5;
    v25 = self;
    [(SBDashBoardSetupViewController *)self bs_addChildViewController:v11 animated:0 transitionBlock:v22];

    objc_destroyWeak(&v26);
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __52__SBDashBoardSetupViewController__infoButtonTapped___block_invoke_2;
    v18[3] = &unk_2783AD290;
    objc_copyWeak(&v21, &location);
    v7 = v5;
    v19 = v7;
    v20 = self;
    [(SBDashBoardSetupViewController *)self bs_removeChildViewController:activationInfoViewController animated:0 transitionBlock:v18];
    regulatoryInfoViewController = self->_regulatoryInfoViewController;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __52__SBDashBoardSetupViewController__infoButtonTapped___block_invoke_3;
    v15 = &unk_2783AD2B8;
    v16 = v7;
    objc_copyWeak(&v17, &location);
    [(SBDashBoardSetupViewController *)self bs_removeChildViewController:regulatoryInfoViewController animated:0 transitionBlock:&v12];
    objc_destroyWeak(&v17);

    objc_destroyWeak(&v21);
  }

  [(CSCoverSheetViewControllerBase *)self rebuildBehavior:v12];
  [(CSCoverSheetViewControllerBase *)self updateAppearanceForController:self];
  [v5 setNeedsLayout];
  objc_destroyWeak(&location);
}

void __52__SBDashBoardSetupViewController__infoButtonTapped___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 135, *(a1 + 32));
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) view];
  [v4 setActivationInfoView:v5];

  v6 = [*(a1 + 32) regulatoryInfoButton];
  [v6 addTarget:*(a1 + 48) action:sel__regulatoryInfoButtonTapped_ forControlEvents:64];

  v7 = [*(a1 + 32) secureIntentButton];
  [v7 addTarget:*(a1 + 48) action:sel__shareIdentityButtonTapped_ forControlEvents:64];

  v3[2](v3);
}

void __52__SBDashBoardSetupViewController__infoButtonTapped___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [*(a1 + 32) setActivationInfoView:0];
  if (WeakRetained)
  {
    v4 = [WeakRetained[135] regulatoryInfoButton];
    [v4 removeTarget:*(a1 + 40) action:0 forControlEvents:64];

    v5 = [WeakRetained[135] secureIntentButton];
    [v5 removeTarget:*(a1 + 40) action:0 forControlEvents:64];

    v6 = WeakRetained[135];
    WeakRetained[135] = 0;

    [WeakRetained rebuildBehavior];
    [WeakRetained updateAppearanceForController:WeakRetained];
    v7 = [WeakRetained setupView];
    [v7 setNeedsLayout];
  }

  v8[2]();
}

void __52__SBDashBoardSetupViewController__infoButtonTapped___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  [*(a1 + 32) setRegulatoryInfoView:0];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 136);
    *(WeakRetained + 136) = 0;

    [v4 rebuildBehavior];
    [v4 updateAppearanceForController:v4];
    v6 = [v4 setupView];
    [v6 setNeedsLayout];
  }

  v7[2]();
}

- (void)_regulatoryInfoButtonTapped:(id)a3
{
  v4 = a3;
  v5 = self->_regulatoryInfoViewController;
  v6 = [(SBDashBoardSetupViewController *)self setupView];
  if (!v5)
  {
    v7 = [[SBSetupRegulatoryInfoViewController alloc] initWithNibName:0 bundle:0];
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__SBDashBoardSetupViewController__regulatoryInfoButtonTapped___block_invoke;
    v8[3] = &unk_2783AD290;
    objc_copyWeak(&v11, &location);
    v5 = v7;
    v9 = v5;
    v10 = v6;
    [(SBDashBoardSetupViewController *)self bs_addChildViewController:v5 animated:0 transitionBlock:v8];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __62__SBDashBoardSetupViewController__regulatoryInfoButtonTapped___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 136, *(a1 + 32));
    [WeakRetained rebuildBehavior];
    [WeakRetained updateAppearanceForController:WeakRetained];
    v4 = [WeakRetained setupView];
    [v4 setNeedsLayout];
  }

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) view];
  [v5 setRegulatoryInfoView:v6];

  v3[2](v3);
}

- (void)_shareIdentityButtonTapped:(id)a3
{
  v8 = [objc_alloc(MEMORY[0x277D66BD8]) initWithServiceName:@"com.apple.SIMSetupUIService" viewControllerClassName:@"TSSIMSetupSupportViewController"];
  v4 = objc_alloc_init(MEMORY[0x277D66BD0]);
  [v4 setUserInfo:&unk_283372738];
  v5 = [MEMORY[0x277D66BF0] newHandleWithDefinition:v8 configurationContext:v4];
  remoteAlertHandle = self->_remoteAlertHandle;
  self->_remoteAlertHandle = v5;

  v7 = objc_alloc_init(MEMORY[0x277D66BC0]);
  [v7 setReason:@"NFC Device in Store Sign Up Flow"];
  [(SBSRemoteAlertHandle *)self->_remoteAlertHandle activateWithContext:v7];
}

- (void)_makeSetupAccessoryViewsVisible:(BOOL)a3 animated:(BOOL)a4 delay:(double)a5
{
  v6 = a4;
  v7 = a3;
  v9 = [(SBDashBoardSetupViewController *)self setupView];
  [v9 setInfoButtonVisible:v7 animated:v6 withDelay:a5];

  v10 = [(SBDashBoardSetupViewController *)self setupView];
  [v10 setChildIconVisible:v7 animated:v6 withDelay:a5];
}

- (void)_startWifiScan
{
  if (!self->_wifiScanner && !self->_wifiPrimaryLanguage)
  {
    v3 = objc_alloc_init(SBSetupWiFiScanner);
    wifiScanner = self->_wifiScanner;
    self->_wifiScanner = v3;

    v5 = self->_wifiScanner;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__SBDashBoardSetupViewController__startWifiScan__block_invoke;
    v6[3] = &unk_2783AD2E0;
    v6[4] = self;
    [(SBSetupWiFiScanner *)v5 beginScanningWithCompletionHandler:v6];
  }
}

void __48__SBDashBoardSetupViewController__startWifiScan__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__SBDashBoardSetupViewController__startWifiScan__block_invoke_2;
  v5[3] = &unk_2783A92D8;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

uint64_t __48__SBDashBoardSetupViewController__startWifiScan__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1064);
  *(v2 + 1064) = 0;

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 _updateWifiPrimaryLanguageFromDiscoveredCountryCodes:v5];
}

- (void)_cancelWifiScan
{
  [(SBSetupWiFiScanner *)self->_wifiScanner cancel];
  wifiScanner = self->_wifiScanner;
  self->_wifiScanner = 0;
}

- (void)subscriptionInfoDidChangeForStateProvider:(id)a3 slot:(int64_t)a4
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__SBDashBoardSetupViewController_subscriptionInfoDidChangeForStateProvider_slot___block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __81__SBDashBoardSetupViewController_subscriptionInfoDidChangeForStateProvider_slot___block_invoke(uint64_t a1)
{
  v2 = SBLogDashBoard();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Subscription info changed. Updating Language...", v4, 2u);
  }

  return [*(a1 + 32) _updateLanguageFromTelephony];
}

- (void)animationWillBeginForLanguage:(id)a3 animationDuration:(double)a4
{
  objc_storeStrong(&self->_solariumCursiveTextLanguage, a3);
  self->_customDelayDuration = a4;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __92__SBDashBoardSetupViewController_Solarium__animationWillBeginForLanguage_animationDuration___block_invoke;
  v6[3] = &unk_2783A8C68;
  objc_copyWeak(&v7, &location);
  dispatch_async(MEMORY[0x277D85CD0], v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __92__SBDashBoardSetupViewController_Solarium__animationWillBeginForLanguage_animationDuration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained setupView];
    [v2 setOrientation:{objc_msgSend(v3, "interfaceOrientation")}];

    [v3 _invalidateWallpaperLoadingTimerAndShowUIIfNeeded];
    v3[154] = [v3 _componentsToStartCycling];
    [v3 _animateComponentsForNewCycle];
    WeakRetained = v3;
  }
}

void __78__SBDashBoardSetupViewController__retrieveChildIconIfNecessaryWithCompletion___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_21ED4E000, v0, OS_LOG_TYPE_ERROR, "failed to fetch apple account with error %{public}@", v1, 0xCu);
}

void __78__SBDashBoardSetupViewController__retrieveChildIconIfNecessaryWithCompletion___block_invoke_2_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_21ED4E000, v0, OS_LOG_TYPE_ERROR, "failed to fetch profile picture with error %{public}@", v1, 0xCu);
}

- (void)_displayStringForLocalizedString:fallbackString:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(&dword_21ED4E000, v0, OS_LOG_TYPE_DEBUG, "%@", v1, 0xCu);
}

void __58__SBDashBoardSetupViewController__checkIfActivationLocked__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Error getting activation lock info: %{private}@", v4, 0xCu);
}

@end