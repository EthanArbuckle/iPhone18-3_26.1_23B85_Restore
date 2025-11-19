@interface SBSwitcherController
- (BOOL)_appsLaunchFullScreenByDefault;
- (BOOL)_areContinuousExposeStripsUnoccluded;
- (BOOL)_areLayoutStateElements:(id)a3 matchedWithAssociatedParticipants:(id)a4;
- (BOOL)_homeScreenIsOnFirstPage;
- (BOOL)_inSwitcherOrientationLockEligibleFullscreenApp:(id)a3;
- (BOOL)_isDisplayItemFullScreen:(id)a3 preferredAttributes:(id)a4;
- (BOOL)_isFloatingDockFullyPresented;
- (BOOL)_isUnderUILock;
- (BOOL)_prefersDockHidden;
- (BOOL)_prefersStripHidden;
- (BOOL)_prefersStripHiddenAndDisabled;
- (BOOL)_setupSwitcherTraitsParticipantAndPolicySpecifiers;
- (BOOL)_shouldAcceleratedHomeButtonPressBegin;
- (BOOL)_updateLayoutPreferencesInSceneDataStoreForSceneHandleIfNeeded:(id)a3;
- (BOOL)activateHomeScreenWithSource:(int64_t)a3 animated:(BOOL)a4;
- (BOOL)activateMainSwitcherWithSource:(int64_t)a3 animated:(BOOL)a4;
- (BOOL)backgroundNethermostWindows;
- (BOOL)canPerformKeyboardShortcutAction:(int64_t)a3 forBundleIdentifier:(id)a4 orSceneIdentifier:(id)a5;
- (BOOL)cancelPeekWithSource:(int64_t)a3 animated:(BOOL)a4;
- (BOOL)dismissMainAndFloatingSwitchersWithSource:(int64_t)a3 animated:(BOOL)a4;
- (BOOL)dismissMainSwitcherWithSource:(int64_t)a3 animated:(BOOL)a4;
- (BOOL)handleHeadsetButtonPress:(BOOL)a3;
- (BOOL)handleHomeButtonDoublePress;
- (BOOL)handleHomeButtonLongPress;
- (BOOL)handleHomeButtonPress;
- (BOOL)handleLockButtonPress;
- (BOOL)handleVoiceCommandButtonPress;
- (BOOL)handleVolumeDownButtonPress;
- (BOOL)handleVolumeUpButtonPress;
- (BOOL)hasAppLayoutForTransientOverlayViewController:(id)a3;
- (BOOL)hasTransientOverlayAppLayouts;
- (BOOL)isAcquiredTransientOverlayViewController:(id)a3;
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
- (BOOL)layoutContainsRole:(int64_t)a3;
- (BOOL)shouldMorphFromPIPForTransitionContext:(id)a3;
- (BOOL)shouldMorphToPIPForTransitionContext:(id)a3;
- (BOOL)shouldProtectTopScreenEdgeForScene:(id)a3;
- (BOOL)toggleMainSwitcherWithSource:(int64_t)a3 animated:(BOOL)a4;
- (CGRect)_leftStatusBarPartIntersectionRegion;
- (CGRect)_rightStatusBarPartIntersectionRegion;
- (CGRect)containerBoundsForInterfaceOrientation:(int64_t)a3;
- (CGRect)effectiveLeadingStatusBarPartFrame;
- (CGRect)effectiveTrailingStatusBarPartFrame;
- (CGRect)frameForCenterItemWithConfiguration:(int64_t)a3 interfaceOrientation:(int64_t)a4;
- (CGRect)frameForFloatingAppLayoutInInterfaceOrientation:(int64_t)a3 floatingConfiguration:(int64_t)a4;
- (CGRect)frameForItemWithRole:(int64_t)a3 inMainAppLayout:(id)a4 interfaceOrientation:(int64_t)a5;
- (CGRect)referenceFrameForInterfaceOrientation:(int64_t)a3 centerConfiguration:(int64_t)a4;
- (CGRect)referenceFrameForInterfaceOrientation:(int64_t)a3 floatingConfiguration:(int64_t)a4;
- (CGRect)referenceFrameForInterfaceOrientation:(int64_t)a3 layoutRole:(int64_t)a4 appLayout:(id)a5;
- (CGRect)sceneEntityFrameForWorkspaceEntity:(id)a3 inLayoutState:(id)a4;
- (CGRect)statusBarAvoidanceFrameForLayoutRole:(int64_t)a3;
- (CGRect)statusBarAvoidanceFrameForLayoutRole:(int64_t)a3 layoutState:(id)a4;
- (CGSize)_maxScreenSizeWithDockAndStripInset;
- (FBSDisplayIdentity)displayIdentity;
- (SBDisplayItemAttributedSize)_centerWindowSizeForPreviousFullscreenWindow;
- (SBLayoutState)layoutState;
- (SBSwitcherController)initWithWindowScene:(id)a3 debugName:(id)a4;
- (SBSwitcherControllerCoordinating)switcherCoordinator;
- (SBWindowScene)windowScene;
- (UIEdgeInsets)statusBarEdgeInsets;
- (char)_activityModeForScene:(id)a3;
- (char)_jetsamModeForScene:(id)a3;
- (double)contentContainerAspectRatio;
- (double)scaleForDownscaledSnapshotGenerationForSceneHandle:(id)a3;
- (double)windowControlsHorizontalSafeAreaPaddingForScene:(id)a3;
- (id)_ancillaryTransitionRequestForTransitionRequest:(id)a3;
- (id)_appLayoutForScene:(id)a3;
- (id)_autoLayoutSpaceForAppLayout:(id)a3;
- (id)_buildHideMenuWithAdditionalOptions:(unint64_t)a3;
- (id)_buildWindowArrangementMenuForKeyCommandRegistration:(BOOL)a3 additionalOptions:(unint64_t)a4;
- (id)_currentFloatingAppLayout;
- (id)_currentLayoutState;
- (id)_currentMainAppLayout;
- (id)_desktopSpaceItems;
- (id)_deviceApplicationSceneHandleForDisplayItem:(id)a3;
- (id)_elementsOrientationsForParticipantsByElementIdentifier:(id)a3;
- (id)_generateWindowManagementContext;
- (id)_liveOverlayForTraitsDelegate:(id)a3;
- (id)_makeWorkspaceTransitionValidatorForActivatingMainSwitcherWithSource:(int64_t)a3 animated:(BOOL)a4;
- (id)_makeWorkspaceTransitionValidatorForDismissingMainSwitcherToAppLayout:(id)a3 dismissFloatingSwitcher:(BOOL)a4 withSource:(int64_t)a5 animated:(BOOL)a6;
- (id)_makeWorkspaceTransitionValidatorForTogglingMainSwitcherWithSource:(int64_t)a3 animated:(BOOL)a4;
- (id)_managedMainDisplayItems;
- (id)_orientationStateDescription;
- (id)_orientationsForLayoutStateElements:(id)a3 withAssociatedParticipants:(id)a4;
- (id)_previousDesktopSpaceItems;
- (id)_sceneEntitiesToForeground;
- (id)_sceneHandleForLayoutElement:(id)a3;
- (id)_topmostDisplayItem;
- (id)_windowingConfiguration;
- (id)activeAndVisibleSceneIdentifiersForApplication:(id)a3;
- (id)activeTransientOverlayPresentedAppLayout;
- (id)animationControllerForTransitionRequest:(id)a3;
- (id)appLayoutForWorkspaceTransientOverlay:(id)a3;
- (id)appLeadingStatusBarStyleRequest;
- (id)appTrailingStatusBarStyleRequest;
- (id)coordinateSpaceForInterfaceOrientation:(int64_t)a3;
- (id)coordinateSpaceForLayoutElement:(id)a3 layoutState:(id)a4;
- (id)coordinateSpaceForLayoutState:(id)a3;
- (id)createWorkspaceTransientOverlayForAppLayout:(id)a3;
- (id)displayItemLayoutAttributesForScene:(id)a3;
- (id)displayItemLayoutAttributesProvider;
- (id)entityWithRole:(int64_t)a3;
- (id)hideMenuWithOptions:(unint64_t)a3;
- (id)layoutElementSizingPoliciesForLayoutState:(id)a3;
- (id)layoutStateApplicationSceneHandles;
- (id)layoutStatePrimaryElement;
- (id)layoutStateSideElement;
- (id)layoutStateStudyLogData;
- (id)leadingStatusBarStyleRequest;
- (id)maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:(id)a3 ignoreOcclusion:(BOOL)a4 ignoreCentering:(BOOL)a5;
- (id)menuBarRecipientScene;
- (id)participantAssociatedSceneIdentityTokens:(id)a3;
- (id)participantAssociatedWindows:(id)a3;
- (id)requestInAppStatusBarHiddenAssertionForReason:(id)a3 animated:(BOOL)a4;
- (id)sceneHandleForLayoutElement:(id)a3;
- (id)sceneHandleForTraitsParticipant:(id)a3;
- (id)sceneHandleForWhitePointAdaptivityStyle;
- (id)stateCaptureTitlePreamble;
- (id)statusBarActionsByPartIdentifier;
- (id)statusBarOverlayData;
- (id)statusBarStyleAttributesForScene:(id)a3;
- (id)trailingStatusBarStyleRequest;
- (id)traitsParticipantForSceneHandle:(id)a3;
- (id)traitsPipelineManager;
- (id)windowArrangementMenuWithOptions:(unint64_t)a3;
- (id)windowControlsViewController;
- (int64_t)_interfaceOrientationForLayoutElementIdentifier:(id)a3;
- (int64_t)floatingConfiguration;
- (int64_t)interfaceOrientationForLayoutElement:(id)a3;
- (int64_t)interfaceOrientationForSceneHandle:(id)a3;
- (int64_t)overrideInterfaceOrientationMechanicsForSwitcherViewController:(id)a3;
- (int64_t)unlockedEnvironmentMode;
- (unint64_t)maximumNumberOfScenesOnStage;
- (unint64_t)switcherSupportedInterfaceOrientations;
- (void)_addInAppStatusBarHiddenAssertion:(id)a3 animated:(BOOL)a4;
- (void)_attemptContentViewInterfaceOrientationUpdateForPanGesture:(int64_t)a3;
- (void)_coverSheetWillPerformTransition:(id)a3;
- (void)_dismissMedusaBanner;
- (void)_enqueueOrientationTransitionWithActuationContext:(id)a3 suggestedAnimator:(id)a4 completionTask:(id)a5 validator:(id)a6 label:(id)a7;
- (void)_handleMultitaskingEnablementChange;
- (void)_initializeSlideOverDisplayItemIfNeededForcingStashed:(BOOL)a3;
- (void)_invalidate;
- (void)_invalidateLayoutElementsTraitsParticipants;
- (void)_invalidateMedusaEducationBannerTimer;
- (void)_moveDisplayItemOutOfSlideOver:(id)a3;
- (void)_moveDisplayItemToSlideOver:(id)a3;
- (void)_noteAppLayoutMovedToFront:(id)a3;
- (void)_noteLayoutStateEvaluationEndedWithParticipantsByElementIdentifiers:(id)a3 delegatesByParticipant:(id)a4 primaryDelegate:(id)a5;
- (void)_noteSwitcherDropAnimationCompletedWithContext:(id)a3;
- (void)_performSwitcherDropWithContext:(id)a3;
- (void)_presentMedusaBanner:(int64_t)a3 fireInterval:(double)a4 dismissInterval:(double)a5;
- (void)_presentMedusaEducationBanner;
- (void)_reevaluateOrientationIfNecessary;
- (void)_removeInAppStatusBarHiddenAssertion:(id)a3 animated:(BOOL)a4;
- (void)_requestDismissalForHomeScreenBackgroundTaps:(BOOL)a3;
- (void)_setUpSwitcherWindowIfNeeded;
- (void)_setupSwitcherTraitsParticipantAndPolicySpecifiers;
- (void)_stopObservingSceneHandles;
- (void)_updateAppTransitionContext:(id)a3 withOrientationActuationContext:(id)a4;
- (void)_updateAppTransitionContext:(id)a3 withOrientationContext:(id)a4 accountForSceneState:(BOOL)a5 primaryDelegate:(id)a6;
- (void)_updateContentViewControllerIfNeeded;
- (void)_updateContentViewInterfaceOrientation:(int64_t)a3;
- (void)_updateDisplayLayoutElementForLayoutState:(id)a3;
- (void)_warmUpIconsForAppLayout:(id)a3;
- (void)_warmUpIconsForRecentAppLayouts;
- (void)_windowSceneCanvasSizeDidChange:(id)a3;
- (void)actuateOrientationForTraitsDelegate:(id)a3 withContext:(id)a4 reasons:(int64_t)a5;
- (void)addAcquiredTransientOverlayViewController:(id)a3 forAppLayout:(id)a4;
- (void)addAppLayoutForDisplayItem:(id)a3 completion:(id)a4;
- (void)addAppLayoutForTransientOverlayViewController:(id)a3;
- (void)addCenterRoleAppLayoutForDisplayItem:(id)a3 completion:(id)a4;
- (void)appendDescriptionForParticipant:(id)a3 withBuilder:(id)a4 multilinePrefix:(id)a5;
- (void)applyDemoLayoutAttributesToScene:(id)a3;
- (void)cleanUpAfterCoordinatedLayoutStateTransitionWithContext:(id)a3;
- (void)client:(id)a3 attentionLostTimeoutDidExpire:(double)a4 forConfigurationGeneration:(unint64_t)a5 withAssociatedObject:(id)a6;
- (void)configureRequest:(id)a3 forSwitcherTransitionRequest:(id)a4 withEventLabel:(id)a5;
- (void)dealloc;
- (void)demoMinimizeScene:(id)a3;
- (void)didBeginCoordinationWithCoordinator:(id)a3;
- (void)didChangeSettingsForParticipant:(id)a3 context:(id)a4;
- (void)enumerateTransientOverlayViewControllersUsingBlock:(id)a3;
- (void)evaluateAppRequestedOrientationLock;
- (void)fluidSwitcherGestureManager:(id)a3 clickReceivedForHomeGrabberView:(id)a4;
- (void)fluidSwitcherGestureManager:(id)a3 didBeginGesture:(id)a4;
- (void)fluidSwitcherGestureManager:(id)a3 didEndGesture:(id)a4;
- (void)fluidSwitcherGestureManager:(id)a3 didUpdateGesture:(id)a4;
- (void)fluidSwitcherGestureManager:(id)a3 tapReceivedForGrabberTongueAtEdge:(unint64_t)a4;
- (void)homeScreenControllerReceivedTouchInBackground:(id)a3;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionWillEndWithTransitionContext:(id)a4;
- (void)lockStateProvider:(id)a3 didUpdateIsUILocked:(BOOL)a4;
- (void)performKeyboardShortcutAction:(int64_t)a3 forBundleIdentifier:(id)a4 orSceneIdentifier:(id)a5;
- (void)performTransitionWithContext:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)prepareForCoordinatedLayoutStateTransitionWithContext:(id)a3;
- (void)removeAcquiredTransientOverlayViewController:(id)a3;
- (void)removeAppLayoutTransientOverlayViewController:(id)a3;
- (void)sceneHandleDidRecognizeDoubleTapInDraggableArea:(id)a3;
- (void)sceneHandleDidUpdateLayoutPreferences:(id)a3;
- (void)setDisplayLayoutElementActive:(BOOL)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)switcherCoordinator;
- (void)switcherOrientation:(int64_t *)a3 elementsOrientations:(id *)a4 forTransitionRequest:(id)a5 previousLayoutState:(id)a6 layoutState:(id)a7;
- (void)updateDisplayLayoutElementWithBuilder:(id)a3;
- (void)updateOrientationForTraitsDelegate:(id)a3 withUpdateReasons:(int64_t)a4 suggestedAnimator:(id)a5 actuationContext:(id)a6;
- (void)updatePreferencesForParticipant:(id)a3 updater:(id)a4;
- (void)updateWindowVisibilityForSwitcherContentController:(id)a3;
- (void)viewDidLoadForSwitcherViewController:(id)a3;
- (void)viewWillAppearForSwitcherViewController:(id)a3 animated:(BOOL)a4;
- (void)willBeginCoordinationWithCoordinator:(id)a3;
- (void)willEndCoordinationWithCoordinator:(id)a3;
- (void)windowControlsViewController:(id)a3 didRequestAction:(unint64_t)a4;
- (void)windowControlsViewController:(id)a3 didRequestArrangeWithConfiguration:(unint64_t)a4;
- (void)windowControlsViewController:(id)a3 didRequestMoveToDisplay:(unint64_t)a4;
- (void)windowControlsViewController:(id)a3 didRequestSlideOverAction:(unint64_t)a4;
- (void)windowControlsViewController:(id)a3 didRequestTileToPosition:(unint64_t)a4;
- (void)windowControlsViewControllerDidRequestAddAnotherWindow:(id)a3;
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
  v3 = [WeakRetained uiLockStateProvider];
  v4 = [v3 isUILocked];

  return v4;
}

- (FBSDisplayIdentity)displayIdentity
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v3 = [WeakRetained _fbsDisplayIdentity];

  return v3;
}

- (id)displayItemLayoutAttributesProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherCoordinator);
  v3 = [WeakRetained displayItemLayoutAttributesProvider];

  return v3;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (BOOL)isOnExtendedDisplay
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v3 = [WeakRetained isExtendedDisplayWindowScene];

  return v3;
}

- (id)layoutStateApplicationSceneHandles
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(SBSwitcherController *)self layoutState];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v4 elements];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([v10 layoutRole] == 3)
        {
          v11 = [v4 floatingConfiguration];
          if (v11 <= 4 && ((1 << v11) & 0x19) != 0)
          {
            continue;
          }
        }

        v12 = [v10 workspaceEntity];
        v13 = [v12 applicationSceneEntity];
        v14 = [v13 sceneHandle];

        if (v14)
        {
          [v3 addObject:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  v3 = [WeakRetained layoutStateProvider];
  v4 = [v3 layoutState];

  return v4;
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
  v2 = [(SBSwitcherController *)self layoutState];
  v3 = [v2 unlockedEnvironmentMode];

  return v3;
}

- (id)_currentMainAppLayout
{
  v2 = [(SBSwitcherController *)self _currentLayoutState];
  v3 = [v2 appLayout];

  return v3;
}

- (id)_currentLayoutState
{
  v3 = [(SBFluidSwitcherGestureManager *)self->_gestureManager activeGestureTransaction];
  v4 = [v3 animationController];
  v5 = [v4 workspaceTransitionRequest];

  v6 = [v5 displayConfiguration];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v8 = [WeakRetained _fbsDisplayConfiguration];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    v10 = [v5 applicationContext];
    v11 = [v10 layoutState];
  }

  else
  {
    v11 = [(SBSwitcherController *)self layoutState];
  }

  return v11;
}

- (id)_currentFloatingAppLayout
{
  v2 = [(SBSwitcherController *)self _currentLayoutState];
  v3 = [v2 floatingAppLayout];

  return v3;
}

- (BOOL)isMainSwitcherVisible
{
  v2 = [(SBSwitcherController *)self layoutState];
  v3 = [v2 unlockedEnvironmentMode] == 2;

  return v3;
}

- (BOOL)isChamoisMultitaskingEnabled
{
  v3 = SBFIsChamoisWindowingUIAvailable();
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v5 = [WeakRetained isExternalDisplayWindowScene];

    if (v5)
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
  v2 = [(SBSwitcherController *)self layoutState];
  v3 = [v2 elementWithRole:1];

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
  v2 = [(SBSwitcherController *)self layoutState];
  v3 = [v2 isFloatingSwitcherVisible];

  return v3;
}

- (id)layoutStateSideElement
{
  v2 = [(SBSwitcherController *)self layoutState];
  v3 = [v2 elementWithRole:2];

  return v3;
}

- (BOOL)_shouldAcceleratedHomeButtonPressBegin
{
  v2 = [(SBSwitcherController *)self contentViewController];
  v3 = [v2 shouldAcceleratedHomeButtonPressBegin];

  return v3;
}

- (BOOL)handleHomeButtonDoublePress
{
  v2 = [(SBSwitcherController *)self contentViewController];
  v3 = [v2 handleHomeButtonDoublePress];

  return v3;
}

- (BOOL)isInAnyPeekState
{
  v2 = [(SBSwitcherController *)self _currentLayoutState];
  IsValid = SBPeekConfigurationIsValid([v2 peekConfiguration]);

  return IsValid;
}

- (SBSwitcherController)initWithWindowScene:(id)a3 debugName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v51.receiver = self;
  v51.super_class = SBSwitcherController;
  v8 = [(SBSwitcherController *)&v51 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_windowScene, v6);
    objc_storeStrong(&v9->_debugName, a4);
    v10 = +[SBDefaults localDefaults];
    v11 = [v10 appSwitcherDefaults];
    defaults = v9->_defaults;
    v9->_defaults = v11;

    v13 = +[SBAppSwitcherDomain rootSettings];
    settings = v9->_settings;
    v9->_settings = v13;

    [(PTSettings *)v9->_settings addKeyObserver:v9];
    v15 = [(SBSwitcherController *)v9 _generateWindowManagementContext];
    windowManagementContext = v9->_windowManagementContext;
    v9->_windowManagementContext = v15;

    v17 = [[SBSwitcherViewController alloc] initWithNibName:0 bundle:0];
    switcherViewController = v9->_switcherViewController;
    v9->_switcherViewController = v17;

    [(SBSwitcherViewController *)v9->_switcherViewController setDelegate:v9];
    v19 = objc_alloc_init(SBDisplayItemLayoutAttributesCalculator);
    displayItemFrameCalculator = v9->_displayItemFrameCalculator;
    v9->_displayItemFrameCalculator = v19;

    if ([v6 isMainDisplayWindowScene] && (objc_msgSend(v6, "isExternalDisplayWindowScene") & 1) == 0)
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

    v24 = [v6 layoutStateTransitionCoordinator];
    [v24 setSceneEntityFrameProvider:v9];
    [v24 addObserver:v9];
    v25 = objc_alloc(MEMORY[0x277D66A50]);
    v26 = [v25 initWithIdentifier:*MEMORY[0x277D66F10]];
    displayLayoutElement = v9->_displayLayoutElement;
    v9->_displayLayoutElement = v26;

    [(SBSDisplayLayoutElement *)v9->_displayLayoutElement setLayoutRole:1];
    [(SBSDisplayLayoutElement *)v9->_displayLayoutElement setLevel:1];
    v28 = [SBSceneRelevancyManager alloc];
    v29 = [(SBAppSwitcherSettings *)v9->_settings sceneRelevancySettings];
    v30 = [(SBSceneRelevancyManager *)v28 initWithSceneRelevancySettings:v29];
    sceneRelevancyManager = v9->_sceneRelevancyManager;
    v9->_sceneRelevancyManager = v30;

    v32 = [v6 modalUIFluidDismissGestureManager];
    v33 = MEMORY[0x277CCACA8];
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    v36 = [v33 stringWithFormat:@"%@-%@", v35, v9->_debugName];
    v37 = [v32 addObserver:v9 forReason:v36];
    modalUIFluidDismissalObserverInvalidatable = v9->_modalUIFluidDismissalObserverInvalidatable;
    v9->_modalUIFluidDismissalObserverInvalidatable = v37;

    v39 = MEMORY[0x277CCACA8];
    v40 = [(SBSwitcherController *)v9 stateCaptureTitlePreamble];
    v41 = [v39 stringWithFormat:@"%@ - SBSwitcherController", v40];

    objc_initWeak(&location, v9);
    v42 = MEMORY[0x277D85CD0];
    objc_copyWeak(&v49, &location);
    v43 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureInvalidatable = v9->_stateCaptureInvalidatable;
    v9->_stateCaptureInvalidatable = v43;

    v45 = [MEMORY[0x277CCAB98] defaultCenter];
    [v45 addObserver:v9 selector:sel__updateContentViewControllerIfNeeded name:*MEMORY[0x277D764C0] object:0];
    [v45 addObserver:v9 selector:sel__windowSceneCanvasSizeDidChange_ name:@"SBWindowSceneSessionRoleExternalDisplay" object:v6];
    v9->_coverSheetFlyInProgress = 0.0;
    v46 = [v6 lockScreenManager];
    [v45 addObserver:v9 selector:sel__coverSheetWillPerformTransition_ name:@"SBLockScreenUIWillPerformTransitionNotification" object:v46];

    v47 = [v6 uiLockStateProvider];
    [v47 addLockStateObserver:v9];

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
    v11 = [(SBSwitcherController *)self layoutState];
    [v11 interfaceOrientation];
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

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
  v7 = [WeakRetained layoutStateTransitionCoordinator];
  [v7 setSceneEntityFrameProvider:0];
  [v7 removeObserver:self];
  [(BSInvalidatable *)self->_stateCaptureInvalidatable invalidate];
  [(SBSwitcherController *)self _invalidateMedusaEducationBannerTimer];
  [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient setEnabled:0];
  [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient setDelegate:0];
  [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient invalidate];
  [(BSInvalidatable *)self->_displayLayoutElementAssertion invalidate];
  [(BSInvalidatable *)self->_suppressHidingProtectedAppsAssertion invalidate];
  suppressHidingProtectedAppsAssertion = self->_suppressHidingProtectedAppsAssertion;
  self->_suppressHidingProtectedAppsAssertion = 0;

  v9 = [WeakRetained uiLockStateProvider];
  [v9 removeLockStateObserver:self];
}

- (void)willBeginCoordinationWithCoordinator:(id)a3
{
  v17[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_storeWeak(&self->_switcherCoordinator, v4);
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

- (void)didBeginCoordinationWithCoordinator:(id)a3
{
  [(SBSwitcherController *)self _setUpSwitcherWindowIfNeeded];

  [(SBSwitcherController *)self _initializeSlideOverDisplayItemIfNeededForcingStashed:1];
}

- (void)willEndCoordinationWithCoordinator:(id)a3
{
  [(BSDefaultObserver *)self->_multitaskingEnablementObserver invalidate];
  multitaskingEnablementObserver = self->_multitaskingEnablementObserver;
  self->_multitaskingEnablementObserver = 0;

  v9 = [(SBSwitcherController *)self contentViewController];
  [v9 invalidate];
  [v9 willMoveToParentViewController:0];
  v5 = [v9 view];
  [v5 removeFromSuperview];

  v6 = [(SBSwitcherController *)self switcherViewController];
  [v6 removeChildViewController:v9];
  [v9 didMoveToParentViewController:0];
  v7 = [v6 view];
  v8 = [v7 window];
  [v8 setHidden:1];
  [v6 willMoveToParentViewController:0];
  [v7 removeFromSuperview];
  [v8 setRootViewController:0];
  [v6 didMoveToParentViewController:0];
}

- (id)_generateWindowManagementContext
{
  if (([(SBAppSwitcherDefaults *)self->_defaults chamoisWindowingEnabled]& 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = [(SBAppSwitcherDefaults *)self->_defaults medusaMultitaskingEnabled];
  }

  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  if (![WeakRetained supportsMultitasking])
  {
    v7 = +[SBSwitcherWindowManagementContext singleAppContext];
    goto LABEL_23;
  }

  if (![WeakRetained isExternalDisplayWindowScene])
  {
    if (v3)
    {
      v8 = SBFIsFlexibleWindowingUIAvailable();
    }

    else
    {
      v8 = 0;
    }

    v9 = v3 & (v8 ^ 1u);
    v10 = [(SBAppSwitcherDefaults *)self->_defaults chamoisWindowingEnabled];
    v6 = v10;
    if ((v8 ^ 1) & 1) != 0 || (v10)
    {
      v5 = 0;
      if ((v8 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v5 = [(SBAppSwitcherDefaults *)self->_defaults flexibleWindowingManualStageCreationShouldRestorePreviousOpenWindows];
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
      v5 = 0;
      v6 = 1;
    }

    else
    {
      v5 = [(SBAppSwitcherDefaults *)self->_defaults flexibleWindowingManualStageCreationShouldRestorePreviousOpenWindows];
      v6 = 0;
    }

LABEL_21:
    v9 = 2;
    goto LABEL_22;
  }

  v5 = 0;
  v6 = 1;
  v9 = 1;
LABEL_22:
  v7 = [[SBSwitcherWindowManagementContext alloc] initWithBaseStyle:v9 automaticStageCreationEnabled:v6 restoresPreviouslyOpenWindows:v5];
LABEL_23:
  v11 = v7;

  return v11;
}

- (void)_handleMultitaskingEnablementChange
{
  v59[1] = *MEMORY[0x277D85DE8];
  v4 = [(SBSwitcherController *)self _generateWindowManagementContext];
  v39 = self->_windowManagementContext;
  if ((BSEqualObjects() & 1) == 0)
  {
    v5 = [(SBSwitcherController *)self switcherCoordinator];
    [v5 switcherControllerWillUpdateWindowManagementStyle:self];
    objc_storeStrong(&self->_windowManagementContext, v4);
    [(SBSwitcherController *)self _initializeSlideOverDisplayItemIfNeededForcingStashed:0];
    [v5 switcherControllerDidUpdateWindowManagementStyle:self];
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

    v9 = [v7 personality];
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
      v13 = [MEMORY[0x277D75418] currentDevice];
      v14 = [v13 userInterfaceIdiom];

      v15 = off_2783A2CF8;
      if ((v14 & 0xFFFFFFFFFFFFFFFBLL) != 1)
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
  v18 = [(SBSwitcherWindowManagementContext *)v17 isAutomaticStageCreationEnabled];
  objc_copyWeak(&to, &self->_windowScene);
  v19 = [(SBSwitcherController *)self layoutState];
  v20 = [v19 unlockedEnvironmentMode] == 3;

  if (v20)
  {
    objc_initWeak(&location, self);
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v22 = +[SBWorkspace mainWorkspace];
    v23 = [WeakRetained _fbsDisplayConfiguration];
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
    v51 = self;
    [v22 requestTransitionWithOptions:0 displayConfiguration:v23 builder:v54 validator:v49];

    objc_destroyWeak(v53);
    objc_destroyWeak(&v52);

    objc_destroyWeak(&location);
  }

  else
  {
    v26 = [(SBSwitcherController *)self layoutState];
    if ([v26 unlockedEnvironmentMode] == 2)
    {
      v27 = [(SBSwitcherWindowManagementContext *)v39 isFlexibleWindowingEnabled];
      if (v27 == [(SBSwitcherWindowManagementContext *)v17 isFlexibleWindowingEnabled])
      {
        v28 = [(SBSwitcherWindowManagementContext *)v39 isAutomaticStageCreationEnabled];

        if (((v18 ^ v28) & 1) == 0)
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
      v31 = [v29 _fbsDisplayConfiguration];
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
      [v30 requestTransitionWithOptions:0 displayConfiguration:v31 builder:v47 validator:v43];

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
  v36 = [v34 sharedInstance];
  [v36 emitEvent:58 withPayload:v35];

  v37 = [MEMORY[0x277CCAB98] defaultCenter];
  [v37 postNotificationName:@"SBSwitcherControllerWindowManagementStyleDidChangeNotification" object:self];

  v38 = dispatch_get_global_queue(-32768, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SBSwitcherController__handleMultitaskingEnablementChange__block_invoke_122;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v42 = v18;
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

- (void)switcherOrientation:(int64_t *)a3 elementsOrientations:(id *)a4 forTransitionRequest:(id)a5 previousLayoutState:(id)a6 layoutState:(id)a7
{
  v85 = *MEMORY[0x277D85DE8];
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if (v12)
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_76:
    [SBSwitcherController switcherOrientation:elementsOrientations:forTransitionRequest:previousLayoutState:layoutState:];
    if (a4)
    {
      goto LABEL_4;
    }

    goto LABEL_77;
  }

  [SBSwitcherController switcherOrientation:elementsOrientations:forTransitionRequest:previousLayoutState:layoutState:];
  if (!a3)
  {
    goto LABEL_76;
  }

LABEL_3:
  if (a4)
  {
    goto LABEL_4;
  }

LABEL_77:
  [SBSwitcherController switcherOrientation:elementsOrientations:forTransitionRequest:previousLayoutState:layoutState:];
LABEL_4:
  v15 = SBLogTraitsArbiter();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = SBMainWorkspaceTransitionSourceDescription([v12 source]);
    *buf = 138543362;
    v82 = v16;
    _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "[SwitcherOrientation] transition source: %{public}@", buf, 0xCu);
  }

  v17 = [v12 eventLabel];
  v18 = [v17 containsString:@"SBSwitcherControllerEventLabelFollowupRotation"];

  v19 = [[SBSwitcherLayoutTransitionNotes alloc] initWithFromPreviousState:v13 currentLayoutState:v14 transitionRequest:v12];
  *a3 = 0;
  if (-[SBSwitcherLayoutTransitionNotes isRotation](v19, "isRotation") || -[SBSwitcherLayoutTransitionNotes fromNoAppToApp](v19, "fromNoAppToApp") || -[SBSwitcherLayoutTransitionNotes changingApps](v19, "changingApps") || self->_traitsParticipant || [v14 unlockedEnvironmentMode] != 1)
  {
    v70 = v18;
    v75 = a4;
    [(SBSwitcherController *)self _noteLayoutStateEvaluationBegan];
    if (!self->_traitsParticipant)
    {
      [(SBSwitcherController *)self _setupSwitcherTraitsParticipantAndPolicySpecifiers];
    }

    v20 = [v14 elementWithRole:1];
    v21 = [v20 workspaceEntity];

    v73 = v21;
    v22 = [v21 applicationSceneEntity];
    v23 = [v22 sceneHandle];
    v24 = [v23 application];
    v76 = [v24 classicAppPhoneAppRunningOnPad];

    v25 = [(SBSwitcherLayoutTransitionNotes *)v19 fromHomeScreenToApp];
    if ([(SBSwitcherLayoutTransitionNotes *)v19 inHomeScreen])
    {
      canDetermineActiveOrientation = self->_canDetermineActiveOrientation;
    }

    else
    {
      canDetermineActiveOrientation = 1;
    }

    self->_canDetermineActiveOrientation = canDetermineActiveOrientation;
    self->_shouldLockPublishedOrientation = v25;
    self->_panGestureRecognizerRequestedOrientation = 0;
    hasEligibleAppOrientationLockPreference = self->_hasEligibleAppOrientationLockPreference;
    v28 = [(SBSwitcherLayoutTransitionNotes *)v19 inAppLayout];
    self->_hasEligibleAppOrientationLockPreference = [(SBSwitcherController *)self _inSwitcherOrientationLockEligibleFullscreenApp:v28];

    v29 = self->_hasEligibleAppOrientationLockPreference;
    v30 = [(SBSwitcherController *)self windowManagementContext];
    v31 = [v30 isChamoisOrFlexibleWindowing];

    v32 = [(SBSwitcherLayoutTransitionNotes *)v19 isSystemGesture];
    v72 = v12;
    if (v31)
    {
      if (v32 || [(SBSwitcherLayoutTransitionNotes *)v19 fromSwitcher]&& [(SBSwitcherLayoutTransitionNotes *)v19 inApp]|| hasEligibleAppOrientationLockPreference != v29)
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

    if (!v32 && ![(SBSwitcherLayoutTransitionNotes *)v19 isPIPRestore])
    {
      if ([(SBSwitcherLayoutTransitionNotes *)v19 fromHomeScreenToApp]|| [(SBSwitcherLayoutTransitionNotes *)v19 stableInAppOrMovingBetweenSingleApp])
      {
        if (v73)
        {
          if (v76)
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
        if (!v76)
        {
          v36 = v35;
        }

        v68 = v36;
LABEL_45:
        v74 = a3;
        self->_needsOrientationReevaluation = v33;
        v37 = [v14 elements];
        v38 = [v13 elements];
        v77 = v14;
        v71 = v13;
        if ([v37 isEqual:v38])
        {
          v39 = [v14 elements];
          v40 = [(SBSwitcherController *)self _areLayoutStateElements:v39 matchedWithAssociatedParticipants:self->_traitsParticipantsByElementIdentifier];

          v14 = v77;
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
        v45 = [v14 elements];
        v79 = 0;
        v80 = 0;
        v78 = 0;
        [(SBSwitcherTraitsAssistant *)traitsAssistant createTraitsParticipantsForLayoutElements:v45 outParticipantsByElementIdentifier:&v80 outDelegatesByParticipant:&v79 outPrimaryDelegate:&v78];
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
          v12 = v72;
          v50 = [v72 applicationContext];
          v51 = self->_arbiterActuationContext;
          if (v76)
          {
            [(SBSwitcherController *)self _updateAppTransitionContext:v50 withOrientationContext:self->_arbiterActuationContext accountForSceneState:0 primaryDelegate:v43];
          }

          else
          {
            v59 = [(SBSwitcherController *)self windowManagementContext];
            -[SBSwitcherController _updateAppTransitionContext:withOrientationContext:accountForSceneState:primaryDelegate:](self, "_updateAppTransitionContext:withOrientationContext:accountForSceneState:primaryDelegate:", v50, v51, [v59 isChamoisOrFlexibleWindowing] ^ 1, v43);
          }
        }

        else
        {
          v12 = v72;
          if (!v76)
          {
            goto LABEL_63;
          }

          v52 = [v72 applicationContext];
          v53 = [v52 isInLiveResize];

          if (v53)
          {
            goto LABEL_63;
          }

          v54 = [(SBTraitsSceneParticipantDelegate *)self->_primaryElementTraitsParticipantDelegate scene];

          if (!v54)
          {
            goto LABEL_63;
          }

          v55 = [(SBSwitcherController *)self interfaceOrientation];
          v56 = [(TRAParticipant *)self->_traitsParticipant sbf_currentOrientation];
          if (v55 == v56)
          {
            goto LABEL_63;
          }

          v57 = v56;
          v50 = [v72 applicationContext];
          v58 = [SBAnimationUtilities animationSettingsForRotationFromInterfaceOrientation:v55 toInterfaceOrientation:v57];
          [v50 setAnimationSettings:v58];
        }

LABEL_63:
        *v74 = [(TRAParticipant *)self->_traitsParticipant sbf_currentOrientation];
        v60 = [v77 elements];
        *v75 = [(SBSwitcherController *)self _orientationsForLayoutStateElements:v60 withAssociatedParticipants:v41];

        v61 = SBLogTraitsArbiter();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          v62 = [v12 applicationContext];
          v63 = [v62 animationSettings];
          [v63 duration];
          *buf = 134217984;
          v82 = v64;
          _os_log_impl(&dword_21ED4E000, v61, OS_LOG_TYPE_DEFAULT, "[SwitcherOrientation] animation duration set to %.2f", buf, 0xCu);
        }

        v65 = SBLogTraitsArbiter();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          v66 = BSInterfaceOrientationDescription();
          v67 = *v75;
          *buf = 138543618;
          v82 = v66;
          v83 = 2114;
          v84 = v67;
          _os_log_impl(&dword_21ED4E000, v65, OS_LOG_TYPE_DEFAULT, "[SwitcherOrientation] outSwitcherOrientation: %{public}@, outElementsOrientations: %{public}@", buf, 0x16u);
        }

        [(SBSwitcherController *)self _noteLayoutStateEvaluationEndedWithParticipantsByElementIdentifiers:v41 delegatesByParticipant:v42 primaryDelegate:v43];
        v13 = v71;
        v14 = v77;
        goto LABEL_68;
      }
    }

    v33 = 1;
    goto LABEL_41;
  }

LABEL_68:
}

- (BOOL)_inSwitcherOrientationLockEligibleFullscreenApp:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  [(SBSwitcherController *)self maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:a3 ignoreOcclusion:0 ignoreCentering:0];
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
          v12 = [v11 scenePrefersOrientationLocked];

          if (v12)
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

- (void)_noteLayoutStateEvaluationEndedWithParticipantsByElementIdentifiers:(id)a3 delegatesByParticipant:(id)a4 primaryDelegate:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (self->_layoutStateEvaluationCounter == 1)
  {
    v26 = v10;
    v12 = [(NSDictionary *)v8 allValues];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = [(NSDictionary *)self->_traitsParticipantsByElementIdentifier allValues];
    v14 = [v13 countByEnumeratingWithState:&v31 objects:v36 count:16];
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
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v31 + 1) + 8 * i);
          if (([v12 containsObject:v18] & 1) == 0)
          {
            [v18 invalidate];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v15);
    }

    traitsParticipantsByElementIdentifier = self->_traitsParticipantsByElementIdentifier;
    self->_traitsParticipantsByElementIdentifier = v8;
    v20 = v8;

    traitsDelegateByParticipant = self->_traitsDelegateByParticipant;
    self->_traitsDelegateByParticipant = v9;
    v8 = v9;

    objc_storeStrong(&self->_primaryElementTraitsParticipantDelegate, a5);
    v9 = v20;
    v11 = v26;
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = [(NSDictionary *)v8 allValues];
    v22 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
            objc_enumerationMutation(v12);
          }

          [*(*(&v27 + 1) + 8 * j) invalidate];
        }

        v23 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
    v10 = [WeakRetained traitsArbiter];

    v4 = [v10 acquireParticipantWithRole:@"SBTraitsParticipantRoleSwitcherRaw" delegate:self];
    traitsParticipant = self->_traitsParticipant;
    self->_traitsParticipant = v4;

    [(TRAParticipant *)self->_traitsParticipant setNeedsUpdatePreferencesWithReason:@"setup"];
    v6 = [v10 acquireParticipantWithRole:@"SBTraitsParticipantRoleSwitcherPublisher" delegate:self];
    publisherTraitsParticipant = self->_publisherTraitsParticipant;
    self->_publisherTraitsParticipant = v6;

    v8 = [[SBSwitcherTraitsAssistant alloc] initWithTraitsArbiter:v10 switcherParticipant:self->_traitsParticipant delegate:self];
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
  v3 = [(NSDictionary *)self->_traitsParticipantsByElementIdentifier allValues];
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v20 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSDictionary *)self->_traitsDelegateByParticipant allValues];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
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
          objc_enumerationMutation(v8);
        }

        [*(*(&v16 + 1) + 8 * v12++) invalidate];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
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
  v4 = [WeakRetained _sbDisplayConfiguration];
  v5 = [v4 deviceName];
  v6 = [v2 stringWithFormat:@"SpringBoard - SwitcherController - %@", v5];

  return v6;
}

- (id)traitsPipelineManager
{
  if (self->_isInvalidated)
  {
    v2 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v2 = [WeakRetained traitsPipelineManager];
  }

  return v2;
}

- (double)contentContainerAspectRatio
{
  v2 = [(SBSwitcherController *)self contentViewController];
  [v2 contentAspectRatio];
  v4 = v3;

  return v4;
}

- (id)sceneHandleForLayoutElement:(id)a3
{
  if (self->_isInvalidated)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(SBSwitcherController *)self _sceneHandleForLayoutElement:a3, v3];
  }

  return v5;
}

- (id)sceneHandleForTraitsParticipant:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(NSDictionary *)self->_traitsDelegateByParticipant objectForKey:v4];

  v7 = [v6 sceneHandle];
  v8 = SBSafeCast(v5, v7);

  return v8;
}

- (void)actuateOrientationForTraitsDelegate:(id)a3 withContext:(id)a4 reasons:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v11 = [(SBSwitcherController *)self _liveOverlayForTraitsDelegate:v9];
  v10 = [v11 prepareOverlayForContentRotation];
  [(SBSwitcherController *)self updateOrientationForTraitsDelegate:v9 withUpdateReasons:a5 suggestedAnimator:v10 actuationContext:v8];
}

- (void)evaluateAppRequestedOrientationLock
{
  v3 = +[(SBWorkspace *)SBMainWorkspace];
  v4 = [v3 createRequestWithOptions:0];

  [v4 finalize];

  [(SBSwitcherController *)self _reevaluateOrientationIfNecessary];
}

- (void)updatePreferencesForParticipant:(id)a3 updater:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_traitsParticipant == v6)
  {
    [(TRAParticipant *)v6 currentZOrderLevel];
    if ((BSFloatEqualToFloat() & 1) == 0)
    {
      [v7 updateZOrderLevelPreferencesWithBlock:&__block_literal_global_154];
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__SBSwitcherController_updatePreferencesForParticipant_updater___block_invoke_2;
    v10[3] = &unk_2783B0DC0;
    v10[4] = self;
    [v7 updateOrientationPreferencesWithBlock:v10];
  }

  else if (self->_publisherTraitsParticipant == v6)
  {
    [(TRAParticipant *)v6 currentZOrderLevel];
    if ((BSFloatEqualToFloat() & 1) == 0)
    {
      [v7 updateZOrderLevelPreferencesWithBlock:&__block_literal_global_157];
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__SBSwitcherController_updatePreferencesForParticipant_updater___block_invoke_4;
    v8[3] = &unk_2783B6478;
    v8[4] = self;
    v9 = v6;
    [v7 updateOrientationPreferencesWithBlock:v8];
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

- (void)didChangeSettingsForParticipant:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_publisherTraitsParticipant != v6)
  {
    v8 = [(TRAParticipant *)v6 sbf_currentOrientation];
    if (v8 != [(SBSwitcherController *)self interfaceOrientation])
    {
      v9 = [v7 orientationActuationContext];
      arbiterActuationContext = self->_arbiterActuationContext;
      self->_arbiterActuationContext = v9;

      objc_initWeak(&location, self);
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __64__SBSwitcherController_didChangeSettingsForParticipant_context___block_invoke;
      v15 = &unk_2783B64A0;
      objc_copyWeak(v17, &location);
      v16 = v6;
      v17[1] = v8;
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

- (void)updateOrientationForTraitsDelegate:(id)a3 withUpdateReasons:(int64_t)a4 suggestedAnimator:(id)a5 actuationContext:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (a4 != 4)
  {
    objc_initWeak(&location, self);
    v13 = [v10 participant];
    v14 = [v13 currentOrientation];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __112__SBSwitcherController_updateOrientationForTraitsDelegate_withUpdateReasons_suggestedAnimator_actuationContext___block_invoke;
    v16[3] = &unk_2783B64C8;
    objc_copyWeak(v18, &location);
    v18[1] = v14;
    v17 = v10;
    v18[2] = a4;
    v15 = MEMORY[0x223D6F7F0](v16);
    [(SBSwitcherController *)self _enqueueOrientationTransitionWithActuationContext:v12 suggestedAnimator:v11 completionTask:0 validator:v15 label:@"SBSwitcherControllerEventLabelLiveOverlayParticipantUpdate"];

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

- (void)_enqueueOrientationTransitionWithActuationContext:(id)a3 suggestedAnimator:(id)a4 completionTask:(id)a5 validator:(id)a6 label:(id)a7
{
  v38 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = SBLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = v15;
    _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "[SwitcherOrientation] Enqueued event %@.", buf, 0xCu);
  }

  v17 = [(SBSwitcherController *)self windowScene];
  v18 = [v17 _sbDisplayConfiguration];

  v19 = +[SBWorkspace mainWorkspace];
  v20 = [v19 createRequestWithOptions:0 displayConfiguration:v18];

  [v20 setSource:14];
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%ld", v15, _enqueueOrientationTransitionWithActuationContext_suggestedAnimator_completionTask_validator_label__eventLabelGeneration];
  [v20 setEventLabel:v21];

  ++_enqueueOrientationTransitionWithActuationContext_suggestedAnimator_completionTask_validator_label__eventLabelGeneration;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __123__SBSwitcherController__enqueueOrientationTransitionWithActuationContext_suggestedAnimator_completionTask_validator_label___block_invoke;
  v34[3] = &unk_2783B64F0;
  v22 = v12;
  v35 = v22;
  [v20 setTransactionProvider:v34];
  if (v13)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __123__SBSwitcherController__enqueueOrientationTransitionWithActuationContext_suggestedAnimator_completionTask_validator_label___block_invoke_2;
    v32[3] = &unk_2783A9C70;
    v33 = v13;
    v23 = [v20 addCompletionHandler:v32];
  }

  objc_initWeak(buf, self);
  v24 = +[SBWorkspace mainWorkspace];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __123__SBSwitcherController__enqueueOrientationTransitionWithActuationContext_suggestedAnimator_completionTask_validator_label___block_invoke_3;
  v28[3] = &unk_2783B43B8;
  objc_copyWeak(&v31, buf);
  v25 = v14;
  v30 = v25;
  v26 = v27;
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

- (void)appendDescriptionForParticipant:(id)a3 withBuilder:(id)a4 multilinePrefix:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __84__SBSwitcherController_appendDescriptionForParticipant_withBuilder_multilinePrefix___block_invoke;
  v20[3] = &unk_2783A8ED8;
  v20[4] = self;
  v11 = v8;
  v21 = v11;
  v12 = v9;
  v22 = v12;
  [v12 appendBodySectionWithName:@"Associated Windows" multilinePrefix:v10 block:v20];
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
    [v18 appendBodySectionWithName:@"Associated Scenes" multilinePrefix:v10 block:v17];
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

- (id)participantAssociatedWindows:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [(SBSwitcherController *)self switcherWindow];
  v4 = v3;
  if (v3)
  {
    v7[0] = v3;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)participantAssociatedSceneIdentityTokens:(id)a3
{
  v3 = [(SBSwitcherController *)self contentViewController];
  v4 = [v3 liveScenesIdentityTokens];

  return v4;
}

- (void)lockStateProvider:(id)a3 didUpdateIsUILocked:(BOOL)a4
{
  v5 = [(SBSwitcherController *)self contentViewController:a3];
  [(SBSwitcherController *)self updateWindowVisibilityForSwitcherContentController:v5];
}

- (void)_updateAppTransitionContext:(id)a3 withOrientationActuationContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBSwitcherController *)self windowManagementContext];
  -[SBSwitcherController _updateAppTransitionContext:withOrientationContext:accountForSceneState:primaryDelegate:](self, "_updateAppTransitionContext:withOrientationContext:accountForSceneState:primaryDelegate:", v7, v6, [v8 isChamoisOrFlexibleWindowing] ^ 1, self->_primaryElementTraitsParticipantDelegate);
}

- (void)_updateAppTransitionContext:(id)a3 withOrientationContext:(id)a4 accountForSceneState:(BOOL)a5 primaryDelegate:(id)a6
{
  v7 = a5;
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(SBSwitcherController *)self interfaceOrientation];
  v14 = [(TRAParticipant *)self->_traitsParticipant sbf_currentOrientation];
  v15 = [v12 sceneCurrentOrientation];

  v16 = v15 == v14 && v7;
  v17 = [v11 preventTouchCancellation];
  v18 = [v10 animationDisabled];
  v19 = [(SBMainSwitcherWindow *)self->_switcherWindow isHidden];
  v20 = [(SBSwitcherController *)self _isUnderUILock];
  v21 = v20;
  if ((v18 & 1) != 0 || (v19 & 1) != 0 || v20 || v16)
  {
    v28 = v13;
    v22 = [MEMORY[0x277CF0B70] settingsWithDuration:0.0];
    v23 = SBLogTraitsArbiter();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      v30 = v18;
      v31 = 1024;
      v32 = v19;
      v33 = 1024;
      v34 = v21;
      v35 = 1024;
      v36 = v16;
      _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, "[SwitcherOrientation] animation duration set to zero. animationDisabled{%{BOOL}u}, isWindowHidden{%{BOOL}u}, isWindowHidden{%{BOOL}u}, isSceneInFinalStateAlready{%{BOOL}u}", buf, 0x1Au);
    }

    v13 = v28;
  }

  else
  {
    v22 = [SBAnimationUtilities animationSettingsForRotationFromOrientation:v13 toOrientation:v14 withContext:v11];
  }

  [v10 setInterfaceOrientation:v14];
  [v10 setAnimationSettings:v22];
  [v10 setPrefersTouchCancellationDisabled:v17];
  v24 = [v11 drawingFence];
  [v10 setAnimationFence:v24];

  v25 = [v11 drawingFence];
  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = v13 == v14;
  }

  v27 = !v26;
  [v10 setFencesAnimations:v27];
}

- (int64_t)interfaceOrientationForSceneHandle:(id)a3
{
  v4 = [a3 sceneIdentifier];
  v5 = [(SBSwitcherController *)self _interfaceOrientationForLayoutElementIdentifier:v4];

  return v5;
}

- (int64_t)interfaceOrientationForLayoutElement:(id)a3
{
  v4 = [a3 uniqueIdentifier];
  v5 = [(SBSwitcherController *)self _interfaceOrientationForLayoutElementIdentifier:v4];

  return v5;
}

- (id)traitsParticipantForSceneHandle:(id)a3
{
  v4 = [a3 sceneIdentifier];
  v5 = [(SBSwitcherController *)self _traitsParticipantForLayoutElementIdentifier:v4];

  return v5;
}

- (id)_liveOverlayForTraitsDelegate:(id)a3
{
  v4 = a3;
  v5 = [v4 scene];
  v6 = [v4 sceneHandle];

  if (v5)
  {
    v7 = [(SBSwitcherController *)self contentViewController];
    v8 = [v5 identityToken];
    v9 = [v7 liveOverlayForSceneIdentityToken:v8];

LABEL_5:
    goto LABEL_6;
  }

  if (v6)
  {
    v7 = [(SBSwitcherController *)self contentViewController];
    v9 = [v7 liveOverlayForSceneHandle:v6];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (int64_t)_interfaceOrientationForLayoutElementIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SBSwitcherController *)self _traitsParticipantForLayoutElementIdentifier:v4];
  v6 = [v5 sbf_currentOrientation];
  if (!v6)
  {
    v7 = [(SBSwitcherController *)self layoutState];
    v6 = [v7 interfaceOrientationForElementIdentifier:v4];
  }

  return v6;
}

- (id)_orientationsForLayoutStateElements:(id)a3 withAssociatedParticipants:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(SBSwitcherController *)self _elementsOrientationsForParticipantsByElementIdentifier:v8];
  v10 = [(SBSwitcherController *)self _areLayoutStateElements:v7 matchedWithAssociatedParticipants:v8];

  if (!v10)
  {
    v11 = [v9 count];
    if (v11 != [v7 count])
    {
      [(SBSwitcherController *)a2 _orientationsForLayoutStateElements:v7 withAssociatedParticipants:v9];
    }
  }

  return v9;
}

- (id)_elementsOrientationsForParticipantsByElementIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
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

- (BOOL)_areLayoutStateElements:(id)a3 matchedWithAssociatedParticipants:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 count];
  if (v7 == [v5 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v5;
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

          v13 = [*(*(&v17 + 1) + 8 * i) uniqueIdentifier];
          v14 = [v6 objectForKey:v13];

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

- (id)layoutElementSizingPoliciesForLayoutState:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 elements];
  v6 = [v5 count];

  if (v6)
  {
    v22 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v6];
    v21 = [v4 interfaceOrientation];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = [v4 elements];
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
          v9 = [v4 layoutAttributesForElement:v8];
          v10 = [SBDisplayItem displayItemForLayoutElement:v8];
          v11 = [(SBHomeScreenConfigurationServer *)v9 connections];
          v12 = [v4 interfaceOrientationForLayoutElement:v8];
          displayItemFrameCalculator = self->_displayItemFrameCalculator;
          WeakRetained = objc_loadWeakRetained(&self->_windowScene);
          v15 = [(SBDisplayItemLayoutAttributesCalculator *)displayItemFrameCalculator sizingPolicyForDisplayItem:v10 contentOrientation:v12 containerOrientation:v21 proposedSizingPolicy:v11 windowScene:WeakRetained];

          v16 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
          v17 = [v8 uniqueIdentifier];
          [v22 setValue:v16 forKey:v17];
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

- (id)_sceneHandleForLayoutElement:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [v3 workspaceEntity];

  v6 = SBSafeCast(v4, v5);

  v7 = objc_opt_class();
  v8 = [v6 sceneHandle];
  v9 = SBSafeCast(v7, v8);

  return v9;
}

- (void)_attemptContentViewInterfaceOrientationUpdateForPanGesture:(int64_t)a3
{
  [(SBSwitcherController *)self switcherSupportedInterfaceOrientations];
  if (!SBFInterfaceOrientationMaskContainsInterfaceOrientation())
  {
    return;
  }

  self->_panGestureRecognizerRequestedOrientation = a3;
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

    v13 = [(SBSwitcherContentViewControlling *)v12 homeAffordanceOrientationIfMismatchedFromCurrentLayoutState];
    if ((v7 & 1) == 0)
    {
    }

    if (v13)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v3 = [MEMORY[0x277D75418] currentDevice];
  if ([v3 userInterfaceIdiom] != 1)
  {
    goto LABEL_8;
  }

LABEL_16:
  [(TRAParticipant *)self->_traitsParticipant setNeedsUpdatePreferencesWithReason:@"pan gesture recognizer" animate:0];
LABEL_17:

  [(SBSwitcherController *)self _updateContentViewInterfaceOrientation:a3];
}

- (void)_updateContentViewInterfaceOrientation:(int64_t)a3
{
  [(SBSwitcherViewController *)self->_switcherViewController setContentOrientation:?];
  contentViewController = self->_contentViewController;

  [(SBSwitcherContentViewControlling *)contentViewController setContentOrientation:a3];
}

- (BOOL)canPerformKeyboardShortcutAction:(int64_t)a3 forBundleIdentifier:(id)a4 orSceneIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(SBSwitcherController *)self switcherCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  LOBYTE(a3) = [v10 canPerformKeyboardShortcutAction:a3 forBundleIdentifier:v9 orSceneIdentifier:v8 windowScene:WeakRetained];

  return a3;
}

- (void)performKeyboardShortcutAction:(int64_t)a3 forBundleIdentifier:(id)a4 orSceneIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v11 = [(SBSwitcherController *)self switcherCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  [v11 performKeyboardShortcutAction:a3 forBundleIdentifier:v9 orSceneIdentifier:v8 windowScene:WeakRetained];
}

- (BOOL)shouldMorphFromPIPForTransitionContext:(id)a3
{
  v4 = a3;
  v5 = [(SBSwitcherController *)self contentViewController];
  v6 = [v5 dataSource];
  v7 = [(SBSwitcherController *)self contentViewController];
  v8 = [v6 switcherContentController:v7 shouldMorphFromPIPForTransitionContext:v4];

  return v8;
}

- (BOOL)shouldMorphToPIPForTransitionContext:(id)a3
{
  v4 = a3;
  v5 = [(SBSwitcherController *)self contentViewController];
  v6 = [v5 dataSource];
  v7 = [(SBSwitcherController *)self contentViewController];
  v8 = [v6 switcherContentController:v7 shouldMorphToPIPForTransitionContext:v4];

  return v8;
}

- (id)requestInAppStatusBarHiddenAssertionForReason:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  objc_initWeak(&location, self);
  v7 = [SBInAppStatusBarHiddenAssertion alloc];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__SBSwitcherController_requestInAppStatusBarHiddenAssertionForReason_animated___block_invoke;
  v10[3] = &unk_2783B6538;
  objc_copyWeak(&v11, &location);
  v12 = v4;
  v8 = [(SBInAppStatusBarHiddenAssertion *)v7 initWithIdentifier:@"SBSwitcherController.HideStatusBar" forReason:v6 invalidationBlock:v10];
  [(SBSwitcherController *)self _addInAppStatusBarHiddenAssertion:v8 animated:v4];
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
  v3 = [(SBSwitcherController *)self _currentMainAppLayout];
  LOBYTE(contentViewController) = [(SBSwitcherContentViewControlling *)contentViewController isStatusBarHiddenForAppLayout:v3];

  return contentViewController;
}

- (CGRect)statusBarAvoidanceFrameForLayoutRole:(int64_t)a3
{
  v5 = [(SBSwitcherController *)self _currentLayoutState];
  [(SBSwitcherController *)self statusBarAvoidanceFrameForLayoutRole:a3 layoutState:v5];
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

- (CGRect)statusBarAvoidanceFrameForLayoutRole:(int64_t)a3 layoutState:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 == 3)
  {
    [v6 floatingAppLayout];
  }

  else
  {
    [v6 appLayout];
  }
  v8 = ;
  if ([v7 unlockedEnvironmentMode] == 3 && objc_msgSend(v7, "layoutContainsRole:", a3))
  {
    v9 = [v7 interfaceOrientationForLayoutRole:a3];
    v10 = [(SBSwitcherController *)self windowManagementContext];
    v11 = [v10 isChamoisOrFlexibleWindowing];

    if (v11)
    {
      v9 = [v7 interfaceOrientation];
    }

    [(SBSwitcherController *)self frameForItemWithRole:a3 inMainAppLayout:v8 interfaceOrientation:v9];
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
  v6 = [(SBSwitcherController *)self windowManagementContext];
  v7 = [v6 isMedusaEnabled];

  if (v7)
  {
    v8 = [(SBSwitcherController *)self _currentLayoutState];
    v9 = [(SBSwitcherController *)self _currentMainAppLayout];
    if ([(SBSwitcherController *)self unlockedEnvironmentMode]== 3)
    {
      WeakRetained = objc_loadWeakRetained(&self->_windowScene);
      v11 = [WeakRetained _fbsDisplayConfiguration];

      v12 = [v8 interfaceOrientation];
      v13 = [(SBSwitcherController *)self leadingStatusBarStyleRequest];
      v14 = [SBSceneLayoutCoordinateSpace coordinateSpaceForInterfaceOrientation:v12 withReferenceCoordinateSpace:self->_switcherWindow inOrientation:[(SBMainSwitcherWindow *)self->_switcherWindow interfaceOrientation]];
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
      v25 = v8;
      v36 = v25;
      v26 = v9;
      v37 = v26;
      v38 = self;
      v27 = v11;
      v39 = v27;
      v42 = v12;
      v28 = v13;
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
    v3 = [(SBSwitcherContentViewControlling *)self->_contentViewController leadingStatusBarStyleRequest];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)trailingStatusBarStyleRequest
{
  if ([(SBSwitcherController *)self unlockedEnvironmentMode]== 3)
  {
    v3 = [(SBSwitcherContentViewControlling *)self->_contentViewController trailingStatusBarStyleRequest];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CGRect)effectiveLeadingStatusBarPartFrame
{
  v2 = [(SBSwitcherController *)self contentViewController];
  [v2 effectiveLeadingStatusBarPartFrame];
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
  v2 = [(SBSwitcherController *)self contentViewController];
  [v2 effectiveTrailingStatusBarPartFrame];
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
    v3 = [(SBSwitcherController *)self _currentMainAppLayout];
    v4 = [v3 itemForLayoutRole:1];

    v5 = [(SBSwitcherController *)self _deviceApplicationSceneHandleForDisplayItem:v4];
    v6 = [v5 breadcrumbProvider];
    if ([v6 hasBreadcrumb])
    {
      v7 = [v5 overlayStatusBarData];
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

  return v7;
}

- (id)statusBarActionsByPartIdentifier
{
  v19[1] = *MEMORY[0x277D85DE8];
  if ([(SBSwitcherController *)self unlockedEnvironmentMode]== 3)
  {
    v3 = [(SBSwitcherController *)self _currentMainAppLayout];
    v4 = [v3 itemForLayoutRole:1];

    v5 = [(SBSwitcherController *)self _deviceApplicationSceneHandleForDisplayItem:v4];
    v6 = [v5 breadcrumbProvider];
    if ([v6 hasBreadcrumb])
    {
      v7 = *MEMORY[0x277D775A0];
      v17 = v6;
      v18 = v7;
      v8 = MEMORY[0x277D76290];
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __56__SBSwitcherController_statusBarActionsByPartIdentifier__block_invoke;
      v16 = &unk_2783B2BF8;
      v9 = v6;
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

- (void)_addInAppStatusBarHiddenAssertion:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  inAppStatusBarHiddenAssertions = self->_inAppStatusBarHiddenAssertions;
  v10 = v6;
  if (!inAppStatusBarHiddenAssertions)
  {
    v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v9 = self->_inAppStatusBarHiddenAssertions;
    self->_inAppStatusBarHiddenAssertions = v8;

    v6 = v10;
    inAppStatusBarHiddenAssertions = self->_inAppStatusBarHiddenAssertions;
  }

  [(NSHashTable *)inAppStatusBarHiddenAssertions addObject:v6];
  if ([(NSHashTable *)self->_inAppStatusBarHiddenAssertions count]== 1)
  {
    [(SBSwitcherContentViewControlling *)self->_contentViewController respondToInAppStatusBarRequestedHiddenUpdateAnimated:v4];
  }
}

- (void)_removeInAppStatusBarHiddenAssertion:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(NSHashTable *)self->_inAppStatusBarHiddenAssertions removeObject:a3];
  if (![(NSHashTable *)self->_inAppStatusBarHiddenAssertions count])
  {
    inAppStatusBarHiddenAssertions = self->_inAppStatusBarHiddenAssertions;
    self->_inAppStatusBarHiddenAssertions = 0;

    contentViewController = self->_contentViewController;

    [(SBSwitcherContentViewControlling *)contentViewController respondToInAppStatusBarRequestedHiddenUpdateAnimated:v4];
  }
}

- (id)coordinateSpaceForInterfaceOrientation:(int64_t)a3
{
  v4 = [(SBSwitcherController *)self switcherWindow];
  v5 = +[SBSceneLayoutCoordinateSpace coordinateSpaceForInterfaceOrientation:withReferenceCoordinateSpace:inOrientation:](SBSceneLayoutCoordinateSpace, "coordinateSpaceForInterfaceOrientation:withReferenceCoordinateSpace:inOrientation:", a3, v4, [v4 interfaceOrientation]);

  return v5;
}

- (id)coordinateSpaceForLayoutState:(id)a3
{
  v4 = [a3 interfaceOrientation];

  return [(SBSwitcherController *)self coordinateSpaceForInterfaceOrientation:v4];
}

- (id)coordinateSpaceForLayoutElement:(id)a3 layoutState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBSwitcherController *)self switcherWindow];
  v9 = [v7 appLayout];
  v10 = [v7 interfaceOrientationForLayoutElement:v6];
  v11 = [(SBSwitcherController *)self windowManagementContext];
  v12 = [v11 isChamoisOrFlexibleWindowing];

  if (v12)
  {
    v10 = [v7 interfaceOrientation];
  }

  -[SBSwitcherController referenceFrameForInterfaceOrientation:layoutRole:appLayout:](self, "referenceFrameForInterfaceOrientation:layoutRole:appLayout:", v10, [v6 layoutRole], v9);
  v13 = [SBSceneLayoutCoordinateSpace coordinateSpaceForFrame:v8 withinCoordinateSpace:?];
  v14 = +[SBSceneLayoutCoordinateSpace coordinateSpaceForInterfaceOrientation:withReferenceCoordinateSpace:inOrientation:](SBSceneLayoutCoordinateSpace, "coordinateSpaceForInterfaceOrientation:withReferenceCoordinateSpace:inOrientation:", v10, v13, [v8 interfaceOrientation]);

  return v14;
}

- (CGRect)frameForItemWithRole:(int64_t)a3 inMainAppLayout:(id)a4 interfaceOrientation:(int64_t)a5
{
  displayItemFrameCalculator = self->_displayItemFrameCalculator;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  [(SBDisplayItemLayoutAttributesCalculator *)displayItemFrameCalculator frameForLayoutRole:a3 inAppLayout:v9 containerOrientation:a5 windowScene:WeakRetained];
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

- (CGRect)frameForFloatingAppLayoutInInterfaceOrientation:(int64_t)a3 floatingConfiguration:(int64_t)a4
{
  displayItemFrameCalculator = self->_displayItemFrameCalculator;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  [(SBDisplayItemLayoutAttributesCalculator *)displayItemFrameCalculator frameForFloatingAppLayoutInInterfaceOrientation:a3 floatingConfiguration:a4 windowScene:WeakRetained];
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

- (CGRect)frameForCenterItemWithConfiguration:(int64_t)a3 interfaceOrientation:(int64_t)a4
{
  displayItemFrameCalculator = self->_displayItemFrameCalculator;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  [(SBDisplayItemLayoutAttributesCalculator *)displayItemFrameCalculator frameForCenterItemWithConfiguration:a3 interfaceOrientation:a4 windowScene:WeakRetained];
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

- (CGRect)containerBoundsForInterfaceOrientation:(int64_t)a3
{
  displayItemFrameCalculator = self->_displayItemFrameCalculator;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  [(SBDisplayItemLayoutAttributesCalculator *)displayItemFrameCalculator containerBoundsForWindowScene:WeakRetained containerOrientation:a3];
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

- (CGRect)referenceFrameForInterfaceOrientation:(int64_t)a3 layoutRole:(int64_t)a4 appLayout:(id)a5
{
  if (a3)
  {
    v8 = a5;
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v10 = [WeakRetained _fbsDisplayConfiguration];
    [v10 bounds];

    [(SBSwitcherController *)self frameForItemWithRole:a4 inMainAppLayout:v8 interfaceOrientation:a3];
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

- (CGRect)referenceFrameForInterfaceOrientation:(int64_t)a3 floatingConfiguration:(int64_t)a4
{
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v8 = [WeakRetained _fbsDisplayConfiguration];
    [v8 bounds];

    [(SBSwitcherController *)self frameForFloatingAppLayoutInInterfaceOrientation:a3 floatingConfiguration:a4];
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

- (CGRect)referenceFrameForInterfaceOrientation:(int64_t)a3 centerConfiguration:(int64_t)a4
{
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v8 = [WeakRetained _fbsDisplayConfiguration];
    [v8 bounds];

    [(SBSwitcherController *)self frameForCenterItemWithConfiguration:a4 interfaceOrientation:a3];
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

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4
{
  v143 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SBSwitcherController *)self switcherCoordinator];
  [v8 layoutStateTransitionCoordinator:v6 transitionDidBeginWithTransitionContext:v7];

  v9 = [(SBSwitcherController *)self windowManagementContext];
  v101 = [v9 isFlexibleWindowingEnabled];
  v110 = v9;
  v100 = [v9 isAutomaticStageCreationEnabled];
  v10 = [v7 applicationTransitionContext];
  v11 = [v10 request];
  v12 = [v7 toLayoutState];
  v13 = [v7 fromLayoutState];
  v111 = [v12 appLayout];
  obj = [v13 appLayout];
  v14 = [v12 unlockedEnvironmentMode];
  v15 = [v13 unlockedEnvironmentMode];
  if (v14 == 2)
  {
    v16 = v15;
    if (([v10 animationDisabled] & 1) == 0)
    {
      if (v16 != 2)
      {
        objc_storeStrong(&self->_activeAppLayoutWhenActivatingMainSwitcher, obj);
      }

      v17 = [v11 transientOverlayContext];
      v18 = v17;
      if (v17 && [v17 transitionType] == 1)
      {
        v19 = v10;
        v20 = [v18 transientOverlay];
        v21 = [(SBSwitcherController *)self appLayoutForWorkspaceTransientOverlay:v20];

        if (v21)
        {
          objc_storeStrong(&self->_activeAppLayoutWhenActivatingMainSwitcher, v21);
        }

        v10 = v19;
      }
    }
  }

  v109 = v10;
  v22 = [v10 coverSheetFlyInContext];
  v23 = v22;
  if (v22)
  {
    [v22 progress];
    self->_coverSheetFlyInProgress = v24;
  }

  v104 = v23;
  v25 = MEMORY[0x277CBEB58];
  v26 = [v13 elements];
  v27 = [v25 setWithSet:v26];

  v28 = [v12 elements];
  [v27 minusSet:v28];

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
  v35 = [v12 elements];
  v36 = [v34 setWithSet:v35];

  v37 = [v13 elements];
  [v36 minusSet:v37];

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

  v108 = v13;
  v106 = v11;

  [(SBSwitcherController *)self _reevaluateOrientationIfNecessary];
  self->_isPublishedOrientationLocked = self->_shouldLockPublishedOrientation;
  v105 = v7;
  v43 = [v7 toLayoutState];
  self->_canDetermineActiveOrientation = [v43 unlockedEnvironmentMode] != 1;

  [(TRAParticipant *)self->_publisherTraitsParticipant setNeedsUpdatePreferencesWithReason:@"Layout state change did begin"];
  v44 = [(SBSwitcherController *)self displayItemLayoutAttributesProvider];
  if (!v101)
  {
    slideOverDisplayItem = self->_slideOverDisplayItem;
    self->_slideOverDisplayItem = 0;
    v56 = v100;
    goto LABEL_53;
  }

  v45 = [v12 interfaceOrientation];
  if ((v45 - 1) < 2)
  {
    v46 = 1;
  }

  else
  {
    v46 = 2 * ((v45 - 3) < 2);
  }

  v47 = [v12 displayOrdinal];
  slideOverDisplayItem = [v108 appLayout];
  v49 = [v12 unlockedEnvironmentMode];
  if (v49 == 3 || v49 == 1 && SBPeekConfigurationIsValid([v12 peekConfiguration]))
  {
    v97 = v6;
    [v44 layoutAttributesMapForAppLayout:v111 displayOrdinal:v47 orientation:v46];
    v95 = v47;
    v51 = v50 = v46;
    v52 = [v12 elements];
    v53 = [v52 bs_compactMap:&__block_literal_global_215];

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
        v60 = [v44 layoutAttributesForDisplayItem:v59 inAppLayout:v111 displayOrdinal:objc_msgSend(v12 orientation:{"displayOrdinal"), v50}];
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

          [v44 updateLayoutAttributes:v62 ofDisplayItem:self->_slideOverDisplayItem displayOrdinal:v95 orientation:v50];
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

    v6 = v97;
    v56 = v100;
LABEL_49:

    goto LABEL_50;
  }

  v56 = v100;
  if ([v12 unlockedEnvironmentMode] == 1)
  {
    v57 = self->_slideOverDisplayItem;
    if (v57)
    {
      v54 = [v44 layoutAttributesForDisplayItem:v57 inAppLayout:slideOverDisplayItem displayOrdinal:v47 orientation:v46];
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

        [v44 updateLayoutAttributes:v58 ofDisplayItem:self->_slideOverDisplayItem displayOrdinal:v47 orientation:v98];
        v54 = v58;
      }

      goto LABEL_49;
    }
  }

LABEL_50:
  if (self->_slideOverDisplayItem)
  {
    v63 = [v109 entitiesWithRemovalContexts];
    v122[0] = MEMORY[0x277D85DD0];
    v122[1] = 3221225472;
    v122[2] = __97__SBSwitcherController_layoutStateTransitionCoordinator_transitionDidBeginWithTransitionContext___block_invoke_3;
    v122[3] = &unk_2783B65A8;
    v122[4] = self;
    v64 = [v63 bs_containsObjectPassingTest:v122];

    if (v64)
    {
      v65 = self->_slideOverDisplayItem;
      self->_slideOverDisplayItem = 0;
    }
  }

LABEL_53:

  if ([v12 unlockedEnvironmentMode] == 1)
  {
    if (SBPeekConfigurationIsValid([v12 peekConfiguration]))
    {
      v66 = [v12 appLayout];
      if ([v66 containsAnyItemFromSet:self->_desktopSpaceItems])
      {
        v67 = 1;
      }

      else
      {
        v67 = [v110 restoresPreviouslyOpenWindows];
      }
    }

    else
    {
      v67 = [v110 restoresPreviouslyOpenWindows];
    }
  }

  else
  {
    v67 = 1;
  }

  v68 = v109;
  if (v56 & 1 | ((v101 & 1) == 0) || !v67)
  {
    desktopSpaceItems = self->_desktopSpaceItems;
    self->_desktopSpaceItems = 0;
    goto LABEL_104;
  }

  v99 = v6;
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v69 = [v111 allItems];
  v70 = [v69 countByEnumeratingWithState:&v118 objects:v140 count:16];
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
        objc_enumerationMutation(v69);
      }

      v76 = *(*(&v118 + 1) + 8 * k);
      v77 = [v12 displayOrdinal];
      v78 = [v12 interfaceOrientation];
      if ((v78 - 1) < 2)
      {
        v79 = 1;
      }

      else
      {
        v79 = 2 * ((v78 - 3) < 2);
      }

      v80 = [v44 layoutAttributesForDisplayItem:v76 inAppLayout:v111 displayOrdinal:v77 orientation:v79];
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

    v72 = [v69 countByEnumeratingWithState:&v118 objects:v140 count:16];
  }

  while (v72);

  if (v73)
  {
    v81 = v73;
    v69 = self->_desktopSpaceItems;
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
  if ([v110 restoresPreviouslyOpenWindows] && objc_msgSend(v12, "unlockedEnvironmentMode") == 1 && !SBPeekConfigurationIsValid(objc_msgSend(v12, "peekConfiguration")) && SBPeekConfigurationIsValid(objc_msgSend(v108, "peekConfiguration")))
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
  v84 = [v68 entitiesWithRemovalContexts];
  v85 = [v84 countByEnumeratingWithState:&v114 objects:v139 count:16];
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
          objc_enumerationMutation(v84);
        }

        v89 = [*(*(&v114 + 1) + 8 * m) deviceApplicationSceneEntity];
        if (v89)
        {
          v90 = [SBDisplayItem displayItemForWorkspaceEntity:v89];
          [(NSMutableSet *)self->_desktopSpaceItems removeObject:v90];
        }
      }

      v86 = [v84 countByEnumeratingWithState:&v114 objects:v139 count:16];
    }

    while (v86);
  }

  v91 = self->_desktopSpaceItems;
  v68 = v109;
  v92 = [v109 itemsCrossingToOtherDisplay];
  [(NSMutableSet *)v91 minusSet:v92];

  v6 = v99;
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
      v93 = [v12 unlockedEnvironmentMode];
      LOBYTE(v94) = 0;
      if (v93 != 3 || !v111)
      {
        goto LABEL_115;
      }

      if ([obj containsAllItemsFromSet:self->_desktopSpaceItems])
      {
        v94 = [v111 containsAnyItemFromSet:self->_desktopSpaceItems] ^ 1;
LABEL_115:
        self->_restoreDesktopSpaceAfterClosingFullScreenSpace = v94;
        goto LABEL_116;
      }
    }

LABEL_114:
    LOBYTE(v94) = 0;
    goto LABEL_115;
  }

  if ([v12 unlockedEnvironmentMode] != 3 || objc_msgSend(v111, "containsAllItemsFromSet:", self->_desktopSpaceItems))
  {
    goto LABEL_114;
  }

LABEL_116:
  [(SBSwitcherContentViewControlling *)self->_contentViewController layoutStateTransitionCoordinator:v6 transitionDidBeginWithTransitionContext:v105];
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

- (void)layoutStateTransitionCoordinator:(id)a3 transitionWillEndWithTransitionContext:(id)a4
{
  v6 = a4;
  v8 = a3;
  v7 = [(SBSwitcherController *)self switcherCoordinator];
  [v7 layoutStateTransitionCoordinator:v8 transitionWillEndWithTransitionContext:v6];

  [(SBSwitcherContentViewControlling *)self->_contentViewController layoutStateTransitionCoordinator:v8 transitionWillEndWithTransitionContext:v6];
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4
{
  v34 = a3;
  v6 = a4;
  v7 = [(SBSwitcherController *)self switcherCoordinator];
  [v7 layoutStateTransitionCoordinator:v34 transitionDidEndWithTransitionContext:v6];

  if (self->_isPublishedOrientationLocked)
  {
    self->_isPublishedOrientationLocked = 0;
    [(TRAParticipant *)self->_publisherTraitsParticipant setNeedsUpdatePreferencesWithReason:@"publisher unlock"];
  }

  [(SBSwitcherContentViewControlling *)self->_contentViewController layoutStateTransitionCoordinator:v34 transitionDidEndWithTransitionContext:v6];
  v8 = [(SBSwitcherController *)self isAnySwitcherVisible];
  suppressHidingProtectedAppsAssertion = self->_suppressHidingProtectedAppsAssertion;
  if (v8)
  {
    if (suppressHidingProtectedAppsAssertion)
    {
      goto LABEL_8;
    }

    v10 = +[SBApplicationController sharedInstanceIfExists];
    v11 = [v10 _appProtectionCoordinator];
    v12 = MEMORY[0x277CCACA8];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v12 stringWithFormat:@"%@ - %p", v14, self];
    v16 = [v11 acquireSuppressHidingAppsAssertionForReason:v15];
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
  v18 = [(SBSwitcherController *)self windowManagementContext];
  v19 = [v18 isFlexibleWindowingEnabled];

  if (!v19)
  {
    lastFlexibleWindowingAppLayout = self->_lastFlexibleWindowingAppLayout;
    self->_lastFlexibleWindowingAppLayout = 0;
    goto LABEL_21;
  }

  v20 = [(NSMutableSet *)self->_desktopSpaceItems copy];
  previousDesktopSpaceItems = self->_previousDesktopSpaceItems;
  self->_previousDesktopSpaceItems = v20;

  lastFlexibleWindowingAppLayout = [(SBSwitcherController *)self layoutState];
  v23 = [lastFlexibleWindowingAppLayout appLayout];
  v24 = [v6 applicationTransitionContext];
  v25 = [v24 request];
  v26 = [v25 source];

  v27 = [v6 fromLayoutState];
  if ([lastFlexibleWindowingAppLayout unlockedEnvironmentMode] == 1 || objc_msgSend(v27, "unlockedEnvironmentMode") == 1 && !v23 || SBPeekConfigurationIsValid(objc_msgSend(lastFlexibleWindowingAppLayout, "peekConfiguration")))
  {
    if ([lastFlexibleWindowingAppLayout unlockedEnvironmentMode] != 1 || v26 > 0x33 || ((1 << v26) & 0xC000400000000) == 0)
    {
      goto LABEL_20;
    }

    v28 = self->_lastFlexibleWindowingAppLayout;
    self->_lastFlexibleWindowingAppLayout = 0;
  }

  else
  {
    v29 = v23;
    v28 = self->_lastFlexibleWindowingAppLayout;
    self->_lastFlexibleWindowingAppLayout = v29;
  }

LABEL_20:
LABEL_21:

  if (([(SBAppSwitcherDefaults *)self->_defaults hasEverUsedMultiAppConfiguration]& 1) != 0)
  {
    goto LABEL_28;
  }

  v30 = [(SBSwitcherController *)self layoutState];
  v31 = [v30 appLayout];
  v32 = [v31 allItems];
  if ([v32 count] >= 2)
  {
  }

  else
  {
    v33 = [v30 floatingAppLayout];

    if (!v33)
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
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(SBSwitcherController *)self _currentMainAppLayout];
  v5 = [v4 allItems];
  [v3 addObjectsFromArray:v5];

  v6 = [(SBSwitcherController *)self _currentFloatingAppLayout];
  v7 = [v6 allItems];
  [v3 addObjectsFromArray:v7];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v3;
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
        v13 = [*(*(&v17 + 1) + 8 * i) bundleIdentifier];
        v14 = [v12 applicationWithBundleIdentifier:v13];
        v15 = [v14 isHidden];

        if (v15)
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

- (BOOL)layoutContainsRole:(int64_t)a3
{
  v4 = [(SBSwitcherController *)self layoutState];
  LOBYTE(a3) = [v4 layoutContainsRole:a3];

  return a3;
}

- (id)layoutStateStudyLogData
{
  v34 = *MEMORY[0x277D85DE8];
  v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [(SBSwitcherController *)self layoutState];
  v4 = v3;
  if (v3)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [v3 elements];
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
          v9 = [v8 layoutRole];
          v10 = [v4 floatingConfiguration];
          if (v9 == 3)
          {
            v11 = v10;
            if (SBFloatingConfigurationIsStashed(v10) || !SBFloatingConfigurationIsValid(v11))
            {
              continue;
            }
          }

          v12 = [v8 workspaceEntity];
          v13 = [v12 applicationSceneEntity];
          [v13 sceneHandle];
          v15 = v14 = v4;
          v16 = [v15 application];
          v17 = [v16 bundleIdentifier];
          v18 = v17;
          if (v17)
          {
            v19 = v17;
          }

          else
          {
            v19 = @"Unknown";
          }

          v20 = SBLayoutRoleDescription(v9);
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

- (id)entityWithRole:(int64_t)a3
{
  v4 = [(SBSwitcherController *)self layoutState];
  v5 = [v4 elementWithRole:a3];
  v6 = [v5 workspaceEntity];

  return v6;
}

- (int64_t)floatingConfiguration
{
  v2 = [(SBSwitcherController *)self layoutState];
  v3 = [v2 floatingConfiguration];

  return v3;
}

- (id)activeAndVisibleSceneIdentifiersForApplication:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = [(SBSwitcherController *)self layoutState];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__SBSwitcherController_activeAndVisibleSceneIdentifiersForApplication___block_invoke;
  v13[3] = &unk_2783B5080;
  v14 = v6;
  v15 = v4;
  v7 = v5;
  v16 = v7;
  v8 = v4;
  v9 = v6;
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
  v3 = [(SBSwitcherController *)self switcherCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v5 = [v3 activeTransientOverlayPresentedAppLayoutForWindowScene:WeakRetained];

  return v5;
}

- (id)appLayoutForWorkspaceTransientOverlay:(id)a3
{
  v4 = a3;
  v5 = [(SBSwitcherController *)self switcherCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v7 = [v5 appLayoutForWorkspaceTransientOverlay:v4 windowScene:WeakRetained];

  return v7;
}

- (id)createWorkspaceTransientOverlayForAppLayout:(id)a3
{
  v4 = a3;
  v5 = [(SBSwitcherController *)self switcherCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v7 = [v5 createWorkspaceTransientOverlayForAppLayout:v4 windowScene:WeakRetained];

  return v7;
}

- (void)addAppLayoutForTransientOverlayViewController:(id)a3
{
  v4 = a3;
  v6 = [(SBSwitcherController *)self switcherCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  [v6 addAppLayoutForTransientOverlayViewController:v4 windowScene:WeakRetained];
}

- (BOOL)hasAppLayoutForTransientOverlayViewController:(id)a3
{
  v4 = a3;
  v5 = [(SBSwitcherController *)self switcherCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v7 = [v5 hasAppLayoutForTransientOverlayViewController:v4 windowScene:WeakRetained];

  return v7;
}

- (void)removeAppLayoutTransientOverlayViewController:(id)a3
{
  v4 = a3;
  v6 = [(SBSwitcherController *)self switcherCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  [v6 removeAppLayoutTransientOverlayViewController:v4 windowScene:WeakRetained];
}

- (BOOL)hasTransientOverlayAppLayouts
{
  v3 = [(SBSwitcherController *)self switcherCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v5 = [v3 hasTransientOverlayAppLayoutsForWindowScene:WeakRetained];

  return v5;
}

- (void)addAcquiredTransientOverlayViewController:(id)a3 forAppLayout:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(SBSwitcherController *)self switcherCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  [v9 addAcquiredTransientOverlayViewController:v7 forAppLayout:v6 windowScene:WeakRetained];
}

- (BOOL)isAcquiredTransientOverlayViewController:(id)a3
{
  v4 = a3;
  v5 = [(SBSwitcherController *)self switcherCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v7 = [v5 isAcquiredTransientOverlayViewController:v4 windowScene:WeakRetained];

  return v7;
}

- (void)removeAcquiredTransientOverlayViewController:(id)a3
{
  v4 = a3;
  v6 = [(SBSwitcherController *)self switcherCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  [v6 removeAcquiredTransientOverlayViewController:v4 windowScene:WeakRetained];
}

- (void)enumerateTransientOverlayViewControllersUsingBlock:(id)a3
{
  v4 = a3;
  v6 = [(SBSwitcherController *)self switcherCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  [v6 enumerateTransientOverlayViewControllersUsingBlock:v4 windowScene:WeakRetained];
}

- (BOOL)activateHomeScreenWithSource:(int64_t)a3 animated:(BOOL)a4
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__SBSwitcherController_activateHomeScreenWithSource_animated___block_invoke;
  v11[3] = &__block_descriptor_41_e42_v16__0__SBMainWorkspaceTransitionRequest_8l;
  v11[4] = a3;
  v12 = a4;
  v5 = MEMORY[0x223D6F7F0](v11, a2);
  v6 = +[SBWorkspace mainWorkspace];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v8 = [WeakRetained _fbsDisplayConfiguration];
  v9 = [v6 requestTransitionWithOptions:0 displayConfiguration:v8 builder:v5];

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

- (BOOL)activateMainSwitcherWithSource:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__SBSwitcherController_activateMainSwitcherWithSource_animated___block_invoke;
  v14[3] = &unk_2783B3F08;
  v14[4] = self;
  v14[5] = a3;
  v7 = MEMORY[0x223D6F7F0](v14, a2);
  v8 = [(SBSwitcherController *)self _makeWorkspaceTransitionValidatorForActivatingMainSwitcherWithSource:a3 animated:v4];
  v9 = +[SBWorkspace mainWorkspace];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v11 = [WeakRetained _fbsDisplayConfiguration];
  v12 = [v9 requestTransitionWithOptions:0 displayConfiguration:v11 builder:v7 validator:v8];

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

- (BOOL)cancelPeekWithSource:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(SBSwitcherController *)self windowManagementContext];
  v8 = [v7 isFlexibleWindowingEnabled];

  if (v8)
  {
    v9 = +[SBWorkspace mainWorkspace];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __54__SBSwitcherController_cancelPeekWithSource_animated___block_invoke;
    v12[3] = &__block_descriptor_41_e42_v16__0__SBMainWorkspaceTransitionRequest_8l;
    v13 = v4;
    v12[4] = a3;
    v10 = [v9 requestTransitionWithOptions:0 builder:v12 validator:0];

    return v10;
  }

  else
  {

    return [(SBSwitcherController *)self activateHomeScreenWithSource:a3 animated:v4];
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

- (BOOL)dismissMainSwitcherWithSource:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (([SBApp isRunningTest:@"AppSliderDismiss"] & 1) != 0 || (objc_msgSend(SBApp, "isRunningTest:", @"AppSliderDismissRotated") & 1) != 0 || (objc_msgSend(SBApp, "isRunningTest:", @"AppSliderDismissOverApp") & 1) != 0 || (objc_msgSend(SBApp, "isRunningTest:", @"AppSliderDismissOverAppRotated") & 1) != 0 || (objc_msgSend(SBApp, "isRunningTest:", @"AppSliderDismissOverAppInScreenTime") & 1) != 0 || objc_msgSend(SBApp, "isRunningTest:", @"AppSliderDismissOverAppInScreenTimeRotated"))
  {
    v7 = +[SBApplicationTestingManager sharedInstance];
    v8 = [v7 currentTestName];

    [*MEMORY[0x277D76620] startedSubTest:@"delay" forTest:v8];
  }

  v9 = [(SBSwitcherController *)self _makeWorkspaceTransitionValidatorForDismissingMainSwitcherToAppLayout:self->_activeAppLayoutWhenActivatingMainSwitcher dismissFloatingSwitcher:0 withSource:a3 animated:v4];
  v10 = +[SBWorkspace mainWorkspace];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v12 = [WeakRetained _fbsDisplayConfiguration];
  v13 = [v10 requestTransitionWithOptions:0 displayConfiguration:v12 builder:0 validator:v9];

  return v13;
}

- (BOOL)toggleMainSwitcherWithSource:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__SBSwitcherController_toggleMainSwitcherWithSource_animated___block_invoke;
  v14[3] = &unk_2783B3F08;
  v14[4] = self;
  v14[5] = a3;
  v7 = MEMORY[0x223D6F7F0](v14, a2);
  v8 = [(SBSwitcherController *)self _makeWorkspaceTransitionValidatorForTogglingMainSwitcherWithSource:a3 animated:v4];
  v9 = +[SBWorkspace mainWorkspace];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v11 = [WeakRetained _fbsDisplayConfiguration];
  v12 = [v9 requestTransitionWithOptions:0 displayConfiguration:v11 builder:v7 validator:v8];

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

- (BOOL)dismissMainAndFloatingSwitchersWithSource:(int64_t)a3 animated:(BOOL)a4
{
  v5 = [(SBSwitcherController *)self _makeWorkspaceTransitionValidatorForDismissingMainSwitcherToAppLayout:self->_activeAppLayoutWhenActivatingMainSwitcher dismissFloatingSwitcher:1 withSource:a3 animated:a4];
  v6 = +[SBWorkspace mainWorkspace];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v8 = [WeakRetained _fbsDisplayConfiguration];
  v9 = [v6 requestTransitionWithOptions:0 displayConfiguration:v8 builder:0 validator:v5];

  return v9;
}

- (void)configureRequest:(id)a3 forSwitcherTransitionRequest:(id)a4 withEventLabel:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SBSwitcherController *)self switcherCoordinator];
  [v11 _configureRequest:v10 forSwitcherTransitionRequest:v9 withEventLabel:v8];
}

- (void)performTransitionWithContext:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(SBSwitcherController *)self contentViewController];
  [v10 performTransitionWithContext:v9 animated:v5 completion:v8];
}

- (id)animationControllerForTransitionRequest:(id)a3
{
  v4 = a3;
  v5 = [(SBSwitcherController *)self switcherCoordinator];
  v6 = [v5 animationControllerForTransitionRequest:v4];

  return v6;
}

- (void)addAppLayoutForDisplayItem:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(SBSwitcherController *)self switcherCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  [v9 addAppLayoutForDisplayItem:v7 windowScene:WeakRetained completion:v6];
}

- (void)addCenterRoleAppLayoutForDisplayItem:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(SBSwitcherController *)self switcherCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  [v9 addCenterRoleAppLayoutForDisplayItem:v7 windowScene:WeakRetained completion:v6];
}

- (double)scaleForDownscaledSnapshotGenerationForSceneHandle:(id)a3
{
  v4 = a3;
  [(SBSwitcherController *)self _setUpSwitcherWindowIfNeeded];
  v5 = [(SBSwitcherController *)self contentViewController];
  [v5 snapshotScaleForSceneHandle:v4];
  v7 = v6;

  return v7;
}

- (id)maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:(id)a3 ignoreOcclusion:(BOOL)a4 ignoreCentering:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  contentViewController = self->_contentViewController;
  v8 = a3;
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

  v13 = [(SBSwitcherContentViewControlling *)v12 maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:v8 ignoreOcclusion:v6 ignoreCentering:v5];

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

- (void)_performSwitcherDropWithContext:(id)a3
{
  v4 = a3;
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
  v12 = v4;
  v13 = self;
  v10 = v4;
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

- (void)_noteSwitcherDropAnimationCompletedWithContext:(id)a3
{
  contentViewController = self->_contentViewController;
  v8 = a3;
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

  [(SBSwitcherContentViewControlling *)v7 _noteSwitcherDropAnimationCompletedWithContext:v8];
}

- (void)_presentMedusaEducationBanner
{
  v8 = [(SBSwitcherController *)self _currentLayoutState];
  IsValid = SBPeekConfigurationIsValid([v8 peekConfiguration]);
  v4 = [v8 appLayout];
  v5 = v4;
  if (IsValid)
  {
    v6 = [v4 itemForLayoutRole:1];
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  [(SBSwitcherController *)self _presentMedusaBanner:v7 fireInterval:0.7 dismissInterval:0.0];
}

- (void)_presentMedusaBanner:(int64_t)a3 fireInterval:(double)a4 dismissInterval:(double)a5
{
  v9 = [(SBSwitcherController *)self windowManagementContext];
  if ([v9 isFlexibleWindowingEnabled])
  {

    if (a3 < 2)
    {
      return;
    }
  }

  else
  {
  }

  v10 = [(SBSwitcherController *)self _currentLayoutState];
  objc_initWeak(&location, self);
  v11 = -[SBMedusaBannerViewController initWithType:orientation:peekConfiguration:]([SBMedusaBannerViewController alloc], "initWithType:orientation:peekConfiguration:", a3, [v10 interfaceOrientation], objc_msgSend(v10, "peekConfiguration"));
  medusaBannerViewController = self->_medusaBannerViewController;
  self->_medusaBannerViewController = v11;

  if (a5 > 0.0 && !self->_medusaBannerDismissTimer)
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
  v22[1] = *&a5;
  [(BSAbsoluteMachTimer *)v18 scheduleWithFireInterval:v19 leewayInterval:v21 queue:a4 handler:0.05];

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

  v7 = [SBApp bannerManager];
  v5 = [MEMORY[0x277CF0AC0] uniqueIdentificationForPresentable:self->_medusaBannerViewController];
  v6 = [v7 revokePresentablesWithIdentification:v5 reason:@"Dismiss Medusa Education Banner" options:0 userInfo:0 error:0];
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
  v4 = [(SBSwitcherContentViewControlling *)self->_contentViewController foregroundAppLayouts];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
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

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (char)_jetsamModeForScene:(id)a3
{
  v4 = [(SBSwitcherController *)self _appLayoutForScene:a3];
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

- (char)_activityModeForScene:(id)a3
{
  v4 = [(SBSwitcherController *)self _appLayoutForScene:a3];
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

  v7 = [(SBSwitcherContentViewControlling *)v6 windowingConfiguration];

  return v7;
}

- (id)_autoLayoutSpaceForAppLayout:(id)a3
{
  v4 = a3;
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
    v10 = [(SBSwitcherContentViewControlling *)v9 view];
    [v10 bounds];
    v45 = v12;
    v46 = v11;
    v43 = v14;
    v44 = v13;

    v15 = [(SBSwitcherController *)self windowScene];
    v16 = [(SBSwitcherController *)self _currentLayoutState];
    v42 = [v16 interfaceOrientation];
    v17 = [(SBSwitcherContentViewControlling *)v9 personality];
    [v17 leftStatusBarPartIntersectionRegion];
    v40 = v19;
    v41 = v18;
    v21 = v20;
    v23 = v22;
    [v17 rightStatusBarPartIntersectionRegion];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    displayItemFrameCalculator = self->_displayItemFrameCalculator;
    v33 = [v15 floatingDockController];
    [v33 floatingDockHeight];
    v35 = v34;
    v36 = [v15 screen];
    [v36 scale];
    v38 = -[SBDisplayItemLayoutAttributesCalculator flexibleWindowingAutoLayoutSpaceForAppLayout:containerOrientation:floatingDockHeight:screenScale:bounds:isEmbeddedDisplay:prefersStripHidden:prefersDockHidden:leftStatusBarPartIntersectionRegion:rightStatusBarPartIntersectionRegion:](displayItemFrameCalculator, "flexibleWindowingAutoLayoutSpaceForAppLayout:containerOrientation:floatingDockHeight:screenScale:bounds:isEmbeddedDisplay:prefersStripHidden:prefersDockHidden:leftStatusBarPartIntersectionRegion:rightStatusBarPartIntersectionRegion:", v4, v42, [v15 isExternalDisplayWindowScene] ^ 1, -[SBSwitcherContentViewControlling prefersStripHidden](v9, "prefersStripHidden"), -[SBSwitcherContentViewControlling prefersDockHidden](v9, "prefersDockHidden"), v35, v37, v46, v45, v44, v43, v41, v40, v21, v23, v25, v27, v29, v31);
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
  v3 = [(SBSwitcherController *)self _desktopSpaceItems];
  v4 = [(SBSwitcherController *)self _currentMainAppLayout];
  v5 = [v4 allItems];
  v6 = [v5 bs_set];

  v7 = [v6 setByAddingObjectsFromSet:v3];

  return v7;
}

- (void)_moveDisplayItemToSlideOver:(id)a3
{
  v8 = a3;
  v5 = [(SBSwitcherController *)self windowManagementContext];
  v6 = [v5 isFlexibleWindowingEnabled];

  if (v6)
  {
    slideOverDisplayItem = self->_slideOverDisplayItem;
    if (slideOverDisplayItem && ([(SBDisplayItem *)slideOverDisplayItem isEqualToItem:v8]& 1) == 0)
    {
      [(SBSwitcherController *)self _moveDisplayItemOutOfSlideOver:self->_slideOverDisplayItem];
    }

    objc_storeStrong(&self->_slideOverDisplayItem, a3);
  }
}

- (void)_moveDisplayItemOutOfSlideOver:(id)a3
{
  v4 = a3;
  v5 = [(SBSwitcherController *)self windowManagementContext];
  if (![v5 isFlexibleWindowingEnabled])
  {
LABEL_7:

    goto LABEL_8;
  }

  v6 = BSEqualObjects();

  if (v6)
  {
    v5 = [(SBSwitcherController *)self _currentLayoutState];
    v7 = [v5 appLayout];
    v8 = [v5 displayOrdinal];
    v9 = [v5 interfaceOrientation];
    if ((v9 - 1) < 2)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2 * ((v9 - 3) < 2);
    }

    v11 = [(SBSwitcherController *)self displayItemLayoutAttributesProvider];
    v12 = [v11 layoutAttributesForDisplayItem:self->_slideOverDisplayItem inAppLayout:v7 displayOrdinal:v8 orientation:v10];
    [(SBDisplayItemLayoutAttributes *)v12 slideOverConfiguration];
    SBInactiveDisplayItemSlideOverConfigurationFromSlideOverConfiguration(v15, v16);
    v13 = [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v12];

    [v11 updateLayoutAttributes:v13 ofDisplayItem:self->_slideOverDisplayItem displayOrdinal:v8 orientation:v10];
    slideOverDisplayItem = self->_slideOverDisplayItem;
    self->_slideOverDisplayItem = 0;

    goto LABEL_7;
  }

LABEL_8:
}

- (void)_initializeSlideOverDisplayItemIfNeededForcingStashed:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  v51 = *MEMORY[0x277D85DE8];
  v5 = [(SBSwitcherController *)self windowManagementContext];
  v6 = [v5 isFlexibleWindowingEnabled];

  if (v6)
  {
    v7 = [(SBSwitcherController *)v4 displayItemLayoutAttributesProvider];
    if (v7)
    {
      v8 = [(SBSwitcherController *)v4 layoutState];
      v9 = [v8 displayOrdinal];
      v28 = v8;
      v10 = v8;
      v11 = v9;
      v12 = [v10 interfaceOrientation];
      v45 = 0u;
      v46 = 0u;
      if ((v12 - 1) < 2)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2 * ((v12 - 3) < 2);
      }

      v47 = 0uLL;
      v48 = 0uLL;
      v14 = [(SBSwitcherController *)v4 switcherCoordinator];
      v15 = [v14 appLayoutsForSwitcherController:v4];

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
            v33 = [v18 allItems];
            v19 = [v33 countByEnumeratingWithState:&v41 objects:v49 count:16];
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
                    objc_enumerationMutation(v33);
                  }

                  v22 = *(*(&v41 + 1) + 8 * i);
                  v23 = [v7 layoutAttributesForDisplayItem:v22 inAppLayout:v35 displayOrdinal:v11 orientation:v13];
                  v40 = 0;
                  v38 = 0u;
                  v39 = 0u;
                  [(SBDisplayItemLayoutAttributes *)v23 slideOverConfiguration];
                  [(SBDisplayItemLayoutAttributes *)v23 slideOverConfiguration];
                  if (SBDisplayItemSlideOverConfigurationIsValid(v36))
                  {
                    if ((v16 & 1) == 0)
                    {
                      objc_storeStrong(&v4->_slideOverDisplayItem, v22);
                    }

                    if (v3)
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
                      v24 = v3;
                      v26 = v25 = v4;

                      [v7 updateLayoutAttributes:v26 ofDisplayItem:v22 displayOrdinal:v11 orientation:v13];
                      v23 = v26;
                      v4 = v25;
                      v3 = v24;
                    }

                    v16 = 1;
                  }

LABEL_23:
                }

                v20 = [v33 countByEnumeratingWithState:&v41 objects:v49 count:16];
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
    slideOverDisplayItem = v4->_slideOverDisplayItem;
    v4->_slideOverDisplayItem = 0;
  }
}

- (BOOL)_isDisplayItemFullScreen:(id)a3 preferredAttributes:(id)a4
{
  v50[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [(SBSwitcherController *)self _currentLayoutState];
    v10 = [v9 displayOrdinal];
    v11 = [(SBSwitcherController *)self displayItemLayoutAttributesProvider];
    v12 = [SBAppLayout alloc];
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    v49 = v13;
    v50[0] = v6;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    v15 = [(SBAppLayout *)v12 initWithItemsForLayoutRoles:v14 configuration:1 environment:1 preferredDisplayOrdinal:v10];
    v16 = [v9 interfaceOrientation];
    if ((v16 - 1) < 2)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2 * ((v16 - 3) < 2);
    }

    v8 = [v11 layoutAttributesForDisplayItem:v6 inAppLayout:v15 displayOrdinal:v10 orientation:v17];

    if (!v8)
    {
      v41 = [(SBSwitcherController *)self _appsLaunchFullScreenByDefault];
      goto LABEL_19;
    }
  }

  if (SBDisplayItemSizeIsUnspecified(v8))
  {
    v18 = [(SBSwitcherController *)self _currentLayoutState];
    displayItemFrameCalculator = self->_displayItemFrameCalculator;
    v19 = [SBAppLayout alloc];
    v44 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    v47 = v44;
    v48 = v6;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v21 = -[SBAppLayout initWithItemsForLayoutRoles:configuration:environment:preferredDisplayOrdinal:](v19, "initWithItemsForLayoutRoles:configuration:environment:preferredDisplayOrdinal:", v20, 1, 1, [v18 displayOrdinal]);
    v45 = v6;
    v46 = v8;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v23 = v22 = v6;
    v24 = [v18 interfaceOrientation];
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    [(SBDisplayItemLayoutAttributesCalculator *)displayItemFrameCalculator frameForLayoutRole:1 inAppLayout:v21 layoutAttributesMap:v23 containerOrientation:v24 windowScene:WeakRetained];
    v27 = v26;
    v29 = v28;

    v6 = v22;
  }

  else
  {
    v30 = self->_displayItemFrameCalculator;
    v18 = [(SBSwitcherController *)self _windowingConfiguration];
    [(SBDisplayItemLayoutAttributesCalculator *)v30 sizeForLayoutAttributes:v8 windowingConfiguration:v18];
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

  v38 = [(SBSwitcherContentViewControlling *)v37 view];

  [v38 bounds];
  v41 = v29 == v40 && v27 == v39;

LABEL_19:
  return v41;
}

- (SBDisplayItemAttributedSize)_centerWindowSizeForPreviousFullscreenWindow
{
  v21 = [(SBSwitcherController *)self _windowingConfiguration];
  [v21 containerBounds];
  v5 = v4;
  v7 = v6;
  [v21 floatingDockHeightWithTopAndBottomPadding];
  v9 = v7 - v8 * 2.0;
  [v21 stripWidth];
  v11 = v5 - v10 * 2.0;
  retstr->_private_opaqueSize = 0u;
  retstr->referenceBounds.origin = 0u;
  retstr->referenceBounds.size = 0u;
  retstr->semanticSizeType = 0;
  [v21 containerBounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [v21 defaultWindowSize];
  [v21 screenEdgePadding];
  SBDisplayItemAttributedSizeInfer(retstr, v11, v9, v13, v15, v17, v19);

  return result;
}

- (void)_noteAppLayoutMovedToFront:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_reentrantGuard_inNoteAppLayoutMovedToFront)
  {
    self->_reentrantGuard_inNoteAppLayoutMovedToFront = 1;
    WeakRetained = objc_loadWeakRetained(&self->_switcherCoordinator);
    if ([v4 type])
    {
      goto LABEL_39;
    }

    v6 = [WeakRetained switcherControllerForAppLayout:v4];

    if (v6 != self)
    {
      goto LABEL_39;
    }

    v7 = [(SBSwitcherController *)self _desktopSpaceItems];
    if (![v7 count] || (objc_msgSend(v4, "containsAllItemsFromSet:", v7) & 1) != 0)
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

    v12 = [WeakRetained _recentAppLayoutsController];
    v13 = [v12 recentsIncludingHiddenAppLayouts:0];

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
      if ([v4 isEqual:v19])
      {
        v17 = v16;
      }

      if ([v19 containsAllItemsFromSet:v7])
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
    v22 = v7;
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

    v30 = [(SBSwitcherContentViewControlling *)v32 delegate];
    [v30 switcherContentController:v32 bringAppLayoutToFront:v23];

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

  v7 = [(SBSwitcherContentViewControlling *)v6 personality];

  LOBYTE(v6) = [v7 homeScreenIsOnFirstPage];
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
    v7 = [(SBSwitcherContentViewControlling *)v6 windowingConfiguration];
    [v7 defaultWindowSize];
    v9 = v8;
    v11 = v10;

    v12 = [(SBSwitcherContentViewControlling *)v6 view];
    [v12 bounds];
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

- (id)_appLayoutForScene:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
  v5 = [(SBSwitcherController *)self switcherCoordinator];
  v6 = [v5 appLayoutsForSwitcherController:self];

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
      v11 = v4;
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

  v7 = [(SBSwitcherContentViewControlling *)v6 personality];

  [v7 leftStatusBarPartIntersectionRegion];
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

  v7 = [(SBSwitcherContentViewControlling *)v6 personality];

  [v7 rightStatusBarPartIntersectionRegion];
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

  v7 = [(SBSwitcherContentViewControlling *)v6 personality];

  LOBYTE(v6) = [v7 prefersStripHidden];
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

  v7 = [(SBSwitcherContentViewControlling *)v6 personality];

  LOBYTE(v6) = [v7 prefersDockHidden];
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

  v7 = [(SBSwitcherContentViewControlling *)v6 prefersStripHiddenAndDisabled];
  return v7;
}

- (BOOL)_isFloatingDockFullyPresented
{
  v2 = [(SBSwitcherController *)self windowScene];
  v3 = [v2 floatingDockController];
  v4 = [v3 isFloatingDockFullyPresented];

  return v4;
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

  v7 = [(SBSwitcherContentViewControlling *)v6 _areContinuousExposeStripsUnoccluded];
  return v7;
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

  v7 = [(SBSwitcherContentViewControlling *)v6 personality];

  v8 = [v7 windowingConfigurationForInterfaceOrientation:{objc_msgSend(v7, "switcherInterfaceOrientation")}];
  [v7 containerViewBounds];
  v10 = v9;
  v12 = v11;
  [v7 floatingDockHeight];
  v14 = v13;
  [v7 statusBarHeight];
  v16 = v15;
  [v8 stripWidth];
  v18 = v17;
  [v7 floatingDockViewTopMargin];
  v20 = v12 - v14 - v16 - v19;

  v21 = v10 - v18;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

- (id)_deviceApplicationSceneHandleForDisplayItem:(id)a3
{
  v4 = a3;
  v5 = [(SBSwitcherController *)self windowScene];
  v6 = [v5 sceneManager];

  v7 = +[SBApplicationController sharedInstance];
  v8 = [v7 applicationForDisplayItem:v4];

  if (!v8)
  {
    v10 = 0;
    goto LABEL_6;
  }

  v9 = [v4 uniqueIdentifier];
  v10 = [v6 sceneIdentityForApplication:v8 uniqueIdentifier:v9];

  if (!v10)
  {
LABEL_6:
    v12 = 0;
    goto LABEL_9;
  }

  v11 = [v6 existingSceneHandleForSceneIdentity:v10];
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
  v3 = [(SBSwitcherController *)self layoutStateApplicationSceneHandles];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) removeObserver:self];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)_ancillaryTransitionRequestForTransitionRequest:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v6 = [v4 displayIdentity];
  v7 = [WeakRetained _fbsDisplayIdentity];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) != 0 || (([v4 applicationContext], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "layoutState"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "elements"), v11 = objc_claimAutoreleasedReturnValue(), v10, v9, -[SBSwitcherController layoutState](self, "layoutState"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "elements"), v13 = objc_claimAutoreleasedReturnValue(), v30[0] = MEMORY[0x277D85DD0], v30[1] = 3221225472, v30[2] = __72__SBSwitcherController__ancillaryTransitionRequestForTransitionRequest___block_invoke, v30[3] = &unk_2783AC4F8, v14 = v11, v31 = v14, objc_msgSend(v13, "bs_filter:", v30), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "bs_map:", &__block_literal_global_272), v16 = objc_claimAutoreleasedReturnValue(), -[SBSwitcherController _desktopSpaceItems](self, "_desktopSpaceItems"), v17 = objc_claimAutoreleasedReturnValue(), v28[0] = MEMORY[0x277D85DD0], v28[1] = 3221225472, v28[2] = __72__SBSwitcherController__ancillaryTransitionRequestForTransitionRequest___block_invoke_4, v28[3] = &unk_2783A8C90, v18 = v16, v29 = v18, objc_msgSend(v17, "bs_filter:", v28), v19 = objc_claimAutoreleasedReturnValue(), v17, !objc_msgSend(v15, "count")) && !objc_msgSend(v19, "count") ? (v22 = 1) : (v20 = [SBMainWorkspaceTransitionRequest alloc], objc_msgSend(WeakRetained, "_fbsDisplayConfiguration"), v21 = objc_claimAutoreleasedReturnValue(), v16 = -[SBMainWorkspaceTransitionRequest initWithDisplayConfiguration:](v20, "initWithDisplayConfiguration:", v21), v21, -[SBMainWorkspaceTransitionRequest setSource:](v16, "setSource:", objc_msgSend(v4, "source")), v24[0] = MEMORY[0x277D85DD0], v24[1] = 3221225472, v24[2] = __72__SBSwitcherController__ancillaryTransitionRequestForTransitionRequest___block_invoke_5, v24[3] = &unk_2783B3D40, v25 = v12, v26 = v15, v27 = v19, -[SBWorkspaceTransitionRequest modifyApplicationContext:](v16, "modifyApplicationContext:", v24), v27, v26, v25, v22 = 0), v19, v29, v18, v15, v31, v13, v12, v14, v22))
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

- (void)_updateDisplayLayoutElementForLayoutState:(id)a3
{
  if ([a3 unlockedEnvironmentMode] == 2)
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

- (void)prepareForCoordinatedLayoutStateTransitionWithContext:(id)a3
{
  contentViewController = self->_contentViewController;
  v8 = a3;
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

  [(SBSwitcherContentViewControlling *)v7 prepareForCoordinatedLayoutStateTransitionWithContext:v8];
}

- (void)cleanUpAfterCoordinatedLayoutStateTransitionWithContext:(id)a3
{
  contentViewController = self->_contentViewController;
  v8 = a3;
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

  [(SBSwitcherContentViewControlling *)v7 cleanUpAfterCoordinatedLayoutStateTransitionWithContext:v8];
}

- (void)_requestDismissalForHomeScreenBackgroundTaps:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBSwitcherController *)self windowScene];
  v6 = [v5 homeScreenController];

  if (v3)
  {
    [v6 addEventObserver:self];
  }

  else
  {
    [v6 removeEventObserver:self];
  }
}

- (void)homeScreenControllerReceivedTouchInBackground:(id)a3
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

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  if ([a4 isEqual:@"switcherStyle"])
  {
    [(SBSwitcherController *)self dismissMainAndFloatingSwitchersWithSource:3 animated:1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__SBSwitcherController_settings_changedValueForKey___block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v5 = [(SBSwitcherController *)self contentViewController];
  [v5 setShowModifierTimeline:{-[SBAppSwitcherSettings showMainModifierTimeline](self->_settings, "showMainModifierTimeline")}];
}

- (void)client:(id)a3 attentionLostTimeoutDidExpire:(double)a4 forConfigurationGeneration:(unint64_t)a5 withAssociatedObject:(id)a6
{
  [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient setEnabled:0, a5, a6, a4];

  [(SBSwitcherController *)self _presentMedusaEducationBanner];
}

- (BOOL)handleHomeButtonPress
{
  v3 = [(SBSwitcherController *)self contentViewController];
  if ([v3 handleHomeButtonPress])
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

- (BOOL)handleHeadsetButtonPress:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBSwitcherController *)self contentViewController];
  LOBYTE(v3) = [v4 handleHeadsetButtonPress:v3];

  return v3;
}

- (BOOL)handleHomeButtonLongPress
{
  v2 = [(SBSwitcherController *)self contentViewController];
  v3 = [v2 handleHomeButtonLongPress];

  return v3;
}

- (BOOL)handleLockButtonPress
{
  v2 = [(SBSwitcherController *)self contentViewController];
  v3 = [v2 handleLockButtonPress];

  return v3;
}

- (BOOL)handleVoiceCommandButtonPress
{
  v2 = [(SBSwitcherController *)self contentViewController];
  v3 = [v2 handleVoiceCommandButtonPress];

  return v3;
}

- (BOOL)handleVolumeDownButtonPress
{
  v2 = [(SBSwitcherController *)self contentViewController];
  v3 = [v2 handleVolumeDownButtonPress];

  return v3;
}

- (BOOL)handleVolumeUpButtonPress
{
  v2 = [(SBSwitcherController *)self contentViewController];
  v3 = [v2 handleVolumeUpButtonPress];

  return v3;
}

- (void)updateDisplayLayoutElementWithBuilder:(id)a3
{
  if (self->_displayLayoutElementAssertion)
  {
    v4 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    if (!WeakRetained)
    {
      [SBSwitcherController updateDisplayLayoutElementWithBuilder:];
    }

    v13 = [WeakRetained displayLayoutPublisher];
    if (!v13)
    {
      [SBSwitcherController updateDisplayLayoutElementWithBuilder:];
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v13 transitionAssertionWithReason:v7];

    [(BSInvalidatable *)self->_displayLayoutElementAssertion invalidate];
    displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = 0;

    v4[2](v4, self->_displayLayoutElement);
    v10 = [v13 addElement:self->_displayLayoutElement];
    v11 = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = v10;

    [v8 invalidate];
  }

  else
  {
    v12 = *(a3 + 2);
    v13 = a3;
    v12();
  }
}

- (void)setDisplayLayoutElementActive:(BOOL)a3
{
  displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
  if (a3)
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

    v9 = [WeakRetained displayLayoutPublisher];
    if (!v9)
    {
      [SBSwitcherController setDisplayLayoutElementActive:];
    }

    v6 = [v9 addElement:self->_displayLayoutElement];
    v7 = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = v6;

    v8 = v9;
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

- (void)fluidSwitcherGestureManager:(id)a3 didBeginGesture:(id)a4
{
  v6 = a4;
  v7 = a3;
  v12 = [(SBSwitcherController *)self contentViewController];
  [v12 handleFluidSwitcherGestureManager:v7 didBeginGesture:v6];

  v8 = [(SBSwitcherController *)self windowScene];
  v9 = [v8 floatingDockController];
  v10 = [v9 remoteContentManager];
  [v10 closeFileStackIconIfNeeded];

  v11 = [v8 homeScreenController];
  [v11 dismissRemoteWallpaperEditorViewController];
}

- (void)fluidSwitcherGestureManager:(id)a3 didUpdateGesture:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBSwitcherController *)self contentViewController];
  [v8 handleFluidSwitcherGestureManager:v7 didUpdateGesture:v6];
}

- (void)fluidSwitcherGestureManager:(id)a3 didEndGesture:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBSwitcherController *)self contentViewController];
  [v8 handleFluidSwitcherGestureManager:v7 didEndGesture:v6];
}

- (void)fluidSwitcherGestureManager:(id)a3 clickReceivedForHomeGrabberView:(id)a4
{
  v10 = a4;
  v6 = a3;
  v7 = [(SBSwitcherController *)self gestureManager];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = [(SBSwitcherController *)self contentViewController];
    [v9 clickReceivedForHomeGrabberView:v10];
  }
}

- (void)fluidSwitcherGestureManager:(id)a3 tapReceivedForGrabberTongueAtEdge:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SBSwitcherController *)self gestureManager];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = [(SBSwitcherController *)self contentViewController];
    [v9 tapReceivedForGrabberTongueAtEdge:a4];
  }
}

- (CGRect)sceneEntityFrameForWorkspaceEntity:(id)a3 inLayoutState:(id)a4
{
  v69[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SBSwitcherController *)self switcherViewController];
  v9 = [v8 view];
  [v9 bounds];

  v60 = [v7 floatingConfiguration];
  v10 = [v6 applicationSceneEntity];
  v11 = [v10 sceneHandle];
  v12 = [(SBSwitcherController *)self interfaceOrientationForSceneHandle:v11];

  v13 = [(SBSwitcherController *)self windowManagementContext];
  LODWORD(v11) = [v13 isChamoisOrFlexibleWindowing];

  if (v11)
  {
    v61 = [v7 interfaceOrientation];
  }

  else
  {
    v61 = v12;
  }

  v14 = [v6 layoutRole];
  v15 = [v7 appLayout];
  v16 = v15;
  if (v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = 1;
  }

  if (!v15)
  {
    v18 = [v6 displayItemRepresentation];
    v19 = [SBAppLayout alloc];
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    v68 = v20;
    v69[0] = v18;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:&v68 count:1];
    v16 = -[SBAppLayout initWithItemsForLayoutRoles:configuration:environment:preferredDisplayOrdinal:](v19, "initWithItemsForLayoutRoles:configuration:environment:preferredDisplayOrdinal:", v21, 1, 1, [v7 displayOrdinal]);
  }

  v22 = [(SBSwitcherController *)self switcherCoordinator];
  v23 = [v22 currentCoordinatedLayoutStateTransitionContext];

  v24 = [v6 displayItemRepresentation];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  if (v23 && [v23 isDisplayItemTransitioning:v24])
  {
    v26 = WeakRetained;
    v27 = [v23 fromSwitcherController];
    v28 = [(SBSwitcherController *)self isEqual:v27];

    if (v28)
    {
      [v23 toFrameInFromSwitcherForDisplayItem:v24];
    }

    v29 = [v23 toSwitcherController];
    v30 = [(SBSwitcherController *)self isEqual:v29];

    if (v30)
    {
      [v23 toFrameInToSwitcherForDisplayItem:v24];
    }

    v31 = [v26 _fbsDisplayConfiguration];
    [v31 bounds];

    WeakRetained = v26;
    _UIWindowConvertRectFromOrientationToOrientation();
  }

  else
  {
    v36 = [v7 peekConfiguration];
    if (SBPeekConfigurationIsValid(v36))
    {
      v58 = WeakRetained;
      v59 = v24;
      v37 = v8;
      v38 = [(SBAppLayout *)v16 itemForLayoutRole:2];

      if (!v38)
      {
        v39 = [v7 spaceConfiguration];
        v40 = 2;
        v41 = 4;
        if (v39 != 2)
        {
          v41 = v39;
        }

        if (v39 != 4)
        {
          v40 = v41;
        }

        if (v36 == 3)
        {
          v42 = v40;
        }

        else
        {
          v42 = v39;
        }

        v43 = [SBDisplayItem displayItemWithType:0 bundleIdentifier:@"com.apple.springboard.PeekPlacholderItem" uniqueIdentifier:@"com.apple.springboard.PeekPlacholderItem.1"];
        v44 = [(SBAppLayout *)v16 appLayoutByInsertingItem:v43 inLayoutRole:2];

        v16 = [v44 appLayoutByModifyingConfiguration:SBAppLayoutConfigurationFromMainDisplayLayoutStateSpaceConfiguration(v42)];
      }

      v8 = v37;
      WeakRetained = v58;
      v24 = v59;
    }

    if (v17 == 3)
    {
      [(SBSwitcherController *)self referenceFrameForInterfaceOrientation:v61 floatingConfiguration:v60];
    }

    else if (v17 == 4)
    {
      -[SBSwitcherController referenceFrameForInterfaceOrientation:centerConfiguration:](self, "referenceFrameForInterfaceOrientation:centerConfiguration:", v61, [v7 centerConfiguration]);
    }

    else
    {
      [(SBSwitcherController *)self referenceFrameForInterfaceOrientation:v61 layoutRole:v17 appLayout:v16];
    }
  }

  v45 = v32;
  v46 = v33;
  v47 = v34;
  v48 = v35;
  if (v34 == *MEMORY[0x277CBF3A8] && v35 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v49 = v24;
    v50 = v8;
    v51 = SBLogAppSwitcher();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      [WeakRetained _fbsDisplayIdentity];
      v57 = v56 = WeakRetained;
      *buf = 138543874;
      v63 = v6;
      v64 = 2114;
      v65 = v16;
      v66 = 2114;
      v67 = v57;
      _os_log_error_impl(&dword_21ED4E000, v51, OS_LOG_TYPE_ERROR, "produced {0,0} with entity %{public}@, appLayout %{public}@ windowScene displayIdentity %{public}@", buf, 0x20u);

      WeakRetained = v56;
    }

    v8 = v50;
    v24 = v49;
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

- (void)updateWindowVisibilityForSwitcherContentController:(id)a3
{
  v10 = a3;
  v4 = [(SBSwitcherController *)self contentViewController];

  v5 = v10;
  if (v4 == v10)
  {
    v6 = [(SBSwitcherController *)self _isUnderUILock];
    v7 = [v10 isWindowVisible] ^ 1 | v6;
    v8 = [(SBSwitcherController *)self switcherWindow];
    v9 = [(SBSwitcherController *)self switcherViewController];
    if ((v7 & 1) != [v8 isHidden])
    {
      if ((v7 & 1) == 0)
      {
        [v8 makeKeyAndVisible];
      }

      [v8 setHidden:v7 & 1];
      [v9 bs_endAppearanceTransition:(v7 & 1) == 0];
      [(TRAParticipant *)self->_traitsParticipant setNeedsUpdatePreferencesWithReason:@"Window visibility change"];
      [(TRAParticipant *)self->_publisherTraitsParticipant setNeedsUpdatePreferencesWithReason:@"Window visibility change"];
    }

    v5 = v10;
  }
}

- (void)viewDidLoadForSwitcherViewController:(id)a3
{
  v4 = [(SBSwitcherController *)self switcherCoordinator];
  [v4 switcherControllerViewDidLoad:self];

  [(SBSwitcherController *)self _updateContentViewControllerIfNeeded];
  v5 = [(SBSwitcherController *)self _currentLayoutState];
  -[SBSwitcherController _updateContentViewInterfaceOrientation:](self, "_updateContentViewInterfaceOrientation:", [v5 interfaceOrientation]);
}

- (void)viewWillAppearForSwitcherViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(SBSwitcherController *)self switcherCoordinator];
  [v6 switcherControllerViewWillAppear:self animated:v4];
}

- (int64_t)overrideInterfaceOrientationMechanicsForSwitcherViewController:(id)a3
{
  v3 = [(SBSwitcherController *)self contentViewController];
  v4 = [v3 dataSource];
  v5 = [v4 switcherInterfaceOrientationForSwitcherContentController:v3];

  return v5;
}

- (BOOL)isMenuBarSupported
{
  v2 = [(SBSwitcherController *)self contentViewController];
  v3 = [v2 canShowMenuBar];

  return v3;
}

- (id)menuBarRecipientScene
{
  v3 = [(SBSwitcherController *)self contentViewController];
  v4 = [v3 canShowMenuBar];

  if (v4)
  {
    v5 = [(SBSwitcherController *)self _currentMainAppLayout];
    v6 = [(SBSwitcherController *)self displayItemLayoutAttributesProvider];
    v7 = [v5 preferredDisplayOrdinal];
    v8 = [(SBSwitcherController *)self interfaceOrientation];
    if ((v8 - 1) < 2)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2 * ((v8 - 3) < 2);
    }

    v10 = [v6 layoutAttributesMapForAppLayout:v5 displayOrdinal:v7 orientation:v9];

    v11 = [v10 allKeys];
    v12 = SBDisplayItemDescendingInteractionTimeComparator(v10);
    v13 = [v11 sortedArrayUsingComparator:v12];

    v14 = [v13 firstObject];
    v15 = [(SBSwitcherController *)self _deviceApplicationSceneHandleForDisplayItem:v14];

    if (v15)
    {
      v16 = [v15 sceneIfExists];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)isStatusBarStyleControlledBySystem
{
  v2 = [(SBSwitcherController *)self contentViewController];
  v3 = [v2 isStatusBarStyleControlledBySystem];

  return v3;
}

- (BOOL)shouldProtectTopScreenEdgeForScene:(id)a3
{
  v4 = a3;
  v5 = [(SBSwitcherController *)self _currentMainAppLayout];
  v6 = [(SBSwitcherController *)self maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:v5 ignoreOcclusion:1 ignoreCentering:0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__SBSwitcherController_shouldProtectTopScreenEdgeForScene___block_invoke;
  v10[3] = &unk_2783A8C90;
  v11 = v4;
  v7 = v4;
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
  v2 = [(SBSwitcherController *)self contentViewController];
  v3 = [v2 leadingStatusBarStyleRequest];

  return v3;
}

- (id)appTrailingStatusBarStyleRequest
{
  v2 = [(SBSwitcherController *)self contentViewController];
  v3 = [v2 trailingStatusBarStyleRequest];

  return v3;
}

- (BOOL)isLeadingStatusBarRegionPreferredHiddenByApp
{
  v2 = [(SBSwitcherController *)self contentViewController];
  v3 = [v2 isStatusBarPartPreferredHiddenByApp:2];

  return v3;
}

- (BOOL)isTrailingStatusBarRegionPreferredHiddenByApp
{
  v2 = [(SBSwitcherController *)self contentViewController];
  v3 = [v2 isStatusBarPartPreferredHiddenByApp:8];

  return v3;
}

- (id)statusBarStyleAttributesForScene:(id)a3
{
  v4 = a3;
  v5 = [(SBSwitcherController *)self contentViewController];
  v6 = [v5 statusBarStyleAttributesForScene:v4];

  return v6;
}

- (id)windowArrangementMenuWithOptions:(unint64_t)a3
{
  v4 = [(SBSwitcherController *)self _buildWindowArrangementMenuForKeyCommandRegistration:0 additionalOptions:a3];
  v5 = [MEMORY[0x277D75710] menuWithTitle:&stru_283094718 image:0 identifier:0 options:a3 | 1 children:v4];

  return v5;
}

- (id)hideMenuWithOptions:(unint64_t)a3
{
  v4 = [(SBSwitcherController *)self _buildHideMenuWithAdditionalOptions:?];
  v5 = [MEMORY[0x277D75710] menuWithTitle:&stru_283094718 image:0 identifier:0 options:a3 | 1 children:v4];

  return v5;
}

- (id)displayItemLayoutAttributesForScene:(id)a3
{
  v4 = a3;
  v5 = [(SBSwitcherController *)self _currentMainAppLayout];
  v6 = [(SBSwitcherController *)self displayItemLayoutAttributesProvider];
  v7 = [v5 preferredDisplayOrdinal];
  v8 = [(SBSwitcherController *)self interfaceOrientation];
  if ((v8 - 1) < 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * ((v8 - 3) < 2);
  }

  v10 = [v6 layoutAttributesMapForAppLayout:v5 displayOrdinal:v7 orientation:v9];

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
  v11 = v4;
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

- (void)applyDemoLayoutAttributesToScene:(id)a3
{
  contentViewController = self->_contentViewController;
  v4 = [a3 identifier];
  [(SBSwitcherContentViewControlling *)contentViewController performSwitcherShortcutAction:36 forSceneIdentifier:v4];
}

- (void)demoMinimizeScene:(id)a3
{
  contentViewController = self->_contentViewController;
  v4 = [a3 identifier];
  [(SBSwitcherContentViewControlling *)contentViewController performSwitcherShortcutAction:4 forSceneIdentifier:v4];
}

- (id)windowControlsViewController
{
  v3 = [(SBSwitcherController *)self _currentMainAppLayout];
  v4 = [(SBSwitcherController *)self _topmostDisplayItem];
  v5 = [v3 leafAppLayoutForItem:v4];
  v6 = objc_opt_class();
  v7 = SBSafeCast(v6, self->_contentViewController);
  v8 = [v7 personality];
  if (v8)
  {
    v9 = v8;
    [v8 windowControlsLayoutForLeafAppLayout:v5];

    if (v14 == 1)
    {
      v10 = [v7 personality];
      v11 = [v10 topAffordanceOptionsMaskForLeafAppLayout:v5];

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

- (double)windowControlsHorizontalSafeAreaPaddingForScene:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v33 = a3;
  v35 = self;
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
  v9 = [(SBSwitcherContentViewControlling *)v8 personality];
  v10 = [v9 hiddenContainerStatusBarParts];

  v11 = 0.0;
  if ((v10 & 2) != 0)
  {
    v12 = [(SBSwitcherController *)v35 _currentMainAppLayout];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v13 = [v12 leafAppLayouts];
    v14 = [v13 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v14)
    {
      v15 = v14;
      v29 = v12;
      v31 = 0;
      v34 = *v38;
      obj = v13;
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
          v19 = [(SBSwitcherController *)v35 _deviceApplicationSceneHandleForDisplayItem:v18];
          if (v19)
          {
            v36 = 0u;
            v20 = [(SBSwitcherContentViewControlling *)v32 personality];
            v21 = v20;
            if (v20)
            {
              [v20 windowControlsLayoutForLeafAppLayout:v17];
            }

            else
            {
              v36 = 0u;
            }

            v22 = [v19 statusBarParts];
            v23 = [v18 uniqueIdentifier];
            v24 = [v33 identifier];
            v25 = [v23 isEqualToString:v24];

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
                v27 = v22 | v31;
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

- (id)_buildWindowArrangementMenuForKeyCommandRegistration:(BOOL)a3 additionalOptions:(unint64_t)a4
{
  v4 = a3;
  v291[1] = *MEMORY[0x277D85DE8];
  v260 = [MEMORY[0x277CBEB18] array];
  v264 = [MEMORY[0x277CBEB18] array];
  v258 = [MEMORY[0x277CBEB18] array];
  v257 = [MEMORY[0x277CBEB18] array];
  v256 = [MEMORY[0x277CBEB18] array];
  v252 = [MEMORY[0x277CBEB18] array];
  v6 = [(SBSwitcherController *)self windowManagementContext];
  v261 = [v6 isFlexibleWindowingEnabled];

  v7 = [(SBSwitcherController *)self menuBarRecipientScene];
  v253 = v4;
  v255 = v7;
  if (v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v7 identifier];
  }

  v9 = MEMORY[0x277D75378];
  v10 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [v10 localizedStringForKey:@"CLOSE_ALL_WINDOW_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
  v12 = [v9 alternateWithTitle:v11 action:sel__handleCloseAllWindowsShortcut_ modifierFlags:0x80000];

  v13 = MEMORY[0x277D75650];
  v14 = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [v14 localizedStringForKey:@"CLOSE_WINDOW_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
  v16 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark"];
  v249 = v12;
  v291[0] = v12;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v291 count:1];
  v18 = [v13 commandWithTitle:v15 image:v16 action:sel__handleCloseWindowShortcut_ input:@"w" modifierFlags:0x100000 propertyList:v8 alternates:v17];
  v19 = [v18 _allowGlobeModifierKeyCommand];

  [v19 setRepeatBehavior:2];
  v248 = v19;
  [v264 addObject:v19];
  v20 = MEMORY[0x277D75650];
  v21 = [MEMORY[0x277CCA8D8] mainBundle];
  v22 = [v21 localizedStringForKey:@"REMOVE_WINDOW_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
  v23 = [MEMORY[0x277D755B8] systemImageNamed:@"minus.rectangle"];
  v24 = [v20 commandWithTitle:v22 image:v23 action:sel__handleRemoveWindowFromSetShortcut_ input:@"m" modifierFlags:0x100000 propertyList:v8];
  v25 = [v24 _allowGlobeModifierKeyCommand];

  [v25 setRepeatBehavior:2];
  [v260 addObject:v25];
  if (v8)
  {
    v26 = v261;
  }

  else
  {
    v26 = 0;
  }

  v247 = v26;
  v27 = v8;
  if (v26 == 1 && (-[SBSwitcherController _currentMainAppLayout](self, "_currentMainAppLayout"), v28 = objc_claimAutoreleasedReturnValue(), -[SBSwitcherController maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:ignoreOcclusion:ignoreCentering:](self, "maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:ignoreOcclusion:ignoreCentering:", v28, 1, 0), v29 = objc_claimAutoreleasedReturnValue(), v281[0] = MEMORY[0x277D85DD0], v281[1] = 3221225472, v281[2] = __95__SBSwitcherController__buildWindowArrangementMenuForKeyCommandRegistration_additionalOptions___block_invoke, v281[3] = &unk_2783A8C90, v238 = &v282, v282 = v8, v30 = [v29 bs_containsObjectPassingTest:v281], v29, v28, (v30 & 1) != 0))
  {
    v31 = v260;
    v32 = @"EXIT_FULL_SCREEN_DISCOVERABILITY";
    v33 = @"arrow.down.forward.and.arrow.up.backward.rectangle";
  }

  else
  {
    v31 = v260;
    v32 = @"ENTER_FULL_SCREEN_DISCOVERABILITY";
    v33 = @"arrow.up.backward.and.arrow.down.forward.rectangle";
  }

  v34 = [MEMORY[0x277D755B8] systemImageNamed:v33];
  v35 = MEMORY[0x277D75650];
  v36 = [MEMORY[0x277CCA8D8] mainBundle];
  v37 = [v36 localizedStringForKey:v32 value:&stru_283094718 table:@"SpringBoard"];
  v246 = v34;
  v38 = [v35 commandWithTitle:v37 image:v34 action:sel__handleToggleFullScreenKeyShortcut_ input:@"f" modifierFlags:0x800000 propertyList:v27];
  v39 = [v38 _allowGlobeModifierKeyCommand];

  [v39 setRepeatBehavior:2];
  v40 = v31;
  [v31 addObject:v39];
  v251 = v25;
  [v264 addObject:v25];
  v245 = v39;
  [v264 addObject:v39];
  v41 = MEMORY[0x277D75650];
  v42 = [MEMORY[0x277CCA8D8] mainBundle];
  v43 = [v42 localizedStringForKey:@"MOVE_TO_OTHER_DISPLAY_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
  v44 = [MEMORY[0x277D755B8] systemImageNamed:@"display"];
  v45 = [v41 commandWithTitle:v43 image:v44 action:sel__handleMoveToOtherDisplayKeyShortcut_ input:@"\\"" modifierFlags:8650752 propertyList:v27];
  v46 = [v45 _allowGlobeModifierKeyCommand];

  [v46 setRepeatBehavior:2];
  [v31 addObject:v46];
  v47 = MEMORY[0x277D75650];
  v48 = SBHBundle();
  v49 = [v48 localizedStringForKey:@"SHOW_ALL_WINDOWS_SHORTCUT_ITEM_TITLE" value:&stru_283094718 table:@"SpringBoardHome"];
  v50 = [MEMORY[0x277D755B8] systemImageNamed:@"rectangle.grid.2x2"];
  v51 = *MEMORY[0x277D76AC0];
  v259 = v27;
  v52 = v27;
  v53 = v40;
  v54 = [v47 commandWithTitle:v49 image:v50 action:sel__handleActivateAppExposeKeyShortcut_ input:*MEMORY[0x277D76AC0] modifierFlags:0x800000 propertyList:v52];
  v55 = [v54 _allowGlobeModifierKeyCommand];

  [v55 setRepeatBehavior:2];
  v250 = v55;
  [v53 addObject:v55];
  if (v261)
  {
    v243 = v46;
    v56 = MEMORY[0x277D75650];
    v57 = [MEMORY[0x277CCA8D8] mainBundle];
    v240 = v51;
    v58 = [v57 localizedStringForKey:@"CENTER_DISCOVERABILITY" value:? table:?];
    v59 = [MEMORY[0x277D755B8] systemImageNamed:@"inset.filled.center.rectangle"];
    v60 = [v56 commandWithTitle:v58 image:v59 action:sel__handleCenterCommand_ input:@"c" modifierFlags:8650752 propertyList:v259];
    v61 = [v60 _allowGlobeModifierKeyCommand];

    v231 = v61;
    [v61 setRepeatBehavior:2];
    v62 = MEMORY[0x277D75650];
    v63 = [MEMORY[0x277CCA8D8] mainBundle];
    v64 = [v63 localizedStringForKey:@"TILE_LEFT_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
    v65 = [MEMORY[0x277D755B8] systemImageNamed:@"inset.filled.lefthalf.rectangle"];
    v236 = *MEMORY[0x277D76B48];
    v66 = [v62 commandWithTitle:v64 image:v65 action:sel__handleTileLeftCommand_ input:? modifierFlags:? propertyList:?];
    v67 = [v66 _allowGlobeModifierKeyCommand];

    v230 = v67;
    [v67 setRepeatBehavior:2];
    v68 = MEMORY[0x277D75650];
    v69 = [MEMORY[0x277CCA8D8] mainBundle];
    v70 = [v69 localizedStringForKey:@"TILE_RIGHT_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
    v71 = [MEMORY[0x277D755B8] systemImageNamed:@"inset.filled.righthalf.rectangle"];
    v234 = *MEMORY[0x277D76B60];
    v72 = [v68 commandWithTitle:v70 image:v71 action:sel__handleTileRightCommand_ input:? modifierFlags:? propertyList:?];
    v73 = [v72 _allowGlobeModifierKeyCommand];

    v229 = v73;
    [v73 setRepeatBehavior:2];
    v74 = MEMORY[0x277D75650];
    v75 = [MEMORY[0x277CCA8D8] mainBundle];
    v76 = [v75 localizedStringForKey:@"TILE_UP_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
    v77 = [MEMORY[0x277D755B8] systemImageNamed:@"inset.filled.tophalf.rectangle"];
    v232 = *MEMORY[0x277D76B68];
    v78 = [v74 commandWithTitle:v76 image:v77 action:sel__handleTileTopCommand_ input:? modifierFlags:? propertyList:?];
    v79 = [v78 _allowGlobeModifierKeyCommand];

    v228 = v79;
    [v79 setRepeatBehavior:2];
    v80 = MEMORY[0x277D75650];
    v81 = [MEMORY[0x277CCA8D8] mainBundle];
    v82 = [v81 localizedStringForKey:@"TILE_DOWN_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
    v83 = [MEMORY[0x277D755B8] systemImageNamed:@"inset.filled.bottomhalf.rectangle"];
    v84 = [v80 commandWithTitle:v82 image:v83 action:sel__handleTileBottomCommand_ input:v240 modifierFlags:8650752 propertyList:v259];
    v85 = [v84 _allowGlobeModifierKeyCommand];

    v227 = v85;
    [v85 setRepeatBehavior:2];
    v86 = MEMORY[0x277D75650];
    v87 = [MEMORY[0x277CCA8D8] mainBundle];
    v88 = [v87 localizedStringForKey:@"ARRANGE_LEFT_RIGHT_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
    v89 = [MEMORY[0x277D755B8] systemImageNamed:@"inset.filled.lefthalf.righthalf.rectangle"];
    v90 = [v86 commandWithTitle:v88 image:v89 action:sel__handleArrangeLeftAndRightCommand_ input:v236 modifierFlags:8781824 propertyList:v259];
    v91 = [v90 _allowGlobeModifierKeyCommand];

    v226 = v91;
    [v91 setRepeatBehavior:2];
    v92 = MEMORY[0x277D75650];
    v93 = [MEMORY[0x277CCA8D8] mainBundle];
    v94 = [v93 localizedStringForKey:@"ARRANGE_RIGHT_LEFT_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
    v95 = [MEMORY[0x277D755B8] systemImageNamed:@"inset.filled.righthalf.lefthalf.rectangle"];
    v96 = [v92 commandWithTitle:v94 image:v95 action:sel__handleArrangeRightAndLeftCommand_ input:v234 modifierFlags:8781824 propertyList:v259];
    v97 = [v96 _allowGlobeModifierKeyCommand];

    v242 = v97;
    [v97 setRepeatBehavior:2];
    v98 = MEMORY[0x277D75650];
    v99 = [MEMORY[0x277CCA8D8] mainBundle];
    v100 = [v99 localizedStringForKey:@"ARRANGE_TOP_BOTTOM_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
    v101 = [MEMORY[0x277D755B8] systemImageNamed:@"inset.filled.tophalf.bottomhalf.rectangle"];
    v102 = [v98 commandWithTitle:v100 image:v101 action:sel__handleArrangeTopAndBottomCommand_ input:v232 modifierFlags:8781824 propertyList:v259];
    v103 = [v102 _allowGlobeModifierKeyCommand];

    v225 = v103;
    [v103 setRepeatBehavior:2];
    v104 = MEMORY[0x277D75650];
    v105 = [MEMORY[0x277CCA8D8] mainBundle];
    v106 = [v105 localizedStringForKey:@"ARRANGE_BOTTOM_TOP_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
    v107 = [MEMORY[0x277D755B8] systemImageNamed:@"inset.filled.bottomhalf.tophalf.rectangle"];
    v108 = [v104 commandWithTitle:v106 image:v107 action:sel__handleArrangeBottomAndTopCommand_ input:v240 modifierFlags:8781824 propertyList:v259];
    v109 = [v108 _allowGlobeModifierKeyCommand];

    v110 = v109;
    [v109 setRepeatBehavior:2];
    v111 = MEMORY[0x277D75650];
    v112 = [MEMORY[0x277CCA8D8] mainBundle];
    v113 = [v112 localizedStringForKey:@"LEFT_SLIDE_OVER_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
    v114 = [v111 commandWithTitle:v113 image:0 action:sel__handleLeftSlideOverCommand_ input:v236 modifierFlags:8912896 propertyList:v259];
    v115 = [v114 _allowGlobeModifierKeyCommand];

    v237 = v115;
    [v115 setRepeatBehavior:2];
    v116 = MEMORY[0x277D75650];
    v117 = [MEMORY[0x277CCA8D8] mainBundle];
    v118 = [v117 localizedStringForKey:@"RIGHT_SLIDE_OVER_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
    v119 = [v116 commandWithTitle:v118 image:0 action:sel__handleRightSlideOverCommand_ input:v234 modifierFlags:8912896 propertyList:v259];
    v120 = [v119 _allowGlobeModifierKeyCommand];

    v235 = v120;
    [v120 setRepeatBehavior:2];
    v121 = @"STASH_SLIDE_OVER_DISCOVERABILITY";
    if (self->_slideOverDisplayItem)
    {
      v122 = [(SBSwitcherController *)self layoutState];
      v123 = [v122 displayOrdinal];
      v124 = [v122 interfaceOrientation];
      v125 = (v124 - 1) < 2 ? 1 : 2 * ((v124 - 3) < 2);
      v126 = [(SBSwitcherController *)self displayItemLayoutAttributesProvider];
      slideOverDisplayItem = self->_slideOverDisplayItem;
      [(SBSwitcherController *)self _currentMainAppLayout];
      v129 = v128 = v110;
      v130 = [v126 layoutAttributesForDisplayItem:slideOverDisplayItem inAppLayout:v129 displayOrdinal:v123 orientation:v125];

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
    v133 = [MEMORY[0x277CCA8D8] mainBundle];
    v134 = [v133 localizedStringForKey:v121 value:&stru_283094718 table:@"SpringBoard"];
    v135 = [v132 commandWithTitle:v134 image:0 action:sel__handleToggleStashSlideOverCommand_ input:@"\\"" modifierFlags:0x800000 propertyList:v259];
    v136 = [v135 _allowGlobeModifierKeyCommand];

    v233 = v136;
    [v136 setRepeatBehavior:2];
    v137 = v260;
    v46 = v243;
    v138 = v225;
    v139 = v226;
    if (!v253)
    {
      v140 = MEMORY[0x277D750C8];
      v141 = [MEMORY[0x277CCA8D8] mainBundle];
      v142 = [v141 localizedStringForKey:@"EXIT_SLIDE_OVER_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
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
      v146 = [MEMORY[0x277CCA8D8] mainBundle];
      v147 = [v146 localizedStringForKey:@"TILE_TOP_LEFT_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
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
      v152 = [MEMORY[0x277CCA8D8] mainBundle];
      v153 = [v152 localizedStringForKey:@"TILE_TOP_RIGHT_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
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
      v157 = [MEMORY[0x277CCA8D8] mainBundle];
      v158 = [v157 localizedStringForKey:@"TILE_BOTTOM_LEFT_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
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
      v162 = [MEMORY[0x277CCA8D8] mainBundle];
      v163 = [v162 localizedStringForKey:@"TILE_BOTTOM_RIGHT_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
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
      v168 = [MEMORY[0x277CCA8D8] mainBundle];
      v169 = [v168 localizedStringForKey:@"ARRANGE_IN_GRID_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
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
      [v264 addObjectsFromArray:v173];

      v289[0] = v230;
      v289[1] = v229;
      v289[2] = v228;
      v289[3] = v227;
      v174 = [MEMORY[0x277CBEA60] arrayWithObjects:v289 count:4];
      [v258 addObjectsFromArray:v174];

      v288[0] = v150;
      v288[1] = v224;
      v288[2] = v223;
      v288[3] = v166;
      v175 = [MEMORY[0x277CBEA60] arrayWithObjects:v288 count:4];
      [v257 addObjectsFromArray:v175];

      v287[0] = v226;
      v287[1] = v242;
      v287[2] = v225;
      v287[3] = v241;
      v287[4] = v172;
      v176 = [MEMORY[0x277CBEA60] arrayWithObjects:v287 count:5];
      [v256 addObjectsFromArray:v176];

      if (SBFIsSlideOverAvailable())
      {
        v286[0] = v237;
        v286[1] = v235;
        v286[2] = v233;
        v286[3] = v144;
        v177 = [MEMORY[0x277CBEA60] arrayWithObjects:v286 count:4];
        [v252 addObjectsFromArray:v177];
      }

      v46 = v243;
      v137 = v260;
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
    v178 = [MEMORY[0x277CBEB18] arrayWithArray:v264];
    v181 = v259;
    if (v261)
    {
      v244 = v46;
      v182 = MEMORY[0x277D75710];
      v183 = [MEMORY[0x277CCA8D8] mainBundle];
      v184 = [v183 localizedStringForKey:@"HALVES_MENU_TITLE" value:&stru_283094718 table:@"SpringBoard"];
      v185 = [v182 menuWithTitle:v184 image:0 identifier:0 options:a4 | 1 children:v258];

      v186 = MEMORY[0x277D75710];
      v187 = [MEMORY[0x277CCA8D8] mainBundle];
      v188 = [v187 localizedStringForKey:@"QUARTERS_MENU_TITLE" value:&stru_283094718 table:@"SpringBoard"];
      v189 = [v186 menuWithTitle:v188 image:0 identifier:0 options:a4 | 1 children:v257];

      v190 = MEMORY[0x277D75710];
      v191 = [MEMORY[0x277CCA8D8] mainBundle];
      v192 = [v191 localizedStringForKey:@"ARRANGE_MENU_TITLE" value:&stru_283094718 table:@"SpringBoard"];
      v193 = [v190 menuWithTitle:v192 image:0 identifier:0 options:a4 | 1 children:v256];

      v194 = MEMORY[0x277D75710];
      v195 = [MEMORY[0x277CCA8D8] mainBundle];
      v196 = [v195 localizedStringForKey:@"MOVE_RESIZE_MENU_TITLE" value:&stru_283094718 table:@"SpringBoard"];
      v197 = [MEMORY[0x277D755B8] systemImageNamed:@"inset.filled.trailinghalf.arrow.trailing.rectangle"];
      v262 = v185;
      v285[0] = v185;
      v254 = v189;
      v285[1] = v189;
      v285[2] = v193;
      v198 = [MEMORY[0x277CBEA60] arrayWithObjects:v285 count:3];
      v199 = [v194 menuWithTitle:v196 image:v197 identifier:0 options:a4 children:v198];

      [v178 addObject:v199];
      if (SBFIsSlideOverAvailable())
      {
        v200 = MEMORY[0x277D75710];
        v201 = [MEMORY[0x277CCA8D8] mainBundle];
        v202 = [v201 localizedStringForKey:@"SLIDE_OVER_MENU_TITLE" value:&stru_283094718 table:@"SpringBoard"];
        v203 = [v200 menuWithTitle:v202 image:0 identifier:0 options:a4 | 1 children:v252];

        v204 = MEMORY[0x277D75710];
        v205 = [MEMORY[0x277CCA8D8] mainBundle];
        v206 = [v205 localizedStringForKey:@"SLIDE_OVER_MENU_TITLE" value:&stru_283094718 table:@"SpringBoard"];
        v284 = v203;
        v207 = [MEMORY[0x277CBEA60] arrayWithObjects:&v284 count:1];
        v208 = [v204 menuWithTitle:v206 image:0 identifier:0 options:a4 children:v207];

        [v178 addObject:v208];
      }

      v181 = v259;
      v53 = v260;
      v46 = v244;
    }

    [v178 addObject:v46];
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

    v214 = [v255 clientHandle];
    v215 = [v214 bundleIdentifier];

    if (v215)
    {
      v216 = +[SBApplicationController sharedInstance];
      v217 = [v216 applicationWithBundleIdentifier:v215];
      v218 = [v217 info];
    }

    else
    {
      v218 = 0;
    }

    v179 = v251;
    if ([v218 supportsMultiwindow])
    {
      v219 = MEMORY[0x277D75710];
      v283[0] = v213;
      v283[1] = v250;
      v220 = [MEMORY[0x277CBEA60] arrayWithObjects:v283 count:2];
      v221 = [v219 menuWithTitle:&stru_283094718 image:0 identifier:0 options:a4 | 1 children:v220];

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

- (id)_buildHideMenuWithAdditionalOptions:(unint64_t)a3
{
  v4 = [MEMORY[0x277CBEB18] array];
  v26 = [(SBSwitcherController *)self menuBarRecipientScene];
  v5 = [v26 clientHandle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    v7 = +[SBApplicationController sharedInstance];
    v8 = [v7 applicationWithBundleIdentifier:v6];
    v9 = [v8 info];
  }

  else
  {
    v9 = 0;
  }

  v25 = v9;
  v10 = [v9 displayName];
  if (v10)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = [v12 localizedStringForKey:@"HIDE_APP_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
    v14 = [v11 stringWithFormat:v13, v10];
  }

  else
  {
    v12 = [MEMORY[0x277CCA8D8] mainBundle];
    v14 = [v12 localizedStringForKey:@"HIDE_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
  }

  v15 = [MEMORY[0x277D75650] commandWithTitle:v14 image:0 action:sel__handleRemoveAllWindowFromSetShortcut_ input:@"h" modifierFlags:0x100000 propertyList:0];
  [v15 setRepeatBehavior:2];
  [v4 addObject:v15];
  v16 = MEMORY[0x277D75650];
  v17 = [MEMORY[0x277CCA8D8] mainBundle];
  v18 = [v17 localizedStringForKey:@"HIDE_OTHERS_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
  v19 = [v16 commandWithTitle:v18 image:0 action:sel__handleRemoveAllWindowFromSetForNonSelectedAppShortcut_ input:@"h" modifierFlags:1572864 propertyList:0];

  [v19 setRepeatBehavior:2];
  v20 = [(SBSwitcherController *)self _currentMainAppLayout];
  v21 = [v20 allItems];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __60__SBSwitcherController__buildHideMenuWithAdditionalOptions___block_invoke;
  v27[3] = &unk_2783A8C90;
  v28 = v6;
  v22 = v6;
  v23 = [v21 bs_filter:v27];

  if (![v23 count])
  {
    [v19 setAttributes:1];
  }

  [v4 addObject:v19];

  return v4;
}

uint64_t __60__SBSwitcherController__buildHideMenuWithAdditionalOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  LODWORD(a1) = [v3 isEqualToString:*(a1 + 32)];

  return a1 ^ 1;
}

- (BOOL)_updateLayoutPreferencesInSceneDataStoreForSceneHandleIfNeeded:(id)a3
{
  v3 = a3;
  v4 = [v3 displayItemRepresentation];
  v5 = +[SBApplicationController sharedInstance];
  v6 = [v5 applicationForDisplayItem:v4];

  v7 = [v6 _dataStore];
  v8 = [v4 uniqueIdentifier];
  v9 = [v7 sceneStoreForIdentifier:v8 creatingIfNecessary:0];

  v10 = [v3 sceneIfExists];
  if (v10)
  {
    [v3 layoutPreferencesMinimumSize];
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

- (void)sceneHandleDidUpdateLayoutPreferences:(id)a3
{
  v4 = a3;
  if ([(SBSwitcherController *)self _updateLayoutPreferencesInSceneDataStoreForSceneHandleIfNeeded:v4])
  {
    v5 = [v4 sceneIdentifier];
    v6 = +[SBWorkspace mainWorkspace];
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v8 = [WeakRetained _fbsDisplayConfiguration];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62__SBSwitcherController_sceneHandleDidUpdateLayoutPreferences___block_invoke_2;
    v10[3] = &unk_2783B3CF0;
    v10[4] = self;
    v11 = v5;
    v9 = v5;
    [v6 requestTransitionWithOptions:0 displayConfiguration:v8 builder:&__block_literal_global_550_0 validator:v10];
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

- (void)sceneHandleDidRecognizeDoubleTapInDraggableArea:(id)a3
{
  contentViewController = self->_contentViewController;
  v4 = a3;
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

  v9 = [v4 displayItemRepresentation];

  [(SBSwitcherContentViewControlling *)v8 toggleFullScreenDisplayItem:v9];
}

- (void)windowControlsViewController:(id)a3 didRequestAction:(unint64_t)a4
{
  v10 = [(SBSwitcherController *)self _topmostDisplayItem];
  v6 = objc_opt_class();
  v7 = SBSafeCast(v6, self->_contentViewController);
  v8 = v7;
  if (v7)
  {
    v9 = a4 > 3;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    [v7 performTopAffordanceAction:qword_21F8A6B38[a4] forDisplayItem:v10];
    _SBWindowControlsAnalyticsLogAction();
  }
}

- (void)windowControlsViewController:(id)a3 didRequestTileToPosition:(unint64_t)a4
{
  v10 = [(SBSwitcherController *)self _topmostDisplayItem];
  v6 = objc_opt_class();
  v7 = SBSafeCast(v6, self->_contentViewController);
  v8 = v7;
  if (v7)
  {
    v9 = a4 > 3;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    [v7 performTopAffordanceAction:a4 + 5 forDisplayItem:v10];
    _SBWindowControlsAnalyticsLogAction();
  }
}

- (void)windowControlsViewController:(id)a3 didRequestArrangeWithConfiguration:(unint64_t)a4
{
  v10 = [(SBSwitcherController *)self _topmostDisplayItem];
  v6 = objc_opt_class();
  v7 = SBSafeCast(v6, self->_contentViewController);
  v8 = v7;
  if (v7)
  {
    v9 = a4 > 4;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    [v7 performTopAffordanceAction:qword_21F8A6B78[a4] forDisplayItem:v10];
    _SBWindowControlsAnalyticsLogAction();
  }
}

- (void)windowControlsViewController:(id)a3 didRequestMoveToDisplay:(unint64_t)a4
{
  v10 = [(SBSwitcherController *)self _topmostDisplayItem];
  v6 = objc_opt_class();
  v7 = SBSafeCast(v6, self->_contentViewController);
  v8 = v7;
  if (v7)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        goto LABEL_7;
      }

      v9 = 18;
    }

    else
    {
      v9 = 19;
    }

    [v7 performTopAffordanceAction:v9 forDisplayItem:v10];
    _SBWindowControlsAnalyticsLogAction();
  }

LABEL_7:
}

- (void)windowControlsViewControllerDidRequestAddAnotherWindow:(id)a3
{
  v7 = [(SBSwitcherController *)self _topmostDisplayItem];
  v4 = objc_opt_class();
  v5 = SBSafeCast(v4, self->_contentViewController);
  v6 = v5;
  if (v5)
  {
    [v5 performTopAffordanceAction:3 forDisplayItem:v7];
    _SBWindowControlsAnalyticsLogAction();
  }
}

- (id)_topmostDisplayItem
{
  v3 = [(SBSwitcherController *)self _currentMainAppLayout];
  v4 = [(SBSwitcherController *)self displayItemLayoutAttributesProvider];
  v5 = [v3 preferredDisplayOrdinal];
  v6 = [(SBSwitcherController *)self interfaceOrientation];
  if ((v6 - 1) < 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2 * ((v6 - 3) < 2);
  }

  v8 = [v4 layoutAttributesMapForAppLayout:v3 displayOrdinal:v5 orientation:v7];

  v9 = [v8 allKeys];
  v10 = SBDisplayItemDescendingInteractionTimeComparator(v8);
  v11 = [v9 sortedArrayUsingComparator:v10];

  v12 = [v11 firstObject];

  return v12;
}

- (void)windowControlsViewController:(id)a3 didRequestSlideOverAction:(unint64_t)a4
{
  v10 = [(SBSwitcherController *)self _topmostDisplayItem];
  v6 = objc_opt_class();
  v7 = SBSafeCast(v6, self->_contentViewController);
  v8 = v7;
  if (v7)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        goto LABEL_7;
      }

      v9 = 27;
    }

    else
    {
      v9 = 26;
    }

    [v7 performTopAffordanceAction:v9 forDisplayItem:v10];
  }

LABEL_7:
}

- (id)sceneHandleForWhitePointAdaptivityStyle
{
  v3 = [(SBSwitcherController *)self _currentMainAppLayout];
  v4 = [(SBSwitcherController *)self displayItemLayoutAttributesProvider];
  v5 = [v3 preferredDisplayOrdinal];
  v6 = [(SBSwitcherController *)self interfaceOrientation];
  if ((v6 - 1) < 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2 * ((v6 - 3) < 2);
  }

  v8 = [v4 layoutAttributesMapForAppLayout:v3 displayOrdinal:v5 orientation:v7];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__SBSwitcherController_sceneHandleForWhitePointAdaptivityStyle__block_invoke;
  v16[3] = &unk_2783B66F8;
  v16[4] = self;
  v9 = [v8 bs_filter:v16];
  v10 = [v9 allKeys];
  v11 = SBDisplayItemDescendingInteractionTimeComparator(v8);
  v12 = [v10 sortedArrayUsingComparator:v11];

  v13 = [v12 firstObject];
  if (v13)
  {
    v14 = [(SBSwitcherController *)self _deviceApplicationSceneHandleForDisplayItem:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_windowSceneCanvasSizeDidChange:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v5 = [WeakRetained _fbsDisplayConfiguration];
  v6 = +[SBWorkspace mainWorkspace];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__SBSwitcherController__windowSceneCanvasSizeDidChange___block_invoke_2;
  v8[3] = &unk_2783B0350;
  v8[4] = self;
  [v6 requestTransitionWithOptions:0 displayConfiguration:v5 builder:&__block_literal_global_559 validator:v8];

  v7 = [MEMORY[0x277D65DD0] sharedInstance];
  [v7 emitEvent:59];
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

- (void)_coverSheetWillPerformTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKey:@"SBLockScreenUIWillPerformTransitionFinalValueKey"];
    [v7 doubleValue];
    v9 = v8;

    if ((BSFloatEqualToFloat() & 1) == 0)
    {
      self->_coverSheetFlyInProgress = v9;
      v10 = [v6 objectForKey:@"SBLockScreenUIWillPerformTransitionForUserGestureKey"];
      v11 = [v10 BOOLValue];

      v12 = [v6 objectForKey:@"SBLockScreenUIWillPerformTransitionAnimatedKey"];
      v13 = [v12 BOOLValue];

      v14 = [v6 objectForKey:@"SBLockScreenUIWillPerformTransitionLowLuminanceKey"];
      v15 = [v14 BOOLValue];

      if ((v11 | BSFloatIsZero()))
      {
        if (v13)
        {
          v16 = [v6 objectForKey:@"SBLockScreenUIWillPerformTransitionVelocityKey"];
          [v16 doubleValue];
          v18 = v17;

          coverSheetFlyInProgress = self->_coverSheetFlyInProgress;
          objc_initWeak(&location, self);
          v20 = +[(SBWorkspace *)SBMainWorkspace];
          WeakRetained = objc_loadWeakRetained(&self->_windowScene);
          v22 = [WeakRetained _fbsDisplayConfiguration];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __57__SBSwitcherController__coverSheetWillPerformTransition___block_invoke;
          v25[3] = &__block_descriptor_49_e42_v16__0__SBMainWorkspaceTransitionRequest_8l;
          *&v25[4] = v9;
          v25[5] = v18;
          v26 = v15 ^ 1;
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __57__SBSwitcherController__coverSheetWillPerformTransition___block_invoke_3;
          v23[3] = &unk_2783B6760;
          objc_copyWeak(v24, &location);
          v24[1] = *&coverSheetFlyInProgress;
          [v20 requestTransitionWithOptions:0 displayConfiguration:v22 builder:v25 validator:v23];

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

- (id)_makeWorkspaceTransitionValidatorForActivatingMainSwitcherWithSource:(int64_t)a3 animated:(BOOL)a4
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __102__SBSwitcherController__makeWorkspaceTransitionValidatorForActivatingMainSwitcherWithSource_animated___block_invoke;
  v6[3] = &unk_2783B6788;
  v6[4] = self;
  v7 = a4;
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

- (id)_makeWorkspaceTransitionValidatorForDismissingMainSwitcherToAppLayout:(id)a3 dismissFloatingSwitcher:(BOOL)a4 withSource:(int64_t)a5 animated:(BOOL)a6
{
  v9 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __138__SBSwitcherController__makeWorkspaceTransitionValidatorForDismissingMainSwitcherToAppLayout_dismissFloatingSwitcher_withSource_animated___block_invoke;
  v13[3] = &unk_2783B67B0;
  v15 = a4;
  v13[4] = self;
  v14 = v9;
  v16 = a6;
  v10 = v9;
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

- (id)_makeWorkspaceTransitionValidatorForTogglingMainSwitcherWithSource:(int64_t)a3 animated:(BOOL)a4
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __100__SBSwitcherController__makeWorkspaceTransitionValidatorForTogglingMainSwitcherWithSource_animated___block_invoke;
  v6[3] = &unk_2783B67D8;
  v6[4] = self;
  v6[5] = a3;
  v7 = a4;
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
    v8 = [WeakRetained _fbsDisplayIdentity];
    v9 = [v8 description];
    v10 = [v7 stringWithFormat:@"SBSwitcherWindow:%@", v9];
    [(SBMainSwitcherWindow *)v6 setAccessibilityIdentifier:v10];

    [(SBFWindow *)v6 setHidden:1];
    [(SBMainSwitcherWindow *)v6 setClipsToBounds:0];
    v11 = [(SBSwitcherViewController *)self->_switcherViewController view];
    [(SBSwitcherViewController *)self->_switcherViewController bs_endAppearanceTransition:0];
  }
}

- (void)_updateContentViewControllerIfNeeded
{
  v4 = [(SBAppSwitcherSettings *)self->_settings switcherStyle];
  v27 = [(SBSwitcherController *)self contentViewController];
  v5 = objc_opt_class();
  if (v4 == 1 || v4 == 2 || v4 == 3)
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
      v2 = [MEMORY[0x277D75418] currentDevice];
      [v2 userInterfaceIdiom];
    }

    v6 = objc_opt_self();

    if ((v19 & 1) == 0)
    {
    }
  }

  v7 = v27;
  if (v5 != v6 || v27 == 0)
  {
    v9 = [(SBSwitcherController *)self switcherCoordinator];
    v10 = [(SBSwitcherController *)self switcherViewController];
    if (v27)
    {
      [(SBSwitcherController *)self setContentViewController:0];
      [v27 willMoveToParentViewController:0];
      v11 = [v27 view];
      [v11 removeFromSuperview];

      [v10 removeChildViewController:v27];
    }

    if ([v6 isSubclassOfClass:objc_opt_class()])
    {
      v12 = [MEMORY[0x277D75418] currentDevice];
      v13 = [v12 userInterfaceIdiom];

      v14 = off_2783A2CF8;
      if ((v13 & 0xFFFFFFFFFFFFFFFBLL) != 1)
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
      v28 = [[v6 alloc] initWithPersonality:v20 liveContentOverlayCoordinator:v21 dataSource:v9 delegate:v9 debugName:v22];

      v17 = v28;
    }

    else
    {
      v17 = objc_alloc_init(v6);
    }

    v29 = v17;
    [v17 setDataSource:v9];
    [v29 setDelegate:v9];
    [(SBSwitcherController *)self setContentViewController:v29];
    [v10 addChildViewController:v29];
    v23 = [v29 view];
    [v10 addContentView:v23];

    [v29 didMoveToParentViewController:v10];
    [v29 setShowModifierTimeline:{-[SBAppSwitcherSettings showMainModifierTimeline](self->_settings, "showMainModifierTimeline")}];
    v24 = [(SBSwitcherController *)self gestureManager];
    if (v24)
    {
      v25 = v24;
      [(SBSwitcherController *)self setGestureManager:0];
      [v25 invalidate];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[SBFluidSwitcherGestureManager alloc] initWithSwitcherController:self delegate:v9];
      [(SBSwitcherController *)self setGestureManager:v26];
    }

    v7 = v29;
  }
}

- (void)_warmUpIconsForRecentAppLayouts
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(SBSwitcherContentViewControlling *)self->_contentViewController foregroundAppLayouts];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v3);
        }

        [(SBSwitcherController *)self _warmUpIconsForAppLayout:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_warmUpIconsForAppLayout:(id)a3
{
  v4 = a3;
  v5 = [(SBSwitcherController *)self windowScene];
  v6 = [v5 iconController];
  v7 = [v6 iconModel];
  v8 = [v6 appSwitcherHeaderIconImageCache];
  v9 = [v6 iconManager];
  v10 = [v9 rootViewController];
  v11 = [v10 traitCollection];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __49__SBSwitcherController__warmUpIconsForAppLayout___block_invoke;
  v15[3] = &unk_2783AED40;
  v16 = v7;
  v17 = v8;
  v18 = v11;
  v12 = v11;
  v13 = v8;
  v14 = v7;
  [v4 enumerate:v15];
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
  v1 = [MEMORY[0x277CCA890] currentHandler];
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
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"SBSwitcherController.m" lineNumber:822 description:{@"Invalid parameter not satisfying: %@", @"_traitsParticipant == nil"}];

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