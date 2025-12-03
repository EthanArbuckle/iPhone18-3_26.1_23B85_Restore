@interface SBWallpaperController
+ (FBServiceClientAuthenticator)accessAuthenticator;
+ (SBWallpaperController)sharedInstance;
- ($1D129F7B4C980C50E70029647222EF17)currentHomescreenStyleTransitionState;
- (BOOL)_isMaglevActive;
- (BOOL)_isTraitsArbiterWallpaperActive;
- (BOOL)adaptiveTimeHonorsPreferredSalientContentRectangle;
- (BOOL)homeScreenPosterMirrorsLock;
- (BOOL)homeScreenWallpaperDimming;
- (BOOL)isWindowIgnoredForReachability:(id)reachability;
- (BOOL)posterHandlesWakeAnimation;
- (BOOL)posterHasRequestedDeviceMotionEvents;
- (BOOL)posterHidesDimmingLayer;
- (BOOL)posterWantsDefaultParallax;
- (BOOL)setWallpaperStyleTransitionState:(id *)state forPriority:(int64_t)priority forVariant:(int64_t)variant withAnimationFactory:(id)factory;
- (BOOL)updateCurrentPosterWithUpdates:(id)updates error:(id *)error;
- (BOOL)updateIrisWallpaperForStaticMode;
- (CGRect)_screenBoundsForOrientation:(int64_t)orientation;
- (CGRect)preferredSalientContentRectangle;
- (PBUIHomeVariantStyleState)currentHomeVariantStyleState;
- (PBUIIrisWallpaperPlaying)irisWallpaperPlayer;
- (PBUIWallpaperPresentingDelegate)wallpaperPresentingDelegate;
- (SBFWallpaperCoreAnalyticsLogger)wallpaperCoreAnalyticsLogger;
- (SBWallpaperController)init;
- (SBWallpaperController)initWithWallpaperConfigurationManager:(id)manager;
- (SBWallpaperController)initWithWallpaperConfigurationManager:(id)manager cachingIdentifier:(id)identifier;
- (SBWallpaperController)initWithWindowScene:(id)scene orientation:(int64_t)orientation variant:(int64_t)variant wallpaperConfigurationManager:(id)manager cachingIdentifier:(id)identifier;
- (SBWindowScene)windowScene;
- (UIGestureRecognizer)wallpaperGestureRecognizer;
- (double)effectiveReachabilityYOffset;
- (id)_controlIdentityForExtensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier kind:(id)kind;
- (id)_posterQuickActionsConfigurationFromConfigurationRequest:(id)request;
- (id)acquireDuckHomeScreenWallpaperDimAssertionWithReason:(id)reason;
- (id)activeInterfaceOrientationSourcesDescriptions;
- (id)createWallpaperFloatingViewForReason:(id)reason ignoreReplica:(BOOL)replica;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)embeddedWindowScene;
- (id)newFakeBlurViewForVariant:(int64_t)variant style:(int64_t)style transformOptions:(unint64_t)options;
- (id)scenesForBacklightSession;
- (id)setWallpaperFloatingLayerContainerView:(id)view forReason:(id)reason withAnimationFactory:(id)factory;
- (id)succinctDescription;
- (id)wallpaperView:(id)view wallpaperConfigurationIncludingValueTypes:(unint64_t)types;
- (int64_t)activeOrientationSource;
- (int64_t)defaultInterfaceOrientationForSource:(int64_t)source;
- (int64_t)wallpaperPresenter:(id)presenter requestsOrientationWithRefresh:(BOOL)refresh;
- (uint64_t)updateWallpaperAnimationWithRotation:(_OWORD *)rotation;
- (unint64_t)posterDeviceMotionMode;
- (void)_batterySaverModeChanged:(id)changed;
- (void)_fetchUserTapEventsRequestedWithCompletionHandler:(id)handler;
- (void)_ingestPrimaryWallpaperLayersSnapshotIOSurface:(id)surface floatingWallpaperLayerSnapshotIOSurface:(id)oSurface snapshotScale:(double)scale traitCollection:(id)collection withCompletion:(id)completion;
- (void)_loadLastActiveConfigurations;
- (void)_motionEffectsChanged;
- (void)_noteSignificantTimeChanged:(id)changed;
- (void)_persistLastActiveHomeScreenPosterConfiguration:(id)configuration;
- (void)_persistLastActiveLockScreenPosterConfiguration:(id)configuration;
- (void)_reloadWallpaperAndFlushCaches:(BOOL)caches completionHandler:(id)handler;
- (void)_saveWallpaperCoreAnalyticsForLocations:(int64_t)locations withConfiguration:(id)configuration;
- (void)_updateForLockScreenPosterConfiguration:(id)configuration homeScreenPosterConfiguration:(id)posterConfiguration;
- (void)_updateScreenBlanked;
- (void)activateOrientationSource:(int64_t)source;
- (void)activeActivityDidChangeForManager:(id)manager;
- (void)activeInterfaceOrientationDidChangeToOrientation:(int64_t)orientation willAnimateWithDuration:(double)duration fromOrientation:(int64_t)fromOrientation;
- (void)addReachabilityObserver:(id)observer;
- (void)addWallpaperUnlockProgressObserver:(id)observer;
- (void)availableActivitiesDidChangeForManager:(id)manager;
- (void)beginActiveVariantTransition;
- (void)deactivateOrientationSource:(int64_t)source;
- (void)dealloc;
- (void)endActiveVariantTransition;
- (void)hostDidEndDeviceMotionEventGeneration;
- (void)hostWillStartDeviceMotionEventGeneration;
- (void)noteHomeVariantStyleStateMayHaveUpdated;
- (void)orientationSource:(int64_t)source didRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)orientationSource:(int64_t)source willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)preheatWallpaperForVariant:(int64_t)variant;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
- (void)removeReachabilityObserver:(id)observer;
- (void)setExternalDisplayConfiguration:(id)configuration;
- (void)setHomeScreenWallpaperDimmed:(BOOL)dimmed;
- (void)setLockscreenOnlyWallpaperAlpha:(double)alpha;
- (void)setOrientationProvider:(id)provider forSource:(int64_t)source;
- (void)setWallpaperHidden:(BOOL)hidden variant:(int64_t)variant reason:(id)reason;
- (void)setWallpaperObscured:(BOOL)obscured;
- (void)setWindowScene:(id)scene;
- (void)triggerPosterSignificantEvent;
- (void)triggerPosterTapEvent:(id)event;
- (void)updateActiveVariantTransitionProgress:(double)progress;
- (void)updateIrisWallpaperForInteractiveMode;
- (void)updateOrientationAfterSourceChange;
- (void)updatePosterSwitcherSnapshots;
- (void)updateSalientContentRectangle:(CGRect)rectangle;
- (void)updateWallpaperAnimationWithIconFlyInTension:(double)tension friction:(double)friction;
- (void)updateWallpaperAnimationWithProgress:(double)progress;
- (void)updateWallpaperAnimationWithWakeSourceIsSwipeToUnlock:(BOOL)unlock;
- (void)updateWallpaperForLocations:(int64_t)locations wallpaperMode:(int64_t)mode withCompletion:(id)completion;
- (void)updateWallpaperForLocations:(int64_t)locations withCompletion:(id)completion;
- (void)wallpaperPresenter:(id)presenter didChangeWallpaperForLocations:(int64_t)locations withConfiguration:(id)configuration;
- (void)wallpaperPresenterDidCompleteWallpaperChange:(id)change;
- (void)wallpaperServer:(id)server fetchAdaptiveTimeBoundsForContext:(id)context timeHeight:(double)height completionHandler:(id)handler;
- (void)wallpaperServer:(id)server fetchAdaptiveTimeHeightLimitsForContext:(id)context completionHandler:(id)handler;
- (void)wallpaperServer:(id)server fetchContentCutoutBoundsForVariant:(int64_t)variant orientation:(int64_t)orientation completionHandler:(id)handler;
- (void)wallpaperServer:(id)server fetchLimitedOcclusionBoundsForOrientation:(int64_t)orientation completionHandler:(id)handler;
- (void)wallpaperServer:(id)server fetchLockScreenContentCutoutBoundsForOrientation:(int64_t)orientation completionHandler:(id)handler;
- (void)wallpaperServer:(id)server fetchLockScreenExtendedContentCutoutBoundsForOrientation:(int64_t)orientation completionHandler:(id)handler;
- (void)wallpaperServer:(id)server fetchLockScreenMaximalContentCutoutBoundsForOrientation:(int64_t)orientation completionHandler:(id)handler;
- (void)wallpaperServer:(id)server fetchLockScreenSubtitleBoundsForOrientation:(int64_t)orientation completionHandler:(id)handler;
- (void)wallpaperServer:(id)server fetchLockScreenTimeBoundsForOrientation:(int64_t)orientation completionHandler:(id)handler;
- (void)wallpaperServer:(id)server fetchObscurableBoundsForOrientation:(int64_t)orientation completionHandler:(id)handler;
- (void)wallpaperServer:(id)server fetchOriginalImageDataForVariant:(int64_t)variant completionHandler:(id)handler;
- (void)wallpaperServer:(id)server fetchOriginalVideoURLDataForVariant:(int64_t)variant completionHandler:(id)handler;
- (void)wallpaperServer:(id)server fetchSignificantEventsCounterForPosterWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)wallpaperServer:(id)server fetchThumbnailDataForVariant:(int64_t)variant completionHandler:(id)handler;
- (void)wallpaperServer:(id)server handleQuickActionConfigurationRequest:(id)request completionHandler:(id)handler;
- (void)wallpaperServer:(id)server restoreDefaultWallpaperWithCompletionHandler:(id)handler;
- (void)wallpaperServer:(id)server setWallpaperColor:(id)color darkColor:(id)darkColor forVariants:(int64_t)variants completionHandler:(id)handler;
- (void)wallpaperServer:(id)server setWallpaperColorName:(id)name forVariants:(int64_t)variants completionHandler:(id)handler;
- (void)wallpaperServer:(id)server setWallpaperGradient:(id)gradient forVariants:(int64_t)variants completionHandler:(id)handler;
- (void)wallpaperServer:(id)server setWallpaperVideoWithWallpaperMode:(id)mode cropRect:(CGRect)rect wallpaperMode:(int64_t)wallpaperMode completionHandler:(id)handler;
- (void)wallpaperServer:(id)server triggerPosterSignificantEventCompletionHandler:(id)handler;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
@end

@implementation SBWallpaperController

+ (SBWallpaperController)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SBWallpaperController_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance___once_2 != -1)
  {
    dispatch_once(&sharedInstance___once_2, block);
  }

  v2 = sharedInstance___controller;

  return v2;
}

- (void)updateOrientationAfterSourceChange
{
  activeOrientationSource = [(SBWallpaperController *)self activeOrientationSource];
  if ([(SBWallpaperController *)self _isAcceptingOrientationChangesFromSource:activeOrientationSource])
  {
    v4 = [(SBWallpaperController *)self defaultInterfaceOrientationForSource:activeOrientationSource];
    if (v4)
    {

      [(SBWallpaperController *)self willAnimateRotationToInterfaceOrientation:v4 duration:0.0];
    }
  }
}

- (int64_t)activeOrientationSource
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_activeOrientationSources;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        integerValue = [*(*(&v10 + 1) + 8 * i) integerValue];
        if (integerValue > v5)
        {
          v5 = integerValue;
        }
      }

      v4 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)effectiveReachabilityYOffset
{
  v2 = +[SBReachabilityManager sharedInstance];
  [v2 effectiveReachabilityYOffset];
  v4 = v3;

  return v4;
}

- (BOOL)homeScreenPosterMirrorsLock
{
  if (objc_opt_respondsToSelector())
  {
    wallpaperPresenter = self->_wallpaperPresenter;

    return [(PBUIWallpaperPresenting_Staged *)wallpaperPresenter homeScreenPosterMirrorsLock];
  }

  else
  {
    activeLockScreenPosterConfiguration = self->_activeLockScreenPosterConfiguration;
    v11 = 0;
    v6 = [(PRSPosterConfiguration *)activeLockScreenPosterConfiguration pr_loadHomeScreenConfigurationWithError:&v11];
    v7 = v11;
    if (!v6)
    {
      v8 = SBLogWallpaper();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SBWallpaperController homeScreenPosterMirrorsLock];
      }

      v6 = objc_alloc_init(MEMORY[0x277D3EDB0]);
    }

    if ([v6 selectedAppearanceType])
    {
      LOBYTE(v9) = 0;
    }

    else
    {
      lockPosterAppearance = [v6 lockPosterAppearance];
      v9 = [lockPosterAppearance isLegibilityBlurEnabled] ^ 1;
    }

    return v9;
  }
}

- (BOOL)adaptiveTimeHonorsPreferredSalientContentRectangle
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  wallpaperPresenter = self->_wallpaperPresenter;

  return [(PBUIWallpaperPresenting_Staged *)wallpaperPresenter adaptiveTimeHonorsPreferredSalientContentRectangle];
}

- (CGRect)preferredSalientContentRectangle
{
  if (objc_opt_respondsToSelector())
  {
    [(PBUIWallpaperPresenting_Staged *)self->_wallpaperPresenter preferredSalientContentRectangle];
  }

  else
  {
    v3 = *MEMORY[0x277CBF398];
    v4 = *(MEMORY[0x277CBF398] + 8);
    v5 = *(MEMORY[0x277CBF398] + 16);
    v6 = *(MEMORY[0x277CBF398] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)updateIrisWallpaperForStaticMode
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  wallpaperPresenter = self->_wallpaperPresenter;

  return [(PBUIWallpaperPresenting_Staged *)wallpaperPresenter updateIrisWallpaperForStaticMode];
}

- (PBUIHomeVariantStyleState)currentHomeVariantStyleState
{
  currentHomeVariantStyleState = [(PBUIWallpaperPresenting_Staged *)self->_wallpaperPresenter currentHomeVariantStyleState];
  if (!currentHomeVariantStyleState)
  {
    lastActiveLockPoster = [(PRSPosterConfigurationCacheProviding *)self->_posterCacheProvider lastActiveLockPoster];
    if (lastActiveLockPoster)
    {
      v9 = 0;
      v5 = [MEMORY[0x277D3E968] decodeFromPersistableRepresentation:lastActiveLockPoster error:&v9];
      v6 = v5;
      if (v5)
      {
        v7 = [v5 pr_loadHomeScreenConfigurationWithError:0];
        if (v7)
        {
          currentHomeVariantStyleState = PBUIHomeVariantStyleStateFromPRPosterHomeScreenConfiguration();
        }

        else
        {
          currentHomeVariantStyleState = 0;
        }
      }

      else
      {
        currentHomeVariantStyleState = 0;
      }
    }

    else
    {
      currentHomeVariantStyleState = 0;
    }
  }

  return currentHomeVariantStyleState;
}

- (void)endActiveVariantTransition
{
  if (objc_opt_respondsToSelector())
  {
    wallpaperPresenter = self->_wallpaperPresenter;

    [(PBUIWallpaperPresenting_Staged *)wallpaperPresenter endActiveVariantTransition];
  }
}

- (void)beginActiveVariantTransition
{
  if (objc_opt_respondsToSelector())
  {
    wallpaperPresenter = self->_wallpaperPresenter;

    [(PBUIWallpaperPresenting_Staged *)wallpaperPresenter beginActiveVariantTransition];
  }
}

- (BOOL)posterHandlesWakeAnimation
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  wallpaperPresenter = self->_wallpaperPresenter;

  return [(PBUIWallpaperPresenting_Staged *)wallpaperPresenter posterHandlesWakeAnimation];
}

- (void)updateIrisWallpaperForInteractiveMode
{
  if (objc_opt_respondsToSelector())
  {
    wallpaperPresenter = self->_wallpaperPresenter;

    [(PBUIWallpaperPresenting_Staged *)wallpaperPresenter updateIrisWallpaperForInteractiveMode];
  }
}

- (PBUIIrisWallpaperPlaying)irisWallpaperPlayer
{
  if (objc_opt_respondsToSelector())
  {
    irisWallpaperPlayer = [(PBUIWallpaperPresenting_Staged *)self->_wallpaperPresenter irisWallpaperPlayer];
  }

  else
  {
    irisWallpaperPlayer = 0;
  }

  return irisWallpaperPlayer;
}

- (UIGestureRecognizer)wallpaperGestureRecognizer
{
  if (_os_feature_enabled_impl())
  {
    irisGestureRecognizer = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_triggerPosterTapEvent_];
    [irisGestureRecognizer setName:@"WallpaperTap"];
  }

  else if (objc_opt_respondsToSelector())
  {
    irisWallpaperPlayer = [(PBUIWallpaperPresenting_Staged *)self->_wallpaperPresenter irisWallpaperPlayer];
    irisGestureRecognizer = [irisWallpaperPlayer irisGestureRecognizer];
  }

  else
  {
    irisGestureRecognizer = 0;
  }

  return irisGestureRecognizer;
}

- (id)scenesForBacklightSession
{
  if (objc_opt_respondsToSelector())
  {
    scenesForBacklightSession = [(PBUIWallpaperPresenting_Staged *)self->_wallpaperPresenter scenesForBacklightSession];
  }

  else
  {
    scenesForBacklightSession = 0;
  }

  return scenesForBacklightSession;
}

void __39__SBWallpaperController_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBWallpaperController);
  v3 = sharedInstance___controller;
  sharedInstance___controller = v2;

  v4 = +[SBWallpaperServer sharedInstance];
  [v4 setDelegate:sharedInstance___controller];

  v6 = +[SBWallpaperServer sharedInstance];
  v5 = [*(a1 + 32) accessAuthenticator];
  [v6 setAccessAuthenticator:v5];
}

+ (FBServiceClientAuthenticator)accessAuthenticator
{
  if (accessAuthenticator_onceToken != -1)
  {
    +[SBWallpaperController accessAuthenticator];
  }

  v3 = accessAuthenticator___WallpaperAuthenticator;

  return v3;
}

void __44__SBWallpaperController_accessAuthenticator__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.wallpaper-access" additionalCredentials:3];
  v1 = accessAuthenticator___WallpaperAuthenticator;
  accessAuthenticator___WallpaperAuthenticator = v0;
}

- (SBWallpaperController)initWithWindowScene:(id)scene orientation:(int64_t)orientation variant:(int64_t)variant wallpaperConfigurationManager:(id)manager cachingIdentifier:(id)identifier
{
  sceneCopy = scene;
  managerCopy = manager;
  identifierCopy = identifier;
  v88.receiver = self;
  v88.super_class = SBWallpaperController;
  v15 = [(SBWallpaperController *)&v88 init];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_23;
  }

  objc_storeWeak(&v15->_windowScene, sceneCopy);
  orientationCopy = orientation;
  v16->_orientation = orientation;
  v16->_displayedVariant = -1;
  v17 = [identifierCopy copy];
  cachingIdentifier = v16->_cachingIdentifier;
  v16->_cachingIdentifier = v17;

  objc_storeStrong(&v16->_wallpaperConfigurationManager, manager);
  rootSettings = [MEMORY[0x277D37C78] rootSettings];
  [rootSettings addKeyObserver:v16];
  v19 = [[_SBWallpaperSecureWindow alloc] initWithWindowScene:sceneCopy];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && _os_feature_enabled_impl())
  {
    [(_SBWallpaperSecureWindow *)v19 _setRoleHint:@"SBTraitsParticipantRoleWallpaper"];
  }

  [(_SBWallpaperSecureWindow *)v19 setWindowLevel:*MEMORY[0x277D772B0] + -3.0];
  [(SBFWindow *)v19 setHidden:0];
  [(_SBWallpaperSecureWindow *)v19 setUserInteractionEnabled:0];
  objc_storeStrong(&v16->_wallpaperWindow, v19);
  blackColor = [MEMORY[0x277D75348] blackColor];
  [(_SBWallpaperSecureWindow *)v19 setBackgroundColor:blackColor];

  if (CSAutobahnEnabledForPlatform())
  {
    v23 = objc_alloc_init(MEMORY[0x277D37C60]);
    [(UIViewController *)v23 setWallpaperConfigurationManager:v16->_wallpaperConfigurationManager];
LABEL_9:
    [(UIViewController *)v23 setReachabilityCoordinator:v16];
    [(UIViewController *)v23 setWallpaperPresentingDelegate:v16];
    goto LABEL_13;
  }

  if (_os_feature_enabled_impl())
  {
    v23 = objc_alloc_init(MEMORY[0x277D37C90]);
    [(UIViewController *)v23 setWallpaperConfigurationManager:v16->_wallpaperConfigurationManager];
    [(UIViewController *)v23 setCachingIdentifier:v16->_cachingIdentifier];
    goto LABEL_9;
  }

  v23 = objc_alloc_init(MEMORY[0x277D37CA0]);
  [(UIViewController *)v23 setWallpaperConfigurationManager:v16->_wallpaperConfigurationManager];
  [(UIViewController *)v23 setCachingIdentifier:identifierCopy];
  [(UIViewController *)v23 setReachabilityCoordinator:v16];
  if (![(SBWallpaperController *)v16 _isTraitsArbiterWallpaperActive])
  {
    [(UIViewController *)v23 setFixedOrientation:1];
  }

  [(UIViewController *)v23 setWallpaperPresentingDelegate:v16];
  objc_storeStrong(&v16->_wallpaperViewController, v23);
LABEL_13:
  objc_storeStrong(&v16->_wallpaperPresenter, v23);
  objc_storeStrong(&v16->_wallpaperLegibilityProvider, v23);
  rootWallpaperViewController = v16->_rootWallpaperViewController;
  v16->_rootWallpaperViewController = v23;

  [(UIWindow *)v16->_wallpaperWindow setRootViewController:v16->_rootWallpaperViewController];
  traitCollection = [(UIWindow *)v16->_wallpaperWindow traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 1)
  {
    v27 = 1;
    v28 = 0x277D37000;
LABEL_17:
    [(PBUIWallpaperConfigurationManager *)v16->_wallpaperConfigurationManager setWallpaperMode:v27];
    goto LABEL_18;
  }

  traitCollection2 = [(UIWindow *)v16->_wallpaperWindow traitCollection];
  userInterfaceStyle2 = [traitCollection2 userInterfaceStyle];

  v28 = 0x277D37000;
  if (userInterfaceStyle2 == 2)
  {
    v27 = 2;
    goto LABEL_17;
  }

LABEL_18:
  v79 = identifierCopy;
  v31 = +[SBReachabilityManager sharedInstance];
  [v31 ignoreWindowForReachability:v16->_wallpaperWindow];

  view = [(UIViewController *)v16->_rootWallpaperViewController view];
  wallpaperContainerView = v16->_wallpaperContainerView;
  v16->_wallpaperContainerView = view;

  layer = [(UIView *)v16->_wallpaperContainerView layer];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  [layer setRasterizationScale:?];

  [(UIView *)v16->_wallpaperContainerView setClipsToBounds:1];
  v36 = objc_alloc(MEMORY[0x277D75D18]);
  [(UIWindow *)v16->_wallpaperWindow bounds];
  v37 = [v36 initWithFrame:?];
  wallpaperOverlayContainerView = v16->_wallpaperOverlayContainerView;
  v16->_wallpaperOverlayContainerView = v37;

  v39 = v16->_wallpaperOverlayContainerView;
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(UIView *)v39 setBackgroundColor:clearColor];

  [(UIWindow *)v16->_wallpaperWindow addSubview:v16->_wallpaperOverlayContainerView];
  v41 = objc_alloc_init(MEMORY[0x277CBEB58]);
  activeOrientationSources = v16->_activeOrientationSources;
  v16->_activeOrientationSources = v41;

  [(SBWallpaperController *)v16 setActiveVariant:variant];
  [SBApp addActiveOrientationObserver:v16];
  backlightEnvironmentSessionProvider = [SBApp backlightEnvironmentSessionProvider];
  [backlightEnvironmentSessionProvider registerBacklightEnvironmentSceneProvider:v16];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:v16 selector:sel__updateScreenBlanked name:@"SBBlankScreenStateChangeNotification" object:0];
  [defaultCenter addObserver:v16 selector:sel__motionEffectsChanged name:*MEMORY[0x277D77508] object:0];
  [defaultCenter addObserver:v16 selector:sel__batterySaverModeChanged_ name:@"SBBatterySaverModeDidChangeNotification" object:SBApp];
  [defaultCenter addObserver:v16 selector:sel__noteSignificantTimeChanged_ name:@"SBSignificantTimeChangedNotification" object:0];
  [defaultCenter addObserver:v16 selector:sel__applicationDidFinishLaunching_ name:*MEMORY[0x277D76668] object:0];
  if (_os_feature_enabled_impl())
  {
    v45 = objc_alloc_init(SBBootDefaultsPosterCacheProvider);
    mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
    isSharedIPad = [mEMORY[0x277D77BF8] isSharedIPad];

    v77 = managerCopy;
    if (isSharedIPad)
    {
      v48 = [objc_alloc(MEMORY[0x277D3E970]) initWithCachingReason:@"SharediPad"];

      v45 = v48;
    }

    posterCacheProvider = v16->_posterCacheProvider;
    v16->_posterCacheProvider = v45;
    v50 = v45;

    v51 = objc_opt_new();
    [v51 setLocations:12];
    [v51 setNeedsSandboxExtensions:0];
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = __113__SBWallpaperController_initWithWindowScene_orientation_variant_wallpaperConfigurationManager_cachingIdentifier___block_invoke;
    v86[3] = &unk_2783B61B8;
    v52 = v16;
    v87 = v52;
    [v51 setHandler:v86];
    v53 = objc_opt_new();
    [v53 setLocationStateObserver:v51];
    [v53 setQueue:MEMORY[0x277D85CD0]];
    v54 = objc_alloc(MEMORY[0x277D3EA10]);
    v55 = objc_opt_class();
    v56 = NSStringFromClass(v55);
    v57 = [v54 initWithExplanation:v56];
    posterBoardStateObserver = v52->_posterBoardStateObserver;
    v52->_posterBoardStateObserver = v57;

    [(PRSWallpaperObserver *)v52->_posterBoardStateObserver activateWithConfiguration:v53];
    [(SBWallpaperController *)v52 _loadLastActiveConfigurations];
    v59 = objc_alloc_init(MEMORY[0x277D3EA00]);
    posterBoardService = v52->_posterBoardService;
    v52->_posterBoardService = v59;

    v61 = +[SBPosterBoardUpdateManager sharedInstance];
    managerCopy = v77;
    v28 = 0x277D37000uLL;
  }

  v62 = objc_alloc_init(SBPosterBoardModalEditingManager);
  posterBoardModalEditingManager = v16->_posterBoardModalEditingManager;
  v16->_posterBoardModalEditingManager = v62;

  mEMORY[0x277D0A9E8] = [MEMORY[0x277D0A9E8] sharedActivityManager];
  activityManager = v16->_activityManager;
  v16->_activityManager = mEMORY[0x277D0A9E8];

  [(FCActivityManager *)v16->_activityManager addObserver:v16];
  rootSettings2 = [*(v28 + 3192) rootSettings];
  resetWallpaperOutlet = [rootSettings2 resetWallpaperOutlet];
  v68 = [resetWallpaperOutlet addAction:&__block_literal_global_110];

  objc_initWeak(&location, v16);
  v69 = MEMORY[0x277D43280];
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __113__SBWallpaperController_initWithWindowScene_orientation_variant_wallpaperConfigurationManager_cachingIdentifier___block_invoke_3;
  v83[3] = &unk_2783A8C68;
  objc_copyWeak(&v84, &location);
  v70 = [v69 recipeWithTitle:@"Run Wallpaper Migration" prepareBlock:0 action:v83 cleanupBlock:0];
  migrationTestRecipe = v16->_migrationTestRecipe;
  v16->_migrationTestRecipe = v70;

  [*(v28 + 3192) registerTestRecipe:v16->_migrationTestRecipe];
  v72 = MEMORY[0x277D43280];
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __113__SBWallpaperController_initWithWindowScene_orientation_variant_wallpaperConfigurationManager_cachingIdentifier___block_invoke_5;
  v81[3] = &unk_2783A8C68;
  objc_copyWeak(&v82, &location);
  v73 = [v72 recipeWithTitle:@"Reload Wallpaper" prepareBlock:0 action:v81 cleanupBlock:0];
  reloadTestRecipe = v16->_reloadTestRecipe;
  v16->_reloadTestRecipe = v73;

  [*(v28 + 3192) registerTestRecipe:v16->_reloadTestRecipe];
  v16->_orientation = 0;
  [(SBWallpaperController *)v16 willAnimateRotationToInterfaceOrientation:orientationCopy duration:0.0];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] registerObserver:v16];
  [(SBWallpaperController *)v16 profileConnectionDidReceiveEffectiveSettingsChangedNotification:mEMORY[0x277D262A0] userInfo:0];

  objc_destroyWeak(&v82);
  objc_destroyWeak(&v84);
  objc_destroyWeak(&location);

  identifierCopy = v79;
LABEL_23:

  return v16;
}

void __113__SBWallpaperController_initWithWindowScene_orientation_variant_wallpaperConfigurationManager_cachingIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 activeLock];
  v4 = [v3 activeHome];

  [*(a1 + 32) _updateForLockScreenPosterConfiguration:? homeScreenPosterConfiguration:?];
}

void __113__SBWallpaperController_initWithWindowScene_orientation_variant_wallpaperConfigurationManager_cachingIdentifier___block_invoke_2()
{
  v1 = objc_alloc_init(MEMORY[0x277D37C70]);
  [v1 restoreDefaultWallpaperForAllVariantsAndNotify:0];
  v0 = +[SBPrototypeController sharedInstance];
  [v0 restartSpringBoard];
}

void __113__SBWallpaperController_initWithWindowScene_orientation_variant_wallpaperConfigurationManager_cachingIdentifier___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained wallpaperConfigurationManager];
  [v1 performMigrationWithFailureHandler:&__block_literal_global_118_0];

  [WeakRetained _updateWallpaperForLocations:3 options:0 withCompletion:0];
}

void __113__SBWallpaperController_initWithWindowScene_orientation_variant_wallpaperConfigurationManager_cachingIdentifier___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadWallpaperAndFlushCaches:1 completionHandler:0];
}

- (void)_loadLastActiveConfigurations
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SBWallpaperController__loadLastActiveConfigurations__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __54__SBWallpaperController__loadLastActiveConfigurations__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 120) lastActiveLockPoster];
  if (v2)
  {
    v18 = 0;
    v3 = [MEMORY[0x277D3E968] decodeFromPersistableRepresentation:v2 error:&v18];
    v4 = v18;
    if (v3)
    {
      v5 = [*(*(a1 + 32) + 120) lastActiveHomePoster];
      if (v5)
      {
        v17 = 0;
        v6 = [MEMORY[0x277D3E968] decodeFromPersistableRepresentation:v5 error:&v17];
        v7 = v17;
        v8 = SBLogWallpaper();
        v9 = v8;
        if (v6)
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v20 = v3;
            v21 = 2112;
            v22 = v6;
            _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "loaded last active lock/home posters :\nlock=%@\nhome=%@", buf, 0x16u);
          }

          v10 = v3;
          v11 = v6;
        }

        else
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
          {
            __54__SBWallpaperController__loadLastActiveConfigurations__block_invoke_cold_1();
          }

          [*(*(a1 + 32) + 120) setLastActiveLockPoster:0];
          [*(*(a1 + 32) + 120) setLastActiveHomePoster:0];
          v10 = 0;
        }
      }

      else
      {
        v14 = SBLogWallpaper();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v20 = v3;
          _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "loaded last active lock poster : lock=%@", buf, 0xCu);
        }

        v10 = v3;
        v6 = 0;
      }
    }

    else
    {
      v13 = SBLogWallpaper();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        __54__SBWallpaperController__loadLastActiveConfigurations__block_invoke_cold_2();
      }

      [*(*(a1 + 32) + 120) setLastActiveLockPoster:0];
      [*(*(a1 + 32) + 120) setLastActiveHomePoster:0];
      v6 = 0;
      v10 = 0;
    }
  }

  else
  {
    v12 = SBLogWallpaper();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "no last active lock poster found", buf, 2u);
    }

    [*(*(a1 + 32) + 120) setLastActiveHomePoster:0];
    v6 = 0;
    v10 = 0;
  }

  objc_storeStrong((*(a1 + 32) + 152), v10);
  objc_storeStrong((*(a1 + 32) + 168), v6);
  *(*(a1 + 32) + 185) = 1;
  if (*(*(a1 + 32) + 186) == 1)
  {
    v15 = SBLogWallpaper();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "ignoring last active as we've already received a posters update", buf, 2u);
    }

    [*(a1 + 32) _persistLastActiveLockScreenPosterConfiguration:*(*(a1 + 32) + 256)];
    [*(a1 + 32) _persistLastActiveHomeScreenPosterConfiguration:*(*(a1 + 32) + 160)];
  }

  else if (v10)
  {
    v16 = SBLogWallpaper();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "initializing to last active posters cache", buf, 2u);
    }

    [*(a1 + 32) _updateForLockScreenPosterConfiguration:v10 homeScreenPosterConfiguration:v6];
  }
}

- (void)_persistLastActiveLockScreenPosterConfiguration:(id)configuration
{
  v21 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v6 = configurationCopy;
  if (self->_loadedLastActiveConfigurations)
  {
    p_lastActiveLockScreenPosterConfiguration = &self->_lastActiveLockScreenPosterConfiguration;
    lastActiveLockScreenPosterConfiguration = self->_lastActiveLockScreenPosterConfiguration;
    if (configurationCopy)
    {
      if ([configurationCopy isEqualToPersistable:lastActiveLockScreenPosterConfiguration])
      {
        objc_storeStrong(&self->_lastActiveLockScreenPosterConfiguration, configuration);
      }

      else
      {
        v18 = 0;
        v12 = [v6 persistableRepresentationWithError:&v18];
        v13 = v18;
        v14 = SBLogWallpaper();
        v15 = v14;
        if (v12)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v20 = v6;
            _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "cached last active lock poster : config=%@", buf, 0xCu);
          }

          [(PRSPosterConfigurationCacheProviding *)self->_posterCacheProvider setLastActiveLockPoster:v12];
          v16 = v6;
        }

        else
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [SBWallpaperController _persistLastActiveLockScreenPosterConfiguration:];
          }

          [(PRSPosterConfigurationCacheProviding *)self->_posterCacheProvider setLastActiveLockPoster:0];
          v16 = 0;
        }

        v17 = *p_lastActiveLockScreenPosterConfiguration;
        *p_lastActiveLockScreenPosterConfiguration = v16;
      }
    }

    else if (lastActiveLockScreenPosterConfiguration)
    {
      v10 = SBLogWallpaper();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "erased last active lock poster cache", buf, 2u);
      }

      [(PRSPosterConfigurationCacheProviding *)self->_posterCacheProvider setLastActiveLockPoster:0];
      v11 = self->_lastActiveLockScreenPosterConfiguration;
      self->_lastActiveLockScreenPosterConfiguration = 0;
    }
  }

  else
  {
    v9 = SBLogWallpaper();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "ignoring update to last active lock poster cache because we're not yet fully loaded", buf, 2u);
    }
  }
}

- (void)_persistLastActiveHomeScreenPosterConfiguration:(id)configuration
{
  v21 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v6 = configurationCopy;
  if (self->_loadedLastActiveConfigurations)
  {
    p_lastActiveHomeScreenPosterConfiguration = &self->_lastActiveHomeScreenPosterConfiguration;
    lastActiveHomeScreenPosterConfiguration = self->_lastActiveHomeScreenPosterConfiguration;
    if (configurationCopy)
    {
      if ([configurationCopy isEqualToPersistable:lastActiveHomeScreenPosterConfiguration])
      {
        objc_storeStrong(&self->_lastActiveHomeScreenPosterConfiguration, configuration);
      }

      else
      {
        v18 = 0;
        v12 = [v6 persistableRepresentationWithError:&v18];
        v13 = v18;
        v14 = SBLogWallpaper();
        v15 = v14;
        if (v12)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v20 = v6;
            _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "cached last active home poster : config=%@", buf, 0xCu);
          }

          [(PRSPosterConfigurationCacheProviding *)self->_posterCacheProvider setLastActiveHomePoster:v12];
          v16 = v6;
        }

        else
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [SBWallpaperController _persistLastActiveHomeScreenPosterConfiguration:];
          }

          [(PRSPosterConfigurationCacheProviding *)self->_posterCacheProvider setLastActiveHomePoster:0];
          v16 = 0;
        }

        v17 = *p_lastActiveHomeScreenPosterConfiguration;
        *p_lastActiveHomeScreenPosterConfiguration = v16;
      }
    }

    else if (lastActiveHomeScreenPosterConfiguration)
    {
      v10 = SBLogWallpaper();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "erased last active home poster cache", buf, 2u);
      }

      [(PRSPosterConfigurationCacheProviding *)self->_posterCacheProvider setLastActiveHomePoster:0];
      v11 = self->_lastActiveHomeScreenPosterConfiguration;
      self->_lastActiveHomeScreenPosterConfiguration = 0;
    }
  }

  else
  {
    v9 = SBLogWallpaper();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "ignoring update to last active home poster cache because we're not yet fully loaded", buf, 2u);
    }
  }
}

- (SBWallpaperController)initWithWallpaperConfigurationManager:(id)manager
{
  managerCopy = manager;
  embeddedWindowScene = [(SBWallpaperController *)self embeddedWindowScene];
  v6 = [(SBWallpaperController *)self initWithWindowScene:embeddedWindowScene orientation:1 variant:1 wallpaperConfigurationManager:managerCopy cachingIdentifier:@"wallpaperController"];

  return v6;
}

- (SBWallpaperController)initWithWallpaperConfigurationManager:(id)manager cachingIdentifier:(id)identifier
{
  identifierCopy = identifier;
  managerCopy = manager;
  embeddedWindowScene = [(SBWallpaperController *)self embeddedWindowScene];
  v9 = [(SBWallpaperController *)self initWithWindowScene:embeddedWindowScene orientation:1 variant:1 wallpaperConfigurationManager:managerCopy cachingIdentifier:identifierCopy];

  return v9;
}

- (SBWallpaperController)init
{
  v3 = objc_alloc_init(MEMORY[0x277D37C70]);
  embeddedWindowScene = [(SBWallpaperController *)self embeddedWindowScene];
  embeddedWindowScene2 = [(SBWallpaperController *)self embeddedWindowScene];
  if (embeddedWindowScene2)
  {
    embeddedWindowScene3 = [(SBWallpaperController *)self embeddedWindowScene];
    v7 = -[SBWallpaperController initWithWindowScene:orientation:variant:wallpaperConfigurationManager:cachingIdentifier:](self, "initWithWindowScene:orientation:variant:wallpaperConfigurationManager:cachingIdentifier:", embeddedWindowScene, [embeddedWindowScene3 interfaceOrientation], 1, v3, @"wallpaperController");
  }

  else
  {
    v7 = [(SBWallpaperController *)self initWithWindowScene:embeddedWindowScene orientation:1 variant:1 wallpaperConfigurationManager:v3 cachingIdentifier:@"wallpaperController"];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] unregisterObserver:self];

  [SBApp removeActiveOrientationObserver:self];
  v5.receiver = self;
  v5.super_class = SBWallpaperController;
  [(SBWallpaperController *)&v5 dealloc];
}

- (void)updateActiveVariantTransitionProgress:(double)progress
{
  if (objc_opt_respondsToSelector())
  {
    wallpaperPresenter = self->_wallpaperPresenter;

    [(PBUIWallpaperPresenting_Staged *)wallpaperPresenter updateActiveVariantTransitionProgress:progress];
  }
}

- (id)embeddedWindowScene
{
  windowSceneManager = [SBApp windowSceneManager];
  embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];

  return embeddedDisplayWindowScene;
}

- (void)setWindowScene:(id)scene
{
  obj = scene;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_windowScene, obj);
    [(UIWindow *)self->_wallpaperWindow setWindowScene:obj];
  }
}

- (void)_updateForLockScreenPosterConfiguration:(id)configuration homeScreenPosterConfiguration:(id)posterConfiguration
{
  configurationCopy = configuration;
  posterConfigurationCopy = posterConfiguration;
  self->_updatedActiveConfigurations = 1;
  v9 = BSEqualObjects();
  if (v9)
  {
    goto LABEL_31;
  }

  v10 = SBLogWallpaper();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [SBWallpaperController _updateForLockScreenPosterConfiguration:homeScreenPosterConfiguration:];
  }

  v47 = v9;

  objc_storeStrong(&self->_activeLockScreenPosterConfiguration, configuration);
  [(SBWallpaperController *)self _persistLastActiveLockScreenPosterConfiguration:self->_activeLockScreenPosterConfiguration];
  if (objc_opt_respondsToSelector())
  {
    [(PBUIWallpaperPresenting_Staged *)self->_wallpaperPresenter setConfiguration:configurationCopy withAnimationSettings:0];
  }

  backlightEnvironmentSessionProvider = [SBApp backlightEnvironmentSessionProvider];
  [backlightEnvironmentSessionProvider invalidateBacklightScenesForProvider:self];

  v51 = 0;
  v12 = [configurationCopy pr_loadTitleStyleConfigurationWithError:&v51];
  v13 = v51;
  if (!v12)
  {
    v14 = SBLogWallpaper();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SBWallpaperController _updateForLockScreenPosterConfiguration:homeScreenPosterConfiguration:];
    }

    v12 = objc_alloc_init(MEMORY[0x277D3EE30]);
  }

  pr_posterProvider = [configurationCopy pr_posterProvider];
  v48 = posterConfigurationCopy;
  v45 = pr_posterProvider;
  posterConfigurationCopy2 = posterConfiguration;
  v43 = v13;
  if (!pr_posterProvider)
  {
    v20 = SBLogWallpaper();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SBWallpaperController _updateForLockScreenPosterConfiguration:homeScreenPosterConfiguration:];
    }

    goto LABEL_16;
  }

  v16 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:pr_posterProvider error:0];
  v17 = [v16 URL];

  if (!v17)
  {
LABEL_16:
    v21 = SBLogWallpaper();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [SBWallpaperController _updateForLockScreenPosterConfiguration:homeScreenPosterConfiguration:];
    }

    defaultTimeFont = [MEMORY[0x277D3EE30] defaultTimeFont];
    v22 = SBLogWallpaper();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [SBWallpaperController _updateForLockScreenPosterConfiguration:homeScreenPosterConfiguration:];
    }

    vibrancyConfiguration = [v12 vibrancyConfiguration];
    goto LABEL_21;
  }

  defaultTimeFont = [v12 effectiveTimeFontWithExtensionBundleURL:v17];
  vibrancyConfiguration = [v12 vibrancyConfigurationWithExtensionBundleURL:v17];

LABEL_21:
  [v12 preferredTimeMaxYPortrait];
  v24 = v23;
  [v12 preferredTimeMaxYLandscape];
  v26 = v25;
  timeNumberingSystem = [v12 timeNumberingSystem];
  v28 = +[SBLockScreenManager sharedInstance];
  coverSheetViewController = [v28 coverSheetViewController];

  titleContentStyle = [v12 titleContentStyle];
  [coverSheetViewController updateFont:defaultTimeFont preferredTimeMaxYPortrait:vibrancyConfiguration preferredTimeMaxYLandscape:timeNumberingSystem vibrancyConfiguration:titleContentStyle numberingSystem:v24 contentStyle:v26];

  [coverSheetViewController updateFloatingLayerOrdering];
  [coverSheetViewController setAlternateDateEnabled:{objc_msgSend(v12, "isAlternateDateEnabled")}];
  v50 = 0;
  v31 = [configurationCopy pr_loadConfiguredPropertiesWithError:&v50];
  v32 = v50;

  v44 = defaultTimeFont;
  if (v31)
  {
    renderingConfiguration = [v31 renderingConfiguration];
    [coverSheetViewController setDepthEffectDisabled:{objc_msgSend(renderingConfiguration, "isDepthEffectDisabled")}];

    v34 = objc_alloc(MEMORY[0x277D02C70]);
    quickActionsConfiguration = [v31 quickActionsConfiguration];
    v36 = [v34 initWithPosterActionsConfiguration:quickActionsConfiguration];

    [coverSheetViewController setQuickActionsConfiguration:v36];
  }

  else
  {
    v36 = SBLogWallpaper();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [SBWallpaperController _updateForLockScreenPosterConfiguration:homeScreenPosterConfiguration:];
    }
  }

  providerBundleIdentifier = [configurationCopy providerBundleIdentifier];
  v38 = [providerBundleIdentifier isEqualToString:@"com.apple.NanoUniverse.AegirProxyApp.AegirPoster"];

  [coverSheetViewController setFloatingLayerFullscreen:v38 ^ 1u];
  v49 = 0;
  v39 = [configurationCopy pr_loadComplicationLayoutWithError:&v49];
  v40 = v49;

  if (v39)
  {
    [coverSheetViewController setComplicationContainerUsesBottomPosition:{objc_msgSend(v39, "complicationsUseBottomLayout")}];
  }

  else
  {
    v41 = SBLogWallpaper();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [SBWallpaperController _updateForLockScreenPosterConfiguration:homeScreenPosterConfiguration:];
    }
  }

  posterConfigurationCopy = v48;
  v9 = v47;
  posterConfiguration = posterConfigurationCopy2;
LABEL_31:
  if (BSEqualObjects())
  {
    goto LABEL_37;
  }

  v42 = SBLogWallpaper();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    [SBWallpaperController _updateForLockScreenPosterConfiguration:homeScreenPosterConfiguration:];
  }

  objc_storeStrong(&self->_activeHomeScreenPosterConfiguration, posterConfiguration);
  [(SBWallpaperController *)self _persistLastActiveHomeScreenPosterConfiguration:self->_activeHomeScreenPosterConfiguration];
  if (objc_opt_respondsToSelector())
  {
    [(PBUIWallpaperPresenting_Staged *)self->_wallpaperPresenter setAssociatedPosterConfiguration:posterConfigurationCopy withAnimationSettings:0];
  }

  if (v9)
  {
LABEL_37:
    if (objc_opt_respondsToSelector())
    {
      [(PBUIWallpaperPresenting_Staged *)self->_wallpaperPresenter triggerSceneUpdate];
    }
  }
}

- (id)acquireDuckHomeScreenWallpaperDimAssertionWithReason:(id)reason
{
  reasonCopy = reason;
  BSDispatchQueueAssertMain();
  if (objc_opt_respondsToSelector())
  {
    v5 = [(PBUIWallpaperPresenting_Staged *)self->_wallpaperPresenter acquireDuckHomeScreenWallpaperDimAssertionWithReason:reasonCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)noteHomeVariantStyleStateMayHaveUpdated
{
  if (objc_opt_respondsToSelector())
  {
    wallpaperPresenter = self->_wallpaperPresenter;

    [(PBUIWallpaperPresenting_Staged *)wallpaperPresenter noteHomeVariantStyleStateMayHaveUpdated];
  }
}

- (BOOL)updateCurrentPosterWithUpdates:(id)updates error:(id *)error
{
  updatesCopy = updates;
  if (objc_opt_respondsToSelector())
  {
    v7 = [(PBUIWallpaperPresenting_Staged *)self->_wallpaperPresenter updateCurrentPosterWithUpdates:updatesCopy error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setHomeScreenWallpaperDimmed:(BOOL)dimmed
{
  dimmedCopy = dimmed;
  if (objc_opt_respondsToSelector())
  {
    wallpaperPresenter = self->_wallpaperPresenter;

    [(PBUIWallpaperPresenting_Staged *)wallpaperPresenter setHomeScreenWallpaperDimmed:dimmedCopy];
  }
}

- (BOOL)homeScreenWallpaperDimming
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  wallpaperPresenter = self->_wallpaperPresenter;

  return [(PBUIWallpaperPresenting_Staged *)wallpaperPresenter isHomeScreenWallpaperDimmed];
}

- (void)setLockscreenOnlyWallpaperAlpha:(double)alpha
{
  if (objc_opt_respondsToSelector())
  {
    wallpaperPresenter = self->_wallpaperPresenter;

    [(PBUIWallpaperPresenting_Staged *)wallpaperPresenter setLockscreenOnlyWallpaperAlpha:alpha];
  }
}

- ($1D129F7B4C980C50E70029647222EF17)currentHomescreenStyleTransitionState
{
  result = self->_wallpaperPresenter;
  if (result)
  {
    return [($1D129F7B4C980C50E70029647222EF17 *)result currentHomescreenStyleTransitionState];
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0.0;
  return result;
}

- (void)triggerPosterSignificantEvent
{
  if (objc_opt_respondsToSelector())
  {
    wallpaperPresenter = self->_wallpaperPresenter;

    [(PBUIWallpaperPresenting_Staged *)wallpaperPresenter triggerPosterSignificantEvent];
  }
}

- (void)triggerPosterTapEvent:(id)event
{
  eventCopy = event;
  if (objc_opt_respondsToSelector())
  {
    [(PBUIWallpaperPresenting_Staged *)self->_wallpaperPresenter triggerPosterSignificantEvent];
  }

  if (objc_opt_respondsToSelector())
  {
    [(PBUIWallpaperPresenting_Staged *)self->_wallpaperPresenter triggerPosterTapEvent:eventCopy];
  }

  [(SBWallpaperController *)self _fetchUserTapEventsRequestedWithCompletionHandler:&__block_literal_global_170];
}

void __47__SBWallpaperController_triggerPosterTapEvent___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = +[SBLockScreenManager sharedInstance];
    v3 = [v2 coverSheetViewController];

    [v3 requestIdleTimerResetForPoster];
  }
}

- (void)_fetchUserTapEventsRequestedWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v6 = handlerCopy;
    if (objc_opt_respondsToSelector())
    {
      userTapEventsRequested = [(PBUIWallpaperPresenting_Staged *)self->_wallpaperPresenter userTapEventsRequested];
    }

    else
    {
      userTapEventsRequested = 0;
    }

    v6[2](v6, userTapEventsRequested);
    handlerCopy = v6;
  }
}

- (id)setWallpaperFloatingLayerContainerView:(id)view forReason:(id)reason withAnimationFactory:(id)factory
{
  viewCopy = view;
  reasonCopy = reason;
  factoryCopy = factory;
  if (objc_opt_respondsToSelector())
  {
    v11 = [(PBUIWallpaperPresenting_Staged *)self->_wallpaperPresenter setWallpaperFloatingLayerContainerView:viewCopy forReason:reasonCopy withAnimationFactory:factoryCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)createWallpaperFloatingViewForReason:(id)reason ignoreReplica:(BOOL)replica
{
  replicaCopy = replica;
  reasonCopy = reason;
  if (objc_opt_respondsToSelector())
  {
    v7 = [(PBUIWallpaperPresenting_Staged *)self->_wallpaperPresenter createWallpaperFloatingViewForReason:reasonCopy ignoreReplica:replicaCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)setWallpaperStyleTransitionState:(id *)state forPriority:(int64_t)priority forVariant:(int64_t)variant withAnimationFactory:(id)factory
{
  wallpaperPresenter = self->_wallpaperPresenter;
  v8 = *state;
  return [(PBUIWallpaperPresenting_Staged *)wallpaperPresenter setWallpaperStyleTransitionState:&v8 forPriority:priority forVariant:variant withAnimationFactory:factory];
}

- (void)updateWallpaperAnimationWithProgress:(double)progress
{
  v15 = *MEMORY[0x277D85DE8];
  if (objc_opt_respondsToSelector())
  {
    [(PBUIWallpaperPresenting_Staged *)self->_wallpaperPresenter updateWallpaperAnimationWithProgress:progress];
  }

  allObjects = [(NSHashTable *)self->_wallpaperUnlockProgressObservers allObjects];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v10 + 1) + 8 * v9++) wallpaperUnlockProgressDidUpdate:progress];
      }

      while (v7 != v9);
      v7 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (uint64_t)updateWallpaperAnimationWithRotation:(_OWORD *)rotation
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(self + 104);
    v7 = rotation[1];
    v8[0] = *rotation;
    v8[1] = v7;
    return [v6 updateWallpaperAnimationWithRotation:v8];
  }

  return result;
}

- (void)updateWallpaperAnimationWithIconFlyInTension:(double)tension friction:(double)friction
{
  if (objc_opt_respondsToSelector())
  {
    wallpaperPresenter = self->_wallpaperPresenter;

    [(PBUIWallpaperPresenting_Staged *)wallpaperPresenter updateWallpaperAnimationWithIconFlyInTension:tension friction:friction];
  }
}

- (void)updateWallpaperAnimationWithWakeSourceIsSwipeToUnlock:(BOOL)unlock
{
  unlockCopy = unlock;
  if (objc_opt_respondsToSelector())
  {
    wallpaperPresenter = self->_wallpaperPresenter;

    [(PBUIWallpaperPresenting_Staged *)wallpaperPresenter updateWallpaperAnimationWithWakeSourceIsSwipeToUnlock:unlockCopy];
  }
}

- (unint64_t)posterDeviceMotionMode
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  wallpaperPresenter = self->_wallpaperPresenter;

  return [(PBUIWallpaperPresenting_Staged *)wallpaperPresenter posterDeviceMotionMode];
}

- (BOOL)posterHasRequestedDeviceMotionEvents
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  wallpaperPresenter = self->_wallpaperPresenter;

  return [(PBUIWallpaperPresenting_Staged *)wallpaperPresenter posterHasRequestedDeviceMotionEvents];
}

- (BOOL)posterWantsDefaultParallax
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  wallpaperPresenter = self->_wallpaperPresenter;

  return [(PBUIWallpaperPresenting_Staged *)wallpaperPresenter posterWantsDefaultParallax];
}

- (BOOL)posterHidesDimmingLayer
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  wallpaperPresenter = self->_wallpaperPresenter;

  return [(PBUIWallpaperPresenting_Staged *)wallpaperPresenter posterHidesDimmingLayer];
}

- (void)hostWillStartDeviceMotionEventGeneration
{
  if (objc_opt_respondsToSelector())
  {
    wallpaperPresenter = self->_wallpaperPresenter;

    [(PBUIWallpaperPresenting_Staged *)wallpaperPresenter hostWillStartDeviceMotionEventGeneration];
  }
}

- (void)hostDidEndDeviceMotionEventGeneration
{
  if (objc_opt_respondsToSelector())
  {
    wallpaperPresenter = self->_wallpaperPresenter;

    [(PBUIWallpaperPresenting_Staged *)wallpaperPresenter hostDidEndDeviceMotionEventGeneration];
  }
}

- (void)setWallpaperObscured:(BOOL)obscured
{
  if (self->_wallpaperObscured != obscured)
  {
    obscuredCopy = obscured;
    self->_wallpaperObscured = obscured;
    if (objc_opt_respondsToSelector())
    {
      [(PBUIWallpaperPresenting_Staged *)self->_wallpaperPresenter setWallpaperObscured:obscuredCopy];
    }

    v6 = +[SBLockScreenDeviceMotionEffectController sharedInstance];
    [v6 setWallpaperObscured:obscuredCopy];
  }
}

- (void)updateSalientContentRectangle:(CGRect)rectangle
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  if (objc_opt_respondsToSelector())
  {
    wallpaperPresenter = self->_wallpaperPresenter;

    [(PBUIWallpaperPresenting_Staged *)wallpaperPresenter updateSalientContentRectangle:x, y, width, height];
  }
}

- (void)setWallpaperHidden:(BOOL)hidden variant:(int64_t)variant reason:(id)reason
{
  hiddenCopy = hidden;
  reasonCopy = reason;
  if (objc_opt_respondsToSelector())
  {
    [(PBUIWallpaperPresenting_Staged *)self->_wallpaperPresenter setWallpaperHidden:hiddenCopy variant:variant reason:reasonCopy];
  }
}

- (void)setExternalDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (objc_opt_respondsToSelector())
  {
    [(PBUIWallpaperPresenting_Staged *)self->_wallpaperPresenter setExternalDisplayConfiguration:configurationCopy];
  }
}

- (id)newFakeBlurViewForVariant:(int64_t)variant style:(int64_t)style transformOptions:(unint64_t)options
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  wallpaperPresenter = self->_wallpaperPresenter;

  return [(PBUIWallpaperPresenting_Staged *)wallpaperPresenter newFakeBlurViewForVariant:variant style:style transformOptions:options];
}

- (void)updateWallpaperForLocations:(int64_t)locations withCompletion:(id)completion
{
  completionCopy = completion;
  if (objc_opt_respondsToSelector())
  {
    [(PBUIWallpaperPresenting_Staged *)self->_wallpaperPresenter updateWallpaperForLocations:locations withCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (void)updateWallpaperForLocations:(int64_t)locations wallpaperMode:(int64_t)mode withCompletion:(id)completion
{
  completionCopy = completion;
  if (objc_opt_respondsToSelector())
  {
    [(PBUIWallpaperPresenting_Staged *)self->_wallpaperPresenter updateWallpaperForLocations:locations wallpaperMode:mode withCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (void)_batterySaverModeChanged:(id)changed
{
  isBatterySaverModeActive = [SBApp isBatterySaverModeActive];
  v5 = SBLogCommon();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (isBatterySaverModeActive)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Disabling dynamic wallpapers and parallax for battery saver mode", buf, 2u);
    }

    batterySaverAnimationAssertion = [(SBWallpaperController *)self batterySaverAnimationAssertion];
    [batterySaverAnimationAssertion invalidate];

    v8 = [(SBWallpaperController *)self suspendWallpaperAnimationForReason:@"SBWallpaperViewBatterySaverReason"];
    [(SBWallpaperController *)self setBatterySaverAnimationAssertion:v8];

    [MEMORY[0x277D75D18] _beginSuspendingMotionEffectsForReason:@"SBWallpaperViewBatterySaverReason"];
  }

  else
  {
    if (v6)
    {
      *v10 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Re-enabling dynamic wallpapers and parallax for battery saver mode", v10, 2u);
    }

    batterySaverAnimationAssertion2 = [(SBWallpaperController *)self batterySaverAnimationAssertion];
    [batterySaverAnimationAssertion2 invalidate];

    [(SBWallpaperController *)self setBatterySaverAnimationAssertion:0];
    [MEMORY[0x277D75D18] _endSuspendingMotionEffectsForReason:@"SBWallpaperViewBatterySaverReason"];
  }
}

- (void)_motionEffectsChanged
{
  wallpaperConfigurationManager = [(SBWallpaperController *)self wallpaperConfigurationManager];
  [wallpaperConfigurationManager regenerateStaticWallpaperThumbnailImages];
}

- (void)_updateScreenBlanked
{
  IsBlanked = SBScreenIsBlanked();
  [(SBWallpaperController *)self setWallpaperHidden:IsBlanked variant:0 reason:@"ScreenIsBlanked"];

  [(SBWallpaperController *)self setWallpaperHidden:IsBlanked variant:1 reason:@"ScreenIsBlanked"];
}

- (void)preheatWallpaperForVariant:(int64_t)variant
{
  if (objc_opt_respondsToSelector())
  {
    wallpaperPresenter = self->_wallpaperPresenter;

    [(PBUIWallpaperPresenting_Staged *)wallpaperPresenter preheatWallpaperForVariant:variant];
  }
}

- (void)_reloadWallpaperAndFlushCaches:(BOOL)caches completionHandler:(id)handler
{
  cachesCopy = caches;
  handlerCopy = handler;
  v7 = SBLogWallpaper();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (cachesCopy)
  {
    if (v8)
    {
      [SBWallpaperController _reloadWallpaperAndFlushCaches:completionHandler:];
    }

    wallpaperCache = [MEMORY[0x277D37C68] wallpaperCache];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__SBWallpaperController__reloadWallpaperAndFlushCaches_completionHandler___block_invoke;
    v10[3] = &unk_2783A98A0;
    v10[4] = self;
    v11 = handlerCopy;
    [wallpaperCache removeEverythingWithCompletion:v10];
  }

  else
  {
    if (v8)
    {
      [SBWallpaperController _reloadWallpaperAndFlushCaches:completionHandler:];
    }

    [(SBWallpaperController *)self _updateWallpaperForLocations:3 options:0 withCompletion:handlerCopy];
  }
}

void __74__SBWallpaperController__reloadWallpaperAndFlushCaches_completionHandler___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __74__SBWallpaperController__reloadWallpaperAndFlushCaches_completionHandler___block_invoke_2;
  v2[3] = &unk_2783A98A0;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

uint64_t __74__SBWallpaperController__reloadWallpaperAndFlushCaches_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 216) clearCacheForVariants:3];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _updateWallpaperForLocations:3 options:0 withCompletion:v3];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBWallpaperController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = BSInterfaceOrientationDescription();
  v6 = [v4 appendObject:v5 withName:@"interfaceOrientation"];

  activeOrientationSource = [(SBWallpaperController *)self activeOrientationSource];
  if (activeOrientationSource > 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_2783B6388[activeOrientationSource];
  }

  v9 = [v4 appendObject:v8 withName:@"activeOrientationSource"];
  activeInterfaceOrientationSourcesDescriptions = [(SBWallpaperController *)self activeInterfaceOrientationSourcesDescriptions];
  [v4 appendArraySection:activeInterfaceOrientationSourcesDescriptions withName:@"ActiveInterfaceOrientationSources" skipIfEmpty:0];

  v11 = [v4 appendObject:self->_wallpaperConfigurationManager withName:@"wallpaperConfigurationManager"];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBWallpaperController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)activeInterfaceOrientationSourcesDescriptions
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_activeOrientationSources;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        integerValue = [*(*(&v12 + 1) + 8 * i) integerValue];
        if (integerValue > 3)
        {
          v10 = 0;
        }

        else
        {
          v10 = off_2783B6388[integerValue];
        }

        [v3 addObject:v10];
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)wallpaperPresenter:(id)presenter didChangeWallpaperForLocations:(int64_t)locations withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [(SBWallpaperController *)self _saveWallpaperCoreAnalyticsForLocations:locations withConfiguration:configurationCopy];
  WeakRetained = objc_loadWeakRetained(&self->_wallpaperPresentingDelegate);
  [WeakRetained wallpaperPresenter:self didChangeWallpaperForLocations:locations withConfiguration:configurationCopy];
}

- (int64_t)wallpaperPresenter:(id)presenter requestsOrientationWithRefresh:(BOOL)refresh
{
  if (refresh)
  {
    [(SBWallpaperController *)self updateOrientationAfterSourceChange];
  }

  return self->_orientation;
}

- (void)wallpaperPresenterDidCompleteWallpaperChange:(id)change
{
  PBUIPostExternalWallpaperChangeNotificationAsSystemShell();
  WeakRetained = objc_loadWeakRetained(&self->_wallpaperPresentingDelegate);
  [WeakRetained wallpaperPresenterDidCompleteWallpaperChange:self];
}

- (SBFWallpaperCoreAnalyticsLogger)wallpaperCoreAnalyticsLogger
{
  wallpaperCoreAnalyticsLogger = self->_wallpaperCoreAnalyticsLogger;
  if (!wallpaperCoreAnalyticsLogger)
  {
    v4 = objc_alloc_init(MEMORY[0x277D65FC0]);
    v5 = self->_wallpaperCoreAnalyticsLogger;
    self->_wallpaperCoreAnalyticsLogger = v4;

    wallpaperCoreAnalyticsLogger = self->_wallpaperCoreAnalyticsLogger;
  }

  return wallpaperCoreAnalyticsLogger;
}

- (void)_saveWallpaperCoreAnalyticsForLocations:(int64_t)locations withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  wallpaperOptions = [configurationCopy wallpaperOptions];
  name = [wallpaperOptions name];

  videoURL = [configurationCopy videoURL];

  wallpaperCoreAnalyticsLogger = [(SBWallpaperController *)self wallpaperCoreAnalyticsLogger];
  [wallpaperCoreAnalyticsLogger saveStateOfWallpaperToCoreAnalytics:locations withHasVideo:videoURL != 0 hasProcedural:0 name:name];
}

- (void)_noteSignificantTimeChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKey:@"SBSignificantTimeChangeWasMidnight"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    wallpaperCoreAnalyticsLogger = [(SBWallpaperController *)self wallpaperCoreAnalyticsLogger];
    [wallpaperCoreAnalyticsLogger sendStateOfWallpaperToCoreAnalytics];
  }
}

- (void)activateOrientationSource:(int64_t)source
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [(NSMutableSet *)self->_activeOrientationSources count];
  activeOrientationSources = self->_activeOrientationSources;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:source];
  [(NSMutableSet *)activeOrientationSources addObject:v7];

  v8 = BKLogOrientationGlobal();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (source > 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_2783B6388[source];
    }

    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Activating wallpaper orientation source %{public}@", &v10, 0xCu);
  }

  if (v5 != [(NSMutableSet *)self->_activeOrientationSources count])
  {
    [(SBWallpaperController *)self updateOrientationAfterSourceChange];
  }
}

- (void)deactivateOrientationSource:(int64_t)source
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [(NSMutableSet *)self->_activeOrientationSources count];
  activeOrientationSources = self->_activeOrientationSources;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:source];
  [(NSMutableSet *)activeOrientationSources removeObject:v7];

  v8 = BKLogOrientationGlobal();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (source > 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_2783B6388[source];
    }

    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Deactivating wallpaper orientation source %{public}@", &v10, 0xCu);
  }

  if (v5 != [(NSMutableSet *)self->_activeOrientationSources count])
  {
    [(SBWallpaperController *)self updateOrientationAfterSourceChange];
  }
}

- (int64_t)defaultInterfaceOrientationForSource:(int64_t)source
{
  orientationProviders = self->_orientationProviders;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v7 = [(NSMapTable *)orientationProviders objectForKey:v6];

  if (v7)
  {
    activeInterfaceOrientation = [v7 interfaceOrientationForWallpaperController:self];
  }

  else
  {
    if (source != 1)
    {
      v9 = 0;
      goto LABEL_6;
    }

    activeInterfaceOrientation = [SBApp activeInterfaceOrientation];
  }

  v9 = activeInterfaceOrientation;
LABEL_6:

  return v9;
}

- (void)setOrientationProvider:(id)provider forSource:(int64_t)source
{
  providerCopy = provider;
  orientationProviders = self->_orientationProviders;
  if (!orientationProviders)
  {
    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    v8 = self->_orientationProviders;
    self->_orientationProviders = strongToWeakObjectsMapTable;

    orientationProviders = self->_orientationProviders;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:source];
  [(NSMapTable *)orientationProviders setObject:providerCopy forKey:v9];
}

- (void)orientationSource:(int64_t)source willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(SBWallpaperController *)self _isAcceptingOrientationChangesFromSource:?])
  {

    [(SBWallpaperController *)self willAnimateRotationToInterfaceOrientation:orientation duration:duration];
  }

  else
  {
    v9 = BKLogOrientationGlobal();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (source > 3)
      {
        v10 = 0;
      }

      else
      {
        v10 = off_2783B6388[source];
      }

      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Not accepting changes from alternate orientation source: %{public}@", &v11, 0xCu);
    }
  }
}

- (void)orientationSource:(int64_t)source didRotateFromInterfaceOrientation:(int64_t)orientation
{
  if (objc_opt_respondsToSelector())
  {
    wallpaperPresenter = self->_wallpaperPresenter;

    [(PBUIWallpaperPresenting_Staged *)wallpaperPresenter noteDidRotateFromInterfaceOrientation:orientation];
  }
}

- (BOOL)_isMaglevActive
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

- (BOOL)_isTraitsArbiterWallpaperActive
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      LOBYTE(v3) = ![(SBWallpaperController *)self _isMaglevActive];
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  v26 = *MEMORY[0x277D85DE8];
  orientation = self->_orientation;
  v8 = BKLogOrientationGlobal();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (orientation == orientation)
  {
    if (v9)
    {
      v10 = BSInterfaceOrientationDescription();
      *buf = 138543618;
      v23 = v10;
      v24 = 2048;
      durationCopy2 = duration;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Not animating wallpaper orientation to %{public}@ in %1.2f because it's already in that orientation", buf, 0x16u);
    }
  }

  else
  {
    if (v9)
    {
      v11 = BSInterfaceOrientationDescription();
      *buf = 138543618;
      v23 = v11;
      v24 = 2048;
      durationCopy2 = duration;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Animating wallpaper orientation to %{public}@ in %1.2f", buf, 0x16u);
    }

    self->_orientation = orientation;
    [(SBWallpaperController *)self cancelInProcessAnimations];
    if (!-[SBWallpaperController _isTraitsArbiterWallpaperActive](self, "_isTraitsArbiterWallpaperActive") && [MEMORY[0x277D37C60] supportsLandscapeWallpaperContents])
    {
      if ([(SBWallpaperController *)self _isMaglevActive])
      {
        switch(orientation)
        {
          case 1:
            v12 = 0.0;
            break;
          case 3:
            v12 = 1.57079633;
            break;
          case 4:
            v12 = -1.57079633;
            break;
          case 2:
            v12 = v12 + -3.14159265;
            break;
          default:
            v12 = 3.14159265;
            if (orientation != 2)
            {
              v12 = 0.0;
            }

            break;
        }

        wallpaperContainerView = self->_wallpaperContainerView;
        CGAffineTransformMakeRotation(&v21, v12);
        UIIntegralTransform();
        [(UIView *)wallpaperContainerView setTransform:buf];
        v16 = self->_wallpaperContainerView;
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen _referenceBounds];
        [(UIView *)v16 setBounds:?];

        v18 = self->_wallpaperContainerView;
        [(UIView *)v18 bounds];
        MidX = CGRectGetMidX(v27);
        [(UIView *)self->_wallpaperContainerView bounds];
        [(UIView *)v18 setCenter:MidX, CGRectGetMidY(v28)];
      }

      else
      {
        v13 = self->_wallpaperContainerView;
        switch(orientation)
        {
          case 1:
            v14 = 0.0;
            break;
          case 3:
            v14 = 1.57079633;
            break;
          case 4:
            v14 = -1.57079633;
            break;
          default:
            v14 = 3.14159265;
            if (orientation != 2)
            {
              v14 = 0.0;
            }

            break;
        }

        CGAffineTransformMakeRotation(&v21, v14);
        UIIntegralTransform();
        [(UIView *)v13 setTransform:buf];
        v20 = self->_wallpaperContainerView;
        [(UIWindow *)self->_wallpaperWindow bounds];
        [(UIView *)v20 setFrame:?];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      [(PBUIWallpaperPresenting_Staged *)self->_wallpaperPresenter noteWillAnimateToInterfaceOrientation:orientation duration:duration];
    }

    else if (objc_opt_respondsToSelector())
    {
      [(PBUIWallpaperPresenting_Staged *)self->_wallpaperPresenter noteWillAnimateToInterfaceOrientation:orientation];
    }
  }
}

- (void)activeInterfaceOrientationDidChangeToOrientation:(int64_t)orientation willAnimateWithDuration:(double)duration fromOrientation:(int64_t)fromOrientation
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = SBWorkspaceApplicationSceneHandlesInLockedOrUnlockedEnvironmentLayoutState();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __114__SBWallpaperController_activeInterfaceOrientationDidChangeToOrientation_willAnimateWithDuration_fromOrientation___block_invoke;
  v12[3] = &unk_2783B61E0;
  v12[4] = &v17;
  v12[5] = &v13;
  [v9 enumerateObjectsUsingBlock:v12];

  if (*(v18 + 24) == 1)
  {
    if ((v14[3] & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (self->_orientation == orientation)
  {
    goto LABEL_7;
  }

  if ([(SBWallpaperController *)self _isAcceptingOrientationChangesFromSource:1])
  {
    [(SBWallpaperController *)self orientationSource:1 willRotateToInterfaceOrientation:orientation duration:duration];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __114__SBWallpaperController_activeInterfaceOrientationDidChangeToOrientation_willAnimateWithDuration_fromOrientation___block_invoke_2;
    v11[3] = &unk_2783A8C40;
    v11[4] = self;
    v11[5] = orientation;
    *&v11[6] = duration;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __114__SBWallpaperController_activeInterfaceOrientationDidChangeToOrientation_willAnimateWithDuration_fromOrientation___block_invoke_3;
    v10[3] = &unk_2783B3C38;
    v10[4] = self;
    v10[5] = fromOrientation;
    [MEMORY[0x277D75D18] animateWithDuration:v11 animations:v10 completion:duration];
  }

LABEL_7:
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
}

void __114__SBWallpaperController_activeInterfaceOrientationDidChangeToOrientation_willAnimateWithDuration_fromOrientation___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  *(*(*(a1 + 32) + 8) + 24) = 1;
  v6 = v5;
  if (([v5 isTranslucent] & 1) != 0 || objc_msgSend(v6, "wantsEnhancedWindowingEnabled"))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (id)wallpaperView:(id)view wallpaperConfigurationIncludingValueTypes:(unint64_t)types
{
  wallpaperConfigurationManager = [(SBWallpaperController *)self wallpaperConfigurationManager];
  v6 = [wallpaperConfigurationManager wallpaperConfigurationForVariant:1 includingValuesForTypes:types];

  return v6;
}

- (void)wallpaperServer:(id)server fetchThumbnailDataForVariant:(int64_t)variant completionHandler:(id)handler
{
  handlerCopy = handler;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__SBWallpaperController_wallpaperServer_fetchThumbnailDataForVariant_completionHandler___block_invoke;
  block[3] = &unk_2783AB990;
  v10 = handlerCopy;
  variantCopy = variant;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __88__SBWallpaperController_wallpaperServer_fetchThumbnailDataForVariant_completionHandler___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) wallpaperConfigurationManager];
  v2 = [v5 wallpaperConfigurationForVariant:*(a1 + 48) includingValuesForTypes:8];
  v3 = [v2 wallpaperThumbnailImageData];
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

- (void)wallpaperServer:(id)server fetchOriginalImageDataForVariant:(int64_t)variant completionHandler:(id)handler
{
  handlerCopy = handler;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__SBWallpaperController_wallpaperServer_fetchOriginalImageDataForVariant_completionHandler___block_invoke;
  block[3] = &unk_2783AB990;
  v10 = handlerCopy;
  variantCopy = variant;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __92__SBWallpaperController_wallpaperServer_fetchOriginalImageDataForVariant_completionHandler___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) wallpaperConfigurationManager];
  v2 = [v6 wallpaperConfigurationForVariant:*(a1 + 48) includingValuesForTypes:2];
  v3 = [v2 wallpaperOriginalImage];
  v4 = UIImagePNGRepresentation(v3);
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }
}

- (void)wallpaperServer:(id)server fetchOriginalVideoURLDataForVariant:(int64_t)variant completionHandler:(id)handler
{
  handlerCopy = handler;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__SBWallpaperController_wallpaperServer_fetchOriginalVideoURLDataForVariant_completionHandler___block_invoke;
  block[3] = &unk_2783AB990;
  v10 = handlerCopy;
  variantCopy = variant;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __95__SBWallpaperController_wallpaperServer_fetchOriginalVideoURLDataForVariant_completionHandler___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) wallpaperConfigurationManager];
  v2 = [v6 wallpaperConfigurationForVariant:*(a1 + 48) includingValuesForTypes:2];
  v3 = [v2 originalVideoURL];
  v4 = [v3 dataRepresentation];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }
}

- (void)wallpaperServer:(id)server fetchContentCutoutBoundsForVariant:(int64_t)variant orientation:(int64_t)orientation completionHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __106__SBWallpaperController_wallpaperServer_fetchContentCutoutBoundsForVariant_orientation_completionHandler___block_invoke;
  v9[3] = &unk_2783B2E30;
  v10 = handlerCopy;
  orientationCopy = orientation;
  v8 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

uint64_t __106__SBWallpaperController_wallpaperServer_fetchContentCutoutBoundsForVariant_orientation_completionHandler___block_invoke(uint64_t a1)
{
  [MEMORY[0x277D02BD8] normalizedContentCutoutBoundsForOrientation:*(a1 + 40)];
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)wallpaperServer:(id)server fetchLockScreenContentCutoutBoundsForOrientation:(int64_t)orientation completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = handlerCopy;
  if (handlerCopy)
  {
    posterBoardService = self->_posterBoardService;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __108__SBWallpaperController_wallpaperServer_fetchLockScreenContentCutoutBoundsForOrientation_completionHandler___block_invoke;
    v10[3] = &unk_2783B6208;
    v11 = handlerCopy;
    [(PRSService *)posterBoardService fetchContentCutoutBoundsForActivePosterWithOrientation:orientation completionHandler:v10];
  }
}

uint64_t __108__SBWallpaperController_wallpaperServer_fetchLockScreenContentCutoutBoundsForOrientation_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  a4.n128_u64[0] = *MEMORY[0x277CBF398];
  a5.n128_u64[0] = *(MEMORY[0x277CBF398] + 8);
  a6.n128_u64[0] = *(MEMORY[0x277CBF398] + 16);
  a7.n128_u64[0] = *(MEMORY[0x277CBF398] + 24);
  if (a2 && !a3)
  {
    [a2 bs_CGRectValue];
  }

  v8 = *(*(a1 + 32) + 16);

  return v8(a4, a5, a6, a7);
}

- (void)wallpaperServer:(id)server fetchLockScreenMaximalContentCutoutBoundsForOrientation:(int64_t)orientation completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = handlerCopy;
  if (handlerCopy)
  {
    posterBoardService = self->_posterBoardService;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __115__SBWallpaperController_wallpaperServer_fetchLockScreenMaximalContentCutoutBoundsForOrientation_completionHandler___block_invoke;
    v10[3] = &unk_2783B6208;
    v11 = handlerCopy;
    [(PRSService *)posterBoardService fetchMaximalContentCutoutBoundsForOrientation:orientation completionHandler:v10];
  }
}

uint64_t __115__SBWallpaperController_wallpaperServer_fetchLockScreenMaximalContentCutoutBoundsForOrientation_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  a4.n128_u64[0] = *MEMORY[0x277CBF398];
  a5.n128_u64[0] = *(MEMORY[0x277CBF398] + 8);
  a6.n128_u64[0] = *(MEMORY[0x277CBF398] + 16);
  a7.n128_u64[0] = *(MEMORY[0x277CBF398] + 24);
  if (a2 && !a3)
  {
    [a2 bs_CGRectValue];
  }

  v8 = *(*(a1 + 32) + 16);

  return v8(a4, a5, a6, a7);
}

- (void)wallpaperServer:(id)server fetchLockScreenExtendedContentCutoutBoundsForOrientation:(int64_t)orientation completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = handlerCopy;
  if (handlerCopy)
  {
    posterBoardService = self->_posterBoardService;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __116__SBWallpaperController_wallpaperServer_fetchLockScreenExtendedContentCutoutBoundsForOrientation_completionHandler___block_invoke;
    v10[3] = &unk_2783B6208;
    v11 = handlerCopy;
    [(PRSService *)posterBoardService fetchExtendedContentCutoutBoundsForOrientation:orientation completionHandler:v10];
  }
}

uint64_t __116__SBWallpaperController_wallpaperServer_fetchLockScreenExtendedContentCutoutBoundsForOrientation_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  a4.n128_u64[0] = *MEMORY[0x277CBF398];
  a5.n128_u64[0] = *(MEMORY[0x277CBF398] + 8);
  a6.n128_u64[0] = *(MEMORY[0x277CBF398] + 16);
  a7.n128_u64[0] = *(MEMORY[0x277CBF398] + 24);
  if (a2 && !a3)
  {
    [a2 bs_CGRectValue];
  }

  v8 = *(*(a1 + 32) + 16);

  return v8(a4, a5, a6, a7);
}

- (void)wallpaperServer:(id)server fetchObscurableBoundsForOrientation:(int64_t)orientation completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = handlerCopy;
  if (handlerCopy)
  {
    posterBoardService = self->_posterBoardService;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __95__SBWallpaperController_wallpaperServer_fetchObscurableBoundsForOrientation_completionHandler___block_invoke;
    v10[3] = &unk_2783B6230;
    v10[4] = self;
    orientationCopy = orientation;
    v11 = handlerCopy;
    [(PRSService *)posterBoardService fetchActivePosterConfiguration:v10];
  }
}

void __95__SBWallpaperController_wallpaperServer_fetchObscurableBoundsForOrientation_completionHandler___block_invoke(uint64_t a1, void *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if (a2)
  {
    v7 = [a2 lockScreenPosterConfiguration];
    v8 = *(*(a1 + 32) + 136);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __95__SBWallpaperController_wallpaperServer_fetchObscurableBoundsForOrientation_completionHandler___block_invoke_2;
    v11[3] = &unk_2783B6208;
    v9 = *(a1 + 48);
    v12 = *(a1 + 40);
    [v8 fetchObscurableBoundsForPosterConfiguration:v7 orientation:v9 completionHandler:v11];
  }

  else
  {
    v10 = *(*(a1 + 40) + 16);
    a3.n128_u64[0] = *MEMORY[0x277CBF398];
    a4.n128_u64[0] = *(MEMORY[0x277CBF398] + 8);
    a5.n128_u64[0] = *(MEMORY[0x277CBF398] + 16);
    a6.n128_u64[0] = *(MEMORY[0x277CBF398] + 24);

    v10(a3, a4, a5, a6);
  }
}

uint64_t __95__SBWallpaperController_wallpaperServer_fetchObscurableBoundsForOrientation_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  a4.n128_u64[0] = *MEMORY[0x277CBF398];
  a5.n128_u64[0] = *(MEMORY[0x277CBF398] + 8);
  a6.n128_u64[0] = *(MEMORY[0x277CBF398] + 16);
  a7.n128_u64[0] = *(MEMORY[0x277CBF398] + 24);
  if (a2 && !a3)
  {
    [a2 bs_CGRectValue];
  }

  v8 = *(*(a1 + 32) + 16);

  return v8(a4, a5, a6, a7);
}

- (void)wallpaperServer:(id)server fetchLimitedOcclusionBoundsForOrientation:(int64_t)orientation completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = handlerCopy;
  if (handlerCopy)
  {
    posterBoardService = self->_posterBoardService;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __101__SBWallpaperController_wallpaperServer_fetchLimitedOcclusionBoundsForOrientation_completionHandler___block_invoke;
    v10[3] = &unk_2783B6230;
    v10[4] = self;
    orientationCopy = orientation;
    v11 = handlerCopy;
    [(PRSService *)posterBoardService fetchActivePosterConfiguration:v10];
  }
}

void __101__SBWallpaperController_wallpaperServer_fetchLimitedOcclusionBoundsForOrientation_completionHandler___block_invoke(uint64_t a1, void *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if (a2)
  {
    v7 = [a2 lockScreenPosterConfiguration];
    v8 = *(*(a1 + 32) + 136);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __101__SBWallpaperController_wallpaperServer_fetchLimitedOcclusionBoundsForOrientation_completionHandler___block_invoke_2;
    v11[3] = &unk_2783B6208;
    v9 = *(a1 + 48);
    v12 = *(a1 + 40);
    [v8 fetchLimitedOcclusionBoundsForPosterConfiguration:v7 orientation:v9 completionHandler:v11];
  }

  else
  {
    v10 = *(*(a1 + 40) + 16);
    a3.n128_u64[0] = *MEMORY[0x277CBF398];
    a4.n128_u64[0] = *(MEMORY[0x277CBF398] + 8);
    a5.n128_u64[0] = *(MEMORY[0x277CBF398] + 16);
    a6.n128_u64[0] = *(MEMORY[0x277CBF398] + 24);

    v10(a3, a4, a5, a6);
  }
}

uint64_t __101__SBWallpaperController_wallpaperServer_fetchLimitedOcclusionBoundsForOrientation_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  a4.n128_u64[0] = *MEMORY[0x277CBF398];
  a5.n128_u64[0] = *(MEMORY[0x277CBF398] + 8);
  a6.n128_u64[0] = *(MEMORY[0x277CBF398] + 16);
  a7.n128_u64[0] = *(MEMORY[0x277CBF398] + 24);
  if (a2 && !a3)
  {
    [a2 bs_CGRectValue];
  }

  v8 = *(*(a1 + 32) + 16);

  return v8(a4, a5, a6, a7);
}

- (void)wallpaperServer:(id)server fetchLockScreenTimeBoundsForOrientation:(int64_t)orientation completionHandler:(id)handler
{
  serverCopy = server;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (handlerCopy)
  {
    if ((orientation - 1) > 1)
    {
      v8.n128_u64[0] = *MEMORY[0x277CBF398];
      v9.n128_u64[0] = *(MEMORY[0x277CBF398] + 8);
      v10.n128_u64[0] = *(MEMORY[0x277CBF398] + 16);
      v11.n128_u64[0] = *(MEMORY[0x277CBF398] + 24);
      handlerCopy[2](handlerCopy, v8, v9, v10, v11);
    }

    else
    {
      [MEMORY[0x277D02CF0] frameForElements:1 variant:1];
      v12[2](v12, v13, v14, v15, v16);
    }
  }
}

- (void)wallpaperServer:(id)server fetchLockScreenSubtitleBoundsForOrientation:(int64_t)orientation completionHandler:(id)handler
{
  serverCopy = server;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (handlerCopy)
  {
    if ((orientation - 1) > 1)
    {
      v8.n128_u64[0] = *MEMORY[0x277CBF398];
      v9.n128_u64[0] = *(MEMORY[0x277CBF398] + 8);
      v10.n128_u64[0] = *(MEMORY[0x277CBF398] + 16);
      v11.n128_u64[0] = *(MEMORY[0x277CBF398] + 24);
      handlerCopy[2](handlerCopy, v8, v9, v10, v11);
    }

    else
    {
      [MEMORY[0x277D02CF0] frameForElements:2 variant:1];
      v12[2](v12, v13, v14, v15, v16);
    }
  }
}

- (void)wallpaperServer:(id)server fetchAdaptiveTimeHeightLimitsForContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v7 = MEMORY[0x277D02CE8];
    contextCopy = context;
    v9 = objc_alloc_init(v7);
    [v9 setOrientation:{objc_msgSend(contextCopy, "orientation")}];
    hasSidebarContents = [contextCopy hasSidebarContents];

    [v9 setHasSidebarContents:hasSidebarContents];
    v11 = MEMORY[0x277D02CF0];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __99__SBWallpaperController_wallpaperServer_fetchAdaptiveTimeHeightLimitsForContext_completionHandler___block_invoke;
    v12[3] = &unk_2783B6258;
    v13 = handlerCopy;
    [v11 minimumAndMaximumAdaptiveTimeHeightForContext:v9 result:v12];
  }
}

- (void)wallpaperServer:(id)server fetchAdaptiveTimeBoundsForContext:(id)context timeHeight:(double)height completionHandler:(id)handler
{
  if (handler)
  {
    v8 = MEMORY[0x277D02CE8];
    handlerCopy = handler;
    contextCopy = context;
    v12 = objc_alloc_init(v8);
    [v12 setOrientation:{objc_msgSend(contextCopy, "orientation")}];
    hasSidebarContents = [contextCopy hasSidebarContents];

    [v12 setHasSidebarContents:hasSidebarContents];
    [MEMORY[0x277D02CF0] adaptiveTimeFrameForContext:v12 timeHeight:height];
    handlerCopy[2](handlerCopy);
  }
}

- (CGRect)_screenBoundsForOrientation:(int64_t)orientation
{
  v3 = orientation - 1;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v22.origin.x = v6;
  v22.origin.y = v8;
  v22.size.width = v10;
  v22.size.height = v12;
  Height = CGRectGetHeight(v22);
  v23.origin.x = v6;
  v23.origin.y = v8;
  v23.size.width = v10;
  v23.size.height = v12;
  Width = CGRectGetWidth(v23);
  if (Height >= Width)
  {
    v15 = Height;
  }

  else
  {
    v15 = Width;
  }

  v24.origin.x = v6;
  v24.origin.y = v8;
  v24.size.width = v10;
  v24.size.height = v12;
  v16 = CGRectGetHeight(v24);
  v25.origin.x = v6;
  v25.origin.y = v8;
  v25.size.width = v10;
  v25.size.height = v12;
  v17 = CGRectGetWidth(v25);
  if (v16 < v17)
  {
    v17 = v16;
  }

  if (v3 >= 2)
  {
    v18 = v15;
  }

  else
  {
    v18 = v17;
  }

  if (v3 >= 2)
  {
    v19 = v17;
  }

  else
  {
    v19 = v15;
  }

  v20 = 0.0;
  v21 = 0.0;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)wallpaperServer:(id)server setWallpaperVideoWithWallpaperMode:(id)mode cropRect:(CGRect)rect wallpaperMode:(int64_t)wallpaperMode completionHandler:(id)handler
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  modeCopy = mode;
  handlerCopy = handler;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __117__SBWallpaperController_wallpaperServer_setWallpaperVideoWithWallpaperMode_cropRect_wallpaperMode_completionHandler___block_invoke;
  v18[3] = &unk_2783B6280;
  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  v19 = modeCopy;
  selfCopy = self;
  wallpaperModeCopy = wallpaperMode;
  v21 = handlerCopy;
  v16 = handlerCopy;
  v17 = modeCopy;
  dispatch_async(MEMORY[0x277D85CD0], v18);
}

void __117__SBWallpaperController_wallpaperServer_setWallpaperVideoWithWallpaperMode_cropRect_wallpaperMode_completionHandler___block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(a1 + 32)];
  IsNull = CGRectIsNull(*(a1 + 56));
  v3 = [*(a1 + 40) wallpaperConfigurationManager];
  [v3 setVideoURL:v4 forVariant:0 shoudCrop:!IsNull relativeCropRect:*(a1 + 88) wallpaperMode:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];

  (*(*(a1 + 48) + 16))();
}

- (void)wallpaperServer:(id)server setWallpaperColorName:(id)name forVariants:(int64_t)variants completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __93__SBWallpaperController_wallpaperServer_setWallpaperColorName_forVariants_completionHandler___block_invoke;
  v13[3] = &unk_2783AB780;
  v13[4] = self;
  v14 = nameCopy;
  v15 = handlerCopy;
  variantsCopy = variants;
  v11 = handlerCopy;
  v12 = nameCopy;
  dispatch_async(MEMORY[0x277D85CD0], v13);
}

uint64_t __93__SBWallpaperController_wallpaperServer_setWallpaperColorName_forVariants_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) wallpaperConfigurationManager];
  [v2 setWallpaperColorName:*(a1 + 40) forVariants:*(a1 + 56)];

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (void)wallpaperServer:(id)server setWallpaperColor:(id)color darkColor:(id)darkColor forVariants:(int64_t)variants completionHandler:(id)handler
{
  colorCopy = color;
  darkColorCopy = darkColor;
  handlerCopy = handler;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__SBWallpaperController_wallpaperServer_setWallpaperColor_darkColor_forVariants_completionHandler___block_invoke;
  block[3] = &unk_2783AA4F8;
  v18 = colorCopy;
  v19 = darkColorCopy;
  v21 = handlerCopy;
  variantsCopy = variants;
  selfCopy = self;
  v14 = handlerCopy;
  v15 = darkColorCopy;
  v16 = colorCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __99__SBWallpaperController_wallpaperServer_setWallpaperColor_darkColor_forVariants_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = MEMORY[0x277D75348];
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __99__SBWallpaperController_wallpaperServer_setWallpaperColor_darkColor_forVariants_completionHandler___block_invoke_2;
    v10 = &unk_2783B62A8;
    v11 = v3;
    v12 = *(a1 + 32);
    v5 = [v4 colorWithDynamicProvider:&v7];

    v2 = v5;
  }

  v6 = [*(a1 + 48) wallpaperConfigurationManager];
  [v6 setWallpaperColor:v2 forVariants:*(a1 + 64)];

  (*(*(a1 + 56) + 16))();
}

id __99__SBWallpaperController_wallpaperServer_setWallpaperColor_darkColor_forVariants_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 userInterfaceStyle];
  v4 = 40;
  if (v3 == 2)
  {
    v4 = 32;
  }

  v5 = *(a1 + v4);

  return v5;
}

- (void)wallpaperServer:(id)server setWallpaperGradient:(id)gradient forVariants:(int64_t)variants completionHandler:(id)handler
{
  gradientCopy = gradient;
  handlerCopy = handler;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __92__SBWallpaperController_wallpaperServer_setWallpaperGradient_forVariants_completionHandler___block_invoke;
  v13[3] = &unk_2783AB780;
  v13[4] = self;
  v14 = gradientCopy;
  v15 = handlerCopy;
  variantsCopy = variants;
  v11 = handlerCopy;
  v12 = gradientCopy;
  dispatch_async(MEMORY[0x277D85CD0], v13);
}

uint64_t __92__SBWallpaperController_wallpaperServer_setWallpaperGradient_forVariants_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) wallpaperConfigurationManager];
  [v2 setWallpaperGradient:*(a1 + 40) forVariants:*(a1 + 56)];

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (void)wallpaperServer:(id)server restoreDefaultWallpaperWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __86__SBWallpaperController_wallpaperServer_restoreDefaultWallpaperWithCompletionHandler___block_invoke;
  v7[3] = &unk_2783A98A0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __86__SBWallpaperController_wallpaperServer_restoreDefaultWallpaperWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) wallpaperConfigurationManager];
  [v2 restoreDefaultWallpaperForAllVariantsAndNotify:1];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)wallpaperServer:(id)server triggerPosterSignificantEventCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __88__SBWallpaperController_wallpaperServer_triggerPosterSignificantEventCompletionHandler___block_invoke;
  v7[3] = &unk_2783A98A0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __88__SBWallpaperController_wallpaperServer_triggerPosterSignificantEventCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) triggerPosterSignificantEvent];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)wallpaperServer:(id)server fetchSignificantEventsCounterForPosterWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __112__SBWallpaperController_wallpaperServer_fetchSignificantEventsCounterForPosterWithIdentifier_completionHandler___block_invoke;
  block[3] = &unk_2783AA1E8;
  v12 = identifierCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __112__SBWallpaperController_wallpaperServer_fetchSignificantEventsCounterForPosterWithIdentifier_completionHandler___block_invoke(void *a1)
{
  if (a1[4] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [*(a1[5] + 104) significantEventsCounterForPosterWithIdentifier:a1[4]];
  }

  else if (objc_opt_respondsToSelector())
  {
    [*(a1[5] + 104) posterSignificantEventsCounter];
  }

  v2 = *(a1[6] + 16);

  return v2();
}

- (void)wallpaperServer:(id)server handleQuickActionConfigurationRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__SBWallpaperController_wallpaperServer_handleQuickActionConfigurationRequest_completionHandler___block_invoke;
  block[3] = &unk_2783AA1E8;
  block[4] = self;
  v12 = requestCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = requestCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __97__SBWallpaperController_wallpaperServer_handleQuickActionConfigurationRequest_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D02C70]);
  v3 = [*(a1 + 32) _posterQuickActionsConfigurationFromConfigurationRequest:*(a1 + 40)];
  v6 = [v2 initWithPosterActionsConfiguration:v3];

  v4 = +[SBLockScreenManager sharedInstance];
  v5 = [v4 coverSheetViewController];
  [v5 setQuickActionsConfiguration:v6];

  (*(*(a1 + 48) + 16))();
}

- (id)_posterQuickActionsConfigurationFromConfigurationRequest:(id)request
{
  requestCopy = request;
  leadingQuickActionControlRequest = [requestCopy leadingQuickActionControlRequest];
  trailingQuickActionControlRequest = [requestCopy trailingQuickActionControlRequest];

  if ([leadingQuickActionControlRequest quickActionCategory] == 3)
  {
    extensionBundleIdentifier = [leadingQuickActionControlRequest extensionBundleIdentifier];
    containerBundleIdentifier = [leadingQuickActionControlRequest containerBundleIdentifier];
    kind = [leadingQuickActionControlRequest kind];
    v10 = [(SBWallpaperController *)self _controlIdentityForExtensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier kind:kind];

    v11 = objc_alloc(MEMORY[0x277D3EE48]);
    v12 = v11;
    if (v10)
    {
      type = [leadingQuickActionControlRequest type];
      if ((type - 1) >= 3)
      {
        v14 = 0;
      }

      else
      {
        v14 = type;
      }

      v15 = [v12 initWithControlIdentity:v10 type:v14];
    }

    else
    {
      v15 = [v11 initWithCategory:0];
    }

    v19 = v15;
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x277D3EE48]);
    quickActionCategory = [leadingQuickActionControlRequest quickActionCategory];
    if ((quickActionCategory - 1) >= 3)
    {
      v18 = 0;
    }

    else
    {
      v18 = quickActionCategory;
    }

    v19 = [v16 initWithCategory:v18];
  }

  if ([trailingQuickActionControlRequest quickActionCategory] == 3)
  {
    extensionBundleIdentifier2 = [trailingQuickActionControlRequest extensionBundleIdentifier];
    containerBundleIdentifier2 = [trailingQuickActionControlRequest containerBundleIdentifier];
    kind2 = [trailingQuickActionControlRequest kind];
    v23 = [(SBWallpaperController *)self _controlIdentityForExtensionBundleIdentifier:extensionBundleIdentifier2 containerBundleIdentifier:containerBundleIdentifier2 kind:kind2];

    v24 = objc_alloc(MEMORY[0x277D3EE48]);
    v25 = v24;
    if (v23)
    {
      type2 = [trailingQuickActionControlRequest type];
      if ((type2 - 1) >= 3)
      {
        v27 = 0;
      }

      else
      {
        v27 = type2;
      }

      v28 = [v25 initWithControlIdentity:v23 type:v27];
    }

    else
    {
      v28 = [v24 initWithCategory:0];
    }

    v32 = v28;
  }

  else
  {
    v29 = objc_alloc(MEMORY[0x277D3EE48]);
    quickActionCategory2 = [trailingQuickActionControlRequest quickActionCategory];
    if ((quickActionCategory2 - 1) >= 3)
    {
      v31 = 0;
    }

    else
    {
      v31 = quickActionCategory2;
    }

    v32 = [v29 initWithCategory:v31];
  }

  v33 = [objc_alloc(MEMORY[0x277D3EDF0]) initWithLeadingControl:v19 trailingControl:v32];

  return v33;
}

- (id)_controlIdentityForExtensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier kind:(id)kind
{
  v38 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  kindCopy = kind;
  v27 = bundleIdentifierCopy;
  v10 = [objc_alloc(MEMORY[0x277CFA258]) initWithExtensionBundleIdentifier:identifierCopy containerBundleIdentifier:bundleIdentifierCopy deviceIdentifier:0];
  v11 = [objc_alloc(MEMORY[0x277CFA218]) initIncludingVisible:1 hidden:1];
  v12 = objc_alloc(MEMORY[0x277CFA3C0]);
  v13 = objc_alloc_init(MEMORY[0x277CFA390]);
  v14 = [v12 initWithWidgetsPredicate:v13 controlsPredicate:v11 includeIntents:1];

  v15 = [objc_alloc(MEMORY[0x277CFA3B8]) initWithOptions:v14];
  extensions = [v15 extensions];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __101__SBWallpaperController__controlIdentityForExtensionBundleIdentifier_containerBundleIdentifier_kind___block_invoke;
  v30[3] = &unk_2783B62D0;
  v17 = v10;
  v31 = v17;
  v18 = [extensions bs_firstObjectPassingTest:v30];

  orderedControlDescriptors = [v18 orderedControlDescriptors];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __101__SBWallpaperController__controlIdentityForExtensionBundleIdentifier_containerBundleIdentifier_kind___block_invoke_2;
  v28[3] = &unk_2783B62F8;
  v20 = kindCopy;
  v29 = v20;
  v21 = [orderedControlDescriptors bs_firstObjectPassingTest:v28];

  if (v21)
  {
    v22 = identifierCopy;
    v23 = objc_alloc(MEMORY[0x277CFA228]);
    defaultIntentReference = [v21 defaultIntentReference];
    v25 = [v23 initWithExtensionIdentity:v17 kind:v20 intentReference:defaultIntentReference];
  }

  else
  {
    defaultIntentReference = SBLogWallpaper();
    if (os_log_type_enabled(defaultIntentReference, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v22 = identifierCopy;
      v33 = identifierCopy;
      v34 = 2112;
      v35 = v27;
      v36 = 2112;
      v37 = v20;
      _os_log_error_impl(&dword_21ED4E000, defaultIntentReference, OS_LOG_TYPE_ERROR, "Could not find CHSControlIdentity for extensionBundleIdentifier:%@ containerBundleIdentifier:%@ kind:%@", buf, 0x20u);
    }

    else
    {
      v22 = identifierCopy;
    }

    v25 = 0;
  }

  return v25;
}

uint64_t __101__SBWallpaperController__controlIdentityForExtensionBundleIdentifier_containerBundleIdentifier_kind___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identity];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t __101__SBWallpaperController__controlIdentityForExtensionBundleIdentifier_containerBundleIdentifier_kind___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 kind];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)activeActivityDidChangeForManager:(id)manager
{
  if (self->_activityManager == manager)
  {
    posterBoardService = self->_posterBoardService;
    activeActivity = [manager activeActivity];
    activityUniqueIdentifier = [activeActivity activityUniqueIdentifier];
    [(PRSService *)posterBoardService notifyFocusModeDidChange:activityUniqueIdentifier completion:&__block_literal_global_287];
  }
}

void __59__SBWallpaperController_activeActivityDidChangeForManager___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SBLogCommon();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __59__SBWallpaperController_activeActivityDidChangeForManager___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Successfully notified PRS of new focus mode.", v5, 2u);
  }
}

- (void)availableActivitiesDidChangeForManager:(id)manager
{
  if (self->_activityManager == manager)
  {
    availableActivities = [manager availableActivities];
    v6 = [availableActivities bs_map:&__block_literal_global_290];

    [(PRSService *)self->_posterBoardService notifyAvailableFocusModesDidChange:v6 completion:&__block_literal_global_292];
  }
}

void __64__SBWallpaperController_availableActivitiesDidChangeForManager___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SBLogCommon();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __64__SBWallpaperController_availableActivitiesDidChangeForManager___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Successfully notified PRS that available focus modes changed.", v5, 2u);
  }
}

- (void)addReachabilityObserver:(id)observer
{
  observerCopy = observer;
  v4 = +[SBReachabilityManager sharedInstance];
  [v4 addObserver:observerCopy];
}

- (void)removeReachabilityObserver:(id)observer
{
  observerCopy = observer;
  v4 = +[SBReachabilityManager sharedInstance];
  [v4 removeObserver:observerCopy];
}

- (BOOL)isWindowIgnoredForReachability:(id)reachability
{
  reachabilityCopy = reachability;
  v4 = +[SBReachabilityManager sharedInstance];
  ignoredWindows = [v4 ignoredWindows];
  v6 = [ignoredWindows containsObject:reachabilityCopy];

  return v6;
}

- (void)updatePosterSwitcherSnapshots
{
  scenesForBacklightSession = [(SBWallpaperController *)self scenesForBacklightSession];
  anyObject = [scenesForBacklightSession anyObject];

  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  screen = [WeakRetained screen];
  v7 = screen;
  if (screen)
  {
    mainScreen = screen;
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
  }

  v9 = mainScreen;

  traitCollection = [v9 traitCollection];
  settings = [anyObject settings];
  displayConfiguration = [settings displayConfiguration];
  [displayConfiguration pointScale];
  v14 = v13;
  if (v13 == 0.0)
  {
    [v9 scale];
    v14 = v15;
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __54__SBWallpaperController_updatePosterSwitcherSnapshots__block_invoke;
  v18[3] = &unk_2783B6368;
  v19 = anyObject;
  v20 = traitCollection;
  selfCopy = self;
  v22 = v14;
  v16 = traitCollection;
  v17 = anyObject;
  [v17 pruis_snapshotSceneWithOptions:24 traitCollection:v16 completion:v18];
}

void __54__SBWallpaperController_updatePosterSwitcherSnapshots__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __54__SBWallpaperController_updatePosterSwitcherSnapshots__block_invoke_297;
    v9[3] = &unk_2783B6340;
    v6 = v4;
    v7 = *(a1 + 48);
    v10 = v6;
    v11 = v7;
    v12 = v3;
    v14 = *(a1 + 56);
    v13 = *(a1 + 40);
    [v6 pruis_snapshotSceneWithOptions:32 traitCollection:v5 completion:v9];
  }

  else
  {
    v8 = SBLogDashBoard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __54__SBWallpaperController_updatePosterSwitcherSnapshots__block_invoke_cold_1(v8);
    }

    [*(a1 + 32) pruis_restoreSceneAfterSnapshottingWithCompletion:&__block_literal_global_296_0];
  }
}

void __54__SBWallpaperController_updatePosterSwitcherSnapshots__block_invoke_293(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = SBLogDashBoard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __54__SBWallpaperController_updatePosterSwitcherSnapshots__block_invoke_293_cold_1();
    }
  }
}

void __54__SBWallpaperController_updatePosterSwitcherSnapshots__block_invoke_297(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = SBLogDashBoard();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Scene did not provide floating layer snapshot for poster switcher.", v8, 2u);
    }
  }

  [*(a1 + 32) pruis_restoreSceneAfterSnapshottingWithCompletion:&__block_literal_global_300];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) IOSurface];
  v7 = [v3 IOSurface];
  [v5 _ingestPrimaryWallpaperLayersSnapshotIOSurface:v6 floatingWallpaperLayerSnapshotIOSurface:v7 snapshotScale:*(a1 + 56) traitCollection:&__block_literal_global_303 withCompletion:*(a1 + 64)];
}

void __54__SBWallpaperController_updatePosterSwitcherSnapshots__block_invoke_298(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = SBLogDashBoard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __54__SBWallpaperController_updatePosterSwitcherSnapshots__block_invoke_298_cold_1();
    }
  }
}

void __54__SBWallpaperController_updatePosterSwitcherSnapshots__block_invoke_301(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = SBLogDashBoard();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __54__SBWallpaperController_updatePosterSwitcherSnapshots__block_invoke_301_cold_1();
    }
  }
}

- (void)_ingestPrimaryWallpaperLayersSnapshotIOSurface:(id)surface floatingWallpaperLayerSnapshotIOSurface:(id)oSurface snapshotScale:(double)scale traitCollection:(id)collection withCompletion:(id)completion
{
  completionCopy = completion;
  v13 = MEMORY[0x277D3E9B0];
  collectionCopy = collection;
  oSurfaceCopy = oSurface;
  surfaceCopy = surface;
  v17 = [[v13 alloc] initWithIOSurface:surfaceCopy];

  v18 = [objc_alloc(MEMORY[0x277D3E9B0]) initWithIOSurface:oSurfaceCopy];
  v19 = objc_alloc(MEMORY[0x277D3E9B8]);
  prs_interfaceStyle = [collectionCopy prs_interfaceStyle];
  prs_accessibilityContrast = [collectionCopy prs_accessibilityContrast];

  v22 = [v19 initWithPrimaryLayersSnapshot:v17 floatingLayerSnapshot:v18 snapshotScale:prs_interfaceStyle interfaceStyle:prs_accessibilityContrast accessibilityContrast:scale];
  posterBoardService = self->_posterBoardService;
  activeLockScreenPosterConfiguration = self->_activeLockScreenPosterConfiguration;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __157__SBWallpaperController__ingestPrimaryWallpaperLayersSnapshotIOSurface_floatingWallpaperLayerSnapshotIOSurface_snapshotScale_traitCollection_withCompletion___block_invoke;
  v26[3] = &unk_2783A9FC8;
  v27 = completionCopy;
  v25 = completionCopy;
  [(PRSService *)posterBoardService ingestSnapshotCollection:v22 forPosterConfiguration:activeLockScreenPosterConfiguration completion:v26];
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  v10 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v6 = SBLogWallpaper();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = [notificationCopy isWallpaperAllowed];
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Profile connection settings changed, isWallpaperAllowed: %{BOOL}u", v9, 8u);
  }

  isWallpaperAllowed = [notificationCopy isWallpaperAllowed];
  wallpaperPresenter = self->_wallpaperPresenter;
  if (isWallpaperAllowed)
  {
    [(PBUIWallpaperPresenting_Staged *)wallpaperPresenter removeWallpaperStyleForPriority:2 forVariant:1 withAnimationFactory:0];
    [(PBUIWallpaperPresenting_Staged *)self->_wallpaperPresenter removeWallpaperStyleForPriority:2 forVariant:0 withAnimationFactory:0];
  }

  else
  {
    [(PBUIWallpaperPresenting_Staged *)wallpaperPresenter setWallpaperStyle:2 forPriority:2 forVariant:1 withAnimationFactory:0];
    [(PBUIWallpaperPresenting_Staged *)self->_wallpaperPresenter setWallpaperStyle:2 forPriority:2 forVariant:0 withAnimationFactory:0];
  }
}

- (void)addWallpaperUnlockProgressObserver:(id)observer
{
  observerCopy = observer;
  wallpaperUnlockProgressObservers = self->_wallpaperUnlockProgressObservers;
  v8 = observerCopy;
  if (!wallpaperUnlockProgressObservers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_wallpaperUnlockProgressObservers;
    self->_wallpaperUnlockProgressObservers = weakObjectsHashTable;

    observerCopy = v8;
    wallpaperUnlockProgressObservers = self->_wallpaperUnlockProgressObservers;
  }

  [(NSHashTable *)wallpaperUnlockProgressObservers addObject:observerCopy];
}

- (PBUIWallpaperPresentingDelegate)wallpaperPresentingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_wallpaperPresentingDelegate);

  return WeakRetained;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

void __54__SBWallpaperController__loadLastActiveConfigurations__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_16();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
}

void __54__SBWallpaperController__loadLastActiveConfigurations__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_16();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
}

- (void)_persistLastActiveLockScreenPosterConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_16();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

- (void)_persistLastActiveHomeScreenPosterConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_16();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

- (void)_updateForLockScreenPosterConfiguration:homeScreenPosterConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_updateForLockScreenPosterConfiguration:homeScreenPosterConfiguration:.cold.5()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_fault_impl(&dword_21ED4E000, v0, OS_LOG_TYPE_FAULT, "Unable to find extension bundle URL for config %{public}@", v1, 0xCu);
}

- (void)_updateForLockScreenPosterConfiguration:homeScreenPosterConfiguration:.cold.8()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end