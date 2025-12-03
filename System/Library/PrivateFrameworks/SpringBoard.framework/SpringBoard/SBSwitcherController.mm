@interface SBSwitcherController
- (BOOL)_appsLaunchFullScreenByDefault;
- (BOOL)_areContinuousExposeStripsUnoccluded;
- (BOOL)_areLayoutStateElements:(id)elements matchedWithAssociatedParticipants:(id)participants;
- (BOOL)_homeScreenIsOnFirstPage;
- (BOOL)_inSwitcherOrientationLockEligibleFullscreenApp:(id)app;
- (BOOL)_isDisplayItemFullScreen:(id)screen preferredAttributes:(id)attributes;
- (BOOL)_isFloatingDockFullyPresented;
- (BOOL)_isUnderUILock;
- (BOOL)_prefersDockHidden;
- (BOOL)_prefersStripHidden;
- (BOOL)_prefersStripHiddenAndDisabled;
- (BOOL)_setupSwitcherTraitsParticipantAndPolicySpecifiers;
- (BOOL)_shouldAcceleratedHomeButtonPressBegin;
- (BOOL)_updateLayoutPreferencesInSceneDataStoreForSceneHandleIfNeeded:(id)needed;
- (BOOL)activateHomeScreenWithSource:(int64_t)source animated:(BOOL)animated;
- (BOOL)activateMainSwitcherWithSource:(int64_t)source animated:(BOOL)animated;
- (BOOL)backgroundNethermostWindows;
- (BOOL)canPerformKeyboardShortcutAction:(int64_t)action forBundleIdentifier:(id)identifier orSceneIdentifier:(id)sceneIdentifier;
- (BOOL)cancelPeekWithSource:(int64_t)source animated:(BOOL)animated;
- (BOOL)dismissMainAndFloatingSwitchersWithSource:(int64_t)source animated:(BOOL)animated;
- (BOOL)dismissMainSwitcherWithSource:(int64_t)source animated:(BOOL)animated;
- (BOOL)handleHeadsetButtonPress:(BOOL)press;
- (BOOL)handleHomeButtonDoublePress;
- (BOOL)handleHomeButtonLongPress;
- (BOOL)handleHomeButtonPress;
- (BOOL)handleLockButtonPress;
- (BOOL)handleVoiceCommandButtonPress;
- (BOOL)handleVolumeDownButtonPress;
- (BOOL)handleVolumeUpButtonPress;
- (BOOL)hasAppLayoutForTransientOverlayViewController:(id)controller;
- (BOOL)hasTransientOverlayAppLayouts;
- (BOOL)isAcquiredTransientOverlayViewController:(id)controller;
- (BOOL)isAnyProtectedHiddenApplicationVisible;
- (BOOL)isAnySwitcherVisible;
- (BOOL)isChamoisMultitaskingEnabled;
- (BOOL)isFloatingSwitcherVisible;
- (BOOL)isInAnyPeekState;
- (BOOL)isInAppStatusBarHidden;
- (BOOL)isLeadingStatusBarRegionPreferredHiddenByApp;
- (BOOL)isMainSwitcherVisible;
- (BOOL)isMenuBarSupported;
- (BOOL)isOnExtendedDisplay;
- (BOOL)isStatusBarStyleControlledBySystem;
- (BOOL)isTrailingStatusBarRegionPreferredHiddenByApp;
- (BOOL)layoutContainsRole:(int64_t)role;
- (BOOL)shouldMorphFromPIPForTransitionContext:(id)context;
- (BOOL)shouldMorphToPIPForTransitionContext:(id)context;
- (BOOL)shouldProtectTopScreenEdgeForScene:(id)scene;
- (BOOL)toggleMainSwitcherWithSource:(int64_t)source animated:(BOOL)animated;
- (CGRect)_leftStatusBarPartIntersectionRegion;
- (CGRect)_rightStatusBarPartIntersectionRegion;
- (CGRect)containerBoundsForInterfaceOrientation:(int64_t)orientation;
- (CGRect)effectiveLeadingStatusBarPartFrame;
- (CGRect)effectiveTrailingStatusBarPartFrame;
- (CGRect)frameForCenterItemWithConfiguration:(int64_t)configuration interfaceOrientation:(int64_t)orientation;
- (CGRect)frameForFloatingAppLayoutInInterfaceOrientation:(int64_t)orientation floatingConfiguration:(int64_t)configuration;
- (CGRect)frameForItemWithRole:(int64_t)role inMainAppLayout:(id)layout interfaceOrientation:(int64_t)orientation;
- (CGRect)referenceFrameForInterfaceOrientation:(int64_t)orientation centerConfiguration:(int64_t)configuration;
- (CGRect)referenceFrameForInterfaceOrientation:(int64_t)orientation floatingConfiguration:(int64_t)configuration;
- (CGRect)referenceFrameForInterfaceOrientation:(int64_t)orientation layoutRole:(int64_t)role appLayout:(id)layout;
- (CGRect)sceneEntityFrameForWorkspaceEntity:(id)entity inLayoutState:(id)state;
- (CGRect)statusBarAvoidanceFrameForLayoutRole:(int64_t)role;
- (CGRect)statusBarAvoidanceFrameForLayoutRole:(int64_t)role layoutState:(id)state;
- (CGSize)_maxScreenSizeWithDockAndStripInset;
- (FBSDisplayIdentity)displayIdentity;
- (SBDisplayItemAttributedSize)_centerWindowSizeForPreviousFullscreenWindow;
- (SBLayoutState)layoutState;
- (SBSwitcherController)initWithWindowScene:(id)scene debugName:(id)name;
- (SBSwitcherControllerCoordinating)switcherCoordinator;
- (SBWindowScene)windowScene;
- (UIEdgeInsets)statusBarEdgeInsets;
- (char)_activityModeForScene:(id)scene;
- (char)_jetsamModeForScene:(id)scene;
- (double)contentContainerAspectRatio;
- (double)scaleForDownscaledSnapshotGenerationForSceneHandle:(id)handle;
- (double)windowControlsHorizontalSafeAreaPaddingForScene:(id)scene;
- (id)_ancillaryTransitionRequestForTransitionRequest:(id)request;
- (id)_appLayoutForScene:(id)scene;
- (id)_autoLayoutSpaceForAppLayout:(id)layout;
- (id)_buildHideMenuWithAdditionalOptions:(unint64_t)options;
- (id)_buildWindowArrangementMenuForKeyCommandRegistration:(BOOL)registration additionalOptions:(unint64_t)options;
- (id)_currentFloatingAppLayout;
- (id)_currentLayoutState;
- (id)_currentMainAppLayout;
- (id)_desktopSpaceItems;
- (id)_deviceApplicationSceneHandleForDisplayItem:(id)item;
- (id)_elementsOrientationsForParticipantsByElementIdentifier:(id)identifier;
- (id)_generateWindowManagementContext;
- (id)_liveOverlayForTraitsDelegate:(id)delegate;
- (id)_makeWorkspaceTransitionValidatorForActivatingMainSwitcherWithSource:(int64_t)source animated:(BOOL)animated;
- (id)_makeWorkspaceTransitionValidatorForDismissingMainSwitcherToAppLayout:(id)layout dismissFloatingSwitcher:(BOOL)switcher withSource:(int64_t)source animated:(BOOL)animated;
- (id)_makeWorkspaceTransitionValidatorForTogglingMainSwitcherWithSource:(int64_t)source animated:(BOOL)animated;
- (id)_managedMainDisplayItems;
- (id)_orientationStateDescription;
- (id)_orientationsForLayoutStateElements:(id)elements withAssociatedParticipants:(id)participants;
- (id)_previousDesktopSpaceItems;
- (id)_sceneEntitiesToForeground;
- (id)_sceneHandleForLayoutElement:(id)element;
- (id)_topmostDisplayItem;
- (id)_windowingConfiguration;
- (id)activeAndVisibleSceneIdentifiersForApplication:(id)application;
- (id)activeTransientOverlayPresentedAppLayout;
- (id)animationControllerForTransitionRequest:(id)request;
- (id)appLayoutForWorkspaceTransientOverlay:(id)overlay;
- (id)appLeadingStatusBarStyleRequest;
- (id)appTrailingStatusBarStyleRequest;
- (id)coordinateSpaceForInterfaceOrientation:(int64_t)orientation;
- (id)coordinateSpaceForLayoutElement:(id)element layoutState:(id)state;
- (id)coordinateSpaceForLayoutState:(id)state;
- (id)createWorkspaceTransientOverlayForAppLayout:(id)layout;
- (id)displayItemLayoutAttributesForScene:(id)scene;
- (id)displayItemLayoutAttributesProvider;
- (id)entityWithRole:(int64_t)role;
- (id)hideMenuWithOptions:(unint64_t)options;
- (id)layoutElementSizingPoliciesForLayoutState:(id)state;
- (id)layoutStateApplicationSceneHandles;
- (id)layoutStatePrimaryElement;
- (id)layoutStateSideElement;
- (id)layoutStateStudyLogData;
- (id)leadingStatusBarStyleRequest;
- (id)maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:(id)layout ignoreOcclusion:(BOOL)occlusion ignoreCentering:(BOOL)centering;
- (id)menuBarRecipientScene;
- (id)participantAssociatedSceneIdentityTokens:(id)tokens;
- (id)participantAssociatedWindows:(id)windows;
- (id)requestInAppStatusBarHiddenAssertionForReason:(id)reason animated:(BOOL)animated;
- (id)sceneHandleForLayoutElement:(id)element;
- (id)sceneHandleForTraitsParticipant:(id)participant;
- (id)sceneHandleForWhitePointAdaptivityStyle;
- (id)stateCaptureTitlePreamble;
- (id)statusBarActionsByPartIdentifier;
- (id)statusBarOverlayData;
- (id)statusBarStyleAttributesForScene:(id)scene;
- (id)trailingStatusBarStyleRequest;
- (id)traitsParticipantForSceneHandle:(id)handle;
- (id)traitsPipelineManager;
- (id)windowArrangementMenuWithOptions:(unint64_t)options;
- (id)windowControlsViewController;
- (int64_t)_interfaceOrientationForLayoutElementIdentifier:(id)identifier;
- (int64_t)floatingConfiguration;
- (int64_t)interfaceOrientationForLayoutElement:(id)element;
- (int64_t)interfaceOrientationForSceneHandle:(id)handle;
- (int64_t)overrideInterfaceOrientationMechanicsForSwitcherViewController:(id)controller;
- (int64_t)unlockedEnvironmentMode;
- (unint64_t)maximumNumberOfScenesOnStage;
- (unint64_t)switcherSupportedInterfaceOrientations;
- (void)_addInAppStatusBarHiddenAssertion:(id)assertion animated:(BOOL)animated;
- (void)_attemptContentViewInterfaceOrientationUpdateForPanGesture:(int64_t)gesture;
- (void)_coverSheetWillPerformTransition:(id)transition;
- (void)_dismissMedusaBanner;
- (void)_enqueueOrientationTransitionWithActuationContext:(id)context suggestedAnimator:(id)animator completionTask:(id)task validator:(id)validator label:(id)label;
- (void)_handleMultitaskingEnablementChange;
- (void)_initializeSlideOverDisplayItemIfNeededForcingStashed:(BOOL)stashed;
- (void)_invalidate;
- (void)_invalidateLayoutElementsTraitsParticipants;
- (void)_invalidateMedusaEducationBannerTimer;
- (void)_moveDisplayItemOutOfSlideOver:(id)over;
- (void)_moveDisplayItemToSlideOver:(id)over;
- (void)_noteAppLayoutMovedToFront:(id)front;
- (void)_noteLayoutStateEvaluationEndedWithParticipantsByElementIdentifiers:(id)identifiers delegatesByParticipant:(id)participant primaryDelegate:(id)delegate;
- (void)_noteSwitcherDropAnimationCompletedWithContext:(id)context;
- (void)_performSwitcherDropWithContext:(id)context;
- (void)_presentMedusaBanner:(int64_t)banner fireInterval:(double)interval dismissInterval:(double)dismissInterval;
- (void)_presentMedusaEducationBanner;
- (void)_reevaluateOrientationIfNecessary;
- (void)_removeInAppStatusBarHiddenAssertion:(id)assertion animated:(BOOL)animated;
- (void)_requestDismissalForHomeScreenBackgroundTaps:(BOOL)taps;
- (void)_setUpSwitcherWindowIfNeeded;
- (void)_setupSwitcherTraitsParticipantAndPolicySpecifiers;
- (void)_stopObservingSceneHandles;
- (void)_updateAppTransitionContext:(id)context withOrientationActuationContext:(id)actuationContext;
- (void)_updateAppTransitionContext:(id)context withOrientationContext:(id)orientationContext accountForSceneState:(BOOL)state primaryDelegate:(id)delegate;
- (void)_updateContentViewControllerIfNeeded;
- (void)_updateContentViewInterfaceOrientation:(int64_t)orientation;
- (void)_updateDisplayLayoutElementForLayoutState:(id)state;
- (void)_warmUpIconsForAppLayout:(id)layout;
- (void)_warmUpIconsForRecentAppLayouts;
- (void)_windowSceneCanvasSizeDidChange:(id)change;
- (void)actuateOrientationForTraitsDelegate:(id)delegate withContext:(id)context reasons:(int64_t)reasons;
- (void)addAcquiredTransientOverlayViewController:(id)controller forAppLayout:(id)layout;
- (void)addAppLayoutForDisplayItem:(id)item completion:(id)completion;
- (void)addAppLayoutForTransientOverlayViewController:(id)controller;
- (void)addCenterRoleAppLayoutForDisplayItem:(id)item completion:(id)completion;
- (void)appendDescriptionForParticipant:(id)participant withBuilder:(id)builder multilinePrefix:(id)prefix;
- (void)applyDemoLayoutAttributesToScene:(id)scene;
- (void)cleanUpAfterCoordinatedLayoutStateTransitionWithContext:(id)context;
- (void)client:(id)client attentionLostTimeoutDidExpire:(double)expire forConfigurationGeneration:(unint64_t)generation withAssociatedObject:(id)object;
- (void)configureRequest:(id)request forSwitcherTransitionRequest:(id)transitionRequest withEventLabel:(id)label;
- (void)dealloc;
- (void)demoMinimizeScene:(id)scene;
- (void)didBeginCoordinationWithCoordinator:(id)coordinator;
- (void)didChangeSettingsForParticipant:(id)participant context:(id)context;
- (void)enumerateTransientOverlayViewControllersUsingBlock:(id)block;
- (void)evaluateAppRequestedOrientationLock;
- (void)fluidSwitcherGestureManager:(id)manager clickReceivedForHomeGrabberView:(id)view;
- (void)fluidSwitcherGestureManager:(id)manager didBeginGesture:(id)gesture;
- (void)fluidSwitcherGestureManager:(id)manager didEndGesture:(id)gesture;
- (void)fluidSwitcherGestureManager:(id)manager didUpdateGesture:(id)gesture;
- (void)fluidSwitcherGestureManager:(id)manager tapReceivedForGrabberTongueAtEdge:(unint64_t)edge;
- (void)homeScreenControllerReceivedTouchInBackground:(id)background;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionWillEndWithTransitionContext:(id)context;
- (void)lockStateProvider:(id)provider didUpdateIsUILocked:(BOOL)locked;
- (void)performKeyboardShortcutAction:(int64_t)action forBundleIdentifier:(id)identifier orSceneIdentifier:(id)sceneIdentifier;
- (void)performTransitionWithContext:(id)context animated:(BOOL)animated completion:(id)completion;
- (void)prepareForCoordinatedLayoutStateTransitionWithContext:(id)context;
- (void)removeAcquiredTransientOverlayViewController:(id)controller;
- (void)removeAppLayoutTransientOverlayViewController:(id)controller;
- (void)sceneHandleDidRecognizeDoubleTapInDraggableArea:(id)area;
- (void)sceneHandleDidUpdateLayoutPreferences:(id)preferences;
- (void)setDisplayLayoutElementActive:(BOOL)active;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)switcherCoordinator;
- (void)switcherOrientation:(int64_t *)orientation elementsOrientations:(id *)orientations forTransitionRequest:(id)request previousLayoutState:(id)state layoutState:(id)layoutState;
- (void)updateDisplayLayoutElementWithBuilder:(id)builder;
- (void)updateOrientationForTraitsDelegate:(id)delegate withUpdateReasons:(int64_t)reasons suggestedAnimator:(id)animator actuationContext:(id)context;
- (void)updatePreferencesForParticipant:(id)participant updater:(id)updater;
- (void)updateWindowVisibilityForSwitcherContentController:(id)controller;
- (void)viewDidLoadForSwitcherViewController:(id)controller;
- (void)viewWillAppearForSwitcherViewController:(id)controller animated:(BOOL)animated;
- (void)willBeginCoordinationWithCoordinator:(id)coordinator;
- (void)willEndCoordinationWithCoordinator:(id)coordinator;
- (void)windowControlsViewController:(id)controller didRequestAction:(unint64_t)action;
- (void)windowControlsViewController:(id)controller didRequestArrangeWithConfiguration:(unint64_t)configuration;
- (void)windowControlsViewController:(id)controller didRequestMoveToDisplay:(unint64_t)display;
- (void)windowControlsViewController:(id)controller didRequestSlideOverAction:(unint64_t)action;
- (void)windowControlsViewController:(id)controller didRequestTileToPosition:(unint64_t)position;
- (void)windowControlsViewControllerDidRequestAddAnotherWindow:(id)window;
@end

@implementation SBSwitcherController

- (BOOL)backgroundNethermostWindows
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SBSwitcherController_backgroundNethermostWindows__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  if (backgroundNethermostWindows_onceToken != -1)
  {
    dispatch_once(&backgroundNethermostWindows_onceToken, block);
  }

  return backgroundNethermostWindows_sBackgroundNethermostWindows;
}

- (unint64_t)maximumNumberOfScenesOnStage
{
  if (maximumNumberOfScenesOnStage_onceToken != -1)
  {
    [SBSwitcherController maximumNumberOfScenesOnStage];
  }

  return maximumNumberOfScenesOnStage___maximumNumberOfScenesOnStage;
}

- (BOOL)_isUnderUILock
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  uiLockStateProvider = [WeakRetained uiLockStateProvider];
  isUILocked = [uiLockStateProvider isUILocked];

  return isUILocked;
}

- (FBSDisplayIdentity)displayIdentity
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  _fbsDisplayIdentity = [WeakRetained _fbsDisplayIdentity];

  return _fbsDisplayIdentity;
}

- (id)displayItemLayoutAttributesProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherCoordinator);
  displayItemLayoutAttributesProvider = [WeakRetained displayItemLayoutAttributesProvider];

  return displayItemLayoutAttributesProvider;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (BOOL)isOnExtendedDisplay
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  isExtendedDisplayWindowScene = [WeakRetained isExtendedDisplayWindowScene];

  return isExtendedDisplayWindowScene;
}

- (id)layoutStateApplicationSceneHandles
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  layoutState = [(SBSwitcherController *)self layoutState];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  elements = [layoutState elements];
  v6 = [elements countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(elements);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([v10 layoutRole] == 3)
        {
          floatingConfiguration = [layoutState floatingConfiguration];
          if (floatingConfiguration <= 4 && ((1 << floatingConfiguration) & 0x19) != 0)
          {
            continue;
          }
        }

        workspaceEntity = [v10 workspaceEntity];
        applicationSceneEntity = [workspaceEntity applicationSceneEntity];
        sceneHandle = [applicationSceneEntity sceneHandle];

        if (sceneHandle)
        {
          [v3 addObject:sceneHandle];
        }
      }

      v7 = [elements countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  if ([v3 count])
  {
    v15 = v3;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

- (SBLayoutState)layoutState
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  layoutStateProvider = [WeakRetained layoutStateProvider];
  layoutState = [layoutStateProvider layoutState];

  return layoutState;
}

- (SBSwitcherControllerCoordinating)switcherCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherCoordinator);
  if (!WeakRetained)
  {
    [SBSwitcherController switcherCoordinator];
  }

  return WeakRetained;
}

- (unint64_t)switcherSupportedInterfaceOrientations
{
  panGestureRecognizerRequestedOrientation = self->_panGestureRecognizerRequestedOrientation;
  if (panGestureRecognizerRequestedOrientation)
  {
    return 1 << panGestureRecognizerRequestedOrientation;
  }

  else
  {
    return 30;
  }
}

- (void)_reevaluateOrientationIfNecessary
{
  if (self->_needsOrientationReevaluation)
  {
    objc_initWeak(&location, self);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __57__SBSwitcherController__reevaluateOrientationIfNecessary__block_invoke;
    v3[3] = &unk_2783B65D0;
    objc_copyWeak(&v4, &location);
    [(SBSwitcherController *)self _enqueueOrientationTransitionWithActuationContext:0 suggestedAnimator:0 completionTask:0 validator:v3 label:@"SBSwitcherControllerEventLabelFollowupRotation"];
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

- (int64_t)unlockedEnvironmentMode
{
  layoutState = [(SBSwitcherController *)self layoutState];
  unlockedEnvironmentMode = [layoutState unlockedEnvironmentMode];

  return unlockedEnvironmentMode;
}

- (id)_currentMainAppLayout
{
  _currentLayoutState = [(SBSwitcherController *)self _currentLayoutState];
  appLayout = [_currentLayoutState appLayout];

  return appLayout;
}

- (id)_currentLayoutState
{
  activeGestureTransaction = [(SBFluidSwitcherGestureManager *)self->_gestureManager activeGestureTransaction];
  animationController = [activeGestureTransaction animationController];
  workspaceTransitionRequest = [animationController workspaceTransitionRequest];

  displayConfiguration = [workspaceTransitionRequest displayConfiguration];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  _fbsDisplayConfiguration = [WeakRetained _fbsDisplayConfiguration];
  v9 = [displayConfiguration isEqual:_fbsDisplayConfiguration];

  if (v9)
  {
    applicationContext = [workspaceTransitionRequest applicationContext];
    layoutState = [applicationContext layoutState];
  }

  else
  {
    layoutState = [(SBSwitcherController *)self layoutState];
  }

  return layoutState;
}

- (id)_currentFloatingAppLayout
{
  _currentLayoutState = [(SBSwitcherController *)self _currentLayoutState];
  floatingAppLayout = [_currentLayoutState floatingAppLayout];

  return floatingAppLayout;
}

- (BOOL)isMainSwitcherVisible
{
  layoutState = [(SBSwitcherController *)self layoutState];
  v3 = [layoutState unlockedEnvironmentMode] == 2;

  return v3;
}

- (BOOL)isChamoisMultitaskingEnabled
{
  v3 = SBFIsChamoisWindowingUIAvailable();
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    isExternalDisplayWindowScene = [WeakRetained isExternalDisplayWindowScene];

    if (isExternalDisplayWindowScene)
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      windowManagementContext = self->_windowManagementContext;

      LOBYTE(v3) = [(SBSwitcherWindowManagementContext *)windowManagementContext isAutomaticStageCreationEnabled];
    }
  }

  return v3;
}

- (id)layoutStatePrimaryElement
{
  layoutState = [(SBSwitcherController *)self layoutState];
  v3 = [layoutState elementWithRole:1];

  return v3;
}

- (BOOL)isAnySwitcherVisible
{
  if ([(SBSwitcherController *)self isMainSwitcherVisible])
  {
    return 1;
  }

  return [(SBSwitcherController *)self isFloatingSwitcherVisible];
}

- (BOOL)isFloatingSwitcherVisible
{
  layoutState = [(SBSwitcherController *)self layoutState];
  isFloatingSwitcherVisible = [layoutState isFloatingSwitcherVisible];

  return isFloatingSwitcherVisible;
}

- (id)layoutStateSideElement
{
  layoutState = [(SBSwitcherController *)self layoutState];
  v3 = [layoutState elementWithRole:2];

  return v3;
}

- (BOOL)_shouldAcceleratedHomeButtonPressBegin
{
  contentViewController = [(SBSwitcherController *)self contentViewController];
  shouldAcceleratedHomeButtonPressBegin = [contentViewController shouldAcceleratedHomeButtonPressBegin];

  return shouldAcceleratedHomeButtonPressBegin;
}

- (BOOL)handleHomeButtonDoublePress
{
  contentViewController = [(SBSwitcherController *)self contentViewController];
  handleHomeButtonDoublePress = [contentViewController handleHomeButtonDoublePress];

  return handleHomeButtonDoublePress;
}

- (BOOL)isInAnyPeekState
{
  _currentLayoutState = [(SBSwitcherController *)self _currentLayoutState];
  IsValid = SBPeekConfigurationIsValid([_currentLayoutState peekConfiguration]);

  return IsValid;
}

- (SBSwitcherController)initWithWindowScene:(id)scene debugName:(id)name
{
  sceneCopy = scene;
  nameCopy = name;
  v51.receiver = self;
  v51.super_class = SBSwitcherController;
  v8 = [(SBSwitcherController *)&v51 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_windowScene, sceneCopy);
    objc_storeStrong(&v9->_debugName, name);
    v10 = +[SBDefaults localDefaults];
    appSwitcherDefaults = [v10 appSwitcherDefaults];
    defaults = v9->_defaults;
    v9->_defaults = appSwitcherDefaults;

    v13 = +[SBAppSwitcherDomain rootSettings];
    settings = v9->_settings;
    v9->_settings = v13;

    [(PTSettings *)v9->_settings addKeyObserver:v9];
    _generateWindowManagementContext = [(SBSwitcherController *)v9 _generateWindowManagementContext];
    windowManagementContext = v9->_windowManagementContext;
    v9->_windowManagementContext = _generateWindowManagementContext;

    v17 = [[SBSwitcherViewController alloc] initWithNibName:0 bundle:0];
    switcherViewController = v9->_switcherViewController;
    v9->_switcherViewController = v17;

    [(SBSwitcherViewController *)v9->_switcherViewController setDelegate:v9];
    v19 = objc_alloc_init(SBDisplayItemLayoutAttributesCalculator);
    displayItemFrameCalculator = v9->_displayItemFrameCalculator;
    v9->_displayItemFrameCalculator = v19;

    if ([sceneCopy isMainDisplayWindowScene] && (objc_msgSend(sceneCopy, "isExternalDisplayWindowScene") & 1) == 0)
    {
      v21 = objc_alloc_init(MEMORY[0x277CEF768]);
      [v21 setIdentifier:@"com.apple.SpringBoard.SBSwitcherController"];
      [v21 setEventMask:4095];
      [v21 setAttentionLostTimeout:2.0];
      v22 = objc_alloc_init(SBAttentionAwarenessClient);
      idleTouchAwarenessClient = v9->_idleTouchAwarenessClient;
      v9->_idleTouchAwarenessClient = v22;

      [(SBAttentionAwarenessClient *)v9->_idleTouchAwarenessClient setConfiguration:v21];
      [(SBAttentionAwarenessClient *)v9->_idleTouchAwarenessClient setDelegate:v9];
    }

    layoutStateTransitionCoordinator = [sceneCopy layoutStateTransitionCoordinator];
    [layoutStateTransitionCoordinator setSceneEntityFrameProvider:v9];
    [layoutStateTransitionCoordinator addObserver:v9];
    v25 = objc_alloc(MEMORY[0x277D66A50]);
    v26 = [v25 initWithIdentifier:*MEMORY[0x277D66F10]];
    displayLayoutElement = v9->_displayLayoutElement;
    v9->_displayLayoutElement = v26;

    [(SBSDisplayLayoutElement *)v9->_displayLayoutElement setLayoutRole:1];
    [(SBSDisplayLayoutElement *)v9->_displayLayoutElement setLevel:1];
    v28 = [SBSceneRelevancyManager alloc];
    sceneRelevancySettings = [(SBAppSwitcherSettings *)v9->_settings sceneRelevancySettings];
    v30 = [(SBSceneRelevancyManager *)v28 initWithSceneRelevancySettings:sceneRelevancySettings];
    sceneRelevancyManager = v9->_sceneRelevancyManager;
    v9->_sceneRelevancyManager = v30;

    modalUIFluidDismissGestureManager = [sceneCopy modalUIFluidDismissGestureManager];
    v33 = MEMORY[0x277CCACA8];
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    v36 = [v33 stringWithFormat:@"%@-%@", v35, v9->_debugName];
    v37 = [modalUIFluidDismissGestureManager addObserver:v9 forReason:v36];
    modalUIFluidDismissalObserverInvalidatable = v9->_modalUIFluidDismissalObserverInvalidatable;
    v9->_modalUIFluidDismissalObserverInvalidatable = v37;

    v39 = MEMORY[0x277CCACA8];
    stateCaptureTitlePreamble = [(SBSwitcherController *)v9 stateCaptureTitlePreamble];
    v41 = [v39 stringWithFormat:@"%@ - SBSwitcherController", stateCaptureTitlePreamble];

    objc_initWeak(&location, v9);
    v42 = MEMORY[0x277D85CD0];
    objc_copyWeak(&v49, &location);
    v43 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureInvalidatable = v9->_stateCaptureInvalidatable;
    v9->_stateCaptureInvalidatable = v43;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__updateContentViewControllerIfNeeded name:*MEMORY[0x277D764C0] object:0];
    [defaultCenter addObserver:v9 selector:sel__windowSceneCanvasSizeDidChange_ name:@"SBWindowSceneSessionRoleExternalDisplay" object:sceneCopy];
    v9->_coverSheetFlyInProgress = 0.0;
    lockScreenManager = [sceneCopy lockScreenManager];
    [defaultCenter addObserver:v9 selector:sel__coverSheetWillPerformTransition_ name:@"SBLockScreenUIWillPerformTransitionNotification" object:lockScreenManager];

    uiLockStateProvider = [sceneCopy uiLockStateProvider];
    [uiLockStateProvider addLockStateObserver:v9];

    objc_destroyWeak(&v49);
    objc_destroyWeak(&location);
  }

  return v9;
}

id __54__SBSwitcherController_initWithWindowScene_debugName___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _orientationStateDescription];

  return v2;
}

- (id)_orientationStateDescription
{
  v20[7] = *MEMORY[0x277D85DE8];
  traitsParticipant = self->_traitsParticipant;
  if (traitsParticipant)
  {
    v19[0] = @"Switcher participant orientation";
    [(TRAParticipant *)traitsParticipant currentOrientation];
    v4 = SBFStringForBSInterfaceOrientation();
    v20[0] = v4;
    v19[1] = @"Switcher orientation";
    [(SBSwitcherController *)self interfaceOrientation];
    v5 = SBFStringForBSInterfaceOrientation();
    v6 = v5;
    if (self->_traitsParticipantsByElementIdentifier)
    {
      traitsParticipantsByElementIdentifier = self->_traitsParticipantsByElementIdentifier;
    }

    else
    {
      traitsParticipantsByElementIdentifier = @"None";
    }

    v20[1] = v5;
    v20[2] = traitsParticipantsByElementIdentifier;
    v19[2] = @"Layout elements participants";
    v19[3] = @"Participants orientations";
    v8 = [(SBSwitcherController *)self _elementsOrientationsForParticipantsByElementIdentifier:?];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = @"None";
    }

    v20[3] = v10;
    v19[4] = @"[Layout state] interface orientation";
    layoutState = [(SBSwitcherController *)self layoutState];
    [layoutState interfaceOrientation];
    v12 = SBFStringForBSInterfaceOrientation();
    v13 = v12;
    if (self->_needsOrientationReevaluation)
    {
      v14 = @"Yes";
    }

    else
    {
      v14 = @"No";
    }

    v20[4] = v12;
    v20[5] = v14;
    v19[5] = @"Needs Orientation Reevaluation";
    v19[6] = @"Has eligible orientation lock requesting App";
    if (self->_hasEligibleAppOrientationLockPreference)
    {
      v15 = @"Yes";
    }

    else
    {
      v15 = @"No";
    }

    v20[6] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:7];
    v17 = [v16 description];
  }

  else
  {
    v17 = @"waiting to be shown at least once";
  }

  return v17;
}

- (void)dealloc
{
  [(SBSwitcherController *)self _invalidate];
  v3.receiver = self;
  v3.super_class = SBSwitcherController;
  [(SBSwitcherController *)&v3 dealloc];
}

- (void)_invalidate
{
  self->_isInvalidated = 1;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(PTSettings *)self->_settings removeKeyObserver:self];
  [(BSInvalidatable *)self->_modalUIFluidDismissalObserverInvalidatable invalidate];
  modalUIFluidDismissalObserverInvalidatable = self->_modalUIFluidDismissalObserverInvalidatable;
  self->_modalUIFluidDismissalObserverInvalidatable = 0;

  [(TRAParticipant *)self->_publisherTraitsParticipant invalidate];
  publisherTraitsParticipant = self->_publisherTraitsParticipant;
  self->_publisherTraitsParticipant = 0;

  [(TRAParticipant *)self->_traitsParticipant invalidate];
  traitsParticipant = self->_traitsParticipant;
  self->_traitsParticipant = 0;

  [(SBSwitcherController *)self _invalidateLayoutElementsTraitsParticipants];
  [(SBSwitcherController *)self _stopObservingSceneHandles];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  layoutStateTransitionCoordinator = [WeakRetained layoutStateTransitionCoordinator];
  [layoutStateTransitionCoordinator setSceneEntityFrameProvider:0];
  [layoutStateTransitionCoordinator removeObserver:self];
  [(BSInvalidatable *)self->_stateCaptureInvalidatable invalidate];
  [(SBSwitcherController *)self _invalidateMedusaEducationBannerTimer];
  [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient setEnabled:0];
  [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient setDelegate:0];
  [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient invalidate];
  [(BSInvalidatable *)self->_displayLayoutElementAssertion invalidate];
  [(BSInvalidatable *)self->_suppressHidingProtectedAppsAssertion invalidate];
  suppressHidingProtectedAppsAssertion = self->_suppressHidingProtectedAppsAssertion;
  self->_suppressHidingProtectedAppsAssertion = 0;

  uiLockStateProvider = [WeakRetained uiLockStateProvider];
  [uiLockStateProvider removeLockStateObserver:self];
}

- (void)willBeginCoordinationWithCoordinator:(id)coordinator
{
  v17[4] = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  objc_storeWeak(&self->_switcherCoordinator, coordinatorCopy);
  objc_initWeak(&location, self);
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"medusaMultitaskingEnabled"];
  v17[0] = v5;
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"chamoisWindowingEnabled"];
  v17[1] = v6;
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"flexibleWindowingManualStageCreationShouldRestorePreviousOpenWindows"];
  v17[2] = v7;
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"flexibleWindowingAutomaticStageCreationEnabledExternal"];
  v17[3] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];

  defaults = self->_defaults;
  v11 = MEMORY[0x277D85CD0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__SBSwitcherController_willBeginCoordinationWithCoordinator___block_invoke;
  v14[3] = &unk_2783A8C68;
  objc_copyWeak(&v15, &location);
  v12 = [(SBAppSwitcherDefaults *)defaults observeDefaults:v9 onQueue:MEMORY[0x277D85CD0] withBlock:v14];
  multitaskingEnablementObserver = self->_multitaskingEnablementObserver;
  self->_multitaskingEnablementObserver = v12;

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __61__SBSwitcherController_willBeginCoordinationWithCoordinator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleMultitaskingEnablementChange];
}

- (void)didBeginCoordinationWithCoordinator:(id)coordinator
{
  [(SBSwitcherController *)self _setUpSwitcherWindowIfNeeded];

  [(SBSwitcherController *)self _initializeSlideOverDisplayItemIfNeededForcingStashed:1];
}

- (void)willEndCoordinationWithCoordinator:(id)coordinator
{
  [(BSDefaultObserver *)self->_multitaskingEnablementObserver invalidate];
  multitaskingEnablementObserver = self->_multitaskingEnablementObserver;
  self->_multitaskingEnablementObserver = 0;

  contentViewController = [(SBSwitcherController *)self contentViewController];
  [contentViewController invalidate];
  [contentViewController willMoveToParentViewController:0];
  view = [contentViewController view];
  [view removeFromSuperview];

  switcherViewController = [(SBSwitcherController *)self switcherViewController];
  [switcherViewController removeChildViewController:contentViewController];
  [contentViewController didMoveToParentViewController:0];
  view2 = [switcherViewController view];
  window = [view2 window];
  [window setHidden:1];
  [switcherViewController willMoveToParentViewController:0];
  [view2 removeFromSuperview];
  [window setRootViewController:0];
  [switcherViewController didMoveToParentViewController:0];
}

- (id)_generateWindowManagementContext
{
  if (([(SBAppSwitcherDefaults *)self->_defaults chamoisWindowingEnabled]& 1) != 0)
  {
    medusaMultitaskingEnabled = 1;
  }

  else
  {
    medusaMultitaskingEnabled = [(SBAppSwitcherDefaults *)self->_defaults medusaMultitaskingEnabled];
  }

  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  if (![WeakRetained supportsMultitasking])
  {
    v7 = +[SBSwitcherWindowManagementContext singleAppContext];
    goto LABEL_23;
  }

  if (![WeakRetained isExternalDisplayWindowScene])
  {
    if (medusaMultitaskingEnabled)
    {
      v8 = SBFIsFlexibleWindowingUIAvailable();
    }

    else
    {
      v8 = 0;
    }

    v9 = medusaMultitaskingEnabled & (v8 ^ 1u);
    chamoisWindowingEnabled = [(SBAppSwitcherDefaults *)self->_defaults chamoisWindowingEnabled];
    v6 = chamoisWindowingEnabled;
    if ((v8 ^ 1) & 1) != 0 || (chamoisWindowingEnabled)
    {
      flexibleWindowingManualStageCreationShouldRestorePreviousOpenWindows = 0;
      if ((v8 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      flexibleWindowingManualStageCreationShouldRestorePreviousOpenWindows = [(SBAppSwitcherDefaults *)self->_defaults flexibleWindowingManualStageCreationShouldRestorePreviousOpenWindows];
      v6 = 0;
      if ((v8 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_21;
  }

  if (SBFIsFlexibleWindowingUIAvailable())
  {
    if (([(SBAppSwitcherDefaults *)self->_defaults flexibleWindowingAutomaticStageCreationEnabledExternal]& 1) != 0)
    {
      flexibleWindowingManualStageCreationShouldRestorePreviousOpenWindows = 0;
      v6 = 1;
    }

    else
    {
      flexibleWindowingManualStageCreationShouldRestorePreviousOpenWindows = [(SBAppSwitcherDefaults *)self->_defaults flexibleWindowingManualStageCreationShouldRestorePreviousOpenWindows];
      v6 = 0;
    }

LABEL_21:
    v9 = 2;
    goto LABEL_22;
  }

  flexibleWindowingManualStageCreationShouldRestorePreviousOpenWindows = 0;
  v6 = 1;
  v9 = 1;
LABEL_22:
  v7 = [[SBSwitcherWindowManagementContext alloc] initWithBaseStyle:v9 automaticStageCreationEnabled:v6 restoresPreviouslyOpenWindows:flexibleWindowingManualStageCreationShouldRestorePreviousOpenWindows];
LABEL_23:
  v11 = v7;

  return v11;
}

- (void)_handleMultitaskingEnablementChange
{
  v59[1] = *MEMORY[0x277D85DE8];
  _generateWindowManagementContext = [(SBSwitcherController *)self _generateWindowManagementContext];
  v39 = self->_windowManagementContext;
  if ((BSEqualObjects() & 1) == 0)
  {
    switcherCoordinator = [(SBSwitcherController *)self switcherCoordinator];
    [switcherCoordinator switcherControllerWillUpdateWindowManagementStyle:self];
    objc_storeStrong(&self->_windowManagementContext, _generateWindowManagementContext);
    [(SBSwitcherController *)self _initializeSlideOverDisplayItemIfNeededForcingStashed:0];
    [switcherCoordinator switcherControllerDidUpdateWindowManagementStyle:self];
    [(SBFluidSwitcherGestureManager *)self->_gestureManager updateForWindowManagementContext:self->_windowManagementContext];
    v6 = objc_opt_class();
    v7 = SBSafeCast(v6, self->_contentViewController);
    v8 = v7;
    if (!v7)
    {
LABEL_12:
      [(SBSwitcherContentViewControlling *)self->_contentViewController noteWindowManagementContextDidChange];

      goto LABEL_13;
    }

    personality = [v7 personality];
    v10 = objc_opt_class();
    if ([(SBSwitcherWindowManagementContext *)self->_windowManagementContext isFlexibleWindowingEnabled])
    {
      if (v10 == objc_opt_class())
      {
        v11 = objc_alloc_init(SBiPadOSPlatformSwitcherModifier);
        v12 = [[SBWindowingSwitcherPersonality alloc] initWithSwitcherModifier:v11];
LABEL_10:
        v16 = v12;
        [v8 setPersonality:{v12, v39}];
      }
    }

    else if (v10 == objc_opt_class())
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      v15 = off_2783A2CF8;
      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
      {
        v15 = off_2783A0108;
      }

      v11 = objc_alloc_init(*v15);
      v12 = [[SBFluidSwitcherPersonality alloc] initWithRootModifier:v11];
      goto LABEL_10;
    }

    goto LABEL_12;
  }

LABEL_13:
  v17 = self->_windowManagementContext;
  isAutomaticStageCreationEnabled = [(SBSwitcherWindowManagementContext *)v17 isAutomaticStageCreationEnabled];
  objc_copyWeak(&to, &self->_windowScene);
  layoutState = [(SBSwitcherController *)self layoutState];
  v20 = [layoutState unlockedEnvironmentMode] == 3;

  if (v20)
  {
    objc_initWeak(&location, self);
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v22 = +[SBWorkspace mainWorkspace];
    _fbsDisplayConfiguration = [WeakRetained _fbsDisplayConfiguration];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __59__SBSwitcherController__handleMultitaskingEnablementChange__block_invoke;
    v54[3] = &unk_2783A98F0;
    v24 = v17;
    v55 = v24;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __59__SBSwitcherController__handleMultitaskingEnablementChange__block_invoke_2;
    v49[3] = &unk_2783B6428;
    objc_copyWeak(&v52, &location);
    objc_copyWeak(v53, &to);
    v25 = v24;
    v53[1] = a2;
    v50 = v25;
    selfCopy = self;
    [v22 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration builder:v54 validator:v49];

    objc_destroyWeak(v53);
    objc_destroyWeak(&v52);

    objc_destroyWeak(&location);
  }

  else
  {
    layoutState2 = [(SBSwitcherController *)self layoutState];
    if ([layoutState2 unlockedEnvironmentMode] == 2)
    {
      isFlexibleWindowingEnabled = [(SBSwitcherWindowManagementContext *)v39 isFlexibleWindowingEnabled];
      if (isFlexibleWindowingEnabled == [(SBSwitcherWindowManagementContext *)v17 isFlexibleWindowingEnabled])
      {
        isAutomaticStageCreationEnabled2 = [(SBSwitcherWindowManagementContext *)v39 isAutomaticStageCreationEnabled];

        if (((isAutomaticStageCreationEnabled ^ isAutomaticStageCreationEnabled2) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
      }

      objc_initWeak(&location, self);
      v29 = objc_loadWeakRetained(&self->_windowScene);
      v30 = +[SBWorkspace mainWorkspace];
      _fbsDisplayConfiguration2 = [v29 _fbsDisplayConfiguration];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __59__SBSwitcherController__handleMultitaskingEnablementChange__block_invoke_4;
      v47[3] = &unk_2783A98F0;
      v32 = v17;
      v48 = v32;
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __59__SBSwitcherController__handleMultitaskingEnablementChange__block_invoke_5;
      v43[3] = &unk_2783B6450;
      objc_copyWeak(&v45, &location);
      objc_copyWeak(&v46, &to);
      v44 = v32;
      [v30 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration2 builder:v47 validator:v43];

      objc_destroyWeak(&v46);
      objc_destroyWeak(&v45);

      objc_destroyWeak(&location);
      goto LABEL_21;
    }
  }

LABEL_21:
  v58 = *MEMORY[0x277D67620];
  v59[0] = &unk_283370E08;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:&v58 count:{1, v39}];
  v34 = MEMORY[0x277D65DD0];
  v35 = v33;
  sharedInstance = [v34 sharedInstance];
  [sharedInstance emitEvent:58 withPayload:v35];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SBSwitcherControllerWindowManagementStyleDidChangeNotification" object:self];

  v38 = dispatch_get_global_queue(-32768, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SBSwitcherController__handleMultitaskingEnablementChange__block_invoke_122;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v42 = isAutomaticStageCreationEnabled;
  dispatch_async(v38, block);

  objc_destroyWeak(&to);
}

void __59__SBSwitcherController__handleMultitaskingEnablementChange__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:64];
  v4 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSwitcherWindowManagementContext(*(a1 + 32));
  v5 = [v4 stringWithFormat:@"WindowManagementContextChangedTo%@", v6];
  [v3 setEventLabel:v5];
}

uint64_t __59__SBSwitcherController__handleMultitaskingEnablementChange__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_loadWeakRetained((a1 + 56));
  v6 = v5;
  if (!WeakRetained || v5 && [v5 activationState] || (objc_msgSend(WeakRetained, "windowManagementContext"), v7 = objc_claimAutoreleasedReturnValue(), v8 = BSEqualObjects(), v7, !v8))
  {
    v10 = 0;
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__SBSwitcherController__handleMultitaskingEnablementChange__block_invoke_3;
    v12[3] = &unk_2783B6400;
    v13 = *(a1 + 32);
    v14 = WeakRetained;
    v9 = *(a1 + 64);
    v15 = *(a1 + 40);
    v16 = v9;
    [v3 modifyApplicationContext:v12];

    v10 = 1;
  }

  return v10;
}

void __59__SBSwitcherController__handleMultitaskingEnablementChange__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![*(a1 + 32) isChamoisOrFlexibleWindowing])
  {
    if ([*(a1 + 32) isMedusaEnabled])
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __59__SBSwitcherController__handleMultitaskingEnablementChange__block_invoke_2_113;
      v12[3] = &unk_2783ACA48;
      v13 = v3;
      SBLayoutRoleEnumerateValidRoles(v12);
      v8 = v13;
    }

    else
    {
      if ([*(a1 + 32) baseStyle])
      {
        v9 = [MEMORY[0x277CCA890] currentHandler];
        [v9 handleFailureInMethod:*(a1 + 56) object:*(a1 + 48) file:@"SBSwitcherController.m" lineNumber:541 description:@"Unexpected window management context"];

        goto LABEL_13;
      }

      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __59__SBSwitcherController__handleMultitaskingEnablementChange__block_invoke_3_115;
      v10[3] = &unk_2783ACA48;
      v11 = v3;
      SBLayoutRoleEnumerateValidRoles(v10);
      v8 = v11;
    }

    goto LABEL_13;
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__59;
  v29 = __Block_byref_object_dispose__59;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__59;
  v23 = __Block_byref_object_dispose__59;
  v24 = 0;
  v5 = [*(a1 + 40) layoutState];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__SBSwitcherController__handleMultitaskingEnablementChange__block_invoke_111;
  v14[3] = &unk_2783B63D8;
  v6 = v5;
  v15 = v6;
  v7 = v4;
  v16 = v7;
  v17 = &v25;
  v18 = &v19;
  SBLayoutRoleEnumerateValidRoles(v14);
  [v3 setEntities:v7 withPolicy:0 centerEntity:0 floatingEntity:0];
  if (v26[5])
  {
    [v3 _setRequestedFrontmostEntity:?];
  }

  if (v20[5])
  {
    [v3 _setRequestedFrontmostEntity:?];
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

LABEL_13:
}

uint64_t __59__SBSwitcherController__handleMultitaskingEnablementChange__block_invoke_111(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) elementWithRole:a2];
  obj = [v4 workspaceEntity];

  if (obj)
  {
    [*(a1 + 40) addObject:?];
  }

  if (a2 == 4)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  }

  if (a2 == 3)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), obj);
  }

  return MEMORY[0x2821F9730]();
}

void __59__SBSwitcherController__handleMultitaskingEnablementChange__block_invoke_2_113(uint64_t a1, uint64_t a2)
{
  if (a2 >= 5)
  {
    v4 = *(a1 + 32);
    v5 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
    [v4 setEntity:v5 forLayoutRole:a2];
  }
}

void __59__SBSwitcherController__handleMultitaskingEnablementChange__block_invoke_3_115(uint64_t a1, uint64_t a2)
{
  if (a2 >= 2)
  {
    v4 = *(a1 + 32);
    v5 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
    [v4 setEntity:v5 forLayoutRole:a2];
  }
}

void __59__SBSwitcherController__handleMultitaskingEnablementChange__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:64];
  v4 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSwitcherWindowManagementContext(*(a1 + 32));
  v5 = [v4 stringWithFormat:@"WindowManagementContextChangedTo%@", v6];
  [v3 setEventLabel:v5];
}

uint64_t __59__SBSwitcherController__handleMultitaskingEnablementChange__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = v5;
  if (!WeakRetained || v5 && [v5 activationState])
  {
    v7 = 0;
  }

  else
  {
    v8 = [WeakRetained windowManagementContext];
    v7 = BSEqualObjects();

    if (v7)
    {
      [v3 modifyApplicationContext:&__block_literal_global_164];
      v7 = 1;
    }
  }

  return v7;
}

void __59__SBSwitcherController__handleMultitaskingEnablementChange__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setRequestedUnlockedEnvironmentMode:1];
  [v2 setRequestedPeekConfiguration:1];
}

void __59__SBSwitcherController__handleMultitaskingEnablementChange__block_invoke_122(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CF1650]);
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v4 = [v2 initWithStarting:v3];

  v5 = BiomeLibrary();
  v6 = [v5 SpringBoard];
  v7 = [v6 WindowManagement];
  v8 = [v7 StageManagerMode];

  v9 = [v8 source];
  [v9 sendEvent:v4];
  v10 = SBLogBiome();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12[0] = 67109120;
    v12[1] = v11;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Donate stage manager enabled: %{BOOL}u", v12, 8u);
  }
}

- (void)switcherOrientation:(int64_t *)orientation elementsOrientations:(id *)orientations forTransitionRequest:(id)request previousLayoutState:(id)state layoutState:(id)layoutState
{
  v85 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  stateCopy = state;
  layoutStateCopy = layoutState;
  if (requestCopy)
  {
    if (orientation)
    {
      goto LABEL_3;
    }

LABEL_76:
    [SBSwitcherController switcherOrientation:elementsOrientations:forTransitionRequest:previousLayoutState:layoutState:];
    if (orientations)
    {
      goto LABEL_4;
    }

    goto LABEL_77;
  }

  [SBSwitcherController switcherOrientation:elementsOrientations:forTransitionRequest:previousLayoutState:layoutState:];
  if (!orientation)
  {
    goto LABEL_76;
  }

LABEL_3:
  if (orientations)
  {
    goto LABEL_4;
  }

LABEL_77:
  [SBSwitcherController switcherOrientation:elementsOrientations:forTransitionRequest:previousLayoutState:layoutState:];
LABEL_4:
  v15 = SBLogTraitsArbiter();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = SBMainWorkspaceTransitionSourceDescription([requestCopy source]);
    *buf = 138543362;
    v82 = v16;
    _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "[SwitcherOrientation] transition source: %{public}@", buf, 0xCu);
  }

  eventLabel = [requestCopy eventLabel];
  v18 = [eventLabel containsString:@"SBSwitcherControllerEventLabelFollowupRotation"];

  v19 = [[SBSwitcherLayoutTransitionNotes alloc] initWithFromPreviousState:stateCopy currentLayoutState:layoutStateCopy transitionRequest:requestCopy];
  *orientation = 0;
  if (-[SBSwitcherLayoutTransitionNotes isRotation](v19, "isRotation") || -[SBSwitcherLayoutTransitionNotes fromNoAppToApp](v19, "fromNoAppToApp") || -[SBSwitcherLayoutTransitionNotes changingApps](v19, "changingApps") || self->_traitsParticipant || [layoutStateCopy unlockedEnvironmentMode] != 1)
  {
    v70 = v18;
    orientationsCopy = orientations;
    [(SBSwitcherController *)self _noteLayoutStateEvaluationBegan];
    if (!self->_traitsParticipant)
    {
      [(SBSwitcherController *)self _setupSwitcherTraitsParticipantAndPolicySpecifiers];
    }

    v20 = [layoutStateCopy elementWithRole:1];
    workspaceEntity = [v20 workspaceEntity];

    v73 = workspaceEntity;
    applicationSceneEntity = [workspaceEntity applicationSceneEntity];
    sceneHandle = [applicationSceneEntity sceneHandle];
    application = [sceneHandle application];
    classicAppPhoneAppRunningOnPad = [application classicAppPhoneAppRunningOnPad];

    fromHomeScreenToApp = [(SBSwitcherLayoutTransitionNotes *)v19 fromHomeScreenToApp];
    if ([(SBSwitcherLayoutTransitionNotes *)v19 inHomeScreen])
    {
      canDetermineActiveOrientation = self->_canDetermineActiveOrientation;
    }

    else
    {
      canDetermineActiveOrientation = 1;
    }

    self->_canDetermineActiveOrientation = canDetermineActiveOrientation;
    self->_shouldLockPublishedOrientation = fromHomeScreenToApp;
    self->_panGestureRecognizerRequestedOrientation = 0;
    hasEligibleAppOrientationLockPreference = self->_hasEligibleAppOrientationLockPreference;
    inAppLayout = [(SBSwitcherLayoutTransitionNotes *)v19 inAppLayout];
    self->_hasEligibleAppOrientationLockPreference = [(SBSwitcherController *)self _inSwitcherOrientationLockEligibleFullscreenApp:inAppLayout];

    v29 = self->_hasEligibleAppOrientationLockPreference;
    windowManagementContext = [(SBSwitcherController *)self windowManagementContext];
    isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

    isSystemGesture = [(SBSwitcherLayoutTransitionNotes *)v19 isSystemGesture];
    v72 = requestCopy;
    if (isChamoisOrFlexibleWindowing)
    {
      if (isSystemGesture || [(SBSwitcherLayoutTransitionNotes *)v19 fromSwitcher]&& [(SBSwitcherLayoutTransitionNotes *)v19 inApp]|| hasEligibleAppOrientationLockPreference != v29)
      {
        v33 = 1;
      }

      else
      {
        v33 = 0;
        if (![(SBSwitcherLayoutTransitionNotes *)v19 inAnySwitcher])
        {
          if (self->_hasEligibleAppOrientationLockPreference)
          {
            v34 = 5;
          }

          else
          {
            v34 = 4;
          }

          goto LABEL_23;
        }
      }

      v34 = 5;
LABEL_23:
      v68 = 3;
      v35 = 3;
      goto LABEL_45;
    }

    if (!isSystemGesture && ![(SBSwitcherLayoutTransitionNotes *)v19 isPIPRestore])
    {
      if ([(SBSwitcherLayoutTransitionNotes *)v19 fromHomeScreenToApp]|| [(SBSwitcherLayoutTransitionNotes *)v19 stableInAppOrMovingBetweenSingleApp])
      {
        if (v73)
        {
          if (classicAppPhoneAppRunningOnPad)
          {
            v34 = 4;
          }

          else
          {
            v34 = 3;
          }

          v33 = 1;
          if (hasEligibleAppOrientationLockPreference != v29 || self->_hasEligibleAppOrientationLockPreference)
          {
            goto LABEL_41;
          }

LABEL_71:
          v33 = 0;
          if ([(SBSwitcherLayoutTransitionNotes *)v19 movingToSingleApp])
          {
            v35 = 6;
          }

          else
          {
            v35 = 4;
          }

          goto LABEL_42;
        }
      }

      else if (![(SBSwitcherLayoutTransitionNotes *)v19 fromAppToHomeScreen])
      {
        if ([(SBSwitcherLayoutTransitionNotes *)v19 stableInHomeScreen])
        {
          v34 = 2;
          goto LABEL_71;
        }

        v33 = ![(SBSwitcherLayoutTransitionNotes *)v19 inAnySwitcher];
LABEL_41:
        [(SBSwitcherLayoutTransitionNotes *)v19 movingToSingleApp];
        v35 = 3;
        v34 = 5;
LABEL_42:
        v36 = 3;
        if (!classicAppPhoneAppRunningOnPad)
        {
          v36 = v35;
        }

        v68 = v36;
LABEL_45:
        orientationCopy = orientation;
        self->_needsOrientationReevaluation = v33;
        elements = [layoutStateCopy elements];
        elements2 = [stateCopy elements];
        v77 = layoutStateCopy;
        v71 = stateCopy;
        if ([elements isEqual:elements2])
        {
          elements3 = [layoutStateCopy elements];
          v40 = [(SBSwitcherController *)self _areLayoutStateElements:elements3 matchedWithAssociatedParticipants:self->_traitsParticipantsByElementIdentifier];

          layoutStateCopy = v77;
          if (v40)
          {
            v41 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_traitsParticipantsByElementIdentifier];
            v42 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_traitsDelegateByParticipant];
            v43 = self->_primaryElementTraitsParticipantDelegate;
            goto LABEL_50;
          }
        }

        else
        {
        }

        traitsAssistant = self->_traitsAssistant;
        elements4 = [layoutStateCopy elements];
        v79 = 0;
        v80 = 0;
        v78 = 0;
        [(SBSwitcherTraitsAssistant *)traitsAssistant createTraitsParticipantsForLayoutElements:elements4 outParticipantsByElementIdentifier:&v80 outDelegatesByParticipant:&v79 outPrimaryDelegate:&v78];
        v41 = v80;
        v42 = v79;
        v43 = v78;

LABEL_50:
        arbiterActuationContext = self->_arbiterActuationContext;
        self->_arbiterActuationContext = 0;

        v47 = SBLogTraitsArbiter();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = SBStringFromSwitcherOrientationPolicy(v34);
          v49 = SBStringFromSwitcherLiveOverlayOrientationPolicy(v35);
          *buf = 138543618;
          v82 = v48;
          v83 = 2114;
          v84 = v49;
          _os_log_impl(&dword_21ED4E000, v47, OS_LOG_TYPE_DEFAULT, "[SwitcherOrientation] switcherPolicy[%{public}@ primaryOverlaysPolicy[%{public}@]", buf, 0x16u);
        }

        [(SBSwitcherTraitsAssistant *)self->_traitsAssistant updateAllParticipants:v42 withPrimaryDelegate:v43 nonPrimaryPolicy:v69 primaryPolicy:v35 ownPolicy:v34];
        if (v70 & 1 | ![(SBSwitcherLayoutTransitionNotes *)v19 isRotation]&& self->_arbiterActuationContext)
        {
          requestCopy = v72;
          applicationContext = [v72 applicationContext];
          v51 = self->_arbiterActuationContext;
          if (classicAppPhoneAppRunningOnPad)
          {
            [(SBSwitcherController *)self _updateAppTransitionContext:applicationContext withOrientationContext:self->_arbiterActuationContext accountForSceneState:0 primaryDelegate:v43];
          }

          else
          {
            windowManagementContext2 = [(SBSwitcherController *)self windowManagementContext];
            -[SBSwitcherController _updateAppTransitionContext:withOrientationContext:accountForSceneState:primaryDelegate:](self, "_updateAppTransitionContext:withOrientationContext:accountForSceneState:primaryDelegate:", applicationContext, v51, [windowManagementContext2 isChamoisOrFlexibleWindowing] ^ 1, v43);
          }
        }

        else
        {
          requestCopy = v72;
          if (!classicAppPhoneAppRunningOnPad)
          {
            goto LABEL_63;
          }

          applicationContext2 = [v72 applicationContext];
          isInLiveResize = [applicationContext2 isInLiveResize];

          if (isInLiveResize)
          {
            goto LABEL_63;
          }

          scene = [(SBTraitsSceneParticipantDelegate *)self->_primaryElementTraitsParticipantDelegate scene];

          if (!scene)
          {
            goto LABEL_63;
          }

          interfaceOrientation = [(SBSwitcherController *)self interfaceOrientation];
          sbf_currentOrientation = [(TRAParticipant *)self->_traitsParticipant sbf_currentOrientation];
          if (interfaceOrientation == sbf_currentOrientation)
          {
            goto LABEL_63;
          }

          v57 = sbf_currentOrientation;
          applicationContext = [v72 applicationContext];
          v58 = [SBAnimationUtilities animationSettingsForRotationFromInterfaceOrientation:interfaceOrientation toInterfaceOrientation:v57];
          [applicationContext setAnimationSettings:v58];
        }

LABEL_63:
        *orientationCopy = [(TRAParticipant *)self->_traitsParticipant sbf_currentOrientation];
        elements5 = [v77 elements];
        *orientationsCopy = [(SBSwitcherController *)self _orientationsForLayoutStateElements:elements5 withAssociatedParticipants:v41];

        v61 = SBLogTraitsArbiter();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          applicationContext3 = [requestCopy applicationContext];
          animationSettings = [applicationContext3 animationSettings];
          [animationSettings duration];
          *buf = 134217984;
          v82 = v64;
          _os_log_impl(&dword_21ED4E000, v61, OS_LOG_TYPE_DEFAULT, "[SwitcherOrientation] animation duration set to %.2f", buf, 0xCu);
        }

        v65 = SBLogTraitsArbiter();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          v66 = BSInterfaceOrientationDescription();
          v67 = *orientationsCopy;
          *buf = 138543618;
          v82 = v66;
          v83 = 2114;
          v84 = v67;
          _os_log_impl(&dword_21ED4E000, v65, OS_LOG_TYPE_DEFAULT, "[SwitcherOrientation] outSwitcherOrientation: %{public}@, outElementsOrientations: %{public}@", buf, 0x16u);
        }

        [(SBSwitcherController *)self _noteLayoutStateEvaluationEndedWithParticipantsByElementIdentifiers:v41 delegatesByParticipant:v42 primaryDelegate:v43];
        stateCopy = v71;
        layoutStateCopy = v77;
        goto LABEL_68;
      }
    }

    v33 = 1;
    goto LABEL_41;
  }

LABEL_68:
}

- (BOOL)_inSwitcherOrientationLockEligibleFullscreenApp:(id)app
{
  v20 = *MEMORY[0x277D85DE8];
  [(SBSwitcherController *)self maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:app ignoreOcclusion:0 ignoreCentering:0];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(SBSwitcherController *)self _deviceApplicationSceneHandleForDisplayItem:*(*(&v15 + 1) + 8 * i), v15];
        v10 = [(SBSwitcherController *)self traitsParticipantForSceneHandle:v9];
        if (v10)
        {
          v11 = [(NSDictionary *)self->_traitsDelegateByParticipant objectForKey:v10];
          scenePrefersOrientationLocked = [v11 scenePrefersOrientationLocked];

          if (scenePrefersOrientationLocked)
          {

            v13 = 1;
            goto LABEL_12;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_12:

  return v13;
}

- (void)_noteLayoutStateEvaluationEndedWithParticipantsByElementIdentifiers:(id)identifiers delegatesByParticipant:(id)participant primaryDelegate:(id)delegate
{
  v37 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  participantCopy = participant;
  delegateCopy = delegate;
  v11 = delegateCopy;
  if (self->_layoutStateEvaluationCounter == 1)
  {
    v26 = delegateCopy;
    allValues = [(NSDictionary *)identifiersCopy allValues];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    allValues2 = [(NSDictionary *)self->_traitsParticipantsByElementIdentifier allValues];
    v14 = [allValues2 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v32;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(allValues2);
          }

          v18 = *(*(&v31 + 1) + 8 * i);
          if (([allValues containsObject:v18] & 1) == 0)
          {
            [v18 invalidate];
          }
        }

        v15 = [allValues2 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v15);
    }

    traitsParticipantsByElementIdentifier = self->_traitsParticipantsByElementIdentifier;
    self->_traitsParticipantsByElementIdentifier = identifiersCopy;
    v20 = identifiersCopy;

    traitsDelegateByParticipant = self->_traitsDelegateByParticipant;
    self->_traitsDelegateByParticipant = participantCopy;
    identifiersCopy = participantCopy;

    objc_storeStrong(&self->_primaryElementTraitsParticipantDelegate, delegate);
    participantCopy = v20;
    v11 = v26;
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    allValues = [(NSDictionary *)identifiersCopy allValues];
    v22 = [allValues countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v28;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v28 != v24)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v27 + 1) + 8 * j) invalidate];
        }

        v23 = [allValues countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v23);
    }
  }

  self->_evaluatingLayoutStateOrientation = 0;
  --self->_layoutStateEvaluationCounter;
}

- (void)_setupSwitcherTraitsParticipantAndPolicySpecifiers
{
  if ((!self->_traitsParticipant || [SBSwitcherController _setupSwitcherTraitsParticipantAndPolicySpecifiers]) && !self->_isInvalidated)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    traitsArbiter = [WeakRetained traitsArbiter];

    v4 = [traitsArbiter acquireParticipantWithRole:@"SBTraitsParticipantRoleSwitcherRaw" delegate:self];
    traitsParticipant = self->_traitsParticipant;
    self->_traitsParticipant = v4;

    [(TRAParticipant *)self->_traitsParticipant setNeedsUpdatePreferencesWithReason:@"setup"];
    v6 = [traitsArbiter acquireParticipantWithRole:@"SBTraitsParticipantRoleSwitcherPublisher" delegate:self];
    publisherTraitsParticipant = self->_publisherTraitsParticipant;
    self->_publisherTraitsParticipant = v6;

    v8 = [[SBSwitcherTraitsAssistant alloc] initWithTraitsArbiter:traitsArbiter switcherParticipant:self->_traitsParticipant delegate:self];
    traitsAssistant = self->_traitsAssistant;
    self->_traitsAssistant = v8;
  }
}

- (void)_invalidateLayoutElementsTraitsParticipants
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  allValues = [(NSDictionary *)self->_traitsParticipantsByElementIdentifier allValues];
  v4 = [allValues countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v20 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  allValues2 = [(NSDictionary *)self->_traitsDelegateByParticipant allValues];
  v9 = [allValues2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(allValues2);
        }

        [*(*(&v16 + 1) + 8 * v12++) invalidate];
      }

      while (v10 != v12);
      v10 = [allValues2 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v10);
  }

  [(SBTraitsSceneParticipantDelegate *)self->_primaryElementTraitsParticipantDelegate invalidate];
  primaryElementTraitsParticipantDelegate = self->_primaryElementTraitsParticipantDelegate;
  self->_primaryElementTraitsParticipantDelegate = 0;

  traitsParticipantsByElementIdentifier = self->_traitsParticipantsByElementIdentifier;
  self->_traitsParticipantsByElementIdentifier = 0;

  traitsDelegateByParticipant = self->_traitsDelegateByParticipant;
  self->_traitsDelegateByParticipant = 0;
}

- (id)stateCaptureTitlePreamble
{
  v2 = MEMORY[0x277CCACA8];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  _sbDisplayConfiguration = [WeakRetained _sbDisplayConfiguration];
  deviceName = [_sbDisplayConfiguration deviceName];
  v6 = [v2 stringWithFormat:@"SpringBoard - SwitcherController - %@", deviceName];

  return v6;
}

- (id)traitsPipelineManager
{
  if (self->_isInvalidated)
  {
    traitsPipelineManager = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    traitsPipelineManager = [WeakRetained traitsPipelineManager];
  }

  return traitsPipelineManager;
}

- (double)contentContainerAspectRatio
{
  contentViewController = [(SBSwitcherController *)self contentViewController];
  [contentViewController contentAspectRatio];
  v4 = v3;

  return v4;
}

- (id)sceneHandleForLayoutElement:(id)element
{
  if (self->_isInvalidated)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(SBSwitcherController *)self _sceneHandleForLayoutElement:element, v3];
  }

  return v5;
}

- (id)sceneHandleForTraitsParticipant:(id)participant
{
  participantCopy = participant;
  v5 = objc_opt_class();
  v6 = [(NSDictionary *)self->_traitsDelegateByParticipant objectForKey:participantCopy];

  sceneHandle = [v6 sceneHandle];
  v8 = SBSafeCast(v5, sceneHandle);

  return v8;
}

- (void)actuateOrientationForTraitsDelegate:(id)delegate withContext:(id)context reasons:(int64_t)reasons
{
  contextCopy = context;
  delegateCopy = delegate;
  v11 = [(SBSwitcherController *)self _liveOverlayForTraitsDelegate:delegateCopy];
  prepareOverlayForContentRotation = [v11 prepareOverlayForContentRotation];
  [(SBSwitcherController *)self updateOrientationForTraitsDelegate:delegateCopy withUpdateReasons:reasons suggestedAnimator:prepareOverlayForContentRotation actuationContext:contextCopy];
}

- (void)evaluateAppRequestedOrientationLock
{
  v3 = +[(SBWorkspace *)SBMainWorkspace];
  v4 = [v3 createRequestWithOptions:0];

  [v4 finalize];

  [(SBSwitcherController *)self _reevaluateOrientationIfNecessary];
}

- (void)updatePreferencesForParticipant:(id)participant updater:(id)updater
{
  participantCopy = participant;
  updaterCopy = updater;
  if (self->_traitsParticipant == participantCopy)
  {
    [(TRAParticipant *)participantCopy currentZOrderLevel];
    if ((BSFloatEqualToFloat() & 1) == 0)
    {
      [updaterCopy updateZOrderLevelPreferencesWithBlock:&__block_literal_global_154];
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__SBSwitcherController_updatePreferencesForParticipant_updater___block_invoke_2;
    v10[3] = &unk_2783B0DC0;
    v10[4] = self;
    [updaterCopy updateOrientationPreferencesWithBlock:v10];
  }

  else if (self->_publisherTraitsParticipant == participantCopy)
  {
    [(TRAParticipant *)participantCopy currentZOrderLevel];
    if ((BSFloatEqualToFloat() & 1) == 0)
    {
      [updaterCopy updateZOrderLevelPreferencesWithBlock:&__block_literal_global_157];
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__SBSwitcherController_updatePreferencesForParticipant_updater___block_invoke_4;
    v8[3] = &unk_2783B6478;
    v8[4] = self;
    v9 = participantCopy;
    [updaterCopy updateOrientationPreferencesWithBlock:v8];
  }
}

void __64__SBSwitcherController_updatePreferencesForParticipant_updater___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setSupportedOrientations:{objc_msgSend(v2, "switcherSupportedInterfaceOrientations")}];
}

void __64__SBSwitcherController_updatePreferencesForParticipant_updater___block_invoke_4(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 supportedOrientations];
  v4 = *(a1 + 32);
  if (*(v4 + 201))
  {
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_10:
    v5 = 30;
    goto LABEL_11;
  }

  if (*(v4 + 185) != 1 || v3 == 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  v5 = [v9 supportedOrientations];
  if (v5 == 30)
  {
    [*(a1 + 40) currentOrientation];
    v5 = SBFBSInterfaceOrientationMaskForBSInterfaceOrientation();
  }

LABEL_11:
  [v9 setSupportedOrientations:v5];
  v7 = *(a1 + 32);
  if (*(v7 + 202) == 1)
  {
    v8 = [*(v7 + 312) _isVisible];
  }

  else
  {
    v8 = 0;
  }

  [v9 setCanDetermineActiveOrientation:v8];
}

- (void)didChangeSettingsForParticipant:(id)participant context:(id)context
{
  participantCopy = participant;
  contextCopy = context;
  if (self->_publisherTraitsParticipant != participantCopy)
  {
    sbf_currentOrientation = [(TRAParticipant *)participantCopy sbf_currentOrientation];
    if (sbf_currentOrientation != [(SBSwitcherController *)self interfaceOrientation])
    {
      orientationActuationContext = [contextCopy orientationActuationContext];
      arbiterActuationContext = self->_arbiterActuationContext;
      self->_arbiterActuationContext = orientationActuationContext;

      objc_initWeak(&location, self);
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __64__SBSwitcherController_didChangeSettingsForParticipant_context___block_invoke;
      v15 = &unk_2783B64A0;
      objc_copyWeak(v17, &location);
      v16 = participantCopy;
      v17[1] = sbf_currentOrientation;
      v11 = MEMORY[0x223D6F7F0](&v12);
      [(SBSwitcherController *)self _enqueueOrientationTransitionWithActuationContext:self->_arbiterActuationContext suggestedAnimator:0 completionTask:0 validator:v11 label:@"SBSwitcherControllerEventLabelSwitcherParticipantUpdate", v12, v13, v14, v15];

      objc_destroyWeak(v17);
      objc_destroyWeak(&location);
    }
  }
}

uint64_t __64__SBSwitcherController_didChangeSettingsForParticipant_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    goto LABEL_10;
  }

  v3 = *(a1 + 32);
  if (v3 == WeakRetained[15])
  {
    if ([WeakRetained[39] isHidden])
    {
LABEL_10:
      v9 = 0;
      goto LABEL_16;
    }

    v3 = *(a1 + 32);
  }

  v4 = *(a1 + 48);
  if (v4 != [v3 sbf_currentOrientation])
  {
    goto LABEL_10;
  }

  v5 = [*(a1 + 32) delegate];
  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;

  if (*(a1 + 32) == WeakRetained[15])
  {
    v11 = *(a1 + 48);
    v9 = v11 != [WeakRetained interfaceOrientation];
  }

  else
  {
    v9 = [v10 needsActuationForUpdateReasons:2];
  }

LABEL_16:
  return v9;
}

- (void)updateOrientationForTraitsDelegate:(id)delegate withUpdateReasons:(int64_t)reasons suggestedAnimator:(id)animator actuationContext:(id)context
{
  delegateCopy = delegate;
  animatorCopy = animator;
  contextCopy = context;
  if (reasons != 4)
  {
    objc_initWeak(&location, self);
    participant = [delegateCopy participant];
    currentOrientation = [participant currentOrientation];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __112__SBSwitcherController_updateOrientationForTraitsDelegate_withUpdateReasons_suggestedAnimator_actuationContext___block_invoke;
    v16[3] = &unk_2783B64C8;
    objc_copyWeak(v18, &location);
    v18[1] = currentOrientation;
    v17 = delegateCopy;
    v18[2] = reasons;
    v15 = MEMORY[0x223D6F7F0](v16);
    [(SBSwitcherController *)self _enqueueOrientationTransitionWithActuationContext:contextCopy suggestedAnimator:animatorCopy completionTask:0 validator:v15 label:@"SBSwitcherControllerEventLabelLiveOverlayParticipantUpdate"];

    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }
}

uint64_t __112__SBSwitcherController_updateOrientationForTraitsDelegate_withUpdateReasons_suggestedAnimator_actuationContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && (*(WeakRetained + 185) & 1) == 0 && (v4 = *(a1 + 48), [*(a1 + 32) participant], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "currentOrientation"), v5, v4 == v6))
  {
    v7 = [*(a1 + 32) needsActuationForUpdateReasons:*(a1 + 56)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_enqueueOrientationTransitionWithActuationContext:(id)context suggestedAnimator:(id)animator completionTask:(id)task validator:(id)validator label:(id)label
{
  v38 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  animatorCopy = animator;
  taskCopy = task;
  validatorCopy = validator;
  labelCopy = label;
  v16 = SBLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = labelCopy;
    _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "[SwitcherOrientation] Enqueued event %@.", buf, 0xCu);
  }

  windowScene = [(SBSwitcherController *)self windowScene];
  _sbDisplayConfiguration = [windowScene _sbDisplayConfiguration];

  v19 = +[SBWorkspace mainWorkspace];
  v20 = [v19 createRequestWithOptions:0 displayConfiguration:_sbDisplayConfiguration];

  [v20 setSource:14];
  _enqueueOrientationTransitionWithActuationContext_suggestedAnimator_completionTask_validator_label__eventLabelGeneration = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%ld", labelCopy, _enqueueOrientationTransitionWithActuationContext_suggestedAnimator_completionTask_validator_label__eventLabelGeneration];
  [v20 setEventLabel:_enqueueOrientationTransitionWithActuationContext_suggestedAnimator_completionTask_validator_label__eventLabelGeneration];

  ++_enqueueOrientationTransitionWithActuationContext_suggestedAnimator_completionTask_validator_label__eventLabelGeneration;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __123__SBSwitcherController__enqueueOrientationTransitionWithActuationContext_suggestedAnimator_completionTask_validator_label___block_invoke;
  v34[3] = &unk_2783B64F0;
  v22 = animatorCopy;
  v35 = v22;
  [v20 setTransactionProvider:v34];
  if (taskCopy)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __123__SBSwitcherController__enqueueOrientationTransitionWithActuationContext_suggestedAnimator_completionTask_validator_label___block_invoke_2;
    v32[3] = &unk_2783A9C70;
    v33 = taskCopy;
    v23 = [v20 addCompletionHandler:v32];
  }

  objc_initWeak(buf, self);
  v24 = +[SBWorkspace mainWorkspace];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __123__SBSwitcherController__enqueueOrientationTransitionWithActuationContext_suggestedAnimator_completionTask_validator_label___block_invoke_3;
  v28[3] = &unk_2783B43B8;
  objc_copyWeak(&v31, buf);
  v25 = validatorCopy;
  v30 = v25;
  v26 = contextCopy;
  v29 = v26;
  [v24 executeTransitionRequest:v20 withValidator:v28];

  objc_destroyWeak(&v31);
  objc_destroyWeak(buf);
}

SBRotateScenesWorkspaceTransaction *__123__SBSwitcherController__enqueueOrientationTransitionWithActuationContext_suggestedAnimator_completionTask_validator_label___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [(SBAppToAppWorkspaceTransaction *)[SBRotateScenesWorkspaceTransaction alloc] initWithTransitionRequest:v3];

  [(SBWorkspaceTransaction *)v4 setSuggestedAnimationController:*(a1 + 32)];

  return v4;
}

uint64_t __123__SBSwitcherController__enqueueOrientationTransitionWithActuationContext_suggestedAnimator_completionTask_validator_label___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (!WeakRetained || (*(WeakRetained + 185) & 1) != 0 || (v6 = *(a1 + 40)) != 0 && !(*(v6 + 16))(v6, v3))
  {
    v8 = 0;
  }

  else
  {
    v7 = [v3 applicationContext];
    [v5 _updateAppTransitionContext:v7 withOrientationActuationContext:*(a1 + 32)];

    v8 = 1;
  }

  return v8;
}

- (void)appendDescriptionForParticipant:(id)participant withBuilder:(id)builder multilinePrefix:(id)prefix
{
  participantCopy = participant;
  builderCopy = builder;
  prefixCopy = prefix;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __84__SBSwitcherController_appendDescriptionForParticipant_withBuilder_multilinePrefix___block_invoke;
  v20[3] = &unk_2783A8ED8;
  v20[4] = self;
  v11 = participantCopy;
  v21 = v11;
  v12 = builderCopy;
  v22 = v12;
  [v12 appendBodySectionWithName:@"Associated Windows" multilinePrefix:prefixCopy block:v20];
  v13 = [(SBSwitcherController *)self participantAssociatedSceneIdentityTokens:v11];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 bs_map:&__block_literal_global_180];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __84__SBSwitcherController_appendDescriptionForParticipant_withBuilder_multilinePrefix___block_invoke_3;
    v17[3] = &unk_2783A92D8;
    v18 = v12;
    v19 = v15;
    v16 = v15;
    [v18 appendBodySectionWithName:@"Associated Scenes" multilinePrefix:prefixCopy block:v17];
  }
}

void __84__SBSwitcherController_appendDescriptionForParticipant_withBuilder_multilinePrefix___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) participantAssociatedWindows:*(a1 + 40)];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v20 = 0u;
  v1 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v1)
  {
    v2 = v1;
    v15 = *v18;
    do
    {
      v3 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v17 + 1) + 8 * v3);
        v5 = *(a1 + 48);
        v6 = MEMORY[0x277CCACA8];
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = [v4 _debugName];
        if ([v4 isHidden])
        {
          v10 = @"NO";
        }

        else
        {
          v10 = @"YES";
        }

        [v4 interfaceOrientation];
        v11 = BSInterfaceOrientationDescription();
        v12 = [v4 rootViewController];
        v13 = [v6 stringWithFormat:@"<%@: %p %@>; Visible:%@; Orientation:%@; Root VC: %@", v8, v4, v9, v10, v11, v12];;
        [v5 appendString:v13 withName:0];

        ++v3;
      }

      while (v2 != v3);
      v2 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v2);
  }
}

- (id)participantAssociatedWindows:(id)windows
{
  v7[1] = *MEMORY[0x277D85DE8];
  switcherWindow = [(SBSwitcherController *)self switcherWindow];
  v4 = switcherWindow;
  if (switcherWindow)
  {
    v7[0] = switcherWindow;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)participantAssociatedSceneIdentityTokens:(id)tokens
{
  contentViewController = [(SBSwitcherController *)self contentViewController];
  liveScenesIdentityTokens = [contentViewController liveScenesIdentityTokens];

  return liveScenesIdentityTokens;
}

- (void)lockStateProvider:(id)provider didUpdateIsUILocked:(BOOL)locked
{
  v5 = [(SBSwitcherController *)self contentViewController:provider];
  [(SBSwitcherController *)self updateWindowVisibilityForSwitcherContentController:v5];
}

- (void)_updateAppTransitionContext:(id)context withOrientationActuationContext:(id)actuationContext
{
  actuationContextCopy = actuationContext;
  contextCopy = context;
  windowManagementContext = [(SBSwitcherController *)self windowManagementContext];
  -[SBSwitcherController _updateAppTransitionContext:withOrientationContext:accountForSceneState:primaryDelegate:](self, "_updateAppTransitionContext:withOrientationContext:accountForSceneState:primaryDelegate:", contextCopy, actuationContextCopy, [windowManagementContext isChamoisOrFlexibleWindowing] ^ 1, self->_primaryElementTraitsParticipantDelegate);
}

- (void)_updateAppTransitionContext:(id)context withOrientationContext:(id)orientationContext accountForSceneState:(BOOL)state primaryDelegate:(id)delegate
{
  stateCopy = state;
  v37 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  orientationContextCopy = orientationContext;
  delegateCopy = delegate;
  interfaceOrientation = [(SBSwitcherController *)self interfaceOrientation];
  sbf_currentOrientation = [(TRAParticipant *)self->_traitsParticipant sbf_currentOrientation];
  sceneCurrentOrientation = [delegateCopy sceneCurrentOrientation];

  v16 = sceneCurrentOrientation == sbf_currentOrientation && stateCopy;
  preventTouchCancellation = [orientationContextCopy preventTouchCancellation];
  animationDisabled = [contextCopy animationDisabled];
  isHidden = [(SBMainSwitcherWindow *)self->_switcherWindow isHidden];
  _isUnderUILock = [(SBSwitcherController *)self _isUnderUILock];
  v21 = _isUnderUILock;
  if ((animationDisabled & 1) != 0 || (isHidden & 1) != 0 || _isUnderUILock || v16)
  {
    v28 = interfaceOrientation;
    v22 = [MEMORY[0x277CF0B70] settingsWithDuration:0.0];
    v23 = SBLogTraitsArbiter();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      v30 = animationDisabled;
      v31 = 1024;
      v32 = isHidden;
      v33 = 1024;
      v34 = v21;
      v35 = 1024;
      v36 = v16;
      _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, "[SwitcherOrientation] animation duration set to zero. animationDisabled{%{BOOL}u}, isWindowHidden{%{BOOL}u}, isWindowHidden{%{BOOL}u}, isSceneInFinalStateAlready{%{BOOL}u}", buf, 0x1Au);
    }

    interfaceOrientation = v28;
  }

  else
  {
    v22 = [SBAnimationUtilities animationSettingsForRotationFromOrientation:interfaceOrientation toOrientation:sbf_currentOrientation withContext:orientationContextCopy];
  }

  [contextCopy setInterfaceOrientation:sbf_currentOrientation];
  [contextCopy setAnimationSettings:v22];
  [contextCopy setPrefersTouchCancellationDisabled:preventTouchCancellation];
  drawingFence = [orientationContextCopy drawingFence];
  [contextCopy setAnimationFence:drawingFence];

  drawingFence2 = [orientationContextCopy drawingFence];
  if (drawingFence2)
  {
    v26 = 0;
  }

  else
  {
    v26 = interfaceOrientation == sbf_currentOrientation;
  }

  v27 = !v26;
  [contextCopy setFencesAnimations:v27];
}

- (int64_t)interfaceOrientationForSceneHandle:(id)handle
{
  sceneIdentifier = [handle sceneIdentifier];
  v5 = [(SBSwitcherController *)self _interfaceOrientationForLayoutElementIdentifier:sceneIdentifier];

  return v5;
}

- (int64_t)interfaceOrientationForLayoutElement:(id)element
{
  uniqueIdentifier = [element uniqueIdentifier];
  v5 = [(SBSwitcherController *)self _interfaceOrientationForLayoutElementIdentifier:uniqueIdentifier];

  return v5;
}

- (id)traitsParticipantForSceneHandle:(id)handle
{
  sceneIdentifier = [handle sceneIdentifier];
  v5 = [(SBSwitcherController *)self _traitsParticipantForLayoutElementIdentifier:sceneIdentifier];

  return v5;
}

- (id)_liveOverlayForTraitsDelegate:(id)delegate
{
  delegateCopy = delegate;
  scene = [delegateCopy scene];
  sceneHandle = [delegateCopy sceneHandle];

  if (scene)
  {
    contentViewController = [(SBSwitcherController *)self contentViewController];
    identityToken = [scene identityToken];
    v9 = [contentViewController liveOverlayForSceneIdentityToken:identityToken];

LABEL_5:
    goto LABEL_6;
  }

  if (sceneHandle)
  {
    contentViewController = [(SBSwitcherController *)self contentViewController];
    v9 = [contentViewController liveOverlayForSceneHandle:sceneHandle];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (int64_t)_interfaceOrientationForLayoutElementIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(SBSwitcherController *)self _traitsParticipantForLayoutElementIdentifier:identifierCopy];
  sbf_currentOrientation = [v5 sbf_currentOrientation];
  if (!sbf_currentOrientation)
  {
    layoutState = [(SBSwitcherController *)self layoutState];
    sbf_currentOrientation = [layoutState interfaceOrientationForElementIdentifier:identifierCopy];
  }

  return sbf_currentOrientation;
}

- (id)_orientationsForLayoutStateElements:(id)elements withAssociatedParticipants:(id)participants
{
  elementsCopy = elements;
  participantsCopy = participants;
  v9 = [(SBSwitcherController *)self _elementsOrientationsForParticipantsByElementIdentifier:participantsCopy];
  v10 = [(SBSwitcherController *)self _areLayoutStateElements:elementsCopy matchedWithAssociatedParticipants:participantsCopy];

  if (!v10)
  {
    v11 = [v9 count];
    if (v11 != [elementsCopy count])
    {
      [(SBSwitcherController *)a2 _orientationsForLayoutStateElements:elementsCopy withAssociatedParticipants:v9];
    }
  }

  return v9;
}

- (id)_elementsOrientationsForParticipantsByElementIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if ([identifierCopy count])
  {
    v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(identifierCopy, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = identifierCopy;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v5 objectForKey:{v10, v14}];
          v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "currentOrientation")}];
          [v4 setObject:v12 forKey:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_areLayoutStateElements:(id)elements matchedWithAssociatedParticipants:(id)participants
{
  v22 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  participantsCopy = participants;
  v7 = [participantsCopy count];
  if (v7 == [elementsCopy count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = elementsCopy;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

          uniqueIdentifier = [*(*(&v17 + 1) + 8 * i) uniqueIdentifier];
          v14 = [participantsCopy objectForKey:uniqueIdentifier];

          if (!v14)
          {
            v15 = 0;
            goto LABEL_13;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v15 = 1;
LABEL_13:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)layoutElementSizingPoliciesForLayoutState:(id)state
{
  v29 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  elements = [stateCopy elements];
  v6 = [elements count];

  if (v6)
  {
    v22 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v6];
    interfaceOrientation = [stateCopy interfaceOrientation];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = [stateCopy elements];
    v23 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v23)
    {
      v20 = *v25;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v24 + 1) + 8 * i);
          v9 = [stateCopy layoutAttributesForElement:v8];
          v10 = [SBDisplayItem displayItemForLayoutElement:v8];
          connections = [(SBHomeScreenConfigurationServer *)v9 connections];
          v12 = [stateCopy interfaceOrientationForLayoutElement:v8];
          displayItemFrameCalculator = self->_displayItemFrameCalculator;
          WeakRetained = objc_loadWeakRetained(&self->_windowScene);
          v15 = [(SBDisplayItemLayoutAttributesCalculator *)displayItemFrameCalculator sizingPolicyForDisplayItem:v10 contentOrientation:v12 containerOrientation:interfaceOrientation proposedSizingPolicy:connections windowScene:WeakRetained];

          v16 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
          uniqueIdentifier = [v8 uniqueIdentifier];
          [v22 setValue:v16 forKey:uniqueIdentifier];
        }

        v23 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v23);
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)_sceneHandleForLayoutElement:(id)element
{
  elementCopy = element;
  v4 = objc_opt_class();
  workspaceEntity = [elementCopy workspaceEntity];

  v6 = SBSafeCast(v4, workspaceEntity);

  v7 = objc_opt_class();
  sceneHandle = [v6 sceneHandle];
  v9 = SBSafeCast(v7, sceneHandle);

  return v9;
}

- (void)_attemptContentViewInterfaceOrientationUpdateForPanGesture:(int64_t)gesture
{
  [(SBSwitcherController *)self switcherSupportedInterfaceOrientations];
  if (!SBFInterfaceOrientationMaskContainsInterfaceOrientation())
  {
    return;
  }

  self->_panGestureRecognizerRequestedOrientation = gesture;
  v6 = __sb__runningInSpringBoard();
  v7 = v6;
  if (v6)
  {
    if (SBFEffectiveDeviceClass() == 2)
    {
      goto LABEL_16;
    }

LABEL_8:
    contentViewController = self->_contentViewController;
    v9 = objc_opt_class();
    v10 = contentViewController;
    if (v9)
    {
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    homeAffordanceOrientationIfMismatchedFromCurrentLayoutState = [(SBSwitcherContentViewControlling *)v12 homeAffordanceOrientationIfMismatchedFromCurrentLayoutState];
    if ((v7 & 1) == 0)
    {
    }

    if (homeAffordanceOrientationIfMismatchedFromCurrentLayoutState)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom] != 1)
  {
    goto LABEL_8;
  }

LABEL_16:
  [(TRAParticipant *)self->_traitsParticipant setNeedsUpdatePreferencesWithReason:@"pan gesture recognizer" animate:0];
LABEL_17:

  [(SBSwitcherController *)self _updateContentViewInterfaceOrientation:gesture];
}

- (void)_updateContentViewInterfaceOrientation:(int64_t)orientation
{
  [(SBSwitcherViewController *)self->_switcherViewController setContentOrientation:?];
  contentViewController = self->_contentViewController;

  [(SBSwitcherContentViewControlling *)contentViewController setContentOrientation:orientation];
}

- (BOOL)canPerformKeyboardShortcutAction:(int64_t)action forBundleIdentifier:(id)identifier orSceneIdentifier:(id)sceneIdentifier
{
  sceneIdentifierCopy = sceneIdentifier;
  identifierCopy = identifier;
  switcherCoordinator = [(SBSwitcherController *)self switcherCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  LOBYTE(action) = [switcherCoordinator canPerformKeyboardShortcutAction:action forBundleIdentifier:identifierCopy orSceneIdentifier:sceneIdentifierCopy windowScene:WeakRetained];

  return action;
}

- (void)performKeyboardShortcutAction:(int64_t)action forBundleIdentifier:(id)identifier orSceneIdentifier:(id)sceneIdentifier
{
  sceneIdentifierCopy = sceneIdentifier;
  identifierCopy = identifier;
  switcherCoordinator = [(SBSwitcherController *)self switcherCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  [switcherCoordinator performKeyboardShortcutAction:action forBundleIdentifier:identifierCopy orSceneIdentifier:sceneIdentifierCopy windowScene:WeakRetained];
}

- (BOOL)shouldMorphFromPIPForTransitionContext:(id)context
{
  contextCopy = context;
  contentViewController = [(SBSwitcherController *)self contentViewController];
  dataSource = [contentViewController dataSource];
  contentViewController2 = [(SBSwitcherController *)self contentViewController];
  v8 = [dataSource switcherContentController:contentViewController2 shouldMorphFromPIPForTransitionContext:contextCopy];

  return v8;
}

- (BOOL)shouldMorphToPIPForTransitionContext:(id)context
{
  contextCopy = context;
  contentViewController = [(SBSwitcherController *)self contentViewController];
  dataSource = [contentViewController dataSource];
  contentViewController2 = [(SBSwitcherController *)self contentViewController];
  v8 = [dataSource switcherContentController:contentViewController2 shouldMorphToPIPForTransitionContext:contextCopy];

  return v8;
}

- (id)requestInAppStatusBarHiddenAssertionForReason:(id)reason animated:(BOOL)animated
{
  animatedCopy = animated;
  reasonCopy = reason;
  objc_initWeak(&location, self);
  v7 = [SBInAppStatusBarHiddenAssertion alloc];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__SBSwitcherController_requestInAppStatusBarHiddenAssertionForReason_animated___block_invoke;
  v10[3] = &unk_2783B6538;
  objc_copyWeak(&v11, &location);
  v12 = animatedCopy;
  v8 = [(SBInAppStatusBarHiddenAssertion *)v7 initWithIdentifier:@"SBSwitcherController.HideStatusBar" forReason:reasonCopy invalidationBlock:v10];
  [(SBSwitcherController *)self _addInAppStatusBarHiddenAssertion:v8 animated:animatedCopy];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v8;
}

void __79__SBSwitcherController_requestInAppStatusBarHiddenAssertionForReason_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeInAppStatusBarHiddenAssertion:v3 animated:*(a1 + 40)];
}

- (BOOL)isInAppStatusBarHidden
{
  contentViewController = self->_contentViewController;
  _currentMainAppLayout = [(SBSwitcherController *)self _currentMainAppLayout];
  LOBYTE(contentViewController) = [(SBSwitcherContentViewControlling *)contentViewController isStatusBarHiddenForAppLayout:_currentMainAppLayout];

  return contentViewController;
}

- (CGRect)statusBarAvoidanceFrameForLayoutRole:(int64_t)role
{
  _currentLayoutState = [(SBSwitcherController *)self _currentLayoutState];
  [(SBSwitcherController *)self statusBarAvoidanceFrameForLayoutRole:role layoutState:_currentLayoutState];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)statusBarAvoidanceFrameForLayoutRole:(int64_t)role layoutState:(id)state
{
  stateCopy = state;
  v7 = stateCopy;
  if (role == 3)
  {
    [stateCopy floatingAppLayout];
  }

  else
  {
    [stateCopy appLayout];
  }
  v8 = ;
  if ([v7 unlockedEnvironmentMode] == 3 && objc_msgSend(v7, "layoutContainsRole:", role))
  {
    interfaceOrientation = [v7 interfaceOrientationForLayoutRole:role];
    windowManagementContext = [(SBSwitcherController *)self windowManagementContext];
    isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

    if (isChamoisOrFlexibleWindowing)
    {
      interfaceOrientation = [v7 interfaceOrientation];
    }

    [(SBSwitcherController *)self frameForItemWithRole:role inMainAppLayout:v8 interfaceOrientation:interfaceOrientation];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    +[SBNubView hitTestWidth];
    v21 = v20;
    +[SBNubView height];
    v23 = v22;
    v30.origin.x = v13;
    v30.origin.y = v15;
    v30.size.width = v17;
    v30.size.height = v19;
    v24 = CGRectGetMidX(v30) + v21 * -0.5;
    v25 = 0.0;
  }

  else
  {
    v24 = *MEMORY[0x277CBF3A0];
    v25 = *(MEMORY[0x277CBF3A0] + 8);
    v21 = *(MEMORY[0x277CBF3A0] + 16);
    v23 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v26 = v24;
  v27 = v25;
  v28 = v21;
  v29 = v23;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (UIEdgeInsets)statusBarEdgeInsets
{
  windowManagementContext = [(SBSwitcherController *)self windowManagementContext];
  isMedusaEnabled = [windowManagementContext isMedusaEnabled];

  if (isMedusaEnabled)
  {
    _currentLayoutState = [(SBSwitcherController *)self _currentLayoutState];
    _currentMainAppLayout = [(SBSwitcherController *)self _currentMainAppLayout];
    if ([(SBSwitcherController *)self unlockedEnvironmentMode]== 3)
    {
      WeakRetained = objc_loadWeakRetained(&self->_windowScene);
      _fbsDisplayConfiguration = [WeakRetained _fbsDisplayConfiguration];

      interfaceOrientation = [_currentLayoutState interfaceOrientation];
      leadingStatusBarStyleRequest = [(SBSwitcherController *)self leadingStatusBarStyleRequest];
      v14 = [SBSceneLayoutCoordinateSpace coordinateSpaceForInterfaceOrientation:interfaceOrientation withReferenceCoordinateSpace:self->_switcherWindow inOrientation:[(SBMainSwitcherWindow *)self->_switcherWindow interfaceOrientation]];
      [v14 bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v47 = 0;
      v48 = &v47;
      v49 = 0x4010000000;
      v50 = &unk_21F9DA6A3;
      v23 = MEMORY[0x277CBF3A0];
      v24 = *(MEMORY[0x277CBF3A0] + 16);
      v51 = *MEMORY[0x277CBF3A0];
      v52 = v24;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __43__SBSwitcherController_statusBarEdgeInsets__block_invoke;
      v35[3] = &unk_2783B6560;
      v25 = _currentLayoutState;
      v36 = v25;
      v26 = _currentMainAppLayout;
      v37 = v26;
      selfCopy = self;
      v27 = _fbsDisplayConfiguration;
      v39 = v27;
      v42 = interfaceOrientation;
      v28 = leadingStatusBarStyleRequest;
      v43 = v16;
      v44 = v18;
      v45 = v20;
      v46 = v22;
      v40 = v28;
      v41 = &v47;
      SBLayoutRoleEnumerateAppLayoutRoles(v35);
      v29 = CGRectEqualToRect(v48[1], *v23);
      if (!v29)
      {
        MinY = CGRectGetMinY(v48[1]);
        MinX = CGRectGetMinX(v48[1]);
        v53.origin.x = v16;
        v53.origin.y = v18;
        v53.size.width = v20;
        v53.size.height = v22;
        Width = CGRectGetWidth(v53);
        v4 = Width - CGRectGetMaxX(v48[1]);
      }

      _Block_object_dispose(&v47, 8);
      if (!v29)
      {

        v31 = 0.0;
        goto LABEL_8;
      }
    }
  }

  MinY = *MEMORY[0x277D768C8];
  MinX = *(MEMORY[0x277D768C8] + 8);
  v31 = *(MEMORY[0x277D768C8] + 16);
  v4 = *(MEMORY[0x277D768C8] + 24);
LABEL_8:
  v32 = MinY;
  v33 = MinX;
  v34 = v4;
  result.right = v34;
  result.bottom = v31;
  result.left = v33;
  result.top = v32;
  return result;
}

void __43__SBSwitcherController_statusBarEdgeInsets__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) elementWithRole:a2];

  if (v4)
  {
    v10 = [*(a1 + 40) itemForLayoutRole:a2];
    v5 = [*(a1 + 48) _deviceApplicationSceneHandleForDisplayItem:v10];
    [SBUIController statusBarFrameForDeviceApplicationSceneHandle:v5 displayConfiguration:*(a1 + 56) interfaceOrientation:*(a1 + 80) statusBarStyleRequest:*(a1 + 64) withinBounds:0 inReferenceSpace:*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)];
    v12.origin.x = v6;
    v12.origin.y = v7;
    v12.size.width = v8;
    v12.size.height = v9;
    *(*(*(a1 + 72) + 8) + 32) = CGRectUnion(*(*(*(a1 + 72) + 8) + 32), v12);
  }
}

- (id)leadingStatusBarStyleRequest
{
  if ([(SBSwitcherController *)self unlockedEnvironmentMode]== 3)
  {
    leadingStatusBarStyleRequest = [(SBSwitcherContentViewControlling *)self->_contentViewController leadingStatusBarStyleRequest];
  }

  else
  {
    leadingStatusBarStyleRequest = 0;
  }

  return leadingStatusBarStyleRequest;
}

- (id)trailingStatusBarStyleRequest
{
  if ([(SBSwitcherController *)self unlockedEnvironmentMode]== 3)
  {
    trailingStatusBarStyleRequest = [(SBSwitcherContentViewControlling *)self->_contentViewController trailingStatusBarStyleRequest];
  }

  else
  {
    trailingStatusBarStyleRequest = 0;
  }

  return trailingStatusBarStyleRequest;
}

- (CGRect)effectiveLeadingStatusBarPartFrame
{
  contentViewController = [(SBSwitcherController *)self contentViewController];
  [contentViewController effectiveLeadingStatusBarPartFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)effectiveTrailingStatusBarPartFrame
{
  contentViewController = [(SBSwitcherController *)self contentViewController];
  [contentViewController effectiveTrailingStatusBarPartFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)statusBarOverlayData
{
  if ([(SBSwitcherController *)self unlockedEnvironmentMode]== 3)
  {
    _currentMainAppLayout = [(SBSwitcherController *)self _currentMainAppLayout];
    v4 = [_currentMainAppLayout itemForLayoutRole:1];

    v5 = [(SBSwitcherController *)self _deviceApplicationSceneHandleForDisplayItem:v4];
    breadcrumbProvider = [v5 breadcrumbProvider];
    if ([breadcrumbProvider hasBreadcrumb])
    {
      overlayStatusBarData = [v5 overlayStatusBarData];
    }

    else
    {
      overlayStatusBarData = 0;
    }
  }

  else
  {
    overlayStatusBarData = 0;
  }

  return overlayStatusBarData;
}

- (id)statusBarActionsByPartIdentifier
{
  v19[1] = *MEMORY[0x277D85DE8];
  if ([(SBSwitcherController *)self unlockedEnvironmentMode]== 3)
  {
    _currentMainAppLayout = [(SBSwitcherController *)self _currentMainAppLayout];
    v4 = [_currentMainAppLayout itemForLayoutRole:1];

    v5 = [(SBSwitcherController *)self _deviceApplicationSceneHandleForDisplayItem:v4];
    breadcrumbProvider = [v5 breadcrumbProvider];
    if ([breadcrumbProvider hasBreadcrumb])
    {
      v7 = *MEMORY[0x277D775A0];
      v17 = breadcrumbProvider;
      v18 = v7;
      v8 = MEMORY[0x277D76290];
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __56__SBSwitcherController_statusBarActionsByPartIdentifier__block_invoke;
      v16 = &unk_2783B2BF8;
      v9 = breadcrumbProvider;
      v10 = [v8 actionWithBlock:&v13];
      v19[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:{1, v13, v14, v15, v16}];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_addInAppStatusBarHiddenAssertion:(id)assertion animated:(BOOL)animated
{
  animatedCopy = animated;
  assertionCopy = assertion;
  inAppStatusBarHiddenAssertions = self->_inAppStatusBarHiddenAssertions;
  v10 = assertionCopy;
  if (!inAppStatusBarHiddenAssertions)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v9 = self->_inAppStatusBarHiddenAssertions;
    self->_inAppStatusBarHiddenAssertions = weakObjectsHashTable;

    assertionCopy = v10;
    inAppStatusBarHiddenAssertions = self->_inAppStatusBarHiddenAssertions;
  }

  [(NSHashTable *)inAppStatusBarHiddenAssertions addObject:assertionCopy];
  if ([(NSHashTable *)self->_inAppStatusBarHiddenAssertions count]== 1)
  {
    [(SBSwitcherContentViewControlling *)self->_contentViewController respondToInAppStatusBarRequestedHiddenUpdateAnimated:animatedCopy];
  }
}

- (void)_removeInAppStatusBarHiddenAssertion:(id)assertion animated:(BOOL)animated
{
  animatedCopy = animated;
  [(NSHashTable *)self->_inAppStatusBarHiddenAssertions removeObject:assertion];
  if (![(NSHashTable *)self->_inAppStatusBarHiddenAssertions count])
  {
    inAppStatusBarHiddenAssertions = self->_inAppStatusBarHiddenAssertions;
    self->_inAppStatusBarHiddenAssertions = 0;

    contentViewController = self->_contentViewController;

    [(SBSwitcherContentViewControlling *)contentViewController respondToInAppStatusBarRequestedHiddenUpdateAnimated:animatedCopy];
  }
}

- (id)coordinateSpaceForInterfaceOrientation:(int64_t)orientation
{
  switcherWindow = [(SBSwitcherController *)self switcherWindow];
  v5 = +[SBSceneLayoutCoordinateSpace coordinateSpaceForInterfaceOrientation:withReferenceCoordinateSpace:inOrientation:](SBSceneLayoutCoordinateSpace, "coordinateSpaceForInterfaceOrientation:withReferenceCoordinateSpace:inOrientation:", orientation, switcherWindow, [switcherWindow interfaceOrientation]);

  return v5;
}

- (id)coordinateSpaceForLayoutState:(id)state
{
  interfaceOrientation = [state interfaceOrientation];

  return [(SBSwitcherController *)self coordinateSpaceForInterfaceOrientation:interfaceOrientation];
}

- (id)coordinateSpaceForLayoutElement:(id)element layoutState:(id)state
{
  elementCopy = element;
  stateCopy = state;
  switcherWindow = [(SBSwitcherController *)self switcherWindow];
  appLayout = [stateCopy appLayout];
  interfaceOrientation = [stateCopy interfaceOrientationForLayoutElement:elementCopy];
  windowManagementContext = [(SBSwitcherController *)self windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if (isChamoisOrFlexibleWindowing)
  {
    interfaceOrientation = [stateCopy interfaceOrientation];
  }

  -[SBSwitcherController referenceFrameForInterfaceOrientation:layoutRole:appLayout:](self, "referenceFrameForInterfaceOrientation:layoutRole:appLayout:", interfaceOrientation, [elementCopy layoutRole], appLayout);
  v13 = [SBSceneLayoutCoordinateSpace coordinateSpaceForFrame:switcherWindow withinCoordinateSpace:?];
  v14 = +[SBSceneLayoutCoordinateSpace coordinateSpaceForInterfaceOrientation:withReferenceCoordinateSpace:inOrientation:](SBSceneLayoutCoordinateSpace, "coordinateSpaceForInterfaceOrientation:withReferenceCoordinateSpace:inOrientation:", interfaceOrientation, v13, [switcherWindow interfaceOrientation]);

  return v14;
}

- (CGRect)frameForItemWithRole:(int64_t)role inMainAppLayout:(id)layout interfaceOrientation:(int64_t)orientation
{
  displayItemFrameCalculator = self->_displayItemFrameCalculator;
  layoutCopy = layout;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  [(SBDisplayItemLayoutAttributesCalculator *)displayItemFrameCalculator frameForLayoutRole:role inAppLayout:layoutCopy containerOrientation:orientation windowScene:WeakRetained];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)frameForFloatingAppLayoutInInterfaceOrientation:(int64_t)orientation floatingConfiguration:(int64_t)configuration
{
  displayItemFrameCalculator = self->_displayItemFrameCalculator;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  [(SBDisplayItemLayoutAttributesCalculator *)displayItemFrameCalculator frameForFloatingAppLayoutInInterfaceOrientation:orientation floatingConfiguration:configuration windowScene:WeakRetained];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)frameForCenterItemWithConfiguration:(int64_t)configuration interfaceOrientation:(int64_t)orientation
{
  displayItemFrameCalculator = self->_displayItemFrameCalculator;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  [(SBDisplayItemLayoutAttributesCalculator *)displayItemFrameCalculator frameForCenterItemWithConfiguration:configuration interfaceOrientation:orientation windowScene:WeakRetained];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)containerBoundsForInterfaceOrientation:(int64_t)orientation
{
  displayItemFrameCalculator = self->_displayItemFrameCalculator;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  [(SBDisplayItemLayoutAttributesCalculator *)displayItemFrameCalculator containerBoundsForWindowScene:WeakRetained containerOrientation:orientation];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)referenceFrameForInterfaceOrientation:(int64_t)orientation layoutRole:(int64_t)role appLayout:(id)layout
{
  if (orientation)
  {
    layoutCopy = layout;
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    _fbsDisplayConfiguration = [WeakRetained _fbsDisplayConfiguration];
    [_fbsDisplayConfiguration bounds];

    [(SBSwitcherController *)self frameForItemWithRole:role inMainAppLayout:layoutCopy interfaceOrientation:orientation];
    _UIWindowConvertRectFromOrientationToOrientation();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v12 = *MEMORY[0x277CBF3A0];
    v14 = *(MEMORY[0x277CBF3A0] + 8);
    v16 = *(MEMORY[0x277CBF3A0] + 16);
    v18 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)referenceFrameForInterfaceOrientation:(int64_t)orientation floatingConfiguration:(int64_t)configuration
{
  if (orientation)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    _fbsDisplayConfiguration = [WeakRetained _fbsDisplayConfiguration];
    [_fbsDisplayConfiguration bounds];

    [(SBSwitcherController *)self frameForFloatingAppLayoutInInterfaceOrientation:orientation floatingConfiguration:configuration];
    _UIWindowConvertRectFromOrientationToOrientation();
  }

  else
  {
    v9 = *MEMORY[0x277CBF3A0];
    v10 = *(MEMORY[0x277CBF3A0] + 8);
    v11 = *(MEMORY[0x277CBF3A0] + 16);
    v12 = *(MEMORY[0x277CBF3A0] + 24);
  }

  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)referenceFrameForInterfaceOrientation:(int64_t)orientation centerConfiguration:(int64_t)configuration
{
  if (orientation)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    _fbsDisplayConfiguration = [WeakRetained _fbsDisplayConfiguration];
    [_fbsDisplayConfiguration bounds];

    [(SBSwitcherController *)self frameForCenterItemWithConfiguration:configuration interfaceOrientation:orientation];
    _UIWindowConvertRectFromOrientationToOrientation();
  }

  else
  {
    v9 = *MEMORY[0x277CBF3A0];
    v10 = *(MEMORY[0x277CBF3A0] + 8);
    v11 = *(MEMORY[0x277CBF3A0] + 16);
    v12 = *(MEMORY[0x277CBF3A0] + 24);
  }

  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context
{
  v143 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  contextCopy = context;
  switcherCoordinator = [(SBSwitcherController *)self switcherCoordinator];
  [switcherCoordinator layoutStateTransitionCoordinator:coordinatorCopy transitionDidBeginWithTransitionContext:contextCopy];

  windowManagementContext = [(SBSwitcherController *)self windowManagementContext];
  isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];
  v110 = windowManagementContext;
  isAutomaticStageCreationEnabled = [windowManagementContext isAutomaticStageCreationEnabled];
  applicationTransitionContext = [contextCopy applicationTransitionContext];
  request = [applicationTransitionContext request];
  toLayoutState = [contextCopy toLayoutState];
  fromLayoutState = [contextCopy fromLayoutState];
  appLayout = [toLayoutState appLayout];
  obj = [fromLayoutState appLayout];
  unlockedEnvironmentMode = [toLayoutState unlockedEnvironmentMode];
  unlockedEnvironmentMode2 = [fromLayoutState unlockedEnvironmentMode];
  if (unlockedEnvironmentMode == 2)
  {
    v16 = unlockedEnvironmentMode2;
    if (([applicationTransitionContext animationDisabled] & 1) == 0)
    {
      if (v16 != 2)
      {
        objc_storeStrong(&self->_activeAppLayoutWhenActivatingMainSwitcher, obj);
      }

      transientOverlayContext = [request transientOverlayContext];
      v18 = transientOverlayContext;
      if (transientOverlayContext && [transientOverlayContext transitionType] == 1)
      {
        v19 = applicationTransitionContext;
        transientOverlay = [v18 transientOverlay];
        v21 = [(SBSwitcherController *)self appLayoutForWorkspaceTransientOverlay:transientOverlay];

        if (v21)
        {
          objc_storeStrong(&self->_activeAppLayoutWhenActivatingMainSwitcher, v21);
        }

        applicationTransitionContext = v19;
      }
    }
  }

  v109 = applicationTransitionContext;
  coverSheetFlyInContext = [applicationTransitionContext coverSheetFlyInContext];
  v23 = coverSheetFlyInContext;
  if (coverSheetFlyInContext)
  {
    [coverSheetFlyInContext progress];
    self->_coverSheetFlyInProgress = v24;
  }

  v104 = v23;
  v25 = MEMORY[0x277CBEB58];
  elements = [fromLayoutState elements];
  v27 = [v25 setWithSet:elements];

  elements2 = [toLayoutState elements];
  [v27 minusSet:elements2];

  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v113 = v27;
  v29 = [v113 countByEnumeratingWithState:&v135 objects:v142 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v136;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v136 != v31)
        {
          objc_enumerationMutation(v113);
        }

        v33 = [(SBSwitcherController *)self _sceneHandleForLayoutElement:*(*(&v135 + 1) + 8 * i)];
        [v33 removeObserver:self];
      }

      v30 = [v113 countByEnumeratingWithState:&v135 objects:v142 count:16];
    }

    while (v30);
  }

  v34 = MEMORY[0x277CBEB58];
  elements3 = [toLayoutState elements];
  v36 = [v34 setWithSet:elements3];

  elements4 = [fromLayoutState elements];
  [v36 minusSet:elements4];

  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v112 = v36;
  v38 = [v112 countByEnumeratingWithState:&v131 objects:v141 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v132;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v132 != v40)
        {
          objc_enumerationMutation(v112);
        }

        v42 = [(SBSwitcherController *)self _sceneHandleForLayoutElement:*(*(&v131 + 1) + 8 * j)];
        [v42 addObserver:self];
      }

      v39 = [v112 countByEnumeratingWithState:&v131 objects:v141 count:16];
    }

    while (v39);
  }

  v108 = fromLayoutState;
  v106 = request;

  [(SBSwitcherController *)self _reevaluateOrientationIfNecessary];
  self->_isPublishedOrientationLocked = self->_shouldLockPublishedOrientation;
  v105 = contextCopy;
  toLayoutState2 = [contextCopy toLayoutState];
  self->_canDetermineActiveOrientation = [toLayoutState2 unlockedEnvironmentMode] != 1;

  [(TRAParticipant *)self->_publisherTraitsParticipant setNeedsUpdatePreferencesWithReason:@"Layout state change did begin"];
  displayItemLayoutAttributesProvider = [(SBSwitcherController *)self displayItemLayoutAttributesProvider];
  if (!isFlexibleWindowingEnabled)
  {
    slideOverDisplayItem = self->_slideOverDisplayItem;
    self->_slideOverDisplayItem = 0;
    v56 = isAutomaticStageCreationEnabled;
    goto LABEL_53;
  }

  interfaceOrientation = [toLayoutState interfaceOrientation];
  if ((interfaceOrientation - 1) < 2)
  {
    v46 = 1;
  }

  else
  {
    v46 = 2 * ((interfaceOrientation - 3) < 2);
  }

  displayOrdinal = [toLayoutState displayOrdinal];
  slideOverDisplayItem = [v108 appLayout];
  unlockedEnvironmentMode3 = [toLayoutState unlockedEnvironmentMode];
  if (unlockedEnvironmentMode3 == 3 || unlockedEnvironmentMode3 == 1 && SBPeekConfigurationIsValid([toLayoutState peekConfiguration]))
  {
    v97 = coordinatorCopy;
    [displayItemLayoutAttributesProvider layoutAttributesMapForAppLayout:appLayout displayOrdinal:displayOrdinal orientation:v46];
    v95 = displayOrdinal;
    v51 = v50 = v46;
    elements5 = [toLayoutState elements];
    v53 = [elements5 bs_compactMap:&__block_literal_global_215];

    v129[0] = MEMORY[0x277D85DD0];
    v129[1] = 3221225472;
    v129[2] = __97__SBSwitcherController_layoutStateTransitionCoordinator_transitionDidBeginWithTransitionContext___block_invoke_2;
    v129[3] = &unk_2783A8C90;
    v54 = v51;
    v130 = v54;
    v96 = v53;
    v55 = [v53 bs_firstObjectPassingTest:v129];
    if (v55)
    {
      [(SBSwitcherController *)self _moveDisplayItemToSlideOver:v55];
    }

    else
    {
      v59 = self->_slideOverDisplayItem;
      if (v59)
      {
        v60 = [displayItemLayoutAttributesProvider layoutAttributesForDisplayItem:v59 inAppLayout:appLayout displayOrdinal:objc_msgSend(toLayoutState orientation:{"displayOrdinal"), v50}];
        v128 = 0;
        v126 = 0u;
        v127 = 0u;
        [(SBDisplayItemLayoutAttributes *)v60 slideOverConfiguration];
        v123 = v126;
        v124 = v127;
        v125 = v128;
        if (SBDisplayItemSlideOverConfigurationIsValid(&v123) && (v128 & 0x100) == 0)
        {
          BYTE1(v128) = 1;
          v123 = v126;
          v124 = v127;
          v125 = v128;
          v62 = [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v60];

          [displayItemLayoutAttributesProvider updateLayoutAttributes:v62 ofDisplayItem:self->_slideOverDisplayItem displayOrdinal:v95 orientation:v50];
          v60 = v62;
        }

        else
        {
          v123 = v126;
          v124 = v127;
          v125 = v128;
          if ((SBDisplayItemSlideOverConfigurationIsValid(&v123) & 1) == 0)
          {
            v61 = self->_slideOverDisplayItem;
            self->_slideOverDisplayItem = 0;
          }
        }
      }
    }

    coordinatorCopy = v97;
    v56 = isAutomaticStageCreationEnabled;
LABEL_49:

    goto LABEL_50;
  }

  v56 = isAutomaticStageCreationEnabled;
  if ([toLayoutState unlockedEnvironmentMode] == 1)
  {
    v57 = self->_slideOverDisplayItem;
    if (v57)
    {
      v54 = [displayItemLayoutAttributesProvider layoutAttributesForDisplayItem:v57 inAppLayout:slideOverDisplayItem displayOrdinal:displayOrdinal orientation:v46];
      v128 = 0;
      v126 = 0u;
      v127 = 0u;
      [(SBDisplayItemLayoutAttributes *)v54 slideOverConfiguration];
      if ((v128 & 0x100) == 0)
      {
        BYTE1(v128) = 1;
        v123 = v126;
        v124 = v127;
        v125 = v128;
        [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v54];
        v58 = v98 = v46;

        [displayItemLayoutAttributesProvider updateLayoutAttributes:v58 ofDisplayItem:self->_slideOverDisplayItem displayOrdinal:displayOrdinal orientation:v98];
        v54 = v58;
      }

      goto LABEL_49;
    }
  }

LABEL_50:
  if (self->_slideOverDisplayItem)
  {
    entitiesWithRemovalContexts = [v109 entitiesWithRemovalContexts];
    v122[0] = MEMORY[0x277D85DD0];
    v122[1] = 3221225472;
    v122[2] = __97__SBSwitcherController_layoutStateTransitionCoordinator_transitionDidBeginWithTransitionContext___block_invoke_3;
    v122[3] = &unk_2783B65A8;
    v122[4] = self;
    v64 = [entitiesWithRemovalContexts bs_containsObjectPassingTest:v122];

    if (v64)
    {
      v65 = self->_slideOverDisplayItem;
      self->_slideOverDisplayItem = 0;
    }
  }

LABEL_53:

  if ([toLayoutState unlockedEnvironmentMode] == 1)
  {
    if (SBPeekConfigurationIsValid([toLayoutState peekConfiguration]))
    {
      appLayout2 = [toLayoutState appLayout];
      if ([appLayout2 containsAnyItemFromSet:self->_desktopSpaceItems])
      {
        restoresPreviouslyOpenWindows = 1;
      }

      else
      {
        restoresPreviouslyOpenWindows = [v110 restoresPreviouslyOpenWindows];
      }
    }

    else
    {
      restoresPreviouslyOpenWindows = [v110 restoresPreviouslyOpenWindows];
    }
  }

  else
  {
    restoresPreviouslyOpenWindows = 1;
  }

  v68 = v109;
  if (v56 & 1 | ((isFlexibleWindowingEnabled & 1) == 0) || !restoresPreviouslyOpenWindows)
  {
    desktopSpaceItems = self->_desktopSpaceItems;
    self->_desktopSpaceItems = 0;
    goto LABEL_104;
  }

  v99 = coordinatorCopy;
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  allItems = [appLayout allItems];
  v70 = [allItems countByEnumeratingWithState:&v118 objects:v140 count:16];
  v71 = v70 == 0;
  if (!v70)
  {
    v81 = 0;
    goto LABEL_83;
  }

  v72 = v70;
  v102 = v70 == 0;
  v73 = 0;
  v74 = *v119;
  do
  {
    for (k = 0; k != v72; ++k)
    {
      if (*v119 != v74)
      {
        objc_enumerationMutation(allItems);
      }

      v76 = *(*(&v118 + 1) + 8 * k);
      displayOrdinal2 = [toLayoutState displayOrdinal];
      interfaceOrientation2 = [toLayoutState interfaceOrientation];
      if ((interfaceOrientation2 - 1) < 2)
      {
        v79 = 1;
      }

      else
      {
        v79 = 2 * ((interfaceOrientation2 - 3) < 2);
      }

      v80 = [displayItemLayoutAttributesProvider layoutAttributesForDisplayItem:v76 inAppLayout:appLayout displayOrdinal:displayOrdinal2 orientation:v79];
      if ([(SBSwitcherController *)self _isDisplayItemFullScreen:v76 preferredAttributes:v80]|| ([(SBDisplayItemLayoutAttributes *)v80 slideOverConfiguration], SBDisplayItemSlideOverConfigurationIsValid(&v126)))
      {
        [(NSMutableSet *)self->_desktopSpaceItems removeObject:v76];
      }

      else
      {
        if (!v73)
        {
          v73 = objc_opt_new();
        }

        [v73 addObject:v76];
      }
    }

    v72 = [allItems countByEnumeratingWithState:&v118 objects:v140 count:16];
  }

  while (v72);

  if (v73)
  {
    v81 = v73;
    allItems = self->_desktopSpaceItems;
    self->_desktopSpaceItems = v81;
    v68 = v109;
    v71 = v102;
LABEL_83:

    goto LABEL_85;
  }

  v81 = 0;
  v71 = 1;
  v68 = v109;
LABEL_85:
  if ([v110 restoresPreviouslyOpenWindows] && objc_msgSend(toLayoutState, "unlockedEnvironmentMode") == 1 && !SBPeekConfigurationIsValid(objc_msgSend(toLayoutState, "peekConfiguration")) && SBPeekConfigurationIsValid(objc_msgSend(v108, "peekConfiguration")))
  {
    objc_storeStrong(&self->_desktopSpaceItems, v81);
  }

  v103 = v81;
  if (v71 && [v110 restoresPreviouslyOpenWindows] && objc_msgSend(v106, "isCrossingDisplays"))
  {
    v83 = self->_desktopSpaceItems;
    self->_desktopSpaceItems = 0;
  }

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  entitiesWithRemovalContexts2 = [v68 entitiesWithRemovalContexts];
  v85 = [entitiesWithRemovalContexts2 countByEnumeratingWithState:&v114 objects:v139 count:16];
  if (v85)
  {
    v86 = v85;
    v87 = *v115;
    do
    {
      for (m = 0; m != v86; ++m)
      {
        if (*v115 != v87)
        {
          objc_enumerationMutation(entitiesWithRemovalContexts2);
        }

        deviceApplicationSceneEntity = [*(*(&v114 + 1) + 8 * m) deviceApplicationSceneEntity];
        if (deviceApplicationSceneEntity)
        {
          v90 = [SBDisplayItem displayItemForWorkspaceEntity:deviceApplicationSceneEntity];
          [(NSMutableSet *)self->_desktopSpaceItems removeObject:v90];
        }
      }

      v86 = [entitiesWithRemovalContexts2 countByEnumeratingWithState:&v114 objects:v139 count:16];
    }

    while (v86);
  }

  v91 = self->_desktopSpaceItems;
  v68 = v109;
  itemsCrossingToOtherDisplay = [v109 itemsCrossingToOtherDisplay];
  [(NSMutableSet *)v91 minusSet:itemsCrossingToOtherDisplay];

  coordinatorCopy = v99;
  desktopSpaceItems = v103;
LABEL_104:

  if (![(NSMutableSet *)self->_desktopSpaceItems count])
  {
    goto LABEL_114;
  }

  if (!self->_restoreDesktopSpaceAfterClosingFullScreenSpace)
  {
    if ([v108 unlockedEnvironmentMode] == 3)
    {
      unlockedEnvironmentMode4 = [toLayoutState unlockedEnvironmentMode];
      LOBYTE(v94) = 0;
      if (unlockedEnvironmentMode4 != 3 || !appLayout)
      {
        goto LABEL_115;
      }

      if ([obj containsAllItemsFromSet:self->_desktopSpaceItems])
      {
        v94 = [appLayout containsAnyItemFromSet:self->_desktopSpaceItems] ^ 1;
LABEL_115:
        self->_restoreDesktopSpaceAfterClosingFullScreenSpace = v94;
        goto LABEL_116;
      }
    }

LABEL_114:
    LOBYTE(v94) = 0;
    goto LABEL_115;
  }

  if ([toLayoutState unlockedEnvironmentMode] != 3 || objc_msgSend(appLayout, "containsAllItemsFromSet:", self->_desktopSpaceItems))
  {
    goto LABEL_114;
  }

LABEL_116:
  [(SBSwitcherContentViewControlling *)self->_contentViewController layoutStateTransitionCoordinator:coordinatorCopy transitionDidBeginWithTransitionContext:v105];
}

uint64_t __97__SBSwitcherController_layoutStateTransitionCoordinator_transitionDidBeginWithTransitionContext___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  [(SBDisplayItemLayoutAttributes *)v2 slideOverConfiguration];
  IsValid = SBDisplayItemSlideOverConfigurationIsValid(v5);

  return IsValid;
}

uint64_t __97__SBSwitcherController_layoutStateTransitionCoordinator_transitionDidBeginWithTransitionContext___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = [SBDisplayItem displayItemForWorkspaceEntity:a2];
  v3 = BSEqualObjects();

  return v3;
}

uint64_t __57__SBSwitcherController__reevaluateOrientationIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[186];
    WeakRetained[186] = 0;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionWillEndWithTransitionContext:(id)context
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  switcherCoordinator = [(SBSwitcherController *)self switcherCoordinator];
  [switcherCoordinator layoutStateTransitionCoordinator:coordinatorCopy transitionWillEndWithTransitionContext:contextCopy];

  [(SBSwitcherContentViewControlling *)self->_contentViewController layoutStateTransitionCoordinator:coordinatorCopy transitionWillEndWithTransitionContext:contextCopy];
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  switcherCoordinator = [(SBSwitcherController *)self switcherCoordinator];
  [switcherCoordinator layoutStateTransitionCoordinator:coordinatorCopy transitionDidEndWithTransitionContext:contextCopy];

  if (self->_isPublishedOrientationLocked)
  {
    self->_isPublishedOrientationLocked = 0;
    [(TRAParticipant *)self->_publisherTraitsParticipant setNeedsUpdatePreferencesWithReason:@"publisher unlock"];
  }

  [(SBSwitcherContentViewControlling *)self->_contentViewController layoutStateTransitionCoordinator:coordinatorCopy transitionDidEndWithTransitionContext:contextCopy];
  isAnySwitcherVisible = [(SBSwitcherController *)self isAnySwitcherVisible];
  suppressHidingProtectedAppsAssertion = self->_suppressHidingProtectedAppsAssertion;
  if (isAnySwitcherVisible)
  {
    if (suppressHidingProtectedAppsAssertion)
    {
      goto LABEL_8;
    }

    v10 = +[SBApplicationController sharedInstanceIfExists];
    _appProtectionCoordinator = [v10 _appProtectionCoordinator];
    v12 = MEMORY[0x277CCACA8];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v12 stringWithFormat:@"%@ - %p", v14, self];
    v16 = [_appProtectionCoordinator acquireSuppressHidingAppsAssertionForReason:v15];
    v17 = self->_suppressHidingProtectedAppsAssertion;
    self->_suppressHidingProtectedAppsAssertion = v16;
  }

  else
  {
    [(BSInvalidatable *)suppressHidingProtectedAppsAssertion invalidate];
    v10 = self->_suppressHidingProtectedAppsAssertion;
    self->_suppressHidingProtectedAppsAssertion = 0;
  }

LABEL_8:
  windowManagementContext = [(SBSwitcherController *)self windowManagementContext];
  isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

  if (!isFlexibleWindowingEnabled)
  {
    lastFlexibleWindowingAppLayout = self->_lastFlexibleWindowingAppLayout;
    self->_lastFlexibleWindowingAppLayout = 0;
    goto LABEL_21;
  }

  v20 = [(NSMutableSet *)self->_desktopSpaceItems copy];
  previousDesktopSpaceItems = self->_previousDesktopSpaceItems;
  self->_previousDesktopSpaceItems = v20;

  lastFlexibleWindowingAppLayout = [(SBSwitcherController *)self layoutState];
  appLayout = [lastFlexibleWindowingAppLayout appLayout];
  applicationTransitionContext = [contextCopy applicationTransitionContext];
  request = [applicationTransitionContext request];
  source = [request source];

  fromLayoutState = [contextCopy fromLayoutState];
  if ([lastFlexibleWindowingAppLayout unlockedEnvironmentMode] == 1 || objc_msgSend(fromLayoutState, "unlockedEnvironmentMode") == 1 && !appLayout || SBPeekConfigurationIsValid(objc_msgSend(lastFlexibleWindowingAppLayout, "peekConfiguration")))
  {
    if ([lastFlexibleWindowingAppLayout unlockedEnvironmentMode] != 1 || source > 0x33 || ((1 << source) & 0xC000400000000) == 0)
    {
      goto LABEL_20;
    }

    v28 = self->_lastFlexibleWindowingAppLayout;
    self->_lastFlexibleWindowingAppLayout = 0;
  }

  else
  {
    v29 = appLayout;
    v28 = self->_lastFlexibleWindowingAppLayout;
    self->_lastFlexibleWindowingAppLayout = v29;
  }

LABEL_20:
LABEL_21:

  if (([(SBAppSwitcherDefaults *)self->_defaults hasEverUsedMultiAppConfiguration]& 1) != 0)
  {
    goto LABEL_28;
  }

  layoutState = [(SBSwitcherController *)self layoutState];
  appLayout2 = [layoutState appLayout];
  allItems = [appLayout2 allItems];
  if ([allItems count] >= 2)
  {
  }

  else
  {
    floatingAppLayout = [layoutState floatingAppLayout];

    if (!floatingAppLayout)
    {
      goto LABEL_27;
    }
  }

  [(SBAppSwitcherDefaults *)self->_defaults setHasEverUsedMultiAppConfiguration:1];
LABEL_27:

LABEL_28:
}

- (BOOL)isAnyProtectedHiddenApplicationVisible
{
  v22 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  _currentMainAppLayout = [(SBSwitcherController *)self _currentMainAppLayout];
  allItems = [_currentMainAppLayout allItems];
  [array addObjectsFromArray:allItems];

  _currentFloatingAppLayout = [(SBSwitcherController *)self _currentFloatingAppLayout];
  allItems2 = [_currentFloatingAppLayout allItems];
  [array addObjectsFromArray:allItems2];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = array;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = MEMORY[0x277CEBE80];
        bundleIdentifier = [*(*(&v17 + 1) + 8 * i) bundleIdentifier];
        v14 = [v12 applicationWithBundleIdentifier:bundleIdentifier];
        isHidden = [v14 isHidden];

        if (isHidden)
        {
          LOBYTE(v9) = 1;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (BOOL)layoutContainsRole:(int64_t)role
{
  layoutState = [(SBSwitcherController *)self layoutState];
  LOBYTE(role) = [layoutState layoutContainsRole:role];

  return role;
}

- (id)layoutStateStudyLogData
{
  v34 = *MEMORY[0x277D85DE8];
  v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
  layoutState = [(SBSwitcherController *)self layoutState];
  v4 = layoutState;
  if (layoutState)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [layoutState elements];
    v5 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v5)
    {
      v6 = v5;
      v28 = *v30;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v30 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v29 + 1) + 8 * i);
          layoutRole = [v8 layoutRole];
          floatingConfiguration = [v4 floatingConfiguration];
          if (layoutRole == 3)
          {
            v11 = floatingConfiguration;
            if (SBFloatingConfigurationIsStashed(floatingConfiguration) || !SBFloatingConfigurationIsValid(v11))
            {
              continue;
            }
          }

          workspaceEntity = [v8 workspaceEntity];
          applicationSceneEntity = [workspaceEntity applicationSceneEntity];
          [applicationSceneEntity sceneHandle];
          v15 = v14 = v4;
          application = [v15 application];
          bundleIdentifier = [application bundleIdentifier];
          v18 = bundleIdentifier;
          if (bundleIdentifier)
          {
            v19 = bundleIdentifier;
          }

          else
          {
            v19 = @"Unknown";
          }

          v20 = SBLayoutRoleDescription(layoutRole);
          [v27 setObject:v19 forKeyedSubscript:v20];

          v4 = v14;
        }

        v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v6);
    }

    v21 = SBStringForSpaceConfiguration([v4 spaceConfiguration]);
    [v27 setObject:v21 forKeyedSubscript:@"SpaceConfiguration"];

    v22 = SBStringForFloatingConfiguration([v4 floatingConfiguration]);
    [v27 setObject:v22 forKeyedSubscript:@"FloatingConfiguration"];

    v23 = SBStringForCenterConfiguration([v4 centerConfiguration]);
    [v27 setObject:v23 forKeyedSubscript:@"CenterConfiguration"];

    v24 = SBStringForPeekConfiguration([v4 peekConfiguration]);
    [v27 setObject:v24 forKeyedSubscript:@"PeekConfiguration"];
  }

  return v27;
}

- (id)entityWithRole:(int64_t)role
{
  layoutState = [(SBSwitcherController *)self layoutState];
  v5 = [layoutState elementWithRole:role];
  workspaceEntity = [v5 workspaceEntity];

  return workspaceEntity;
}

- (int64_t)floatingConfiguration
{
  layoutState = [(SBSwitcherController *)self layoutState];
  floatingConfiguration = [layoutState floatingConfiguration];

  return floatingConfiguration;
}

- (id)activeAndVisibleSceneIdentifiersForApplication:(id)application
{
  applicationCopy = application;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  layoutState = [(SBSwitcherController *)self layoutState];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__SBSwitcherController_activeAndVisibleSceneIdentifiersForApplication___block_invoke;
  v13[3] = &unk_2783B5080;
  v14 = layoutState;
  v15 = applicationCopy;
  v7 = v5;
  v16 = v7;
  v8 = applicationCopy;
  v9 = layoutState;
  SBLayoutRoleEnumerateValidRoles(v13);
  v10 = v16;
  v11 = v7;

  return v7;
}

void __71__SBSwitcherController_activeAndVisibleSceneIdentifiersForApplication___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = [*(a1 + 32) elementWithRole:a2];
  v3 = [v12 workspaceEntity];
  v4 = [v3 applicationSceneEntity];

  v5 = [v4 application];
  v6 = [v5 bundleIdentifier];
  v7 = [*(a1 + 40) bundleIdentifier];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = *(a1 + 48);
    v10 = [v4 sceneHandle];
    v11 = [v10 sceneIdentifier];
    [v9 addObject:v11];
  }
}

- (id)activeTransientOverlayPresentedAppLayout
{
  switcherCoordinator = [(SBSwitcherController *)self switcherCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v5 = [switcherCoordinator activeTransientOverlayPresentedAppLayoutForWindowScene:WeakRetained];

  return v5;
}

- (id)appLayoutForWorkspaceTransientOverlay:(id)overlay
{
  overlayCopy = overlay;
  switcherCoordinator = [(SBSwitcherController *)self switcherCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v7 = [switcherCoordinator appLayoutForWorkspaceTransientOverlay:overlayCopy windowScene:WeakRetained];

  return v7;
}

- (id)createWorkspaceTransientOverlayForAppLayout:(id)layout
{
  layoutCopy = layout;
  switcherCoordinator = [(SBSwitcherController *)self switcherCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v7 = [switcherCoordinator createWorkspaceTransientOverlayForAppLayout:layoutCopy windowScene:WeakRetained];

  return v7;
}

- (void)addAppLayoutForTransientOverlayViewController:(id)controller
{
  controllerCopy = controller;
  switcherCoordinator = [(SBSwitcherController *)self switcherCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  [switcherCoordinator addAppLayoutForTransientOverlayViewController:controllerCopy windowScene:WeakRetained];
}

- (BOOL)hasAppLayoutForTransientOverlayViewController:(id)controller
{
  controllerCopy = controller;
  switcherCoordinator = [(SBSwitcherController *)self switcherCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v7 = [switcherCoordinator hasAppLayoutForTransientOverlayViewController:controllerCopy windowScene:WeakRetained];

  return v7;
}

- (void)removeAppLayoutTransientOverlayViewController:(id)controller
{
  controllerCopy = controller;
  switcherCoordinator = [(SBSwitcherController *)self switcherCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  [switcherCoordinator removeAppLayoutTransientOverlayViewController:controllerCopy windowScene:WeakRetained];
}

- (BOOL)hasTransientOverlayAppLayouts
{
  switcherCoordinator = [(SBSwitcherController *)self switcherCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v5 = [switcherCoordinator hasTransientOverlayAppLayoutsForWindowScene:WeakRetained];

  return v5;
}

- (void)addAcquiredTransientOverlayViewController:(id)controller forAppLayout:(id)layout
{
  layoutCopy = layout;
  controllerCopy = controller;
  switcherCoordinator = [(SBSwitcherController *)self switcherCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  [switcherCoordinator addAcquiredTransientOverlayViewController:controllerCopy forAppLayout:layoutCopy windowScene:WeakRetained];
}

- (BOOL)isAcquiredTransientOverlayViewController:(id)controller
{
  controllerCopy = controller;
  switcherCoordinator = [(SBSwitcherController *)self switcherCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v7 = [switcherCoordinator isAcquiredTransientOverlayViewController:controllerCopy windowScene:WeakRetained];

  return v7;
}

- (void)removeAcquiredTransientOverlayViewController:(id)controller
{
  controllerCopy = controller;
  switcherCoordinator = [(SBSwitcherController *)self switcherCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  [switcherCoordinator removeAcquiredTransientOverlayViewController:controllerCopy windowScene:WeakRetained];
}

- (void)enumerateTransientOverlayViewControllersUsingBlock:(id)block
{
  blockCopy = block;
  switcherCoordinator = [(SBSwitcherController *)self switcherCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  [switcherCoordinator enumerateTransientOverlayViewControllersUsingBlock:blockCopy windowScene:WeakRetained];
}

- (BOOL)activateHomeScreenWithSource:(int64_t)source animated:(BOOL)animated
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__SBSwitcherController_activateHomeScreenWithSource_animated___block_invoke;
  v11[3] = &__block_descriptor_41_e42_v16__0__SBMainWorkspaceTransitionRequest_8l;
  v11[4] = source;
  animatedCopy = animated;
  v5 = MEMORY[0x223D6F7F0](v11, a2);
  v6 = +[SBWorkspace mainWorkspace];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  _fbsDisplayConfiguration = [WeakRetained _fbsDisplayConfiguration];
  v9 = [v6 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration builder:v5];

  return v9;
}

void __62__SBSwitcherController_activateHomeScreenWithSource_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setSource:v3];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__SBSwitcherController_activateHomeScreenWithSource_animated___block_invoke_2;
  v5[3] = &__block_descriptor_33_e54_v16__0__SBWorkspaceApplicationSceneTransitionContext_8l;
  v6 = *(a1 + 40);
  [v4 modifyApplicationContext:v5];
}

void __62__SBSwitcherController_activateHomeScreenWithSource_animated___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = +[(SBWorkspaceEntity *)SBHomeScreenEntity];
  [v4 setActivatingEntity:v3];

  [v4 setAnimationDisabled:(*(a1 + 32) & 1) == 0];
}

- (BOOL)activateMainSwitcherWithSource:(int64_t)source animated:(BOOL)animated
{
  animatedCopy = animated;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__SBSwitcherController_activateMainSwitcherWithSource_animated___block_invoke;
  v14[3] = &unk_2783B3F08;
  v14[4] = self;
  v14[5] = source;
  v7 = MEMORY[0x223D6F7F0](v14, a2);
  v8 = [(SBSwitcherController *)self _makeWorkspaceTransitionValidatorForActivatingMainSwitcherWithSource:source animated:animatedCopy];
  v9 = +[SBWorkspace mainWorkspace];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  _fbsDisplayConfiguration = [WeakRetained _fbsDisplayConfiguration];
  v12 = [v9 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration builder:v7 validator:v8];

  return v12;
}

void __64__SBSwitcherController_activateMainSwitcherWithSource_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 modifyApplicationContext:&__block_literal_global_245];
  [v3 setSource:*(a1 + 40)];
  v4 = [*(a1 + 32) activateSwitcherEventName];
  [v3 setEventLabel:v4];
}

void __64__SBSwitcherController_activateMainSwitcherWithSource_animated___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setRequestedUnlockedEnvironmentMode:2];
  [v2 setWaitsForSceneUpdates:0];
}

- (BOOL)cancelPeekWithSource:(int64_t)source animated:(BOOL)animated
{
  animatedCopy = animated;
  windowManagementContext = [(SBSwitcherController *)self windowManagementContext];
  isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

  if (isFlexibleWindowingEnabled)
  {
    v9 = +[SBWorkspace mainWorkspace];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __54__SBSwitcherController_cancelPeekWithSource_animated___block_invoke;
    v12[3] = &__block_descriptor_41_e42_v16__0__SBMainWorkspaceTransitionRequest_8l;
    v13 = animatedCopy;
    v12[4] = source;
    v10 = [v9 requestTransitionWithOptions:0 builder:v12 validator:0];

    return v10;
  }

  else
  {

    return [(SBSwitcherController *)self activateHomeScreenWithSource:source animated:animatedCopy];
  }
}

void __54__SBSwitcherController_cancelPeekWithSource_animated___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__SBSwitcherController_cancelPeekWithSource_animated___block_invoke_2;
  v4[3] = &__block_descriptor_33_e54_v16__0__SBWorkspaceApplicationSceneTransitionContext_8l;
  v5 = *(a1 + 40);
  v3 = a2;
  [v3 modifyApplicationContext:v4];
  [v3 setSource:*(a1 + 32)];
}

void __54__SBSwitcherController_cancelPeekWithSource_animated___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setRequestedPeekConfiguration:1];
  [v3 setRequestedUnlockedEnvironmentMode:3];
  [v3 setAnimationDisabled:(*(a1 + 32) & 1) == 0];
}

- (BOOL)dismissMainSwitcherWithSource:(int64_t)source animated:(BOOL)animated
{
  animatedCopy = animated;
  if (([SBApp isRunningTest:@"AppSliderDismiss"] & 1) != 0 || (objc_msgSend(SBApp, "isRunningTest:", @"AppSliderDismissRotated") & 1) != 0 || (objc_msgSend(SBApp, "isRunningTest:", @"AppSliderDismissOverApp") & 1) != 0 || (objc_msgSend(SBApp, "isRunningTest:", @"AppSliderDismissOverAppRotated") & 1) != 0 || (objc_msgSend(SBApp, "isRunningTest:", @"AppSliderDismissOverAppInScreenTime") & 1) != 0 || objc_msgSend(SBApp, "isRunningTest:", @"AppSliderDismissOverAppInScreenTimeRotated"))
  {
    v7 = +[SBApplicationTestingManager sharedInstance];
    currentTestName = [v7 currentTestName];

    [*MEMORY[0x277D76620] startedSubTest:@"delay" forTest:currentTestName];
  }

  v9 = [(SBSwitcherController *)self _makeWorkspaceTransitionValidatorForDismissingMainSwitcherToAppLayout:self->_activeAppLayoutWhenActivatingMainSwitcher dismissFloatingSwitcher:0 withSource:source animated:animatedCopy];
  v10 = +[SBWorkspace mainWorkspace];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  _fbsDisplayConfiguration = [WeakRetained _fbsDisplayConfiguration];
  v13 = [v10 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration builder:0 validator:v9];

  return v13;
}

- (BOOL)toggleMainSwitcherWithSource:(int64_t)source animated:(BOOL)animated
{
  animatedCopy = animated;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__SBSwitcherController_toggleMainSwitcherWithSource_animated___block_invoke;
  v14[3] = &unk_2783B3F08;
  v14[4] = self;
  v14[5] = source;
  v7 = MEMORY[0x223D6F7F0](v14, a2);
  v8 = [(SBSwitcherController *)self _makeWorkspaceTransitionValidatorForTogglingMainSwitcherWithSource:source animated:animatedCopy];
  v9 = +[SBWorkspace mainWorkspace];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  _fbsDisplayConfiguration = [WeakRetained _fbsDisplayConfiguration];
  v12 = [v9 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration builder:v7 validator:v8];

  return v12;
}

void __62__SBSwitcherController_toggleMainSwitcherWithSource_animated___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([*(a1 + 32) isMainSwitcherVisible] & 1) == 0)
  {
    [v4 modifyApplicationContext:&__block_literal_global_251];
    [v4 setSource:*(a1 + 40)];
    v3 = [*(a1 + 32) toggleSwitcherEventName];
    [v4 setEventLabel:v3];
  }
}

void __62__SBSwitcherController_toggleMainSwitcherWithSource_animated___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setRequestedUnlockedEnvironmentMode:2];
  [v2 setWaitsForSceneUpdates:0];
}

- (BOOL)dismissMainAndFloatingSwitchersWithSource:(int64_t)source animated:(BOOL)animated
{
  v5 = [(SBSwitcherController *)self _makeWorkspaceTransitionValidatorForDismissingMainSwitcherToAppLayout:self->_activeAppLayoutWhenActivatingMainSwitcher dismissFloatingSwitcher:1 withSource:source animated:animated];
  v6 = +[SBWorkspace mainWorkspace];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  _fbsDisplayConfiguration = [WeakRetained _fbsDisplayConfiguration];
  v9 = [v6 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration builder:0 validator:v5];

  return v9;
}

- (void)configureRequest:(id)request forSwitcherTransitionRequest:(id)transitionRequest withEventLabel:(id)label
{
  labelCopy = label;
  transitionRequestCopy = transitionRequest;
  requestCopy = request;
  switcherCoordinator = [(SBSwitcherController *)self switcherCoordinator];
  [switcherCoordinator _configureRequest:requestCopy forSwitcherTransitionRequest:transitionRequestCopy withEventLabel:labelCopy];
}

- (void)performTransitionWithContext:(id)context animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  contextCopy = context;
  contentViewController = [(SBSwitcherController *)self contentViewController];
  [contentViewController performTransitionWithContext:contextCopy animated:animatedCopy completion:completionCopy];
}

- (id)animationControllerForTransitionRequest:(id)request
{
  requestCopy = request;
  switcherCoordinator = [(SBSwitcherController *)self switcherCoordinator];
  v6 = [switcherCoordinator animationControllerForTransitionRequest:requestCopy];

  return v6;
}

- (void)addAppLayoutForDisplayItem:(id)item completion:(id)completion
{
  completionCopy = completion;
  itemCopy = item;
  switcherCoordinator = [(SBSwitcherController *)self switcherCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  [switcherCoordinator addAppLayoutForDisplayItem:itemCopy windowScene:WeakRetained completion:completionCopy];
}

- (void)addCenterRoleAppLayoutForDisplayItem:(id)item completion:(id)completion
{
  completionCopy = completion;
  itemCopy = item;
  switcherCoordinator = [(SBSwitcherController *)self switcherCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  [switcherCoordinator addCenterRoleAppLayoutForDisplayItem:itemCopy windowScene:WeakRetained completion:completionCopy];
}

- (double)scaleForDownscaledSnapshotGenerationForSceneHandle:(id)handle
{
  handleCopy = handle;
  [(SBSwitcherController *)self _setUpSwitcherWindowIfNeeded];
  contentViewController = [(SBSwitcherController *)self contentViewController];
  [contentViewController snapshotScaleForSceneHandle:handleCopy];
  v7 = v6;

  return v7;
}

- (id)maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:(id)layout ignoreOcclusion:(BOOL)occlusion ignoreCentering:(BOOL)centering
{
  centeringCopy = centering;
  occlusionCopy = occlusion;
  contentViewController = self->_contentViewController;
  layoutCopy = layout;
  v9 = objc_opt_class();
  v10 = contentViewController;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [(SBSwitcherContentViewControlling *)v12 maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:layoutCopy ignoreOcclusion:occlusionCopy ignoreCentering:centeringCopy];

  return v13;
}

uint64_t __52__SBSwitcherController_maximumNumberOfScenesOnStage__block_invoke()
{
  result = SBLayoutSupportsManyForegroundWindows();
  v1 = 4;
  if (result)
  {
    v1 = 100;
  }

  maximumNumberOfScenesOnStage___maximumNumberOfScenesOnStage = v1;
  return result;
}

uint64_t __51__SBSwitcherController_backgroundNethermostWindows__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) backgroundNethermostWindows];
  backgroundNethermostWindows_sBackgroundNethermostWindows = result;
  return result;
}

- (void)_performSwitcherDropWithContext:(id)context
{
  contextCopy = context;
  contentViewController = self->_contentViewController;
  v6 = objc_opt_class();
  v7 = contentViewController;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__SBSwitcherController__performSwitcherDropWithContext___block_invoke;
  v11[3] = &unk_2783A92D8;
  v12 = contextCopy;
  selfCopy = self;
  v10 = contextCopy;
  [(SBSwitcherContentViewControlling *)v9 _performSwitcherDropWithContext:v10 mutationBlock:v11];
}

void __56__SBSwitcherController__performSwitcherDropWithContext___block_invoke(uint64_t a1)
{
  if (SBSwitcherDropRegionWarrantsModelUpdate([*(a1 + 32) currentDropRegion]))
  {
    v2 = [*(a1 + 40) switcherCoordinator];
    [v2 _modifyModelWithDropContext:*(a1 + 32)];
  }
}

- (void)_noteSwitcherDropAnimationCompletedWithContext:(id)context
{
  contentViewController = self->_contentViewController;
  contextCopy = context;
  v4 = objc_opt_class();
  v5 = contentViewController;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [(SBSwitcherContentViewControlling *)v7 _noteSwitcherDropAnimationCompletedWithContext:contextCopy];
}

- (void)_presentMedusaEducationBanner
{
  _currentLayoutState = [(SBSwitcherController *)self _currentLayoutState];
  IsValid = SBPeekConfigurationIsValid([_currentLayoutState peekConfiguration]);
  appLayout = [_currentLayoutState appLayout];
  v5 = appLayout;
  if (IsValid)
  {
    v6 = [appLayout itemForLayoutRole:1];
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  [(SBSwitcherController *)self _presentMedusaBanner:v7 fireInterval:0.7 dismissInterval:0.0];
}

- (void)_presentMedusaBanner:(int64_t)banner fireInterval:(double)interval dismissInterval:(double)dismissInterval
{
  windowManagementContext = [(SBSwitcherController *)self windowManagementContext];
  if ([windowManagementContext isFlexibleWindowingEnabled])
  {

    if (banner < 2)
    {
      return;
    }
  }

  else
  {
  }

  _currentLayoutState = [(SBSwitcherController *)self _currentLayoutState];
  objc_initWeak(&location, self);
  v11 = -[SBMedusaBannerViewController initWithType:orientation:peekConfiguration:]([SBMedusaBannerViewController alloc], "initWithType:orientation:peekConfiguration:", banner, [_currentLayoutState interfaceOrientation], objc_msgSend(_currentLayoutState, "peekConfiguration"));
  medusaBannerViewController = self->_medusaBannerViewController;
  self->_medusaBannerViewController = v11;

  if (dismissInterval > 0.0 && !self->_medusaBannerDismissTimer)
  {
    v13 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"SBMainSwitcherCoordinator.medusaBannerDismissTimer"];
    medusaBannerDismissTimer = self->_medusaBannerDismissTimer;
    self->_medusaBannerDismissTimer = v13;
  }

  medusaBannerPresentTimer = self->_medusaBannerPresentTimer;
  if (!medusaBannerPresentTimer)
  {
    v16 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"SBMainSwitcherCoordinator.medusaBannerPresentTimer"];
    v17 = self->_medusaBannerPresentTimer;
    self->_medusaBannerPresentTimer = v16;

    medusaBannerPresentTimer = self->_medusaBannerPresentTimer;
  }

  [(BSAbsoluteMachTimer *)medusaBannerPresentTimer cancel];
  v18 = self->_medusaBannerPresentTimer;
  v19 = MEMORY[0x277D85CD0];
  v20 = MEMORY[0x277D85CD0];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __74__SBSwitcherController__presentMedusaBanner_fireInterval_dismissInterval___block_invoke;
  v21[3] = &unk_2783B6638;
  objc_copyWeak(v22, &location);
  v22[1] = *&dismissInterval;
  [(BSAbsoluteMachTimer *)v18 scheduleWithFireInterval:v19 leewayInterval:v21 queue:interval handler:0.05];

  objc_destroyWeak(v22);
  objc_destroyWeak(&location);
}

void __74__SBSwitcherController__presentMedusaBanner_fireInterval_dismissInterval___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[12] invalidate];
    v6 = v5[12];
    v5[12] = 0;

    v7 = [SBApp bannerManager];
    [v7 postPresentable:v5[11] withOptions:1 userInfo:0 error:0];

    [v5[13] cancel];
    v8 = v5[13];
    v9 = *(a1 + 40);
    v10 = MEMORY[0x277D85CD0];
    v11 = MEMORY[0x277D85CD0];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __74__SBSwitcherController__presentMedusaBanner_fireInterval_dismissInterval___block_invoke_2;
    v12[3] = &unk_2783A9918;
    objc_copyWeak(&v13, (a1 + 32));
    [v8 scheduleWithFireInterval:v10 leewayInterval:v12 queue:v9 handler:0.05];

    objc_destroyWeak(&v13);
  }
}

void __74__SBSwitcherController__presentMedusaBanner_fireInterval_dismissInterval___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissMedusaBanner];
}

- (void)_dismissMedusaBanner
{
  [(BSAbsoluteMachTimer *)self->_medusaBannerPresentTimer invalidate];
  medusaBannerPresentTimer = self->_medusaBannerPresentTimer;
  self->_medusaBannerPresentTimer = 0;

  [(BSAbsoluteMachTimer *)self->_medusaBannerDismissTimer invalidate];
  medusaBannerDismissTimer = self->_medusaBannerDismissTimer;
  self->_medusaBannerDismissTimer = 0;

  bannerManager = [SBApp bannerManager];
  v5 = [MEMORY[0x277CF0AC0] uniqueIdentificationForPresentable:self->_medusaBannerViewController];
  v6 = [bannerManager revokePresentablesWithIdentification:v5 reason:@"Dismiss Medusa Education Banner" options:0 userInfo:0 error:0];
}

- (void)_invalidateMedusaEducationBannerTimer
{
  [(BSAbsoluteMachTimer *)self->_medusaBannerPresentTimer invalidate];
  medusaBannerPresentTimer = self->_medusaBannerPresentTimer;
  self->_medusaBannerPresentTimer = 0;

  [(BSAbsoluteMachTimer *)self->_medusaBannerDismissTimer invalidate];
  medusaBannerDismissTimer = self->_medusaBannerDismissTimer;
  self->_medusaBannerDismissTimer = 0;

  idleTouchAwarenessClient = self->_idleTouchAwarenessClient;

  [(SBAttentionAwarenessClient *)idleTouchAwarenessClient setEnabled:0];
}

- (id)_sceneEntitiesToForeground
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  foregroundAppLayouts = [(SBSwitcherContentViewControlling *)self->_contentViewController foregroundAppLayouts];
  v5 = [foregroundAppLayouts countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(foregroundAppLayouts);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __50__SBSwitcherController__sceneEntitiesToForeground__block_invoke;
        v12[3] = &unk_2783A8FF8;
        v12[4] = self;
        v13 = v3;
        [v9 enumerate:v12];
      }

      v6 = [foregroundAppLayouts countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

void __50__SBSwitcherController__sceneEntitiesToForeground__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 switcherCoordinator];
  v7 = [v6 _entityForDisplayItem:v5 switcherController:*(a1 + 32)];

  if ([v7 isApplicationSceneEntity])
  {
    [*(a1 + 40) addObject:v7];
  }
}

- (char)_jetsamModeForScene:(id)scene
{
  v4 = [(SBSwitcherController *)self _appLayoutForScene:scene];
  if (v4)
  {
    v5 = [(SBSwitcherContentViewControlling *)self->_contentViewController jetsamModeForAppLayout:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (char)_activityModeForScene:(id)scene
{
  v4 = [(SBSwitcherController *)self _appLayoutForScene:scene];
  if (v4)
  {
    v5 = [(SBSwitcherContentViewControlling *)self->_contentViewController activityModeForAppLayout:v4];
  }

  else
  {
    v5 = -50;
  }

  return v5;
}

- (id)_windowingConfiguration
{
  contentViewController = self->_contentViewController;
  v3 = objc_opt_class();
  v4 = contentViewController;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  windowingConfiguration = [(SBSwitcherContentViewControlling *)v6 windowingConfiguration];

  return windowingConfiguration;
}

- (id)_autoLayoutSpaceForAppLayout:(id)layout
{
  layoutCopy = layout;
  contentViewController = self->_contentViewController;
  v6 = objc_opt_class();
  v7 = contentViewController;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    view = [(SBSwitcherContentViewControlling *)v9 view];
    [view bounds];
    v45 = v12;
    v46 = v11;
    v43 = v14;
    v44 = v13;

    windowScene = [(SBSwitcherController *)self windowScene];
    _currentLayoutState = [(SBSwitcherController *)self _currentLayoutState];
    interfaceOrientation = [_currentLayoutState interfaceOrientation];
    personality = [(SBSwitcherContentViewControlling *)v9 personality];
    [personality leftStatusBarPartIntersectionRegion];
    v40 = v19;
    v41 = v18;
    v21 = v20;
    v23 = v22;
    [personality rightStatusBarPartIntersectionRegion];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    displayItemFrameCalculator = self->_displayItemFrameCalculator;
    floatingDockController = [windowScene floatingDockController];
    [floatingDockController floatingDockHeight];
    v35 = v34;
    screen = [windowScene screen];
    [screen scale];
    v38 = -[SBDisplayItemLayoutAttributesCalculator flexibleWindowingAutoLayoutSpaceForAppLayout:containerOrientation:floatingDockHeight:screenScale:bounds:isEmbeddedDisplay:prefersStripHidden:prefersDockHidden:leftStatusBarPartIntersectionRegion:rightStatusBarPartIntersectionRegion:](displayItemFrameCalculator, "flexibleWindowingAutoLayoutSpaceForAppLayout:containerOrientation:floatingDockHeight:screenScale:bounds:isEmbeddedDisplay:prefersStripHidden:prefersDockHidden:leftStatusBarPartIntersectionRegion:rightStatusBarPartIntersectionRegion:", layoutCopy, interfaceOrientation, [windowScene isExternalDisplayWindowScene] ^ 1, -[SBSwitcherContentViewControlling prefersStripHidden](v9, "prefersStripHidden"), -[SBSwitcherContentViewControlling prefersDockHidden](v9, "prefersDockHidden"), v35, v37, v46, v45, v44, v43, v41, v40, v21, v23, v25, v27, v29, v31);
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

- (id)_previousDesktopSpaceItems
{
  v2 = [(NSSet *)self->_previousDesktopSpaceItems copy];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  v5 = v4;

  return v5;
}

- (id)_desktopSpaceItems
{
  v2 = [(NSMutableSet *)self->_desktopSpaceItems copy];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  v5 = v4;

  return v5;
}

- (id)_managedMainDisplayItems
{
  _desktopSpaceItems = [(SBSwitcherController *)self _desktopSpaceItems];
  _currentMainAppLayout = [(SBSwitcherController *)self _currentMainAppLayout];
  allItems = [_currentMainAppLayout allItems];
  bs_set = [allItems bs_set];

  v7 = [bs_set setByAddingObjectsFromSet:_desktopSpaceItems];

  return v7;
}

- (void)_moveDisplayItemToSlideOver:(id)over
{
  overCopy = over;
  windowManagementContext = [(SBSwitcherController *)self windowManagementContext];
  isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

  if (isFlexibleWindowingEnabled)
  {
    slideOverDisplayItem = self->_slideOverDisplayItem;
    if (slideOverDisplayItem && ([(SBDisplayItem *)slideOverDisplayItem isEqualToItem:overCopy]& 1) == 0)
    {
      [(SBSwitcherController *)self _moveDisplayItemOutOfSlideOver:self->_slideOverDisplayItem];
    }

    objc_storeStrong(&self->_slideOverDisplayItem, over);
  }
}

- (void)_moveDisplayItemOutOfSlideOver:(id)over
{
  overCopy = over;
  windowManagementContext = [(SBSwitcherController *)self windowManagementContext];
  if (![windowManagementContext isFlexibleWindowingEnabled])
  {
LABEL_7:

    goto LABEL_8;
  }

  v6 = BSEqualObjects();

  if (v6)
  {
    windowManagementContext = [(SBSwitcherController *)self _currentLayoutState];
    appLayout = [windowManagementContext appLayout];
    displayOrdinal = [windowManagementContext displayOrdinal];
    interfaceOrientation = [windowManagementContext interfaceOrientation];
    if ((interfaceOrientation - 1) < 2)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2 * ((interfaceOrientation - 3) < 2);
    }

    displayItemLayoutAttributesProvider = [(SBSwitcherController *)self displayItemLayoutAttributesProvider];
    v12 = [displayItemLayoutAttributesProvider layoutAttributesForDisplayItem:self->_slideOverDisplayItem inAppLayout:appLayout displayOrdinal:displayOrdinal orientation:v10];
    [(SBDisplayItemLayoutAttributes *)v12 slideOverConfiguration];
    SBInactiveDisplayItemSlideOverConfigurationFromSlideOverConfiguration(v15, v16);
    v13 = [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v12];

    [displayItemLayoutAttributesProvider updateLayoutAttributes:v13 ofDisplayItem:self->_slideOverDisplayItem displayOrdinal:displayOrdinal orientation:v10];
    slideOverDisplayItem = self->_slideOverDisplayItem;
    self->_slideOverDisplayItem = 0;

    goto LABEL_7;
  }

LABEL_8:
}

- (void)_initializeSlideOverDisplayItemIfNeededForcingStashed:(BOOL)stashed
{
  stashedCopy = stashed;
  selfCopy = self;
  v51 = *MEMORY[0x277D85DE8];
  windowManagementContext = [(SBSwitcherController *)self windowManagementContext];
  isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

  if (isFlexibleWindowingEnabled)
  {
    displayItemLayoutAttributesProvider = [(SBSwitcherController *)selfCopy displayItemLayoutAttributesProvider];
    if (displayItemLayoutAttributesProvider)
    {
      layoutState = [(SBSwitcherController *)selfCopy layoutState];
      displayOrdinal = [layoutState displayOrdinal];
      v28 = layoutState;
      v10 = layoutState;
      v11 = displayOrdinal;
      interfaceOrientation = [v10 interfaceOrientation];
      v45 = 0u;
      v46 = 0u;
      if ((interfaceOrientation - 1) < 2)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2 * ((interfaceOrientation - 3) < 2);
      }

      v47 = 0uLL;
      v48 = 0uLL;
      switcherCoordinator = [(SBSwitcherController *)selfCopy switcherCoordinator];
      v15 = [switcherCoordinator appLayoutsForSwitcherController:selfCopy];

      obj = v15;
      v31 = [v15 countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (v31)
      {
        v16 = 0;
        v30 = *v46;
        do
        {
          v17 = 0;
          do
          {
            if (*v46 != v30)
            {
              objc_enumerationMutation(obj);
            }

            v32 = v17;
            v18 = *(*(&v45 + 1) + 8 * v17);
            v41 = 0u;
            v42 = 0u;
            v43 = 0u;
            v44 = 0u;
            v35 = v18;
            allItems = [v18 allItems];
            v19 = [allItems countByEnumeratingWithState:&v41 objects:v49 count:16];
            if (v19)
            {
              v20 = v19;
              v34 = *v42;
              do
              {
                for (i = 0; i != v20; ++i)
                {
                  if (*v42 != v34)
                  {
                    objc_enumerationMutation(allItems);
                  }

                  v22 = *(*(&v41 + 1) + 8 * i);
                  v23 = [displayItemLayoutAttributesProvider layoutAttributesForDisplayItem:v22 inAppLayout:v35 displayOrdinal:v11 orientation:v13];
                  v40 = 0;
                  v38 = 0u;
                  v39 = 0u;
                  [(SBDisplayItemLayoutAttributes *)v23 slideOverConfiguration];
                  [(SBDisplayItemLayoutAttributes *)v23 slideOverConfiguration];
                  if (SBDisplayItemSlideOverConfigurationIsValid(v36))
                  {
                    if ((v16 & 1) == 0)
                    {
                      objc_storeStrong(&selfCopy->_slideOverDisplayItem, v22);
                    }

                    if (stashedCopy)
                    {
                      v16 = 1;
                      if ((v40 & 0x100) != 0)
                      {
                        goto LABEL_23;
                      }

                      BYTE1(v40) = 1;
                      v36[0] = v38;
                      v36[1] = v39;
                      v37 = v40;
                      [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v23];
                      v24 = stashedCopy;
                      v26 = v25 = selfCopy;

                      [displayItemLayoutAttributesProvider updateLayoutAttributes:v26 ofDisplayItem:v22 displayOrdinal:v11 orientation:v13];
                      v23 = v26;
                      selfCopy = v25;
                      stashedCopy = v24;
                    }

                    v16 = 1;
                  }

LABEL_23:
                }

                v20 = [allItems countByEnumeratingWithState:&v41 objects:v49 count:16];
              }

              while (v20);
            }

            v17 = v32 + 1;
          }

          while (v32 + 1 != v31);
          v31 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
        }

        while (v31);
      }
    }
  }

  else
  {
    slideOverDisplayItem = selfCopy->_slideOverDisplayItem;
    selfCopy->_slideOverDisplayItem = 0;
  }
}

- (BOOL)_isDisplayItemFullScreen:(id)screen preferredAttributes:(id)attributes
{
  v50[1] = *MEMORY[0x277D85DE8];
  screenCopy = screen;
  attributesCopy = attributes;
  if (attributesCopy)
  {
    v8 = attributesCopy;
  }

  else
  {
    _currentLayoutState = [(SBSwitcherController *)self _currentLayoutState];
    displayOrdinal = [_currentLayoutState displayOrdinal];
    displayItemLayoutAttributesProvider = [(SBSwitcherController *)self displayItemLayoutAttributesProvider];
    v12 = [SBAppLayout alloc];
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    v49 = v13;
    v50[0] = screenCopy;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    v15 = [(SBAppLayout *)v12 initWithItemsForLayoutRoles:v14 configuration:1 environment:1 preferredDisplayOrdinal:displayOrdinal];
    interfaceOrientation = [_currentLayoutState interfaceOrientation];
    if ((interfaceOrientation - 1) < 2)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2 * ((interfaceOrientation - 3) < 2);
    }

    v8 = [displayItemLayoutAttributesProvider layoutAttributesForDisplayItem:screenCopy inAppLayout:v15 displayOrdinal:displayOrdinal orientation:v17];

    if (!v8)
    {
      _appsLaunchFullScreenByDefault = [(SBSwitcherController *)self _appsLaunchFullScreenByDefault];
      goto LABEL_19;
    }
  }

  if (SBDisplayItemSizeIsUnspecified(v8))
  {
    _currentLayoutState2 = [(SBSwitcherController *)self _currentLayoutState];
    displayItemFrameCalculator = self->_displayItemFrameCalculator;
    v19 = [SBAppLayout alloc];
    v44 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    v47 = v44;
    v48 = screenCopy;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v21 = -[SBAppLayout initWithItemsForLayoutRoles:configuration:environment:preferredDisplayOrdinal:](v19, "initWithItemsForLayoutRoles:configuration:environment:preferredDisplayOrdinal:", v20, 1, 1, [_currentLayoutState2 displayOrdinal]);
    v45 = screenCopy;
    v46 = v8;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v23 = v22 = screenCopy;
    interfaceOrientation2 = [_currentLayoutState2 interfaceOrientation];
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    [(SBDisplayItemLayoutAttributesCalculator *)displayItemFrameCalculator frameForLayoutRole:1 inAppLayout:v21 layoutAttributesMap:v23 containerOrientation:interfaceOrientation2 windowScene:WeakRetained];
    v27 = v26;
    v29 = v28;

    screenCopy = v22;
  }

  else
  {
    v30 = self->_displayItemFrameCalculator;
    _currentLayoutState2 = [(SBSwitcherController *)self _windowingConfiguration];
    [(SBDisplayItemLayoutAttributesCalculator *)v30 sizeForLayoutAttributes:v8 windowingConfiguration:_currentLayoutState2];
    v27 = v31;
    v29 = v32;
  }

  contentViewController = self->_contentViewController;
  v34 = objc_opt_class();
  v35 = contentViewController;
  if (v34)
  {
    if (objc_opt_isKindOfClass())
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v36 = 0;
  }

  v37 = v36;

  view = [(SBSwitcherContentViewControlling *)v37 view];

  [view bounds];
  _appsLaunchFullScreenByDefault = v29 == v40 && v27 == v39;

LABEL_19:
  return _appsLaunchFullScreenByDefault;
}

- (SBDisplayItemAttributedSize)_centerWindowSizeForPreviousFullscreenWindow
{
  _windowingConfiguration = [(SBSwitcherController *)self _windowingConfiguration];
  [_windowingConfiguration containerBounds];
  v5 = v4;
  v7 = v6;
  [_windowingConfiguration floatingDockHeightWithTopAndBottomPadding];
  v9 = v7 - v8 * 2.0;
  [_windowingConfiguration stripWidth];
  v11 = v5 - v10 * 2.0;
  retstr->_private_opaqueSize = 0u;
  retstr->referenceBounds.origin = 0u;
  retstr->referenceBounds.size = 0u;
  retstr->semanticSizeType = 0;
  [_windowingConfiguration containerBounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [_windowingConfiguration defaultWindowSize];
  [_windowingConfiguration screenEdgePadding];
  SBDisplayItemAttributedSizeInfer(retstr, v11, v9, v13, v15, v17, v19);

  return result;
}

- (void)_noteAppLayoutMovedToFront:(id)front
{
  v41 = *MEMORY[0x277D85DE8];
  frontCopy = front;
  if (!self->_reentrantGuard_inNoteAppLayoutMovedToFront)
  {
    self->_reentrantGuard_inNoteAppLayoutMovedToFront = 1;
    WeakRetained = objc_loadWeakRetained(&self->_switcherCoordinator);
    if ([frontCopy type])
    {
      goto LABEL_39;
    }

    v6 = [WeakRetained switcherControllerForAppLayout:frontCopy];

    if (v6 != self)
    {
      goto LABEL_39;
    }

    _desktopSpaceItems = [(SBSwitcherController *)self _desktopSpaceItems];
    if (![_desktopSpaceItems count] || (objc_msgSend(frontCopy, "containsAllItemsFromSet:", _desktopSpaceItems) & 1) != 0)
    {
LABEL_38:
      self->_reentrantGuard_inNoteAppLayoutMovedToFront = 0;

LABEL_39:
      goto LABEL_40;
    }

    contentViewController = self->_contentViewController;
    v9 = objc_opt_class();
    v10 = contentViewController;
    if (v9)
    {
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v32 = v11;

    _recentAppLayoutsController = [WeakRetained _recentAppLayoutsController];
    v13 = [_recentAppLayoutsController recentsIncludingHiddenAppLayouts:0];

    v33 = v13;
    v14 = [v13 count];
    if (v14 < 1)
    {
LABEL_37:

      goto LABEL_38;
    }

    v15 = v14;
    v16 = 0;
    v17 = 0x7FFFFFFFFFFFFFFFLL;
    v18 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v19 = [v33 objectAtIndex:v16];
      if ([frontCopy isEqual:v19])
      {
        v17 = v16;
      }

      if ([v19 containsAllItemsFromSet:_desktopSpaceItems])
      {
        v18 = v16;
      }

      if (v17 != 0x7FFFFFFFFFFFFFFFLL && v18 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v15 == ++v16)
      {
        if (v18 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_37;
        }

        break;
      }
    }

    v21 = [v33 objectAtIndex:v18];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __51__SBSwitcherController__noteAppLayoutMovedToFront___block_invoke;
    v38[3] = &unk_2783A8C90;
    v22 = _desktopSpaceItems;
    v39 = v22;
    v23 = [v21 appLayoutWithItemsPassingTest:v38];
    if ([v23 containsAllItemsFromSet:v22])
    {
      if (v18 <= v17)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v31 = v21;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v24 = v22;
      v25 = [v24 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v35;
        do
        {
          v28 = 0;
          v29 = v23;
          do
          {
            if (*v35 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v23 = [v29 appLayoutByInsertingItem:*(*(&v34 + 1) + 8 * v28)];

            ++v28;
            v29 = v23;
          }

          while (v26 != v28);
          v26 = [v24 countByEnumeratingWithState:&v34 objects:v40 count:16];
        }

        while (v26);
      }

      v21 = v31;
    }

    delegate = [(SBSwitcherContentViewControlling *)v32 delegate];
    [delegate switcherContentController:v32 bringAppLayoutToFront:v23];

LABEL_36:
    goto LABEL_37;
  }

LABEL_40:
}

- (BOOL)_homeScreenIsOnFirstPage
{
  contentViewController = self->_contentViewController;
  v3 = objc_opt_class();
  v4 = contentViewController;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  personality = [(SBSwitcherContentViewControlling *)v6 personality];

  LOBYTE(v6) = [personality homeScreenIsOnFirstPage];
  return v6;
}

- (BOOL)_appsLaunchFullScreenByDefault
{
  contentViewController = self->_contentViewController;
  v3 = objc_opt_class();
  v4 = contentViewController;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    windowingConfiguration = [(SBSwitcherContentViewControlling *)v6 windowingConfiguration];
    [windowingConfiguration defaultWindowSize];
    v9 = v8;
    v11 = v10;

    view = [(SBSwitcherContentViewControlling *)v6 view];
    [view bounds];
    v14 = v13;
    v16 = v15;

    v17 = v11 == v16 && v9 == v14;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_appLayoutForScene:(id)scene
{
  v29 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__59;
  v26 = __Block_byref_object_dispose__59;
  v27 = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  switcherCoordinator = [(SBSwitcherController *)self switcherCoordinator];
  v6 = [switcherCoordinator appLayoutsForSwitcherController:self];

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v7)
  {
    v8 = *v19;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v19 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v18 + 1) + 8 * v9);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __43__SBSwitcherController__appLayoutForScene___block_invoke;
      v14[3] = &unk_2783B6660;
      v11 = sceneCopy;
      v16 = v10;
      v17 = &v22;
      v15 = v11;
      [v10 enumerate:v14];
      LOBYTE(v10) = v23[5] == 0;

      if ((v10 & 1) == 0)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v12 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v12;
}

void __43__SBSwitcherController__appLayoutForScene___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = [a3 uniqueIdentifier];
  v6 = [*(a1 + 32) identifier];
  if ([v6 isEqualToString:v7])
  {
    *a4 = 1;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 40));
  }
}

- (CGRect)_leftStatusBarPartIntersectionRegion
{
  contentViewController = self->_contentViewController;
  v3 = objc_opt_class();
  v4 = contentViewController;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  personality = [(SBSwitcherContentViewControlling *)v6 personality];

  [personality leftStatusBarPartIntersectionRegion];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)_rightStatusBarPartIntersectionRegion
{
  contentViewController = self->_contentViewController;
  v3 = objc_opt_class();
  v4 = contentViewController;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  personality = [(SBSwitcherContentViewControlling *)v6 personality];

  [personality rightStatusBarPartIntersectionRegion];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (BOOL)_prefersStripHidden
{
  contentViewController = self->_contentViewController;
  v3 = objc_opt_class();
  v4 = contentViewController;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  personality = [(SBSwitcherContentViewControlling *)v6 personality];

  LOBYTE(v6) = [personality prefersStripHidden];
  return v6;
}

- (BOOL)_prefersDockHidden
{
  contentViewController = self->_contentViewController;
  v3 = objc_opt_class();
  v4 = contentViewController;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  personality = [(SBSwitcherContentViewControlling *)v6 personality];

  LOBYTE(v6) = [personality prefersDockHidden];
  return v6;
}

- (BOOL)_prefersStripHiddenAndDisabled
{
  contentViewController = self->_contentViewController;
  v3 = objc_opt_class();
  v4 = contentViewController;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  prefersStripHiddenAndDisabled = [(SBSwitcherContentViewControlling *)v6 prefersStripHiddenAndDisabled];
  return prefersStripHiddenAndDisabled;
}

- (BOOL)_isFloatingDockFullyPresented
{
  windowScene = [(SBSwitcherController *)self windowScene];
  floatingDockController = [windowScene floatingDockController];
  isFloatingDockFullyPresented = [floatingDockController isFloatingDockFullyPresented];

  return isFloatingDockFullyPresented;
}

- (BOOL)_areContinuousExposeStripsUnoccluded
{
  contentViewController = self->_contentViewController;
  v3 = objc_opt_class();
  v4 = contentViewController;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  _areContinuousExposeStripsUnoccluded = [(SBSwitcherContentViewControlling *)v6 _areContinuousExposeStripsUnoccluded];
  return _areContinuousExposeStripsUnoccluded;
}

- (CGSize)_maxScreenSizeWithDockAndStripInset
{
  contentViewController = self->_contentViewController;
  v3 = objc_opt_class();
  v4 = contentViewController;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  personality = [(SBSwitcherContentViewControlling *)v6 personality];

  v8 = [personality windowingConfigurationForInterfaceOrientation:{objc_msgSend(personality, "switcherInterfaceOrientation")}];
  [personality containerViewBounds];
  v10 = v9;
  v12 = v11;
  [personality floatingDockHeight];
  v14 = v13;
  [personality statusBarHeight];
  v16 = v15;
  [v8 stripWidth];
  v18 = v17;
  [personality floatingDockViewTopMargin];
  v20 = v12 - v14 - v16 - v19;

  v21 = v10 - v18;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

- (id)_deviceApplicationSceneHandleForDisplayItem:(id)item
{
  itemCopy = item;
  windowScene = [(SBSwitcherController *)self windowScene];
  sceneManager = [windowScene sceneManager];

  v7 = +[SBApplicationController sharedInstance];
  v8 = [v7 applicationForDisplayItem:itemCopy];

  if (!v8)
  {
    v10 = 0;
    goto LABEL_6;
  }

  uniqueIdentifier = [itemCopy uniqueIdentifier];
  v10 = [sceneManager sceneIdentityForApplication:v8 uniqueIdentifier:uniqueIdentifier];

  if (!v10)
  {
LABEL_6:
    v12 = 0;
    goto LABEL_9;
  }

  v11 = [sceneManager existingSceneHandleForSceneIdentity:v10];
  if ([v11 isDeviceApplicationSceneHandle])
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

LABEL_9:
  v13 = v12;

  return v12;
}

- (void)_stopObservingSceneHandles
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  layoutStateApplicationSceneHandles = [(SBSwitcherController *)self layoutStateApplicationSceneHandles];
  v4 = [layoutStateApplicationSceneHandles countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(layoutStateApplicationSceneHandles);
        }

        [*(*(&v8 + 1) + 8 * v7++) removeObserver:self];
      }

      while (v5 != v7);
      v5 = [layoutStateApplicationSceneHandles countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)_ancillaryTransitionRequestForTransitionRequest:(id)request
{
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  displayIdentity = [requestCopy displayIdentity];
  _fbsDisplayIdentity = [WeakRetained _fbsDisplayIdentity];
  v8 = [displayIdentity isEqual:_fbsDisplayIdentity];

  if ((v8 & 1) != 0 || (([requestCopy applicationContext], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "layoutState"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "elements"), v11 = objc_claimAutoreleasedReturnValue(), v10, v9, -[SBSwitcherController layoutState](self, "layoutState"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "elements"), v13 = objc_claimAutoreleasedReturnValue(), v30[0] = MEMORY[0x277D85DD0], v30[1] = 3221225472, v30[2] = __72__SBSwitcherController__ancillaryTransitionRequestForTransitionRequest___block_invoke, v30[3] = &unk_2783AC4F8, v14 = v11, v31 = v14, objc_msgSend(v13, "bs_filter:", v30), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "bs_map:", &__block_literal_global_272), v16 = objc_claimAutoreleasedReturnValue(), -[SBSwitcherController _desktopSpaceItems](self, "_desktopSpaceItems"), v17 = objc_claimAutoreleasedReturnValue(), v28[0] = MEMORY[0x277D85DD0], v28[1] = 3221225472, v28[2] = __72__SBSwitcherController__ancillaryTransitionRequestForTransitionRequest___block_invoke_4, v28[3] = &unk_2783A8C90, v18 = v16, v29 = v18, objc_msgSend(v17, "bs_filter:", v28), v19 = objc_claimAutoreleasedReturnValue(), v17, !objc_msgSend(v15, "count")) && !objc_msgSend(v19, "count") ? (v22 = 1) : (v20 = [SBMainWorkspaceTransitionRequest alloc], objc_msgSend(WeakRetained, "_fbsDisplayConfiguration"), v21 = objc_claimAutoreleasedReturnValue(), v16 = -[SBMainWorkspaceTransitionRequest initWithDisplayConfiguration:](v20, "initWithDisplayConfiguration:", v21), v21, -[SBMainWorkspaceTransitionRequest setSource:](v16, "setSource:", objc_msgSend(requestCopy, "source")), v24[0] = MEMORY[0x277D85DD0], v24[1] = 3221225472, v24[2] = __72__SBSwitcherController__ancillaryTransitionRequestForTransitionRequest___block_invoke_5, v24[3] = &unk_2783B3D40, v25 = v12, v26 = v15, v27 = v19, -[SBWorkspaceTransitionRequest modifyApplicationContext:](v16, "modifyApplicationContext:", v24), v27, v26, v25, v22 = 0), v19, v29, v18, v15, v31, v13, v12, v14, v22))
  {
    v16 = 0;
  }

  return v16;
}

uint64_t __72__SBSwitcherController__ancillaryTransitionRequestForTransitionRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__SBSwitcherController__ancillaryTransitionRequestForTransitionRequest___block_invoke_2;
  v8[3] = &unk_2783AC4F8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 bs_containsObjectPassingTest:v8];

  return v6;
}

uint64_t __72__SBSwitcherController__ancillaryTransitionRequestForTransitionRequest___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

void __72__SBSwitcherController__ancillaryTransitionRequestForTransitionRequest___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __72__SBSwitcherController__ancillaryTransitionRequestForTransitionRequest___block_invoke_6;
  v18 = &unk_2783B5168;
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  v6 = v5;
  v21 = v6;
  v7 = v4;
  v22 = v7;
  SBLayoutRoleEnumerateValidRoles(&v15);
  v8 = [v6 bs_compactMap:{&__block_literal_global_275, v15, v16, v17, v18}];
  v9 = [v8 setByAddingObjectsFromSet:*(a1 + 48)];

  v10 = [v7 bs_firstObjectPassingTest:&__block_literal_global_277];
  v11 = [v7 bs_firstObjectPassingTest:&__block_literal_global_279];
  v12 = [v7 bs_map:&__block_literal_global_281];
  v13 = [v10 workspaceEntity];
  v14 = [v11 workspaceEntity];
  [v3 setEntities:v12 withPolicy:0 centerEntity:v13 floatingEntity:v14];
  [v3 setItemsCrossingToOtherDisplay:v9];
  if (SBPeekConfigurationIsValid([*(a1 + 32) peekConfiguration]))
  {
    [v3 setRequestedPeekConfiguration:1];
  }
}

void __72__SBSwitcherController__ancillaryTransitionRequestForTransitionRequest___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) elementWithRole:a2];
  if (v3)
  {
    v6 = v3;
    v4 = [*(a1 + 40) containsObject:v3];
    v5 = 56;
    if (v4)
    {
      v5 = 48;
    }

    [*(a1 + v5) addObject:v6];
    v3 = v6;
  }
}

- (void)_updateDisplayLayoutElementForLayoutState:(id)state
{
  if ([state unlockedEnvironmentMode] == 2)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __66__SBSwitcherController__updateDisplayLayoutElementForLayoutState___block_invoke;
    v4[3] = &unk_2783B66A8;
    v4[4] = self;
    [(SBSwitcherController *)self updateDisplayLayoutElementWithBuilder:v4];
    [(SBSwitcherController *)self setDisplayLayoutElementActive:1];
  }

  else
  {

    [(SBSwitcherController *)self setDisplayLayoutElementActive:0];
  }
}

void __66__SBSwitcherController__updateDisplayLayoutElementForLayoutState___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 320);
  v3 = a2;
  v4 = [v2 view];
  [v4 bounds];
  [v3 setReferenceFrame:?];
}

- (void)prepareForCoordinatedLayoutStateTransitionWithContext:(id)context
{
  contentViewController = self->_contentViewController;
  contextCopy = context;
  v4 = objc_opt_class();
  v5 = contentViewController;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [(SBSwitcherContentViewControlling *)v7 prepareForCoordinatedLayoutStateTransitionWithContext:contextCopy];
}

- (void)cleanUpAfterCoordinatedLayoutStateTransitionWithContext:(id)context
{
  contentViewController = self->_contentViewController;
  contextCopy = context;
  v4 = objc_opt_class();
  v5 = contentViewController;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [(SBSwitcherContentViewControlling *)v7 cleanUpAfterCoordinatedLayoutStateTransitionWithContext:contextCopy];
}

- (void)_requestDismissalForHomeScreenBackgroundTaps:(BOOL)taps
{
  tapsCopy = taps;
  windowScene = [(SBSwitcherController *)self windowScene];
  homeScreenController = [windowScene homeScreenController];

  if (tapsCopy)
  {
    [homeScreenController addEventObserver:self];
  }

  else
  {
    [homeScreenController removeEventObserver:self];
  }
}

- (void)homeScreenControllerReceivedTouchInBackground:(id)background
{
  contentViewController = self->_contentViewController;
  v4 = objc_opt_class();
  v5 = contentViewController;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [(SBSwitcherContentViewControlling *)v7 handleTapOutsideContentToDismissCurrentMode];
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if ([key isEqual:@"switcherStyle"])
  {
    [(SBSwitcherController *)self dismissMainAndFloatingSwitchersWithSource:3 animated:1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__SBSwitcherController_settings_changedValueForKey___block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  contentViewController = [(SBSwitcherController *)self contentViewController];
  [contentViewController setShowModifierTimeline:{-[SBAppSwitcherSettings showMainModifierTimeline](self->_settings, "showMainModifierTimeline")}];
}

- (void)client:(id)client attentionLostTimeoutDidExpire:(double)expire forConfigurationGeneration:(unint64_t)generation withAssociatedObject:(id)object
{
  [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient setEnabled:0, generation, object, expire];

  [(SBSwitcherController *)self _presentMedusaEducationBanner];
}

- (BOOL)handleHomeButtonPress
{
  contentViewController = [(SBSwitcherController *)self contentViewController];
  if ([contentViewController handleHomeButtonPress])
  {
    v4 = 1;
  }

  else
  {
    if ((-[SBSwitcherController isAnySwitcherVisible](self, "isAnySwitcherVisible") || ([MEMORY[0x277D0AB20] sharedInstance], v5 = objc_claimAutoreleasedReturnValue(), -[SBSwitcherController activateSwitcherEventName](self, "activateSwitcherEventName"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "hasEventWithName:", v6), v6, v5, v7)) && -[SBSwitcherController isAnySwitcherVisible](self, "isAnySwitcherVisible") && (-[SBSwitcherController activeTransientOverlayPresentedAppLayout](self, "activeTransientOverlayPresentedAppLayout"), v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
    {
      v4 = 1;
      [(SBSwitcherController *)self dismissMainAndFloatingSwitchersWithSource:20 animated:1];
    }

    else
    {
      v4 = 0;
    }

    if ([(SBSwitcherController *)self isInAnyPeekState])
    {
      v4 = 1;
      [(SBSwitcherController *)self activateHomeScreenWithSource:20 animated:1];
    }
  }

  return v4;
}

- (BOOL)handleHeadsetButtonPress:(BOOL)press
{
  pressCopy = press;
  contentViewController = [(SBSwitcherController *)self contentViewController];
  LOBYTE(pressCopy) = [contentViewController handleHeadsetButtonPress:pressCopy];

  return pressCopy;
}

- (BOOL)handleHomeButtonLongPress
{
  contentViewController = [(SBSwitcherController *)self contentViewController];
  handleHomeButtonLongPress = [contentViewController handleHomeButtonLongPress];

  return handleHomeButtonLongPress;
}

- (BOOL)handleLockButtonPress
{
  contentViewController = [(SBSwitcherController *)self contentViewController];
  handleLockButtonPress = [contentViewController handleLockButtonPress];

  return handleLockButtonPress;
}

- (BOOL)handleVoiceCommandButtonPress
{
  contentViewController = [(SBSwitcherController *)self contentViewController];
  handleVoiceCommandButtonPress = [contentViewController handleVoiceCommandButtonPress];

  return handleVoiceCommandButtonPress;
}

- (BOOL)handleVolumeDownButtonPress
{
  contentViewController = [(SBSwitcherController *)self contentViewController];
  handleVolumeDownButtonPress = [contentViewController handleVolumeDownButtonPress];

  return handleVolumeDownButtonPress;
}

- (BOOL)handleVolumeUpButtonPress
{
  contentViewController = [(SBSwitcherController *)self contentViewController];
  handleVolumeUpButtonPress = [contentViewController handleVolumeUpButtonPress];

  return handleVolumeUpButtonPress;
}

- (void)updateDisplayLayoutElementWithBuilder:(id)builder
{
  if (self->_displayLayoutElementAssertion)
  {
    builderCopy = builder;
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    if (!WeakRetained)
    {
      [SBSwitcherController updateDisplayLayoutElementWithBuilder:];
    }

    builderCopy2 = [WeakRetained displayLayoutPublisher];
    if (!builderCopy2)
    {
      [SBSwitcherController updateDisplayLayoutElementWithBuilder:];
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [builderCopy2 transitionAssertionWithReason:v7];

    [(BSInvalidatable *)self->_displayLayoutElementAssertion invalidate];
    displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = 0;

    builderCopy[2](builderCopy, self->_displayLayoutElement);
    v10 = [builderCopy2 addElement:self->_displayLayoutElement];
    v11 = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = v10;

    [v8 invalidate];
  }

  else
  {
    v12 = *(builder + 2);
    builderCopy2 = builder;
    v12();
  }
}

- (void)setDisplayLayoutElementActive:(BOOL)active
{
  displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
  if (active)
  {
    if (displayLayoutElementAssertion)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    if (!WeakRetained)
    {
      [SBSwitcherController setDisplayLayoutElementActive:];
    }

    displayLayoutPublisher = [WeakRetained displayLayoutPublisher];
    if (!displayLayoutPublisher)
    {
      [SBSwitcherController setDisplayLayoutElementActive:];
    }

    v6 = [displayLayoutPublisher addElement:self->_displayLayoutElement];
    v7 = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = v6;

    v8 = displayLayoutPublisher;
  }

  else
  {
    if (!displayLayoutElementAssertion)
    {
      return;
    }

    [(BSInvalidatable *)displayLayoutElementAssertion invalidate];
    v8 = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = 0;
  }
}

- (void)fluidSwitcherGestureManager:(id)manager didBeginGesture:(id)gesture
{
  gestureCopy = gesture;
  managerCopy = manager;
  contentViewController = [(SBSwitcherController *)self contentViewController];
  [contentViewController handleFluidSwitcherGestureManager:managerCopy didBeginGesture:gestureCopy];

  windowScene = [(SBSwitcherController *)self windowScene];
  floatingDockController = [windowScene floatingDockController];
  remoteContentManager = [floatingDockController remoteContentManager];
  [remoteContentManager closeFileStackIconIfNeeded];

  homeScreenController = [windowScene homeScreenController];
  [homeScreenController dismissRemoteWallpaperEditorViewController];
}

- (void)fluidSwitcherGestureManager:(id)manager didUpdateGesture:(id)gesture
{
  gestureCopy = gesture;
  managerCopy = manager;
  contentViewController = [(SBSwitcherController *)self contentViewController];
  [contentViewController handleFluidSwitcherGestureManager:managerCopy didUpdateGesture:gestureCopy];
}

- (void)fluidSwitcherGestureManager:(id)manager didEndGesture:(id)gesture
{
  gestureCopy = gesture;
  managerCopy = manager;
  contentViewController = [(SBSwitcherController *)self contentViewController];
  [contentViewController handleFluidSwitcherGestureManager:managerCopy didEndGesture:gestureCopy];
}

- (void)fluidSwitcherGestureManager:(id)manager clickReceivedForHomeGrabberView:(id)view
{
  viewCopy = view;
  managerCopy = manager;
  gestureManager = [(SBSwitcherController *)self gestureManager];
  v8 = [managerCopy isEqual:gestureManager];

  if (v8)
  {
    contentViewController = [(SBSwitcherController *)self contentViewController];
    [contentViewController clickReceivedForHomeGrabberView:viewCopy];
  }
}

- (void)fluidSwitcherGestureManager:(id)manager tapReceivedForGrabberTongueAtEdge:(unint64_t)edge
{
  managerCopy = manager;
  gestureManager = [(SBSwitcherController *)self gestureManager];
  v8 = [managerCopy isEqual:gestureManager];

  if (v8)
  {
    contentViewController = [(SBSwitcherController *)self contentViewController];
    [contentViewController tapReceivedForGrabberTongueAtEdge:edge];
  }
}

- (CGRect)sceneEntityFrameForWorkspaceEntity:(id)entity inLayoutState:(id)state
{
  v69[1] = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  stateCopy = state;
  switcherViewController = [(SBSwitcherController *)self switcherViewController];
  view = [switcherViewController view];
  [view bounds];

  floatingConfiguration = [stateCopy floatingConfiguration];
  applicationSceneEntity = [entityCopy applicationSceneEntity];
  sceneHandle = [applicationSceneEntity sceneHandle];
  v12 = [(SBSwitcherController *)self interfaceOrientationForSceneHandle:sceneHandle];

  windowManagementContext = [(SBSwitcherController *)self windowManagementContext];
  LODWORD(sceneHandle) = [windowManagementContext isChamoisOrFlexibleWindowing];

  if (sceneHandle)
  {
    interfaceOrientation = [stateCopy interfaceOrientation];
  }

  else
  {
    interfaceOrientation = v12;
  }

  layoutRole = [entityCopy layoutRole];
  appLayout = [stateCopy appLayout];
  v16 = appLayout;
  if (layoutRole)
  {
    v17 = layoutRole;
  }

  else
  {
    v17 = 1;
  }

  if (!appLayout)
  {
    displayItemRepresentation = [entityCopy displayItemRepresentation];
    v19 = [SBAppLayout alloc];
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    v68 = v20;
    v69[0] = displayItemRepresentation;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:&v68 count:1];
    v16 = -[SBAppLayout initWithItemsForLayoutRoles:configuration:environment:preferredDisplayOrdinal:](v19, "initWithItemsForLayoutRoles:configuration:environment:preferredDisplayOrdinal:", v21, 1, 1, [stateCopy displayOrdinal]);
  }

  switcherCoordinator = [(SBSwitcherController *)self switcherCoordinator];
  currentCoordinatedLayoutStateTransitionContext = [switcherCoordinator currentCoordinatedLayoutStateTransitionContext];

  displayItemRepresentation2 = [entityCopy displayItemRepresentation];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  if (currentCoordinatedLayoutStateTransitionContext && [currentCoordinatedLayoutStateTransitionContext isDisplayItemTransitioning:displayItemRepresentation2])
  {
    v26 = WeakRetained;
    fromSwitcherController = [currentCoordinatedLayoutStateTransitionContext fromSwitcherController];
    v28 = [(SBSwitcherController *)self isEqual:fromSwitcherController];

    if (v28)
    {
      [currentCoordinatedLayoutStateTransitionContext toFrameInFromSwitcherForDisplayItem:displayItemRepresentation2];
    }

    toSwitcherController = [currentCoordinatedLayoutStateTransitionContext toSwitcherController];
    v30 = [(SBSwitcherController *)self isEqual:toSwitcherController];

    if (v30)
    {
      [currentCoordinatedLayoutStateTransitionContext toFrameInToSwitcherForDisplayItem:displayItemRepresentation2];
    }

    _fbsDisplayConfiguration = [v26 _fbsDisplayConfiguration];
    [_fbsDisplayConfiguration bounds];

    WeakRetained = v26;
    _UIWindowConvertRectFromOrientationToOrientation();
  }

  else
  {
    peekConfiguration = [stateCopy peekConfiguration];
    if (SBPeekConfigurationIsValid(peekConfiguration))
    {
      v58 = WeakRetained;
      v59 = displayItemRepresentation2;
      v37 = switcherViewController;
      v38 = [(SBAppLayout *)v16 itemForLayoutRole:2];

      if (!v38)
      {
        spaceConfiguration = [stateCopy spaceConfiguration];
        v40 = 2;
        v41 = 4;
        if (spaceConfiguration != 2)
        {
          v41 = spaceConfiguration;
        }

        if (spaceConfiguration != 4)
        {
          v40 = v41;
        }

        if (peekConfiguration == 3)
        {
          v42 = v40;
        }

        else
        {
          v42 = spaceConfiguration;
        }

        v43 = [SBDisplayItem displayItemWithType:0 bundleIdentifier:@"com.apple.springboard.PeekPlacholderItem" uniqueIdentifier:@"com.apple.springboard.PeekPlacholderItem.1"];
        v44 = [(SBAppLayout *)v16 appLayoutByInsertingItem:v43 inLayoutRole:2];

        v16 = [v44 appLayoutByModifyingConfiguration:SBAppLayoutConfigurationFromMainDisplayLayoutStateSpaceConfiguration(v42)];
      }

      switcherViewController = v37;
      WeakRetained = v58;
      displayItemRepresentation2 = v59;
    }

    if (v17 == 3)
    {
      [(SBSwitcherController *)self referenceFrameForInterfaceOrientation:interfaceOrientation floatingConfiguration:floatingConfiguration];
    }

    else if (v17 == 4)
    {
      -[SBSwitcherController referenceFrameForInterfaceOrientation:centerConfiguration:](self, "referenceFrameForInterfaceOrientation:centerConfiguration:", interfaceOrientation, [stateCopy centerConfiguration]);
    }

    else
    {
      [(SBSwitcherController *)self referenceFrameForInterfaceOrientation:interfaceOrientation layoutRole:v17 appLayout:v16];
    }
  }

  v45 = v32;
  v46 = v33;
  v47 = v34;
  v48 = v35;
  if (v34 == *MEMORY[0x277CBF3A8] && v35 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v49 = displayItemRepresentation2;
    v50 = switcherViewController;
    v51 = SBLogAppSwitcher();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      [WeakRetained _fbsDisplayIdentity];
      v57 = v56 = WeakRetained;
      *buf = 138543874;
      v63 = entityCopy;
      v64 = 2114;
      v65 = v16;
      v66 = 2114;
      v67 = v57;
      _os_log_error_impl(&dword_21ED4E000, v51, OS_LOG_TYPE_ERROR, "produced {0,0} with entity %{public}@, appLayout %{public}@ windowScene displayIdentity %{public}@", buf, 0x20u);

      WeakRetained = v56;
    }

    switcherViewController = v50;
    displayItemRepresentation2 = v49;
  }

  v52 = v45;
  v53 = v46;
  v54 = v47;
  v55 = v48;
  result.size.height = v55;
  result.size.width = v54;
  result.origin.y = v53;
  result.origin.x = v52;
  return result;
}

- (void)updateWindowVisibilityForSwitcherContentController:(id)controller
{
  controllerCopy = controller;
  contentViewController = [(SBSwitcherController *)self contentViewController];

  v5 = controllerCopy;
  if (contentViewController == controllerCopy)
  {
    _isUnderUILock = [(SBSwitcherController *)self _isUnderUILock];
    v7 = [controllerCopy isWindowVisible] ^ 1 | _isUnderUILock;
    switcherWindow = [(SBSwitcherController *)self switcherWindow];
    switcherViewController = [(SBSwitcherController *)self switcherViewController];
    if ((v7 & 1) != [switcherWindow isHidden])
    {
      if ((v7 & 1) == 0)
      {
        [switcherWindow makeKeyAndVisible];
      }

      [switcherWindow setHidden:v7 & 1];
      [switcherViewController bs_endAppearanceTransition:(v7 & 1) == 0];
      [(TRAParticipant *)self->_traitsParticipant setNeedsUpdatePreferencesWithReason:@"Window visibility change"];
      [(TRAParticipant *)self->_publisherTraitsParticipant setNeedsUpdatePreferencesWithReason:@"Window visibility change"];
    }

    v5 = controllerCopy;
  }
}

- (void)viewDidLoadForSwitcherViewController:(id)controller
{
  switcherCoordinator = [(SBSwitcherController *)self switcherCoordinator];
  [switcherCoordinator switcherControllerViewDidLoad:self];

  [(SBSwitcherController *)self _updateContentViewControllerIfNeeded];
  _currentLayoutState = [(SBSwitcherController *)self _currentLayoutState];
  -[SBSwitcherController _updateContentViewInterfaceOrientation:](self, "_updateContentViewInterfaceOrientation:", [_currentLayoutState interfaceOrientation]);
}

- (void)viewWillAppearForSwitcherViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  switcherCoordinator = [(SBSwitcherController *)self switcherCoordinator];
  [switcherCoordinator switcherControllerViewWillAppear:self animated:animatedCopy];
}

- (int64_t)overrideInterfaceOrientationMechanicsForSwitcherViewController:(id)controller
{
  contentViewController = [(SBSwitcherController *)self contentViewController];
  dataSource = [contentViewController dataSource];
  v5 = [dataSource switcherInterfaceOrientationForSwitcherContentController:contentViewController];

  return v5;
}

- (BOOL)isMenuBarSupported
{
  contentViewController = [(SBSwitcherController *)self contentViewController];
  canShowMenuBar = [contentViewController canShowMenuBar];

  return canShowMenuBar;
}

- (id)menuBarRecipientScene
{
  contentViewController = [(SBSwitcherController *)self contentViewController];
  canShowMenuBar = [contentViewController canShowMenuBar];

  if (canShowMenuBar)
  {
    _currentMainAppLayout = [(SBSwitcherController *)self _currentMainAppLayout];
    displayItemLayoutAttributesProvider = [(SBSwitcherController *)self displayItemLayoutAttributesProvider];
    preferredDisplayOrdinal = [_currentMainAppLayout preferredDisplayOrdinal];
    interfaceOrientation = [(SBSwitcherController *)self interfaceOrientation];
    if ((interfaceOrientation - 1) < 2)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2 * ((interfaceOrientation - 3) < 2);
    }

    v10 = [displayItemLayoutAttributesProvider layoutAttributesMapForAppLayout:_currentMainAppLayout displayOrdinal:preferredDisplayOrdinal orientation:v9];

    allKeys = [v10 allKeys];
    v12 = SBDisplayItemDescendingInteractionTimeComparator(v10);
    v13 = [allKeys sortedArrayUsingComparator:v12];

    firstObject = [v13 firstObject];
    v15 = [(SBSwitcherController *)self _deviceApplicationSceneHandleForDisplayItem:firstObject];

    if (v15)
    {
      sceneIfExists = [v15 sceneIfExists];
    }

    else
    {
      sceneIfExists = 0;
    }
  }

  else
  {
    sceneIfExists = 0;
  }

  return sceneIfExists;
}

- (BOOL)isStatusBarStyleControlledBySystem
{
  contentViewController = [(SBSwitcherController *)self contentViewController];
  isStatusBarStyleControlledBySystem = [contentViewController isStatusBarStyleControlledBySystem];

  return isStatusBarStyleControlledBySystem;
}

- (BOOL)shouldProtectTopScreenEdgeForScene:(id)scene
{
  sceneCopy = scene;
  _currentMainAppLayout = [(SBSwitcherController *)self _currentMainAppLayout];
  v6 = [(SBSwitcherController *)self maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:_currentMainAppLayout ignoreOcclusion:1 ignoreCentering:0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__SBSwitcherController_shouldProtectTopScreenEdgeForScene___block_invoke;
  v10[3] = &unk_2783A8C90;
  v11 = sceneCopy;
  v7 = sceneCopy;
  v8 = [v6 bs_containsObjectPassingTest:v10];

  return v8;
}

uint64_t __59__SBSwitcherController_shouldProtectTopScreenEdgeForScene___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (id)appLeadingStatusBarStyleRequest
{
  contentViewController = [(SBSwitcherController *)self contentViewController];
  leadingStatusBarStyleRequest = [contentViewController leadingStatusBarStyleRequest];

  return leadingStatusBarStyleRequest;
}

- (id)appTrailingStatusBarStyleRequest
{
  contentViewController = [(SBSwitcherController *)self contentViewController];
  trailingStatusBarStyleRequest = [contentViewController trailingStatusBarStyleRequest];

  return trailingStatusBarStyleRequest;
}

- (BOOL)isLeadingStatusBarRegionPreferredHiddenByApp
{
  contentViewController = [(SBSwitcherController *)self contentViewController];
  v3 = [contentViewController isStatusBarPartPreferredHiddenByApp:2];

  return v3;
}

- (BOOL)isTrailingStatusBarRegionPreferredHiddenByApp
{
  contentViewController = [(SBSwitcherController *)self contentViewController];
  v3 = [contentViewController isStatusBarPartPreferredHiddenByApp:8];

  return v3;
}

- (id)statusBarStyleAttributesForScene:(id)scene
{
  sceneCopy = scene;
  contentViewController = [(SBSwitcherController *)self contentViewController];
  v6 = [contentViewController statusBarStyleAttributesForScene:sceneCopy];

  return v6;
}

- (id)windowArrangementMenuWithOptions:(unint64_t)options
{
  v4 = [(SBSwitcherController *)self _buildWindowArrangementMenuForKeyCommandRegistration:0 additionalOptions:options];
  v5 = [MEMORY[0x277D75710] menuWithTitle:&stru_283094718 image:0 identifier:0 options:options | 1 children:v4];

  return v5;
}

- (id)hideMenuWithOptions:(unint64_t)options
{
  v4 = [(SBSwitcherController *)self _buildHideMenuWithAdditionalOptions:?];
  v5 = [MEMORY[0x277D75710] menuWithTitle:&stru_283094718 image:0 identifier:0 options:options | 1 children:v4];

  return v5;
}

- (id)displayItemLayoutAttributesForScene:(id)scene
{
  sceneCopy = scene;
  _currentMainAppLayout = [(SBSwitcherController *)self _currentMainAppLayout];
  displayItemLayoutAttributesProvider = [(SBSwitcherController *)self displayItemLayoutAttributesProvider];
  preferredDisplayOrdinal = [_currentMainAppLayout preferredDisplayOrdinal];
  interfaceOrientation = [(SBSwitcherController *)self interfaceOrientation];
  if ((interfaceOrientation - 1) < 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * ((interfaceOrientation - 3) < 2);
  }

  v10 = [displayItemLayoutAttributesProvider layoutAttributesMapForAppLayout:_currentMainAppLayout displayOrdinal:preferredDisplayOrdinal orientation:v9];

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__59;
  v21 = __Block_byref_object_dispose__59;
  v22 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__SBSwitcherController_displayItemLayoutAttributesForScene___block_invoke;
  v14[3] = &unk_2783B4AC8;
  v11 = sceneCopy;
  v15 = v11;
  v16 = &v17;
  [v10 enumerateKeysAndObjectsUsingBlock:v14];
  v12 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v12;
}

void __60__SBSwitcherController_displayItemLayoutAttributesForScene___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a3;
  v8 = [a2 bundleIdentifier];
  v9 = [*(a1 + 32) clientHandle];
  v10 = [v9 bundleIdentifier];
  v11 = [v8 isEqualToString:v10];

  if (v11)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (void)applyDemoLayoutAttributesToScene:(id)scene
{
  contentViewController = self->_contentViewController;
  identifier = [scene identifier];
  [(SBSwitcherContentViewControlling *)contentViewController performSwitcherShortcutAction:36 forSceneIdentifier:identifier];
}

- (void)demoMinimizeScene:(id)scene
{
  contentViewController = self->_contentViewController;
  identifier = [scene identifier];
  [(SBSwitcherContentViewControlling *)contentViewController performSwitcherShortcutAction:4 forSceneIdentifier:identifier];
}

- (id)windowControlsViewController
{
  _currentMainAppLayout = [(SBSwitcherController *)self _currentMainAppLayout];
  _topmostDisplayItem = [(SBSwitcherController *)self _topmostDisplayItem];
  v5 = [_currentMainAppLayout leafAppLayoutForItem:_topmostDisplayItem];
  v6 = objc_opt_class();
  v7 = SBSafeCast(v6, self->_contentViewController);
  personality = [v7 personality];
  if (personality)
  {
    v9 = personality;
    [personality windowControlsLayoutForLeafAppLayout:v5];

    if (v14 == 1)
    {
      personality2 = [v7 personality];
      v11 = [personality2 topAffordanceOptionsMaskForLeafAppLayout:v5];

      v12 = [objc_alloc(MEMORY[0x277D6C088]) initWithElements:SBWindowControlsElementsFromTopAffordanceOptionsMask(v11) delegate:self];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (double)windowControlsHorizontalSafeAreaPaddingForScene:(id)scene
{
  v42 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  selfCopy = self;
  contentViewController = self->_contentViewController;
  v5 = objc_opt_class();
  v6 = contentViewController;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v32 = v8;
  personality = [(SBSwitcherContentViewControlling *)v8 personality];
  hiddenContainerStatusBarParts = [personality hiddenContainerStatusBarParts];

  v11 = 0.0;
  if ((hiddenContainerStatusBarParts & 2) != 0)
  {
    _currentMainAppLayout = [(SBSwitcherController *)selfCopy _currentMainAppLayout];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    leafAppLayouts = [_currentMainAppLayout leafAppLayouts];
    v14 = [leafAppLayouts countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v14)
    {
      v15 = v14;
      v29 = _currentMainAppLayout;
      v31 = 0;
      v34 = *v38;
      obj = leafAppLayouts;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v38 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v37 + 1) + 8 * i);
          v18 = [v17 itemForLayoutRole:1];
          v19 = [(SBSwitcherController *)selfCopy _deviceApplicationSceneHandleForDisplayItem:v18];
          if (v19)
          {
            v36 = 0u;
            personality2 = [(SBSwitcherContentViewControlling *)v32 personality];
            v21 = personality2;
            if (personality2)
            {
              [personality2 windowControlsLayoutForLeafAppLayout:v17];
            }

            else
            {
              v36 = 0u;
            }

            statusBarParts = [v19 statusBarParts];
            uniqueIdentifier = [v18 uniqueIdentifier];
            identifier = [sceneCopy identifier];
            v25 = [uniqueIdentifier isEqualToString:identifier];

            if (v25)
            {
              v26 = v36 == 1;
            }

            else
            {
              v26 = 0;
            }

            if (v26)
            {

              goto LABEL_31;
            }

            if (v36 == 3)
            {
              v27 = v31;
              if (BYTE8(v36) == 1)
              {
                v27 = statusBarParts | v31;
              }

              v31 = v27;
            }
          }
        }

        v15 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }

      if (v31)
      {
        v11 = 51.0;
      }

      else
      {
        v11 = 0.0;
      }
    }

    else
    {
    }
  }

LABEL_31:

  return v11;
}

- (id)_buildWindowArrangementMenuForKeyCommandRegistration:(BOOL)registration additionalOptions:(unint64_t)options
{
  registrationCopy = registration;
  v291[1] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  array4 = [MEMORY[0x277CBEB18] array];
  array5 = [MEMORY[0x277CBEB18] array];
  array6 = [MEMORY[0x277CBEB18] array];
  windowManagementContext = [(SBSwitcherController *)self windowManagementContext];
  isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

  menuBarRecipientScene = [(SBSwitcherController *)self menuBarRecipientScene];
  v253 = registrationCopy;
  v255 = menuBarRecipientScene;
  if (registrationCopy)
  {
    identifier = 0;
  }

  else
  {
    identifier = [menuBarRecipientScene identifier];
  }

  v9 = MEMORY[0x277D75378];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [mainBundle localizedStringForKey:@"CLOSE_ALL_WINDOW_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
  v12 = [v9 alternateWithTitle:v11 action:sel__handleCloseAllWindowsShortcut_ modifierFlags:0x80000];

  v13 = MEMORY[0x277D75650];
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [mainBundle2 localizedStringForKey:@"CLOSE_WINDOW_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
  v16 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark"];
  v249 = v12;
  v291[0] = v12;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v291 count:1];
  v18 = [v13 commandWithTitle:v15 image:v16 action:sel__handleCloseWindowShortcut_ input:@"w" modifierFlags:0x100000 propertyList:identifier alternates:v17];
  _allowGlobeModifierKeyCommand = [v18 _allowGlobeModifierKeyCommand];

  [_allowGlobeModifierKeyCommand setRepeatBehavior:2];
  v248 = _allowGlobeModifierKeyCommand;
  [array2 addObject:_allowGlobeModifierKeyCommand];
  v20 = MEMORY[0x277D75650];
  mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
  v22 = [mainBundle3 localizedStringForKey:@"REMOVE_WINDOW_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
  v23 = [MEMORY[0x277D755B8] systemImageNamed:@"minus.rectangle"];
  v24 = [v20 commandWithTitle:v22 image:v23 action:sel__handleRemoveWindowFromSetShortcut_ input:@"m" modifierFlags:0x100000 propertyList:identifier];
  _allowGlobeModifierKeyCommand2 = [v24 _allowGlobeModifierKeyCommand];

  [_allowGlobeModifierKeyCommand2 setRepeatBehavior:2];
  [array addObject:_allowGlobeModifierKeyCommand2];
  if (identifier)
  {
    v26 = isFlexibleWindowingEnabled;
  }

  else
  {
    v26 = 0;
  }

  v247 = v26;
  v27 = identifier;
  if (v26 == 1 && (-[SBSwitcherController _currentMainAppLayout](self, "_currentMainAppLayout"), v28 = objc_claimAutoreleasedReturnValue(), -[SBSwitcherController maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:ignoreOcclusion:ignoreCentering:](self, "maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:ignoreOcclusion:ignoreCentering:", v28, 1, 0), v29 = objc_claimAutoreleasedReturnValue(), v281[0] = MEMORY[0x277D85DD0], v281[1] = 3221225472, v281[2] = __95__SBSwitcherController__buildWindowArrangementMenuForKeyCommandRegistration_additionalOptions___block_invoke, v281[3] = &unk_2783A8C90, v238 = &v282, v282 = identifier, v30 = [v29 bs_containsObjectPassingTest:v281], v29, v28, (v30 & 1) != 0))
  {
    v31 = array;
    v32 = @"EXIT_FULL_SCREEN_DISCOVERABILITY";
    v33 = @"arrow.down.forward.and.arrow.up.backward.rectangle";
  }

  else
  {
    v31 = array;
    v32 = @"ENTER_FULL_SCREEN_DISCOVERABILITY";
    v33 = @"arrow.up.backward.and.arrow.down.forward.rectangle";
  }

  v34 = [MEMORY[0x277D755B8] systemImageNamed:v33];
  v35 = MEMORY[0x277D75650];
  mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
  v37 = [mainBundle4 localizedStringForKey:v32 value:&stru_283094718 table:@"SpringBoard"];
  v246 = v34;
  v38 = [v35 commandWithTitle:v37 image:v34 action:sel__handleToggleFullScreenKeyShortcut_ input:@"f" modifierFlags:0x800000 propertyList:v27];
  _allowGlobeModifierKeyCommand3 = [v38 _allowGlobeModifierKeyCommand];

  [_allowGlobeModifierKeyCommand3 setRepeatBehavior:2];
  v40 = v31;
  [v31 addObject:_allowGlobeModifierKeyCommand3];
  v251 = _allowGlobeModifierKeyCommand2;
  [array2 addObject:_allowGlobeModifierKeyCommand2];
  v245 = _allowGlobeModifierKeyCommand3;
  [array2 addObject:_allowGlobeModifierKeyCommand3];
  v41 = MEMORY[0x277D75650];
  mainBundle5 = [MEMORY[0x277CCA8D8] mainBundle];
  v43 = [mainBundle5 localizedStringForKey:@"MOVE_TO_OTHER_DISPLAY_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
  v44 = [MEMORY[0x277D755B8] systemImageNamed:@"display"];
  v45 = [v41 commandWithTitle:v43 image:v44 action:sel__handleMoveToOtherDisplayKeyShortcut_ input:@"\\"" modifierFlags:8650752 propertyList:v27];
  _allowGlobeModifierKeyCommand4 = [v45 _allowGlobeModifierKeyCommand];

  [_allowGlobeModifierKeyCommand4 setRepeatBehavior:2];
  [v31 addObject:_allowGlobeModifierKeyCommand4];
  v47 = MEMORY[0x277D75650];
  v48 = SBHBundle();
  v49 = [v48 localizedStringForKey:@"SHOW_ALL_WINDOWS_SHORTCUT_ITEM_TITLE" value:&stru_283094718 table:@"SpringBoardHome"];
  v50 = [MEMORY[0x277D755B8] systemImageNamed:@"rectangle.grid.2x2"];
  v51 = *MEMORY[0x277D76AC0];
  v259 = v27;
  v52 = v27;
  v53 = v40;
  v54 = [v47 commandWithTitle:v49 image:v50 action:sel__handleActivateAppExposeKeyShortcut_ input:*MEMORY[0x277D76AC0] modifierFlags:0x800000 propertyList:v52];
  _allowGlobeModifierKeyCommand5 = [v54 _allowGlobeModifierKeyCommand];

  [_allowGlobeModifierKeyCommand5 setRepeatBehavior:2];
  v250 = _allowGlobeModifierKeyCommand5;
  [v53 addObject:_allowGlobeModifierKeyCommand5];
  if (isFlexibleWindowingEnabled)
  {
    v243 = _allowGlobeModifierKeyCommand4;
    v56 = MEMORY[0x277D75650];
    mainBundle6 = [MEMORY[0x277CCA8D8] mainBundle];
    v240 = v51;
    v58 = [mainBundle6 localizedStringForKey:@"CENTER_DISCOVERABILITY" value:? table:?];
    v59 = [MEMORY[0x277D755B8] systemImageNamed:@"inset.filled.center.rectangle"];
    v60 = [v56 commandWithTitle:v58 image:v59 action:sel__handleCenterCommand_ input:@"c" modifierFlags:8650752 propertyList:v259];
    _allowGlobeModifierKeyCommand6 = [v60 _allowGlobeModifierKeyCommand];

    v231 = _allowGlobeModifierKeyCommand6;
    [_allowGlobeModifierKeyCommand6 setRepeatBehavior:2];
    v62 = MEMORY[0x277D75650];
    mainBundle7 = [MEMORY[0x277CCA8D8] mainBundle];
    v64 = [mainBundle7 localizedStringForKey:@"TILE_LEFT_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
    v65 = [MEMORY[0x277D755B8] systemImageNamed:@"inset.filled.lefthalf.rectangle"];
    v236 = *MEMORY[0x277D76B48];
    v66 = [v62 commandWithTitle:v64 image:v65 action:sel__handleTileLeftCommand_ input:? modifierFlags:? propertyList:?];
    _allowGlobeModifierKeyCommand7 = [v66 _allowGlobeModifierKeyCommand];

    v230 = _allowGlobeModifierKeyCommand7;
    [_allowGlobeModifierKeyCommand7 setRepeatBehavior:2];
    v68 = MEMORY[0x277D75650];
    mainBundle8 = [MEMORY[0x277CCA8D8] mainBundle];
    v70 = [mainBundle8 localizedStringForKey:@"TILE_RIGHT_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
    v71 = [MEMORY[0x277D755B8] systemImageNamed:@"inset.filled.righthalf.rectangle"];
    v234 = *MEMORY[0x277D76B60];
    v72 = [v68 commandWithTitle:v70 image:v71 action:sel__handleTileRightCommand_ input:? modifierFlags:? propertyList:?];
    _allowGlobeModifierKeyCommand8 = [v72 _allowGlobeModifierKeyCommand];

    v229 = _allowGlobeModifierKeyCommand8;
    [_allowGlobeModifierKeyCommand8 setRepeatBehavior:2];
    v74 = MEMORY[0x277D75650];
    mainBundle9 = [MEMORY[0x277CCA8D8] mainBundle];
    v76 = [mainBundle9 localizedStringForKey:@"TILE_UP_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
    v77 = [MEMORY[0x277D755B8] systemImageNamed:@"inset.filled.tophalf.rectangle"];
    v232 = *MEMORY[0x277D76B68];
    v78 = [v74 commandWithTitle:v76 image:v77 action:sel__handleTileTopCommand_ input:? modifierFlags:? propertyList:?];
    _allowGlobeModifierKeyCommand9 = [v78 _allowGlobeModifierKeyCommand];

    v228 = _allowGlobeModifierKeyCommand9;
    [_allowGlobeModifierKeyCommand9 setRepeatBehavior:2];
    v80 = MEMORY[0x277D75650];
    mainBundle10 = [MEMORY[0x277CCA8D8] mainBundle];
    v82 = [mainBundle10 localizedStringForKey:@"TILE_DOWN_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
    v83 = [MEMORY[0x277D755B8] systemImageNamed:@"inset.filled.bottomhalf.rectangle"];
    v84 = [v80 commandWithTitle:v82 image:v83 action:sel__handleTileBottomCommand_ input:v240 modifierFlags:8650752 propertyList:v259];
    _allowGlobeModifierKeyCommand10 = [v84 _allowGlobeModifierKeyCommand];

    v227 = _allowGlobeModifierKeyCommand10;
    [_allowGlobeModifierKeyCommand10 setRepeatBehavior:2];
    v86 = MEMORY[0x277D75650];
    mainBundle11 = [MEMORY[0x277CCA8D8] mainBundle];
    v88 = [mainBundle11 localizedStringForKey:@"ARRANGE_LEFT_RIGHT_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
    v89 = [MEMORY[0x277D755B8] systemImageNamed:@"inset.filled.lefthalf.righthalf.rectangle"];
    v90 = [v86 commandWithTitle:v88 image:v89 action:sel__handleArrangeLeftAndRightCommand_ input:v236 modifierFlags:8781824 propertyList:v259];
    _allowGlobeModifierKeyCommand11 = [v90 _allowGlobeModifierKeyCommand];

    v226 = _allowGlobeModifierKeyCommand11;
    [_allowGlobeModifierKeyCommand11 setRepeatBehavior:2];
    v92 = MEMORY[0x277D75650];
    mainBundle12 = [MEMORY[0x277CCA8D8] mainBundle];
    v94 = [mainBundle12 localizedStringForKey:@"ARRANGE_RIGHT_LEFT_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
    v95 = [MEMORY[0x277D755B8] systemImageNamed:@"inset.filled.righthalf.lefthalf.rectangle"];
    v96 = [v92 commandWithTitle:v94 image:v95 action:sel__handleArrangeRightAndLeftCommand_ input:v234 modifierFlags:8781824 propertyList:v259];
    _allowGlobeModifierKeyCommand12 = [v96 _allowGlobeModifierKeyCommand];

    v242 = _allowGlobeModifierKeyCommand12;
    [_allowGlobeModifierKeyCommand12 setRepeatBehavior:2];
    v98 = MEMORY[0x277D75650];
    mainBundle13 = [MEMORY[0x277CCA8D8] mainBundle];
    v100 = [mainBundle13 localizedStringForKey:@"ARRANGE_TOP_BOTTOM_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
    v101 = [MEMORY[0x277D755B8] systemImageNamed:@"inset.filled.tophalf.bottomhalf.rectangle"];
    v102 = [v98 commandWithTitle:v100 image:v101 action:sel__handleArrangeTopAndBottomCommand_ input:v232 modifierFlags:8781824 propertyList:v259];
    _allowGlobeModifierKeyCommand13 = [v102 _allowGlobeModifierKeyCommand];

    v225 = _allowGlobeModifierKeyCommand13;
    [_allowGlobeModifierKeyCommand13 setRepeatBehavior:2];
    v104 = MEMORY[0x277D75650];
    mainBundle14 = [MEMORY[0x277CCA8D8] mainBundle];
    v106 = [mainBundle14 localizedStringForKey:@"ARRANGE_BOTTOM_TOP_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
    v107 = [MEMORY[0x277D755B8] systemImageNamed:@"inset.filled.bottomhalf.tophalf.rectangle"];
    v108 = [v104 commandWithTitle:v106 image:v107 action:sel__handleArrangeBottomAndTopCommand_ input:v240 modifierFlags:8781824 propertyList:v259];
    _allowGlobeModifierKeyCommand14 = [v108 _allowGlobeModifierKeyCommand];

    v110 = _allowGlobeModifierKeyCommand14;
    [_allowGlobeModifierKeyCommand14 setRepeatBehavior:2];
    v111 = MEMORY[0x277D75650];
    mainBundle15 = [MEMORY[0x277CCA8D8] mainBundle];
    v113 = [mainBundle15 localizedStringForKey:@"LEFT_SLIDE_OVER_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
    v114 = [v111 commandWithTitle:v113 image:0 action:sel__handleLeftSlideOverCommand_ input:v236 modifierFlags:8912896 propertyList:v259];
    _allowGlobeModifierKeyCommand15 = [v114 _allowGlobeModifierKeyCommand];

    v237 = _allowGlobeModifierKeyCommand15;
    [_allowGlobeModifierKeyCommand15 setRepeatBehavior:2];
    v116 = MEMORY[0x277D75650];
    mainBundle16 = [MEMORY[0x277CCA8D8] mainBundle];
    v118 = [mainBundle16 localizedStringForKey:@"RIGHT_SLIDE_OVER_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
    v119 = [v116 commandWithTitle:v118 image:0 action:sel__handleRightSlideOverCommand_ input:v234 modifierFlags:8912896 propertyList:v259];
    _allowGlobeModifierKeyCommand16 = [v119 _allowGlobeModifierKeyCommand];

    v235 = _allowGlobeModifierKeyCommand16;
    [_allowGlobeModifierKeyCommand16 setRepeatBehavior:2];
    v121 = @"STASH_SLIDE_OVER_DISCOVERABILITY";
    if (self->_slideOverDisplayItem)
    {
      layoutState = [(SBSwitcherController *)self layoutState];
      displayOrdinal = [layoutState displayOrdinal];
      interfaceOrientation = [layoutState interfaceOrientation];
      v125 = (interfaceOrientation - 1) < 2 ? 1 : 2 * ((interfaceOrientation - 3) < 2);
      displayItemLayoutAttributesProvider = [(SBSwitcherController *)self displayItemLayoutAttributesProvider];
      slideOverDisplayItem = self->_slideOverDisplayItem;
      [(SBSwitcherController *)self _currentMainAppLayout];
      v129 = v128 = v110;
      v130 = [displayItemLayoutAttributesProvider layoutAttributesForDisplayItem:slideOverDisplayItem inAppLayout:v129 displayOrdinal:displayOrdinal orientation:v125];

      v110 = v128;
      v280 = 0;
      memset(v279, 0, sizeof(v279));
      [(SBDisplayItemLayoutAttributes *)v130 slideOverConfiguration];
      v131 = BYTE1(v280);

      if (v131)
      {
        v121 = @"UNSTASH_SLIDE_OVER_DISCOVERABILITY";
      }
    }

    v241 = v110;
    v132 = MEMORY[0x277D75650];
    mainBundle17 = [MEMORY[0x277CCA8D8] mainBundle];
    v134 = [mainBundle17 localizedStringForKey:v121 value:&stru_283094718 table:@"SpringBoard"];
    v135 = [v132 commandWithTitle:v134 image:0 action:sel__handleToggleStashSlideOverCommand_ input:@"\\"" modifierFlags:0x800000 propertyList:v259];
    _allowGlobeModifierKeyCommand17 = [v135 _allowGlobeModifierKeyCommand];

    v233 = _allowGlobeModifierKeyCommand17;
    [_allowGlobeModifierKeyCommand17 setRepeatBehavior:2];
    v137 = array;
    _allowGlobeModifierKeyCommand4 = v243;
    v138 = v225;
    v139 = v226;
    if (!v253)
    {
      v140 = MEMORY[0x277D750C8];
      mainBundle18 = [MEMORY[0x277CCA8D8] mainBundle];
      v142 = [mainBundle18 localizedStringForKey:@"EXIT_SLIDE_OVER_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
      v277[0] = MEMORY[0x277D85DD0];
      v277[1] = 3221225472;
      v277[2] = __95__SBSwitcherController__buildWindowArrangementMenuForKeyCommandRegistration_additionalOptions___block_invoke_2;
      v277[3] = &unk_2783B66D0;
      v277[4] = self;
      v143 = v259;
      v278 = v143;
      v144 = [v140 actionWithTitle:v142 image:0 identifier:0 handler:v277];

      if (([(SBSwitcherContentViewControlling *)self->_contentViewController canPerformSwitcherShortcutAction:27 forSceneIdentifier:v143]& 1) == 0)
      {
        [v144 setAttributes:1];
      }

      v145 = MEMORY[0x277D750C8];
      mainBundle19 = [MEMORY[0x277CCA8D8] mainBundle];
      v147 = [mainBundle19 localizedStringForKey:@"TILE_TOP_LEFT_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
      v148 = [MEMORY[0x277D755B8] systemImageNamed:@"inset.filled.topleft.rectangle"];
      v275[0] = MEMORY[0x277D85DD0];
      v275[1] = 3221225472;
      v275[2] = __95__SBSwitcherController__buildWindowArrangementMenuForKeyCommandRegistration_additionalOptions___block_invoke_3;
      v275[3] = &unk_2783B66D0;
      v275[4] = self;
      v149 = v143;
      v276 = v149;
      v150 = [v145 actionWithTitle:v147 image:v148 identifier:0 handler:v275];

      if (([(SBSwitcherContentViewControlling *)self->_contentViewController canPerformSwitcherShortcutAction:22 forSceneIdentifier:v149]& 1) == 0)
      {
        [v150 setAttributes:1];
      }

      v151 = MEMORY[0x277D750C8];
      mainBundle20 = [MEMORY[0x277CCA8D8] mainBundle];
      v153 = [mainBundle20 localizedStringForKey:@"TILE_TOP_RIGHT_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
      v154 = [MEMORY[0x277D755B8] systemImageNamed:@"inset.filled.topright.rectangle"];
      v273[0] = MEMORY[0x277D85DD0];
      v273[1] = 3221225472;
      v273[2] = __95__SBSwitcherController__buildWindowArrangementMenuForKeyCommandRegistration_additionalOptions___block_invoke_4;
      v273[3] = &unk_2783B66D0;
      v273[4] = self;
      v155 = v149;
      v274 = v155;
      v224 = [v151 actionWithTitle:v153 image:v154 identifier:0 handler:v273];

      if (([(SBSwitcherContentViewControlling *)self->_contentViewController canPerformSwitcherShortcutAction:23 forSceneIdentifier:v155]& 1) == 0)
      {
        [v150 setAttributes:1];
      }

      v156 = MEMORY[0x277D750C8];
      mainBundle21 = [MEMORY[0x277CCA8D8] mainBundle];
      v158 = [mainBundle21 localizedStringForKey:@"TILE_BOTTOM_LEFT_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
      v159 = [MEMORY[0x277D755B8] systemImageNamed:@"inset.filled.bottomleft.rectangle"];
      v271[0] = MEMORY[0x277D85DD0];
      v271[1] = 3221225472;
      v271[2] = __95__SBSwitcherController__buildWindowArrangementMenuForKeyCommandRegistration_additionalOptions___block_invoke_5;
      v271[3] = &unk_2783B66D0;
      v271[4] = self;
      v160 = v155;
      v272 = v160;
      v223 = [v156 actionWithTitle:v158 image:v159 identifier:0 handler:v271];

      if (([(SBSwitcherContentViewControlling *)self->_contentViewController canPerformSwitcherShortcutAction:24 forSceneIdentifier:v160]& 1) == 0)
      {
        [v150 setAttributes:1];
      }

      v161 = MEMORY[0x277D750C8];
      mainBundle22 = [MEMORY[0x277CCA8D8] mainBundle];
      v163 = [mainBundle22 localizedStringForKey:@"TILE_BOTTOM_RIGHT_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
      v164 = [MEMORY[0x277D755B8] systemImageNamed:@"inset.filled.bottomright.rectangle"];
      v269[0] = MEMORY[0x277D85DD0];
      v269[1] = 3221225472;
      v269[2] = __95__SBSwitcherController__buildWindowArrangementMenuForKeyCommandRegistration_additionalOptions___block_invoke_6;
      v269[3] = &unk_2783B66D0;
      v269[4] = self;
      v165 = v160;
      v270 = v165;
      v166 = [v161 actionWithTitle:v163 image:v164 identifier:0 handler:v269];

      if (([(SBSwitcherContentViewControlling *)self->_contentViewController canPerformSwitcherShortcutAction:25 forSceneIdentifier:v165]& 1) == 0)
      {
        [v150 setAttributes:1];
      }

      v167 = MEMORY[0x277D750C8];
      mainBundle23 = [MEMORY[0x277CCA8D8] mainBundle];
      v169 = [mainBundle23 localizedStringForKey:@"ARRANGE_IN_GRID_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
      v170 = [MEMORY[0x277D755B8] systemImageNamed:@"inset.filled.topleft.topright.bottomleft.bottomright.rectangle"];
      v267[0] = MEMORY[0x277D85DD0];
      v267[1] = 3221225472;
      v267[2] = __95__SBSwitcherController__buildWindowArrangementMenuForKeyCommandRegistration_additionalOptions___block_invoke_7;
      v267[3] = &unk_2783B66D0;
      v267[4] = self;
      v171 = v165;
      v268 = v171;
      v172 = [v167 actionWithTitle:v169 image:v170 identifier:0 handler:v267];

      if (([(SBSwitcherContentViewControlling *)self->_contentViewController canPerformSwitcherShortcutAction:13 forSceneIdentifier:v171]& 1) == 0)
      {
        [v172 setAttributes:1];
      }

      v138 = v225;
      v139 = v226;
      if (([(SBSwitcherContentViewControlling *)self->_contentViewController canPerformSwitcherShortcutAction:28 forSceneIdentifier:v171]& 1) == 0)
      {
        [v237 setAttributes:1];
      }

      if (([(SBSwitcherContentViewControlling *)self->_contentViewController canPerformSwitcherShortcutAction:29 forSceneIdentifier:v171]& 1) == 0)
      {
        [v235 setAttributes:1];
      }

      if (([(SBSwitcherContentViewControlling *)self->_contentViewController canPerformSwitcherShortcutAction:30 forSceneIdentifier:v171]& 1) == 0)
      {
        [v233 setAttributes:1];
      }

      v290 = v231;
      v173 = [MEMORY[0x277CBEA60] arrayWithObjects:&v290 count:1];
      [array2 addObjectsFromArray:v173];

      v289[0] = v230;
      v289[1] = v229;
      v289[2] = v228;
      v289[3] = v227;
      v174 = [MEMORY[0x277CBEA60] arrayWithObjects:v289 count:4];
      [array3 addObjectsFromArray:v174];

      v288[0] = v150;
      v288[1] = v224;
      v288[2] = v223;
      v288[3] = v166;
      v175 = [MEMORY[0x277CBEA60] arrayWithObjects:v288 count:4];
      [array4 addObjectsFromArray:v175];

      v287[0] = v226;
      v287[1] = v242;
      v287[2] = v225;
      v287[3] = v241;
      v287[4] = v172;
      v176 = [MEMORY[0x277CBEA60] arrayWithObjects:v287 count:5];
      [array5 addObjectsFromArray:v176];

      if (SBFIsSlideOverAvailable())
      {
        v286[0] = v237;
        v286[1] = v235;
        v286[2] = v233;
        v286[3] = v144;
        v177 = [MEMORY[0x277CBEA60] arrayWithObjects:v286 count:4];
        [array6 addObjectsFromArray:v177];
      }

      _allowGlobeModifierKeyCommand4 = v243;
      v137 = array;
    }

    [v137 addObject:v231];
    [v137 addObject:v230];
    [v137 addObject:v229];
    [v137 addObject:v228];
    [v137 addObject:v227];
    [v137 addObject:v139];
    [v137 addObject:v242];
    [v137 addObject:v138];
    [v137 addObject:v241];
    if (SBFIsSlideOverAvailable())
    {
      [v137 addObject:v237];
      [v137 addObject:v235];
      [v137 addObject:v233];
    }

    v53 = v137;
  }

  if (v253)
  {
    v178 = v53;
    v179 = v251;
    v180 = v238;
    v181 = v259;
  }

  else
  {
    v178 = [MEMORY[0x277CBEB18] arrayWithArray:array2];
    v181 = v259;
    if (isFlexibleWindowingEnabled)
    {
      v244 = _allowGlobeModifierKeyCommand4;
      v182 = MEMORY[0x277D75710];
      mainBundle24 = [MEMORY[0x277CCA8D8] mainBundle];
      v184 = [mainBundle24 localizedStringForKey:@"HALVES_MENU_TITLE" value:&stru_283094718 table:@"SpringBoard"];
      v185 = [v182 menuWithTitle:v184 image:0 identifier:0 options:options | 1 children:array3];

      v186 = MEMORY[0x277D75710];
      mainBundle25 = [MEMORY[0x277CCA8D8] mainBundle];
      v188 = [mainBundle25 localizedStringForKey:@"QUARTERS_MENU_TITLE" value:&stru_283094718 table:@"SpringBoard"];
      v189 = [v186 menuWithTitle:v188 image:0 identifier:0 options:options | 1 children:array4];

      v190 = MEMORY[0x277D75710];
      mainBundle26 = [MEMORY[0x277CCA8D8] mainBundle];
      v192 = [mainBundle26 localizedStringForKey:@"ARRANGE_MENU_TITLE" value:&stru_283094718 table:@"SpringBoard"];
      v193 = [v190 menuWithTitle:v192 image:0 identifier:0 options:options | 1 children:array5];

      v194 = MEMORY[0x277D75710];
      mainBundle27 = [MEMORY[0x277CCA8D8] mainBundle];
      v196 = [mainBundle27 localizedStringForKey:@"MOVE_RESIZE_MENU_TITLE" value:&stru_283094718 table:@"SpringBoard"];
      v197 = [MEMORY[0x277D755B8] systemImageNamed:@"inset.filled.trailinghalf.arrow.trailing.rectangle"];
      v262 = v185;
      v285[0] = v185;
      v254 = v189;
      v285[1] = v189;
      v285[2] = v193;
      v198 = [MEMORY[0x277CBEA60] arrayWithObjects:v285 count:3];
      v199 = [v194 menuWithTitle:v196 image:v197 identifier:0 options:options children:v198];

      [v178 addObject:v199];
      if (SBFIsSlideOverAvailable())
      {
        v200 = MEMORY[0x277D75710];
        mainBundle28 = [MEMORY[0x277CCA8D8] mainBundle];
        v202 = [mainBundle28 localizedStringForKey:@"SLIDE_OVER_MENU_TITLE" value:&stru_283094718 table:@"SpringBoard"];
        v203 = [v200 menuWithTitle:v202 image:0 identifier:0 options:options | 1 children:array6];

        v204 = MEMORY[0x277D75710];
        mainBundle29 = [MEMORY[0x277CCA8D8] mainBundle];
        v206 = [mainBundle29 localizedStringForKey:@"SLIDE_OVER_MENU_TITLE" value:&stru_283094718 table:@"SpringBoard"];
        v284 = v203;
        v207 = [MEMORY[0x277CBEA60] arrayWithObjects:&v284 count:1];
        v208 = [v204 menuWithTitle:v206 image:0 identifier:0 options:options children:v207];

        [v178 addObject:v208];
      }

      v181 = v259;
      v53 = array;
      _allowGlobeModifierKeyCommand4 = v244;
    }

    [v178 addObject:_allowGlobeModifierKeyCommand4];
    v209 = MEMORY[0x277D750C8];
    v210 = SBHBundle();
    v211 = [v210 localizedStringForKey:@"ADD_NEW_WINDOW_SHORTCUT_ITEM_TITLE" value:&stru_283094718 table:@"SpringBoardHome"];
    v212 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.rectangle"];
    v265[0] = MEMORY[0x277D85DD0];
    v265[1] = 3221225472;
    v265[2] = __95__SBSwitcherController__buildWindowArrangementMenuForKeyCommandRegistration_additionalOptions___block_invoke_8;
    v265[3] = &unk_2783B66D0;
    v265[4] = self;
    v266 = v181;
    v213 = [v209 actionWithTitle:v211 image:v212 identifier:0 handler:v265];

    clientHandle = [v255 clientHandle];
    bundleIdentifier = [clientHandle bundleIdentifier];

    if (bundleIdentifier)
    {
      v216 = +[SBApplicationController sharedInstance];
      v217 = [v216 applicationWithBundleIdentifier:bundleIdentifier];
      info = [v217 info];
    }

    else
    {
      info = 0;
    }

    v179 = v251;
    if ([info supportsMultiwindow])
    {
      v219 = MEMORY[0x277D75710];
      v283[0] = v213;
      v283[1] = v250;
      v220 = [MEMORY[0x277CBEA60] arrayWithObjects:v283 count:2];
      v221 = [v219 menuWithTitle:&stru_283094718 image:0 identifier:0 options:options | 1 children:v220];

      v179 = v251;
      [v178 addObject:v221];
    }

    v180 = v238;
  }

  if (v247)
  {
  }

  return v178;
}

uint64_t __95__SBSwitcherController__buildWindowArrangementMenuForKeyCommandRegistration_additionalOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)_buildHideMenuWithAdditionalOptions:(unint64_t)options
{
  array = [MEMORY[0x277CBEB18] array];
  menuBarRecipientScene = [(SBSwitcherController *)self menuBarRecipientScene];
  clientHandle = [menuBarRecipientScene clientHandle];
  bundleIdentifier = [clientHandle bundleIdentifier];

  if (bundleIdentifier)
  {
    v7 = +[SBApplicationController sharedInstance];
    v8 = [v7 applicationWithBundleIdentifier:bundleIdentifier];
    info = [v8 info];
  }

  else
  {
    info = 0;
  }

  v25 = info;
  displayName = [info displayName];
  if (displayName)
  {
    v11 = MEMORY[0x277CCACA8];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = [mainBundle localizedStringForKey:@"HIDE_APP_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
    v14 = [v11 stringWithFormat:v13, displayName];
  }

  else
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v14 = [mainBundle localizedStringForKey:@"HIDE_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
  }

  v15 = [MEMORY[0x277D75650] commandWithTitle:v14 image:0 action:sel__handleRemoveAllWindowFromSetShortcut_ input:@"h" modifierFlags:0x100000 propertyList:0];
  [v15 setRepeatBehavior:2];
  [array addObject:v15];
  v16 = MEMORY[0x277D75650];
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v18 = [mainBundle2 localizedStringForKey:@"HIDE_OTHERS_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
  v19 = [v16 commandWithTitle:v18 image:0 action:sel__handleRemoveAllWindowFromSetForNonSelectedAppShortcut_ input:@"h" modifierFlags:1572864 propertyList:0];

  [v19 setRepeatBehavior:2];
  _currentMainAppLayout = [(SBSwitcherController *)self _currentMainAppLayout];
  allItems = [_currentMainAppLayout allItems];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __60__SBSwitcherController__buildHideMenuWithAdditionalOptions___block_invoke;
  v27[3] = &unk_2783A8C90;
  v28 = bundleIdentifier;
  v22 = bundleIdentifier;
  v23 = [allItems bs_filter:v27];

  if (![v23 count])
  {
    [v19 setAttributes:1];
  }

  [array addObject:v19];

  return array;
}

uint64_t __60__SBSwitcherController__buildHideMenuWithAdditionalOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  LODWORD(a1) = [v3 isEqualToString:*(a1 + 32)];

  return a1 ^ 1;
}

- (BOOL)_updateLayoutPreferencesInSceneDataStoreForSceneHandleIfNeeded:(id)needed
{
  neededCopy = needed;
  displayItemRepresentation = [neededCopy displayItemRepresentation];
  v5 = +[SBApplicationController sharedInstance];
  v6 = [v5 applicationForDisplayItem:displayItemRepresentation];

  _dataStore = [v6 _dataStore];
  uniqueIdentifier = [displayItemRepresentation uniqueIdentifier];
  v9 = [_dataStore sceneStoreForIdentifier:uniqueIdentifier creatingIfNecessary:0];

  sceneIfExists = [neededCopy sceneIfExists];
  if (sceneIfExists)
  {
    [neededCopy layoutPreferencesMinimumSize];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = *MEMORY[0x277CBF3A8];
    v14 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v15 = [v9 objectForKey:@"minimumWidth"];
  if (BSFloatIsZero())
  {
    if (v15)
    {
      [v9 removeObjectForKey:@"minimumWidth"];
      v16 = 1;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
    if (v15 && ([v15 isEqualToNumber:v17] & 1) != 0)
    {
      v16 = 0;
    }

    else
    {
      [v9 setObject:v17 forKey:@"minimumWidth"];
      v16 = 1;
    }
  }

  v18 = [v9 objectForKey:@"minimumHeight"];
  if (BSFloatIsZero())
  {
    if (v18)
    {
      [v9 removeObjectForKey:@"minimumHeight"];
      v16 = 1;
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
    if (!v18 || ([v18 isEqualToNumber:v19] & 1) == 0)
    {
      [v9 setObject:v19 forKey:@"minimumHeight"];
      v16 = 1;
    }
  }

  return v16;
}

- (void)sceneHandleDidUpdateLayoutPreferences:(id)preferences
{
  preferencesCopy = preferences;
  if ([(SBSwitcherController *)self _updateLayoutPreferencesInSceneDataStoreForSceneHandleIfNeeded:preferencesCopy])
  {
    sceneIdentifier = [preferencesCopy sceneIdentifier];
    v6 = +[SBWorkspace mainWorkspace];
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    _fbsDisplayConfiguration = [WeakRetained _fbsDisplayConfiguration];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62__SBSwitcherController_sceneHandleDidUpdateLayoutPreferences___block_invoke_2;
    v10[3] = &unk_2783B3CF0;
    v10[4] = self;
    v11 = sceneIdentifier;
    v9 = sceneIdentifier;
    [v6 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration builder:&__block_literal_global_550_0 validator:v10];
  }
}

void __62__SBSwitcherController_sceneHandleDidUpdateLayoutPreferences___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setSource:75];
  [v2 setEventLabel:@"LayoutPreferencesChange"];
}

BOOL __62__SBSwitcherController_sceneHandleDidUpdateLayoutPreferences___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) layoutState];
  v5 = [v4 elementWithIdentifier:*(a1 + 40)];
  if (v5)
  {
    [v3 modifyApplicationContext:&__block_literal_global_555];
  }

  return v5 != 0;
}

void __62__SBSwitcherController_sceneHandleDidUpdateLayoutPreferences___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
  v3 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
  [v2 setEntities:MEMORY[0x277CBEBF8] withPolicy:1 centerEntity:v4 floatingEntity:v3];
}

- (void)sceneHandleDidRecognizeDoubleTapInDraggableArea:(id)area
{
  contentViewController = self->_contentViewController;
  areaCopy = area;
  v5 = objc_opt_class();
  v6 = contentViewController;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  displayItemRepresentation = [areaCopy displayItemRepresentation];

  [(SBSwitcherContentViewControlling *)v8 toggleFullScreenDisplayItem:displayItemRepresentation];
}

- (void)windowControlsViewController:(id)controller didRequestAction:(unint64_t)action
{
  _topmostDisplayItem = [(SBSwitcherController *)self _topmostDisplayItem];
  v6 = objc_opt_class();
  v7 = SBSafeCast(v6, self->_contentViewController);
  v8 = v7;
  if (v7)
  {
    v9 = action > 3;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    [v7 performTopAffordanceAction:qword_21F8A6B38[action] forDisplayItem:_topmostDisplayItem];
    _SBWindowControlsAnalyticsLogAction();
  }
}

- (void)windowControlsViewController:(id)controller didRequestTileToPosition:(unint64_t)position
{
  _topmostDisplayItem = [(SBSwitcherController *)self _topmostDisplayItem];
  v6 = objc_opt_class();
  v7 = SBSafeCast(v6, self->_contentViewController);
  v8 = v7;
  if (v7)
  {
    v9 = position > 3;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    [v7 performTopAffordanceAction:position + 5 forDisplayItem:_topmostDisplayItem];
    _SBWindowControlsAnalyticsLogAction();
  }
}

- (void)windowControlsViewController:(id)controller didRequestArrangeWithConfiguration:(unint64_t)configuration
{
  _topmostDisplayItem = [(SBSwitcherController *)self _topmostDisplayItem];
  v6 = objc_opt_class();
  v7 = SBSafeCast(v6, self->_contentViewController);
  v8 = v7;
  if (v7)
  {
    v9 = configuration > 4;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    [v7 performTopAffordanceAction:qword_21F8A6B78[configuration] forDisplayItem:_topmostDisplayItem];
    _SBWindowControlsAnalyticsLogAction();
  }
}

- (void)windowControlsViewController:(id)controller didRequestMoveToDisplay:(unint64_t)display
{
  _topmostDisplayItem = [(SBSwitcherController *)self _topmostDisplayItem];
  v6 = objc_opt_class();
  v7 = SBSafeCast(v6, self->_contentViewController);
  v8 = v7;
  if (v7)
  {
    if (display)
    {
      if (display != 1)
      {
        goto LABEL_7;
      }

      v9 = 18;
    }

    else
    {
      v9 = 19;
    }

    [v7 performTopAffordanceAction:v9 forDisplayItem:_topmostDisplayItem];
    _SBWindowControlsAnalyticsLogAction();
  }

LABEL_7:
}

- (void)windowControlsViewControllerDidRequestAddAnotherWindow:(id)window
{
  _topmostDisplayItem = [(SBSwitcherController *)self _topmostDisplayItem];
  v4 = objc_opt_class();
  v5 = SBSafeCast(v4, self->_contentViewController);
  v6 = v5;
  if (v5)
  {
    [v5 performTopAffordanceAction:3 forDisplayItem:_topmostDisplayItem];
    _SBWindowControlsAnalyticsLogAction();
  }
}

- (id)_topmostDisplayItem
{
  _currentMainAppLayout = [(SBSwitcherController *)self _currentMainAppLayout];
  displayItemLayoutAttributesProvider = [(SBSwitcherController *)self displayItemLayoutAttributesProvider];
  preferredDisplayOrdinal = [_currentMainAppLayout preferredDisplayOrdinal];
  interfaceOrientation = [(SBSwitcherController *)self interfaceOrientation];
  if ((interfaceOrientation - 1) < 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2 * ((interfaceOrientation - 3) < 2);
  }

  v8 = [displayItemLayoutAttributesProvider layoutAttributesMapForAppLayout:_currentMainAppLayout displayOrdinal:preferredDisplayOrdinal orientation:v7];

  allKeys = [v8 allKeys];
  v10 = SBDisplayItemDescendingInteractionTimeComparator(v8);
  v11 = [allKeys sortedArrayUsingComparator:v10];

  firstObject = [v11 firstObject];

  return firstObject;
}

- (void)windowControlsViewController:(id)controller didRequestSlideOverAction:(unint64_t)action
{
  _topmostDisplayItem = [(SBSwitcherController *)self _topmostDisplayItem];
  v6 = objc_opt_class();
  v7 = SBSafeCast(v6, self->_contentViewController);
  v8 = v7;
  if (v7)
  {
    if (action)
    {
      if (action != 1)
      {
        goto LABEL_7;
      }

      v9 = 27;
    }

    else
    {
      v9 = 26;
    }

    [v7 performTopAffordanceAction:v9 forDisplayItem:_topmostDisplayItem];
  }

LABEL_7:
}

- (id)sceneHandleForWhitePointAdaptivityStyle
{
  _currentMainAppLayout = [(SBSwitcherController *)self _currentMainAppLayout];
  displayItemLayoutAttributesProvider = [(SBSwitcherController *)self displayItemLayoutAttributesProvider];
  preferredDisplayOrdinal = [_currentMainAppLayout preferredDisplayOrdinal];
  interfaceOrientation = [(SBSwitcherController *)self interfaceOrientation];
  if ((interfaceOrientation - 1) < 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2 * ((interfaceOrientation - 3) < 2);
  }

  v8 = [displayItemLayoutAttributesProvider layoutAttributesMapForAppLayout:_currentMainAppLayout displayOrdinal:preferredDisplayOrdinal orientation:v7];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__SBSwitcherController_sceneHandleForWhitePointAdaptivityStyle__block_invoke;
  v16[3] = &unk_2783B66F8;
  v16[4] = self;
  v9 = [v8 bs_filter:v16];
  allKeys = [v9 allKeys];
  v11 = SBDisplayItemDescendingInteractionTimeComparator(v8);
  v12 = [allKeys sortedArrayUsingComparator:v11];

  firstObject = [v12 firstObject];
  if (firstObject)
  {
    v14 = [(SBSwitcherController *)self _deviceApplicationSceneHandleForDisplayItem:firstObject];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_windowSceneCanvasSizeDidChange:(id)change
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  _fbsDisplayConfiguration = [WeakRetained _fbsDisplayConfiguration];
  v6 = +[SBWorkspace mainWorkspace];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__SBSwitcherController__windowSceneCanvasSizeDidChange___block_invoke_2;
  v8[3] = &unk_2783B0350;
  v8[4] = self;
  [v6 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration builder:&__block_literal_global_559 validator:v8];

  mEMORY[0x277D65DD0] = [MEMORY[0x277D65DD0] sharedInstance];
  [mEMORY[0x277D65DD0] emitEvent:59];
}

void __56__SBSwitcherController__windowSceneCanvasSizeDidChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setSource:66];
  [v2 setEventLabel:@"DisplayCanvasSizeChange"];
}

uint64_t __56__SBSwitcherController__windowSceneCanvasSizeDidChange___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) windowManagementContext];
  v5 = [v4 isChamoisOrFlexibleWindowing];

  if (v5)
  {
    v6 = [*(a1 + 32) layoutState];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__SBSwitcherController__windowSceneCanvasSizeDidChange___block_invoke_3;
    v9[3] = &unk_2783A98C8;
    v10 = v6;
    v7 = v6;
    [v3 modifyApplicationContext:v9];
  }

  return v5;
}

void __56__SBSwitcherController__windowSceneCanvasSizeDidChange___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setRequestedUnlockedEnvironmentMode:{objc_msgSend(v2, "unlockedEnvironmentMode")}];
}

- (void)_coverSheetWillPerformTransition:(id)transition
{
  transitionCopy = transition;
  userInfo = [transitionCopy userInfo];
  v6 = userInfo;
  if (userInfo)
  {
    v7 = [userInfo objectForKey:@"SBLockScreenUIWillPerformTransitionFinalValueKey"];
    [v7 doubleValue];
    v9 = v8;

    if ((BSFloatEqualToFloat() & 1) == 0)
    {
      self->_coverSheetFlyInProgress = v9;
      v10 = [v6 objectForKey:@"SBLockScreenUIWillPerformTransitionForUserGestureKey"];
      bOOLValue = [v10 BOOLValue];

      v12 = [v6 objectForKey:@"SBLockScreenUIWillPerformTransitionAnimatedKey"];
      bOOLValue2 = [v12 BOOLValue];

      v14 = [v6 objectForKey:@"SBLockScreenUIWillPerformTransitionLowLuminanceKey"];
      bOOLValue3 = [v14 BOOLValue];

      if ((bOOLValue | BSFloatIsZero()))
      {
        if (bOOLValue2)
        {
          v16 = [v6 objectForKey:@"SBLockScreenUIWillPerformTransitionVelocityKey"];
          [v16 doubleValue];
          v18 = v17;

          coverSheetFlyInProgress = self->_coverSheetFlyInProgress;
          objc_initWeak(&location, self);
          v20 = +[(SBWorkspace *)SBMainWorkspace];
          WeakRetained = objc_loadWeakRetained(&self->_windowScene);
          _fbsDisplayConfiguration = [WeakRetained _fbsDisplayConfiguration];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __57__SBSwitcherController__coverSheetWillPerformTransition___block_invoke;
          v25[3] = &__block_descriptor_49_e42_v16__0__SBMainWorkspaceTransitionRequest_8l;
          *&v25[4] = v9;
          v25[5] = v18;
          v26 = bOOLValue3 ^ 1;
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __57__SBSwitcherController__coverSheetWillPerformTransition___block_invoke_3;
          v23[3] = &unk_2783B6760;
          objc_copyWeak(v24, &location);
          v24[1] = *&coverSheetFlyInProgress;
          [v20 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration builder:v25 validator:v23];

          objc_destroyWeak(v24);
          objc_destroyWeak(&location);
        }
      }
    }
  }
}

void __57__SBSwitcherController__coverSheetWillPerformTransition___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:74];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__SBSwitcherController__coverSheetWillPerformTransition___block_invoke_2;
  v4[3] = &__block_descriptor_49_e54_v16__0__SBWorkspaceApplicationSceneTransitionContext_8l;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  [v3 modifyApplicationContext:v4];
}

void __57__SBSwitcherController__coverSheetWillPerformTransition___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SBWorkspaceCoverSheetFlyInContext alloc] initWithProgress:*(a1 + 48) velocity:*(a1 + 32) supportsBlur:*(a1 + 40)];
  [v3 setCoverSheetFlyInContext:v4];
}

uint64_t __57__SBSwitcherController__coverSheetWillPerformTransition___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = BSFloatEqualToFloat();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_makeWorkspaceTransitionValidatorForActivatingMainSwitcherWithSource:(int64_t)source animated:(BOOL)animated
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __102__SBSwitcherController__makeWorkspaceTransitionValidatorForActivatingMainSwitcherWithSource_animated___block_invoke;
  v6[3] = &unk_2783B6788;
  v6[4] = self;
  animatedCopy = animated;
  v4 = [v6 copy];

  return v4;
}

uint64_t __102__SBSwitcherController__makeWorkspaceTransitionValidatorForActivatingMainSwitcherWithSource_animated___block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v27 = a2;
  v3 = [*(a1 + 32) windowScene];
  v4 = [v3 homeScreenController];
  v5 = [v4 iconManager];

  v25 = [*(a1 + 32) isMainSwitcherVisible];
  v26 = v5;
  v24 = [v5 isScrolling];
  v6 = [v3 commandTabController];
  v7 = [v6 isVisible];

  v28 = 0;
  v8 = +[SBUIController sharedInstance];
  v9 = [v8 hasVisibleAlertItemOrSheet:&v28];

  v10 = +[SBAlertItemsController sharedInstance];
  v11 = +[SBAssistantController isVisible];
  v12 = [v10 hasVisibleAlert];
  v13 = [v10 hasVisibleSuperModalAlert];
  v14 = [v3 uiLockStateProvider];
  v15 = [v14 isUILocked];

  v16 = 1;
  if (v11 || (v13 & 1) != 0 || (v12 & 1) != 0 || (v15 & 1) != 0 || (v16 = v9 & (v28 ^ 1), ((v24 | v25 | v7) & 1) != 0) || v16)
  {
    v17 = SBLogAppSwitcher();
    if (os_log_type_enabled(&v17->super.super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110400;
      v30 = v24;
      v31 = 1024;
      v32 = v25;
      v33 = 1024;
      v34 = v7;
      v35 = 1024;
      v36 = v16;
      v37 = 1024;
      v38 = v9;
      v39 = 1024;
      v40 = v28;
      _os_log_impl(&dword_21ED4E000, &v17->super.super, OS_LOG_TYPE_DEFAULT, "Activate switcher validator returning NO. isIconControllerBusy: %{BOOL}u, isMainSwitcherVisible: %{BOOL}u, isCommandTabVisible: %{BOOL}u, isAlertVisibleOrLocked: %{BOOL}u, hasVisibleAlertItemOrSheet: %{BOOL}u, canDismissVisibleAlert: %{BOOL}u", buf, 0x26u);
    }

    v18 = 0;
    v22 = v27;
  }

  else
  {
    v17 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
    [(SBSwitcherTransitionRequest *)v17 setUnlockedEnvironmentMode:2];
    v18 = 1;
    [(SBSwitcherTransitionRequest *)v17 setAnimationDisabled:BSSettingFlagIfYes()];
    v19 = *(a1 + 32);
    v20 = [v19 activateSwitcherEventName];
    v21 = v19;
    v22 = v27;
    [v21 configureRequest:v27 forSwitcherTransitionRequest:v17 withEventLabel:v20];
  }

  return v18;
}

- (id)_makeWorkspaceTransitionValidatorForDismissingMainSwitcherToAppLayout:(id)layout dismissFloatingSwitcher:(BOOL)switcher withSource:(int64_t)source animated:(BOOL)animated
{
  layoutCopy = layout;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __138__SBSwitcherController__makeWorkspaceTransitionValidatorForDismissingMainSwitcherToAppLayout_dismissFloatingSwitcher_withSource_animated___block_invoke;
  v13[3] = &unk_2783B67B0;
  switcherCopy = switcher;
  v13[4] = self;
  v14 = layoutCopy;
  animatedCopy = animated;
  v10 = layoutCopy;
  v11 = [v13 copy];

  return v11;
}

BOOL __138__SBSwitcherController__makeWorkspaceTransitionValidatorForDismissingMainSwitcherToAppLayout_dismissFloatingSwitcher_withSource_animated___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    v5 = [v4 isAnySwitcherVisible];
  }

  else
  {
    v5 = [v4 isMainSwitcherVisible];
  }

  v6 = v5;
  v7 = +[SBAlertItemsController sharedInstance];
  v8 = +[SBAssistantController isVisible];
  v9 = [v7 hasVisibleAlert];
  v10 = [v7 hasVisibleSuperModalAlert];
  v11 = v6 ^ 1 | v8 | v9 | v10;
  if (v11)
  {
    v12 = v10;
    v13 = SBLogAppSwitcher();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v18[0] = 67109888;
      v18[1] = v6;
      v19 = 1024;
      v20 = v8;
      v21 = 1024;
      v22 = v9 & 1;
      v23 = 1024;
      v24 = v12 & 1;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Dismiss switcher validator returning NO. isSomeAppSwitcherVisible: %{BOOL}u, isAssistantVisible: %{BOOL}u, hasVisibleAlert: %{BOOL}u, hasVisibleSuperModalAlert: %{BOOL}u", v18, 0x1Au);
    }
  }

  else
  {
    v14 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
    [(SBSwitcherTransitionRequest *)v14 setAppLayout:*(a1 + 40)];
    if (*(a1 + 48) == 1)
    {
      [(SBSwitcherTransitionRequest *)v14 setFloatingSwitcherVisible:0];
    }

    [(SBSwitcherTransitionRequest *)v14 setAnimationDisabled:BSSettingFlagIfYes()];
    v15 = *(a1 + 32);
    v16 = [v15 dismissSwitcherEventName];
    [v15 configureRequest:v3 forSwitcherTransitionRequest:v14 withEventLabel:v16];
  }

  return (v11 & 1) == 0;
}

- (id)_makeWorkspaceTransitionValidatorForTogglingMainSwitcherWithSource:(int64_t)source animated:(BOOL)animated
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __100__SBSwitcherController__makeWorkspaceTransitionValidatorForTogglingMainSwitcherWithSource_animated___block_invoke;
  v6[3] = &unk_2783B67D8;
  v6[4] = self;
  v6[5] = source;
  animatedCopy = animated;
  v4 = [v6 copy];

  return v4;
}

uint64_t __100__SBSwitcherController__makeWorkspaceTransitionValidatorForTogglingMainSwitcherWithSource_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 isMainSwitcherVisible];
  v6 = *(a1 + 32);
  if (v5)
  {
    [v6 _makeWorkspaceTransitionValidatorForDismissingMainSwitcherToAppLayout:v6[8] dismissFloatingSwitcher:0 withSource:*(a1 + 40) animated:*(a1 + 48)];
  }

  else
  {
    [v6 _makeWorkspaceTransitionValidatorForActivatingMainSwitcherWithSource:*(a1 + 40) animated:*(a1 + 48)];
  }
  v7 = ;
  v8 = (v7)[2](v7, v4);

  return v8;
}

- (void)_setUpSwitcherWindowIfNeeded
{
  if (!self->_switcherWindow)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v4 = [[SBMainSwitcherWindow alloc] initWithWindowScene:WeakRetained];
    switcherWindow = self->_switcherWindow;
    self->_switcherWindow = v4;
    v6 = v4;

    [(SBMainSwitcherWindow *)v6 _setRoleHint:@"SBTraitsParticipantRoleSwitcherRaw"];
    [(SBMainSwitcherWindow *)v6 setRootViewController:self->_switcherViewController];
    [(SBMainSwitcherWindow *)v6 setWindowLevel:*MEMORY[0x277D772B0] + 5.0];
    v7 = MEMORY[0x277CCACA8];
    _fbsDisplayIdentity = [WeakRetained _fbsDisplayIdentity];
    v9 = [_fbsDisplayIdentity description];
    v10 = [v7 stringWithFormat:@"SBSwitcherWindow:%@", v9];
    [(SBMainSwitcherWindow *)v6 setAccessibilityIdentifier:v10];

    [(SBFWindow *)v6 setHidden:1];
    [(SBMainSwitcherWindow *)v6 setClipsToBounds:0];
    view = [(SBSwitcherViewController *)self->_switcherViewController view];
    [(SBSwitcherViewController *)self->_switcherViewController bs_endAppearanceTransition:0];
  }
}

- (void)_updateContentViewControllerIfNeeded
{
  switcherStyle = [(SBAppSwitcherSettings *)self->_settings switcherStyle];
  contentViewController = [(SBSwitcherController *)self contentViewController];
  v5 = objc_opt_class();
  if (switcherStyle == 1 || switcherStyle == 2 || switcherStyle == 3)
  {
    v6 = objc_opt_self();
  }

  else
  {
    v18 = __sb__runningInSpringBoard();
    v19 = v18;
    if (v18)
    {
      SBFEffectiveDeviceClass();
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      [currentDevice userInterfaceIdiom];
    }

    v6 = objc_opt_self();

    if ((v19 & 1) == 0)
    {
    }
  }

  v7 = contentViewController;
  if (v5 != v6 || contentViewController == 0)
  {
    switcherCoordinator = [(SBSwitcherController *)self switcherCoordinator];
    switcherViewController = [(SBSwitcherController *)self switcherViewController];
    if (contentViewController)
    {
      [(SBSwitcherController *)self setContentViewController:0];
      [contentViewController willMoveToParentViewController:0];
      view = [contentViewController view];
      [view removeFromSuperview];

      [switcherViewController removeChildViewController:contentViewController];
    }

    if ([v6 isSubclassOfClass:objc_opt_class()])
    {
      currentDevice2 = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

      v14 = off_2783A2CF8;
      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
      {
        v14 = off_2783A0108;
      }

      v15 = objc_alloc_init(*v14);
      if ([(SBSwitcherWindowManagementContext *)self->_windowManagementContext isFlexibleWindowingEnabled])
      {
        v16 = [[SBWindowingSwitcherPersonality alloc] initWithSwitcherModifier:v15];
      }

      else
      {
        v16 = [[SBFluidSwitcherPersonality alloc] initWithRootModifier:v15];
      }

      v20 = v16;
      v21 = [[SBFullScreenSwitcherLiveContentOverlayCoordinator alloc] initWithSwitcherController:self];
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Main (%@)", self->_debugName];
      v28 = [[v6 alloc] initWithPersonality:v20 liveContentOverlayCoordinator:v21 dataSource:switcherCoordinator delegate:switcherCoordinator debugName:v22];

      v17 = v28;
    }

    else
    {
      v17 = objc_alloc_init(v6);
    }

    v29 = v17;
    [v17 setDataSource:switcherCoordinator];
    [v29 setDelegate:switcherCoordinator];
    [(SBSwitcherController *)self setContentViewController:v29];
    [switcherViewController addChildViewController:v29];
    view2 = [v29 view];
    [switcherViewController addContentView:view2];

    [v29 didMoveToParentViewController:switcherViewController];
    [v29 setShowModifierTimeline:{-[SBAppSwitcherSettings showMainModifierTimeline](self->_settings, "showMainModifierTimeline")}];
    gestureManager = [(SBSwitcherController *)self gestureManager];
    if (gestureManager)
    {
      v25 = gestureManager;
      [(SBSwitcherController *)self setGestureManager:0];
      [v25 invalidate];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[SBFluidSwitcherGestureManager alloc] initWithSwitcherController:self delegate:switcherCoordinator];
      [(SBSwitcherController *)self setGestureManager:v26];
    }

    v7 = v29;
  }
}

- (void)_warmUpIconsForRecentAppLayouts
{
  v13 = *MEMORY[0x277D85DE8];
  foregroundAppLayouts = [(SBSwitcherContentViewControlling *)self->_contentViewController foregroundAppLayouts];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [foregroundAppLayouts countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(foregroundAppLayouts);
        }

        [(SBSwitcherController *)self _warmUpIconsForAppLayout:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [foregroundAppLayouts countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_warmUpIconsForAppLayout:(id)layout
{
  layoutCopy = layout;
  windowScene = [(SBSwitcherController *)self windowScene];
  iconController = [windowScene iconController];
  iconModel = [iconController iconModel];
  appSwitcherHeaderIconImageCache = [iconController appSwitcherHeaderIconImageCache];
  iconManager = [iconController iconManager];
  rootViewController = [iconManager rootViewController];
  traitCollection = [rootViewController traitCollection];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __49__SBSwitcherController__warmUpIconsForAppLayout___block_invoke;
  v15[3] = &unk_2783AED40;
  v16 = iconModel;
  v17 = appSwitcherHeaderIconImageCache;
  v18 = traitCollection;
  v12 = traitCollection;
  v13 = appSwitcherHeaderIconImageCache;
  v14 = iconModel;
  [layoutCopy enumerate:v15];
}

void __49__SBSwitcherController__warmUpIconsForAppLayout___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 bundleIdentifier];
  v7 = [v4 applicationIconForBundleIdentifier:v5];

  v6 = [*(a1 + 40) cacheImageForIcon:v7 compatibleWithTraitCollection:*(a1 + 48) options:0 completionHandler:0];
}

- (void)switcherCoordinator
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)switcherOrientation:elementsOrientations:forTransitionRequest:previousLayoutState:layoutState:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"transitionRequest" object:? file:? lineNumber:? description:?];
}

- (void)switcherOrientation:elementsOrientations:forTransitionRequest:previousLayoutState:layoutState:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"outSwitcherOrientation" object:? file:? lineNumber:? description:?];
}

- (void)switcherOrientation:elementsOrientations:forTransitionRequest:previousLayoutState:layoutState:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"outElementsOrientations" object:? file:? lineNumber:? description:?];
}

- (BOOL)_setupSwitcherTraitsParticipantAndPolicySpecifiers
{
  OUTLINED_FUNCTION_3_1();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:v2 object:v1 file:@"SBSwitcherController.m" lineNumber:822 description:{@"Invalid parameter not satisfying: %@", @"_traitsParticipant == nil"}];

  return *v0 == 0;
}

- (void)_orientationsForLayoutStateElements:(uint64_t)a3 withAssociatedParticipants:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SBSwitcherController.m" lineNumber:1132 description:{@"layout state elements and their interface orientations mapping are out of sync. [%@][%@]", a3, a4}];
}

- (void)updateDisplayLayoutElementWithBuilder:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)updateDisplayLayoutElementWithBuilder:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"SBSwitcherController.m" lineNumber:2791 description:{@"No publisher for window scene: %@; self: %@", v0, v1}];
}

- (void)setDisplayLayoutElementActive:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)setDisplayLayoutElementActive:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"SBSwitcherController.m" lineNumber:2808 description:{@"No publisher for window scene: %@; self: %@", v0, v1}];
}

@end