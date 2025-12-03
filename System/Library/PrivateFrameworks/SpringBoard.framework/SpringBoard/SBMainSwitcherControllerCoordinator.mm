@interface SBMainSwitcherControllerCoordinator
+ (SBMainSwitcherControllerCoordinator)sharedInstance;
+ (id)_shim_activeSwitcherController;
- (BOOL)_contentControllerIsEmbeddedDisplayContentController:(id)controller;
- (BOOL)_hasAppLayoutBeenUserKilledWithinThresholdToCreateNewScene:(id)scene;
- (BOOL)_hasAppLayoutContainingDisplayItem:(id)item;
- (BOOL)_isBestAppSuggestionEligibleForSwitcher:(id)switcher;
- (BOOL)_isPerformingModelTransitionForReplacementAppLayout:(id)layout;
- (BOOL)_keyboardIsSuppressedForMedusaKeyboardScene;
- (BOOL)_shouldMorphFromPIPForTransitionContext:(id)context outForLayoutRole:(int64_t *)role;
- (BOOL)_shouldMorphToPIPForTransitionContext:(id)context outForLayoutRole:(int64_t *)role;
- (BOOL)_shouldTakeKeyboardHomeAffordanceAssertion;
- (BOOL)_shouldTakeStatusBarAssertionForSwitcherController:(id)controller;
- (BOOL)_shouldZoomFromSystemApertureForTransitionContext:(id)context;
- (BOOL)_windowManagementContextIsSingleAppModeForSwitcherCorrespondingToDisplayOrdinal:(int64_t)ordinal;
- (BOOL)canPerformKeyboardShortcutAction:(int64_t)action forBundleIdentifier:(id)identifier orSceneIdentifier:(id)sceneIdentifier windowScene:(id)scene;
- (BOOL)deleteAppLayoutForDisplayItem:(id)item;
- (BOOL)handleHeadsetButtonPress:(BOOL)press;
- (BOOL)handleHomeButtonDoublePress;
- (BOOL)handleHomeButtonLongPress;
- (BOOL)handleHomeButtonPress;
- (BOOL)handleLockButtonPress;
- (BOOL)handleVoiceCommandButtonPress;
- (BOOL)handleVolumeDownButtonPress;
- (BOOL)handleVolumeUpButtonPress;
- (BOOL)hasAppLayoutForDisplayItem:(id)item;
- (BOOL)hasAppLayoutForTransientOverlayViewController:(id)controller windowScene:(id)scene;
- (BOOL)isAcquiredTransientOverlayViewController:(id)controller windowScene:(id)scene;
- (BOOL)isAnySwitcherVisible;
- (BOOL)isDisplayEmbeddedForSwitcherContentController:(id)controller;
- (BOOL)isInAppStatusBarRequestedHiddenForSwitcherContentController:(id)controller;
- (BOOL)prioritizesSortOrderForAppLayout:(id)layout;
- (BOOL)shouldPerformPreTransitionInsertionOfAppLayout:(id)layout forTransitionWithContext:(id)context;
- (BOOL)switcherContentController:(id)controller displayItemSupportsCenterRole:(id)role;
- (BOOL)switcherContentController:(id)controller shouldResignActiveForStartOfTransition:(id)transition;
- (BOOL)switcherContentController:(id)controller supportsKillingOfAppLayout:(id)layout;
- (BOOL)switcherContentController:(id)controller supportsTitleItemsForAppLayout:(id)layout;
- (BOOL)switcherContentControllerControlsHomeScreenContents:(id)contents;
- (BOOL)switcherContentControllerControlsWallpaper:(id)wallpaper;
- (BOOL)switcherContentControllerHasMultipleDisplays:(id)displays;
- (CGAffineTransform)switcherContentController:(SEL)controller transformForCardUnderSheetForBoundsSize:(id)size;
- (CGRect)leadingStatusBarPartFrameForSwitcherContentController:(id)controller;
- (CGRect)switcherContentController:(id)controller frameForCenterItemWithConfiguration:(int64_t)configuration interfaceOrientation:(int64_t)orientation;
- (CGRect)switcherContentController:(id)controller frameForFloatingAppLayoutInInterfaceOrientation:(int64_t)orientation floatingConfiguration:(int64_t)configuration;
- (CGRect)switcherContentController:(id)controller frameForItemWithRole:(int64_t)role inMainAppLayout:(id)layout interfaceOrientation:(int64_t)orientation;
- (CGRect)trailingStatusBarPartFrameForSwitcherContentController:(id)controller;
- (SBDisplayItemSlideOverConfiguration)slideOverConfigurationOnAnySwitcherForDisplayItem:(SEL)item;
- (id)_activeDisplaySwitcherController;
- (id)_appLayoutContainingDisplayItem:(id)item;
- (id)_appLayoutFromPrimaryLayoutItem:(id)item sideLayoutElement:(id)element configuration:(int64_t)configuration;
- (id)_centerWindowSheetMetricsCache;
- (id)_defaultSwitcherController;
- (id)_embeddedDisplaySwitcherController;
- (id)_entityForDisplayItem:(id)item displayIdentity:(id)identity;
- (id)_entityForDisplayItem:(id)item sceneHandleProvider:(id)provider displayIdentity:(id)identity;
- (id)_entityForDisplayItem:(id)item switcherController:(id)controller;
- (id)_homeScreenAppearanceControllerForSwitcherContentController:(id)controller;
- (id)_init;
- (id)_medusaKeyboardSceneHandle;
- (id)_modelRemovalRequestForDisplayItemResolutionResults:(id)results;
- (id)_nonHiddenAppLayoutsForDisplayItem:(id)item;
- (id)_persistenceIdentifiersForBundleIdentifier:(id)identifier onlyIncludeLaunchableIdentifiers:(BOOL)identifiers;
- (id)_resultsForDisplayItemRemovalResolutionRequest:(id)request preferredAppLayoutForRemovalAnimationIfAny:(id)any;
- (id)_switcherControllerForContentViewController:(id)controller;
- (id)_switcherControllerForDisplayItem:(id)item;
- (id)_switcherControllerForTransitionRequest:(id)request;
- (id)_switcherControllerPassingTest:(id)test;
- (id)_switcherModelRemovalResultsForDisplayItemRemovalResolutionRequest:(id)request;
- (id)_switcherModelRemovalResultsForRequest:(id)request forReason:(int64_t)reason;
- (id)_transientOverlayPresentationManager;
- (id)acquireAllowHiddenAppAssertionForBundleIdentifier:(id)identifier reason:(id)reason;
- (id)activeTransientOverlayPresentedAppLayoutForSwitcherContentController:(id)controller;
- (id)activeTransientOverlayPresentedAppLayoutForWindowScene:(id)scene;
- (id)animationControllerForTransitionRequest:(id)request;
- (id)animationControllerForTransitionRequest:(id)request ancillaryTransitionRequests:(id)requests;
- (id)appLayoutForSwitcherContentControllerCorrespondingToDisplayOrdinal:(int64_t)ordinal;
- (id)appLayoutForWorkspaceTransientOverlay:(id)overlay windowScene:(id)scene;
- (id)appLayoutsForSwitcherContentController:(id)controller;
- (id)appLayoutsForSwitcherController:(id)controller;
- (id)convertAppLayout:(id)layout fromSwitcherController:(id)controller toSwitcherController:(id)switcherController;
- (id)createWorkspaceTransientOverlayForAppLayout:(id)layout;
- (id)desktopSpaceItemsForSwitcherContentController:(id)controller;
- (id)displayConfigurationsOfOtherDisplaysForSwitcherContentController:(id)controller;
- (id)draggingAppLayouts;
- (id)guardedForegroundDisplayItemsForSwitcherContentController:(id)controller;
- (id)knownWindowsForAppBundleIdentifier:(id)identifier;
- (id)matchingIconViewForIconView:(id)view;
- (id)proposedAppLayoutsForWindowDragForSwitcherContentController:(id)controller;
- (id)sceneRelevancyManagerForSwitcherContentController:(id)controller;
- (id)slideOverItemForSwitcherContentController:(id)controller;
- (id)switcherContentController:(id)controller demoLayoutAttributesForDisplayItem:(id)item;
- (id)switcherContentController:(id)controller deviceApplicationSceneHandleForDisplayItem:(id)item;
- (id)switcherContentController:(id)controller hiddenAppLayoutsForBundleIdentifier:(id)identifier;
- (id)switcherContentController:(id)controller visibleAppLayoutsForBundleIdentifier:(id)identifier;
- (id)switcherContentController:(id)controller visibleDisplayItemsForBundleIdentifier:(id)identifier;
- (id)switcherControllerForAppLayout:(id)layout;
- (id)switcherControllerForDisplayItem:(id)item;
- (id)switcherControllerForWindowScene:(id)scene;
- (id)switcherGestureManagerForSwitcherContentController:(id)controller;
- (id)transitionEventForContext:(id)context identifier:(id)identifier phase:(unint64_t)phase animated:(BOOL)animated;
- (id)windowManagementContextForSwitcherContentController:(id)controller;
- (id)windowSceneForSwitcherContentController:(id)controller;
- (id)windowingConfigurationForSwitcherContentControllerCorrespondingToDisplayOrdinal:(int64_t)ordinal;
- (int64_t)_overrideWindowActiveInterfaceOrientation;
- (int64_t)_switcherDisplayItemRemovalIntentTypeForEntity:(id)entity removalContext:(id)context;
- (int64_t)homeScreenInterfaceOrientationForContentController:(id)controller;
- (int64_t)nextDisplayItemInteractionTimeForSwitcherContentController:(id)controller;
- (int64_t)switcherInterfaceOrientationForSwitcherContentController:(id)controller;
- (unint64_t)maximumNumberOfScenesOnStageForSwitcherContentController:(id)controller;
- (void)_acquireAssertion:(id)assertion;
- (void)_activateBetaLaunchHandlesIfNeededWithAppInfo:(id)info processHandle:(id)handle;
- (void)_activateNeighboringAppLayoutRequiringActiveAppLayout:(BOOL)layout appLayoutEnvironment:(int64_t)environment inForwardDirection:(BOOL)direction windowScene:(id)scene eventLabel:(id)label;
- (void)_addAppLayoutToFront:(id)front removeAppLayout:(id)layout;
- (void)_applicationDidExit:(id)exit;
- (void)_asyncOnStoreAppLaunchUIActivationQueue:(id)queue;
- (void)_beginDisplayLayoutTransitionForSwitcherController:(id)controller reason:(id)reason;
- (void)_buildAppLayoutCache;
- (void)_cancelPIPForDisplayItem:(id)item;
- (void)_clearLayoutStateSnapshotForWindowScene:(id)scene;
- (void)_configureRequest:(id)request forSwitcherTransitionRequest:(id)transitionRequest withEventLabel:(id)label;
- (void)_deleteAppLayoutsMatchingBundleIdentifier:(id)identifier;
- (void)_endDisplayLayoutTransitionForSwitcherController:(id)controller;
- (void)_focusNewlyAddedApplicationIfNeededTransitioningFromLayoutState:(id)state toLayoutState:(id)layoutState windowScene:(id)scene;
- (void)_handleFocusedIconSwitcherShortcutAction:(int64_t)action bundleIdentifier:(id)identifier windowScene:(id)scene;
- (void)_insertAppLayout:(id)layout atIndex:(unint64_t)index contentViewController:(id)controller modelMutationBlock:(id)block completion:(id)completion;
- (void)_insertAppLayouts:(id)layouts atIndexes:(id)indexes contentViewController:(id)controller modelMutationBlock:(id)block completion:(id)completion;
- (void)_insertCardForDisplayIdentifier:(id)identifier atIndex:(unint64_t)index;
- (void)_keyboardWillHide:(id)hide;
- (void)_keyboardWillShow:(id)show;
- (void)_lockKeyboardFocusForSwitcherController:(id)controller;
- (void)_modifyModelWithDropContext:(id)context;
- (void)_noteUIWillLock;
- (void)_performSceneDestructionForModelRemovalResults:(id)results;
- (void)_presentStoreKitSheetIfNeededWithAppInfo:(id)info processHandle:(id)handle;
- (void)_purgeHiddenAppLayoutsForUILock;
- (void)_rebuildAppListCache;
- (void)_rebuildCurrentWindowingModeCompatibleAppLayoutsIfNecessary;
- (void)_releaseKeyboardFocus;
- (void)_removeAcquiredTransientOverlayViewController:(id)controller windowScene:(id)scene;
- (void)_removeAppLayout:(id)layout forReason:(int64_t)reason;
- (void)_removeCardForDisplayIdentifier:(id)identifier;
- (void)_removeDisplayItem:(id)item forReason:(int64_t)reason preferredAppLayoutForRemovalAnimationIfAny:(id)any originatingSwitcherContentController:(id)controller;
- (void)_reqlinquishAssertion:(id)assertion;
- (void)_requestAutomaticUpdateAuthorizationIfNecessaryWithAppInfo:(id)info processHandle:(id)handle;
- (void)_restoreLayoutStateSnapshotForWindowScene:(id)scene completion:(id)completion;
- (void)_setAsynchronousRenderingEnabled:(BOOL)enabled withMinificationFilter:(BOOL)filter forLayerTarget:(id)target presentationManager:(id)manager;
- (void)_setContainerStatusBarHidden:(BOOL)hidden partsHidden:(unint64_t)partsHidden animationDuration:(double)duration usingAssertion:(id *)assertion reason:(id)reason windowScene:(id)scene;
- (void)_setInterfaceOrientationFromUserResizingIfSupported:(int64_t)supported forSceneHandle:(id)handle;
- (void)_switcherModelChanged:(id)changed;
- (void)_switcherServiceAdded:(id)added;
- (void)_switcherServiceRemoved:(id)removed;
- (void)_takeLayoutStateSnapshotForWindowScene:(id)scene withPreviousLayoutState:(id)state;
- (void)_updateAssertion:(id)assertion;
- (void)_updateBestAppSuggestion;
- (void)_updateHomeScreenDisplayLayoutElementForLayoutState:(id)state switcherController:(id)controller;
- (void)_updateKeyboardHomeAffordanceAssertion;
- (void)_warmAppInfoForAppsInList;
- (void)addAcquiredTransientOverlayViewController:(id)controller forAppLayout:(id)layout windowScene:(id)scene;
- (void)addAppLayoutForDisplayItem:(id)item windowScene:(id)scene completion:(id)completion;
- (void)addAppLayoutForTransientOverlayViewController:(id)controller windowScene:(id)scene;
- (void)addCenterRoleAppLayoutForDisplayItem:(id)item windowScene:(id)scene completion:(id)completion;
- (void)appSwitcherModel:(id)model didMoveAppLayoutToFront:(id)front;
- (void)appSwitcherModel:(id)model didRemoveAppLayoutForFallingOffList:(id)list;
- (void)beginCoordinatingSwitcherController:(id)controller options:(unint64_t)options;
- (void)betaLaunchHandle:(id)handle activateIfNeededEndedWithResult:(BOOL)result;
- (void)cancelActiveGestureForSwitcherContentController:(id)controller;
- (void)cleanUpAfterCoordinatedLayoutStateTransitionWithContext:(id)context;
- (void)configureSwitcherStateForAccidentalActivationMitigationSession:(id)session completion:(id)completion;
- (void)dealloc;
- (void)endCoordinatingSwitcherController:(id)controller options:(unint64_t)options;
- (void)enumerateSwitcherControllersWithBlock:(id)block;
- (void)eventSource:(id)source userDeletedWebBookmark:(id)bookmark;
- (void)eventSource:(id)source userTouchedApplication:(id)application;
- (void)failMultitaskingGesturesForReason:(id)reason;
- (void)fluidSwitcherGestureManager:(id)manager clickReceivedForHomeGrabberView:(id)view;
- (void)fluidSwitcherGestureManager:(id)manager didBeginDraggingWindowWithSceneIdentifier:(id)identifier;
- (void)fluidSwitcherGestureManager:(id)manager didBeginGesture:(id)gesture;
- (void)fluidSwitcherGestureManager:(id)manager didEndGesture:(id)gesture;
- (void)fluidSwitcherGestureManager:(id)manager didPlatterizeWindowDragWithSceneIdentifier:(id)identifier;
- (void)fluidSwitcherGestureManager:(id)manager didUpdateGesture:(id)gesture;
- (void)fluidSwitcherGestureManager:(id)manager tapReceivedForGrabberTongueAtEdge:(unint64_t)edge;
- (void)fluidSwitcherGestureManager:(id)manager willEndDraggingWindowWithSceneIdentifier:(id)identifier;
- (void)handleApplicationSceneEntityDestructionIntent:(id)intent forEntities:(id)entities;
- (void)keyboardFocusController:(id)controller externalSceneDidAcquireFocus:(id)focus;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context;
- (void)noteKeyboardIsForMedusaWithOwningScene:(id)scene;
- (void)noteKeyboardIsNotForMedusa;
- (void)performKeyboardShortcutAction:(int64_t)action forBundleIdentifier:(id)identifier orSceneIdentifier:(id)sceneIdentifier windowScene:(id)scene;
- (void)prepareForCoordinatedLayoutStateTransitionWithContext:(id)context;
- (void)presentContinuousExposeStripRevealGrabberTongueImmediatelyForSwitcherContentController:(id)controller;
- (void)programmaticSwitchAppGestureMoveToLeft;
- (void)programmaticSwitchAppGestureMoveToRight;
- (void)removeAppLayoutForDisplayItem:(id)item shouldDestroyScene:(BOOL)scene;
- (void)removeAppLayoutTransientOverlayViewController:(id)controller windowScene:(id)scene;
- (void)resetLayoutAttributesWithCompletion:(id)completion;
- (void)sceneHandle:(id)handle didUpdateSettingsWithDiff:(id)diff previousSettings:(id)settings;
- (void)setActiveGestureTransaction:(id)transaction;
- (void)setLiveContentOverlayUpdatesSuspended:(BOOL)suspended;
- (void)switcherContentController:(id)controller activatedBestAppSuggestion:(id)suggestion;
- (void)switcherContentController:(id)controller deletedDisplayItem:(id)item inAppLayout:(id)layout forReason:(int64_t)reason;
- (void)switcherContentController:(id)controller layoutStateTransitionDidEndWithTransitionContext:(id)context;
- (void)switcherContentController:(id)controller moveDisplayItemFromOtherDisplay:(id)display;
- (void)switcherContentController:(id)controller moveDisplayItemOutOfSlideOver:(id)over;
- (void)switcherContentController:(id)controller moveDisplayItemToSlideOver:(id)over;
- (void)switcherContentController:(id)controller performTransitionWithRequest:(id)request gestureInitiated:(BOOL)initiated;
- (void)switcherContentController:(id)controller removeDisplayItemsFromDesktop:(id)desktop;
- (void)switcherContentController:(id)controller reopenHiddenAppLayoutsWithBundleIdentifier:(id)identifier;
- (void)switcherContentController:(id)controller requestDismissalForHomeScreenBackgroundTaps:(BOOL)taps;
- (void)switcherContentController:(id)controller requestNewWindowForBundleIdentifier:(id)identifier;
- (void)switcherContentController:(id)controller setCacheAsynchronousRenderingSurfaces:(BOOL)surfaces;
- (void)switcherContentController:(id)controller setContainerStatusBarHidden:(BOOL)hidden partsHidden:(unint64_t)partsHidden animationDuration:(double)duration;
- (void)switcherContentController:(id)controller setHomeScreenAlpha:(double)alpha withAnimationMode:(int64_t)mode completion:(id)completion;
- (void)switcherContentController:(id)controller setHomeScreenBackdropBlurMaterialRecipeName:(id)name withAnimationMode:(int64_t)mode completion:(id)completion;
- (void)switcherContentController:(id)controller setHomeScreenBackdropBlurProgress:(double)progress withAnimationMode:(int64_t)mode completion:(id)completion;
- (void)switcherContentController:(id)controller setHomeScreenBackdropBlurType:(int64_t)type;
- (void)switcherContentController:(id)controller setHomeScreenDimmingAlpha:(double)alpha withSettings:(id)settings animationMode:(int64_t)mode completion:(id)completion;
- (void)switcherContentController:(id)controller setHomeScreenScale:(double)scale withAnimationMode:(int64_t)mode completion:(id)completion;
- (void)switcherContentController:(id)controller setInterfaceOrientation:(int64_t)orientation;
- (void)switcherContentController:(id)controller setInterfaceOrientationFromUserResizing:(int64_t)resizing forDisplayItem:(id)item;
- (void)switcherContentController:(id)controller setPointerInteractionsEnabled:(BOOL)enabled;
- (void)switcherContentController:(id)controller setWallpaperScale:(double)scale withAnimationMode:(int64_t)mode completion:(id)completion;
- (void)switcherContentController:(id)controller setWallpaperStyle:(int64_t)style;
- (void)switcherContentControllerDidUpdateVisibleHomeAffordances:(id)affordances;
- (void)switcherContentControllerWantsToDismissMenuBar:(id)bar;
- (void)switcherContentControllerWantsToPeekMenuBar:(id)bar;
- (void)switcherContentControllerWantsToUpdateMenuBarVisibility:(id)visibility;
- (void)switcherControllerViewWillAppear:(id)appear animated:(BOOL)animated;
- (void)switcherDemoFilteringControllerDidChangeHiddenApplicationBundleIDs:(id)ds;
- (void)tickleContinuousExposeStripRevealGrabberTongueIfVisibleForSwitcherContentController:(id)controller;
- (void)transactionDidComplete:(id)complete;
- (void)updateUserInteractionEnabledForSwitcherContentController:(id)controller;
- (void)updateWindowVisibilityForSwitcherContentController:(id)controller;
- (void)watchdog:(id)watchdog requestsTerminationOf:(id)of forReason:(id)reason;
- (void)windowSceneDidConnect:(id)connect;
- (void)windowSceneDidDisconnect:(id)disconnect;
@end

@implementation SBMainSwitcherControllerCoordinator

+ (SBMainSwitcherControllerCoordinator)sharedInstance
{
  if ([MEMORY[0x277D244C8] inUserSessionLoginUI])
  {
    v3 = 0;
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__SBMainSwitcherControllerCoordinator_sharedInstance__block_invoke;
    block[3] = &unk_2783A9718;
    block[4] = &v7;
    if (sharedInstance_onceToken_30 != -1)
    {
      dispatch_once(&sharedInstance_onceToken_30, block);
    }

    if (*(v8 + 24) == 1)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"SBMainSwitcherSwitcherSharedInstanceCreatedNotification" object:self];
    }

    v3 = __sharedInstance_2;
    _Block_object_dispose(&v7, 8);
  }

  return v3;
}

- (void)_rebuildAppListCache
{
  [(SBMainSwitcherControllerCoordinator *)self _buildAppLayoutCache];
  [(SBMainSwitcherControllerCoordinator *)self _rebuildCurrentWindowingModeCompatibleAppLayoutsIfNecessary];

  [(SBMainSwitcherControllerCoordinator *)self _notifySwitcherControllersAppLayoutsDidChange];
}

- (void)_buildAppLayoutCache
{
  v134 = *MEMORY[0x277D85DE8];
  v125 = 0;
  v126 = &v125;
  v127 = 0x3032000000;
  v128 = __Block_byref_object_copy__72;
  v129 = __Block_byref_object_dispose__72;
  v2 = [(SBAppSwitcherModel *)self->_mainSwitcherModel appLayoutsIncludingHiddenAppLayouts:0];
  v130 = [v2 mutableCopy];

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEB58] set];
  v7 = [MEMORY[0x277CBEB58] set];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v121 = 0;
  v122 = &v121;
  v123 = 0x2020000000;
  v124 = 0;
  v114[0] = MEMORY[0x277D85DD0];
  v114[1] = 3221225472;
  v114[2] = __59__SBMainSwitcherControllerCoordinator__buildAppLayoutCache__block_invoke;
  v114[3] = &unk_2783B97D0;
  v78 = array2;
  v115 = v78;
  v9 = v6;
  v116 = v9;
  v83 = dictionary;
  v117 = v83;
  v75 = array3;
  v118 = v75;
  v10 = v7;
  v119 = v10;
  v120 = &v121;
  [(SBMainSwitcherControllerCoordinator *)self enumerateSwitcherControllersWithBlock:v114];
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  v12 = v126[5];
  v107[0] = MEMORY[0x277D85DD0];
  v107[1] = 3221225472;
  v107[2] = __59__SBMainSwitcherControllerCoordinator__buildAppLayoutCache__block_invoke_2;
  v107[3] = &unk_2783B97F8;
  v72 = v9;
  v108 = v72;
  v113 = &v121;
  v13 = indexSet;
  v109 = v13;
  v73 = v10;
  v110 = v73;
  selfCopy = self;
  v84 = array;
  v112 = v84;
  [v12 enumerateObjectsUsingBlock:v107];
  [v126[5] removeObjectsAtIndexes:v13];
  v74 = v13;
  activeGestureTransaction = [(SBMainSwitcherControllerCoordinator *)self activeGestureTransaction];
  layoutTransaction = [activeGestureTransaction layoutTransaction];

  v15 = objc_opt_class();
  transitionRequest = [layoutTransaction transitionRequest];
  v77 = SBSafeCast(v15, transitionRequest);

  if ([v77 isCrossingDisplays])
  {
    applicationContext = [v77 applicationContext];
    layoutState = [applicationContext layoutState];
    appLayout = [layoutState appLayout];
  }

  else
  {
    appLayout = [v126[5] firstObject];
  }

  if ([v78 containsObject:appLayout])
  {
    v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v78, "count")}];
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v20 = v78;
    v21 = [v20 countByEnumeratingWithState:&v103 objects:v133 count:16];
    if (v21)
    {
      v22 = *v104;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v104 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v103 + 1) + 8 * i);
          if (([v24 isEqual:appLayout] & 1) != 0 || !objc_msgSend(v24, "containsAnyItemFromAppLayout:", appLayout))
          {
            [v19 addObject:v24];
          }

          else
          {
            v101[0] = MEMORY[0x277D85DD0];
            v101[1] = 3221225472;
            v101[2] = __59__SBMainSwitcherControllerCoordinator__buildAppLayoutCache__block_invoke_4;
            v101[3] = &unk_2783A8C90;
            v102 = appLayout;
            v25 = [v24 appLayoutWithItemsPassingTest:v101];
            if (v25)
            {
              [v19 addObject:v25];
              v26 = [v83 objectForKey:v24];
              [v83 setObject:v26 forKey:v25];
              [v83 removeObjectForKey:v24];
            }
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v103 objects:v133 count:16];
      }

      while (v21);
    }

    v27 = v19;
  }

  else
  {
    v27 = v78;
  }

  [v27 arrayByAddingObjectsFromArray:{v75, v27}];
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  obj = v98 = 0u;
  v28 = [obj countByEnumeratingWithState:&v97 objects:v132 count:16];
  if (v28)
  {
    v29 = *v98;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v98 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v97 + 1) + 8 * j);
        v32 = [v31 containsAnyItemFromSet:self->_liveDisplayItemsBeingTerminated];
        if ((([v126[5] containsObject:v31] | v32) & 1) == 0 && (v122[3] & 1) == 0 && (objc_msgSend(v84, "containsObject:", v31) & 1) == 0)
        {
          v33 = [v83 objectForKey:v31];
          _slideOverDisplayItem = [v33 _slideOverDisplayItem];
          windowManagementContext = [v33 windowManagementContext];
          isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];
          if (_slideOverDisplayItem)
          {
            v37 = isFlexibleWindowingEnabled;
          }

          else
          {
            v37 = 0;
          }

          if (v37)
          {
            v38 = [v31 appLayoutByRemovingItemInLayoutRole:{objc_msgSend(v31, "layoutRoleForItem:", _slideOverDisplayItem)}];
            if (([v126[5] indexOfObject:v38] - 1) > 0x7FFFFFFFFFFFFFFDLL)
            {
              v40 = 0;
            }

            else
            {
              v39 = [v126[5] objectAtIndex:?];
              v96[0] = MEMORY[0x277D85DD0];
              v96[1] = 3221225472;
              v96[2] = __59__SBMainSwitcherControllerCoordinator__buildAppLayoutCache__block_invoke_5;
              v96[3] = &unk_2783A8C90;
              v96[4] = v31;
              v40 = [v39 appLayoutWithItemsPassingTest:v96];
            }
          }

          else
          {
            v40 = 0;
          }

          if ([v31 environment] == 1)
          {
            v41 = v126[5];
            v95[0] = MEMORY[0x277D85DD0];
            v95[1] = 3221225472;
            v95[2] = __59__SBMainSwitcherControllerCoordinator__buildAppLayoutCache__block_invoke_6;
            v95[3] = &unk_2783AE218;
            v95[4] = v31;
            v42 = [v41 bs_compactMap:v95];
            v43 = [v42 mutableCopy];
            v44 = v126[5];
            v126[5] = v43;
          }

          if (v40)
          {
            v45 = [v126[5] indexOfObject:v40] + 1;
          }

          else
          {
            v45 = 0;
          }

          [v126[5] insertObject:v31 atIndex:v45];
        }
      }

      v28 = [obj countByEnumeratingWithState:&v97 objects:v132 count:16];
    }

    while (v28);
  }

  v46 = +[SBAppSwitcherServiceManager sharedInstance];
  registeredServicesSnapshot = [v46 registeredServicesSnapshot];
  switcherServices = self->_switcherServices;
  self->_switcherServices = registeredServicesSnapshot;

  selfCopy3 = self;
  v79 = [(SBAppSwitcherServiceSet *)self->_switcherServices count];
  if (v79)
  {
    v50 = 0;
    do
    {
      v80 = v50;
      v51 = [(SBAppSwitcherServiceSet *)selfCopy3->_switcherServices serviceAtIndex:?];
      bundleIdentifier = [v51 bundleIdentifier];
      v81 = [SBDisplayItem switcherServiceDisplayItemWithServiceIdentifier:bundleIdentifier];

      v82 = [(SBMainSwitcherControllerCoordinator *)self _appLayoutFromPrimaryLayoutItem:v81 sideLayoutElement:0 configuration:1];
      v53 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v94 = 0u;
      v92 = 0u;
      v93 = 0u;
      v91 = 0u;
      v54 = self->_servicesRemovedWhileAwayFromSwitcher;
      v55 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v91 objects:v131 count:16];
      if (v55)
      {
        v56 = *v92;
        do
        {
          for (k = 0; k != v55; ++k)
          {
            if (*v92 != v56)
            {
              objc_enumerationMutation(v54);
            }

            v58 = *(*(&v91 + 1) + 8 * k);
            bundleIdentifier2 = [v58 bundleIdentifier];
            bundleIdentifier3 = [v51 bundleIdentifier];
            v61 = [bundleIdentifier2 isEqualToString:bundleIdentifier3];

            if (v61)
            {
              [v53 addObject:v58];
            }
          }

          v55 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v91 objects:v131 count:16];
        }

        while (v55);
      }

      [(NSMutableArray *)self->_servicesRemovedWhileAwayFromSwitcher removeObjectsInArray:v53];
      if (v82 && ([v126[5] containsObject:v82] & 1) == 0)
      {
        [v126[5] insertObject:v82 atIndex:0];
      }

      v50 = v80 + 1;
      selfCopy3 = self;
    }

    while (v80 + 1 != v79);
  }

  if (selfCopy3->_testItemForInsertion)
  {
    testItemInsertionIndex = selfCopy3->_testItemInsertionIndex;
    if (testItemInsertionIndex <= [v126[5] count])
    {
      [v126[5] removeObject:selfCopy3->_testItemForInsertion];
      [v126[5] insertObject:selfCopy3->_testItemForInsertion atIndex:selfCopy3->_testItemInsertionIndex];
    }
  }

  v63 = v126[5];
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __59__SBMainSwitcherControllerCoordinator__buildAppLayoutCache__block_invoke_8;
  v90[3] = &unk_2783AE1A0;
  v90[4] = selfCopy3;
  v64 = [v63 indexOfObjectPassingTest:v90];
  if (v64 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v64 = [v126[5] count];
  }

  allKeys = [(NSMutableDictionary *)self->_appLayoutToEligibleTransientOverlayViewController allKeys];
  v66 = v126[5];
  v67 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v64, objc_msgSend(allKeys, "count")}];
  [v66 insertObjects:allKeys atIndexes:v67];

  v68 = v126[5];
  v69 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v64, objc_msgSend(v84, "count")}];
  [v68 insertObjects:v84 atIndexes:v69];

  v70 = [(NSPointerArray *)self->_coordinatedSwitcherControllers count];
  v88[0] = MEMORY[0x277D85DD0];
  v88[1] = 3221225472;
  v88[2] = __59__SBMainSwitcherControllerCoordinator__buildAppLayoutCache__block_invoke_9;
  v88[3] = &unk_2783B9848;
  v88[4] = &v125;
  v89 = v70 > 1;
  [(SBMainSwitcherControllerCoordinator *)self enumerateSwitcherControllersWithBlock:v88];
  objc_storeStrong(&self->_appLayouts, v126[5]);

  _Block_object_dispose(&v121, 8);
  _Block_object_dispose(&v125, 8);
}

void __59__SBMainSwitcherControllerCoordinator__buildAppLayoutCache__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 _currentMainAppLayout];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
    v4 = *(a1 + 40);
    v5 = [v3 allItems];
    [v4 addObjectsFromArray:v5];

    [*(a1 + 48) setObject:v10 forKey:v3];
  }

  v6 = [v10 _currentFloatingAppLayout];
  if (v6)
  {
    [*(a1 + 56) addObject:v6];
    v7 = *(a1 + 64);
    v8 = [v6 allItems];
    [v7 addObjectsFromArray:v8];
  }

  if ([v10 isMainSwitcherVisible])
  {
    v9 = [v10 gestureManager];
    *(*(*(a1 + 72) + 8) + 24) |= [v9 isDragAndDropTransactionRunning];
  }
}

void __59__SBMainSwitcherControllerCoordinator__buildAppLayoutCache__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([v5 environment] == 2 && objc_msgSend(v5, "containsAnyItemFromSet:", *(a1 + 32)) && (*(*(*(a1 + 72) + 8) + 24) & 1) == 0 || objc_msgSend(v5, "environment") == 1 && objc_msgSend(v5, "containsAnyItemFromSet:", *(a1 + 48)) && (*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    goto LABEL_20;
  }

  if ([*(a1 + 56) prioritizesSortOrderForAppLayout:v5])
  {
    [*(a1 + 40) addIndex:a3];
    [*(a1 + 64) addObject:v5];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = *(*(a1 + 56) + 88);
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([v5 containsItemWithUniqueIdentifier:*(*(&v14 + 1) + 8 * i)])
        {
          [*(a1 + 40) addIndex:a3];
          goto LABEL_19;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  if ([*(*(a1 + 56) + 248) containsObject:v5])
  {
LABEL_20:
    [*(a1 + 40) addIndex:a3];
  }

  if (+[SBApplicationAppProtectionAssistant areAnyApplicationsHidden](SBApplicationAppProtectionAssistant, "areAnyApplicationsHidden") && ([*(a1 + 40) containsIndex:a3] & 1) == 0)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__SBMainSwitcherControllerCoordinator__buildAppLayoutCache__block_invoke_3;
    v11[3] = &unk_2783AEDE0;
    v12 = *(a1 + 40);
    v13 = a3;
    [v5 enumerate:v11];
  }
}

- (void)_rebuildCurrentWindowingModeCompatibleAppLayoutsIfNecessary
{
  if ((SBFIsChamoisWindowingUIAvailable() & 1) != 0 || SBFIsFlexibleWindowingUIAvailable())
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3032000000;
    v8[3] = __Block_byref_object_copy__72;
    v8[4] = __Block_byref_object_dispose__72;
    v9 = 0;
    v6[0] = 0;
    v6[1] = v6;
    v6[2] = 0x3032000000;
    v6[3] = __Block_byref_object_copy__72;
    v6[4] = __Block_byref_object_dispose__72;
    v7 = 0;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __98__SBMainSwitcherControllerCoordinator__rebuildCurrentWindowingModeCompatibleAppLayoutsIfNecessary__block_invoke;
    v5[3] = &unk_2783B9870;
    v5[4] = self;
    v5[5] = v6;
    v5[6] = v8;
    [(SBMainSwitcherControllerCoordinator *)self enumerateSwitcherControllersWithBlock:v5];
    currentWindowingModeCompatibleAppLayoutsByWindowScene = self->_currentWindowingModeCompatibleAppLayoutsByWindowScene;
    if (currentWindowingModeCompatibleAppLayoutsByWindowScene)
    {
      if (![(NSMapTable *)currentWindowingModeCompatibleAppLayoutsByWindowScene count])
      {
        v4 = self->_currentWindowingModeCompatibleAppLayoutsByWindowScene;
        self->_currentWindowingModeCompatibleAppLayoutsByWindowScene = 0;
      }
    }

    _Block_object_dispose(v6, 8);

    _Block_object_dispose(v8, 8);
  }
}

void __84__SBMainSwitcherControllerCoordinator__notifySwitcherControllersAppLayoutsDidChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 contentViewController];
  [v2 noteAppLayoutsDidChange];
}

- (void)_updateBestAppSuggestion
{
  v3 = +[SBAppSuggestionManager sharedInstance];
  currentSuggestedApp = [v3 currentSuggestedApp];

  bundleIdentifier = [currentSuggestedApp bundleIdentifier];
  if ([(SBMainSwitcherControllerCoordinator *)self _isBestAppSuggestionEligibleForSwitcher:currentSuggestedApp])
  {
    v6 = +[SBApplicationController sharedInstance];
    v7 = [v6 applicationWithBundleIdentifier:bundleIdentifier];
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = [bundleIdentifier isEqualToString:@"com.apple.Siri"];
    }
  }

  else
  {
    v8 = 0;
  }

  if (currentSuggestedApp)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__SBMainSwitcherControllerCoordinator__updateBestAppSuggestion__block_invoke;
    v10[3] = &unk_2783B9578;
    v11 = currentSuggestedApp;
    [(SBMainSwitcherControllerCoordinator *)self enumerateSwitcherControllersWithBlock:v10];
  }
}

void __63__SBMainSwitcherControllerCoordinator__updateBestAppSuggestion__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 contentViewController];
  [v3 setBestAppSuggestion:*(a1 + 32)];
}

- (id)_embeddedDisplaySwitcherController
{
  windowSceneManager = [SBApp windowSceneManager];
  embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];

  v5 = [(SBMainSwitcherControllerCoordinator *)self switcherControllerForWindowScene:embeddedDisplayWindowScene];

  return v5;
}

+ (id)_shim_activeSwitcherController
{
  sharedInstanceIfExists = [self sharedInstanceIfExists];
  _activeDisplaySwitcherController = [sharedInstanceIfExists _activeDisplaySwitcherController];

  return _activeDisplaySwitcherController;
}

- (void)noteKeyboardIsNotForMedusa
{
  _medusaKeyboardSceneHandle = [(SBMainSwitcherControllerCoordinator *)self _medusaKeyboardSceneHandle];
  [_medusaKeyboardSceneHandle removeObserver:self];

  medusaKeyboardScene = self->_medusaKeyboardScene;
  self->_medusaKeyboardScene = 0;

  [(SBMainSwitcherControllerCoordinator *)self _updateKeyboardHomeAffordanceAssertion];
}

- (id)_medusaKeyboardSceneHandle
{
  windowSceneManager = [SBApp windowSceneManager];
  activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];

  sceneManager = [activeDisplayWindowScene sceneManager];
  v6 = sceneManager;
  if (self->_medusaKeyboardScene)
  {
    v7 = [sceneManager existingSceneHandleForScene:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_updateKeyboardHomeAffordanceAssertion
{
  _shouldTakeKeyboardHomeAffordanceAssertion = [(SBMainSwitcherControllerCoordinator *)self _shouldTakeKeyboardHomeAffordanceAssertion];
  keyboardHomeAffordanceAssertion = self->_keyboardHomeAffordanceAssertion;
  if (_shouldTakeKeyboardHomeAffordanceAssertion)
  {
    if (keyboardHomeAffordanceAssertion)
    {
      return;
    }

    windowSceneManager = [SBApp windowSceneManager];
    activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];

    v6 = [(SBMainSwitcherControllerCoordinator *)self switcherControllerForWindowScene:activeDisplayWindowScene];
    switcherWindow = [v6 switcherWindow];
    v8 = [SBKeyboardHomeAffordanceAssertion assertionForGestureWindow:switcherWindow];
    v9 = self->_keyboardHomeAffordanceAssertion;
    self->_keyboardHomeAffordanceAssertion = v8;

    v10 = activeDisplayWindowScene;
  }

  else
  {
    if (!keyboardHomeAffordanceAssertion)
    {
      return;
    }

    [(SBKeyboardHomeAffordanceAssertion *)keyboardHomeAffordanceAssertion invalidate];
    v10 = self->_keyboardHomeAffordanceAssertion;
    self->_keyboardHomeAffordanceAssertion = 0;
  }
}

- (BOOL)_shouldTakeKeyboardHomeAffordanceAssertion
{
  v3 = SBFEffectiveHomeButtonType();
  isEnabled = [(SBFHomeGrabberSettings *)self->_homeGrabberSettings isEnabled];
  result = 0;
  if (v3 == 2 && isEnabled)
  {
    if (self->_isKeyboardShowing && self->_medusaKeyboardScene)
    {
      return ![(SBMainSwitcherControllerCoordinator *)self _keyboardIsSuppressedForMedusaKeyboardScene];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)_releaseKeyboardFocus
{
  [(BSInvalidatable *)self->_lockKeyboardFocusAssertion invalidate];
  lockKeyboardFocusAssertion = self->_lockKeyboardFocusAssertion;
  self->_lockKeyboardFocusAssertion = 0;
}

- (BOOL)handleHomeButtonDoublePress
{
  _embeddedDisplaySwitcherController = [(SBMainSwitcherControllerCoordinator *)self _embeddedDisplaySwitcherController];
  handleHomeButtonDoublePress = [_embeddedDisplaySwitcherController handleHomeButtonDoublePress];

  return handleHomeButtonDoublePress;
}

- (id)_activeDisplaySwitcherController
{
  windowSceneManager = [SBApp windowSceneManager];
  activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];

  v5 = [(SBMainSwitcherControllerCoordinator *)self switcherControllerForWindowScene:activeDisplayWindowScene];

  return v5;
}

void __53__SBMainSwitcherControllerCoordinator_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = [[SBMainSwitcherControllerCoordinator alloc] _init];
  v3 = __sharedInstance_2;
  __sharedInstance_2 = v2;

  *(*(*(a1 + 32) + 8) + 24) = 1;
}

- (id)_init
{
  v69[2] = *MEMORY[0x277D85DE8];
  v68.receiver = self;
  v68.super_class = SBMainSwitcherControllerCoordinator;
  v2 = [(SBMainSwitcherControllerCoordinator *)&v68 init];
  if (v2)
  {
    v3 = objc_alloc_init(SBAppSwitcherModel);
    mainSwitcherModel = v2->_mainSwitcherModel;
    v2->_mainSwitcherModel = v3;

    [(SBAppSwitcherModel *)v2->_mainSwitcherModel setDelegate:v2];
    _recentAppLayoutsController = [(SBAppSwitcherModel *)v2->_mainSwitcherModel _recentAppLayoutsController];
    layoutAttributesProvider = [_recentAppLayoutsController layoutAttributesProvider];
    v7 = objc_opt_class();
    v8 = layoutAttributesProvider;
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    [v10 setDelegate:v2];
    array = [MEMORY[0x277CBEB18] array];
    servicesRemovedWhileAwayFromSwitcher = v2->_servicesRemovedWhileAwayFromSwitcher;
    v2->_servicesRemovedWhileAwayFromSwitcher = array;

    v13 = objc_opt_new();
    liveDisplayItemsBeingTerminated = v2->_liveDisplayItemsBeingTerminated;
    v2->_liveDisplayItemsBeingTerminated = v13;

    v15 = +[SBDefaults localDefaults];
    appSwitcherDefaults = [v15 appSwitcherDefaults];
    defaults = v2->_defaults;
    v2->_defaults = appSwitcherDefaults;

    v18 = +[SBAppSwitcherDomain rootSettings];
    settings = v2->_settings;
    v2->_settings = v18;

    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    coordinatedSwitcherControllers = v2->_coordinatedSwitcherControllers;
    v2->_coordinatedSwitcherControllers = weakObjectsPointerArray;

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    switcherControllersByWindowScene = v2->_switcherControllersByWindowScene;
    v2->_switcherControllersByWindowScene = weakToStrongObjectsMapTable;

    weakToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    lastMeaningfullyDifferentLayoutStatesByWindowScene = v2->_lastMeaningfullyDifferentLayoutStatesByWindowScene;
    v2->_lastMeaningfullyDifferentLayoutStatesByWindowScene = weakToStrongObjectsMapTable2;

    v26 = objc_alloc_init(MEMORY[0x277CCA940]);
    draggingAppLayouts = v2->_draggingAppLayouts;
    v2->_draggingAppLayouts = v26;

    v28 = objc_alloc_init(SBSwitcherDemoFilteringController);
    demoFilteringController = v2->_demoFilteringController;
    v2->_demoFilteringController = v28;

    [(SBSwitcherDemoFilteringController *)v2->_demoFilteringController addObserver:v2];
    v30 = [SBSwitcherDemoCommandsServer alloc];
    _recentAppLayoutsController2 = [(SBAppSwitcherModel *)v2->_mainSwitcherModel _recentAppLayoutsController];
    v32 = [(SBSwitcherDemoCommandsServer *)v30 initWithRecentAppLayouts:_recentAppLayoutsController2 demoFilteringController:v2->_demoFilteringController];
    demoCommandsServer = v2->_demoCommandsServer;
    v2->_demoCommandsServer = v32;

    v34 = objc_alloc_init(SBApplicationUserQuitMonitorServer);
    userQuitMonitorServer = v2->_userQuitMonitorServer;
    v2->_userQuitMonitorServer = v34;

    [(SBMainSwitcherControllerCoordinator *)v2 _warmAppInfoForAppsInList];
    v36 = +[(SBWorkspace *)SBMainWorkspace];
    keyboardFocusController = [v36 keyboardFocusController];
    keyboardFocusController = v2->_keyboardFocusController;
    v2->_keyboardFocusController = keyboardFocusController;

    v39 = [(SBKeyboardFocusControlling *)v2->_keyboardFocusController addKeyboardFocusObserver:v2];
    keyboardFocusObserver = v2->_keyboardFocusObserver;
    v2->_keyboardFocusObserver = v39;

    v41 = objc_alloc_init(MEMORY[0x277CBEB38]);
    recentSwipeUpToKillTimestampsForAppLayouts = v2->_recentSwipeUpToKillTimestampsForAppLayouts;
    v2->_recentSwipeUpToKillTimestampsForAppLayouts = v41;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__applicationDidExit_ name:@"SBApplicationDidExitNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__noteUIWillLock name:@"SBLockScreenUIWillLockNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__noteUIWillLock name:@"SBRestartManagerWillRebootNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__switcherServiceAdded_ name:@"AppSwitcherServiceAdded" object:0];
    [defaultCenter addObserver:v2 selector:sel__switcherServiceRemoved_ name:@"AppSwitcherServiceRemoved" object:0];
    [defaultCenter addObserver:v2 selector:sel__continuityAppSuggestionChanged_ name:@"SBSuggestedAppChangedNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__switcherModelChanged_ name:@"SBAppSwitcherModelDidChangeNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];
    [defaultCenter addObserver:v2 selector:sel__keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
    [defaultCenter addObserver:v2 selector:sel__appProtectionHiddenAppsDidChange_ name:@"SBAppProtectionCoordinatorHiddenAppsDidChange" object:0];
    rootSettings = [MEMORY[0x277D65E80] rootSettings];
    homeGrabberSettings = v2->_homeGrabberSettings;
    v2->_homeGrabberSettings = rootSettings;

    v46 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:512 valueOptions:0];
    displayLayoutTransitionsBySwitcherController = v2->_displayLayoutTransitionsBySwitcherController;
    v2->_displayLayoutTransitionsBySwitcherController = v46;

    v48 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:512 valueOptions:0];
    homeScreenDisplayLayoutElementAssertionsBySwitcherController = v2->_homeScreenDisplayLayoutElementAssertionsBySwitcherController;
    v2->_homeScreenDisplayLayoutElementAssertionsBySwitcherController = v48;

    v50 = objc_alloc(MEMORY[0x277D66A50]);
    v51 = [v50 initWithIdentifier:*MEMORY[0x277D66F20]];
    homeScreenDisplayLayoutElement = v2->_homeScreenDisplayLayoutElement;
    v2->_homeScreenDisplayLayoutElement = v51;

    [(SBSDisplayLayoutElement *)v2->_homeScreenDisplayLayoutElement setLayoutRole:1];
    [(SBSDisplayLayoutElement *)v2->_homeScreenDisplayLayoutElement setLevel:0];
    [(SBSDisplayLayoutElement *)v2->_homeScreenDisplayLayoutElement setFillsDisplayBounds:1];
    v53 = [[SBSwitcherCaptureApplicationActivationWatchdog alloc] initWithDelegate:v2];
    captureApplicationWatchdog = v2->_captureApplicationWatchdog;
    v2->_captureApplicationWatchdog = v53;

    v2->_outstandingAccidentalActivationMitigationTransitionCount = 0;
    if (([(SBAppSwitcherDefaults *)v2->_defaults hasEverUsedMultiAppConfiguration]& 1) == 0)
    {
      recentAppLayouts = [(SBMainSwitcherControllerCoordinator *)v2 recentAppLayouts];
      v56 = [recentAppLayouts bs_containsObjectPassingTest:&__block_literal_global_209];

      [(SBAppSwitcherDefaults *)v2->_defaults setHasEverUsedMultiAppConfiguration:v56];
    }

    lastMultitaskingModeSwitchDate = [(SBAppSwitcherDefaults *)v2->_defaults lastMultitaskingModeSwitchDate];
    if (!lastMultitaskingModeSwitchDate)
    {
      v58 = v2->_defaults;
      date = [MEMORY[0x277CBEAA8] date];
      [(SBAppSwitcherDefaults *)v58 setLastMultitaskingModeSwitchDate:date];
    }

    v60 = v2->_defaults;
    v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"chamoisWindowingEnabled"];
    v69[0] = v61;
    v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:"medusaMultitaskingEnabled"];
    v69[1] = v62;
    v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:2];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __44__SBMainSwitcherControllerCoordinator__init__block_invoke_2;
    v66[3] = &unk_2783A8C18;
    v67 = v2;
    v64 = [(SBAppSwitcherDefaults *)v60 observeDefaults:v63 onQueue:MEMORY[0x277D85CD0] withBlock:v66];
  }

  return v2;
}

BOOL __44__SBMainSwitcherControllerCoordinator__init__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 allItems];
  v3 = [v2 count] > 1;

  return v3;
}

void __44__SBMainSwitcherControllerCoordinator__init__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 136);
  v2 = [MEMORY[0x277CBEAA8] date];
  [v1 setLastMultitaskingModeSwitchDate:v2];
}

- (void)dealloc
{
  v39 = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(SBSwitcherDemoFilteringController *)self->_demoFilteringController removeObserver:self];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  windowSceneManager = [SBApp windowSceneManager];
  connectedWindowScenes = [windowSceneManager connectedWindowScenes];

  v6 = [connectedWindowScenes countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      v9 = 0;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(connectedWindowScenes);
        }

        appInteractionEventSource = [*(*(&v32 + 1) + 8 * v9) appInteractionEventSource];
        [appInteractionEventSource removeObserver:self];

        ++v9;
      }

      while (v7 != v9);
      v7 = [connectedWindowScenes countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v7);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = self->_homeScreenDisplayLayoutElementAssertionsBySwitcherController;
  v12 = [(NSMapTable *)v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(NSMapTable *)self->_homeScreenDisplayLayoutElementAssertionsBySwitcherController objectForKey:*(*(&v28 + 1) + 8 * v15)];
        [v16 invalidate];

        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMapTable *)v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v13);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = self->_displayLayoutTransitionsBySwitcherController;
  v18 = [(NSMapTable *)v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      v21 = 0;
      do
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [(NSMapTable *)self->_displayLayoutTransitionsBySwitcherController objectForKey:*(*(&v24 + 1) + 8 * v21)];
        [v22 invalidate];

        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMapTable *)v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v19);
  }

  [(BSInvalidatable *)self->_keyboardFocusObserver invalidate];
  [(SBKeyboardHomeAffordanceAssertion *)self->_keyboardHomeAffordanceAssertion invalidate];
  [(BSAbsoluteMachTimer *)self->_preventSupplementalSnapshotsInvalidationTimer invalidate];
  [(BSAbsoluteMachTimer *)self->_disableCachingAsynchronousRenderingSurfacesTimer invalidate];
  v23.receiver = self;
  v23.super_class = SBMainSwitcherControllerCoordinator;
  [(SBMainSwitcherControllerCoordinator *)&v23 dealloc];
}

- (BOOL)isAnySwitcherVisible
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__SBMainSwitcherControllerCoordinator_isAnySwitcherVisible__block_invoke;
  v4[3] = &unk_2783B9380;
  v4[4] = &v5;
  [(SBMainSwitcherControllerCoordinator *)self enumerateSwitcherControllersWithBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __59__SBMainSwitcherControllerCoordinator_isAnySwitcherVisible__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 isAnySwitcherVisible];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (void)resetLayoutAttributesWithCompletion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  _recentAppLayoutsController = [(SBAppSwitcherModel *)self->_mainSwitcherModel _recentAppLayoutsController];
  layoutAttributesProvider = [_recentAppLayoutsController layoutAttributesProvider];
  [layoutAttributesProvider updateEntriesWithBlock:&__block_literal_global_119];
  v17 = +[SBApplicationController sharedInstance];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [v17 allApplications];
  v22 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v22)
  {
    v21 = *v36;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v35 + 1) + 8 * i);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v5 = [&unk_28336E658 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v5)
        {
          v6 = *v32;
          do
          {
            for (j = 0; j != v5; ++j)
            {
              if (*v32 != v6)
              {
                objc_enumerationMutation(&unk_28336E658);
              }

              v8 = *(*(&v31 + 1) + 8 * j);
              v9 = [v4 lastWindowLayoutAttributesForDisplayOrdinal:{objc_msgSend(v8, "integerValue")}];
              v10 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:v9];

              [v4 setLastWindowLayoutAttributes:v10 forDisplayOrdinal:{objc_msgSend(v8, "integerValue")}];
            }

            v5 = [&unk_28336E658 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v5);
        }
      }

      v22 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v22);
  }

  coordinatedSwitcherControllers = [(SBMainSwitcherControllerCoordinator *)self coordinatedSwitcherControllers];
  v12 = [coordinatedSwitcherControllers count];
  if (v12 < 1)
  {
    [_recentAppLayoutsController _persistSynchronously];
  }

  else
  {
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v30[3] = 0;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __75__SBMainSwitcherControllerCoordinator_resetLayoutAttributesWithCompletion___block_invoke_124;
    v25[3] = &unk_2783B93C8;
    v28 = v30;
    v29 = v12;
    v26 = _recentAppLayoutsController;
    v27 = completionCopy;
    v13 = MEMORY[0x223D6F7F0](v25);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __75__SBMainSwitcherControllerCoordinator_resetLayoutAttributesWithCompletion___block_invoke_2;
    v23[3] = &unk_2783B93F0;
    v14 = v13;
    v24 = v14;
    [coordinatedSwitcherControllers enumerateObjectsUsingBlock:v23];

    _Block_object_dispose(v30, 8);
  }
}

uint64_t __75__SBMainSwitcherControllerCoordinator_resetLayoutAttributesWithCompletion___block_invoke_124(uint64_t result)
{
  if (++*(*(*(result + 48) + 8) + 24) == *(result + 56))
  {
    v1 = result;
    [*(result + 32) _persistSynchronously];
    result = *(v1 + 40);
    if (result)
    {
      v2 = *(result + 16);

      return v2();
    }
  }

  return result;
}

void __75__SBMainSwitcherControllerCoordinator_resetLayoutAttributesWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBWorkspace mainWorkspace];
  v5 = [v3 windowScene];

  v6 = [v5 _fbsDisplayConfiguration];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__SBMainSwitcherControllerCoordinator_resetLayoutAttributesWithCompletion___block_invoke_3;
  v7[3] = &unk_2783AB528;
  v8 = *(a1 + 32);
  [v4 requestTransitionWithOptions:0 displayConfiguration:v6 builder:v7 validator:0];
}

void __75__SBMainSwitcherControllerCoordinator_resetLayoutAttributesWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:76];
  [v3 setEventLabel:@"ResetLayoutAttributes"];
  [v3 modifyApplicationContext:&__block_literal_global_131_0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__SBMainSwitcherControllerCoordinator_resetLayoutAttributesWithCompletion___block_invoke_5;
  v5[3] = &unk_2783A9C70;
  v6 = *(a1 + 32);
  v4 = [v3 addCompletionHandler:v5];
}

void __75__SBMainSwitcherControllerCoordinator_resetLayoutAttributesWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 previousLayoutState];
  v4 = objc_opt_class();
  v5 = v3;
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

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 elements];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v7 layoutAttributesForElement:v13];
        v15 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:v14];

        v16 = [v13 workspaceEntity];
        [v2 setRequestedLayoutAttributes:v15 forEntity:v16];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }
}

- (id)knownWindowsForAppBundleIdentifier:(id)identifier
{
  v60 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [SBMainSwitcherControllerCoordinator knownWindowsForAppBundleIdentifier:];
  }

  v5 = [(SBAppSwitcherModel *)self->_mainSwitcherModel recentDisplayItemsForBundleIdentifier:identifierCopy includingHiddenAppLayouts:0];
  v6 = v5;
  if (!v5 || (v51 = 0u, v52 = 0u, v49 = 0u, v50 = 0u, (v7 = [v5 countByEnumeratingWithState:&v49 objects:v59 count:16]) == 0))
  {
    v48 = 0;
    goto LABEL_36;
  }

  v8 = v7;
  v44 = 0;
  v48 = 0;
  v9 = *v50;
  selfCopy = self;
  v42 = identifierCopy;
  v39 = *v50;
  v40 = v6;
  do
  {
    v10 = 0;
    v43 = v8;
    do
    {
      if (*v50 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v49 + 1) + 8 * v10);
      type = [v11 type];
      if (type == 5 || type == 0)
      {
        if (!v48)
        {
          v48 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
        }

        uniqueIdentifier = [v11 uniqueIdentifier];
        if (uniqueIdentifier)
        {
          v15 = +[SBApplicationController sharedInstance];
          v16 = [v15 applicationWithBundleIdentifier:identifierCopy];

          v47 = [(SBMainSwitcherControllerCoordinator *)self switcherControllerForDisplayItem:v11];
          windowScene = [v47 windowScene];
          sceneManager = [windowScene sceneManager];
          v19 = [MEMORY[0x277D0ADC0] identityForIdentifier:uniqueIdentifier];
          _fbsDisplayIdentity = [windowScene _fbsDisplayIdentity];
          v45 = v19;
          v21 = [SBApplicationSceneHandleRequest defaultRequestForApplication:v16 sceneIdentity:v19 displayIdentity:_fbsDisplayIdentity];

          v22 = objc_opt_class();
          v46 = sceneManager;
          v23 = [sceneManager fetchOrCreateApplicationSceneHandleForRequest:v21];
          v24 = SBSafeCast(v22, v23);

          if (v24)
          {
            sceneTitle = [v24 sceneTitle];
            v26 = sceneTitle;
            v27 = 0x277CCA000;
            if (!sceneTitle || ![sceneTitle length])
            {
              goto LABEL_24;
            }
          }

          else
          {
            v26 = 0;
            v27 = 0x277CCA000uLL;
LABEL_24:
            if (v44)
            {
              v29 = [*(v27 + 3240) localizedStringWithFormat:@" %i", v44];
            }

            else
            {
              v29 = &stru_283094718;
            }

            v30 = *(v27 + 3240);
            displayName = [v16 displayName];
            v32 = [v30 stringWithFormat:@"%@%@", displayName, v29];

            v44 = (v44 + 1);
            v26 = v32;
          }

          menuBarRecipientScene = [v47 menuBarRecipientScene];
          identifier = [menuBarRecipientScene identifier];
          v35 = [identifier isEqualToString:uniqueIdentifier];
          v36 = MEMORY[0x277CBEC28];
          if (v35)
          {
            v36 = MEMORY[0x277CBEC38];
          }

          v28 = v36;

          v57[0] = @"SBSwitcherCoordinatorOpenWindowForAppTitleUserInfoKey";
          v57[1] = @"SBSwitcherCoordinatorOpenWindowForAppSceneIDUserInfoKey";
          v58[0] = v26;
          v58[1] = uniqueIdentifier;
          v57[2] = @"kSBSwitcherCoordinatorOpenWindowForAppIsMenuBarRecipientKey";
          v58[2] = v28;
          v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:3];
          [v48 addObject:v37];

          self = selfCopy;
          identifierCopy = v42;
          v9 = v39;
          v6 = v40;
          v8 = v43;
        }

        else
        {
          v28 = SBLogAppSwitcher();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v54 = identifierCopy;
            v55 = 2114;
            v56 = v11;
            _os_log_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_DEFAULT, "Error looking up open windows for App: %{public}@. Missing unique identifier on display item: %{public}@", buf, 0x16u);
          }
        }
      }

      ++v10;
    }

    while (v8 != v10);
    v8 = [v6 countByEnumeratingWithState:&v49 objects:v59 count:16];
  }

  while (v8);
LABEL_36:

  return v48;
}

- (void)windowSceneDidConnect:(id)connect
{
  appInteractionEventSource = [connect appInteractionEventSource];
  [appInteractionEventSource addObserver:self];
}

- (void)windowSceneDidDisconnect:(id)disconnect
{
  appInteractionEventSource = [disconnect appInteractionEventSource];
  [appInteractionEventSource removeObserver:self];
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context
{
  v170 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  contextCopy = context;
  toLayoutState = [contextCopy toLayoutState];
  fromLayoutState = [contextCopy fromLayoutState];
  windowScene = [coordinatorCopy windowScene];
  v116 = [(SBMainSwitcherControllerCoordinator *)self switcherControllerForWindowScene:windowScene];
  if ([toLayoutState isMeaningfullyDifferentFromLayoutState:fromLayoutState])
  {
    [(NSMapTable *)self->_lastMeaningfullyDifferentLayoutStatesByWindowScene setObject:fromLayoutState forKey:windowScene];
  }

  applicationTransitionContext = [contextCopy applicationTransitionContext];
  request = [applicationTransitionContext request];
  appLayout = [fromLayoutState appLayout];
  appLayout2 = [toLayoutState appLayout];
  source = [request source];
  unlockedEnvironmentMode = [toLayoutState unlockedEnvironmentMode];
  elements = [toLayoutState elements];
  v105 = [elements count] == 0;

  isFloatingSwitcherVisible = [toLayoutState isFloatingSwitcherVisible];
  v108 = [fromLayoutState unlockedEnvironmentMode] != 2;
  elements2 = [fromLayoutState elements];
  v103 = [elements2 count] != 0;

  elements3 = [fromLayoutState elements];
  v101 = [elements3 count] == 0;

  source2 = [request source];
  bundleIDShowingAppExpose = [fromLayoutState bundleIDShowingAppExpose];
  if (bundleIDShowingAppExpose)
  {
    v102 = 0;
  }

  else
  {
    bundleIDShowingAppExpose2 = [toLayoutState bundleIDShowingAppExpose];
    v102 = bundleIDShowingAppExpose2 != 0;
  }

  v110 = SBMainWorkspaceMapInternalTransitionSourceToExternalTransitionSource([request source]);
  [(SBMainSwitcherControllerCoordinator *)self _beginDisplayLayoutTransitionForSwitcherController:v116 reason:v110];
  if (source == 70)
  {
    [(SBAppSwitcherModel *)self->_mainSwitcherModel takeAppLayoutsSnapshot];
    [(SBMainSwitcherControllerCoordinator *)self _takeLayoutStateSnapshotForWindowScene:windowScene withPreviousLayoutState:fromLayoutState];
  }

  else if (!self->_outstandingAccidentalActivationMitigationTransitionCount)
  {
    [(SBAppSwitcherModel *)self->_mainSwitcherModel clearAppLayoutsSnapshot];
    [(SBMainSwitcherControllerCoordinator *)self _clearLayoutStateSnapshotForWindowScene:windowScene];
  }

  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  obj = [applicationTransitionContext entitiesWithRemovalContexts];
  v10 = [obj countByEnumeratingWithState:&v160 objects:v169 count:16];
  if (v10)
  {
    v124 = 0;
    v125 = 0;
    v11 = *v161;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v161 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v160 + 1) + 8 * i);
        v14 = [applicationTransitionContext removalContextForEntity:v13];
        displayItemRepresentation = [v13 displayItemRepresentation];
        v16 = [(SBMainSwitcherControllerCoordinator *)self _switcherDisplayItemRemovalIntentTypeForEntity:v13 removalContext:v14];
        if (v16)
        {
          v17 = v124;
          if (!v124)
          {
            v17 = objc_alloc_init(SBSwitcherDisplayItemRemovalResolutionRequest);
          }

          v124 = v17;
          [(SBSwitcherDisplayItemRemovalResolutionRequest *)v17 setRemovalIntentType:v16 forDisplayItem:displayItemRepresentation];
          strongToStrongObjectsMapTable = v125;
          if (!v125)
          {
            strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
          }

          v125 = strongToStrongObjectsMapTable;
          [strongToStrongObjectsMapTable setObject:displayItemRepresentation forKey:v13];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v160 objects:v169 count:16];
    }

    while (v10);

    if (!v124)
    {
      v124 = 0;
      goto LABEL_58;
    }

    obj = [(SBMainSwitcherControllerCoordinator *)self _resultsForDisplayItemRemovalResolutionRequest:v124 preferredAppLayoutForRemovalAnimationIfAny:0];
    v19 = [(SBMainSwitcherControllerCoordinator *)self _switcherModelRemovalResultsForDisplayItemRemovalResolutionRequest:v124];
    activeTransitionModelRemovalResults = self->_activeTransitionModelRemovalResults;
    self->_activeTransitionModelRemovalResults = v19;

    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    appLayouts = [(SBSwitcherModelRemovalResults *)self->_activeTransitionModelRemovalResults appLayouts];
    v22 = [appLayouts countByEnumeratingWithState:&v156 objects:v168 count:16];
    if (v22)
    {
      v23 = *v157;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v157 != v23)
          {
            objc_enumerationMutation(appLayouts);
          }

          [(SBSwitcherModelRemovalResults *)self->_activeTransitionModelRemovalResults executeActionForAppLayout:*(*(&v156 + 1) + 8 * j)];
        }

        v22 = [appLayouts countByEnumeratingWithState:&v156 objects:v168 count:16];
      }

      while (v22);
    }

    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    v125 = v125;
    v120 = [v125 countByEnumeratingWithState:&v152 objects:v167 count:16];
    if (v120)
    {
      v25 = 0;
      v119 = *v153;
      v26 = v125;
      do
      {
        v27 = 0;
        do
        {
          if (*v153 != v119)
          {
            v28 = v27;
            objc_enumerationMutation(v26);
            v26 = v125;
            v27 = v28;
          }

          v121 = v27;
          v29 = *(*(&v152 + 1) + 8 * v27);
          v30 = [v26 objectForKey:v29];
          v31 = [applicationTransitionContext removalContextForEntity:v29];
          v32 = [obj actionsForDisplayItem:v30];
          v150 = 0u;
          v151 = 0u;
          v148 = 0u;
          v149 = 0u;
          v33 = v32;
          v34 = [v33 countByEnumeratingWithState:&v148 objects:v166 count:16];
          if (v34)
          {
            v35 = *v149;
            do
            {
              for (k = 0; k != v34; ++k)
              {
                if (*v149 != v35)
                {
                  objc_enumerationMutation(v33);
                }

                appLayout3 = [*(*(&v148 + 1) + 8 * k) appLayout];
                appLayouts2 = [(SBSwitcherModelRemovalResults *)self->_activeTransitionModelRemovalResults appLayouts];
                v39 = [appLayouts2 containsObject:appLayout3];

                if (v39)
                {
                  animationStyle = [v31 animationStyle];
                  if ((animationStyle - 1) >= 3)
                  {
                    v41 = 0;
                  }

                  else
                  {
                    v41 = animationStyle;
                  }

                  v42 = [[SBTransitionSwitcherModifierRemovalContext alloc] initWithAnimationStyle:v41 displayItem:v30];
                  if (!v25)
                  {
                    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
                  }

                  [v25 setObject:v42 forKey:appLayout3];
                }
              }

              v34 = [v33 countByEnumeratingWithState:&v148 objects:v166 count:16];
            }

            while (v34);
          }

          v27 = v121 + 1;
          v26 = v125;
        }

        while (v121 + 1 != v120);
        v120 = [v125 countByEnumeratingWithState:&v152 objects:v167 count:16];
        v26 = v125;
      }

      while (v120);
    }

    else
    {
      v25 = 0;
      v26 = v125;
    }

    objc_storeStrong(&self->_activeTransitionModelRemovalAppLayoutToRemovalContext, v25);
  }

  else
  {
    v124 = 0;
    v125 = 0;
  }

LABEL_58:
  v43 = v103 && v108;
  if (!((unlockedEnvironmentMode == 2) | isFloatingSwitcherVisible & 1))
  {
    if (SBPeekConfigurationIsValid([fromLayoutState peekConfiguration]))
    {
      v49 = !SBPeekConfigurationIsValid([toLayoutState peekConfiguration]);
      if (v105 || unlockedEnvironmentMode == 2)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v49 = 0;
      if (v105 || unlockedEnvironmentMode == 2)
      {
        goto LABEL_80;
      }
    }

    if (source != 11 && source != 12 && source != 27 && v43)
    {
      elements4 = [toLayoutState elements];
      elements5 = [fromLayoutState elements];
      if ([elements4 isEqual:elements5] & 1 | (source2 == 15) || ((v49 | -[SBMainSwitcherControllerCoordinator _isPerformingModelTransitionForReplacementAppLayout:](self, "_isPerformingModelTransitionForReplacementAppLayout:", appLayout2)) & 1) != 0 || source == 52 || source == 35)
      {

LABEL_75:
        goto LABEL_76;
      }

      appLayouts3 = [(SBSwitcherModelRemovalResults *)self->_activeTransitionModelRemovalResults appLayouts];
      v94 = [appLayouts3 containsObject:appLayout];

      if ((v94 & 1) == 0 && source != 63 && source != 71)
      {
        elements4 = [v116 windowManagementContext];
        if ([elements4 isFlexibleWindowingEnabled] && (objc_msgSend(elements4, "isAutomaticStageCreationEnabled") & 1) == 0)
        {
          _desktopSpaceItems = [v116 _desktopSpaceItems];
          if ([_desktopSpaceItems count])
          {
            allItems = [appLayout allItems];
            v144[0] = MEMORY[0x277D85DD0];
            v144[1] = 3221225472;
            v144[2] = __112__SBMainSwitcherControllerCoordinator_layoutStateTransitionCoordinator_transitionDidBeginWithTransitionContext___block_invoke;
            v144[3] = &unk_2783B9418;
            v145 = appLayout2;
            v146 = _desktopSpaceItems;
            v147 = v116;
            v97 = [allItems bs_filter:v144];

            v142[0] = MEMORY[0x277D85DD0];
            v142[1] = 3221225472;
            v142[2] = __112__SBMainSwitcherControllerCoordinator_layoutStateTransitionCoordinator_transitionDidBeginWithTransitionContext___block_invoke_2;
            v142[3] = &unk_2783A8C90;
            v98 = v97;
            v143 = v98;
            v99 = [appLayout appLayoutWithItemsPassingTest:v142];

            appLayout = v99;
          }
        }

        if (appLayout)
        {
          [(SBMainSwitcherControllerCoordinator *)self _addAppLayoutToFront:?];
        }

        goto LABEL_75;
      }
    }

LABEL_76:
    if ([appLayout2 type] != 4)
    {
      contentViewController = [v116 contentViewController];
      bestAppSuggestion = [contentViewController bestAppSuggestion];
      if (bestAppSuggestion)
      {
        v54 = +[SBAppSuggestionManager sharedInstance];
        [v54 noteNotActivatingForAppSuggestion:bestAppSuggestion fromSource:1];
      }
    }

LABEL_80:
    peekConfiguration = [fromLayoutState peekConfiguration];
    v56 = SBPeekConfigurationIsValid([toLayoutState peekConfiguration]) && !SBPeekConfigurationIsValid(peekConfiguration);
    if (v102 && (source == 33 || source == 51))
    {
      [(SBMainSwitcherControllerCoordinator *)self _lockKeyboardFocusForSwitcherController:v116];
      if (!v56)
      {
        goto LABEL_97;
      }
    }

    else
    {
      if (!v56)
      {
LABEL_97:
        v61 = 0;
        v58 = 0;
        goto LABEL_98;
      }

      [(SBMainSwitcherControllerCoordinator *)self _lockKeyboardFocusForSwitcherController:v116];
    }

    v57 = [appLayout2 itemForLayoutRole:1];
    v58 = v57 != 0;

    v59 = [appLayout2 itemForLayoutRole:1];
    if (v59)
    {
      v60 = 1;
    }

    else
    {
      v60 = appLayout == 0;
    }

    v61 = !v60;

LABEL_98:
    v62 = +[SBDefaults localDefaults];
    appSwitcherDefaults = [v62 appSwitcherDefaults];

    if (v58)
    {
      if ([appSwitcherDefaults shouldShowSplitPeekEducation])
      {
        [appSwitcherDefaults setShouldShowSplitPeekEducation:0];
        [v116 setIdleTouchAwarenessClientEnabled:0];
        [v116 _presentMedusaEducationBanner];
LABEL_108:
        suspendWallpaperAnimationAssertion = [(SBMainSwitcherControllerCoordinator *)self suspendWallpaperAnimationAssertion];
        [suspendWallpaperAnimationAssertion invalidate];

        [(SBMainSwitcherControllerCoordinator *)self setSuspendWallpaperAnimationAssertion:0];
        goto LABEL_109;
      }

      if ((v61 & 1) == 0)
      {
LABEL_107:
        [v116 setIdleTouchAwarenessClientEnabled:1];
        goto LABEL_108;
      }
    }

    else if (!v61)
    {
      if (v49)
      {
        [v116 _invalidateMedusaEducationBannerTimer];
      }

      goto LABEL_108;
    }

    if ([appSwitcherDefaults shouldShowSlideOverPeekEducation])
    {
      [appSwitcherDefaults setShouldShowSlideOverPeekEducation:0];
      [v116 setIdleTouchAwarenessClientEnabled:0];
      [v116 _presentMedusaEducationBanner];
      goto LABEL_108;
    }

    goto LABEL_107;
  }

  if (unlockedEnvironmentMode == 2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SBUIAppSwitcherWillRevealNotification" object:0];
  }

  v45 = +[SBReachabilityManager sharedInstance];
  [v45 deactivateReachability];

  [(SBMainSwitcherControllerCoordinator *)self _lockKeyboardFocusForSwitcherController:v116];
  suspendWallpaperAnimationAssertion2 = [(SBMainSwitcherControllerCoordinator *)self suspendWallpaperAnimationAssertion];
  [suspendWallpaperAnimationAssertion2 invalidate];

  v47 = +[SBWallpaperController sharedInstance];
  v48 = [v47 suspendWallpaperAnimationForReason:@"kSBAppSwitcherWallpaperAnimationDisablingReason"];
  [(SBMainSwitcherControllerCoordinator *)self setSuspendWallpaperAnimationAssertion:v48];

  [(SBMainSwitcherControllerCoordinator *)self _updateBestAppSuggestion];
LABEL_109:
  if (([applicationTransitionContext animationDisabled] & 1) == 0)
  {
    v65 = [MEMORY[0x277CBEB58] set];
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    elements6 = [fromLayoutState elements];
    v67 = [elements6 countByEnumeratingWithState:&v138 objects:v165 count:16];
    if (v67)
    {
      v68 = *v139;
      do
      {
        for (m = 0; m != v67; ++m)
        {
          if (*v139 != v68)
          {
            objc_enumerationMutation(elements6);
          }

          uniqueIdentifier = [*(*(&v138 + 1) + 8 * m) uniqueIdentifier];
          [v65 addObject:uniqueIdentifier];
        }

        v67 = [elements6 countByEnumeratingWithState:&v138 objects:v165 count:16];
      }

      while (v67);
    }

    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    elements7 = [toLayoutState elements];
    v72 = [elements7 countByEnumeratingWithState:&v134 objects:v164 count:16];
    if (v72)
    {
      v73 = *v135;
      do
      {
        for (n = 0; n != v72; ++n)
        {
          if (*v135 != v73)
          {
            objc_enumerationMutation(elements7);
          }

          uniqueIdentifier2 = [*(*(&v134 + 1) + 8 * n) uniqueIdentifier];
          [v65 removeObject:uniqueIdentifier2];
        }

        v72 = [elements7 countByEnumeratingWithState:&v134 objects:v164 count:16];
      }

      while (v72);
    }

    if ([v65 count])
    {
      if (source == 11)
      {
        v76 = 0;
      }

      else
      {
        v76 = 5;
      }

      v77 = +[SBSceneManagerCoordinator sharedInstance];
      sceneDeactivationManager = [v77 sceneDeactivationManager];
      v79 = [sceneDeactivationManager newAssertionWithReason:v76];
      deactivatingScenesResignActiveAssertion = self->_deactivatingScenesResignActiveAssertion;
      self->_deactivatingScenesResignActiveAssertion = v79;

      v81 = self->_deactivatingScenesResignActiveAssertion;
      v132[0] = MEMORY[0x277D85DD0];
      v132[1] = 3221225472;
      v132[2] = __112__SBMainSwitcherControllerCoordinator_layoutStateTransitionCoordinator_transitionDidBeginWithTransitionContext___block_invoke_3;
      v132[3] = &unk_2783ADD00;
      v133 = v65;
      [(UIApplicationSceneDeactivationAssertion *)v81 acquireWithPredicate:v132 transitionContext:0];
    }
  }

  [v116 _updateDisplayLayoutElementForLayoutState:toLayoutState];
  if (source != 11 && (v101 && v108 || !v105 && unlockedEnvironmentMode != 2 && (v43 & 1) != 0 && appLayout != appLayout2))
  {
    [v116 _updateContentViewInterfaceOrientation:{objc_msgSend(toLayoutState, "interfaceOrientation")}];
  }

  v128 = 0;
  v129 = &v128;
  v130 = 0x2020000000;
  v131 = 0;
  applicationSceneEntities = [applicationTransitionContext applicationSceneEntities];
  v127[0] = MEMORY[0x277D85DD0];
  v127[1] = 3221225472;
  v127[2] = __112__SBMainSwitcherControllerCoordinator_layoutStateTransitionCoordinator_transitionDidBeginWithTransitionContext___block_invoke_4;
  v127[3] = &unk_2783A9D88;
  v127[4] = &v128;
  [applicationSceneEntities enumerateObjectsUsingBlock:v127];

  if (*(v129 + 24) == 1)
  {
    v83 = +[SBWallpaperController sharedInstance];
    [v83 activateOrientationSource:1];
  }

  else
  {
    v83 = +[SBWallpaperController sharedInstance];
    [v83 deactivateOrientationSource:1];
  }

  [(SBMainSwitcherControllerCoordinator *)self _evaluateAsynchronousRenderingEnablement];
  layoutStateProvider = [windowScene layoutStateProvider];
  [layoutStateProvider setLayoutState:toLayoutState];

  layoutStateProvider2 = [windowScene layoutStateProvider];
  [layoutStateProvider2 setPreviousLayoutState:fromLayoutState];

  appLayout4 = [toLayoutState appLayout];
  layoutAttributesMap = [toLayoutState layoutAttributesMap];
  _recentAppLayoutsController = [(SBAppSwitcherModel *)self->_mainSwitcherModel _recentAppLayoutsController];
  layoutAttributesProvider = [_recentAppLayoutsController layoutAttributesProvider];

  displayOrdinal = [toLayoutState displayOrdinal];
  interfaceOrientation = [toLayoutState interfaceOrientation];
  if ((interfaceOrientation - 1) < 2)
  {
    v92 = 1;
  }

  else
  {
    v92 = 2 * ((interfaceOrientation - 3) < 2);
  }

  [layoutAttributesProvider updateLayoutAttributesMap:layoutAttributesMap forAppLayout:appLayout4 displayOrdinal:displayOrdinal orientation:v92];
  [(SBMainSwitcherControllerCoordinator *)self _updateHomeScreenDisplayLayoutElementForLayoutState:toLayoutState switcherController:v116];

  _Block_object_dispose(&v128, 8);
}

uint64_t __112__SBMainSwitcherControllerCoordinator_layoutStateTransitionCoordinator_transitionDidBeginWithTransitionContext___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if ([a1[4] containsItem:v3] & 1) != 0 || (objc_msgSend(a1[5], "containsObject:", v3))
  {
    v4 = 0;
  }

  else
  {
    v4 = [a1[6] _isDisplayItemFullScreen:v3 preferredAttributes:0] ^ 1;
  }

  return v4;
}

uint64_t __112__SBMainSwitcherControllerCoordinator_layoutStateTransitionCoordinator_transitionDidBeginWithTransitionContext___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

void __112__SBMainSwitcherControllerCoordinator_layoutStateTransitionCoordinator_transitionDidBeginWithTransitionContext___block_invoke_4(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  if ([v10 isDeviceApplicationSceneEntity] && (objc_msgSend(v10, "deviceApplicationSceneEntity"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "sceneHandle"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isTranslucent"), v6, v5, (v7 & 1) != 0) || objc_msgSend(v10, "isDeviceApplicationSceneEntity") && (objc_msgSend(v10, "sceneHandle"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "wantsEnhancedWindowingEnabled"), v8, v9))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (void)switcherContentController:(id)controller layoutStateTransitionDidEndWithTransitionContext:(id)context
{
  controllerCopy = controller;
  contextCopy = context;
  if (self->_activeTransitionModelRemovalResults)
  {
    [(SBMainSwitcherControllerCoordinator *)self _performSceneDestructionForModelRemovalResults:?];
    activeTransitionModelRemovalResults = self->_activeTransitionModelRemovalResults;
    self->_activeTransitionModelRemovalResults = 0;
  }

  activeTransitionModelRemovalAppLayoutToRemovalContext = self->_activeTransitionModelRemovalAppLayoutToRemovalContext;
  self->_activeTransitionModelRemovalAppLayoutToRemovalContext = 0;

  v10 = objc_opt_class();
  toLayoutState = [contextCopy toLayoutState];
  v12 = SBSafeCast(v10, toLayoutState);

  fromLayoutState = [contextCopy fromLayoutState];
  if (([contextCopy isInterrupted] & 1) == 0 && (objc_msgSend(fromLayoutState, "isEqual:", v12) & 1) == 0 && objc_msgSend(v12, "unlockedEnvironmentMode") == 3)
  {
    appLayout = [v12 appLayout];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __114__SBMainSwitcherControllerCoordinator_switcherContentController_layoutStateTransitionDidEndWithTransitionContext___block_invoke;
    v15[3] = &unk_2783AE1C8;
    v15[4] = self;
    [appLayout enumerate:v15];
  }
}

void __114__SBMainSwitcherControllerCoordinator_switcherContentController_layoutStateTransitionDidEndWithTransitionContext___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[SBApplicationController sharedInstance];
  v6 = [v4 bundleIdentifier];

  v12 = [v5 applicationWithBundleIdentifier:v6];

  v7 = [MEMORY[0x277D0AAC0] sharedInstance];
  v8 = [v12 processState];
  v9 = [v7 processForPID:{objc_msgSend(v8, "pid")}];

  if ([v9 isRunning])
  {
    v10 = [v12 info];
    v11 = [v9 handle];
    [*(a1 + 32) _activateBetaLaunchHandlesIfNeededWithAppInfo:v10 processHandle:v11];
    [*(a1 + 32) _presentStoreKitSheetIfNeededWithAppInfo:v10 processHandle:v11];
    [*(a1 + 32) _requestAutomaticUpdateAuthorizationIfNecessaryWithAppInfo:v10 processHandle:v11];
  }
}

- (void)_activateBetaLaunchHandlesIfNeededWithAppInfo:(id)info processHandle:(id)handle
{
  handleCopy = handle;
  if ([info isBeta])
  {
    if (!self->_activeBetaLaunchHandles)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
      activeBetaLaunchHandles = self->_activeBetaLaunchHandles;
      self->_activeBetaLaunchHandles = v7;
    }

    v9 = [objc_alloc(MEMORY[0x277D6F1E0]) initWithProcessHandle:handleCopy];
    [v9 setActivationDelegate:self];
    [(NSMutableSet *)self->_activeBetaLaunchHandles addObject:v9];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __99__SBMainSwitcherControllerCoordinator__activateBetaLaunchHandlesIfNeededWithAppInfo_processHandle___block_invoke;
    v11[3] = &unk_2783A8C18;
    v12 = v9;
    v10 = v9;
    [(SBMainSwitcherControllerCoordinator *)self _asyncOnStoreAppLaunchUIActivationQueue:v11];
  }
}

- (void)_presentStoreKitSheetIfNeededWithAppInfo:(id)info processHandle:(id)handle
{
  handleCopy = handle;
  if ([info triggersStoreKitMessaging])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __94__SBMainSwitcherControllerCoordinator__presentStoreKitSheetIfNeededWithAppInfo_processHandle___block_invoke;
    v7[3] = &unk_2783A8C18;
    v8 = handleCopy;
    [(SBMainSwitcherControllerCoordinator *)self _asyncOnStoreAppLaunchUIActivationQueue:v7];
  }
}

void __94__SBMainSwitcherControllerCoordinator__presentStoreKitSheetIfNeededWithAppInfo_processHandle___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CEC498] sharedInstance];
  [v2 presentSheetIfNeededForProcessHandle:*(a1 + 32) completion:&__block_literal_global_173];
}

void __94__SBMainSwitcherControllerCoordinator__presentStoreKitSheetIfNeededWithAppInfo_processHandle___block_invoke_2(uint64_t a1, char a2)
{
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __94__SBMainSwitcherControllerCoordinator__presentStoreKitSheetIfNeededWithAppInfo_processHandle___block_invoke_2_cold_1(a2, v3);
  }
}

- (void)_requestAutomaticUpdateAuthorizationIfNecessaryWithAppInfo:(id)info processHandle:(id)handle
{
  handleCopy = handle;
  if ([info requiresAuthorizationForAutoUpdates])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __112__SBMainSwitcherControllerCoordinator__requestAutomaticUpdateAuthorizationIfNecessaryWithAppInfo_processHandle___block_invoke;
    v7[3] = &unk_2783A8C18;
    v8 = handleCopy;
    [(SBMainSwitcherControllerCoordinator *)self _asyncOnStoreAppLaunchUIActivationQueue:v7];
  }
}

void __112__SBMainSwitcherControllerCoordinator__requestAutomaticUpdateAuthorizationIfNecessaryWithAppInfo_processHandle___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CEC4C8] defaultService];
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __112__SBMainSwitcherControllerCoordinator__requestAutomaticUpdateAuthorizationIfNecessaryWithAppInfo_processHandle___block_invoke_2;
  v4[3] = &unk_2783B0F28;
  v5 = v3;
  [v2 requestAutomaticUpdateAuthorizationIfNecessaryForProcessHandle:v5 completion:v4];
}

void __112__SBMainSwitcherControllerCoordinator__requestAutomaticUpdateAuthorizationIfNecessaryWithAppInfo_processHandle___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = SBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __112__SBMainSwitcherControllerCoordinator__requestAutomaticUpdateAuthorizationIfNecessaryWithAppInfo_processHandle___block_invoke_2_cold_1(a1, v3, v4);
    }
  }
}

- (void)_asyncOnStoreAppLaunchUIActivationQueue:(id)queue
{
  queueCopy = queue;
  if (!self->_storeAppLaunchUIActivationQueue)
  {
    v4 = dispatch_queue_create("com.apple.springboard.activateStoreAppLaunchUI", 0);
    storeAppLaunchUIActivationQueue = self->_storeAppLaunchUIActivationQueue;
    self->_storeAppLaunchUIActivationQueue = v4;
  }

  v6 = BSDispatchBlockCreateWithQualityOfService();
  dispatch_async(self->_storeAppLaunchUIActivationQueue, v6);
}

- (CGAffineTransform)switcherContentController:(SEL)controller transformForCardUnderSheetForBoundsSize:(id)size
{
  height = a5.height;
  width = a5.width;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  _centerWindowSheetMetricsCache = [(SBMainSwitcherControllerCoordinator *)self _centerWindowSheetMetricsCache];
  if (_centerWindowSheetMetricsCache)
  {
    v10 = _centerWindowSheetMetricsCache;
    [_centerWindowSheetMetricsCache transformForCardUnderSheetForBoundsSize:{width, height}];
    _centerWindowSheetMetricsCache = v10;
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (id)_centerWindowSheetMetricsCache
{
  sheetMetricsCache = self->_sheetMetricsCache;
  if (!sheetMetricsCache)
  {
    v4 = objc_alloc_init(SBFluidSwitcherSheetMetricsCache);
    v5 = self->_sheetMetricsCache;
    self->_sheetMetricsCache = v4;

    sheetMetricsCache = self->_sheetMetricsCache;
  }

  return sheetMetricsCache;
}

- (void)_focusNewlyAddedApplicationIfNeededTransitioningFromLayoutState:(id)state toLayoutState:(id)layoutState windowScene:(id)scene
{
  v98 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  layoutStateCopy = layoutState;
  sceneCopy = scene;
  v11 = [stateCopy elementWithRole:3];
  v12 = [stateCopy elementWithRole:4];
  v13 = [layoutStateCopy elementWithRole:3];
  v14 = [layoutStateCopy elementWithRole:4];
  v92 = v11;
  v15 = BSEqualObjects();
  v16 = BSEqualObjects();
  v17 = [(SBMainSwitcherControllerCoordinator *)self switcherControllerForWindowScene:sceneCopy];
  v93 = v17;
  if (v16 && (v15 & 1) != 0)
  {
    windowManagementContext = [v17 windowManagementContext];
    isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

    if (isChamoisOrFlexibleWindowing)
    {
      appLayout = [stateCopy appLayout];
      appLayout2 = [layoutStateCopy appLayout];
      allItems = [appLayout2 allItems];
      if (![allItems count])
      {
LABEL_46:

        goto LABEL_47;
      }

      v89 = sceneCopy;
      selfCopy = self;
      allItems2 = [appLayout allItems];
      v25 = allItems;
      v26 = allItems2;
      v91 = v25;
      v27 = [v25 sb_arrayByRemovingObjects:allItems2];

      v87 = appLayout;
      v88 = appLayout2;
      v86 = v27;
      if ([v27 count] == 1)
      {
        firstObject = [v27 firstObject];
        v29 = appLayout2;
        v30 = firstObject;
        v31 = [v29 layoutRoleForItem:firstObject];
        p_isa = &selfCopy->super.isa;
        if (SBLayoutRoleIsValidForSplitView(v31))
        {
          v33 = [layoutStateCopy elementWithRole:v31];
          workspaceEntity = [v33 workspaceEntity];
          applicationSceneEntity = [workspaceEntity applicationSceneEntity];

          sceneHandle = [applicationSceneEntity sceneHandle];
          sceneIfExists = [sceneHandle sceneIfExists];

          v84 = @"added single app to stage";
        }

        else
        {
          v84 = 0;
          sceneIfExists = 0;
        }

        sceneCopy = v89;

        appLayout2 = v88;
LABEL_40:
        v90 = sceneIfExists;
        settings = [sceneIfExists settings];
        isForeground = [settings isForeground];

        allItems = v91;
        if (!isForeground)
        {
LABEL_45:

          appLayout = v87;
          goto LABEL_46;
        }

        windowSceneWithFocus = [p_isa[33] windowSceneWithFocus];
        v78 = windowSceneWithFocus;
        if (v84 != @"update top most app on existing stage" || windowSceneWithFocus && [sceneCopy isEqual:windowSceneWithFocus])
        {
          v79 = +[(SBWorkspace *)SBMainWorkspace];
          keyboardFocusController = [v79 keyboardFocusController];
          [keyboardFocusController userFocusRequestForScene:v90 reason:v84 completion:0];
        }

        else
        {
          v79 = SBLogKeyboardFocus();
          if (!os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_44;
          }

          keyboardFocusController = [sceneCopy _sceneIdentifier];
          *buf = 138543362;
          v97 = keyboardFocusController;
          _os_log_impl(&dword_21ED4E000, v79, OS_LOG_TYPE_DEFAULT, "layout update isn't a sufficient reason to switch the focused window scene to %{public}@", buf, 0xCu);
        }

        allItems = v91;
LABEL_44:

        appLayout2 = v88;
        goto LABEL_45;
      }

      v47 = [v27 count];
      p_isa = &selfCopy->super.isa;
      if (v47)
      {
        displayItemLayoutAttributesProvider = [(SBMainSwitcherControllerCoordinator *)selfCopy displayItemLayoutAttributesProvider];
        interfaceOrientation = [layoutStateCopy interfaceOrientation];
        if ((interfaceOrientation - 1) < 2)
        {
          v50 = 1;
        }

        else
        {
          v50 = 2 * ((interfaceOrientation - 3) < 2);
        }

        v51 = [displayItemLayoutAttributesProvider lastInteractedDisplayItemsInAppLayout:appLayout2 orientation:v50];
        firstObject2 = [v51 firstObject];

        v53 = firstObject2;
        sceneCopy = v89;
        if (v53 && SBLayoutRoleIsValidForSplitView([appLayout2 layoutRoleForItem:v53]))
        {
          sceneManager = [v89 sceneManager];
          v54 = MEMORY[0x277D0ADC0];
          uniqueIdentifier = [v53 uniqueIdentifier];
          v56 = [v54 identityForIdentifier:uniqueIdentifier];
          [sceneManager existingSceneHandleForSceneIdentity:v56];
          v57 = v82 = v53;

          appLayout2 = v88;
          sceneIfExists = [v57 sceneIfExists];

          v53 = v82;
          v84 = @"added multiple apps to stage";
        }

        else
        {
          v84 = 0;
          sceneIfExists = 0;
        }

        goto LABEL_40;
      }

      sceneCopy = v89;
      if (![appLayout2 isEqual:appLayout])
      {
        v84 = 0;
        sceneIfExists = 0;
        goto LABEL_40;
      }

      v83 = p_isa;
      displayItemLayoutAttributesProvider2 = [p_isa displayItemLayoutAttributesProvider];
      interfaceOrientation2 = [layoutStateCopy interfaceOrientation];
      if ((interfaceOrientation2 - 1) < 2)
      {
        v60 = 1;
      }

      else
      {
        v60 = 2 * ((interfaceOrientation2 - 3) < 2);
      }

      v61 = [displayItemLayoutAttributesProvider2 lastInteractedDisplayItemsInAppLayout:appLayout2 orientation:v60];
      firstObject3 = [v61 firstObject];

      v63 = firstObject3;
      if (!firstObject3)
      {
        v84 = 0;
        sceneIfExists = 0;
        goto LABEL_39;
      }

      windowManagementContext2 = [v93 windowManagementContext];
      isFlexibleWindowingEnabled = [windowManagementContext2 isFlexibleWindowingEnabled];

      if (isFlexibleWindowingEnabled)
      {
        if ([v91 count] < 2)
        {
          goto LABEL_34;
        }

        v66 = [v93 _autoLayoutSpaceForAppLayout:appLayout2];
        groups = [v66 groups];
        v94[0] = MEMORY[0x277D85DD0];
        v94[1] = 3221225472;
        v94[2] = __129__SBMainSwitcherControllerCoordinator__focusNewlyAddedApplicationIfNeededTransitioningFromLayoutState_toLayoutState_windowScene___block_invoke;
        v94[3] = &unk_2783B54E0;
        v95 = firstObject3;
        v68 = [groups bs_containsObjectPassingTest:v94];

        if ((v68 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else if (([appLayout2 isSplitConfiguration] & 1) == 0)
      {
LABEL_34:
        sceneManager2 = [v89 sceneManager];
        v70 = MEMORY[0x277D0ADC0];
        v81 = firstObject3;
        uniqueIdentifier2 = [firstObject3 uniqueIdentifier];
        v72 = [v70 identityForIdentifier:uniqueIdentifier2];
        v73 = sceneManager2;
        v74 = [sceneManager2 existingSceneHandleForSceneIdentity:v72];

        sceneIfExists = [v74 sceneIfExists];

        v63 = v81;
        v84 = @"update top most app on existing stage";
        appLayout2 = v88;
LABEL_39:
        p_isa = v83;

        goto LABEL_40;
      }

      v84 = 0;
      sceneIfExists = 0;
      appLayout2 = v88;
      v63 = firstObject3;
      goto LABEL_39;
    }
  }

  else
  {
    if (v16)
    {
      v38 = v13;
    }

    else
    {
      v38 = v14;
    }

    workspaceEntity2 = [v38 workspaceEntity];
    applicationSceneEntity2 = [workspaceEntity2 applicationSceneEntity];

    sceneHandle2 = [applicationSceneEntity2 sceneHandle];
    sceneIfExists2 = [sceneHandle2 sceneIfExists];

    settings2 = [sceneIfExists2 settings];
    isForeground2 = [settings2 isForeground];

    if (isForeground2)
    {
      v45 = +[(SBWorkspace *)SBMainWorkspace];
      keyboardFocusController2 = [v45 keyboardFocusController];
      [keyboardFocusController2 userFocusRequestForScene:sceneIfExists2 reason:@"floating or center app is foreground" completion:0];
    }
  }

LABEL_47:
}

uint64_t __129__SBMainSwitcherControllerCoordinator__focusNewlyAddedApplicationIfNeededTransitioningFromLayoutState_toLayoutState_windowScene___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 displayItemsInGroup];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context
{
  v181 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  contextCopy = context;
  isInterrupted = [contextCopy isInterrupted];
  v121 = contextCopy;
  toLayoutState = [contextCopy toLayoutState];
  fromLayoutState = [v121 fromLayoutState];
  windowScene = [coordinatorCopy windowScene];
  v119 = [(SBMainSwitcherControllerCoordinator *)self switcherControllerForWindowScene:windowScene];
  error = [v121 error];

  if (error)
  {
    v124 = fromLayoutState;

    layoutStateProvider = [windowScene layoutStateProvider];
    [layoutStateProvider setLayoutState:v124];

    layoutStateProvider2 = [windowScene layoutStateProvider];
    [layoutStateProvider2 setPreviousLayoutState:v124];
  }

  else
  {
    v124 = toLayoutState;
  }

  applicationTransitionContext = [v121 applicationTransitionContext];
  request = [applicationTransitionContext request];
  source = [request source];
  previousLayoutState = [applicationTransitionContext previousLayoutState];
  appLayout = [previousLayoutState appLayout];

  previousLayoutState2 = [applicationTransitionContext previousLayoutState];
  floatingAppLayout = [previousLayoutState2 floatingAppLayout];

  layoutState = [applicationTransitionContext layoutState];
  appLayout2 = [layoutState appLayout];

  layoutState2 = [applicationTransitionContext layoutState];
  floatingAppLayout2 = [layoutState2 floatingAppLayout];

  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  allItems = [appLayout allItems];
  v16 = [allItems countByEnumeratingWithState:&v162 objects:v180 count:16];
  if (v16)
  {
    v17 = *v163;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v163 != v17)
        {
          objc_enumerationMutation(allItems);
        }

        v19 = *(*(&v162 + 1) + 8 * i);
        if (([appLayout2 containsItem:v19] & 1) == 0 && -[NSMutableSet containsObject:](self->_liveDisplayItemsBeingTerminated, "containsObject:", v19))
        {
          [(NSMutableSet *)self->_liveDisplayItemsBeingTerminated removeObject:v19];
        }
      }

      v16 = [allItems countByEnumeratingWithState:&v162 objects:v180 count:16];
    }

    while (v16);
  }

  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  allItems2 = [floatingAppLayout allItems];
  v21 = [allItems2 countByEnumeratingWithState:&v158 objects:v179 count:16];
  if (v21)
  {
    v22 = *v159;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v159 != v22)
        {
          objc_enumerationMutation(allItems2);
        }

        v24 = *(*(&v158 + 1) + 8 * j);
        if (([floatingAppLayout2 containsItem:v24] & 1) == 0 && -[NSMutableSet containsObject:](self->_liveDisplayItemsBeingTerminated, "containsObject:", v24))
        {
          [(NSMutableSet *)self->_liveDisplayItemsBeingTerminated removeObject:v24];
        }
      }

      v21 = [allItems2 countByEnumeratingWithState:&v158 objects:v179 count:16];
    }

    while (v21);
  }

  if ((isInterrupted & 1) == 0)
  {
    unlockedEnvironmentMode = [fromLayoutState unlockedEnvironmentMode];
    isFloatingSwitcherVisible = [fromLayoutState isFloatingSwitcherVisible];
    unlockedEnvironmentMode2 = [v124 unlockedEnvironmentMode];
    isFloatingSwitcherVisible2 = [v124 isFloatingSwitcherVisible];
    bundleIDShowingAppExpose = [fromLayoutState bundleIDShowingAppExpose];
    if (bundleIDShowingAppExpose)
    {
      v30 = 0;
    }

    else
    {
      bundleIDShowingAppExpose2 = [v124 bundleIDShowingAppExpose];
      v30 = bundleIDShowingAppExpose2 != 0;
    }

    request2 = [applicationTransitionContext request];
    peekConfiguration = [fromLayoutState peekConfiguration];
    IsValid = SBPeekConfigurationIsValid([v124 peekConfiguration]);
    v34 = IsValid;
    v35 = IsValid && !SBPeekConfigurationIsValid(peekConfiguration);
    if ((unlockedEnvironmentMode2 == 2) | isFloatingSwitcherVisible2 & 1)
    {
      if (unlockedEnvironmentMode2 == 2)
      {
        v36 = [(NSMutableArray *)self->_servicesRemovedWhileAwayFromSwitcher copy];
        [(NSMutableArray *)self->_servicesRemovedWhileAwayFromSwitcher removeAllObjects];
        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
        defaultCenter2 = v36;
        v38 = [defaultCenter2 countByEnumeratingWithState:&v154 objects:v178 count:16];
        if (v38)
        {
          v39 = *v155;
          do
          {
            for (k = 0; k != v38; ++k)
            {
              if (*v155 != v39)
              {
                objc_enumerationMutation(defaultCenter2);
              }

              bundleIdentifier = [*(*(&v154 + 1) + 8 * k) bundleIdentifier];
              v42 = [SBDisplayItem switcherServiceDisplayItemWithServiceIdentifier:bundleIdentifier];

              v43 = [(SBMainSwitcherControllerCoordinator *)self _appLayoutFromPrimaryLayoutItem:v42 sideLayoutElement:0 configuration:1];
              v44 = objc_alloc_init(SBSwitcherModelRemovalRequest);
              v45 = +[SBSwitcherModelRemovalRequestAction defaultRemovalPolicyAction];
              [(SBSwitcherModelRemovalRequest *)v44 setAction:v45 forAppLayout:v43];

              v46 = [(SBMainSwitcherControllerCoordinator *)self _switcherModelRemovalResultsForRequest:v44 forReason:0];
              [(SBMainSwitcherControllerCoordinator *)self _performSceneDestructionForModelRemovalResults:v46];
            }

            v38 = [defaultCenter2 countByEnumeratingWithState:&v154 objects:v178 count:16];
          }

          while (v38);
        }

        pid_hibernate();
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter postNotificationName:@"SBUIAppSwitcherRevealedNotification" object:0];

        goto LABEL_52;
      }
    }

    else
    {
      if ((!v30 || source != 33 && source != 51) && !v34)
      {
        [(SBMainSwitcherControllerCoordinator *)self _releaseKeyboardFocus];
        [(SBMainSwitcherControllerCoordinator *)self _focusNewlyAddedApplicationIfNeededTransitioningFromLayoutState:fromLayoutState toLayoutState:v124 windowScene:windowScene];
      }

      if (v35)
      {
        homeScreenController = [windowScene homeScreenController];
        window = [homeScreenController window];
        [window makeKeyWindow];
      }

      if ((unlockedEnvironmentMode == 2) | isFloatingSwitcherVisible & 1)
      {
        _recentAppLayoutsController = [(SBAppSwitcherModel *)self->_mainSwitcherModel _recentAppLayoutsController];
        [_recentAppLayoutsController _persistSoon];
      }

      v51 = [(SBMainSwitcherControllerCoordinator *)self switcherControllerForWindowScene:windowScene];
      [v51 _updateContentViewInterfaceOrientation:{objc_msgSend(v124, "interfaceOrientation")}];
    }

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 postNotificationName:@"SBUIAppSwitcherObscuredNotification" object:0];
LABEL_52:

    if ([v124 unlockedEnvironmentMode] == 3)
    {
      appLayout3 = [v124 appLayout];
      switcherController = [windowScene switcherController];
      contentViewController = [switcherController contentViewController];

      if (appLayout3)
      {
        if ([contentViewController shouldAddAppLayoutToFront:appLayout3 forTransitionWithContext:applicationTransitionContext transitionCompleted:1])
        {
          if ([appLayout3 environment] == 1)
          {
            appLayouts = self->_appLayouts;
            v152[0] = MEMORY[0x277D85DD0];
            v152[1] = 3221225472;
            v152[2] = __110__SBMainSwitcherControllerCoordinator_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke;
            v152[3] = &unk_2783A8CB8;
            v153 = appLayout3;
            v56 = [(NSArray *)appLayouts bs_firstObjectPassingTest:v152];
          }

          else
          {
            v56 = 0;
          }

          [(SBMainSwitcherControllerCoordinator *)self _addAppLayoutToFront:appLayout3 removeAppLayout:v56];
        }

        elements = [v124 elements];
        v58 = [elements count] == 0;

        if (!v58)
        {
          [(SBMainSwitcherControllerCoordinator *)self _rebuildAppListCache];
          if (![(NSArray *)self->_appLayouts containsObject:appLayout3])
          {
            v59 = SBLogAppSwitcher();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              succinctDescription = [appLayout3 succinctDescription];
              appLayout4 = [fromLayoutState appLayout];
              succinctDescription2 = [appLayout4 succinctDescription];
              itemsCrossingToOtherDisplay = [applicationTransitionContext itemsCrossingToOtherDisplay];
              v113 = [(NSPointerArray *)self->_coordinatedSwitcherControllers count];
              *location = 138544386;
              *&location[4] = succinctDescription;
              v170 = 2114;
              v171 = succinctDescription2;
              v172 = 2048;
              v173 = source;
              v174 = 2114;
              v175 = itemsCrossingToOtherDisplay;
              v176 = 2048;
              v177 = v113;
              _os_log_error_impl(&dword_21ED4E000, v59, OS_LOG_TYPE_ERROR, "The appLayouts array doesn't contain %{public}@, was transitioning from %{public}@ with source %lu, items crossing to other displays was %{public}@, number of switchers %lu", location, 0x34u);
            }

            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"SBMainSwitcherControllerCoordinator.m" lineNumber:1191 description:@"The appLayouts array MUST contain the app layout we're transitioning to."];
          }
        }
      }

      floatingAppLayout3 = [v124 floatingAppLayout];
      if (floatingAppLayout3 && ([v124 isFloatingSwitcherVisible] & 1) == 0 && objc_msgSend(contentViewController, "shouldAddAppLayoutToFront:forTransitionWithContext:transitionCompleted:", floatingAppLayout3, applicationTransitionContext, 1))
      {
        [(SBMainSwitcherControllerCoordinator *)self _addAppLayoutToFront:floatingAppLayout3];
      }
    }

    v62 = [MEMORY[0x277CBEB58] set];
    if ([v124 unlockedEnvironmentMode] == 3 || objc_msgSend(v124, "unlockedEnvironmentMode") == 2)
    {
      appLayout5 = [v124 appLayout];
      v149[0] = MEMORY[0x277D85DD0];
      v149[1] = 3221225472;
      v149[2] = __110__SBMainSwitcherControllerCoordinator_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke_197;
      v149[3] = &unk_2783AED40;
      v149[4] = self;
      v64 = v119;
      v150 = v64;
      v65 = v62;
      v151 = v65;
      [appLayout5 enumerate:v149];

      floatingAppLayout4 = [v124 floatingAppLayout];
      v146[0] = MEMORY[0x277D85DD0];
      v146[1] = 3221225472;
      v146[2] = __110__SBMainSwitcherControllerCoordinator_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke_2;
      v146[3] = &unk_2783AED40;
      v146[4] = self;
      v147 = v64;
      v148 = v65;
      [floatingAppLayout4 enumerate:v146];
    }

    v67 = [MEMORY[0x277CBEB58] set];
    v68 = [MEMORY[0x277CBEB58] set];
    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    obj = v62;
    v69 = [obj countByEnumeratingWithState:&v142 objects:v168 count:16];
    if (v69)
    {
      v127 = *v143;
      do
      {
        for (m = 0; m != v69; ++m)
        {
          if (*v143 != v127)
          {
            objc_enumerationMutation(obj);
          }

          v71 = *(*(&v142 + 1) + 8 * m);
          v138 = 0u;
          v139 = 0u;
          v140 = 0u;
          v141 = 0u;
          applicationContext = [request2 applicationContext];
          entities = [applicationContext entities];

          v74 = [entities countByEnumeratingWithState:&v138 objects:v167 count:16];
          if (v74)
          {
            v75 = *v139;
            do
            {
              for (n = 0; n != v74; ++n)
              {
                if (*v139 != v75)
                {
                  objc_enumerationMutation(entities);
                }

                v77 = *(*(&v138 + 1) + 8 * n);
                if ([v77 isAnalogousToEntity:v71])
                {
                  [v67 addObject:v71];
                  [v68 addObject:v77];
                }
              }

              v74 = [entities countByEnumeratingWithState:&v138 objects:v167 count:16];
            }

            while (v74);
          }
        }

        v69 = [obj countByEnumeratingWithState:&v142 objects:v168 count:16];
      }

      while (v69);
    }

    [obj minusSet:v67];
    [obj unionSet:v68];
    [(SBSwitcherCaptureApplicationActivationWatchdog *)self->_captureApplicationWatchdog foregroundWorkspaceEntitiesUpdatedTo:obj];
  }

  [(SBMainSwitcherControllerCoordinator *)self _evaluateAsynchronousRenderingEnablement];
  error2 = [v121 error];
  if (error2)
  {
  }

  else
  {
    elements2 = [fromLayoutState elements];
    elements3 = [v124 elements];
    v81 = [elements2 isEqualToSet:elements3];

    if ((v81 & 1) == 0)
    {
      selfCopy2 = self;
      if (!self->_preventSupplementalSnapshotsAssertion)
      {
        sceneManager = [windowScene sceneManager];
        v84 = objc_opt_class();
        v85 = NSStringFromClass(v84);
        v86 = [sceneManager preventTakingSupplementalSnapshotsForBackgroundingScenesWithReason:v85];
        preventSupplementalSnapshotsAssertion = self->_preventSupplementalSnapshotsAssertion;
        self->_preventSupplementalSnapshotsAssertion = v86;

        selfCopy2 = self;
      }

      objc_initWeak(location, selfCopy2);
      [(BSAbsoluteMachTimer *)self->_preventSupplementalSnapshotsInvalidationTimer invalidate];
      v88 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"SBMainSwitcherCoordinator.preventSupplementalSnapshotsInvalidationTimer"];
      preventSupplementalSnapshotsInvalidationTimer = self->_preventSupplementalSnapshotsInvalidationTimer;
      self->_preventSupplementalSnapshotsInvalidationTimer = v88;

      v90 = self->_preventSupplementalSnapshotsInvalidationTimer;
      [(SBAppSwitcherSettings *)self->_settings preventMedusaSnapshotsAfterTransitionDuration];
      v92 = v91;
      v93 = MEMORY[0x277D85CD0];
      v136[0] = MEMORY[0x277D85DD0];
      v136[1] = 3221225472;
      v136[2] = __110__SBMainSwitcherControllerCoordinator_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke_3;
      v136[3] = &unk_2783A9918;
      objc_copyWeak(&v137, location);
      [(BSAbsoluteMachTimer *)v90 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v136 queue:v92 handler:0.0];

      objc_destroyWeak(&v137);
      objc_destroyWeak(location);
    }
  }

  [(UIApplicationSceneDeactivationAssertion *)self->_deactivatingScenesResignActiveAssertion relinquish];
  deactivatingScenesResignActiveAssertion = self->_deactivatingScenesResignActiveAssertion;
  self->_deactivatingScenesResignActiveAssertion = 0;

  if ([v124 unlockedEnvironmentMode] == 1 && objc_msgSend(fromLayoutState, "unlockedEnvironmentMode") == 3 && source != 71)
  {
    appLayout6 = [fromLayoutState appLayout];
    if (appLayout6)
    {
      appLayouts = [(SBSwitcherModelRemovalResults *)self->_activeTransitionModelRemovalResults appLayouts];
      v97 = [appLayouts containsObject:appLayout6];

      if ((v97 & 1) == 0 && !SBPeekConfigurationIsValid([v124 peekConfiguration]))
      {
        [appLayout6 allItems];
        v134 = 0u;
        v135 = 0u;
        v132 = 0u;
        v98 = v133 = 0u;
        v99 = [v98 countByEnumeratingWithState:&v132 objects:v166 count:16];
        if (v99)
        {
          v100 = *v133;
          while (2)
          {
            for (ii = 0; ii != v99; ++ii)
            {
              if (*v133 != v100)
              {
                objc_enumerationMutation(v98);
              }

              v102 = [(SBAppSwitcherModel *)self->_mainSwitcherModel appLayoutContainingDisplayItem:*(*(&v132 + 1) + 8 * ii) includingHiddenAppLayouts:0];
              preferredDisplayOrdinal = [v102 preferredDisplayOrdinal];
              LODWORD(preferredDisplayOrdinal) = preferredDisplayOrdinal == [appLayout6 preferredDisplayOrdinal];

              if (!preferredDisplayOrdinal)
              {

                goto LABEL_111;
              }
            }

            v99 = [v98 countByEnumeratingWithState:&v132 objects:v166 count:16];
            if (v99)
            {
              continue;
            }

            break;
          }
        }

        [(SBMainSwitcherControllerCoordinator *)self _addAppLayoutToFront:appLayout6];
      }
    }

LABEL_111:
    floatingAppLayout5 = [fromLayoutState floatingAppLayout];
    if (floatingAppLayout5)
    {
      appLayouts2 = [(SBSwitcherModelRemovalResults *)self->_activeTransitionModelRemovalResults appLayouts];
      v106 = [appLayouts2 containsObject:floatingAppLayout5];

      if ((v106 & 1) == 0)
      {
        [(SBMainSwitcherControllerCoordinator *)self _addAppLayoutToFront:floatingAppLayout5];
      }
    }
  }

  windowManagementContext = [v119 windowManagementContext];
  v108 = [windowManagementContext baseStyle] == 0;

  if (!v108)
  {
    [(SBMainSwitcherControllerCoordinator *)self _rebuildAppListCache];
  }

  [(SBMainSwitcherControllerCoordinator *)self _updateHomeScreenDisplayLayoutElementForLayoutState:v124 switcherController:v119];
  [(SBMainSwitcherControllerCoordinator *)self _endDisplayLayoutTransitionForSwitcherController:v119];
}

uint64_t __110__SBMainSwitcherControllerCoordinator_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 environment] == 2)
  {
    v4 = [v3 allItems];
    v5 = [*(a1 + 32) allItems];
    v6 = [v4 isEqual:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __110__SBMainSwitcherControllerCoordinator_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke_197(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) _entityForDisplayItem:a3 switcherController:*(a1 + 40)];
  if (v4)
  {
    v5 = v4;
    [*(a1 + 48) addObject:v4];
    v4 = v5;
  }
}

void __110__SBMainSwitcherControllerCoordinator_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) _entityForDisplayItem:a3 switcherController:*(a1 + 40)];
  if (v4)
  {
    v5 = v4;
    [*(a1 + 48) addObject:v4];
    v4 = v5;
  }
}

void __110__SBMainSwitcherControllerCoordinator_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained[39] invalidate];
    v2 = v4[39];
    v4[39] = 0;

    [v4[38] invalidate];
    v3 = v4[38];
    v4[38] = 0;

    WeakRetained = v4;
  }
}

- (void)watchdog:(id)watchdog requestsTerminationOf:(id)of forReason:(id)reason
{
  v35 = *MEMORY[0x277D85DE8];
  ofCopy = of;
  reasonCopy = reason;
  v8 = objc_opt_class();
  v9 = ofCopy;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  applicationSceneEntity = [v11 applicationSceneEntity];

  sceneHandle = [applicationSceneEntity sceneHandle];
  sceneIfExists = [sceneHandle sceneIfExists];
  clientHandle = [sceneIfExists clientHandle];

  if (clientHandle)
  {
    processHandle = [clientHandle processHandle];
    if (processHandle)
    {
      v17 = [MEMORY[0x277D46FA0] predicateMatchingIdentifier:processHandle];
      v18 = objc_alloc(MEMORY[0x277D47010]);
      reasonCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Capture Application Requirements Unmet: %@", reasonCopy];
      v20 = [v18 initWithExplanation:reasonCopy];

      [v20 setReportType:1];
      [v20 setMaximumTerminationResistance:40];
      v21 = [objc_alloc(MEMORY[0x277D47018]) initWithPredicate:v17 context:v20];
      v22 = SBLogCaptureApplication();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        bundle = [processHandle bundle];
        identifier = [bundle identifier];
        *buf = 138543618;
        v32 = identifier;
        v33 = 2114;
        v34 = reasonCopy;
        _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "Unlocked capture watchdog requesting termination of %{public}@ for reason: %{public}@", buf, 0x16u);
      }

      v30 = 0;
      v25 = [v21 execute:&v30];
      v26 = v30;
      if ((v25 & 1) == 0)
      {
        v27 = SBLogCaptureApplication();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v32 = v26;
          _os_log_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_DEFAULT, "Unlocked capture watchdog failed to terminate the process: %@", buf, 0xCu);
        }
      }

      v28 = +[SBCaptureApplicationCenter sharedInstance];
      name = [processHandle name];
      [v28 promptLaunchTerminationAlertIfNecessaryForProcess:name afterDelay:reasonCopy reason:1.0];
    }
  }
}

- (void)eventSource:(id)source userTouchedApplication:(id)application
{
  sourceCopy = source;
  applicationCopy = application;
  if (self->_preventSupplementalSnapshotsAssertion)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    _activeDisplaySwitcherController = [(SBMainSwitcherControllerCoordinator *)self _activeDisplaySwitcherController];
    layoutState = [_activeDisplaySwitcherController layoutState];

    elements = [layoutState elements];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __74__SBMainSwitcherControllerCoordinator_eventSource_userTouchedApplication___block_invoke;
    v16 = &unk_2783B9440;
    v17 = applicationCopy;
    v18 = &v19;
    [elements enumerateObjectsUsingBlock:&v13];

    if (*(v20 + 24) == 1)
    {
      [(BSSimpleAssertion *)self->_preventSupplementalSnapshotsAssertion invalidate:v13];
      preventSupplementalSnapshotsAssertion = self->_preventSupplementalSnapshotsAssertion;
      self->_preventSupplementalSnapshotsAssertion = 0;

      [(BSAbsoluteMachTimer *)self->_preventSupplementalSnapshotsInvalidationTimer invalidate];
      preventSupplementalSnapshotsInvalidationTimer = self->_preventSupplementalSnapshotsInvalidationTimer;
      self->_preventSupplementalSnapshotsInvalidationTimer = 0;
    }

    _Block_object_dispose(&v19, 8);
  }
}

void __74__SBMainSwitcherControllerCoordinator_eventSource_userTouchedApplication___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 workspaceEntity];
  v6 = [v5 applicationSceneEntity];
  v7 = [v6 application];
  v8 = [v7 bundleIdentifier];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  if (v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (void)eventSource:(id)source userDeletedWebBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  webClip = [bookmarkCopy webClip];
  if ([webClip isAppClip])
  {
    webClip2 = [bookmarkCopy webClip];
    applicationBundleIdentifier = [webClip2 applicationBundleIdentifier];

    [(SBMainSwitcherControllerCoordinator *)self _deleteAppLayoutsMatchingBundleIdentifier:applicationBundleIdentifier];
  }

  else
  {
    identifier = [webClip identifier];
    v9 = [SBWebApplication _webAppIdentifierFromWebClipIdentifier:identifier];
    applicationBundleIdentifier = [SBDisplayItem webAppDisplayItemWithWebAppIdentifier:v9];

    [(SBMainSwitcherControllerCoordinator *)self deleteAppLayoutForDisplayItem:applicationBundleIdentifier];
  }
}

- (id)animationControllerForTransitionRequest:(id)request
{
  v4 = MEMORY[0x277CBEB98];
  requestCopy = request;
  v6 = [v4 set];
  v7 = [(SBMainSwitcherControllerCoordinator *)self animationControllerForTransitionRequest:requestCopy ancillaryTransitionRequests:v6];

  return v7;
}

- (id)animationControllerForTransitionRequest:(id)request ancillaryTransitionRequests:(id)requests
{
  v43 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  requestsCopy = requests;
  windowSceneManager = [SBApp windowSceneManager];
  displayIdentity = [requestCopy displayIdentity];
  v28 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

  switcherController = [v28 switcherController];
  contentViewController = [switcherController contentViewController];
  v27 = [contentViewController animationControllerForTransitionRequest:requestCopy];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = v8;
  if (v27)
  {
    [v8 addObject:?];
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = requestsCopy;
  v11 = [v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v11)
  {
    v12 = *v39;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        windowSceneManager2 = [SBApp windowSceneManager];
        displayIdentity2 = [v14 displayIdentity];
        v17 = [windowSceneManager2 windowSceneForDisplayIdentity:displayIdentity2];

        switcherController2 = [v17 switcherController];
        contentViewController2 = [switcherController2 contentViewController];

        v20 = [contentViewController2 animationControllerForTransitionRequest:v14];
        if (v20)
        {
          [v9 addObject:v20];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v11);
  }

  objc_initWeak(&location, self);
  v21 = [SBUISwitcherAnimationController alloc];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __107__SBMainSwitcherControllerCoordinator_animationControllerForTransitionRequest_ancillaryTransitionRequests___block_invoke;
  v32[3] = &unk_2783B9468;
  objc_copyWeak(&v36, &location);
  v22 = contentViewController;
  v33 = v22;
  selfCopy = self;
  v23 = switcherController;
  v35 = v23;
  v24 = [(SBUISwitcherAnimationController *)v21 initWithWorkspaceTransitionRequest:requestCopy contentViewController:v22 childAnimationControllers:v9 animationBlock:v32];

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);

  return v24;
}

void __107__SBMainSwitcherControllerCoordinator_animationControllerForTransitionRequest_ancillaryTransitionRequests___block_invoke(id *a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [v3 layoutState];
    v7 = [v6 appLayout];
    if (v7)
    {
      [v5 addObject:v7];
    }

    v27 = v7;
    v28 = v6;
    v8 = [v6 floatingAppLayout];
    if (v8)
    {
      [v5 addObject:v8];
    }

    v26 = v8;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v36;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v35 + 1) + 8 * i);
          if ([a1[4] shouldAddAppLayoutToFront:v14 forTransitionWithContext:v3 transitionCompleted:{0, v26}] && (objc_msgSend(a1[5], "_isPerformingModelTransitionForReplacementAppLayout:", v14) & 1) == 0)
          {
            v15 = [a1[6] windowManagementContext];
            v16 = [v15 isChamoisOrFlexibleWindowing];

            if (v16 && [v14 environment] == 1)
            {
              v17 = WeakRetained[6];
              v34[0] = MEMORY[0x277D85DD0];
              v34[1] = 3221225472;
              v34[2] = __107__SBMainSwitcherControllerCoordinator_animationControllerForTransitionRequest_ancillaryTransitionRequests___block_invoke_2;
              v34[3] = &unk_2783A8CB8;
              v34[4] = v14;
              v18 = [v17 bs_firstObjectPassingTest:v34];
            }

            else
            {
              v18 = 0;
            }

            if ([WeakRetained shouldPerformPreTransitionInsertionOfAppLayout:v14 forTransitionWithContext:v3])
            {
              v29 = a1[4];
              v30[0] = MEMORY[0x277D85DD0];
              v30[1] = 3221225472;
              v30[2] = __107__SBMainSwitcherControllerCoordinator_animationControllerForTransitionRequest_ancillaryTransitionRequests___block_invoke_3;
              v30[3] = &unk_2783A8ED8;
              v19 = WeakRetained;
              v20 = v12;
              v21 = WeakRetained;
              v22 = v3;
              v23 = v9;
              v24 = v19;
              v31 = v19;
              v32 = v14;
              v33 = v18;
              v25 = v24;
              v9 = v23;
              v3 = v22;
              WeakRetained = v21;
              v12 = v20;
              [v25 _insertAppLayout:v14 atIndex:0 contentViewController:v29 modelMutationBlock:v30 completion:0];
            }

            else
            {
              [WeakRetained _addAppLayoutToFront:v14 removeAppLayout:v18];
            }
          }

          else
          {
            [WeakRetained _rebuildAppListCache];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v11);
    }
  }
}

uint64_t __107__SBMainSwitcherControllerCoordinator_animationControllerForTransitionRequest_ancillaryTransitionRequests___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 environment] == 2)
  {
    v4 = [v3 allItems];
    v5 = [*(a1 + 32) allItems];
    v6 = [v4 isEqual:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isPerformingModelTransitionForReplacementAppLayout:(id)layout
{
  v19 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  appLayouts = [(SBSwitcherModelRemovalResults *)self->_activeTransitionModelRemovalResults appLayouts];
  v6 = [appLayouts countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(appLayouts);
        }

        v10 = [(SBSwitcherModelRemovalResults *)self->_activeTransitionModelRemovalResults replacementAppLayoutForAppLayout:*(*(&v14 + 1) + 8 * i)];
        v11 = [v10 isEqual:layoutCopy];

        if (v11)
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v7 = [appLayouts countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (BOOL)shouldPerformPreTransitionInsertionOfAppLayout:(id)layout forTransitionWithContext:(id)context
{
  contextCopy = context;
  request = [contextCopy request];
  source = [request source];
  effectiveSwitcherStyle = [(SBAppSwitcherSettings *)self->_settings effectiveSwitcherStyle];
  if (source == 10 && effectiveSwitcherStyle == 1)
  {
    v12 = 0;
  }

  else
  {
    if (source > 0x33 || ((1 << source) & 0xC002008000800) == 0)
    {
      layoutState = [contextCopy layoutState];
      v12 = [layoutState unlockedEnvironmentMode] == 2;
    }

    else
    {
      v12 = 0;
    }

    if (source > 0x33 || ((1 << source) & 0xC002008000800) == 0)
    {
    }
  }

  return v12;
}

- (BOOL)canPerformKeyboardShortcutAction:(int64_t)action forBundleIdentifier:(id)identifier orSceneIdentifier:(id)sceneIdentifier windowScene:(id)scene
{
  sceneCopy = scene;
  sceneIdentifierCopy = sceneIdentifier;
  identifierCopy = identifier;
  v13 = [(SBMainSwitcherControllerCoordinator *)self switcherControllerForWindowScene:sceneCopy];
  contentViewController = [v13 contentViewController];
  windowManagementContext = [v13 windowManagementContext];
  v16 = [contentViewController canPerformKeyboardShortcutAction:action forBundleIdentifier:identifierCopy orSceneIdentifier:sceneIdentifierCopy];

  if (action <= 10)
  {
    if ((action - 4) >= 2 && (action - 9) >= 2 && action != 6)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (action > 0x12)
    {
      goto LABEL_20;
    }

    if (((1 << action) & 0x6800) != 0)
    {
      v17 = (identifierCopy == 0) & v16;
      if (identifierCopy && ((v16 ^ 1) & 1) == 0)
      {
        isMedusaEnabled = [windowManagementContext isMedusaEnabled];
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    if (((1 << action) & 0x18000) == 0)
    {
      if (action == 18)
      {
        v17 = (identifierCopy == 0) & v16;
        if (identifierCopy && ((v16 ^ 1) & 1) == 0)
        {
          isMedusaEnabled = [windowManagementContext isAutomaticStageCreationEnabled];
LABEL_18:
          v17 = isMedusaEnabled;
          goto LABEL_19;
        }

        goto LABEL_19;
      }

LABEL_20:
      v17 = v16;
      goto LABEL_19;
    }
  }

  if (v16)
  {
    isMedusaEnabled = [sceneCopy supportsMultitasking];
    goto LABEL_18;
  }

  v17 = 0;
LABEL_19:

  return v17;
}

- (void)performKeyboardShortcutAction:(int64_t)action forBundleIdentifier:(id)identifier orSceneIdentifier:(id)sceneIdentifier windowScene:(id)scene
{
  identifierCopy = identifier;
  sceneIdentifierCopy = sceneIdentifier;
  sceneCopy = scene;
  v12 = [(SBMainSwitcherControllerCoordinator *)self switcherControllerForWindowScene:sceneCopy];
  contentViewController = [v12 contentViewController];
  v14 = contentViewController;
  switch(action)
  {
    case 0:
      [v12 toggleMainSwitcherWithSource:51 animated:1];
      break;
    case 1:
      v15 = @"KeyboardShortcutActivateNextSwitcherSpace";
      selfCopy4 = self;
      v17 = 0;
      v18 = 1;
      goto LABEL_14;
    case 2:
      v15 = @"KeyboardShortcutActivateNextSwitcherSpace";
      selfCopy4 = self;
      v17 = 1;
      v18 = 1;
      goto LABEL_12;
    case 3:
    case 11:
    case 13:
    case 14:
    case 18:
      if (!identifierCopy)
      {
        goto LABEL_2;
      }

      [(SBMainSwitcherControllerCoordinator *)self _handleFocusedIconSwitcherShortcutAction:action bundleIdentifier:identifierCopy windowScene:sceneCopy];
      break;
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 12:
    case 15:
    case 16:
    case 17:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
LABEL_2:
      [contentViewController performKeyboardShortcutAction:action withSceneIdentifier:sceneIdentifierCopy];
      break;
    case 9:
      v15 = @"KeyboardShortcutActivateNextFloatingApp";
      selfCopy4 = self;
      v17 = 1;
      v18 = 2;
LABEL_14:
      v19 = 1;
      goto LABEL_15;
    case 10:
      v15 = @"KeyboardShortcutActivatePreviousFloatingApp";
      selfCopy4 = self;
      v17 = 1;
      v18 = 2;
LABEL_12:
      v19 = 0;
LABEL_15:
      [(SBMainSwitcherControllerCoordinator *)selfCopy4 _activateNeighboringAppLayoutRequiringActiveAppLayout:v17 appLayoutEnvironment:v18 inForwardDirection:v19 windowScene:sceneCopy eventLabel:v15];
      break;
    default:
      break;
  }
}

- (void)_handleFocusedIconSwitcherShortcutAction:(int64_t)action bundleIdentifier:(id)identifier windowScene:(id)scene
{
  identifierCopy = identifier;
  sceneCopy = scene;
  sceneManager = [sceneCopy sceneManager];
  v10 = +[SBApplicationController sharedInstance];
  v11 = [v10 applicationWithBundleIdentifier:identifierCopy];

  v12 = [(SBMainSwitcherControllerCoordinator *)self switcherControllerForWindowScene:sceneCopy];
  v13 = v12;
  v14 = 0;
  v48 = identifierCopy;
  v49 = v11;
  if (action <= 12)
  {
    v17 = v12;
    if (action == 3)
    {
      v23 = identifierCopy;
      v14 = 0;
      v18 = 0;
      v22 = 0;
      v21 = 0;
    }

    else
    {
      v18 = 0;
      v23 = 0;
      v22 = 0;
      v21 = 0;
      if (action == 11)
      {
        v24 = [SBDeviceApplicationSceneEntity alloc];
        displayIdentity = [sceneManager displayIdentity];
        v21 = [(SBDeviceApplicationSceneEntity *)v24 initWithApplication:v49 sceneHandleProvider:sceneManager displayIdentity:displayIdentity];

        v22 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
        v14 = 0;
        v18 = 0;
LABEL_33:
        v23 = 0;
      }
    }
  }

  else
  {
    if ((action - 13) < 2)
    {
      _currentLayoutState = [v12 _currentLayoutState];
      if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
      {
        v16 = 14;
      }

      else
      {
        v16 = 13;
      }

      if ([_currentLayoutState unlockedEnvironmentMode] == 1)
      {
        v17 = v13;
        if (v16 == action)
        {
          v18 = 2;
        }

        else
        {
          v18 = 3;
        }

        v19 = [SBDeviceApplicationSceneEntity alloc];
        displayIdentity2 = [sceneManager displayIdentity];
        v21 = [(SBDeviceApplicationSceneEntity *)v19 initWithApplication:v11 sceneHandleProvider:sceneManager displayIdentity:displayIdentity2];

        v22 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
        v14 = 0;
      }

      else
      {
        v47 = _currentLayoutState;
        v28 = [v13 activeAndVisibleSceneIdentifiersForApplication:v11];
        info = [v11 info];
        supportsMultiwindow = [info supportsMultiwindow];

        v46 = v28;
        if (supportsMultiwindow)
        {
          [sceneManager sceneIdentityForApplication:v11 targetContentIdentifier:0 allowCanMatches:0 preferNewScene:1 visibleIdentifiers:v28];
        }

        else
        {
          [sceneManager sceneIdentityForApplication:v11 excludingIdentifiers:v28];
        }
        v31 = ;
        if (v31)
        {
          v45 = v13;
          layoutState = [v13 layoutState];
          v32 = [SBDeviceApplicationSceneEntity alloc];
          identifier = [v31 identifier];
          displayIdentity3 = [sceneManager displayIdentity];
          v21 = [(SBDeviceApplicationSceneEntity *)v32 initWithApplication:v11 uniqueIdentifier:identifier sceneHandleProvider:sceneManager displayIdentity:displayIdentity3];

          if (v16 == action)
          {
            v35 = layoutState;
            v36 = [layoutState elementWithRole:2];

            if (v36)
            {
              v22 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
              v14 = 0;
            }

            else
            {
              v22 = [SBPreviousWorkspaceEntity entityWithPreviousLayoutRole:1];
              v14 = 3;
            }
          }

          else
          {
            v37 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
            v35 = layoutState;
            v38 = [layoutState elementWithRole:2];

            if (v38)
            {
              v14 = 0;
            }

            else
            {
              v14 = 3;
            }

            v22 = v21;
            v21 = v37;
          }

          v13 = v45;
        }

        else
        {
          v14 = 0;
          v22 = 0;
          v21 = 0;
        }

        v17 = v13;

        v18 = 0;
        _currentLayoutState = v47;
      }

      goto LABEL_33;
    }

    v17 = v12;
    v18 = 0;
    v23 = 0;
    v22 = 0;
    v21 = 0;
    if (action == 18)
    {
      v26 = [SBDeviceApplicationSceneEntity alloc];
      displayIdentity4 = [sceneManager displayIdentity];
      v21 = [(SBDeviceApplicationSceneEntity *)v26 initWithApplication:v49 sceneHandleProvider:sceneManager displayIdentity:displayIdentity4];

      v14 = 0;
      v18 = 0;
      v23 = 0;
      v22 = 0;
    }
  }

  v39 = +[SBWorkspace mainWorkspace];
  _fbsDisplayConfiguration = [sceneCopy _fbsDisplayConfiguration];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __109__SBMainSwitcherControllerCoordinator__handleFocusedIconSwitcherShortcutAction_bundleIdentifier_windowScene___block_invoke;
  v51[3] = &unk_2783B94B8;
  v52 = v21;
  v53 = v22;
  v54 = v23;
  actionCopy = action;
  v56 = v18;
  v57 = v14;
  v41 = v23;
  v42 = v22;
  v43 = v21;
  [v39 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration builder:v51];
}

void __109__SBMainSwitcherControllerCoordinator__handleFocusedIconSwitcherShortcutAction_bundleIdentifier_windowScene___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:51];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __109__SBMainSwitcherControllerCoordinator__handleFocusedIconSwitcherShortcutAction_bundleIdentifier_windowScene___block_invoke_2;
  v4[3] = &unk_2783B9490;
  v8 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 64);
  [v3 modifyApplicationContext:v4];
}

void __109__SBMainSwitcherControllerCoordinator__handleFocusedIconSwitcherShortcutAction_bundleIdentifier_windowScene___block_invoke_2(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1[7] == 18)
  {
    v10 = a1[4];
    v4 = MEMORY[0x277CBEA60];
    v5 = a2;
    v6 = [v4 arrayWithObjects:&v10 count:1];
    v7 = [(SBWorkspaceEntity *)SBPreviousWorkspaceEntity entity:v10];
    v8 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    [v5 setEntities:v6 withPolicy:1 centerEntity:v7 floatingEntity:v8];

    [v5 _setRequestedFrontmostEntity:a1[4]];
  }

  else
  {
    v9 = a2;
    [v9 setRequestedUnlockedEnvironmentMode:3];
    [v9 setEntity:a1[4] forLayoutRole:1];
    [v9 setEntity:a1[5] forLayoutRole:2];
    [v9 setRequestedAppExposeBundleID:a1[6]];
    [v9 setRequestedPeekConfiguration:a1[8]];
    [v9 setRequestedSpaceConfiguration:a1[9]];
  }
}

- (void)handleApplicationSceneEntityDestructionIntent:(id)intent forEntities:(id)entities
{
  v54 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  entitiesCopy = entities;
  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = entitiesCopy;
  v8 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v49;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v49 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v48 + 1) + 8 * i);
        windowSceneManager = [SBApp windowSceneManager];
        sceneHandle = [v12 sceneHandle];
        v15 = [windowSceneManager windowSceneForSceneHandle:sceneHandle];

        v16 = [strongToStrongObjectsMapTable objectForKey:v15];
        if (!v16)
        {
          v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
          [strongToStrongObjectsMapTable setObject:v16 forKey:v15];
        }

        [v16 addObject:v12];
      }

      v9 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v9);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v17 = strongToStrongObjectsMapTable;
  v18 = [v17 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v18)
  {
    v19 = v18;
    v31 = *v45;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v45 != v31)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v44 + 1) + 8 * j);
        _fbsDisplayConfiguration = [v21 _fbsDisplayConfiguration];
        v23 = [v17 objectForKey:v21];
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __97__SBMainSwitcherControllerCoordinator_handleApplicationSceneEntityDestructionIntent_forEntities___block_invoke;
        v41[3] = &unk_2783AAA48;
        v42 = v23;
        v43 = intentCopy;
        v24 = v23;
        v25 = MEMORY[0x223D6F7F0](v41);
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __97__SBMainSwitcherControllerCoordinator_handleApplicationSceneEntityDestructionIntent_forEntities___block_invoke_3;
        v38[3] = &unk_2783B9500;
        v39 = obj;
        selfCopy = self;
        v26 = MEMORY[0x223D6F7F0](v38);
        v27 = +[SBWorkspace mainWorkspace];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __97__SBMainSwitcherControllerCoordinator_handleApplicationSceneEntityDestructionIntent_forEntities___block_invoke_9;
        v34[3] = &unk_2783B9550;
        v34[4] = self;
        v34[5] = v21;
        v35 = _fbsDisplayConfiguration;
        v36 = v26;
        v37 = v25;
        v28 = v25;
        v29 = _fbsDisplayConfiguration;
        v30 = v26;
        [v27 requestTransitionWithOptions:0 displayConfiguration:v29 builder:v28 validator:v34];
      }

      v19 = [v17 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v19);
  }
}

void __97__SBMainSwitcherControllerCoordinator_handleApplicationSceneEntityDestructionIntent_forEntities___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:34];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __97__SBMainSwitcherControllerCoordinator_handleApplicationSceneEntityDestructionIntent_forEntities___block_invoke_2;
  v4[3] = &unk_2783A96A0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 modifyApplicationContext:v4];
}

void __97__SBMainSwitcherControllerCoordinator_handleApplicationSceneEntityDestructionIntent_forEntities___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [*(a1 + 40) animation];
        if (v10 < 3)
        {
          v11 = v10 + 1;
        }

        else
        {
          v11 = 0;
        }

        v12 = [[SBWorkspaceEntityRemovalContext alloc] initWithAnimationStyle:v11 removalActionType:1];
        [v3 setRemovalContext:v12 forEntity:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

void __97__SBMainSwitcherControllerCoordinator_handleApplicationSceneEntityDestructionIntent_forEntities___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __97__SBMainSwitcherControllerCoordinator_handleApplicationSceneEntityDestructionIntent_forEntities___block_invoke_4;
  v11[3] = &unk_2783AF7F0;
  v12 = v5;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v7;
  v14 = v8;
  v15 = v6;
  v9 = v6;
  v10 = v5;
  [v10 modifyApplicationContext:v11];
}

void __97__SBMainSwitcherControllerCoordinator_handleApplicationSceneEntityDestructionIntent_forEntities___block_invoke_4(id *a1, void *a2)
{
  v72 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [SBApp windowSceneManager];
  v5 = [a1[4] displayIdentity];
  v6 = [v4 windowSceneForDisplayIdentity:v5];

  v7 = [v6 switcherController];
  v8 = [v7 windowManagementContext];
  v9 = [v8 isChamoisOrFlexibleWindowing];

  if (!v9)
  {
    v19 = [a1[7] activatingEntity];

    if (v19)
    {
      v20 = [a1[7] activatingEntity];
      [v3 setActivatingEntity:v20];
    }

    if ([a1[7] requestedUnlockedEnvironmentMode])
    {
      [v3 setRequestedUnlockedEnvironmentMode:{objc_msgSend(a1[7], "requestedUnlockedEnvironmentMode")}];
    }

    v21 = [a1[4] applicationContext];
    v10 = [v21 previousLayoutState];

    v22 = [a1[4] applicationContext];
    v23 = [v22 entitiesWithRemovalContexts];

    v24 = [v10 elementWithRole:3];
    v25 = v24;
    if (v24)
    {
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __97__SBMainSwitcherControllerCoordinator_handleApplicationSceneEntityDestructionIntent_forEntities___block_invoke_7;
      v63[3] = &unk_2783B65A8;
      v26 = v24;
      v64 = v26;
      if ([v23 bs_containsObjectPassingTest:v63])
      {
        v58 = v23;
        v60 = v6;
        v27 = *(a1[6] + 6);
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __97__SBMainSwitcherControllerCoordinator_handleApplicationSceneEntityDestructionIntent_forEntities___block_invoke_8;
        v61[3] = &unk_2783A8CB8;
        v62 = v26;
        v28 = [v27 bs_firstObjectPassingTest:v61];
        v29 = v28;
        if (v28)
        {
          v30 = a1[6];
          v31 = [v28 itemForLayoutRole:1];
          v32 = [v60 _fbsDisplayIdentity];
          v33 = [v30 _entityForDisplayItem:v31 displayIdentity:v32];
          [v3 setEntity:v33 forLayoutRole:3];
        }

        else
        {
          v55 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
          [v3 setEntity:v55 forLayoutRole:3];
        }

        v56 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
        [v3 setEntity:v56 forLayoutRole:1];

        v57 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
        [v3 setEntity:v57 forLayoutRole:2];

        v40 = v64;
        v23 = v58;
        v6 = v60;
LABEL_38:

        goto LABEL_39;
      }
    }

    v36 = [a1[7] sideElement];

    v37 = [a1[7] primaryElement];
    v38 = v37;
    if (v36)
    {
      v39 = [v37 workspaceEntity];
      [v3 setEntity:v39 forLayoutRole:1];

      v40 = [a1[7] sideElement];
      v41 = [v40 workspaceEntity];
      [v3 setEntity:v41 forLayoutRole:2];
    }

    else
    {

      if (v38)
      {
        v42 = [a1[7] primaryElement];
        v43 = [v42 workspaceEntity];
        [v3 setEntity:v43 forLayoutRole:1];
      }

      else
      {
        v42 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
        [v3 setEntity:v42 forLayoutRole:1];
      }

      v40 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
      [v3 setEntity:v40 forLayoutRole:2];
    }

    goto LABEL_38;
  }

  v59 = v6;
  v10 = objc_opt_new();
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v11 = [v3 previousLayoutState];
  v12 = [v11 elements];

  v13 = [v12 countByEnumeratingWithState:&v67 objects:v71 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v68;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v68 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v67 + 1) + 8 * i) workspaceEntity];
        v18 = [v17 applicationSceneEntity];

        if (([a1[5] containsObject:v18] & 1) == 0)
        {
          [v10 addObject:v18];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v67 objects:v71 count:16];
    }

    while (v14);
  }

  if (![v10 count])
  {
    v34 = [v7 windowManagementContext];
    v35 = [v34 isFlexibleWindowingEnabled];

    v6 = v59;
    if (v35)
    {
      [v3 setEntities:MEMORY[0x277CBEBF8] withPolicy:0 centerEntity:0 floatingEntity:0];
      goto LABEL_40;
    }

    v23 = [a1[6] appLayoutsForSwitcherController:v7];
    v44 = [v23 count];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __97__SBMainSwitcherControllerCoordinator_handleApplicationSceneEntityDestructionIntent_forEntities___block_invoke_6;
    v65[3] = &unk_2783AE1A0;
    v66 = a1[5];
    v45 = [v23 indexOfObjectPassingTest:v65];
    if (v44 < 2 || v45 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v3 setEntities:MEMORY[0x277CBEBF8] withPolicy:0 centerEntity:0 floatingEntity:0];
    }

    else
    {
      v46 = [v23 objectAtIndex:(v44 + v45 + 1) % v44];
      v47 = [a1[6] displayItemLayoutAttributesProvider];
      v48 = [v7 interfaceOrientation];
      if ((v48 - 1) < 2)
      {
        v49 = 1;
      }

      else
      {
        v49 = 2 * ((v48 - 3) < 2);
      }

      v50 = [v47 lastInteractedDisplayItemsInAppLayout:v46 orientation:v49];
      v51 = [v50 firstObject];

      v52 = a1[6];
      v53 = [a1[4] displayIdentity];
      v54 = [v52 _entityForDisplayItem:v51 displayIdentity:v53];

      [v3 setActivatingEntity:v54];
      v6 = v59;
    }

LABEL_39:
    goto LABEL_40;
  }

  [v10 sortUsingComparator:&__block_literal_global_230];
  [v3 setEntities:v10 withPolicy:0 centerEntity:0 floatingEntity:0];
  v6 = v59;
LABEL_40:
}

uint64_t __97__SBMainSwitcherControllerCoordinator_handleApplicationSceneEntityDestructionIntent_forEntities___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithInteger:{objc_msgSend(a2, "layoutRole")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 layoutRole];

  v9 = [v7 numberWithInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

uint64_t __97__SBMainSwitcherControllerCoordinator_handleApplicationSceneEntityDestructionIntent_forEntities___block_invoke_6(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) uniqueIdentifier];
        v9 = [v3 containsItemWithUniqueIdentifier:v8];

        if (v9)
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

uint64_t __97__SBMainSwitcherControllerCoordinator_handleApplicationSceneEntityDestructionIntent_forEntities___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = BSEqualStrings();

  return v5;
}

uint64_t __97__SBMainSwitcherControllerCoordinator_handleApplicationSceneEntityDestructionIntent_forEntities___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 environment] == 2)
  {
    v4 = [v3 itemForLayoutRole:1];
    v5 = [v4 uniqueIdentifier];
    v6 = [*(a1 + 32) uniqueIdentifier];
    v7 = BSEqualStrings() ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __97__SBMainSwitcherControllerCoordinator_handleApplicationSceneEntityDestructionIntent_forEntities___block_invoke_9(id *a1, void *a2)
{
  v70 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 applicationContext];
  v5 = [v4 entitiesWithRemovalContexts];

  v6 = [v3 applicationContext];
  v7 = [v6 previousLayoutState];

  v8 = [v7 elements];
  v9 = [v8 count];

  if (v9)
  {
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __97__SBMainSwitcherControllerCoordinator_handleApplicationSceneEntityDestructionIntent_forEntities___block_invoke_10;
    v66[3] = &unk_2783B65A8;
    v10 = v7;
    v67 = v10;
    v47 = v7;
    if ([v5 bs_containsObjectPassingTest:v66])
    {
      v11 = [v10 elements];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __97__SBMainSwitcherControllerCoordinator_handleApplicationSceneEntityDestructionIntent_forEntities___block_invoke_11;
      v56[3] = &unk_2783AC4F8;
      v12 = v5;
      v13 = v5;
      v57 = v13;
      v45 = [v11 bs_filter:v56];

      v14 = [*(a1[4] + 3) objectForKey:a1[5]];
      v15 = [a1[4] _recentAppLayoutsController];
      v16 = [a1[5] switcherController];
      v17 = [v16 windowManagementContext];
      v18 = [SBSwitcherWindowReplacementResult windowReplacementResultByRemovingLayoutElements:v13 fromLayoutState:v10 withPrecedingLayoutState:v14 recentAppLayouts:v15 windowManagementContext:v17];

      if (([v10 isFloatingSwitcherVisible] & 1) != 0 || objc_msgSend(v10, "unlockedEnvironmentMode") == 2)
      {
        [v3 setSource:3];
        [v3 setEventLabel:@"PreparationForDisplayItemRemovalRequestWithExpressedIntent"];
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __97__SBMainSwitcherControllerCoordinator_handleApplicationSceneEntityDestructionIntent_forEntities___block_invoke_13;
        v53[3] = &unk_2783A96A0;
        v19 = v45;
        v54 = v45;
        v55 = v13;
        [v3 modifyApplicationContext:v53];
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __97__SBMainSwitcherControllerCoordinator_handleApplicationSceneEntityDestructionIntent_forEntities___block_invoke_14;
        v48[3] = &unk_2783B9528;
        v49 = a1[6];
        v51 = a1[8];
        v52 = a1[7];
        v50 = v18;
        v20 = [v3 addCompletionHandler:v48];
        v21 = [a1[5] alertItemsController];
        v22 = [a1[5] assistantController];
        v5 = v12;
        if ([v22 isVisible])
        {
          v23 = 0;
          v7 = v47;
        }

        else
        {
          v7 = v47;
          if ([v21 hasVisibleSuperModalAlert])
          {
            v23 = 0;
          }

          else
          {
            v23 = [v21 hasVisibleAlert] ^ 1;
          }
        }
      }

      else
      {
        (*(a1[7] + 2))();
        v23 = 1;
        v5 = v12;
        v19 = v45;
        v7 = v47;
      }

      v29 = v57;
    }

    else
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v46 = v5;
      v26 = v5;
      v27 = [v26 countByEnumeratingWithState:&v62 objects:v69 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = 0;
        v30 = *v63;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v63 != v30)
            {
              objc_enumerationMutation(v26);
            }

            v32 = *(*(&v62 + 1) + 8 * i);
            v33 = [v3 applicationContext];
            v34 = [v33 removalContextForEntity:v32];

            v35 = [v32 displayItemRepresentation];
            v36 = [a1[4] _switcherDisplayItemRemovalIntentTypeForEntity:v32 removalContext:v34];
            if (v36)
            {
              v37 = v36;
              if (!v29)
              {
                v29 = objc_alloc_init(SBSwitcherDisplayItemRemovalResolutionRequest);
              }

              [(SBSwitcherDisplayItemRemovalResolutionRequest *)v29 setRemovalIntentType:v37 forDisplayItem:v35];
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v62 objects:v69 count:16];
        }

        while (v28);
      }

      else
      {
        v29 = 0;
      }

      v38 = [a1[4] _switcherModelRemovalResultsForDisplayItemRemovalResolutionRequest:v29];
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v39 = [v38 appLayouts];
      v40 = [v39 countByEnumeratingWithState:&v58 objects:v68 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v59;
        do
        {
          for (j = 0; j != v41; ++j)
          {
            if (*v59 != v42)
            {
              objc_enumerationMutation(v39);
            }

            [v38 executeActionForAppLayout:*(*(&v58 + 1) + 8 * j)];
          }

          v41 = [v39 countByEnumeratingWithState:&v58 objects:v68 count:16];
        }

        while (v41);
      }

      v23 = 0;
      v5 = v46;
      v7 = v47;
    }
  }

  else
  {
    v24 = a1[7];
    v25 = +[SBSwitcherWindowReplacementResult defaultWindowReplacementResult];
    v24[2](v24, v3, v25);

    v23 = 1;
  }

  return v23;
}

BOOL __97__SBMainSwitcherControllerCoordinator_handleApplicationSceneEntityDestructionIntent_forEntities___block_invoke_10(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueIdentifier];
  v4 = [v2 elementWithIdentifier:v3];
  v5 = v4 != 0;

  return v5;
}

uint64_t __97__SBMainSwitcherControllerCoordinator_handleApplicationSceneEntityDestructionIntent_forEntities___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __97__SBMainSwitcherControllerCoordinator_handleApplicationSceneEntityDestructionIntent_forEntities___block_invoke_12;
  v8[3] = &unk_2783B65A8;
  v9 = v3;
  v5 = v3;
  LODWORD(v4) = [v4 bs_containsObjectPassingTest:v8];
  IsValidForSplitView = SBLayoutRoleIsValidForSplitView([v5 layoutRole]);

  return IsValidForSplitView & (v4 ^ 1);
}

void __97__SBMainSwitcherControllerCoordinator_handleApplicationSceneEntityDestructionIntent_forEntities___block_invoke_13(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [v9 workspaceEntity];
        [v3 setEntity:v10 forLayoutRole:{objc_msgSend(v9, "layoutRole")}];
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  [v3 setRequestedUnlockedEnvironmentMode:3];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = *(a1 + 40);
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [v3 setRemovalContext:0 forEntity:{*(*(&v16 + 1) + 8 * j), v16}];
      }

      v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

void __97__SBMainSwitcherControllerCoordinator_handleApplicationSceneEntityDestructionIntent_forEntities___block_invoke_14(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = +[SBWorkspace mainWorkspace];
    v4 = *(a1 + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __97__SBMainSwitcherControllerCoordinator_handleApplicationSceneEntityDestructionIntent_forEntities___block_invoke_15;
    v6[3] = &unk_2783A96F0;
    v5 = *(a1 + 48);
    v8 = *(a1 + 56);
    v7 = *(a1 + 40);
    [v3 requestTransitionWithOptions:0 displayConfiguration:v4 builder:v5 validator:v6];
  }
}

- (void)failMultitaskingGesturesForReason:(id)reason
{
  reasonCopy = reason;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__SBMainSwitcherControllerCoordinator_failMultitaskingGesturesForReason___block_invoke;
  v6[3] = &unk_2783B9578;
  v7 = reasonCopy;
  v5 = reasonCopy;
  [(SBMainSwitcherControllerCoordinator *)self enumerateSwitcherControllersWithBlock:v6];
}

void __73__SBMainSwitcherControllerCoordinator_failMultitaskingGesturesForReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 gestureManager];
  [v3 failMultitaskingGesturesForReason:*(a1 + 32)];
}

- (void)programmaticSwitchAppGestureMoveToLeft
{
  windowSceneManager = [SBApp windowSceneManager];
  activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];
  [(SBMainSwitcherControllerCoordinator *)self _activateNeighboringAppLayoutRequiringActiveAppLayout:1 appLayoutEnvironment:1 inForwardDirection:0 windowScene:activeDisplayWindowScene eventLabel:@"ProgrammaticSwitchAppGestureMoveToRight"];
}

- (void)programmaticSwitchAppGestureMoveToRight
{
  windowSceneManager = [SBApp windowSceneManager];
  activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];
  [(SBMainSwitcherControllerCoordinator *)self _activateNeighboringAppLayoutRequiringActiveAppLayout:1 appLayoutEnvironment:1 inForwardDirection:1 windowScene:activeDisplayWindowScene eventLabel:@"ProgrammaticSwitchAppGestureMoveToRight"];
}

- (void)_activateNeighboringAppLayoutRequiringActiveAppLayout:(BOOL)layout appLayoutEnvironment:(int64_t)environment inForwardDirection:(BOOL)direction windowScene:(id)scene eventLabel:(id)label
{
  layoutCopy = layout;
  sceneCopy = scene;
  labelCopy = label;
  v13 = [(SBMainSwitcherControllerCoordinator *)self switcherControllerForWindowScene:sceneCopy];
  contentViewController = [v13 contentViewController];
  v15 = objc_opt_class();
  v16 = contentViewController;
  if (v15)
  {
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v48 = v17;

  v18 = [(SBMainSwitcherControllerCoordinator *)self appLayoutsForSwitcherController:v13];
  if ((environment - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    [SBMainSwitcherControllerCoordinator _activateNeighboringAppLayoutRequiringActiveAppLayout:appLayoutEnvironment:inForwardDirection:windowScene:eventLabel:];
  }

  else if (environment == 2)
  {
    _currentFloatingAppLayout = [v13 _currentFloatingAppLayout];
    goto LABEL_11;
  }

  _currentFloatingAppLayout = [v13 _currentMainAppLayout];
LABEL_11:
  v20 = _currentFloatingAppLayout;
  if (_currentFloatingAppLayout)
  {
    v21 = [v18 indexOfObject:_currentFloatingAppLayout];
    v22 = v21;
    if (layoutCopy)
    {
      v23 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = -1;
    }

    if (v21 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = v23;
    }
  }

  else if (layoutCopy)
  {
    v22 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v22 = -1;
  }

  windowManagementContext = [v13 windowManagementContext];
  v46 = v20;
  v47 = v13;
  v45 = windowManagementContext;
  if ([windowManagementContext isFlexibleWindowingEnabled])
  {
    isAutomaticStageCreationEnabled = [windowManagementContext isAutomaticStageCreationEnabled];
  }

  else
  {
    isAutomaticStageCreationEnabled = 1;
  }

  v26 = v48;
  if (v22 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v27 = [v18 count];
    if (!direction)
    {
      if (v22 < 1)
      {
        goto LABEL_24;
      }

      v36 = v22 + 1;
      while (1)
      {
        v30 = [v18 objectAtIndex:v36 - 2];
        environment = [v30 environment];
        if ((environment != environment) | isAutomaticStageCreationEnabled & 1)
        {
          if (environment == environment)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v38 = [v48 maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:v30 ignoreOcclusion:1 ignoreCentering:0];
          v39 = [v38 count];

          if (v39)
          {
LABEL_41:
            if (v30)
            {
              v40 = +[SBWorkspace mainWorkspace];
              _fbsDisplayConfiguration = [sceneCopy _fbsDisplayConfiguration];
              v49[0] = MEMORY[0x277D85DD0];
              v49[1] = 3221225472;
              v49[2] = __156__SBMainSwitcherControllerCoordinator__activateNeighboringAppLayoutRequiringActiveAppLayout_appLayoutEnvironment_inForwardDirection_windowScene_eventLabel___block_invoke;
              v49[3] = &unk_2783B95A0;
              v49[4] = v43;
              v50 = v30;
              v51 = labelCopy;
              directionCopy = direction;
              v42 = v30;
              [v40 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration builder:v49];
            }

            goto LABEL_24;
          }
        }

        if (--v36 <= 1)
        {
          goto LABEL_24;
        }
      }
    }

    v28 = v27;
    v29 = v22 + 1;
    if (v29 < v27)
    {
      do
      {
        v30 = [v18 objectAtIndex:v29];
        environment2 = [v30 environment];
        if ((environment2 != environment) | isAutomaticStageCreationEnabled & 1)
        {
          if (environment2 == environment)
          {
            goto LABEL_41;
          }
        }

        else
        {
          [v26 maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:v30 ignoreOcclusion:1 ignoreCentering:0];
          v32 = labelCopy;
          v34 = v33 = sceneCopy;
          v35 = [v34 count];

          sceneCopy = v33;
          labelCopy = v32;
          v26 = v48;
          if (v35)
          {
            goto LABEL_41;
          }
        }

        ++v29;
      }

      while (v28 != v29);
    }
  }

LABEL_24:
}

void __156__SBMainSwitcherControllerCoordinator__activateNeighboringAppLayoutRequiringActiveAppLayout_appLayoutEnvironment_inForwardDirection_windowScene_eventLabel___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [SBSwitcherTransitionRequest requestForActivatingAppLayout:v4];
  [v3 _configureRequest:v5 forSwitcherTransitionRequest:v6 withEventLabel:*(a1 + 48)];

  [v5 setSource:12];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __156__SBMainSwitcherControllerCoordinator__activateNeighboringAppLayoutRequiringActiveAppLayout_appLayoutEnvironment_inForwardDirection_windowScene_eventLabel___block_invoke_2;
  v7[3] = &__block_descriptor_33_e54_v16__0__SBWorkspaceApplicationSceneTransitionContext_8l;
  v8 = *(a1 + 56);
  [v5 modifyApplicationContext:v7];
}

void __156__SBMainSwitcherControllerCoordinator__activateNeighboringAppLayoutRequiringActiveAppLayout_appLayoutEnvironment_inForwardDirection_windowScene_eventLabel___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setTransitioningToLessRecentSpace:BSSettingFlagForBool()];
}

- (id)activeTransientOverlayPresentedAppLayoutForWindowScene:(id)scene
{
  v4 = [(SBMainSwitcherControllerCoordinator *)self switcherControllerForWindowScene:scene];
  contentViewController = [v4 contentViewController];
  v6 = [(SBMainSwitcherControllerCoordinator *)self activeTransientOverlayPresentedAppLayoutForSwitcherContentController:contentViewController];

  return v6;
}

- (void)addAppLayoutForTransientOverlayViewController:(id)controller windowScene:(id)scene
{
  v34[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  sceneCopy = scene;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  appLayoutToEligibleTransientOverlayViewController = self->_appLayoutToEligibleTransientOverlayViewController;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __97__SBMainSwitcherControllerCoordinator_addAppLayoutForTransientOverlayViewController_windowScene___block_invoke;
  v26[3] = &unk_2783B95C8;
  v9 = controllerCopy;
  v27 = v9;
  v28 = &v29;
  [(NSMutableDictionary *)appLayoutToEligibleTransientOverlayViewController enumerateKeysAndObjectsUsingBlock:v26];
  if ((v30[3] & 1) == 0)
  {
    representedDisplayItem = [v9 representedDisplayItem];
    if (representedDisplayItem)
    {
      v11 = [(SBMainSwitcherControllerCoordinator *)self switcherControllerForWindowScene:sceneCopy];
      v12 = [SBAppLayout alloc];
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:1];
      v33 = v13;
      v34[0] = representedDisplayItem;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
      layoutState = [v11 layoutState];
      v16 = -[SBAppLayout initWithItemsForLayoutRoles:configuration:environment:preferredDisplayOrdinal:](v12, "initWithItemsForLayoutRoles:configuration:environment:preferredDisplayOrdinal:", v14, 1, 1, [layoutState displayOrdinal]);

      v17 = self->_appLayoutToEligibleTransientOverlayViewController;
      if (!v17)
      {
        v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v19 = self->_appLayoutToEligibleTransientOverlayViewController;
        self->_appLayoutToEligibleTransientOverlayViewController = v18;

        v17 = self->_appLayoutToEligibleTransientOverlayViewController;
      }

      [(NSMutableDictionary *)v17 setObject:v9 forKey:v16];
      _currentLayoutState = [v11 _currentLayoutState];
      unlockedEnvironmentMode = [_currentLayoutState unlockedEnvironmentMode];

      contentViewController = [v11 contentViewController];
      if ((unlockedEnvironmentMode & 0xFFFFFFFFFFFFFFFELL) != 2 && ([(SBMainSwitcherControllerCoordinator *)self activeTransientOverlayPresentedAppLayoutForSwitcherContentController:contentViewController], v23 = objc_claimAutoreleasedReturnValue(), v24 = v23 == 0, v23, v24))
      {
        [(SBMainSwitcherControllerCoordinator *)self _rebuildAppListCache];
      }

      else
      {
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __97__SBMainSwitcherControllerCoordinator_addAppLayoutForTransientOverlayViewController_windowScene___block_invoke_2;
        v25[3] = &unk_2783A8C18;
        v25[4] = self;
        [(SBMainSwitcherControllerCoordinator *)self _insertAppLayout:v16 atIndex:0 contentViewController:contentViewController modelMutationBlock:v25 completion:0];
      }
    }
  }

  _Block_object_dispose(&v29, 8);
}

uint64_t __97__SBMainSwitcherControllerCoordinator_addAppLayoutForTransientOverlayViewController_windowScene___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 32) == a3)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (BOOL)_hasAppLayoutContainingDisplayItem:(id)item
{
  v17 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mainSwitcherModel = self->_mainSwitcherModel;
  bundleIdentifier = [itemCopy bundleIdentifier];
  v7 = [(SBAppSwitcherModel *)mainSwitcherModel appLayoutsForBundleIdentifier:bundleIdentifier includingHiddenAppLayouts:0];

  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v12 + 1) + 8 * i) containsItem:itemCopy])
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (void)addAppLayoutForDisplayItem:(id)item windowScene:(id)scene completion:(id)completion
{
  v21[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  sceneCopy = scene;
  completionCopy = completion;
  if ([(SBMainSwitcherControllerCoordinator *)self _hasAppLayoutContainingDisplayItem:itemCopy])
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }
  }

  else
  {
    v11 = [(SBMainSwitcherControllerCoordinator *)self switcherControllerForWindowScene:sceneCopy];
    contentViewController = [v11 contentViewController];
    v13 = [SBAppLayout alloc];
    v20 = &unk_283371318;
    v21[0] = itemCopy;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    layoutState = [v11 layoutState];
    v16 = -[SBAppLayout initWithItemsForLayoutRoles:configuration:environment:preferredDisplayOrdinal:](v13, "initWithItemsForLayoutRoles:configuration:environment:preferredDisplayOrdinal:", v14, 1, 1, [layoutState displayOrdinal]);

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __89__SBMainSwitcherControllerCoordinator_addAppLayoutForDisplayItem_windowScene_completion___block_invoke;
    v18[3] = &unk_2783A92D8;
    v18[4] = self;
    v19 = v16;
    v17 = v16;
    [(SBMainSwitcherControllerCoordinator *)self _insertAppLayout:v17 atIndex:0 contentViewController:contentViewController modelMutationBlock:v18 completion:completionCopy];
  }
}

- (void)removeAppLayoutForDisplayItem:(id)item shouldDestroyScene:(BOOL)scene
{
  v11[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v8 = [(SBMainSwitcherControllerCoordinator *)self _appLayoutContainingDisplayItem:itemCopy];
  if (v8)
  {
    if (scene)
    {
      [(SBMainSwitcherControllerCoordinator *)self deleteAppLayoutForDisplayItem:itemCopy];
    }

    else
    {
      if ([(SBMainSwitcherControllerCoordinator *)self isAnySwitcherVisible])
      {
        [(SBMainSwitcherControllerCoordinator *)a2 removeAppLayoutForDisplayItem:v8 shouldDestroyScene:?];
      }

      mainSwitcherModel = self->_mainSwitcherModel;
      v11[0] = v8;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
      [(SBAppSwitcherModel *)mainSwitcherModel removeAppLayouts:v10];

      [(SBMainSwitcherControllerCoordinator *)self _rebuildAppListCache];
    }
  }
}

- (void)addCenterRoleAppLayoutForDisplayItem:(id)item windowScene:(id)scene completion:(id)completion
{
  v22[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  sceneCopy = scene;
  completionCopy = completion;
  if ([(SBMainSwitcherControllerCoordinator *)self _hasAppLayoutContainingDisplayItem:itemCopy])
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }
  }

  else
  {
    v11 = [(SBMainSwitcherControllerCoordinator *)self switcherControllerForWindowScene:sceneCopy];
    contentViewController = [v11 contentViewController];
    v13 = [SBAppLayout alloc];
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    v21 = v14;
    v22[0] = itemCopy;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    layoutState = [v11 layoutState];
    v17 = -[SBAppLayout initWithItemsForLayoutRoles:configuration:centerConfiguration:environment:hidden:preferredDisplayOrdinal:](v13, "initWithItemsForLayoutRoles:configuration:centerConfiguration:environment:hidden:preferredDisplayOrdinal:", v15, 1, 1, 3, 0, [layoutState displayOrdinal]);

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __99__SBMainSwitcherControllerCoordinator_addCenterRoleAppLayoutForDisplayItem_windowScene_completion___block_invoke;
    v19[3] = &unk_2783A92D8;
    v19[4] = self;
    v20 = v17;
    v18 = v17;
    [(SBMainSwitcherControllerCoordinator *)self _insertAppLayout:v18 atIndex:0 contentViewController:contentViewController modelMutationBlock:v19 completion:completionCopy];
  }
}

- (BOOL)hasAppLayoutForDisplayItem:(id)item
{
  v3 = [(SBMainSwitcherControllerCoordinator *)self _appLayoutContainingDisplayItem:item];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)deleteAppLayoutForDisplayItem:(id)item
{
  itemCopy = item;
  v5 = objc_alloc_init(SBSwitcherDisplayItemRemovalResolutionRequest);
  [(SBSwitcherDisplayItemRemovalResolutionRequest *)v5 setRemovalIntentType:1 forDisplayItem:itemCopy];

  v6 = [(SBMainSwitcherControllerCoordinator *)self _resultsForDisplayItemRemovalResolutionRequest:v5 preferredAppLayoutForRemovalAnimationIfAny:0];
  if (v6)
  {
    v7 = [(SBMainSwitcherControllerCoordinator *)self _modelRemovalRequestForDisplayItemResolutionResults:v6];
    v8 = [(SBMainSwitcherControllerCoordinator *)self _switcherModelRemovalResultsForRequest:v7 forReason:0];
    appLayouts = [v8 appLayouts];
    v10 = [appLayouts count];
    v11 = v10 != 0;

    if (v10)
    {
      [(SBMainSwitcherControllerCoordinator *)self _performSceneDestructionForModelRemovalResults:v8];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)acquireAllowHiddenAppAssertionForBundleIdentifier:(id)identifier reason:(id)reason
{
  mainSwitcherModel = self->_mainSwitcherModel;
  reasonCopy = reason;
  identifierCopy = identifier;
  _recentAppLayoutsController = [(SBAppSwitcherModel *)mainSwitcherModel _recentAppLayoutsController];
  v9 = [_recentAppLayoutsController _acquireAllowHiddenAppAssertionForBundleIdentifier:identifierCopy reason:reasonCopy];

  return v9;
}

- (BOOL)hasAppLayoutForTransientOverlayViewController:(id)controller windowScene:(id)scene
{
  controllerCopy = controller;
  sceneCopy = scene;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__72;
  v18 = __Block_byref_object_dispose__72;
  v19 = 0;
  appLayoutToEligibleTransientOverlayViewController = self->_appLayoutToEligibleTransientOverlayViewController;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __97__SBMainSwitcherControllerCoordinator_hasAppLayoutForTransientOverlayViewController_windowScene___block_invoke;
  v11[3] = &unk_2783B95C8;
  v9 = controllerCopy;
  v12 = v9;
  v13 = &v14;
  [(NSMutableDictionary *)appLayoutToEligibleTransientOverlayViewController enumerateKeysAndObjectsUsingBlock:v11];
  LOBYTE(controllerCopy) = v15[5] != 0;

  _Block_object_dispose(&v14, 8);
  return controllerCopy;
}

void __97__SBMainSwitcherControllerCoordinator_hasAppLayoutForTransientOverlayViewController_windowScene___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (*(a1 + 32) == a3)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = v9;
    *a4 = 1;
  }
}

- (void)removeAppLayoutTransientOverlayViewController:(id)controller windowScene:(id)scene
{
  controllerCopy = controller;
  sceneCopy = scene;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__72;
  v24 = __Block_byref_object_dispose__72;
  v25 = 0;
  appLayoutToEligibleTransientOverlayViewController = self->_appLayoutToEligibleTransientOverlayViewController;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __97__SBMainSwitcherControllerCoordinator_removeAppLayoutTransientOverlayViewController_windowScene___block_invoke;
  v17 = &unk_2783B95C8;
  v9 = controllerCopy;
  v18 = v9;
  v19 = &v20;
  [(NSMutableDictionary *)appLayoutToEligibleTransientOverlayViewController enumerateKeysAndObjectsUsingBlock:&v14];
  if (v21[5])
  {
    [(NSMutableDictionary *)self->_appLayoutToEligibleTransientOverlayViewController removeObjectForKey:v14, v15, v16, v17];
    if (![(NSMutableDictionary *)self->_appLayoutToEligibleTransientOverlayViewController count])
    {
      v10 = self->_appLayoutToEligibleTransientOverlayViewController;
      self->_appLayoutToEligibleTransientOverlayViewController = 0;
    }

    v11 = objc_alloc_init(SBSwitcherModelRemovalRequest);
    v12 = +[SBSwitcherModelRemovalRequestAction defaultRemovalPolicyAction];
    [(SBSwitcherModelRemovalRequest *)v11 setAction:v12 forAppLayout:v21[5]];

    v13 = [(SBMainSwitcherControllerCoordinator *)self _switcherModelRemovalResultsForRequest:v11 forReason:0];
    [(SBMainSwitcherControllerCoordinator *)self _performSceneDestructionForModelRemovalResults:v13];
  }

  [(SBMainSwitcherControllerCoordinator *)self _removeAcquiredTransientOverlayViewController:v9 windowScene:sceneCopy, v14, v15, v16, v17];

  _Block_object_dispose(&v20, 8);
}

void __97__SBMainSwitcherControllerCoordinator_removeAppLayoutTransientOverlayViewController_windowScene___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (*(a1 + 32) == a3)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = v9;
    *a4 = 1;
  }
}

- (void)configureSwitcherStateForAccidentalActivationMitigationSession:(id)session completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  state = [session state];
  if (state == 3)
  {
    v17 = completionCopy;
    v9 = dispatch_group_create();
    self->_outstandingAccidentalActivationMitigationTransitionCount = [(NSMapTable *)self->_previousLayoutStatesByWindowScene count];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = [(NSMapTable *)self->_previousLayoutStatesByWindowScene copy];
    keyEnumerator = [v10 keyEnumerator];

    v12 = [keyEnumerator countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        v15 = 0;
        do
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          v16 = *(*(&v22 + 1) + 8 * v15);
          dispatch_group_enter(v9);
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __113__SBMainSwitcherControllerCoordinator_configureSwitcherStateForAccidentalActivationMitigationSession_completion___block_invoke;
          v20[3] = &unk_2783A92D8;
          v20[4] = self;
          v21 = v9;
          [(SBMainSwitcherControllerCoordinator *)self _restoreLayoutStateSnapshotForWindowScene:v16 completion:v20];

          ++v15;
        }

        while (v13 != v15);
        v13 = [keyEnumerator countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __113__SBMainSwitcherControllerCoordinator_configureSwitcherStateForAccidentalActivationMitigationSession_completion___block_invoke_2;
    block[3] = &unk_2783A9348;
    completionCopy = v17;
    v19 = v17;
    dispatch_group_notify(v9, MEMORY[0x277D85CD0], block);
  }

  else if (state == 2)
  {
    [(SBAppSwitcherModel *)self->_mainSwitcherModel clearAppLayoutsSnapshot];
    previousLayoutStatesByWindowScene = self->_previousLayoutStatesByWindowScene;
    self->_previousLayoutStatesByWindowScene = 0;

    completionCopy[2](completionCopy);
  }
}

void __113__SBMainSwitcherControllerCoordinator_configureSwitcherStateForAccidentalActivationMitigationSession_completion___block_invoke(uint64_t a1)
{
  --*(*(a1 + 32) + 432);
  v2 = *(a1 + 32);
  if (!*(v2 + 432))
  {
    [*(v2 + 224) restoreAppLayoutsSnapshot];
    [*(*(a1 + 32) + 224) clearAppLayoutsSnapshot];
    v3 = *(a1 + 32);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  v5 = *(a1 + 40);

  dispatch_group_leave(v5);
}

uint64_t __113__SBMainSwitcherControllerCoordinator_configureSwitcherStateForAccidentalActivationMitigationSession_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_takeLayoutStateSnapshotForWindowScene:(id)scene withPreviousLayoutState:(id)state
{
  sceneCopy = scene;
  stateCopy = state;
  previousLayoutStatesByWindowScene = self->_previousLayoutStatesByWindowScene;
  if (!previousLayoutStatesByWindowScene)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v9 = self->_previousLayoutStatesByWindowScene;
    self->_previousLayoutStatesByWindowScene = weakToStrongObjectsMapTable;

    previousLayoutStatesByWindowScene = self->_previousLayoutStatesByWindowScene;
  }

  [(NSMapTable *)previousLayoutStatesByWindowScene setObject:stateCopy forKey:sceneCopy];
}

- (void)_restoreLayoutStateSnapshotForWindowScene:(id)scene completion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  completionCopy = completion;
  v8 = [(NSMapTable *)self->_previousLayoutStatesByWindowScene objectForKey:sceneCopy];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  elements = [v8 elements];
  v11 = [elements countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v37;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(elements);
        }

        entityGenerator = [*(*(&v36 + 1) + 8 * i) entityGenerator];
        v16 = entityGenerator[2]();

        [v9 addObject:v16];
      }

      v12 = [elements countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v12);
  }

  v17 = [v8 elementWithRole:4];
  v18 = v17;
  if (v17)
  {
    entityGenerator2 = [v17 entityGenerator];
    v20 = entityGenerator2[2]();
  }

  else
  {
    v20 = 0;
  }

  v21 = [v8 elementWithRole:3];
  v22 = v21;
  if (v21)
  {
    entityGenerator3 = [v21 entityGenerator];
    v24 = entityGenerator3[2]();
  }

  else
  {
    v24 = 0;
  }

  v25 = +[SBWorkspace mainWorkspace];
  _fbsDisplayConfiguration = [sceneCopy _fbsDisplayConfiguration];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __92__SBMainSwitcherControllerCoordinator__restoreLayoutStateSnapshotForWindowScene_completion___block_invoke;
  v31[3] = &unk_2783AA1A0;
  v32 = v9;
  v33 = v20;
  v34 = v24;
  v35 = completionCopy;
  v27 = completionCopy;
  v28 = v24;
  v29 = v20;
  v30 = v9;
  [v25 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration builder:v31];
}

void __92__SBMainSwitcherControllerCoordinator__restoreLayoutStateSnapshotForWindowScene_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  [v3 setSource:71];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __92__SBMainSwitcherControllerCoordinator__restoreLayoutStateSnapshotForWindowScene_completion___block_invoke_2;
  v10[3] = &unk_2783B95F0;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v11 = v9;
  v12 = v8;
  [v3 modifyApplicationContext:v10];
}

void __92__SBMainSwitcherControllerCoordinator__restoreLayoutStateSnapshotForWindowScene_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAnimationDisabled:1];
  [v3 setEntities:*(a1 + 32) withPolicy:0 centerEntity:*(a1 + 40) floatingEntity:*(a1 + 48)];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __92__SBMainSwitcherControllerCoordinator__restoreLayoutStateSnapshotForWindowScene_completion___block_invoke_3;
  v4[3] = &unk_2783A9FC8;
  v5 = *(a1 + 56);
  [v3 setResultBlock:v4];
}

- (void)_clearLayoutStateSnapshotForWindowScene:(id)scene
{
  [(NSMapTable *)self->_previousLayoutStatesByWindowScene removeObjectForKey:scene];
  if (![(NSMapTable *)self->_previousLayoutStatesByWindowScene count])
  {
    previousLayoutStatesByWindowScene = self->_previousLayoutStatesByWindowScene;
    self->_previousLayoutStatesByWindowScene = 0;
  }
}

- (void)addAcquiredTransientOverlayViewController:(id)controller forAppLayout:(id)layout windowScene:(id)scene
{
  controllerCopy = controller;
  appLayoutToAcquiredTransientOverlayViewController = self->_appLayoutToAcquiredTransientOverlayViewController;
  sceneCopy = scene;
  layoutCopy = layout;
  allValues = [(NSMutableDictionary *)appLayoutToAcquiredTransientOverlayViewController allValues];
  LOBYTE(appLayoutToAcquiredTransientOverlayViewController) = [allValues containsObject:controllerCopy];

  if ((appLayoutToAcquiredTransientOverlayViewController & 1) == 0)
  {
    [controllerCopy beginIgnoringContentOverlayInsetUpdates];
  }

  v12 = self->_appLayoutToAcquiredTransientOverlayViewController;
  if (!v12)
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    v14 = self->_appLayoutToAcquiredTransientOverlayViewController;
    self->_appLayoutToAcquiredTransientOverlayViewController = v13;

    v12 = self->_appLayoutToAcquiredTransientOverlayViewController;
  }

  [(NSMutableDictionary *)v12 setObject:controllerCopy forKey:layoutCopy];
  v15 = [(SBMainSwitcherControllerCoordinator *)self switcherControllerForWindowScene:sceneCopy];

  contentViewController = [v15 contentViewController];
  [contentViewController acquiredViewController:controllerCopy forTransientOverlayAppLayout:layoutCopy];
}

- (BOOL)isAcquiredTransientOverlayViewController:(id)controller windowScene:(id)scene
{
  controllerCopy = controller;
  sceneCopy = scene;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  appLayoutToAcquiredTransientOverlayViewController = self->_appLayoutToAcquiredTransientOverlayViewController;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __92__SBMainSwitcherControllerCoordinator_isAcquiredTransientOverlayViewController_windowScene___block_invoke;
  v11[3] = &unk_2783B95C8;
  v9 = controllerCopy;
  v12 = v9;
  v13 = &v14;
  [(NSMutableDictionary *)appLayoutToAcquiredTransientOverlayViewController enumerateKeysAndObjectsUsingBlock:v11];
  LOBYTE(controllerCopy) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return controllerCopy;
}

uint64_t __92__SBMainSwitcherControllerCoordinator_isAcquiredTransientOverlayViewController_windowScene___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 32) == a3)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)_removeAcquiredTransientOverlayViewController:(id)controller windowScene:(id)scene
{
  controllerCopy = controller;
  sceneCopy = scene;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__72;
  v25 = __Block_byref_object_dispose__72;
  v26 = 0;
  appLayoutToAcquiredTransientOverlayViewController = self->_appLayoutToAcquiredTransientOverlayViewController;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __97__SBMainSwitcherControllerCoordinator__removeAcquiredTransientOverlayViewController_windowScene___block_invoke;
  v18 = &unk_2783B95C8;
  v9 = controllerCopy;
  v19 = v9;
  v20 = &v21;
  [(NSMutableDictionary *)appLayoutToAcquiredTransientOverlayViewController enumerateKeysAndObjectsUsingBlock:&v15];
  if (v22[5])
  {
    [(NSMutableDictionary *)self->_appLayoutToAcquiredTransientOverlayViewController removeObjectForKey:v15, v16, v17, v18];
    if (![(NSMutableDictionary *)self->_appLayoutToAcquiredTransientOverlayViewController count])
    {
      v10 = self->_appLayoutToAcquiredTransientOverlayViewController;
      self->_appLayoutToAcquiredTransientOverlayViewController = 0;
    }

    allValues = [(NSMutableDictionary *)self->_appLayoutToAcquiredTransientOverlayViewController allValues];
    v12 = [allValues containsObject:v9];

    if ((v12 & 1) == 0)
    {
      [v9 endIgnoringContentOverlayInsetUpdates];
    }

    v13 = [(SBMainSwitcherControllerCoordinator *)self switcherControllerForWindowScene:sceneCopy];
    contentViewController = [v13 contentViewController];
    [contentViewController relinquishTransientOverlayViewController:v9];
  }

  _Block_object_dispose(&v21, 8);
}

void __97__SBMainSwitcherControllerCoordinator__removeAcquiredTransientOverlayViewController_windowScene___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (*(a1 + 32) == a3)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = v9;
    *a4 = 1;
  }
}

- (void)_configureRequest:(id)request forSwitcherTransitionRequest:(id)transitionRequest withEventLabel:(id)label
{
  v168 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  transitionRequestCopy = transitionRequest;
  labelCopy = label;
  windowSceneManager = [SBApp windowSceneManager];
  displayIdentity = [requestCopy displayIdentity];
  v12 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

  v128 = v12;
  v13 = [(SBMainSwitcherControllerCoordinator *)self switcherControllerForWindowScene:v12];
  contentViewController = [v13 contentViewController];
  appLayout = [transitionRequestCopy appLayout];
  v145 = v13;
  windowManagementContext = [v13 windowManagementContext];
  selfCopy = self;
  if (([windowManagementContext isMedusaEnabled] & 1) == 0)
  {
    environment = [appLayout environment];

    if (environment != 2)
    {
      goto LABEL_5;
    }

    [appLayout appLayoutByModifyingEnvironment:1];
    appLayout = windowManagementContext = appLayout;
  }

LABEL_5:
  appLayoutEnvironment = [transitionRequestCopy appLayoutEnvironment];
  unlockedEnvironmentMode = [transitionRequestCopy unlockedEnvironmentMode];
  floatingConfiguration = [transitionRequestCopy floatingConfiguration];
  displayItemLayoutAttributesMap = [transitionRequestCopy displayItemLayoutAttributesMap];
  allKeys = [displayItemLayoutAttributesMap allKeys];
  v21 = [allKeys bs_compactMap:&__block_literal_global_256];

  v22 = objc_alloc(MEMORY[0x277CBEAC0]);
  v127 = displayItemLayoutAttributesMap;
  allValues = [displayItemLayoutAttributesMap allValues];
  v126 = v21;
  v24 = [v22 initWithObjects:allValues forKeys:v21];

  floatingSwitcherVisible = [transitionRequestCopy floatingSwitcherVisible];
  peekConfiguration = [transitionRequestCopy peekConfiguration];
  bundleIdentifierForAppExpose = [transitionRequestCopy bundleIdentifierForAppExpose];
  v28 = requestCopy;
  displayIdentity2 = [requestCopy displayIdentity];
  activatingDisplayItem = [transitionRequestCopy activatingDisplayItem];
  v139 = [appLayout itemForLayoutRole:?];
  v130 = [appLayout itemForLayoutRole:?];
  v129 = [appLayout itemForLayoutRole:?];
  environment2 = appLayoutEnvironment;
  if (!appLayoutEnvironment)
  {
    environment2 = [appLayout environment];
  }

  v29 = objc_alloc_init(SBWorkspaceApplicationSceneTransitionContext);
  v134 = v28;
  [v28 setApplicationContext:v29];
  v137 = objc_alloc_init(SBWorkspaceTransientOverlayTransitionContext);
  v140 = unlockedEnvironmentMode;
  [(SBWorkspaceApplicationSceneTransitionContext *)v29 setRequestedUnlockedEnvironmentMode:unlockedEnvironmentMode];
  [(SBWorkspaceApplicationSceneTransitionContext *)v29 setRequestedFloatingConfiguration:floatingConfiguration];
  [(SBWorkspaceApplicationSceneTransitionContext *)v29 setRequestedEntityIdentifierToLayoutAttributes:v24];
  [(SBWorkspaceApplicationSceneTransitionContext *)v29 setRequestedFloatingSwitcherVisible:floatingSwitcherVisible];
  [transitionRequestCopy animationDisabled];
  [(SBWorkspaceTransitionContext *)v29 setAnimationDisabled:BSSettingFlagIsYes()];
  [(SBWorkspaceApplicationSceneTransitionContext *)v29 setRequestedPeekConfiguration:peekConfiguration];
  [(SBWorkspaceApplicationSceneTransitionContext *)v29 setRequestedAppExposeBundleID:bundleIdentifierForAppExpose];
  [transitionRequestCopy autoPIPDisabled];
  [(SBWorkspaceApplicationSceneTransitionContext *)v29 setDisablesAutoPIP:BSSettingFlagIsYes()];
  -[SBWorkspaceApplicationSceneTransitionContext setFencesAnimations:](v29, "setFencesAnimations:", [transitionRequestCopy fenceSceneUpdate]);
  -[SBWorkspaceApplicationSceneTransitionContext setRetainsSiri:](v29, "setRetainsSiri:", [transitionRequestCopy retainsSiri]);
  minimizingDisplayItem = [transitionRequestCopy minimizingDisplayItem];
  [(SBWorkspaceApplicationSceneTransitionContext *)v29 setMinimizingDisplayItem:minimizingDisplayItem];

  -[SBWorkspaceApplicationSceneTransitionContext setPrefersZoomDownAnimation:](v29, "setPrefersZoomDownAnimation:", [transitionRequestCopy prefersZoomDownAnimation]);
  animationSettings = [transitionRequestCopy animationSettings];
  v32 = animationSettings;
  if (animationSettings)
  {
    v163 = 0;
    v164 = 0;
    [animationSettings dampingRatio];
    [v32 response];
    convertDampingRatioAndResponseToTensionAndFriction();
    v33 = [MEMORY[0x277CF0CF0] settingsWithMass:1.0 stiffness:0.0 damping:0.0];
    [(SBWorkspaceTransitionContext *)v29 setAnimationSettings:v33];
  }

  v147 = v29;
  v34 = 0x27839E000;
  v35 = v139;
  v135 = transitionRequestCopy;
  v125 = v24;
  if (unlockedEnvironmentMode == 2)
  {
    v36 = 1;
    v37 = activatingDisplayItem;
    v38 = v134;
  }

  else
  {
    IsYes = BSSettingFlagIsYes();
    v38 = v134;
    v40 = environment2;
    if (v140 == 1)
    {
LABEL_16:
      sceneManager = +[(SBWorkspaceEntity *)SBHomeScreenEntity];
      [(SBWorkspaceApplicationSceneTransitionContext *)v147 setActivatingEntity:sceneManager];
      goto LABEL_17;
    }

    v36 = IsYes;
    v37 = activatingDisplayItem;
    v34 = 0x27839E000uLL;
  }

  homeScreenAppLayout = [*(v34 + 2744) homeScreenAppLayout];
  if ([appLayout isEqual:homeScreenAppLayout])
  {

    v40 = environment2;
    goto LABEL_16;
  }

  v42 = +[SBDisplayItem homeScreenDisplayItem];
  v43 = [(SBDisplayItem *)v37 isEqualToItem:v42];

  v35 = v139;
  v40 = environment2;
  if (v43)
  {
    goto LABEL_16;
  }

  if (v36)
  {
    sceneManager = [(SBMainSwitcherControllerCoordinator *)selfCopy activeTransientOverlayPresentedAppLayoutForSwitcherContentController:contentViewController];
    if (sceneManager)
    {
      v49 = [(SBMainSwitcherControllerCoordinator *)selfCopy createWorkspaceTransientOverlayForAppLayout:sceneManager];
      v45 = v49 != 0;
      if (v49)
      {
        [(SBWorkspaceTransientOverlayTransitionContext *)v137 setTransientOverlay:v49];
        v45 = 1;
        [(SBWorkspaceTransientOverlayTransitionContext *)v137 setTransitionType:1];
      }

      goto LABEL_18;
    }

LABEL_17:
    v45 = 0;
LABEL_18:

LABEL_19:
    v46 = v135;
    goto LABEL_20;
  }

  v45 = 0;
  if (!activatingDisplayItem)
  {
    goto LABEL_19;
  }

  v46 = v135;
  if (appLayout)
  {
    if ([appLayout containsItem:activatingDisplayItem])
    {
      sceneManager = [v128 sceneManager];
      displayIdentity3 = [sceneManager displayIdentity];
      v55 = [(SBMainSwitcherControllerCoordinator *)selfCopy _entityForDisplayItem:activatingDisplayItem sceneHandleProvider:sceneManager displayIdentity:displayIdentity3];

      [(SBWorkspaceApplicationSceneTransitionContext *)v147 setActivatingEntity:v55];
      v161[0] = MEMORY[0x277D85DD0];
      v161[1] = 3221225472;
      v161[2] = __101__SBMainSwitcherControllerCoordinator__configureRequest_forSwitcherTransitionRequest_withEventLabel___block_invoke_2;
      v161[3] = &unk_2783A9398;
      v162 = v55;
      v56 = v55;
      v57 = [v38 addCompletionHandler:v161];

      goto LABEL_17;
    }

    v45 = 0;
  }

LABEL_20:
  v124 = v32;
  if (!v35)
  {
    goto LABEL_70;
  }

  if ([v35 type] == 2)
  {
    appSuggestion = [(SBMainSwitcherControllerCoordinator *)selfCopy _entityForDisplayItem:v35 displayIdentity:displayIdentity2];
    [(SBWorkspaceTransientOverlayTransitionContext *)v137 setTransientOverlay:appSuggestion];
    [(SBWorkspaceTransientOverlayTransitionContext *)v137 setTransitionType:0];
    v45 = 1;
LABEL_69:

    goto LABEL_70;
  }

  if ([v35 type] == 4)
  {
    appSuggestion = [v35 appSuggestion];
    if ([appSuggestion isSiriSuggestion])
    {
      v122 = v45;
      v48 = +[(SBWorkspaceEntity *)SBHomeScreenEntity];
LABEL_67:
      v69 = v147;
      [(SBWorkspaceApplicationSceneTransitionContext *)v147 setEntity:v48 forLayoutRole:1];
      goto LABEL_68;
    }

    if ([appSuggestion isCallContinuitySuggestion] && !+[SBInCallPresentationManager isSpecializedAPISupported](SBInCallPresentationManager, "isSpecializedAPISupported"))
    {
      v48 = [(SBMainSwitcherControllerCoordinator *)selfCopy _entityForDisplayItem:v35 displayIdentity:displayIdentity2];
      [(SBWorkspaceTransientOverlayTransitionContext *)v137 setTransientOverlay:v48];
      [(SBWorkspaceTransientOverlayTransitionContext *)v137 setTransitionType:0];
      v159[0] = MEMORY[0x277D85DD0];
      v159[1] = 3221225472;
      v159[2] = __101__SBMainSwitcherControllerCoordinator__configureRequest_forSwitcherTransitionRequest_withEventLabel___block_invoke_3;
      v159[3] = &unk_2783A9398;
      v160 = appSuggestion;
      v68 = [v38 addCompletionHandler:v159];

      v122 = 1;
    }

    else
    {
      v122 = v45;
      if (![appSuggestion isCallContinuitySuggestion])
      {
        v48 = [(SBMainSwitcherControllerCoordinator *)selfCopy _entityForDisplayItem:v35 displayIdentity:displayIdentity2];
        launchURL = [appSuggestion launchURL];

        v63 = 0x27839E000uLL;
        if (launchURL)
        {
          launchURL2 = [appSuggestion launchURL];
          if ([appSuggestion launchURLRequiresInboxCopy])
          {
            application = [v48 application];
            info = [application info];
            documentInboxURL = [info documentInboxURL];
            v142 = [appSuggestion makeInboxCopyOfLaunchURLToInboxURL:documentInboxURL];

            v46 = v135;
            v35 = v139;

            v63 = 0x27839E000;
            launchURL2 = v142;
          }

          [v48 setObject:launchURL2 forActivationSetting:5];
        }

        else
        {
          v76 = objc_alloc(MEMORY[0x277D750D8]);
          uniqueIdentifier = [appSuggestion uniqueIdentifier];
          uUIDString = [uniqueIdentifier UUIDString];
          activityType = [appSuggestion activityType];
          launchURL2 = [v76 initWithIdentifier:uUIDString activityTypeIdentifier:activityType appSuggestion:appSuggestion];

          v35 = v139;
          v79 = [MEMORY[0x277CBEB98] setWithObject:launchURL2];
          [v48 addActions:v79];

          v80 = +[SBAppSuggestionManager sharedInstance];
          [v80 startFetchingPayloadForAppSuggestion:appSuggestion];

          v46 = v135;
        }

        sharedInstance = [*(v63 + 2840) sharedInstance];
        [sharedInstance noteActivatingForAppSuggestion:appSuggestion fromSource:1];

        goto LABEL_67;
      }

      v48 = +[SBWorkspace mainWorkspace];
      inCallPresentationManager = [v48 inCallPresentationManager];
      uniqueIdentifier2 = [appSuggestion uniqueIdentifier];
      [inCallPresentationManager handlePresentationForActivityContinuationIdentifier:uniqueIdentifier2];

      v46 = v135;
    }

    v69 = v147;
LABEL_68:

    v82 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
    [(SBWorkspaceApplicationSceneTransitionContext *)v69 setEntity:v82 forLayoutRole:2];

    v45 = v122;
    goto LABEL_69;
  }

  if (![v35 type] || objc_msgSend(v35, "type") == 5 || objc_msgSend(v35, "type") == 3)
  {
    displayIdentity4 = [v38 displayIdentity];
    appSuggestion = [(SBMainSwitcherControllerCoordinator *)selfCopy _entityForDisplayItem:v35 displayIdentity:displayIdentity4];

    switch(v40)
    {
      case 3:
        v152[0] = MEMORY[0x277D85DD0];
        v152[1] = 3221225472;
        v152[2] = __101__SBMainSwitcherControllerCoordinator__configureRequest_forSwitcherTransitionRequest_withEventLabel___block_invoke_6;
        v152[3] = &unk_2783ACA48;
        v60 = v147;
        v153 = v60;
        SBLayoutRoleEnumerateAppLayoutRoles(v152);
        v61 = [(SBMainSwitcherControllerCoordinator *)selfCopy _entityForDisplayItem:v35 displayIdentity:displayIdentity2];
        [(SBWorkspaceApplicationSceneTransitionContext *)v60 setEntity:v61 forLayoutRole:4];
        -[SBWorkspaceApplicationSceneTransitionContext setRequestedCenterConfiguration:](v60, "setRequestedCenterConfiguration:", SBMainDisplayLayoutStateCenterConfigurationFromAppLayoutCenterConfiguration([appLayout centerConfiguration]));

        v46 = v135;
        v53 = v153;
        break;
      case 2:
        [(SBWorkspaceApplicationSceneTransitionContext *)v147 setEntity:appSuggestion forLayoutRole:3];
        v154[0] = MEMORY[0x277D85DD0];
        v154[1] = 3221225472;
        v154[2] = __101__SBMainSwitcherControllerCoordinator__configureRequest_forSwitcherTransitionRequest_withEventLabel___block_invoke_5;
        v154[3] = &unk_2783ACA48;
        v155 = v147;
        SBLayoutRoleEnumerateAppLayoutRoles(v154);
        v53 = v155;
        break;
      case 1:
        v120 = bundleIdentifierForAppExpose;
        v51 = objc_opt_new();
        v156[0] = MEMORY[0x277D85DD0];
        v156[1] = 3221225472;
        v156[2] = __101__SBMainSwitcherControllerCoordinator__configureRequest_forSwitcherTransitionRequest_withEventLabel___block_invoke_4;
        v156[3] = &unk_2783AED40;
        v156[4] = selfCopy;
        v52 = displayIdentity2;
        v157 = v52;
        v53 = v51;
        v158 = v53;
        [appLayout enumerate:v156];
        -[SBWorkspaceApplicationSceneTransitionContext setRequestedSpaceConfiguration:](v147, "setRequestedSpaceConfiguration:", SBMainDisplayLayoutStateSpaceConfigurationFromAppLayoutConfiguration([appLayout configuration]));
        if (v130)
        {
          v119 = [(SBMainSwitcherControllerCoordinator *)selfCopy _entityForDisplayItem:v130 displayIdentity:v52];
          -[SBWorkspaceApplicationSceneTransitionContext setRequestedCenterConfiguration:](v147, "setRequestedCenterConfiguration:", SBMainDisplayLayoutStateCenterConfigurationFromAppLayoutCenterConfiguration([appLayout centerConfiguration]));
        }

        else
        {
          v119 = 0;
        }

        v40 = environment2;
        if (v129)
        {
          [(SBMainSwitcherControllerCoordinator *)selfCopy _entityForDisplayItem:v129 displayIdentity:v52];
        }

        else
        {
          [SBPreviousWorkspaceEntity entityWithPreviousLayoutRole:3];
        }
        v70 = ;
        entityInsertionPolicy = [v46 entityInsertionPolicy];
        v72 = v70;
        [(SBWorkspaceApplicationSceneTransitionContext *)v147 setEntities:v53 withPolicy:entityInsertionPolicy centerEntity:v119 floatingEntity:v70];
        windowManagementContext2 = [v145 windowManagementContext];
        isChamoisOrFlexibleWindowing = [windowManagementContext2 isChamoisOrFlexibleWindowing];

        if (entityInsertionPolicy == 1 && isChamoisOrFlexibleWindowing)
        {
          firstObject = [(SBWorkspaceApplicationSceneTransitionContext *)v53 firstObject];
          [(SBWorkspaceApplicationSceneTransitionContext *)v147 _setRequestedFrontmostEntity:firstObject];
        }

        v46 = v135;
        bundleIdentifierForAppExpose = v120;
        v35 = v139;
        break;
      default:
        goto LABEL_69;
    }

    goto LABEL_69;
  }

LABEL_70:
  v83 = labelCopy;
  if (v40 == 1)
  {
    v123 = v45;
    v121 = bundleIdentifierForAppExpose;
    displayItemLayoutAttributesProvider = [(SBMainSwitcherControllerCoordinator *)selfCopy displayItemLayoutAttributesProvider];
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    allItems = [appLayout allItems];
    v85 = [allItems countByEnumeratingWithState:&v148 objects:v167 count:16];
    v86 = v147;
    if (v85)
    {
      v87 = v85;
      v88 = *v149;
      do
      {
        for (i = 0; i != v87; ++i)
        {
          if (*v149 != v88)
          {
            objc_enumerationMutation(allItems);
          }

          v90 = *(*(&v148 + 1) + 8 * i);
          v91 = -[SBWorkspaceApplicationSceneTransitionContext entityForLayoutRole:](v86, "entityForLayoutRole:", [appLayout layoutRoleForItem:v90]);
          v92 = v91;
          if (v91)
          {
            if (([v91 isEmptyWorkspaceEntity] & 1) == 0 && (objc_msgSend(v92, "isPreviousWorkspaceEntity") & 1) == 0)
            {
              v93 = [(SBWorkspaceApplicationSceneTransitionContext *)v86 requestedLayoutAttributesForEntity:v92];

              if (!v93)
              {
                layoutState = [v145 layoutState];
                displayOrdinal = [layoutState displayOrdinal];
                v86 = v147;
                interfaceOrientation = [v145 interfaceOrientation];
                if ((interfaceOrientation - 1) < 2)
                {
                  v97 = 1;
                }

                else
                {
                  v97 = 2 * ((interfaceOrientation - 3) < 2);
                }

                v98 = [displayItemLayoutAttributesProvider layoutAttributesForDisplayItem:v90 inAppLayout:appLayout displayOrdinal:displayOrdinal orientation:v97];

                [(SBWorkspaceApplicationSceneTransitionContext *)v147 setRequestedLayoutAttributes:v98 forEntity:v92];
              }
            }
          }
        }

        v87 = [allItems countByEnumeratingWithState:&v148 objects:v167 count:16];
      }

      while (v87);
    }

    v38 = v134;
    v46 = v135;
    v83 = labelCopy;
    bundleIdentifierForAppExpose = v121;
    v35 = v139;
    v45 = v123;
  }

  source = [v46 source];
  if (source)
  {
    v100 = source;
    [v38 setSource:source];
    if (v100 == 51)
    {
      [v38 applicationContext];
      v102 = v101 = v45;
      activatingEntity = [v102 activatingEntity];
      [activatingEntity setFlag:1 forActivationSetting:62];

      v45 = v101;
    }
  }

  else
  {
    if ([appLayout type] == 4)
    {
      v104 = v38;
      v105 = 10;
    }

    else
    {
      v104 = v38;
      v105 = 3;
    }

    [v104 setSource:v105];
  }

  v106 = !v45;
  if (v140 == 2)
  {
    v107 = 0;
  }

  else
  {
    v107 = v106;
  }

  [(SBWorkspaceApplicationSceneTransitionContext *)v147 setWaitsForSceneUpdates:v107];
  if ((v106 & 1) == 0)
  {
    [v38 setTransientOverlayContext:v137];
    v108 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    [(SBWorkspaceApplicationSceneTransitionContext *)v147 setEntity:v108 forLayoutRole:1];

    v109 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    [(SBWorkspaceApplicationSceneTransitionContext *)v147 setEntity:v109 forLayoutRole:2];
  }

  if ([v83 length])
  {
    [v38 setEventLabel:v83];
  }

  -[SBWorkspaceApplicationSceneTransitionContext setSettlesMultiAppFullScreenSpacesImmediately:](v147, "setSettlesMultiAppFullScreenSpacesImmediately:", [v46 settlesMultiAppFullScreenSpacesImmediately]);
  v110 = +[SBAppLayout homeScreenAppLayout];
  v111 = [appLayout isEqual:v110];

  if (v111)
  {
    v112 = -1;
  }

  else
  {
    v113 = [(NSArray *)selfCopy->_appLayouts indexOfObject:appLayout];
    if (v113 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v112 = -1;
    }

    else
    {
      v112 = v113;
    }
  }

  v165[0] = *MEMORY[0x277D67670];
  v114 = [MEMORY[0x277CCABB0] numberWithInteger:v112];
  v165[1] = *MEMORY[0x277D67678];
  v166[0] = v114;
  v166[1] = &unk_283371330;
  v115 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v166 forKeys:v165 count:2];
  v116 = MEMORY[0x277D65DD0];
  v117 = v115;
  sharedInstance2 = [v116 sharedInstance];
  [sharedInstance2 emitEvent:14 withPayload:v117];
}

void __101__SBMainSwitcherControllerCoordinator__configureRequest_forSwitcherTransitionRequest_withEventLabel___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = [*(a1 + 32) applicationSceneEntity];
    v3 = [v2 sceneHandle];
    v6 = [v3 sceneIfExists];

    if (v6)
    {
      v4 = +[(SBWorkspace *)SBMainWorkspace];
      v5 = [v4 keyboardFocusController];
      [v5 userFocusRequestForScene:v6 reason:@"SwitcherTransitionRequest" completion:0];
    }
  }
}

void __101__SBMainSwitcherControllerCoordinator__configureRequest_forSwitcherTransitionRequest_withEventLabel___block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    v5 = +[SBWorkspace mainWorkspace];
    v3 = [v5 inCallTransientOverlayManager];
    v4 = [*(a1 + 32) uniqueIdentifier];
    [v3 presentTransientOverlayForActivityContinuationWithActivityIdentifier:v4];
  }
}

uint64_t __101__SBMainSwitcherControllerCoordinator__configureRequest_forSwitcherTransitionRequest_withEventLabel___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (SBLayoutRoleIsValidForSplitView(a2))
  {
    v5 = [*(a1 + 32) _entityForDisplayItem:v7 displayIdentity:*(a1 + 40)];
    if (v5)
    {
      [*(a1 + 48) addObject:v5];
    }
  }

  return MEMORY[0x2821F9730]();
}

void __101__SBMainSwitcherControllerCoordinator__configureRequest_forSwitcherTransitionRequest_withEventLabel___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [SBPreviousWorkspaceEntity entityWithPreviousLayoutRole:a2];
  [v3 setEntity:v4 forLayoutRole:a2];
}

void __101__SBMainSwitcherControllerCoordinator__configureRequest_forSwitcherTransitionRequest_withEventLabel___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [SBPreviousWorkspaceEntity entityWithPreviousLayoutRole:a2];
  [v3 setEntity:v4 forLayoutRole:a2];
}

- (id)_appLayoutFromPrimaryLayoutItem:(id)item sideLayoutElement:(id)element configuration:(int64_t)configuration
{
  itemCopy = item;
  elementCopy = element;
  v9 = +[SBDisplayItem homeScreenDisplayItem];
  v10 = [(SBDisplayItem *)itemCopy isEqualToItem:v9];

  if (v10)
  {
    v11 = +[SBAppLayout homeScreenAppLayout];
  }

  else if (itemCopy | elementCopy)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (itemCopy)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:1];
      [v12 setObject:itemCopy forKeyedSubscript:v13];

      v14 = [MEMORY[0x277CCABB0] numberWithInteger:2];
      [v12 setObject:elementCopy forKeyedSubscript:v14];
    }

    v15 = 4;
    if (!elementCopy)
    {
      v15 = 1;
    }

    if (!configuration)
    {
      configuration = v15;
    }

    v11 = [[SBAppLayout alloc] initWithItemsForLayoutRoles:v12 configuration:configuration environment:1 preferredDisplayOrdinal:0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_appLayoutContainingDisplayItem:(id)item
{
  v16 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_appLayouts;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 containsItem:{itemCopy, v11}])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_entityForDisplayItem:(id)item displayIdentity:(id)identity
{
  identityCopy = identity;
  itemCopy = item;
  v8 = +[SBSceneManagerCoordinator sharedInstance];
  v9 = [v8 sceneManagerForDisplayIdentity:identityCopy];

  v10 = [(SBMainSwitcherControllerCoordinator *)self _entityForDisplayItem:itemCopy sceneHandleProvider:v9 displayIdentity:identityCopy];

  return v10;
}

- (id)_entityForDisplayItem:(id)item switcherController:(id)controller
{
  itemCopy = item;
  windowScene = [controller windowScene];
  sceneManager = [windowScene sceneManager];

  displayIdentity = [sceneManager displayIdentity];
  v10 = [(SBMainSwitcherControllerCoordinator *)self _entityForDisplayItem:itemCopy sceneHandleProvider:sceneManager displayIdentity:displayIdentity];

  return v10;
}

- (id)_entityForDisplayItem:(id)item sceneHandleProvider:(id)provider displayIdentity:(id)identity
{
  itemCopy = item;
  providerCopy = provider;
  identityCopy = identity;
  bundleIdentifier = [itemCopy bundleIdentifier];
  if (![itemCopy type] || objc_msgSend(itemCopy, "type") == 5)
  {
    v13 = +[SBApplicationController sharedInstance];
    appSuggestion = [v13 applicationForDisplayItem:itemCopy];

    bundleIdentifier2 = [appSuggestion bundleIdentifier];
    v16 = [SBAppClipPlaceholderWorkspaceEntity isAppClipUpdateAvailableForBundleIdentifier:bundleIdentifier2];

    if (!appSuggestion || v16)
    {
      v20 = +[SBApplicationPlaceholderController sharedInstance];
      uniqueIdentifier2 = [v20 placeholderForDisplayID:bundleIdentifier];

      if ([uniqueIdentifier2 isAppClip] | v16)
      {
        v21 = [SBAppClipPlaceholderWorkspaceEntity alloc];
        uniqueIdentifier = [itemCopy uniqueIdentifier];
        v19 = [(SBAppClipPlaceholderWorkspaceEntity *)v21 initWithBundleIdentifier:bundleIdentifier futureSceneIdentifier:uniqueIdentifier needsUpdate:v16];
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v17 = [SBDeviceApplicationSceneEntity alloc];
      uniqueIdentifier2 = [itemCopy uniqueIdentifier];
      v19 = [(SBDeviceApplicationSceneEntity *)v17 initWithApplication:appSuggestion uniqueIdentifier:uniqueIdentifier2 sceneHandleProvider:providerCopy displayIdentity:identityCopy];
    }

    goto LABEL_13;
  }

  if ([itemCopy type] == 4)
  {
    appSuggestion = [itemCopy appSuggestion];
    if ([bundleIdentifier isEqual:@"com.apple.Siri"])
    {
      v23 = +[(SBWorkspaceEntity *)SBHomeScreenEntity];
LABEL_26:
      v19 = v23;
LABEL_13:

      goto LABEL_14;
    }

    if (![appSuggestion isCallContinuitySuggestion])
    {
      v29 = +[SBApplicationController sharedInstance];
      uniqueIdentifier4 = [v29 applicationWithBundleIdentifier:bundleIdentifier];

      v30 = [SBDeviceApplicationSceneEntity alloc];
      uniqueIdentifier3 = [itemCopy uniqueIdentifier];
      v19 = [(SBDeviceApplicationSceneEntity *)v30 initWithApplication:uniqueIdentifier4 uniqueIdentifier:uniqueIdentifier3 sceneHandleProvider:providerCopy displayIdentity:identityCopy];

      goto LABEL_35;
    }

    uniqueIdentifier4 = [(SBMainSwitcherControllerCoordinator *)self _appLayoutContainingDisplayItem:itemCopy];
    if (!uniqueIdentifier4)
    {
      v19 = 0;
      goto LABEL_35;
    }

    v28 = [(SBMainSwitcherControllerCoordinator *)self createWorkspaceTransientOverlayForAppLayout:uniqueIdentifier4];
LABEL_22:
    v19 = v28;
LABEL_35:

    goto LABEL_13;
  }

  if ([itemCopy type] == 3)
  {
    v25 = +[SBApplicationController sharedInstance];
    appSuggestion = [v25 applicationWithBundleIdentifier:bundleIdentifier];

    v26 = [SBDeviceApplicationSceneEntity alloc];
    uniqueIdentifier4 = [itemCopy uniqueIdentifier];
    v28 = [(SBDeviceApplicationSceneEntity *)v26 initWithApplication:appSuggestion uniqueIdentifier:uniqueIdentifier4 sceneHandleProvider:providerCopy displayIdentity:identityCopy];
    goto LABEL_22;
  }

  if ([itemCopy type] == 2)
  {
    appSuggestion = [(SBMainSwitcherControllerCoordinator *)self _appLayoutContainingDisplayItem:itemCopy];
    if (appSuggestion)
    {
      v23 = [(SBMainSwitcherControllerCoordinator *)self createWorkspaceTransientOverlayForAppLayout:appSuggestion];
      goto LABEL_26;
    }

LABEL_33:
    v19 = 0;
    goto LABEL_13;
  }

  if ([itemCopy type] == 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = 0;
    if ([itemCopy type] != 7 && itemCopy)
    {
      appSuggestion = [MEMORY[0x277CCA890] currentHandler];
      [appSuggestion handleFailureInMethod:a2 object:self file:@"SBMainSwitcherControllerCoordinator.m" lineNumber:2608 description:@"Unhandled display item type"];
      goto LABEL_33;
    }
  }

LABEL_14:

  return v19;
}

- (id)switcherContentController:(id)controller deviceApplicationSceneHandleForDisplayItem:(id)item
{
  itemCopy = item;
  v7 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controller];
  v8 = [v7 _deviceApplicationSceneHandleForDisplayItem:itemCopy];

  return v8;
}

- (BOOL)isDisplayEmbeddedForSwitcherContentController:(id)controller
{
  v3 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controller];
  windowScene = [v3 windowScene];
  isExtendedDisplayWindowScene = [windowScene isExtendedDisplayWindowScene];

  return isExtendedDisplayWindowScene ^ 1;
}

- (id)windowManagementContextForSwitcherContentController:(id)controller
{
  v3 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controller];
  windowManagementContext = [v3 windowManagementContext];

  return windowManagementContext;
}

- (id)proposedAppLayoutsForWindowDragForSwitcherContentController:(id)controller
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __99__SBMainSwitcherControllerCoordinator_proposedAppLayoutsForWindowDragForSwitcherContentController___block_invoke;
  v7[3] = &unk_2783B9578;
  v5 = v4;
  v8 = v5;
  [(SBMainSwitcherControllerCoordinator *)self enumerateSwitcherControllersWithBlock:v7];

  return v5;
}

void __99__SBMainSwitcherControllerCoordinator_proposedAppLayoutsForWindowDragForSwitcherContentController___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 contentViewController];
  v4 = objc_opt_class();
  v5 = v3;
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

  v9 = [v7 _proposedAppLayoutForWindowDrag];

  v8 = v9;
  if (v9)
  {
    [*(a1 + 32) addObject:v9];
    v8 = v9;
  }
}

- (id)windowSceneForSwitcherContentController:(id)controller
{
  v3 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controller];
  windowScene = [v3 windowScene];

  return windowScene;
}

- (id)appLayoutsForSwitcherContentController:(id)controller
{
  v4 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controller];
  v5 = [(SBMainSwitcherControllerCoordinator *)self appLayoutsForSwitcherController:v4];

  return v5;
}

- (int64_t)nextDisplayItemInteractionTimeForSwitcherContentController:(id)controller
{
  mainSwitcherModel = self->_mainSwitcherModel;
  controllerCopy = controller;
  _recentAppLayoutsController = [(SBAppSwitcherModel *)mainSwitcherModel _recentAppLayoutsController];
  contentOrientation = [controllerCopy contentOrientation];

  if ((contentOrientation - 1) < 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2 * ((contentOrientation - 3) < 2);
  }

  v8 = [_recentAppLayoutsController _nextInteractionTimeInOrientation:v7];

  return v8;
}

- (id)switcherGestureManagerForSwitcherContentController:(id)controller
{
  v3 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controller];
  gestureManager = [v3 gestureManager];

  return gestureManager;
}

- (id)sceneRelevancyManagerForSwitcherContentController:(id)controller
{
  v3 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controller];
  sceneRelevancyManager = [v3 sceneRelevancyManager];

  return sceneRelevancyManager;
}

- (id)activeTransientOverlayPresentedAppLayoutForSwitcherContentController:(id)controller
{
  controllerCopy = controller;
  v5 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controllerCopy];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__72;
  v19 = __Block_byref_object_dispose__72;
  v20 = 0;
  windowScene = [v5 windowScene];
  transientOverlayPresenter = [windowScene transientOverlayPresenter];

  appLayoutToEligibleTransientOverlayViewController = self->_appLayoutToEligibleTransientOverlayViewController;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __108__SBMainSwitcherControllerCoordinator_activeTransientOverlayPresentedAppLayoutForSwitcherContentController___block_invoke;
  v12[3] = &unk_2783B95C8;
  v9 = transientOverlayPresenter;
  v13 = v9;
  v14 = &v15;
  [(NSMutableDictionary *)appLayoutToEligibleTransientOverlayViewController enumerateKeysAndObjectsUsingBlock:v12];
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

void __108__SBMainSwitcherControllerCoordinator_activeTransientOverlayPresentedAppLayoutForSwitcherContentController___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([*(a1 + 32) isTopmostPresentedViewController:a3])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)appLayoutForWorkspaceTransientOverlay:(id)overlay windowScene:(id)scene
{
  overlayCopy = overlay;
  sceneCopy = scene;
  viewController = [overlayCopy viewController];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__72;
  v20 = __Block_byref_object_dispose__72;
  v21 = 0;
  appLayoutToEligibleTransientOverlayViewController = self->_appLayoutToEligibleTransientOverlayViewController;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __89__SBMainSwitcherControllerCoordinator_appLayoutForWorkspaceTransientOverlay_windowScene___block_invoke;
  v13[3] = &unk_2783B95C8;
  v10 = viewController;
  v14 = v10;
  v15 = &v16;
  [(NSMutableDictionary *)appLayoutToEligibleTransientOverlayViewController enumerateKeysAndObjectsUsingBlock:v13];
  v11 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v11;
}

void __89__SBMainSwitcherControllerCoordinator_appLayoutForWorkspaceTransientOverlay_windowScene___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (*(a1 + 32) == a3)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = v9;
    *a4 = 1;
  }
}

- (id)createWorkspaceTransientOverlayForAppLayout:(id)layout
{
  v3 = [(NSMutableDictionary *)self->_appLayoutToEligibleTransientOverlayViewController objectForKey:layout];
  if (v3)
  {
    v4 = [[SBWorkspaceTransientOverlay alloc] initWithViewController:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)matchingIconViewForIconView:(id)view
{
  matchingIconZoomingViewOverlay = [view matchingIconZoomingViewOverlay];
  v4 = objc_opt_class();
  v5 = matchingIconZoomingViewOverlay;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  v6 = v4;

  return v4;
}

- (CGRect)switcherContentController:(id)controller frameForItemWithRole:(int64_t)role inMainAppLayout:(id)layout interfaceOrientation:(int64_t)orientation
{
  layoutCopy = layout;
  v11 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controller];
  [v11 frameForItemWithRole:role inMainAppLayout:layoutCopy interfaceOrientation:orientation];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)switcherContentController:(id)controller frameForFloatingAppLayoutInInterfaceOrientation:(int64_t)orientation floatingConfiguration:(int64_t)configuration
{
  v7 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controller];
  [v7 frameForFloatingAppLayoutInInterfaceOrientation:orientation floatingConfiguration:configuration];
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

- (CGRect)switcherContentController:(id)controller frameForCenterItemWithConfiguration:(int64_t)configuration interfaceOrientation:(int64_t)orientation
{
  v7 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controller];
  [v7 frameForCenterItemWithConfiguration:configuration interfaceOrientation:orientation];
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

- (id)transitionEventForContext:(id)context identifier:(id)identifier phase:(unint64_t)phase animated:(BOOL)animated
{
  animatedCopy = animated;
  v152 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  identifierCopy = identifier;
  v9 = objc_opt_class();
  previousLayoutState = [contextCopy previousLayoutState];
  v11 = SBSafeCast(v9, previousLayoutState);

  unlockedEnvironmentMode = [v11 unlockedEnvironmentMode];
  v12 = objc_opt_class();
  layoutState = [contextCopy layoutState];
  v14 = SBSafeCast(v12, layoutState);

  unlockedEnvironmentMode2 = [v14 unlockedEnvironmentMode];
  request = [contextCopy request];
  source = [request source];
  transientOverlayContext = [request transientOverlayContext];
  windowSceneManager = [SBApp windowSceneManager];
  displayIdentity = [request displayIdentity];
  v20 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

  v123 = v20;
  switcherController = [v20 switcherController];
  windowManagementContext = [switcherController windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  appLayout = [v11 appLayout];
  floatingAppLayout = [v11 floatingAppLayout];
  [v14 invalidateAppLayout];
  [v14 invalidateFloatingAppLayout];
  appLayout2 = [v14 appLayout];
  floatingAppLayout2 = [v14 floatingAppLayout];
  v131 = contextCopy;
  selfCopy = self;
  v133 = request;
  v124 = transientOverlayContext;
  if (transientOverlayContext)
  {
    v120 = v14;
    v23 = v11;
    v24 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForTransitionRequest:request];
    windowScene = [v24 windowScene];
    transitionType = [transientOverlayContext transitionType];
    transientOverlay = [transientOverlayContext transientOverlay];
    v28 = [(SBMainSwitcherControllerCoordinator *)self appLayoutForWorkspaceTransientOverlay:transientOverlay windowScene:windowScene];

    selfCopy3 = self;
    v30 = unlockedEnvironmentMode;
    if (v28)
    {
      if (transitionType)
      {
        v30 = 3;
      }

      v31 = unlockedEnvironmentMode2;
      if (!transitionType)
      {
        v31 = 3;
      }

      unlockedEnvironmentMode2 = v31;
      v32 = appLayout;
      if (transitionType)
      {
        appLayout = v28;
        v33 = appLayout2;
      }

      else
      {
        v33 = v28;
      }

      if (transitionType)
      {
        v34 = v32;
      }

      else
      {
        v34 = appLayout2;
      }

      v35 = v28;

      appLayout2 = v33;
      selfCopy3 = selfCopy;
    }

    v11 = v23;
    v14 = v120;
    contextCopy = v131;
    v36 = animatedCopy;
  }

  else
  {
    selfCopy3 = self;
    v36 = animatedCopy;
    v30 = unlockedEnvironmentMode;
  }

  v37 = [[SBTransitionSwitcherModifierEvent alloc] initWithTransitionID:identifierCopy phase:phase animated:v36];
  [(SBTransitionSwitcherModifierEvent *)v37 setFromAppLayout:appLayout];
  [(SBTransitionSwitcherModifierEvent *)v37 setFromEnvironmentMode:v30];
  -[SBTransitionSwitcherModifierEvent setFromInterfaceOrientation:](v37, "setFromInterfaceOrientation:", [v11 interfaceOrientation]);
  v38 = [v11 elementWithRole:1];
  -[SBTransitionSwitcherModifierEvent setFromAppLayoutWantsExclusiveForeground:](v37, "setFromAppLayoutWantsExclusiveForeground:", [v38 hasLayoutAttributes:2]);

  bundleIDShowingAppExpose = [v11 bundleIDShowingAppExpose];
  [(SBTransitionSwitcherModifierEvent *)v37 setFromAppExposeBundleID:bundleIDShowingAppExpose];

  activatingEntity = [contextCopy activatingEntity];
  applicationSceneEntity = [activatingEntity applicationSceneEntity];
  if (applicationSceneEntity)
  {
    v42 = applicationSceneEntity;

    goto LABEL_19;
  }

  v43 = [contextCopy entityForLayoutRole:1];
  applicationSceneEntity2 = [v43 applicationSceneEntity];

  v42 = applicationSceneEntity2;
  if (applicationSceneEntity2)
  {
LABEL_19:
    _recentAppLayoutsController = [(SBMainSwitcherControllerCoordinator *)selfCopy3 _recentAppLayoutsController];
    v46 = [_recentAppLayoutsController _transitionContextRepresentsAmbiguousLaunch:contextCopy forApplicationSceneEntity:v42];

    v121 = v42;
    if (v46)
    {
      application = [v42 application];
      bundleIdentifier = [application bundleIdentifier];
      [(SBTransitionSwitcherModifierEvent *)v37 setAmbiguouslyLaunchedBundleIDIfAny:bundleIdentifier];
    }

    goto LABEL_22;
  }

  v121 = 0;
LABEL_22:
  [(SBTransitionSwitcherModifierEvent *)v37 setToAppLayout:appLayout2];
  [(SBTransitionSwitcherModifierEvent *)v37 setToEnvironmentMode:unlockedEnvironmentMode2];
  -[SBTransitionSwitcherModifierEvent setToInterfaceOrientation:](v37, "setToInterfaceOrientation:", [v14 interfaceOrientation]);
  v49 = [v14 elementWithRole:1];
  -[SBTransitionSwitcherModifierEvent setToAppLayoutWantsExclusiveForeground:](v37, "setToAppLayoutWantsExclusiveForeground:", [v49 hasLayoutAttributes:2]);

  bundleIDShowingAppExpose2 = [v14 bundleIDShowingAppExpose];
  [(SBTransitionSwitcherModifierEvent *)v37 setToAppExposeBundleID:bundleIDShowingAppExpose2];

  floatingAppLayout3 = [v11 floatingAppLayout];
  [(SBTransitionSwitcherModifierEvent *)v37 setFromFloatingAppLayout:floatingAppLayout3];

  -[SBTransitionSwitcherModifierEvent setFromFloatingConfiguration:](v37, "setFromFloatingConfiguration:", [v11 floatingConfiguration]);
  -[SBTransitionSwitcherModifierEvent setFromFloatingSwitcherVisible:](v37, "setFromFloatingSwitcherVisible:", [v11 isFloatingSwitcherVisible]);
  -[SBTransitionSwitcherModifierEvent setToFloatingSwitcherVisible:](v37, "setToFloatingSwitcherVisible:", [v14 isFloatingSwitcherVisible]);
  [(SBTransitionSwitcherModifierEvent *)v37 setToFloatingAppLayout:floatingAppLayout2];
  -[SBTransitionSwitcherModifierEvent setToFloatingConfiguration:](v37, "setToFloatingConfiguration:", [v14 floatingConfiguration]);
  -[SBTransitionSwitcherModifierEvent setFromPeekConfiguration:](v37, "setFromPeekConfiguration:", [v11 peekConfiguration]);
  -[SBTransitionSwitcherModifierEvent setToPeekConfiguration:](v37, "setToPeekConfiguration:", [v14 peekConfiguration]);
  -[SBTransitionSwitcherModifierEvent setFromSpaceConfiguration:](v37, "setFromSpaceConfiguration:", [v11 spaceConfiguration]);
  -[SBTransitionSwitcherModifierEvent setToSpaceConfiguration:](v37, "setToSpaceConfiguration:", [v14 spaceConfiguration]);
  v126 = v11;
  -[SBTransitionSwitcherModifierEvent setFromWindowPickerRole:](v37, "setFromWindowPickerRole:", [v11 windowPickerRole]);
  -[SBTransitionSwitcherModifierEvent setToWindowPickerRole:](v37, "setToWindowPickerRole:", [v14 windowPickerRole]);
  liveDisplayItemsBeingTerminated = selfCopy3->_liveDisplayItemsBeingTerminated;
  v149[0] = MEMORY[0x277D85DD0];
  v149[1] = 3221225472;
  v149[2] = __91__SBMainSwitcherControllerCoordinator_transitionEventForContext_identifier_phase_animated___block_invoke;
  v149[3] = &unk_2783A8C90;
  v53 = v37;
  v150 = v53;
  v54 = [(NSMutableSet *)liveDisplayItemsBeingTerminated bs_filter:v149];
  [(SBTransitionSwitcherModifierEvent *)v53 setFromDisplayItemsPendingTermination:v54];

  v55 = v133;
  bannerUnfurlSourceContextProvider = [v133 bannerUnfurlSourceContextProvider];
  v57 = [bannerUnfurlSourceContextProvider bannerUnfurlSourceContextForTransitionRequest:v133];
  [(SBTransitionSwitcherModifierEvent *)v53 setBannerUnfurlSourceContext:v57];

  -[SBTransitionSwitcherModifierEvent setPrefersCrossfadeTransition:](v53, "setPrefersCrossfadeTransition:", [contextCopy prefersCrossfadeTransition]);
  -[SBTransitionSwitcherModifierEvent setPrefersCenterZoomTransition:](v53, "setPrefersCenterZoomTransition:", [contextCopy prefersCenterZoomTransition]);
  -[SBTransitionSwitcherModifierEvent setPrefersZoomDownAnimation:](v53, "setPrefersZoomDownAnimation:", [contextCopy prefersZoomDownAnimation]);
  preludeAnimationTokenWrapper = [contextCopy preludeAnimationTokenWrapper];
  isTokenAvailable = [preludeAnimationTokenWrapper isTokenAvailable];

  if (phase == 1 && isTokenAvailable)
  {
    preludeAnimationTokenWrapper2 = [contextCopy preludeAnimationTokenWrapper];
    consumeToken = [preludeAnimationTokenWrapper2 consumeToken];

    v62 = [SBConsumableTokenWrapper consumableTokenWrapperWithToken:consumeToken];
    [(SBTransitionSwitcherModifierEvent *)v53 setZoomFromHardwareButtonPreludeTokenWrapper:v62];
  }

  v137 = appLayout;
  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  applicationSceneEntities = [contextCopy applicationSceneEntities];
  v64 = [applicationSceneEntities countByEnumeratingWithState:&v145 objects:v151 count:16];
  if (!v64)
  {
    v74 = 0;
    goto LABEL_46;
  }

  v65 = v64;
  v66 = *v146;
  do
  {
    v67 = v14;
    v68 = 0;
    do
    {
      if (*v146 != v66)
      {
        objc_enumerationMutation(applicationSceneEntities);
      }

      v69 = *(*(&v145 + 1) + 8 * v68);
      activationSettings = [v69 activationSettings];
      v71 = [activationSettings objectForActivationSetting:46];
      if (v71 || [activationSettings flagForActivationSetting:56] == 1)
      {

LABEL_33:
        displayItemRepresentation = [v69 displayItemRepresentation];
        if ([appLayout2 containsItem:displayItemRepresentation])
        {
          v75 = appLayout2;
        }

        else
        {
          if (([floatingAppLayout2 containsItem:displayItemRepresentation] & 1) == 0)
          {

            goto LABEL_36;
          }

          v75 = floatingAppLayout2;
        }

        v74 = [v75 leafAppLayoutForRole:{objc_msgSend(v75, "layoutRoleForItem:", displayItemRepresentation)}];

        v14 = v67;
        contextCopy = v131;
        v55 = v133;
        goto LABEL_46;
      }

      if ([activationSettings flagForActivationSetting:11] == 1)
      {
        goto LABEL_33;
      }

LABEL_36:

      ++v68;
    }

    while (v65 != v68);
    v73 = [applicationSceneEntities countByEnumeratingWithState:&v145 objects:v151 count:16];
    v65 = v73;
    v74 = 0;
    v14 = v67;
    contextCopy = v131;
    v55 = v133;
  }

  while (v73);
LABEL_46:

  v76 = v74;
  if (v74)
  {
    v77 = switcherController;
  }

  else
  {
    v77 = switcherController;
    if (source == 52)
    {
      v76 = 0;
      if (v137 == appLayout2 && floatingAppLayout == floatingAppLayout2)
      {
        requestedWindowPickerRole = [contextCopy requestedWindowPickerRole];
        if (requestedWindowPickerRole)
        {
          v80 = requestedWindowPickerRole;
          if (requestedWindowPickerRole == 3)
          {
            v81 = floatingAppLayout2;
            v80 = 1;
          }

          else
          {
            v81 = appLayout2;
          }

          v79 = [v81 leafAppLayoutForRole:v80];
        }

        else
        {
          v79 = appLayout2;
        }

        v76 = v79;
      }
    }
  }

  v119 = v76;
  [(SBTransitionSwitcherModifierEvent *)v53 setActivatingAppLayout:v76];
  v82 = source == 27 || source == 11;
  [(SBTransitionSwitcherModifierEvent *)v53 setGestureInitiated:v82];
  v84 = source == 51 || source == 12;
  [(SBTransitionSwitcherModifierEvent *)v53 setKeyboardShortcutInitiated:v84];
  [(SBTransitionSwitcherModifierEvent *)v53 setTopAffordanceInitiated:source == 50];
  [(SBTransitionSwitcherModifierEvent *)v53 setDragAndDropTransition:source == 27];
  [(SBTransitionSwitcherModifierEvent *)v53 setBreadcrumbTransition:source == 15];
  v144 = 0;
  if ([(SBMainSwitcherControllerCoordinator *)selfCopy _shouldMorphFromPIPForTransitionContext:contextCopy outForLayoutRole:&v144])
  {
    [(SBTransitionSwitcherModifierEvent *)v53 setMorphFromPIPTransition:1];
  }

  else
  {
    [(SBTransitionSwitcherModifierEvent *)v53 setMorphToPIPTransition:[(SBMainSwitcherControllerCoordinator *)selfCopy _shouldMorphToPIPForTransitionContext:contextCopy outForLayoutRole:&v144]];
  }

  [(SBTransitionSwitcherModifierEvent *)v53 setMorphingPIPLayoutRole:v144];
  coverSheetFlyInContext = [contextCopy coverSheetFlyInContext];
  [(SBTransitionSwitcherModifierEvent *)v53 setCoverSheetFlyInContext:coverSheetFlyInContext];

  [(SBTransitionSwitcherModifierEvent *)v53 setZoomFromSystemApertureTransition:[(SBMainSwitcherControllerCoordinator *)selfCopy _shouldZoomFromSystemApertureForTransitionContext:contextCopy]];
  [(SBTransitionSwitcherModifierEvent *)v53 setContinuityTransition:source == 10];
  [(SBTransitionSwitcherModifierEvent *)v53 setBannerUnfurlTransition:source == 37];
  [(SBTransitionSwitcherModifierEvent *)v53 setSpotlightTransition:source == 2];
  [(SBTransitionSwitcherModifierEvent *)v53 setShelfTransition:source == 52];
  [(SBTransitionSwitcherModifierEvent *)v53 setShelfRequestTransition:source == 54];
  [(SBTransitionSwitcherModifierEvent *)v53 setMorphFromInAppView:source == 55];
  [(SBTransitionSwitcherModifierEvent *)v53 setQuickActionTransition:source == 33];
  [(SBTransitionSwitcherModifierEvent *)v53 setNewSceneTransition:source == 35];
  if ([v55 isCrossingDisplays])
  {
    v86 = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)selfCopy->_currentCoordinatedLayoutStateTransitionContext hasTransitioningDisplayItemsForSwitcherController:v77];
  }

  else
  {
    v86 = 0;
  }

  [(SBTransitionSwitcherModifierEvent *)v53 setMoveDisplaysTransition:v86];
  [(SBTransitionSwitcherModifierEvent *)v53 setContinuousExposeConfigurationChangeEvent:source == 65];
  [(SBTransitionSwitcherModifierEvent *)v53 setiPadOSWindowingModeChangeEvent:source == 64];
  [(SBTransitionSwitcherModifierEvent *)v53 setCommandTabTransition:source == 16];
  [(SBTransitionSwitcherModifierEvent *)v53 setLaunchingFromDockTransition:(source & 0xFFFFFFFFFFFFFFFELL) == 24];
  [(SBTransitionSwitcherModifierEvent *)v53 setAppLaunchDuringWindowDragGestureTransition:source == 68];
  [(SBTransitionSwitcherModifierEvent *)v53 setUnstashFromHomeTransition:source == 77];
  [(SBTransitionSwitcherModifierEvent *)v53 setRotationTransition:source == 14];
  _previousDesktopSpaceItems = [v77 _previousDesktopSpaceItems];
  [(SBTransitionSwitcherModifierEvent *)v53 setPreviousDesktopItems:_previousDesktopSpaceItems];

  minimizingDisplayItem = [contextCopy minimizingDisplayItem];
  [(SBTransitionSwitcherModifierEvent *)v53 setMinimizingDisplayItem:minimizingDisplayItem];

  isTransitioningToLessRecentSpace = [contextCopy isTransitioningToLessRecentSpace];
  isAppClipPlaceholderEntity = isTransitioningToLessRecentSpace != 0x7FFFFFFFFFFFFFFFLL;
  if (isTransitioningToLessRecentSpace != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (BSSettingFlagIsYes())
    {
      v91 = 2;
    }

    else
    {
      v91 = 1;
    }

    [(SBTransitionSwitcherModifierEvent *)v53 setDosidoTransitionDirection:v91];
  }

  activeTransitionModelRemovalAppLayoutToRemovalContext = selfCopy->_activeTransitionModelRemovalAppLayoutToRemovalContext;
  v142[0] = MEMORY[0x277D85DD0];
  v142[1] = 3221225472;
  v142[2] = __91__SBMainSwitcherControllerCoordinator_transitionEventForContext_identifier_phase_animated___block_invoke_2;
  v142[3] = &unk_2783B9618;
  v93 = v53;
  v143 = v93;
  [(NSDictionary *)activeTransitionModelRemovalAppLayoutToRemovalContext enumerateKeysAndObjectsUsingBlock:v142];
  if (isTransitioningToLessRecentSpace == 0x7FFFFFFFFFFFFFFFLL)
  {
    v94 = v126;
    v95 = switcherController;
    if (v137 && unlockedEnvironmentMode2 == 1 && ![v137 type])
    {
      v96 = [v126 elementWithRole:1];
      workspaceEntity = [v96 workspaceEntity];

      v98 = [contextCopy removalContextForEntity:workspaceEntity];

      if (workspaceEntity)
      {
        if (![workspaceEntity isDeviceApplicationSceneEntity] || v98)
        {
          isAppClipPlaceholderEntity = [workspaceEntity isAppClipPlaceholderEntity];
        }

        else
        {
          application2 = [workspaceEntity application];
          if (application2 && (v100 = application2, [application2 info], v101 = objc_claimAutoreleasedReturnValue(), v128 = objc_msgSend(v101, "isAppClip"), v101, application2 = v100, (v128 & 1) != 0))
          {
            isAppClipPlaceholderEntity = 1;
          }

          else
          {
            v139 = application2;
            windowSceneManager2 = [SBApp windowSceneManager];
            displayIdentity2 = [v55 displayIdentity];
            v104 = [windowSceneManager2 windowSceneForDisplayIdentity:displayIdentity2];

            v129 = [(SBMainSwitcherControllerCoordinator *)selfCopy switcherControllerForWindowScene:v104];
            contentViewController = [v129 contentViewController];
            v106 = [contentViewController iconForAppLayout:v137];
            if ([v106 isBookmarkIcon])
            {
              [v106 bookmark];
              v107 = v118 = v104;
              [v107 webClip];
              v108 = contextCopy;
              v109 = v14;
              v111 = v110 = v55;
              isAppClipPlaceholderEntity = [v111 isAppClip];

              v55 = v110;
              v14 = v109;
              contextCopy = v108;

              v104 = v118;
            }

            else
            {
              isAppClipPlaceholderEntity = 0;
            }

            v94 = v126;
            v95 = switcherController;
            application2 = v139;
          }
        }
      }

      else
      {
        isAppClipPlaceholderEntity = 0;
      }
    }
  }

  else
  {
    v94 = v126;
    v95 = switcherController;
  }

  [(SBTransitionSwitcherModifierEvent *)v93 setIconZoomDisabled:isAppClipPlaceholderEntity];
  if (isChamoisOrFlexibleWindowing)
  {
    displayItemLayoutAttributesMap = [v94 displayItemLayoutAttributesMap];
    [(SBTransitionSwitcherModifierEvent *)v93 setFromDisplayItemLayoutAttributesMap:displayItemLayoutAttributesMap];

    displayItemLayoutAttributesMap2 = [v14 displayItemLayoutAttributesMap];
    [(SBTransitionSwitcherModifierEvent *)v93 setToDisplayItemLayoutAttributesMap:displayItemLayoutAttributesMap2];
  }

  if ([(SBTransitionSwitcherModifierEvent *)v93 isMoveDisplaysTransition])
  {
    v114 = [SBTransitionSwitcherModifierMoveDisplaysContext moveDisplaysContextWithCoordinatedLayoutStateTransitionContext:selfCopy->_currentCoordinatedLayoutStateTransitionContext relativeToSwitcherController:v95];
    [(SBTransitionSwitcherModifierEvent *)v93 setMoveDisplaysContext:v114];
  }

  v115 = v143;
  v116 = v93;

  return v116;
}

uint64_t __91__SBMainSwitcherControllerCoordinator_transitionEventForContext_identifier_phase_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) fromAppLayout];
  if ([v4 containsItem:v3])
  {
    v5 = 1;
  }

  else
  {
    v6 = [*(a1 + 32) fromFloatingAppLayout];
    v5 = [v6 containsItem:v3];
  }

  return v5;
}

- (BOOL)_shouldMorphToPIPForTransitionContext:(id)context outForLayoutRole:(int64_t *)role
{
  contextCopy = context;
  if (role)
  {
    *role = 0;
  }

  if (SBReduceMotion())
  {
    v6 = 0;
  }

  else
  {
    v7 = objc_opt_class();
    previousLayoutState = [contextCopy previousLayoutState];
    v9 = SBSafeCast(v7, previousLayoutState);

    v10 = objc_opt_class();
    layoutState = [contextCopy layoutState];
    v12 = SBSafeCast(v10, layoutState);

    v30 = v9;
    unlockedEnvironmentMode = [v9 unlockedEnvironmentMode];
    v29 = v12;
    unlockedEnvironmentMode2 = [v12 unlockedEnvironmentMode];
    request = [contextCopy request];
    transientOverlayContext = [request transientOverlayContext];
    source = [request source];
    v18 = (unlockedEnvironmentMode & 0xFFFFFFFFFFFFFFFELL) == 2;
    if (unlockedEnvironmentMode == 1)
    {
      if (transientOverlayContext)
      {
        v18 = [transientOverlayContext transitionType] == 1;
      }

      else
      {
        v18 = 0;
      }
    }

    previousLayoutState2 = [contextCopy previousLayoutState];
    interfaceOrientation = [previousLayoutState2 interfaceOrientation];

    layoutState2 = [contextCopy layoutState];
    interfaceOrientation2 = [layoutState2 interfaceOrientation];

    v6 = 0;
    v24 = interfaceOrientation2 <= 1 || source == 11 || interfaceOrientation == interfaceOrientation2;
    if (v24 && v18 && unlockedEnvironmentMode2 == 1)
    {
      v31 = 0;
      v32 = 0;
      v25 = [SBAutoPIPWorkspaceTransaction shouldAutoPIPEnteringBackgroundForRequest:request foundEntity:&v31 transitionStyle:&v32];
      v26 = v31;
      v27 = v26;
      if (v25 && v26 && v32 == 3)
      {
        if (role)
        {
          *role = [v26 layoutRole];
        }

        v6 = 1;
      }

      else
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

- (BOOL)_shouldMorphFromPIPForTransitionContext:(id)context outForLayoutRole:(int64_t *)role
{
  contextCopy = context;
  request = [contextCopy request];
  source = [request source];

  if (role)
  {
    if (source == 45)
    {
      requestedActivatingWorkspaceEntity = [contextCopy requestedActivatingWorkspaceEntity];
      *role = [requestedActivatingWorkspaceEntity layoutRole];
    }

    else
    {
      *role = 0;
    }
  }

  return source == 45;
}

- (BOOL)_shouldZoomFromSystemApertureForTransitionContext:(id)context
{
  contextCopy = context;
  if (SBReduceMotion() || !SBSIsSystemApertureAvailable())
  {
    v6 = 0;
  }

  else
  {
    request = [contextCopy request];
    source = [request source];

    if ((source - 22) <= 0x2D)
    {
      v6 = 0x208000000001uLL >> (source - 22);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

- (int64_t)switcherInterfaceOrientationForSwitcherContentController:(id)controller
{
  v3 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controller];
  interfaceOrientation = [v3 interfaceOrientation];

  return interfaceOrientation;
}

- (int64_t)homeScreenInterfaceOrientationForContentController:(id)controller
{
  controllerCopy = controller;
  v5 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controllerCopy];
  windowScene = [v5 windowScene];
  if (([windowScene isMainDisplayWindowScene] & 1) != 0 || objc_msgSend(windowScene, "isContinuityDisplayWindowScene"))
  {
    v7 = [(SBMainSwitcherControllerCoordinator *)self _homeScreenAppearanceControllerForSwitcherContentController:controllerCopy];
    window = [v7 window];
    interfaceOrientation = [window interfaceOrientation];
  }

  else
  {
    interfaceOrientation = [(SBMainSwitcherControllerCoordinator *)self switcherInterfaceOrientationForSwitcherContentController:controllerCopy];
  }

  return interfaceOrientation;
}

- (BOOL)isInAppStatusBarRequestedHiddenForSwitcherContentController:(id)controller
{
  controllerCopy = controller;
  v5 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controllerCopy];
  v6 = [v5 isInAppStatusBarRequestedHiddenForSwitcherContentController:controllerCopy];

  return v6;
}

- (CGRect)leadingStatusBarPartFrameForSwitcherContentController:(id)controller
{
  v3 = [(SBMainSwitcherControllerCoordinator *)self windowSceneForSwitcherContentController:controller];
  statusBarManager = [v3 statusBarManager];
  statusBar = [statusBarManager statusBar];

  [statusBar frameForPartWithIdentifier:*MEMORY[0x277D775C0]];
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

- (CGRect)trailingStatusBarPartFrameForSwitcherContentController:(id)controller
{
  v3 = [(SBMainSwitcherControllerCoordinator *)self windowSceneForSwitcherContentController:controller];
  statusBarManager = [v3 statusBarManager];
  statusBar = [statusBarManager statusBar];

  [statusBar frameForPartWithIdentifier:*MEMORY[0x277D775C8]];
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

- (id)switcherContentController:(id)controller visibleAppLayoutsForBundleIdentifier:(id)identifier
{
  controllerCopy = controller;
  v7 = [(SBAppSwitcherModel *)self->_mainSwitcherModel appLayoutsForBundleIdentifier:identifier includingHiddenAppLayouts:0];
  if ([(NSMapTable *)self->_switcherControllersByWindowScene count]== 1)
  {
    v8 = v7;
  }

  else
  {
    v9 = MEMORY[0x277CBEB98];
    v10 = [(SBMainSwitcherControllerCoordinator *)self appLayoutsForSwitcherContentController:controllerCopy];
    v11 = [v9 setWithArray:v10];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __102__SBMainSwitcherControllerCoordinator_switcherContentController_visibleAppLayoutsForBundleIdentifier___block_invoke;
    v14[3] = &unk_2783A8CB8;
    v15 = v11;
    v12 = v11;
    v8 = [v7 bs_filter:v14];
  }

  return v8;
}

- (id)switcherContentController:(id)controller visibleDisplayItemsForBundleIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v7 = [(SBAppSwitcherModel *)self->_mainSwitcherModel recentDisplayItemsForBundleIdentifier:identifier includingHiddenAppLayouts:0];
  if ([(NSMapTable *)self->_switcherControllersByWindowScene count]== 1)
  {
    v8 = v7;
  }

  else
  {
    v9 = [MEMORY[0x277CBEB58] set];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [(SBMainSwitcherControllerCoordinator *)self appLayoutsForSwitcherContentController:controllerCopy, 0];
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          allItems = [*(*(&v17 + 1) + 8 * i) allItems];
          [v9 addObjectsFromArray:allItems];
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    v8 = [v7 mutableCopy];
    [v8 intersectSet:v9];
  }

  return v8;
}

- (id)switcherContentController:(id)controller hiddenAppLayoutsForBundleIdentifier:(id)identifier
{
  v4 = [(SBAppSwitcherModel *)self->_mainSwitcherModel appLayoutsForBundleIdentifier:identifier includingHiddenAppLayouts:1];
  v5 = [v4 bs_filter:&__block_literal_global_283];

  return v5;
}

- (BOOL)switcherContentController:(id)controller supportsKillingOfAppLayout:(id)layout
{
  controllerCopy = controller;
  layoutCopy = layout;
  v8 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controllerCopy];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __92__SBMainSwitcherControllerCoordinator_switcherContentController_supportsKillingOfAppLayout___block_invoke;
  v12[3] = &unk_2783B19C0;
  v9 = v8;
  v13 = v9;
  v14 = &v15;
  [layoutCopy enumerate:v12];
  v10 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v10;
}

void __92__SBMainSwitcherControllerCoordinator_switcherContentController_supportsKillingOfAppLayout___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) _deviceApplicationSceneHandleForDisplayItem:?];
  if (v6)
  {
    v8 = v6;
    v7 = [v6 prefersClosingInSwitcherDisabled] ^ 1;
    v6 = v8;
    *(*(*(a1 + 40) + 8) + 24) = v7;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

- (BOOL)switcherContentController:(id)controller displayItemSupportsCenterRole:(id)role
{
  roleCopy = role;
  v7 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controller];
  v8 = [v7 _deviceApplicationSceneHandleForDisplayItem:roleCopy];

  if (v8)
  {
    supportsCenterWindow = [v8 supportsCenterWindow];
  }

  else
  {
    supportsCenterWindow = 0;
  }

  return supportsCenterWindow;
}

- (BOOL)switcherContentController:(id)controller supportsTitleItemsForAppLayout:(id)layout
{
  controllerCopy = controller;
  layoutCopy = layout;
  v8 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controllerCopy];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __96__SBMainSwitcherControllerCoordinator_switcherContentController_supportsTitleItemsForAppLayout___block_invoke;
  v16 = &unk_2783B19C0;
  v9 = v8;
  v17 = v9;
  v18 = &v19;
  [layoutCopy enumerate:&v13];
  if (v20[3])
  {
    v10 = 0;
  }

  else
  {
    type = [layoutCopy type];
    if (type >= 5)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0x19u >> type;
    }
  }

  _Block_object_dispose(&v19, 8);
  return v10 & 1;
}

void __96__SBMainSwitcherControllerCoordinator_switcherContentController_supportsTitleItemsForAppLayout___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) _deviceApplicationSceneHandleForDisplayItem:?];
  if (v6)
  {
    v7 = v6;
    *(*(*(a1 + 40) + 8) + 24) = [v6 prefersHeaderHiddenInSwitcher];
    v6 = v7;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  *a4 = *(*(*(a1 + 40) + 8) + 24);
}

- (BOOL)switcherContentControllerHasMultipleDisplays:(id)displays
{
  coordinatedSwitcherControllers = [(SBMainSwitcherControllerCoordinator *)self coordinatedSwitcherControllers];
  v4 = [coordinatedSwitcherControllers count] > 1;

  return v4;
}

- (unint64_t)maximumNumberOfScenesOnStageForSwitcherContentController:(id)controller
{
  v3 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controller];
  maximumNumberOfScenesOnStage = [v3 maximumNumberOfScenesOnStage];

  return maximumNumberOfScenesOnStage;
}

- (id)windowingConfigurationForSwitcherContentControllerCorrespondingToDisplayOrdinal:(int64_t)ordinal
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __119__SBMainSwitcherControllerCoordinator_windowingConfigurationForSwitcherContentControllerCorrespondingToDisplayOrdinal___block_invoke;
  v12[3] = &__block_descriptor_40_e30_B16__0__SBSwitcherController_8l;
  v12[4] = ordinal;
  v3 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerPassingTest:v12];
  v4 = v3;
  if (v3 && (([v3 contentViewController], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_class(), v7 = v5, !v6) ? (v8 = 0) : (objc_opt_isKindOfClass() & 1) == 0 ? (v8 = 0) : (v8 = v7), v9 = v8, v7, v7, v9))
  {
    windowingConfiguration = [v9 windowingConfiguration];
  }

  else
  {
    windowingConfiguration = 0;
  }

  return windowingConfiguration;
}

BOOL __119__SBMainSwitcherControllerCoordinator_windowingConfigurationForSwitcherContentControllerCorrespondingToDisplayOrdinal___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 layoutState];
  v4 = [v3 displayOrdinal] == *(a1 + 32);

  return v4;
}

- (id)appLayoutForSwitcherContentControllerCorrespondingToDisplayOrdinal:(int64_t)ordinal
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __106__SBMainSwitcherControllerCoordinator_appLayoutForSwitcherContentControllerCorrespondingToDisplayOrdinal___block_invoke;
  v8[3] = &__block_descriptor_40_e30_B16__0__SBSwitcherController_8l;
  v8[4] = ordinal;
  v3 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerPassingTest:v8];
  v4 = v3;
  if (v3)
  {
    layoutState = [v3 layoutState];
    appLayout = [layoutState appLayout];
  }

  else
  {
    appLayout = 0;
  }

  return appLayout;
}

BOOL __106__SBMainSwitcherControllerCoordinator_appLayoutForSwitcherContentControllerCorrespondingToDisplayOrdinal___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 layoutState];
  v4 = [v3 displayOrdinal] == *(a1 + 32);

  return v4;
}

- (id)displayConfigurationsOfOtherDisplaysForSwitcherContentController:(id)controller
{
  controllerCopy = controller;
  coordinatedSwitcherControllers = [(SBMainSwitcherControllerCoordinator *)self coordinatedSwitcherControllers];
  v6 = [coordinatedSwitcherControllers bs_compactMap:&__block_literal_global_288_0];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __104__SBMainSwitcherControllerCoordinator_displayConfigurationsOfOtherDisplaysForSwitcherContentController___block_invoke_2;
  v10[3] = &unk_2783B9660;
  v10[4] = self;
  v11 = controllerCopy;
  v7 = controllerCopy;
  v8 = [v6 bs_filter:v10];

  return v8;
}

id __104__SBMainSwitcherControllerCoordinator_displayConfigurationsOfOtherDisplaysForSwitcherContentController___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 displayIdentity];
  v3 = [v2 currentConfiguration];

  return v3;
}

uint64_t __104__SBMainSwitcherControllerCoordinator_displayConfigurationsOfOtherDisplaysForSwitcherContentController___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 _switcherControllerForContentViewController:v3];
  v6 = [v5 displayIdentity];
  v7 = [v6 currentConfiguration];
  v8 = [v7 isEqual:v4];

  return v8 ^ 1u;
}

- (id)guardedForegroundDisplayItemsForSwitcherContentController:(id)controller
{
  v3 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controller];
  layoutState = [v3 layoutState];
  elements = [layoutState elements];
  v6 = [elements bs_compactMap:&__block_literal_global_292_0];

  v7 = [v6 bs_map:&__block_literal_global_295];

  return v7;
}

id __97__SBMainSwitcherControllerCoordinator_guardedForegroundDisplayItemsForSwitcherContentController___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 workspaceEntity];
  v3 = [v2 deviceApplicationSceneEntity];

  v4 = [v3 sceneHandle];
  v5 = [v4 isEffectivelyForeground];

  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)desktopSpaceItemsForSwitcherContentController:(id)controller
{
  v3 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controller];
  _desktopSpaceItems = [v3 _desktopSpaceItems];

  return _desktopSpaceItems;
}

- (id)slideOverItemForSwitcherContentController:(id)controller
{
  v3 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controller];
  _slideOverDisplayItem = [v3 _slideOverDisplayItem];

  return _slideOverDisplayItem;
}

- (void)switcherContentController:(id)controller performTransitionWithRequest:(id)request gestureInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  requestCopy = request;
  v9 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controller];
  v10 = v9;
  if (initiatedCopy)
  {
    gestureManager = [v9 gestureManager];
    if ([requestCopy sceneUpdatesOnly])
    {
      [gestureManager handleTransitionRequestForGestureUpdate:requestCopy];
    }

    else
    {
      [gestureManager handleTransitionRequestForGestureComplete:requestCopy];
    }
  }

  else
  {
    displayConfiguration = [requestCopy displayConfiguration];
    v13 = displayConfiguration;
    if (displayConfiguration)
    {
      _fbsDisplayConfiguration = displayConfiguration;
    }

    else
    {
      windowScene = [v10 windowScene];
      _fbsDisplayConfiguration = [windowScene _fbsDisplayConfiguration];
    }

    v16 = +[SBWorkspace mainWorkspace];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __111__SBMainSwitcherControllerCoordinator_switcherContentController_performTransitionWithRequest_gestureInitiated___block_invoke;
    v21[3] = &unk_2783A98F0;
    v22 = requestCopy;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __111__SBMainSwitcherControllerCoordinator_switcherContentController_performTransitionWithRequest_gestureInitiated___block_invoke_2;
    v18[3] = &unk_2783AC5C0;
    v18[4] = self;
    v19 = v22;
    v20 = v10;
    v17 = v10;
    [v16 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration builder:v21 validator:v18];
  }
}

void __111__SBMainSwitcherControllerCoordinator_switcherContentController_performTransitionWithRequest_gestureInitiated___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) isAppLaunchDuringWindowDragGesture])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = [*(a1 + 32) appLayout];
    v5 = [v4 allItems];

    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * v9);
          v11 = +[SBApplicationController sharedInstance];
          v12 = [v10 bundleIdentifier];
          v13 = [v11 applicationWithBundleIdentifier:v12];

          LOBYTE(v12) = [v13 alwaysMaximizedInChamois];
          if (v12)
          {

            goto LABEL_15;
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v14 = v3;
    v15 = 68;
    goto LABEL_13;
  }

  if ([*(a1 + 32) source] == 77)
  {
    v14 = v3;
    v15 = 77;
LABEL_13:
    [v14 setSource:v15];
  }

LABEL_15:
}

uint64_t __111__SBMainSwitcherControllerCoordinator_switcherContentController_performTransitionWithRequest_gestureInitiated___block_invoke_2(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a2;
  v6 = [v4 dismissSwitcherEventName];
  [v2 _configureRequest:v5 forSwitcherTransitionRequest:v3 withEventLabel:v6];

  return 1;
}

- (void)switcherContentController:(id)controller deletedDisplayItem:(id)item inAppLayout:(id)layout forReason:(int64_t)reason
{
  controllerCopy = controller;
  itemCopy = item;
  layoutCopy = layout;
  if (reason == 1)
  {
    firstObject = [(NSArray *)self->_appLayouts firstObject];
    if ([layoutCopy isEqual:firstObject])
    {
    }

    else
    {
      recentAppLayouts = [(SBMainSwitcherControllerCoordinator *)self recentAppLayouts];
      firstObject2 = [recentAppLayouts firstObject];
      v15 = [layoutCopy isEqual:firstObject2];

      if (!v15)
      {
        goto LABEL_6;
      }
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SBUserSwipedToKillRecentAppLayoutNotification" object:self];
  }

LABEL_6:
  [(SBMainSwitcherControllerCoordinator *)self _removeDisplayItem:itemCopy forReason:reason preferredAppLayoutForRemovalAnimationIfAny:layoutCopy originatingSwitcherContentController:controllerCopy];
}

- (void)switcherContentController:(id)controller activatedBestAppSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  controllerCopy = controller;
  bundleIdentifier = [suggestionCopy bundleIdentifier];
  v11 = [SBContinuityDisplayItem continuityAppDisplayItemWithBundleIdentifier:bundleIdentifier appSuggestion:suggestionCopy];

  v9 = [(SBMainSwitcherControllerCoordinator *)self _appLayoutFromPrimaryLayoutItem:v11 sideLayoutElement:0 configuration:1];
  v10 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
  [(SBSwitcherTransitionRequest *)v10 setAppLayout:v9];
  [(SBSwitcherTransitionRequest *)v10 setSource:10];
  [(SBMainSwitcherControllerCoordinator *)self switcherContentController:controllerCopy performTransitionWithRequest:v10 gestureInitiated:0];
}

- (void)switcherContentController:(id)controller requestNewWindowForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controller];
  windowScene = [v7 windowScene];
  _fbsDisplayConfiguration = [windowScene _fbsDisplayConfiguration];
  v10 = +[SBApplicationController sharedInstance];
  v11 = [v10 applicationWithBundleIdentifier:identifierCopy];

  sceneManager = [windowScene sceneManager];
  _fbsDisplayIdentity = [windowScene _fbsDisplayIdentity];
  v14 = [SBDeviceApplicationSceneEntity newEntityWithApplication:v11 sceneHandleProvider:sceneManager displayIdentity:_fbsDisplayIdentity];
  v15 = +[SBWorkspace mainWorkspace];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __101__SBMainSwitcherControllerCoordinator_switcherContentController_requestNewWindowForBundleIdentifier___block_invoke;
  v17[3] = &unk_2783A98F0;
  v18 = v14;
  v16 = v14;
  [v15 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration builder:v17];
}

void __101__SBMainSwitcherControllerCoordinator_switcherContentController_requestNewWindowForBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:35];
  [v3 setEventLabel:@"NewWindowRequest"];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __101__SBMainSwitcherControllerCoordinator_switcherContentController_requestNewWindowForBundleIdentifier___block_invoke_2;
  v4[3] = &unk_2783A98C8;
  v5 = *(a1 + 32);
  [v3 modifyApplicationContext:v4];
}

- (void)updateUserInteractionEnabledForSwitcherContentController:(id)controller
{
  controllerCopy = controller;
  isUserInteractionEnabled = [controllerCopy isUserInteractionEnabled];
  v7 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controllerCopy];

  switcherWindow = [v7 switcherWindow];
  [switcherWindow bs_setHitTestingDisabled:isUserInteractionEnabled ^ 1u];
}

- (void)updateWindowVisibilityForSwitcherContentController:(id)controller
{
  controllerCopy = controller;
  v5 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controllerCopy];
  [v5 updateWindowVisibilityForSwitcherContentController:controllerCopy];
}

- (void)switcherContentController:(id)controller setContainerStatusBarHidden:(BOOL)hidden partsHidden:(unint64_t)partsHidden animationDuration:(double)duration
{
  hiddenCopy = hidden;
  controllerCopy = controller;
  v11 = [(SBMainSwitcherControllerCoordinator *)self _contentControllerIsEmbeddedDisplayContentController:controllerCopy];
  v15 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controllerCopy];

  windowScene = [v15 windowScene];
  v13 = 296;
  if (v11)
  {
    v13 = 288;
    v14 = @"kSBMainAppSwitcherStatusBarReason";
  }

  else
  {
    v14 = @"kSBFloatingAppSwitcherStatusBarReason";
  }

  [(SBMainSwitcherControllerCoordinator *)self _setContainerStatusBarHidden:hiddenCopy partsHidden:partsHidden animationDuration:self + v13 usingAssertion:v14 reason:windowScene windowScene:duration];
}

- (BOOL)_shouldTakeStatusBarAssertionForSwitcherController:(id)controller
{
  layoutState = [controller layoutState];
  v4 = ([layoutState unlockedEnvironmentMode] & 0xFFFFFFFFFFFFFFFELL) == 2;

  return v4;
}

- (void)_setContainerStatusBarHidden:(BOOL)hidden partsHidden:(unint64_t)partsHidden animationDuration:(double)duration usingAssertion:(id *)assertion reason:(id)reason windowScene:(id)scene
{
  hiddenCopy = hidden;
  reasonCopy = reason;
  sceneCopy = scene;
  v16 = *assertion;
  settings = [v16 settings];
  switcherController = [sceneCopy switcherController];
  v19 = [(SBMainSwitcherControllerCoordinator *)self _shouldTakeStatusBarAssertionForSwitcherController:switcherController];

  if (v16)
  {
    alpha = [settings alpha];
    [alpha doubleValue];
    v22 = v21 == 0.0;

    v23 = [settings hiddenParts] != partsHidden;
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  if ((((v16 != 0) ^ v19) & 1) != 0 || v22 != hiddenCopy || v23)
  {
    initWithDefaultParameters = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
    [initWithDefaultParameters setDuration:duration];
    if (v19)
    {
      if (v16)
      {
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __132__SBMainSwitcherControllerCoordinator__setContainerStatusBarHidden_partsHidden_animationDuration_usingAssertion_reason_windowScene___block_invoke_2;
        v28[3] = &__block_descriptor_41_e36_v16__0__SBMutableStatusBarSettings_8l;
        v29 = hiddenCopy;
        v28[4] = partsHidden;
        [v16 modifySettingsWithBlock:v28 animationParameters:initWithDefaultParameters];
      }

      else
      {
        statusBarManager = [sceneCopy statusBarManager];
        assertionManager = [statusBarManager assertionManager];

        v16 = [assertionManager newSettingsAssertionWithStatusBarHidden:hiddenCopy atLevel:6 reason:reasonCopy];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __132__SBMainSwitcherControllerCoordinator__setContainerStatusBarHidden_partsHidden_animationDuration_usingAssertion_reason_windowScene___block_invoke;
        v30[3] = &__block_descriptor_40_e36_v16__0__SBMutableStatusBarSettings_8l;
        v30[4] = partsHidden;
        [v16 modifySettingsWithBlock:v30];
        [v16 acquireWithAnimationParameters:initWithDefaultParameters];
      }
    }

    else
    {
      [v16 invalidateWithAnimationParameters:initWithDefaultParameters];

      v16 = 0;
    }
  }

  v27 = *assertion;
  *assertion = v16;
}

void __132__SBMainSwitcherControllerCoordinator__setContainerStatusBarHidden_partsHidden_animationDuration_usingAssertion_reason_windowScene___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = *(a1 + 40);
  v6 = a2;
  v5 = [v3 numberWithInt:v4 ^ 1u];
  [v6 setAlpha:v5];

  [v6 setHiddenParts:*(a1 + 32)];
}

- (void)switcherContentControllerWantsToDismissMenuBar:(id)bar
{
  v5 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:bar];
  windowScene = [v5 windowScene];
  menuBarManager = [windowScene menuBarManager];
  [menuBarManager requestMenuBarVisibility:0];
}

- (void)switcherContentControllerWantsToPeekMenuBar:(id)bar
{
  v5 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:bar];
  windowScene = [v5 windowScene];
  menuBarManager = [windowScene menuBarManager];
  [menuBarManager peekMenuBar];
}

- (void)switcherContentControllerWantsToUpdateMenuBarVisibility:(id)visibility
{
  v5 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:visibility];
  windowScene = [v5 windowScene];
  menuBarManager = [windowScene menuBarManager];
  [menuBarManager updateMenuBarVisibility];
}

- (id)switcherContentController:(id)controller demoLayoutAttributesForDisplayItem:(id)item
{
  itemCopy = item;
  v7 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controller];
  windowScene = [v7 windowScene];
  menuBarManager = [windowScene menuBarManager];
  v10 = [menuBarManager demoLayoutAttributesForDisplayItem:itemCopy];

  return v10;
}

- (BOOL)switcherContentController:(id)controller shouldResignActiveForStartOfTransition:(id)transition
{
  transitionCopy = transition;
  applicationTransitionContext = [transitionCopy applicationTransitionContext];
  request = [applicationTransitionContext request];
  toLayoutState = [transitionCopy toLayoutState];
  fromLayoutState = [transitionCopy fromLayoutState];

  unlockedEnvironmentMode = [toLayoutState unlockedEnvironmentMode];
  source = [request source];
  source2 = [request source];
  LOBYTE(transitionCopy) = 0;
  if (([applicationTransitionContext animationDisabled] & 1) == 0 && source != 11 && source2 != 27 && unlockedEnvironmentMode == 3)
  {
    elements = [fromLayoutState elements];
    elements2 = [toLayoutState elements];
    LODWORD(transitionCopy) = [elements isEqualToSet:elements2] ^ 1;
  }

  return transitionCopy;
}

- (void)switcherContentController:(id)controller setCacheAsynchronousRenderingSurfaces:(BOOL)surfaces
{
  surfacesCopy = surfaces;
  controllerCopy = controller;
  asynchronousRenderingCachedSurfacesReasons = self->_asynchronousRenderingCachedSurfacesReasons;
  if (!asynchronousRenderingCachedSurfacesReasons)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v9 = self->_asynchronousRenderingCachedSurfacesReasons;
    self->_asynchronousRenderingCachedSurfacesReasons = weakObjectsHashTable;

    asynchronousRenderingCachedSurfacesReasons = self->_asynchronousRenderingCachedSurfacesReasons;
  }

  v10 = [(NSHashTable *)asynchronousRenderingCachedSurfacesReasons count];
  v11 = self->_asynchronousRenderingCachedSurfacesReasons;
  if (surfacesCopy)
  {
    [(NSHashTable *)v11 addObject:controllerCopy];
  }

  else
  {
    [(NSHashTable *)v11 removeObject:controllerCopy];
  }

  v12 = [(NSHashTable *)self->_asynchronousRenderingCachedSurfacesReasons count];
  v13 = +[SBDefaults localDefaults];
  miscellaneousDefaults = [v13 miscellaneousDefaults];
  disableAsyncRenderingSurfaceRetention = [miscellaneousDefaults disableAsyncRenderingSurfaceRetention];

  if (disableAsyncRenderingSurfaceRetention)
  {
    v16 = SBLogAppSwitcher();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_INFO, "disableAsyncRenderingSurfaceRetention default is set, not allowing async surface retention.", buf, 2u);
    }

    if (!v10)
    {
      goto LABEL_17;
    }

LABEL_16:
    objc_initWeak(buf, self);
    [(BSAbsoluteMachTimer *)self->_disableCachingAsynchronousRenderingSurfacesTimer invalidate];
    disableCachingAsynchronousRenderingSurfacesTimer = self->_disableCachingAsynchronousRenderingSurfacesTimer;
    self->_disableCachingAsynchronousRenderingSurfacesTimer = 0;

    v20 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"SBMainSwitcherCoordinator.disableCachingAsynchronousRenderingSurfacesTimer"];
    v21 = self->_disableCachingAsynchronousRenderingSurfacesTimer;
    self->_disableCachingAsynchronousRenderingSurfacesTimer = v20;

    v22 = self->_disableCachingAsynchronousRenderingSurfacesTimer;
    [(SBAppSwitcherSettings *)self->_settings asynchronousRenderingDisableSurfaceCacheDelayDuration];
    v24 = v23;
    v25 = MEMORY[0x277D85CD0];
    v26 = MEMORY[0x277D85CD0];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __103__SBMainSwitcherControllerCoordinator_switcherContentController_setCacheAsynchronousRenderingSurfaces___block_invoke;
    v27[3] = &unk_2783A9918;
    objc_copyWeak(&v28, buf);
    [(BSAbsoluteMachTimer *)v22 scheduleWithFireInterval:v25 leewayInterval:v27 queue:v24 handler:0.0];

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
    goto LABEL_17;
  }

  if ((v10 == 0) != (v12 != 0))
  {
    goto LABEL_17;
  }

  if (!v12)
  {
    goto LABEL_16;
  }

  [(BSAbsoluteMachTimer *)self->_disableCachingAsynchronousRenderingSurfacesTimer invalidate];
  v17 = self->_disableCachingAsynchronousRenderingSurfacesTimer;
  self->_disableCachingAsynchronousRenderingSurfacesTimer = 0;

  v18 = SBLogAppSwitcher();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_INFO, "Enabled caching asynchronous rendering surfaces.", buf, 2u);
  }

  CARenderServerSetCacheAsynchronousSurfaces();
LABEL_17:
}

void __103__SBMainSwitcherControllerCoordinator_switcherContentController_setCacheAsynchronousRenderingSurfaces___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[42] invalidate];
    v3 = v2[42];
    v2[42] = 0;

    if (![v2[41] count])
    {
      v4 = SBLogAppSwitcher();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5[0] = 0;
        _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Disabled caching asynchronous rendering surfaces.", v5, 2u);
      }

      CARenderServerSetCacheAsynchronousSurfaces();
    }
  }
}

- (void)cancelActiveGestureForSwitcherContentController:(id)controller
{
  v6 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controller];
  gestureManager = [v6 gestureManager];
  activeGestureTransaction = [gestureManager activeGestureTransaction];
  gestureRecognizer = [activeGestureTransaction gestureRecognizer];

  if ([gestureRecognizer state] <= 2)
  {
    [gestureRecognizer setEnabled:0];
    [gestureRecognizer setEnabled:1];
  }
}

- (void)switcherContentController:(id)controller reopenHiddenAppLayoutsWithBundleIdentifier:(id)identifier
{
  controllerCopy = controller;
  identifierCopy = identifier;
  v8 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controllerCopy];
  v9 = [(SBAppSwitcherModel *)self->_mainSwitcherModel appLayoutsForBundleIdentifier:identifierCopy includingHiddenAppLayouts:1];
  v10 = objc_alloc(MEMORY[0x277CBEB18]);
  v11 = [v9 bs_filter:&__block_literal_global_310];
  v12 = [v10 initWithArray:v11];

  if ([v12 count] == 1)
  {
    firstObject = [v12 firstObject];
    if ([firstObject environment] != 2)
    {
LABEL_5:

      goto LABEL_6;
    }

    _currentMainAppLayout = [v8 _currentMainAppLayout];

    if (!_currentMainAppLayout)
    {
      firstObject2 = [v12 firstObject];
      v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __108__SBMainSwitcherControllerCoordinator_switcherContentController_reopenHiddenAppLayoutsWithBundleIdentifier___block_invoke_2;
      v38[3] = &unk_2783AE1C8;
      v39 = v15;
      v16 = v15;
      [firstObject2 enumerate:v38];
      v17 = [SBAppLayout alloc];
      layoutState = [v8 layoutState];
      v19 = -[SBAppLayout initWithItemsForLayoutRoles:configuration:environment:preferredDisplayOrdinal:](v17, "initWithItemsForLayoutRoles:configuration:environment:preferredDisplayOrdinal:", v16, 1, 1, [layoutState displayOrdinal]);

      firstObject = firstObject2;
      [v12 removeObject:firstObject2];
      [v12 addObject:v19];

      goto LABEL_5;
    }
  }

LABEL_6:
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __108__SBMainSwitcherControllerCoordinator_switcherContentController_reopenHiddenAppLayoutsWithBundleIdentifier___block_invoke_3;
  v35[3] = &unk_2783AE4E0;
  v22 = v20;
  v36 = v22;
  v23 = v21;
  v37 = v23;
  [v12 enumerateObjectsUsingBlock:v35];
  objc_initWeak(&location, v8);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __108__SBMainSwitcherControllerCoordinator_switcherContentController_reopenHiddenAppLayoutsWithBundleIdentifier___block_invoke_315;
  v31[3] = &unk_2783A8ED8;
  v31[4] = self;
  v24 = v12;
  v32 = v24;
  v33 = v23;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __108__SBMainSwitcherControllerCoordinator_switcherContentController_reopenHiddenAppLayoutsWithBundleIdentifier___block_invoke_2_316;
  v27[3] = &unk_2783B96E8;
  v25 = v33;
  v28 = v25;
  objc_copyWeak(&v30, &location);
  selfCopy = self;
  [(SBMainSwitcherControllerCoordinator *)self _insertAppLayouts:v25 atIndexes:v22 contentViewController:controllerCopy modelMutationBlock:v31 completion:v27];
  objc_destroyWeak(&v30);

  objc_destroyWeak(&location);
}

void __108__SBMainSwitcherControllerCoordinator_switcherContentController_reopenHiddenAppLayoutsWithBundleIdentifier___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = [v5 numberWithInteger:a2];
  v9 = v7;
  v10[0] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v4 addEntriesFromDictionary:v8];
}

void __108__SBMainSwitcherControllerCoordinator_switcherContentController_reopenHiddenAppLayoutsWithBundleIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 addObject:&unk_283371348];
  v5 = *(a1 + 40);
  v6 = [v4 appLayoutByModifyingHiddenState:0];

  [v5 addObject:v6];
}

uint64_t __108__SBMainSwitcherControllerCoordinator_switcherContentController_reopenHiddenAppLayoutsWithBundleIdentifier___block_invoke_315(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 176);
  *(v2 + 176) = 1;
  if ([*(a1 + 40) count])
  {
    v4 = 0;
    do
    {
      v5 = [*(a1 + 40) objectAtIndex:v4];
      [*(*(a1 + 32) + 224) remove:v5];
      v6 = [*(a1 + 48) objectAtIndex:v4];
      [*(*(a1 + 32) + 224) addToFront:v6];

      ++v4;
    }

    while (v4 < [*(a1 + 40) count]);
  }

  *(*(a1 + 32) + 176) = v3;
  v7 = *(a1 + 32);

  return [v7 _rebuildAppListCache];
}

void __108__SBMainSwitcherControllerCoordinator_switcherContentController_reopenHiddenAppLayoutsWithBundleIdentifier___block_invoke_2_316(uint64_t a1)
{
  if ([*(a1 + 32) count] == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v3 = [WeakRetained windowScene];
    v4 = [v3 _fbsDisplayConfiguration];

    v5 = [*(a1 + 32) firstObject];
    v6 = +[SBWorkspace mainWorkspace];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __108__SBMainSwitcherControllerCoordinator_switcherContentController_reopenHiddenAppLayoutsWithBundleIdentifier___block_invoke_3_317;
    v9[3] = &unk_2783AC5C0;
    v10 = WeakRetained;
    v11 = v5;
    v12 = *(a1 + 40);
    v7 = v5;
    v8 = WeakRetained;
    [v6 requestTransitionWithOptions:0 displayConfiguration:v4 builder:0 validator:v9];
  }
}

uint64_t __108__SBMainSwitcherControllerCoordinator_switcherContentController_reopenHiddenAppLayoutsWithBundleIdentifier___block_invoke_3_317(id *a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v25 = a2;
  v3 = [a1[4] windowManagementContext];
  v4 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
  [(SBSwitcherTransitionRequest *)v4 setAppLayout:a1[5]];
  if ([v3 isFlexibleWindowingEnabled] && (objc_msgSend(v3, "isAutomaticStageCreationEnabled") & 1) == 0)
  {
    [(SBSwitcherTransitionRequest *)v4 setEntityInsertionPolicy:1];
  }

  v24 = v3;
  v5 = [a1[4] layoutState];
  v6 = [v5 displayOrdinal];
  v23 = v5;
  v7 = [v5 interfaceOrientation];
  if ((v7 - 1) < 2)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2 * ((v7 - 3) < 2);
  }

  v9 = [a1[6] displayItemLayoutAttributesProvider];
  v10 = [v9 layoutAttributesMapForAppLayout:a1[5] displayOrdinal:v6 orientation:v8];
  v11 = [v10 mutableCopy];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = [a1[5] allItems];
  v13 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v34;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v33 + 1) + 8 * i);
        v18 = [v11 objectForKey:v17];
        v32 = 0;
        v30 = 0u;
        v31 = 0u;
        [(SBDisplayItemLayoutAttributes *)v18 slideOverConfiguration];
        v28[0] = v30;
        v28[1] = v31;
        v29 = v32;
        if (SBDisplayItemSlideOverConfigurationIsValid(v28))
        {
          v26[0] = v30;
          v26[1] = v31;
          v27 = v32;
          SBInactiveDisplayItemSlideOverConfigurationFromSlideOverConfiguration(v26, v28);
          v19 = [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v18];

          [v11 setObject:v19 forKey:v17];
          v18 = v19;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v14);
  }

  [(SBSwitcherTransitionRequest *)v4 setDisplayItemLayoutAttributesMap:v11];
  v20 = a1[6];
  v21 = [a1[4] dismissSwitcherEventName];
  [v20 _configureRequest:v25 forSwitcherTransitionRequest:v4 withEventLabel:v21];

  return 1;
}

- (void)switcherContentController:(id)controller moveDisplayItemFromOtherDisplay:(id)display
{
  displayCopy = display;
  v7 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controller];
  coordinatedSwitcherControllers = [(SBMainSwitcherControllerCoordinator *)self coordinatedSwitcherControllers];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __97__SBMainSwitcherControllerCoordinator_switcherContentController_moveDisplayItemFromOtherDisplay___block_invoke;
  v16[3] = &unk_2783B9710;
  v9 = v7;
  v17 = v9;
  v10 = [coordinatedSwitcherControllers bs_firstObjectPassingTest:v16];

  if (v10)
  {
    contentViewController = [v10 contentViewController];
    v12 = objc_opt_class();
    v13 = contentViewController;
    if (v12)
    {
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    [v15 moveDisplayItemFromOtherDisplay:displayCopy];
  }
}

- (void)switcherContentController:(id)controller setInterfaceOrientation:(int64_t)orientation
{
  v5 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controller];
  [v5 _updateContentViewInterfaceOrientation:orientation];
}

- (void)switcherContentController:(id)controller setInterfaceOrientationFromUserResizing:(int64_t)resizing forDisplayItem:(id)item
{
  controllerCopy = controller;
  itemCopy = item;
  if (controllerCopy)
  {
    if (itemCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBMainSwitcherControllerCoordinator switcherContentController:setInterfaceOrientationFromUserResizing:forDisplayItem:];
    if (itemCopy)
    {
      goto LABEL_3;
    }
  }

  [SBMainSwitcherControllerCoordinator switcherContentController:setInterfaceOrientationFromUserResizing:forDisplayItem:];
LABEL_3:
  v9 = [(SBMainSwitcherControllerCoordinator *)self switcherContentController:controllerCopy deviceApplicationSceneHandleForDisplayItem:itemCopy];
  if (v9)
  {
    [(SBMainSwitcherControllerCoordinator *)self _setInterfaceOrientationFromUserResizingIfSupported:resizing forSceneHandle:v9];
  }
}

- (void)presentContinuousExposeStripRevealGrabberTongueImmediatelyForSwitcherContentController:(id)controller
{
  v4 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controller];
  gestureManager = [v4 gestureManager];
  [gestureManager presentContinuousExposeStripRevealGrabberTongueImmediately];
}

- (void)tickleContinuousExposeStripRevealGrabberTongueIfVisibleForSwitcherContentController:(id)controller
{
  v4 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controller];
  gestureManager = [v4 gestureManager];
  [gestureManager tickleContinuousExposeStripRevealGrabberTongueIfVisible];
}

- (void)switcherContentControllerDidUpdateVisibleHomeAffordances:(id)affordances
{
  v4 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:affordances];
  gestureManager = [v4 gestureManager];
  [gestureManager noteVisibleHomeAffordancesChanged];
}

- (void)switcherContentController:(id)controller removeDisplayItemsFromDesktop:(id)desktop
{
  desktopCopy = desktop;
  v7 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controller];
  [v7 _removeDisplayItemsFromDesktop:desktopCopy];
}

- (void)switcherContentController:(id)controller requestDismissalForHomeScreenBackgroundTaps:(BOOL)taps
{
  tapsCopy = taps;
  v5 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controller];
  [v5 _requestDismissalForHomeScreenBackgroundTaps:tapsCopy];
}

- (void)switcherContentController:(id)controller moveDisplayItemToSlideOver:(id)over
{
  overCopy = over;
  v7 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controller];
  [v7 _moveDisplayItemToSlideOver:overCopy];
}

- (void)switcherContentController:(id)controller moveDisplayItemOutOfSlideOver:(id)over
{
  overCopy = over;
  v7 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controller];
  [v7 _moveDisplayItemOutOfSlideOver:overCopy];
}

- (BOOL)switcherContentControllerControlsHomeScreenContents:(id)contents
{
  v3 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:contents];
  windowScene = [v3 windowScene];

  if ([windowScene isMainDisplayWindowScene])
  {
    isContinuityDisplayWindowScene = 1;
  }

  else
  {
    isContinuityDisplayWindowScene = [windowScene isContinuityDisplayWindowScene];
  }

  return isContinuityDisplayWindowScene;
}

- (void)switcherContentController:(id)controller setHomeScreenScale:(double)scale withAnimationMode:(int64_t)mode completion:(id)completion
{
  completionCopy = completion;
  v11 = [(SBMainSwitcherControllerCoordinator *)self _homeScreenAppearanceControllerForSwitcherContentController:controller];
  [v11 setHomeScreenScale:mode behaviorMode:completionCopy completion:scale];
}

- (void)switcherContentController:(id)controller setHomeScreenAlpha:(double)alpha withAnimationMode:(int64_t)mode completion:(id)completion
{
  completionCopy = completion;
  v11 = [(SBMainSwitcherControllerCoordinator *)self _homeScreenAppearanceControllerForSwitcherContentController:controller];
  [v11 setHomeScreenAlpha:mode behaviorMode:completionCopy completion:alpha];
}

- (void)switcherContentController:(id)controller setHomeScreenDimmingAlpha:(double)alpha withSettings:(id)settings animationMode:(int64_t)mode completion:(id)completion
{
  completionCopy = completion;
  settingsCopy = settings;
  v14 = [(SBMainSwitcherControllerCoordinator *)self _homeScreenAppearanceControllerForSwitcherContentController:controller];
  [v14 setHomeScreenDimmingAlpha:settingsCopy settings:mode behaviorMode:completionCopy completion:alpha];
}

- (void)switcherContentController:(id)controller setHomeScreenBackdropBlurProgress:(double)progress withAnimationMode:(int64_t)mode completion:(id)completion
{
  completionCopy = completion;
  v11 = [(SBMainSwitcherControllerCoordinator *)self _homeScreenAppearanceControllerForSwitcherContentController:controller];
  [v11 setHomeScreenBlurProgress:mode behaviorMode:completionCopy completion:progress];
}

- (void)switcherContentController:(id)controller setHomeScreenBackdropBlurType:(int64_t)type
{
  v5 = type & 0xFFFFFFFFFFFFFFFELL;
  v7 = [(SBMainSwitcherControllerCoordinator *)self _homeScreenAppearanceControllerForSwitcherContentController:controller];
  if (v5 == 2)
  {
    [v7 beginRequiringBackdropViewForReason:@"SBAppSwitcherBackdropRequiringReason"];
    if (type == 3)
    {
      [v7 beginRequiringLiveBackdropViewForReason:@"SBAppSwitcherBackdropRequiringReason"];
      goto LABEL_7;
    }

    v6 = v7;
  }

  else
  {
    [v7 endRequiringBackdropViewForReason:@"SBAppSwitcherBackdropRequiringReason"];
    v6 = v7;
  }

  [v6 endRequiringLiveBackdropViewForReason:@"SBAppSwitcherBackdropRequiringReason"];
LABEL_7:
}

- (void)switcherContentController:(id)controller setHomeScreenBackdropBlurMaterialRecipeName:(id)name withAnimationMode:(int64_t)mode completion:(id)completion
{
  completionCopy = completion;
  nameCopy = name;
  v12 = [(SBMainSwitcherControllerCoordinator *)self _homeScreenAppearanceControllerForSwitcherContentController:controller];
  [v12 setHomeScreenBackdropBlurMaterialRecipeName:nameCopy behaviorMode:mode completion:completionCopy];
}

- (BOOL)switcherContentControllerControlsWallpaper:(id)wallpaper
{
  v3 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:wallpaper];
  windowScene = [v3 windowScene];

  LOBYTE(v3) = [windowScene isMainDisplayWindowScene];
  return v3;
}

- (void)switcherContentController:(id)controller setWallpaperScale:(double)scale withAnimationMode:(int64_t)mode completion:(id)completion
{
  v9 = MEMORY[0x277D75D18];
  settings = self->_settings;
  completionCopy = completion;
  animationSettings = [(SBAppSwitcherSettings *)settings animationSettings];
  wallpaperScaleSettings = [animationSettings wallpaperScaleSettings];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __112__SBMainSwitcherControllerCoordinator_switcherContentController_setWallpaperScale_withAnimationMode_completion___block_invoke;
  v14[3] = &unk_2783A8BC8;
  *&v14[5] = scale;
  v14[4] = self;
  [v9 sb_animateWithSettings:wallpaperScaleSettings mode:mode animations:v14 completion:completionCopy];
}

void __112__SBMainSwitcherControllerCoordinator_switcherContentController_setWallpaperScale_withAnimationMode_completion___block_invoke(uint64_t a1)
{
  v2 = +[SBWallpaperController sharedInstance];
  v3 = [v2 setHomescreenWallpaperScale:0 withAnimationFactory:*(a1 + 40)];

  [*(*(a1 + 32) + 200) invalidate];
  v4 = *(a1 + 32);
  v5 = *(v4 + 200);
  *(v4 + 200) = v3;
}

- (void)switcherContentController:(id)controller setWallpaperStyle:(int64_t)style
{
  if (style > 2)
  {
    v5 = 2;
    if (style != 4)
    {
      v5 = 0;
    }

    if (style == 3)
    {
      v4 = 13;
    }

    else
    {
      v4 = v5;
    }

    goto LABEL_11;
  }

  if (style != 1)
  {
    if (style == 2)
    {
      v4 = 20;
    }

    else
    {
      v4 = 0;
    }

LABEL_11:
    v6 = +[SBWallpaperController sharedInstance];
    [v6 setWallpaperStyle:v4 forPriority:3 forVariant:1 withAnimationFactory:0];
    goto LABEL_12;
  }

  v6 = +[SBWallpaperController sharedInstance];
  [v6 removeWallpaperStyleForPriority:3 forVariant:1 withAnimationFactory:0];
LABEL_12:
}

- (void)switcherContentController:(id)controller setPointerInteractionsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = +[SBUIController sharedInstance];
  [v5 setPointerInteractionsEnabled:enabledCopy];
}

- (void)fluidSwitcherGestureManager:(id)manager didBeginGesture:(id)gesture
{
  managerCopy = manager;
  gestureCopy = gesture;
  switcherController = [managerCopy switcherController];
  if ([gestureCopy type] == 8)
  {
    windowManagementContext = [switcherController windowManagementContext];
    isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

    if (isChamoisOrFlexibleWindowing)
    {
      draggingAppLayouts = self->_draggingAppLayouts;
      selectedAppLayout = [gestureCopy selectedAppLayout];
      [(NSCountedSet *)draggingAppLayouts addObject:selectedAppLayout];

      [(SBMainSwitcherControllerCoordinator *)self _rebuildAppListCache];
    }
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__SBMainSwitcherControllerCoordinator_fluidSwitcherGestureManager_didBeginGesture___block_invoke;
  v16[3] = &unk_2783B03A0;
  v17 = switcherController;
  v18 = gestureCopy;
  v19 = managerCopy;
  v13 = managerCopy;
  v14 = gestureCopy;
  v15 = switcherController;
  [(SBMainSwitcherControllerCoordinator *)self enumerateSwitcherControllersWithBlock:v16];
}

void __83__SBMainSwitcherControllerCoordinator_fluidSwitcherGestureManager_didBeginGesture___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 isEqual:*(a1 + 32)])
  {
    goto LABEL_2;
  }

  if ([*(a1 + 40) type] == 8)
  {
    v3 = [*(a1 + 40) gestureEvent];
    if ([v3 isIndirectPanGestureEvent])
    {
    }

    else
    {
      v4 = [v7 windowManagementContext];
      v5 = [*(a1 + 32) windowManagementContext];
      v6 = BSEqualObjects();

      if (v6)
      {
LABEL_2:
        [v7 fluidSwitcherGestureManager:*(a1 + 48) didBeginGesture:*(a1 + 40)];
      }
    }
  }
}

- (void)fluidSwitcherGestureManager:(id)manager didUpdateGesture:(id)gesture
{
  managerCopy = manager;
  gestureCopy = gesture;
  switcherController = [managerCopy switcherController];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__SBMainSwitcherControllerCoordinator_fluidSwitcherGestureManager_didUpdateGesture___block_invoke;
  v12[3] = &unk_2783B03A0;
  v13 = switcherController;
  v14 = gestureCopy;
  v15 = managerCopy;
  v9 = managerCopy;
  v10 = gestureCopy;
  v11 = switcherController;
  [(SBMainSwitcherControllerCoordinator *)self enumerateSwitcherControllersWithBlock:v12];
}

void __84__SBMainSwitcherControllerCoordinator_fluidSwitcherGestureManager_didUpdateGesture___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 isEqual:*(a1 + 32)])
  {
    goto LABEL_2;
  }

  if ([*(a1 + 40) type] == 8)
  {
    v3 = [*(a1 + 40) gestureEvent];
    if ([v3 isIndirectPanGestureEvent])
    {
    }

    else
    {
      v4 = [v7 windowManagementContext];
      v5 = [*(a1 + 32) windowManagementContext];
      v6 = BSEqualObjects();

      if (v6)
      {
LABEL_2:
        [v7 fluidSwitcherGestureManager:*(a1 + 48) didUpdateGesture:*(a1 + 40)];
      }
    }
  }
}

- (void)fluidSwitcherGestureManager:(id)manager didEndGesture:(id)gesture
{
  managerCopy = manager;
  gestureCopy = gesture;
  switcherController = [managerCopy switcherController];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__SBMainSwitcherControllerCoordinator_fluidSwitcherGestureManager_didEndGesture___block_invoke;
  v15[3] = &unk_2783B03A0;
  v9 = switcherController;
  v16 = v9;
  v10 = gestureCopy;
  v17 = v10;
  v11 = managerCopy;
  v18 = v11;
  [(SBMainSwitcherControllerCoordinator *)self enumerateSwitcherControllersWithBlock:v15];
  if ([v10 type] == 8)
  {
    windowManagementContext = [v9 windowManagementContext];
    isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

    if (isChamoisOrFlexibleWindowing)
    {
      selectedAppLayout = [v10 selectedAppLayout];
      if (selectedAppLayout)
      {
        [(NSCountedSet *)self->_draggingAppLayouts removeObject:selectedAppLayout];
      }

      [(SBMainSwitcherControllerCoordinator *)self _rebuildAppListCache];
    }
  }
}

void __81__SBMainSwitcherControllerCoordinator_fluidSwitcherGestureManager_didEndGesture___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 isEqual:*(a1 + 32)])
  {
    goto LABEL_2;
  }

  if ([*(a1 + 40) type] == 8)
  {
    v3 = [*(a1 + 40) gestureEvent];
    if ([v3 isIndirectPanGestureEvent])
    {
    }

    else
    {
      v4 = [v7 windowManagementContext];
      v5 = [*(a1 + 32) windowManagementContext];
      v6 = BSEqualObjects();

      if (v6)
      {
LABEL_2:
        [v7 fluidSwitcherGestureManager:*(a1 + 48) didEndGesture:*(a1 + 40)];
      }
    }
  }
}

- (void)fluidSwitcherGestureManager:(id)manager didBeginDraggingWindowWithSceneIdentifier:(id)identifier
{
  managerCopy = manager;
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [SBMainSwitcherControllerCoordinator fluidSwitcherGestureManager:didBeginDraggingWindowWithSceneIdentifier:];
  }

  windowDragSceneIdentifiers = self->_windowDragSceneIdentifiers;
  if (!windowDragSceneIdentifiers)
  {
    v9 = [MEMORY[0x277CBEB58] set];
    v10 = self->_windowDragSceneIdentifiers;
    self->_windowDragSceneIdentifiers = v9;

    windowDragSceneIdentifiers = self->_windowDragSceneIdentifiers;
  }

  [(NSMutableSet *)windowDragSceneIdentifiers addObject:identifierCopy];
  [(SBMainSwitcherControllerCoordinator *)self _rebuildAppListCache];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __109__SBMainSwitcherControllerCoordinator_fluidSwitcherGestureManager_didBeginDraggingWindowWithSceneIdentifier___block_invoke;
  v13[3] = &unk_2783B9738;
  v14 = managerCopy;
  v15 = identifierCopy;
  v11 = identifierCopy;
  v12 = managerCopy;
  [(SBMainSwitcherControllerCoordinator *)self enumerateSwitcherControllersWithBlock:v13];
}

- (void)fluidSwitcherGestureManager:(id)manager didPlatterizeWindowDragWithSceneIdentifier:(id)identifier
{
  managerCopy = manager;
  identifierCopy = identifier;
  if ([(NSMutableSet *)self->_windowDragSceneIdentifiers containsObject:identifierCopy])
  {
    [(SBMainSwitcherControllerCoordinator *)self _rebuildAppListCache];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __110__SBMainSwitcherControllerCoordinator_fluidSwitcherGestureManager_didPlatterizeWindowDragWithSceneIdentifier___block_invoke;
  v10[3] = &unk_2783B9738;
  v11 = managerCopy;
  v12 = identifierCopy;
  v8 = identifierCopy;
  v9 = managerCopy;
  [(SBMainSwitcherControllerCoordinator *)self enumerateSwitcherControllersWithBlock:v10];
}

- (void)fluidSwitcherGestureManager:(id)manager willEndDraggingWindowWithSceneIdentifier:(id)identifier
{
  managerCopy = manager;
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [SBMainSwitcherControllerCoordinator fluidSwitcherGestureManager:willEndDraggingWindowWithSceneIdentifier:];
  }

  if ([(NSMutableSet *)self->_windowDragSceneIdentifiers containsObject:identifierCopy])
  {
    [(NSMutableSet *)self->_windowDragSceneIdentifiers removeObject:identifierCopy];
    [(SBMainSwitcherControllerCoordinator *)self _rebuildAppListCache];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __108__SBMainSwitcherControllerCoordinator_fluidSwitcherGestureManager_willEndDraggingWindowWithSceneIdentifier___block_invoke;
  v10[3] = &unk_2783B9738;
  v11 = managerCopy;
  v12 = identifierCopy;
  v8 = identifierCopy;
  v9 = managerCopy;
  [(SBMainSwitcherControllerCoordinator *)self enumerateSwitcherControllersWithBlock:v10];
}

- (void)fluidSwitcherGestureManager:(id)manager clickReceivedForHomeGrabberView:(id)view
{
  managerCopy = manager;
  viewCopy = view;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __99__SBMainSwitcherControllerCoordinator_fluidSwitcherGestureManager_clickReceivedForHomeGrabberView___block_invoke;
  v10[3] = &unk_2783B9738;
  v11 = managerCopy;
  v12 = viewCopy;
  v8 = viewCopy;
  v9 = managerCopy;
  [(SBMainSwitcherControllerCoordinator *)self enumerateSwitcherControllersWithBlock:v10];
}

- (void)fluidSwitcherGestureManager:(id)manager tapReceivedForGrabberTongueAtEdge:(unint64_t)edge
{
  managerCopy = manager;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __101__SBMainSwitcherControllerCoordinator_fluidSwitcherGestureManager_tapReceivedForGrabberTongueAtEdge___block_invoke;
  v8[3] = &unk_2783B9760;
  v9 = managerCopy;
  edgeCopy = edge;
  v7 = managerCopy;
  [(SBMainSwitcherControllerCoordinator *)self enumerateSwitcherControllersWithBlock:v8];
}

- (void)switcherDemoFilteringControllerDidChangeHiddenApplicationBundleIDs:(id)ds
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__72;
  v24 = __Block_byref_object_dispose__72;
  v25 = 0;
  dsCopy = ds;
  [dsCopy hiddenApplicationBundleIDs];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v4 = v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v5)
  {
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        appLayouts = self->_appLayouts;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __106__SBMainSwitcherControllerCoordinator_switcherDemoFilteringControllerDidChangeHiddenApplicationBundleIDs___block_invoke;
        v13[3] = &unk_2783B9788;
        v15 = &v20;
        v13[4] = v8;
        v10 = v4;
        v14 = v10;
        [(NSArray *)appLayouts enumerateObjectsUsingBlock:v13];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v10 countByEnumeratingWithState:&v16 objects:v26 count:16];
    }

    while (v5);
  }

  demoFilteringHiddenAppLayouts = self->_demoFilteringHiddenAppLayouts;
  if (demoFilteringHiddenAppLayouts != v21[5] && ([(NSArray *)demoFilteringHiddenAppLayouts isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_demoFilteringHiddenAppLayouts, v21[5]);
    [(SBMainSwitcherControllerCoordinator *)self _rebuildAppListCache];
  }

  _Block_object_dispose(&v20, 8);
}

void __106__SBMainSwitcherControllerCoordinator_switcherDemoFilteringControllerDidChangeHiddenApplicationBundleIDs___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  if (([*(*(*(a1 + 48) + 8) + 40) containsObject:?] & 1) == 0 && objc_msgSend(v10, "containsItemWithBundleIdentifier:", *(a1 + 32)))
  {
    v6 = *(*(*(a1 + 48) + 8) + 40);
    if (!v6)
    {
      v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
      v8 = *(*(a1 + 48) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(*(a1 + 48) + 8) + 40);
    }

    [v6 addObject:v10];
    *a4 = 1;
  }
}

- (void)_updateHomeScreenDisplayLayoutElementForLayoutState:(id)state switcherController:(id)controller
{
  controllerCopy = controller;
  homeScreenDisplayLayoutElementAssertionsBySwitcherController = self->_homeScreenDisplayLayoutElementAssertionsBySwitcherController;
  stateCopy = state;
  v8 = [(NSMapTable *)homeScreenDisplayLayoutElementAssertionsBySwitcherController objectForKey:controllerCopy];
  windowScene = [controllerCopy windowScene];
  effectivelyRepresentsHomeScreen = [stateCopy effectivelyRepresentsHomeScreen];

  if (effectivelyRepresentsHomeScreen)
  {
    if (!v8)
    {
      displayLayoutPublisher = [windowScene displayLayoutPublisher];
      v8 = [displayLayoutPublisher addElement:self->_homeScreenDisplayLayoutElement];

      [(NSMapTable *)self->_homeScreenDisplayLayoutElementAssertionsBySwitcherController setObject:v8 forKey:controllerCopy];
    }
  }

  else
  {
    [v8 invalidate];
    [(NSMapTable *)self->_homeScreenDisplayLayoutElementAssertionsBySwitcherController removeObjectForKey:controllerCopy];
  }
}

- (void)_beginDisplayLayoutTransitionForSwitcherController:(id)controller reason:(id)reason
{
  controllerCopy = controller;
  reasonCopy = reason;
  windowScene = [controllerCopy windowScene];
  displayLayoutPublisher = [windowScene displayLayoutPublisher];
  v10 = [displayLayoutPublisher transitionAssertionWithReason:reasonCopy];

  v11 = [(NSMapTable *)self->_displayLayoutTransitionsBySwitcherController objectForKey:controllerCopy];
  if (v11)
  {
    v12 = SBLogAppSwitcher();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(SBMainSwitcherControllerCoordinator *)self _beginDisplayLayoutTransitionForSwitcherController:reasonCopy reason:v12];
    }

    [v11 invalidate];
  }

  [(NSMapTable *)self->_displayLayoutTransitionsBySwitcherController setObject:v10 forKey:controllerCopy];
}

- (void)_endDisplayLayoutTransitionForSwitcherController:(id)controller
{
  displayLayoutTransitionsBySwitcherController = self->_displayLayoutTransitionsBySwitcherController;
  controllerCopy = controller;
  v6 = [(NSMapTable *)displayLayoutTransitionsBySwitcherController objectForKey:controllerCopy];
  [(NSMapTable *)self->_displayLayoutTransitionsBySwitcherController removeObjectForKey:controllerCopy];

  [v6 invalidate];
}

- (void)_lockKeyboardFocusForSwitcherController:(id)controller
{
  if (!self->_lockKeyboardFocusAssertion)
  {
    keyboardFocusController = self->_keyboardFocusController;
    windowScene = [controller windowScene];
    v6 = +[SBKeyboardFocusLockReason appSwitcher];
    v7 = [(SBKeyboardFocusControlling *)keyboardFocusController focusLockSpringBoardWindowScene:windowScene forReason:v6];
    lockKeyboardFocusAssertion = self->_lockKeyboardFocusAssertion;
    self->_lockKeyboardFocusAssertion = v7;
  }
}

- (void)_switcherModelChanged:(id)changed
{
  if (!self->_ignoreModelUpdates)
  {
    [(SBMainSwitcherControllerCoordinator *)self _rebuildAppListCache];
  }
}

- (void)_warmAppInfoForAppsInList
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(SBAppSwitcherModel *)self->_mainSwitcherModel appLayoutsIncludingHiddenAppLayouts:0, 0];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) enumerate:&__block_literal_global_332];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void __64__SBMainSwitcherControllerCoordinator__warmAppInfoForAppsInList__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (![v6 type])
  {
    v3 = +[SBApplicationController sharedInstance];
    v4 = [v6 bundleIdentifier];
    v5 = [v3 applicationWithBundleIdentifier:v4];

    [v5 isClassic];
  }
}

- (void)_applicationDidExit:(id)exit
{
  object = [exit object];
  v5 = object;
  if (object)
  {
    lastExitContext = [object lastExitContext];
    terminationReason = [lastExitContext terminationReason];

    if (terminationReason != 1)
    {
      v8 = MEMORY[0x277D0AB18];
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __59__SBMainSwitcherControllerCoordinator__applicationDidExit___block_invoke;
      v15 = &unk_2783A92D8;
      v16 = v5;
      selfCopy = self;
      v9 = [v8 eventWithName:@"SBMainSwitcherCoordinatorFloatingExitSanityCheck" handler:&v12];
      v10 = [SBWorkspace mainWorkspace:v12];
      eventQueue = [v10 eventQueue];
      [eventQueue executeOrAppendEvent:v9];
    }
  }
}

void __59__SBMainSwitcherControllerCoordinator__applicationDidExit___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) failedLaunchCount];
  v3 = [*(*(a1 + 40) + 48) bs_firstObjectPassingTest:&__block_literal_global_338];
  v4 = [v3 itemForLayoutRole:1];
  v5 = [v4 bundleIdentifier];
  if (v5)
  {
    v6 = v2 >= 2;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = [*(a1 + 32) bundleIdentifier];
    v8 = [v5 isEqual:v7];

    if (v8)
    {
      [*(*(a1 + 40) + 224) remove:v3];
      v9 = [SBAppLayout alloc];
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:1];
      v14 = v10;
      v15[0] = v4;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v12 = -[SBAppLayout initWithItemsForLayoutRoles:configuration:environment:preferredDisplayOrdinal:](v9, "initWithItemsForLayoutRoles:configuration:environment:preferredDisplayOrdinal:", v11, 1, 1, [v3 preferredDisplayOrdinal]);

      [*(a1 + 40) _addAppLayoutToFront:v12];
    }
  }

  v13 = *(a1 + 32);
  if (v13 && v2 >= 2)
  {
    [v13 clearLastWindowLayoutAttributes];
  }
}

- (void)_addAppLayoutToFront:(id)front removeAppLayout:(id)layout
{
  v25 = *MEMORY[0x277D85DE8];
  frontCopy = front;
  layoutCopy = layout;
  if (![(SBMainSwitcherControllerCoordinator *)self _shouldAddAppLayoutToFront:frontCopy])
  {
    goto LABEL_21;
  }

  if (!-[SBAppSwitcherSettings shouldDisableSwitcherModelUpdatesForDemo](self->_settings, "shouldDisableSwitcherModelUpdatesForDemo") || [frontCopy environment] != 1)
  {
    goto LABEL_18;
  }

  v19 = layoutCopy;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_appLayouts;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v9)
  {
LABEL_12:

LABEL_17:
    layoutCopy = v19;
    if ([(NSArray *)self->_appLayouts containsObject:frontCopy])
    {
      goto LABEL_21;
    }

LABEL_18:
    self->_ignoreModelUpdates = 1;
    if (layoutCopy)
    {
      [(SBAppSwitcherModel *)self->_mainSwitcherModel remove:layoutCopy];
    }

    [(SBAppSwitcherModel *)self->_mainSwitcherModel addToFront:frontCopy];
    [(SBMainSwitcherControllerCoordinator *)self _rebuildAppListCache];
    self->_ignoreModelUpdates = 0;
    goto LABEL_21;
  }

  v10 = v9;
  v11 = *v21;
LABEL_6:
  v12 = 0;
  while (1)
  {
    if (*v21 != v11)
    {
      objc_enumerationMutation(v8);
    }

    v13 = *(*(&v20 + 1) + 8 * v12);
    v14 = MEMORY[0x277CBEB98];
    allItems = [frontCopy allItems];
    v16 = [v14 setWithArray:allItems];
    v17 = [v13 containsAnyItemFromSet:v16];

    if (v17)
    {
      break;
    }

    if (v10 == ++v12)
    {
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  v18 = v13;

  if (!v18)
  {
    goto LABEL_17;
  }

  self->_ignoreModelUpdates = 1;
  layoutCopy = v19;
  if (v19)
  {
    [(SBAppSwitcherModel *)self->_mainSwitcherModel remove:v19];
  }

  [(SBAppSwitcherModel *)self->_mainSwitcherModel replaceAppLayout:v18 withAppLayout:frontCopy];
  [(SBMainSwitcherControllerCoordinator *)self _rebuildAppListCache];
  self->_ignoreModelUpdates = 0;

LABEL_21:
}

- (id)_transientOverlayPresentationManager
{
  v2 = +[SBWorkspace mainWorkspace];
  transientOverlayPresentationManager = [v2 transientOverlayPresentationManager];

  return transientOverlayPresentationManager;
}

- (BOOL)prioritizesSortOrderForAppLayout:(id)layout
{
  layoutCopy = layout;
  allItems = [layoutCopy allItems];
  type = [layoutCopy type];

  if (!type && [allItems count] == 1 && (objc_msgSend(allItems, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), -[SBMainSwitcherControllerCoordinator _switcherControllerForDisplayItem:](self, "_switcherControllerForDisplayItem:", v7), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "_deviceApplicationSceneHandleForDisplayItem:", v7), v9 = objc_claimAutoreleasedReturnValue(), v8, v7, v9))
  {
    shouldPrioritizeForSwitcherOrdering = [v9 shouldPrioritizeForSwitcherOrdering];
  }

  else
  {
    shouldPrioritizeForSwitcherOrdering = 0;
  }

  return shouldPrioritizeForSwitcherOrdering;
}

- (void)_setInterfaceOrientationFromUserResizingIfSupported:(int64_t)supported forSceneHandle:(id)handle
{
  handleCopy = handle;
  application = [handleCopy application];
  isMedusaCapable = [application isMedusaCapable];

  if ((isMedusaCapable & 1) == 0)
  {
    application2 = [handleCopy application];
    classicAppPhoneAppRunningOnPad = [application2 classicAppPhoneAppRunningOnPad];

    if ((classicAppPhoneAppRunningOnPad & 1) == 0)
    {
      _windowScene = [handleCopy _windowScene];
      if (([_windowScene isExternalDisplayWindowScene] & 1) == 0)
      {
        v10 = objc_opt_class();
        switcherController = [_windowScene switcherController];
        contentViewController = [switcherController contentViewController];
        v13 = SBSafeCast(v10, contentViewController);

        if (v13)
        {
          if ([v13 contentOrientation] == supported)
          {
            supported = 0;
          }
        }

        else
        {
          supported = 0;
        }
      }
    }

    [handleCopy _setInterfaceOrientationFromUserResizing:supported];
  }
}

- (id)_homeScreenAppearanceControllerForSwitcherContentController:(id)controller
{
  v3 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:controller];
  windowScene = [v3 windowScene];

  homeScreenController = [windowScene homeScreenController];

  return homeScreenController;
}

- (void)_keyboardWillShow:(id)show
{
  if (!self->_isKeyboardShowing)
  {
    self->_isKeyboardShowing = 1;
    [(SBMainSwitcherControllerCoordinator *)self _updateKeyboardHomeAffordanceAssertion];
  }
}

- (void)_keyboardWillHide:(id)hide
{
  if (self->_isKeyboardShowing)
  {
    self->_isKeyboardShowing = 0;
    [(SBMainSwitcherControllerCoordinator *)self _updateKeyboardHomeAffordanceAssertion];
  }
}

- (void)noteKeyboardIsForMedusaWithOwningScene:(id)scene
{
  sceneCopy = scene;
  if (self->_medusaKeyboardScene != sceneCopy)
  {
    v8 = sceneCopy;
    _medusaKeyboardSceneHandle = [(SBMainSwitcherControllerCoordinator *)self _medusaKeyboardSceneHandle];
    [_medusaKeyboardSceneHandle removeObserver:self];

    objc_storeStrong(&self->_medusaKeyboardScene, scene);
    _medusaKeyboardSceneHandle2 = [(SBMainSwitcherControllerCoordinator *)self _medusaKeyboardSceneHandle];
    [_medusaKeyboardSceneHandle2 addObserver:self];

    [(SBMainSwitcherControllerCoordinator *)self _updateKeyboardHomeAffordanceAssertion];
    sceneCopy = v8;
  }
}

- (BOOL)_keyboardIsSuppressedForMedusaKeyboardScene
{
  settings = [(FBScene *)self->_medusaKeyboardScene settings];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = ([settings deactivationReasons] >> 8) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)sceneHandle:(id)handle didUpdateSettingsWithDiff:(id)diff previousSettings:(id)settings
{
  scene = [handle scene];
  medusaKeyboardScene = self->_medusaKeyboardScene;

  if (scene == medusaKeyboardScene)
  {

    [(SBMainSwitcherControllerCoordinator *)self _updateKeyboardHomeAffordanceAssertion];
  }
}

- (void)_switcherServiceAdded:(id)added
{
  userInfo = [added userInfo];
  v5 = [userInfo objectForKey:@"AppSwitcherService"];

  bundleIdentifier = [v5 bundleIdentifier];
  v7 = [SBDisplayItem switcherServiceDisplayItemWithServiceIdentifier:bundleIdentifier];
  v8 = [(SBMainSwitcherControllerCoordinator *)self _appLayoutFromPrimaryLayoutItem:v7 sideLayoutElement:0 configuration:1];
  windowSceneManager = [SBApp windowSceneManager];
  activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];

  v11 = [(SBMainSwitcherControllerCoordinator *)self switcherControllerForWindowScene:activeDisplayWindowScene];
  contentViewController = [v11 contentViewController];
  v13 = [(NSArray *)self->_appLayouts indexOfObject:v8];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__SBMainSwitcherControllerCoordinator__switcherServiceAdded___block_invoke;
  v14[3] = &unk_2783A8C18;
  v14[4] = self;
  [(SBMainSwitcherControllerCoordinator *)self _insertAppLayout:v8 atIndex:v13 contentViewController:contentViewController modelMutationBlock:v14 completion:0];
}

- (void)_switcherServiceRemoved:(id)removed
{
  removedCopy = removed;
  isAnySwitcherVisible = [(SBMainSwitcherControllerCoordinator *)self isAnySwitcherVisible];
  userInfo = [removedCopy userInfo];

  v13 = [userInfo objectForKey:@"AppSwitcherService"];

  if (isAnySwitcherVisible)
  {
    bundleIdentifier = [v13 bundleIdentifier];
    v8 = [SBDisplayItem switcherServiceDisplayItemWithServiceIdentifier:bundleIdentifier];

    v9 = [(SBMainSwitcherControllerCoordinator *)self _appLayoutFromPrimaryLayoutItem:v8 sideLayoutElement:0 configuration:1];
    v10 = objc_alloc_init(SBSwitcherModelRemovalRequest);
    v11 = +[SBSwitcherModelRemovalRequestAction defaultRemovalPolicyAction];
    [(SBSwitcherModelRemovalRequest *)v10 setAction:v11 forAppLayout:v9];

    v12 = [(SBMainSwitcherControllerCoordinator *)self _switcherModelRemovalResultsForRequest:v10 forReason:0];
    [(SBMainSwitcherControllerCoordinator *)self _performSceneDestructionForModelRemovalResults:v12];
  }

  else
  {
    [(NSMutableArray *)self->_servicesRemovedWhileAwayFromSwitcher addObject:v13];
  }
}

- (BOOL)_isBestAppSuggestionEligibleForSwitcher:(id)switcher
{
  if (!switcher)
  {
    return 0;
  }

  bundleIdentifier = [switcher bundleIdentifier];
  v4 = [bundleIdentifier length] != 0;

  return v4;
}

void __59__SBMainSwitcherControllerCoordinator__buildAppLayoutCache__block_invoke_3(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 bundleIdentifier];
  if (v6)
  {
    v8 = v6;
    v7 = [SBApplicationAppProtectionAssistant shouldHideApplicationWithBundleIdentifier:v6];
    v6 = v8;
    if (v7)
    {
      [*(a1 + 32) addIndex:*(a1 + 40)];
      v6 = v8;
      *a4 = 1;
    }
  }
}

id __59__SBMainSwitcherControllerCoordinator__buildAppLayoutCache__block_invoke_6(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__SBMainSwitcherControllerCoordinator__buildAppLayoutCache__block_invoke_7;
  v4[3] = &unk_2783A8C90;
  v4[4] = *(a1 + 32);
  v2 = [a2 appLayoutWithItemsPassingTest:v4];

  return v2;
}

uint64_t __59__SBMainSwitcherControllerCoordinator__buildAppLayoutCache__block_invoke_8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 type] || (objc_msgSend(*(a1 + 32), "prioritizesSortOrderForAppLayout:", v6) & 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
    *a4 = 1;
  }

  return v7;
}

void __59__SBMainSwitcherControllerCoordinator__buildAppLayoutCache__block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 _currentLayoutState];
  v5 = [v4 displayOrdinal];

  v6 = [v3 _desktopSpaceItems];

  if ([v6 count])
  {
    v7 = *(*(*(a1 + 32) + 8) + 40);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __59__SBMainSwitcherControllerCoordinator__buildAppLayoutCache__block_invoke_10;
    v25[3] = &unk_2783A8CB8;
    v8 = v6;
    v26 = v8;
    v9 = [v7 bs_firstObjectPassingTest:v25];
    if (v9)
    {
      v10 = v9;
      [*(*(*(a1 + 32) + 8) + 40) removeObject:v9];
    }

    else
    {
      v11 = [SBAppLayout alloc];
      v12 = [v8 bs_array];
      if ([v8 count] <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = 3;
      }

      LOBYTE(v20) = 0;
      v14 = [(SBAppLayout *)v11 initWithItems:v12 centerItem:0 floatingItem:0 configuration:v13 centerConfiguration:0 environment:1 hidden:v20 preferredDisplayOrdinal:v5];

      v15 = *(*(*(a1 + 32) + 8) + 40);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __59__SBMainSwitcherControllerCoordinator__buildAppLayoutCache__block_invoke_11;
      v21[3] = &unk_2783B9820;
      v24 = *(a1 + 40);
      v23 = v5;
      v10 = v14;
      v22 = v10;
      v16 = [v15 bs_compactMap:v21];
      v17 = [v16 mutableCopy];
      v18 = *(*(a1 + 32) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;
    }

    [*(*(*(a1 + 32) + 8) + 40) insertObject:v10 atIndex:0];
  }
}

id __59__SBMainSwitcherControllerCoordinator__buildAppLayoutCache__block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 48) == 1 && [v3 preferredDisplayOrdinal] != *(a1 + 40))
  {
    v5 = v4;
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__SBMainSwitcherControllerCoordinator__buildAppLayoutCache__block_invoke_12;
    v7[3] = &unk_2783A8C90;
    v8 = *(a1 + 32);
    v5 = [v4 appLayoutWithItemsPassingTest:v7];
  }

  return v5;
}

void __98__SBMainSwitcherControllerCoordinator__rebuildCurrentWindowingModeCompatibleAppLayoutsIfNecessary__block_invoke(void *a1, void *a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 windowScene];
  v5 = [v3 windowManagementContext];
  v6 = [v5 isChamoisOrFlexibleWindowing];

  if (v6)
  {
    v7 = *(*(a1[5] + 8) + 40);
    if (v7)
    {
      goto LABEL_15;
    }

    v8 = v4;
    v9 = v3;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v10 = *(a1[4] + 48);
    v11 = [v10 countByEnumeratingWithState:&v60 objects:v66 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v61;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v61 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v60 + 1) + 8 * i);
          v16 = [v15 appLayoutByAdjustingCenterWindowItemsForFlexibleWindowing];
          if (([v16 isEqual:v15] & 1) == 0)
          {
            v17 = *(*(a1[5] + 8) + 40);
            if (!v17)
            {
              v18 = [*(a1[4] + 48) mutableCopy];
              v19 = *(a1[5] + 8);
              v20 = *(v19 + 40);
              *(v19 + 40) = v18;

              v17 = *(*(a1[5] + 8) + 40);
            }

            [v17 replaceObjectAtIndex:objc_msgSend(v17 withObject:{"indexOfObject:", v15), v16}];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v60 objects:v66 count:16];
      }

      while (v12);
    }

    v7 = *(*(a1[5] + 8) + 40);
    v3 = v9;
    v4 = v8;
    if (v7)
    {
LABEL_15:
      v21 = *(a1[4] + 32);
      if (!v21)
      {
        v22 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
        v23 = a1[4];
        v24 = *(v23 + 32);
        *(v23 + 32) = v22;

        v21 = *(a1[4] + 32);
        v25 = *(a1[5] + 8);
LABEL_39:
        v7 = *(v25 + 40);
        goto LABEL_40;
      }

      goto LABEL_40;
    }

LABEL_42:
    [*(a1[4] + 32) removeObjectForKey:v4];
    goto LABEL_41;
  }

  v7 = *(*(a1[6] + 8) + 40);
  if (!v7)
  {
    v47 = v4;
    v48 = v3;
    v26 = [v3 windowManagementContext];
    v51 = [v26 isMedusaEnabled];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = *(a1[4] + 48);
    v27 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
    if (v27)
    {
      v28 = v27;
      v50 = *v57;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v57 != v50)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v56 + 1) + 8 * j);
          v31 = +[SBApplicationController sharedInstance];
          v32 = [v30 appLayoutsBySplittingMedusaIncompatibleItemsWithApplicationController:v31 multitaskingSupported:v51];

          if (v32)
          {
            v33 = *(*(a1[6] + 8) + 40);
            if (!v33)
            {
              v34 = [*(a1[4] + 48) mutableCopy];
              v35 = *(a1[6] + 8);
              v36 = *(v35 + 40);
              *(v35 + 40) = v34;

              v33 = *(*(a1[6] + 8) + 40);
            }

            v37 = [v33 indexOfObject:v30];
            [*(*(a1[6] + 8) + 40) removeObject:v30];
            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            v38 = v32;
            v39 = [v38 countByEnumeratingWithState:&v52 objects:v64 count:16];
            if (v39)
            {
              v40 = v39;
              v41 = *v53;
              do
              {
                v42 = 0;
                v43 = v37;
                do
                {
                  if (*v53 != v41)
                  {
                    objc_enumerationMutation(v38);
                  }

                  v37 = v43 + 1;
                  [*(*(a1[6] + 8) + 40) insertObject:*(*(&v52 + 1) + 8 * v42++) atIndex:v43++];
                }

                while (v40 != v42);
                v40 = [v38 countByEnumeratingWithState:&v52 objects:v64 count:16];
              }

              while (v40);
            }
          }
        }

        v28 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
      }

      while (v28);
    }

    v7 = *(*(a1[6] + 8) + 40);
    v4 = v47;
    v3 = v48;
    if (!v7)
    {
      goto LABEL_42;
    }
  }

  v21 = *(a1[4] + 32);
  if (!v21)
  {
    v44 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v45 = a1[4];
    v46 = *(v45 + 32);
    *(v45 + 32) = v44;

    v21 = *(a1[4] + 32);
    v25 = *(a1[6] + 8);
    goto LABEL_39;
  }

LABEL_40:
  [v21 setObject:v7 forKey:v4];
LABEL_41:
}

void __104__SBMainSwitcherControllerCoordinator__notifySwitcherControllersCoordinatedSwitcherControllersDidChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 contentViewController];
  [v2 noteCoordinatedSwitcherControllersDidChange];
}

- (void)_insertAppLayout:(id)layout atIndex:(unint64_t)index contentViewController:(id)controller modelMutationBlock:(id)block completion:(id)completion
{
  v21[1] = *MEMORY[0x277D85DE8];
  v21[0] = layout;
  v12 = MEMORY[0x277CBEA60];
  completionCopy = completion;
  blockCopy = block;
  controllerCopy = controller;
  layoutCopy = layout;
  v17 = [v12 arrayWithObjects:v21 count:1];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  v20 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];

  [(SBMainSwitcherControllerCoordinator *)self _insertAppLayouts:v17 atIndexes:v19 contentViewController:controllerCopy modelMutationBlock:blockCopy completion:completionCopy];
}

- (void)_insertAppLayouts:(id)layouts atIndexes:(id)indexes contentViewController:(id)controller modelMutationBlock:(id)block completion:(id)completion
{
  layoutsCopy = layouts;
  indexesCopy = indexes;
  controllerCopy = controller;
  blockCopy = block;
  completionCopy = completion;
  if ([controllerCopy shouldAnimateInsertionOfAppLayouts:layoutsCopy atIndexes:indexesCopy])
  {
    [controllerCopy prepareAnimatedInsertionOfAppLayouts:layoutsCopy atIndexes:indexesCopy];
    blockCopy[2](blockCopy);
    [controllerCopy noteModelDidMutateForInsertionOfAppLayouts:layoutsCopy atIndexes:indexesCopy willAnimate:1];
    v16 = MEMORY[0x277D65DA0];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __119__SBMainSwitcherControllerCoordinator__insertAppLayouts_atIndexes_contentViewController_modelMutationBlock_completion___block_invoke;
    v17[3] = &unk_2783AE908;
    v18 = controllerCopy;
    v19 = layoutsCopy;
    v20 = indexesCopy;
    [v16 perform:v17 finalCompletion:completionCopy];
  }

  else
  {
    blockCopy[2](blockCopy);
    [controllerCopy noteModelDidMutateForInsertionOfAppLayouts:layoutsCopy atIndexes:indexesCopy willAnimate:0];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }
  }
}

void __119__SBMainSwitcherControllerCoordinator__insertAppLayouts_atIndexes_contentViewController_modelMutationBlock_completion___block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = (*(a2 + 16))(a2, @"insert main app layouts");
  [v2 performAnimatedInsertionOfAppLayouts:v3 atIndexes:v4 completion:v5];
}

- (void)_cancelPIPForDisplayItem:(id)item
{
  itemCopy = item;
  v12 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForDisplayItem:itemCopy];
  v5 = [v12 _deviceApplicationSceneHandleForDisplayItem:itemCopy];

  if (v5)
  {
    v6 = +[SBWorkspace mainWorkspace];
    v7 = [v6 pipControllerForType:0];

    application = [v5 application];
    processState = [application processState];
    v10 = [processState pid];
    persistenceIdentifier = [v5 persistenceIdentifier];
    [v7 cancelPictureInPictureForApplicationWithProcessIdentifierEnteringBackground:v10 scenePersistenceIdentifier:persistenceIdentifier];
  }
}

- (void)_deleteAppLayoutsMatchingBundleIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  _recentAppLayoutsController = [(SBAppSwitcherModel *)self->_mainSwitcherModel _recentAppLayoutsController];
  v6 = [_recentAppLayoutsController recentDisplayItemsForBundleIdentifier:identifierCopy includingHiddenAppLayouts:1];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SBMainSwitcherControllerCoordinator *)self deleteAppLayoutForDisplayItem:*(*(&v12 + 1) + 8 * v11++), v12];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (BOOL)_hasAppLayoutBeenUserKilledWithinThresholdToCreateNewScene:(id)scene
{
  sceneCopy = scene;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __98__SBMainSwitcherControllerCoordinator__hasAppLayoutBeenUserKilledWithinThresholdToCreateNewScene___block_invoke;
  v6[3] = &unk_2783B19C0;
  v6[4] = self;
  v6[5] = &v7;
  [sceneCopy enumerate:v6];
  LOBYTE(self) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return self;
}

void __98__SBMainSwitcherControllerCoordinator__hasAppLayoutBeenUserKilledWithinThresholdToCreateNewScene___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 344) objectForKey:?];
  if (v2)
  {
    v8 = v2;
    v3 = [v2 count] >= 2;
    v2 = v8;
    if (v3)
    {
      v4 = [v8 lastObject];
      [v4 doubleValue];

      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v5 = BSFloatLessThanOrEqualToFloat();
      v6 = *(*(a1 + 40) + 8);
      v7 = *(v6 + 24) | v5;
      v2 = v8;
      *(v6 + 24) = v7 & 1;
    }
  }
}

- (id)_persistenceIdentifiersForBundleIdentifier:(id)identifier onlyIncludeLaunchableIdentifiers:(BOOL)identifiers
{
  identifiersCopy = identifiers;
  v73 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v8 = MEMORY[0x277CBEB40];
  _recentAppLayoutsController = [(SBAppSwitcherModel *)self->_mainSwitcherModel _recentAppLayoutsController];
  v10 = [_recentAppLayoutsController recentsForBundleIdentifier:identifierCopy includingHiddenAppLayouts:0];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v13 = [v8 orderedSetWithArray:v12];

  selfCopy = self;
  [v13 addObjectsFromArray:self->_appLayouts];
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v13;
  v49 = [obj countByEnumeratingWithState:&v65 objects:v72 count:16];
  if (v49)
  {
    v47 = *v66;
    do
    {
      v14 = 0;
      do
      {
        if (*v66 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v51 = v14;
        v15 = *(*(&v65 + 1) + 8 * v14);
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        allItems = [v15 allItems];
        v17 = [allItems countByEnumeratingWithState:&v61 objects:v71 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v62;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v62 != v19)
              {
                objc_enumerationMutation(allItems);
              }

              v21 = *(*(&v61 + 1) + 8 * i);
              uniqueIdentifier = [v21 uniqueIdentifier];
              if (uniqueIdentifier && ![v21 type])
              {
                v23 = +[SBApplicationController sharedInstance];
                v24 = [v23 applicationForDisplayItem:v21];

                v25 = [SBApplicationSceneHandle lookupOrCreatePersistenceIDFromApplication:v24 sceneID:uniqueIdentifier];
                [orderedSet addObject:v25];
              }
            }

            v18 = [allItems countByEnumeratingWithState:&v61 objects:v71 count:16];
          }

          while (v18);
        }

        v14 = v51 + 1;
      }

      while (v51 + 1 != v49);
      v49 = [obj countByEnumeratingWithState:&v65 objects:v72 count:16];
    }

    while (v49);
  }

  _recentAppLayoutsController2 = [(SBAppSwitcherModel *)selfCopy->_mainSwitcherModel _recentAppLayoutsController];
  v27 = [_recentAppLayoutsController2 recentsForBundleIdentifier:identifierCopy includingHiddenAppLayouts:1];
  v28 = [v27 bs_filter:&__block_literal_global_359];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v45 = v28;
  v50 = [v45 countByEnumeratingWithState:&v57 objects:v70 count:16];
  if (v50)
  {
    v48 = *v58;
    do
    {
      v29 = 0;
      do
      {
        if (*v58 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v52 = v29;
        v30 = *(*(&v57 + 1) + 8 * v29);
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        allItems2 = [v30 allItems];
        v32 = [allItems2 countByEnumeratingWithState:&v53 objects:v69 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v54;
          do
          {
            for (j = 0; j != v33; ++j)
            {
              if (*v54 != v34)
              {
                objc_enumerationMutation(allItems2);
              }

              v36 = *(*(&v53 + 1) + 8 * j);
              uniqueIdentifier2 = [v36 uniqueIdentifier];
              if (uniqueIdentifier2 && ![v36 type] && (!identifiersCopy || !objc_msgSend(orderedSet, "count")))
              {
                v38 = +[SBApplicationController sharedInstance];
                v39 = [v38 applicationForDisplayItem:v36];

                v40 = [SBApplicationSceneHandle lookupOrCreatePersistenceIDFromApplication:v39 sceneID:uniqueIdentifier2];
                [orderedSet addObject:v40];
              }
            }

            v33 = [allItems2 countByEnumeratingWithState:&v53 objects:v69 count:16];
          }

          while (v33);
        }

        v29 = v52 + 1;
      }

      while (v52 + 1 != v50);
      v50 = [v45 countByEnumeratingWithState:&v57 objects:v70 count:16];
    }

    while (v50);
  }

  if ([orderedSet count])
  {
    v41 = orderedSet;
  }

  else
  {
    v41 = 0;
  }

  v42 = v41;

  return v41;
}

- (void)_noteUIWillLock
{
  [(SBMainSwitcherControllerCoordinator *)self _purgeHiddenAppLayoutsForUILock];
  [(SBMainSwitcherControllerCoordinator *)self _activateHomeScreenForProtectedHiddenAppOnUILock];
  recentSwipeUpToKillTimestampsForAppLayouts = self->_recentSwipeUpToKillTimestampsForAppLayouts;

  [(NSMutableDictionary *)recentSwipeUpToKillTimestampsForAppLayouts removeAllObjects];
}

void __87__SBMainSwitcherControllerCoordinator__activateHomeScreenForProtectedHiddenAppOnUILock__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isAnyProtectedHiddenApplicationVisible])
  {
    [v2 activateHomeScreenWithSource:7 animated:0];
  }
}

- (void)_purgeHiddenAppLayoutsForUILock
{
  v79 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(SBAppSwitcherModel *)self->_mainSwitcherModel appLayoutsIncludingHiddenAppLayouts:1];
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v69 objects:v78 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v70;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v70 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v69 + 1) + 8 * i);
        allItems = [v11 allItems];
        [v5 addObjectsFromArray:allItems];

        if ([v11 isHidden])
        {
          [v3 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v69 objects:v78 count:16];
    }

    while (v8);
  }

  v48 = v3;
  v49 = v6;

  v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v53 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v13 = v5;
  v14 = [v13 countByEnumeratingWithState:&v65 objects:v77 count:16];
  v52 = v13;
  if (v14)
  {
    v15 = v14;
    v16 = *v66;
    v51 = *v66;
    do
    {
      v17 = 0;
      v55 = v15;
      do
      {
        if (*v66 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v65 + 1) + 8 * v17);
        mainSwitcherModel = self->_mainSwitcherModel;
        bundleIdentifier = [v18 bundleIdentifier];
        v21 = [(SBAppSwitcherModel *)mainSwitcherModel appLayoutsForBundleIdentifier:bundleIdentifier includingHiddenAppLayouts:1];

        v22 = self->_mainSwitcherModel;
        bundleIdentifier2 = [v18 bundleIdentifier];
        v24 = [(SBAppSwitcherModel *)v22 appLayoutsForBundleIdentifier:bundleIdentifier2 includingHiddenAppLayouts:0];

        if (![v24 count] && objc_msgSend(v21, "count"))
        {
          firstObject = [v21 firstObject];
          allItems2 = [firstObject allItems];
          v27 = [allItems2 count];

          if (v27 < 2)
          {
            [v53 addObject:firstObject];
          }

          else
          {
            v28 = [firstObject itemForLayoutRole:1];
            v29 = [firstObject itemForLayoutRole:2];
            v54 = v28;
            bundleIdentifier3 = [v28 bundleIdentifier];
            bundleIdentifier4 = [v29 bundleIdentifier];
            v32 = [bundleIdentifier3 isEqualToString:bundleIdentifier4];

            if ((v32 & 1) == 0)
            {
              v33 = [SBAppLayout alloc];
              v34 = [MEMORY[0x277CCABB0] numberWithInteger:1];
              v75 = v34;
              v76 = v18;
              v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
              v36 = -[SBAppLayout initWithItemsForLayoutRoles:configuration:environment:hidden:preferredDisplayOrdinal:](v33, "initWithItemsForLayoutRoles:configuration:environment:hidden:preferredDisplayOrdinal:", v35, 1, [firstObject environment], 1, objc_msgSend(firstObject, "preferredDisplayOrdinal"));

              [v50 addObject:v36];
            }

            v16 = v51;
            v13 = v52;
          }

          v15 = v55;
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v65 objects:v77 count:16];
    }

    while (v15);
  }

  [v48 removeObjectsInArray:v53];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v37 = v48;
  v38 = [v37 countByEnumeratingWithState:&v61 objects:v74 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v62;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v62 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v61 + 1) + 8 * j);
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __70__SBMainSwitcherControllerCoordinator__purgeHiddenAppLayoutsForUILock__block_invoke;
        v60[3] = &unk_2783A8FF8;
        v60[4] = self;
        v60[5] = v42;
        [v42 enumerate:{v60, v48}];
      }

      v39 = [v37 countByEnumeratingWithState:&v61 objects:v74 count:16];
    }

    while (v39);
  }

  [(SBAppSwitcherModel *)self->_mainSwitcherModel removeAppLayouts:v37];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v43 = v50;
  v44 = [v43 countByEnumeratingWithState:&v56 objects:v73 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v57;
    do
    {
      for (k = 0; k != v45; ++k)
      {
        if (*v57 != v46)
        {
          objc_enumerationMutation(v43);
        }

        [(SBAppSwitcherModel *)self->_mainSwitcherModel addToFront:*(*(&v56 + 1) + 8 * k), v48];
      }

      v45 = [v43 countByEnumeratingWithState:&v56 objects:v73 count:16];
    }

    while (v45);
  }
}

void __70__SBMainSwitcherControllerCoordinator__purgeHiddenAppLayoutsForUILock__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a3;
  v6 = [v4 preferredDisplayIdentity];
  v7 = [v3 _entityForDisplayItem:v5 displayIdentity:v6];

  SBWorkspaceDestroyApplicationEntity(v7);
}

- (void)_performSceneDestructionForModelRemovalResults:(id)results
{
  v161 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  originatingSwitcherContentController = [resultsCopy originatingSwitcherContentController];
  v86 = originatingSwitcherContentController;
  if (originatingSwitcherContentController)
  {
    v5 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:originatingSwitcherContentController];
  }

  else
  {
    v5 = 0;
  }

  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  obj = [resultsCopy appLayouts];
  v90 = [obj countByEnumeratingWithState:&v145 objects:v160 count:16];
  if (v90)
  {
    v88 = *v146;
    selfCopy = self;
    v89 = v5;
    do
    {
      v6 = 0;
      do
      {
        if (*v146 != v88)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v145 + 1) + 8 * v6);
        if (v5)
        {
          v8 = v5;
        }

        else
        {
          v8 = [(SBMainSwitcherControllerCoordinator *)self switcherControllerForAppLayout:*(*(&v145 + 1) + 8 * v6)];
        }

        v9 = v8;
        _currentMainAppLayout = [v8 _currentMainAppLayout];
        v92 = v9;
        _currentFloatingAppLayout = [v9 _currentFloatingAppLayout];
        v10 = [resultsCopy replacementAppLayoutForAppLayout:v7];
        allItems = [v7 allItems];
        v93 = v6;
        if (v10)
        {
          allItems2 = [v7 allItems];
          v13 = [allItems2 mutableCopy];

          allItems3 = [v10 allItems];
          [v13 removeObjectsInArray:allItems3];

          allItems = v13;
        }

        v95 = objc_opt_new();
        v94 = objc_opt_new();
        v15 = objc_opt_new();
        v141 = 0u;
        v142 = 0u;
        v143 = 0u;
        v144 = 0u;
        v16 = allItems;
        v17 = [v16 countByEnumeratingWithState:&v141 objects:v159 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v142;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v142 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v141 + 1) + 8 * i);
              preferredDisplayIdentity = [v7 preferredDisplayIdentity];
              v23 = [(SBMainSwitcherControllerCoordinator *)selfCopy _entityForDisplayItem:v21 displayIdentity:preferredDisplayIdentity];

              if (v23)
              {
                v157 = v21;
                v158 = v23;
                v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v158 forKeys:&v157 count:1];
                [v15 addEntriesFromDictionary:v24];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v141 objects:v159 count:16];
          }

          while (v18);
        }

        v97 = objc_opt_new();
        v96 = objc_opt_new();
        v25 = +[SBSceneManagerCoordinator sharedInstance];
        sceneDeactivationManager = [v25 sceneDeactivationManager];
        v27 = [sceneDeactivationManager newAssertionWithReason:3];

        v139[0] = MEMORY[0x277D85DD0];
        v139[1] = 3221225472;
        v139[2] = __86__SBMainSwitcherControllerCoordinator__performSceneDestructionForModelRemovalResults___block_invoke;
        v139[3] = &unk_2783ADD00;
        v107 = v15;
        v140 = v107;
        v91 = v27;
        [v27 acquireWithPredicate:v139 transitionContext:0];
        v105 = v7;
        [resultsCopy executeActionForAppLayout:v7];
        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v103 = v16;
        v100 = v10;
        v108 = [v103 countByEnumeratingWithState:&v135 objects:v156 count:16];
        if (v108)
        {
          v28 = *v136;
          v99 = *v136;
          do
          {
            for (j = 0; j != v108; ++j)
            {
              if (*v136 != v28)
              {
                objc_enumerationMutation(v103);
              }

              v30 = *(*(&v135 + 1) + 8 * j);
              bundleIdentifier = [v30 bundleIdentifier];
              if (bundleIdentifier)
              {
                v32 = [v107 objectForKey:v30];
                if ([v32 isDeviceApplicationSceneEntity])
                {
                  deviceApplicationSceneEntity = [v32 deviceApplicationSceneEntity];
                  sceneHandle = [deviceApplicationSceneEntity sceneHandle];

                  if (sceneHandle)
                  {
                    prefersKillingInSwitcherDisabled = [sceneHandle prefersKillingInSwitcherDisabled];
                    if (v10)
                    {
                      goto LABEL_32;
                    }
                  }

                  else
                  {
                    prefersKillingInSwitcherDisabled = 0;
                    if (v10)
                    {
LABEL_32:
                      bundleIdentifier2 = [v30 bundleIdentifier];
                      v37 = [v10 containsItemWithBundleIdentifier:bundleIdentifier2];

                      prefersKillingInSwitcherDisabled |= v37;
                    }
                  }

                  if ([resultsCopy willHideDisplayItem:v30])
                  {
                    v38 = v97;
                  }

                  else
                  {
                    v38 = v96;
                  }

                  [v38 addObject:v32];
                  if ((prefersKillingInSwitcherDisabled & 1) == 0)
                  {
LABEL_38:
                    v39 = [(SBAppSwitcherModel *)selfCopy->_mainSwitcherModel appLayoutsForBundleIdentifier:bundleIdentifier includingHiddenAppLayouts:0];
                    v40 = v39;
                    if (v39)
                    {
                      v41 = [v39 count] == 0;
                    }

                    else
                    {
                      v41 = 1;
                    }

                    v42 = [_currentMainAppLayout isEqual:v105];
                    if ([_currentFloatingAppLayout isEqual:v105])
                    {
                      v43 = [_currentMainAppLayout containsItemWithBundleIdentifier:bundleIdentifier] ^ 1;
                    }

                    else
                    {
                      v43 = 0;
                    }

                    v28 = v99;
                    v10 = v100;
                    if (((v41 | v42) & 1) != 0 || v43)
                    {
                      v44 = +[SBApplicationController sharedInstance];
                      v45 = [v44 applicationForDisplayItem:v30];

                      if (v45)
                      {
                        v46 = [(NSMutableDictionary *)selfCopy->_appLayoutToEligibleTransientOverlayViewController objectForKey:v105];
                        if (v46)
                        {
                        }

                        else
                        {
                          processState = [v45 processState];
                          isRunning = [processState isRunning];

                          if (isRunning)
                          {
                            [v95 addObject:v45];
                            if (sceneHandle)
                            {
                              [v94 addObject:sceneHandle];
                            }
                          }
                        }
                      }
                    }
                  }

                  goto LABEL_57;
                }

                sceneHandle = 0;
                goto LABEL_38;
              }

LABEL_57:
            }

            v108 = [v103 countByEnumeratingWithState:&v135 objects:v156 count:16];
          }

          while (v108);
        }

        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v49 = v94;
        v50 = [v49 countByEnumeratingWithState:&v131 objects:v155 count:16];
        self = selfCopy;
        if (v50)
        {
          v51 = v50;
          v52 = *v132;
          do
          {
            for (k = 0; k != v51; ++k)
            {
              if (*v132 != v52)
              {
                objc_enumerationMutation(v49);
              }

              sceneIfExists = [*(*(&v131 + 1) + 8 * k) sceneIfExists];
              [sceneIfExists updateSettingsWithBlock:&__block_literal_global_364];
            }

            v51 = [v49 countByEnumeratingWithState:&v131 objects:v155 count:16];
          }

          while (v51);
        }

        v55 = [v97 bs_compactMap:&__block_literal_global_366];
        v56 = SBApplicationSceneEntityDestructionMakeIntent(1, 0);
        v57 = [MEMORY[0x277CBEB98] setWithArray:v55];
        SBWorkspaceDestroyApplicationSceneHandlesWithIntent(v57, v56, &__block_literal_global_369);

        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        v58 = v96;
        v59 = [v58 countByEnumeratingWithState:&v127 objects:v154 count:16];
        if (v59)
        {
          v60 = v59;
          v61 = *v128;
          do
          {
            for (m = 0; m != v60; ++m)
            {
              if (*v128 != v61)
              {
                objc_enumerationMutation(v58);
              }

              SBWorkspaceDestroyApplicationEntity(*(*(&v127 + 1) + 8 * m));
            }

            v60 = [v58 countByEnumeratingWithState:&v127 objects:v154 count:16];
          }

          while (v60);
        }

        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        allValues = [v107 allValues];
        v64 = [allValues countByEnumeratingWithState:&v123 objects:v153 count:16];
        if (v64)
        {
          v65 = v64;
          v66 = *v124;
          do
          {
            for (n = 0; n != v65; ++n)
            {
              if (*v124 != v66)
              {
                objc_enumerationMutation(allValues);
              }

              v68 = *(*(&v123 + 1) + 8 * n);
              if ([v68 isApplicationSceneEntity])
              {
                SBWorkspaceNoteApplicationEntityWasRemovedFromAppSwitcher(v68);
              }
            }

            v65 = [allValues countByEnumeratingWithState:&v123 objects:v153 count:16];
          }

          while (v65);
        }

        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v69 = v103;
        v70 = [v69 countByEnumeratingWithState:&v119 objects:v152 count:16];
        if (v70)
        {
          v71 = v70;
          v72 = *v120;
          do
          {
            for (ii = 0; ii != v71; ++ii)
            {
              if (*v120 != v72)
              {
                objc_enumerationMutation(v69);
              }

              [(SBMainSwitcherControllerCoordinator *)selfCopy _cancelPIPForDisplayItem:*(*(&v119 + 1) + 8 * ii)];
            }

            v71 = [v69 countByEnumeratingWithState:&v119 objects:v152 count:16];
          }

          while (v71);
        }

        v74 = v95;
        if ([v95 count])
        {
          v104 = v56;
          v106 = v55;
          v109 = v49;
          v75 = dispatch_group_create();
          v115 = 0u;
          v116 = 0u;
          v117 = 0u;
          v118 = 0u;
          v76 = v95;
          v77 = [v76 countByEnumeratingWithState:&v115 objects:v151 count:16];
          if (v77)
          {
            v78 = v77;
            v79 = *v116;
            do
            {
              for (jj = 0; jj != v78; ++jj)
              {
                if (*v116 != v79)
                {
                  objc_enumerationMutation(v76);
                }

                v81 = *(*(&v115 + 1) + 8 * jj);
                dispatch_group_enter(v75);
                bundleIdentifier3 = [v81 bundleIdentifier];
                v113[0] = MEMORY[0x277D85DD0];
                v113[1] = 3221225472;
                v113[2] = __86__SBMainSwitcherControllerCoordinator__performSceneDestructionForModelRemovalResults___block_invoke_373;
                v113[3] = &unk_2783A9398;
                v114 = v75;
                SBWorkspaceKillApplication(v81, 1, @"killed from app switcher", v113);
                defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
                v149 = @"SBAppSwitcherQuitAppBundleIdentifierKey";
                v150 = bundleIdentifier3;
                v84 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
                [defaultCenter postNotificationName:@"SBAppSwitcherQuitAppNotification" object:0 userInfo:v84];

                self = selfCopy;
                [(SBApplicationUserQuitMonitorServer *)selfCopy->_userQuitMonitorServer userClosedLastSceneOfApplicationWithBundleID:bundleIdentifier3];
              }

              v78 = [v76 countByEnumeratingWithState:&v115 objects:v151 count:16];
            }

            while (v78);
          }

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __86__SBMainSwitcherControllerCoordinator__performSceneDestructionForModelRemovalResults___block_invoke_2_374;
          block[3] = &unk_2783A8C18;
          v112 = v91;
          dispatch_group_notify(v75, MEMORY[0x277D85CD0], block);

          v85 = v91;
          v74 = v95;
          v49 = v109;
          v56 = v104;
          v55 = v106;
        }

        else
        {
          v85 = v91;
          [v91 relinquish];
        }

        v6 = v93 + 1;
        v5 = v89;
      }

      while (v93 + 1 != v90);
      v90 = [obj countByEnumeratingWithState:&v145 objects:v160 count:16];
    }

    while (v90);
  }
}

uint64_t __86__SBMainSwitcherControllerCoordinator__performSceneDestructionForModelRemovalResults___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [*(a1 + 32) allValues];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v15 + 1) + 8 * i) applicationSceneEntity];
        if (v8)
        {
          v9 = v8;
          v10 = [v8 sceneHandle];
          v11 = [v10 sceneIdentifier];
          v12 = [v3 identifier];
          v13 = [v11 isEqualToString:v12];

          if (v13)
          {
            v5 = 1;
            goto LABEL_12;
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v5;
}

void __86__SBMainSwitcherControllerCoordinator__performSceneDestructionForModelRemovalResults___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = SBLogAppSwitcher();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __86__SBMainSwitcherControllerCoordinator__performSceneDestructionForModelRemovalResults___block_invoke_4_cold_1(v3, v4);
    }
  }
}

- (id)_resultsForDisplayItemRemovalResolutionRequest:(id)request preferredAppLayoutForRemovalAnimationIfAny:(id)any
{
  v75 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  anyCopy = any;
  v51 = [MEMORY[0x277CBEB58] set];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v48 = requestCopy;
  displayItems = [requestCopy displayItems];
  v7 = [displayItems countByEnumeratingWithState:&v67 objects:v74 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v68;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v68 != v9)
        {
          objc_enumerationMutation(displayItems);
        }

        uniqueIdentifier = [*(*(&v67 + 1) + 8 * i) uniqueIdentifier];
        [v51 addObject:uniqueIdentifier];
      }

      v8 = [displayItems countByEnumeratingWithState:&v67 objects:v74 count:16];
    }

    while (v8);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = [v48 displayItems];
  v46 = [obj countByEnumeratingWithState:&v63 objects:v73 count:16];
  if (!v46)
  {
    v44 = 0;
    goto LABEL_63;
  }

  v44 = 0;
  v45 = *v64;
  do
  {
    for (j = 0; j != v46; ++j)
    {
      if (*v64 != v45)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v63 + 1) + 8 * j);
      if (![v13 type] || objc_msgSend(v13, "type") == 5)
      {
        v14 = [v48 removalIntentTypeForDisplayItem:v13];
        v15 = [(SBMainSwitcherControllerCoordinator *)self _nonHiddenAppLayoutsForDisplayItem:v13];
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __129__SBMainSwitcherControllerCoordinator__resultsForDisplayItemRemovalResolutionRequest_preferredAppLayoutForRemovalAnimationIfAny___block_invoke;
        v62[3] = &unk_2783A8CB8;
        v62[4] = v13;
        v16 = [v15 bs_filter:v62];
        v49 = v15;
        v50 = j;
        v47 = v13;
        if ([v16 count] < 2)
        {
          v18 = 0;
        }

        else
        {
          if (anyCopy)
          {
            firstObject = anyCopy;
          }

          else
          {
            firstObject = [v16 firstObject];
          }

          v19 = firstObject;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v20 = v16;
          v21 = [v20 countByEnumeratingWithState:&v58 objects:v72 count:16];
          if (v21)
          {
            v22 = v21;
            v18 = 0;
            v23 = *v59;
            do
            {
              for (k = 0; k != v22; ++k)
              {
                if (*v59 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v58 + 1) + 8 * k);
                if (v25 != v19 && [v19 containsAllItemsFromAppLayout:*(*(&v58 + 1) + 8 * k)])
                {
                  if (!v18)
                  {
                    v18 = objc_opt_new();
                  }

                  [v18 addObject:v25];
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v58 objects:v72 count:16];
            }

            while (v22);
          }

          else
          {
            v18 = 0;
          }
        }

        v26 = [v16 sb_arrayByRemovingObjects:v18];

        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v27 = v26;
        v28 = [v27 countByEnumeratingWithState:&v54 objects:v71 count:16];
        if (!v28)
        {
          v30 = 0;
          goto LABEL_54;
        }

        v29 = v28;
        v30 = 0;
        v31 = *v55;
        while (1)
        {
          v32 = 0;
          do
          {
            if (*v55 != v31)
            {
              objc_enumerationMutation(v27);
            }

            v33 = *(*(&v54 + 1) + 8 * v32);
            if (v14 != 2)
            {
              goto LABEL_44;
            }

            v52[0] = MEMORY[0x277D85DD0];
            v52[1] = 3221225472;
            v52[2] = __129__SBMainSwitcherControllerCoordinator__resultsForDisplayItemRemovalResolutionRequest_preferredAppLayoutForRemovalAnimationIfAny___block_invoke_2;
            v52[3] = &unk_2783A8C90;
            v53 = v51;
            v34 = [v33 appLayoutWithItemsPassingTest:v52];
            v35 = v34;
            if (!v34 || [v34 type] == 1)
            {

LABEL_44:
              v36 = [SBSwitcherDisplayItemRemovalResolutionResultAction defaultRemovalPolicyActionWithAppLayout:v33];
              goto LABEL_45;
            }

            v36 = [SBSwitcherDisplayItemRemovalResolutionResultAction replacementActionWithAppLayout:v33 replacementAppLayout:v35];

            if (!v36)
            {
              goto LABEL_44;
            }

LABEL_45:
            if (!v30)
            {
              v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            [v30 addObject:v36];

            ++v32;
          }

          while (v29 != v32);
          v37 = [v27 countByEnumeratingWithState:&v54 objects:v71 count:16];
          v29 = v37;
          if (!v37)
          {
LABEL_54:

            if (v30)
            {
              v38 = v44;
              if (!v44)
              {
                v38 = objc_alloc_init(SBSwitcherDisplayItemRemovalResolutionResults);
              }

              [(SBSwitcherDisplayItemRemovalResolutionResults *)v38 setActions:v30 forDisplayItem:v47];
              originatingSwitcherContentController = [v48 originatingSwitcherContentController];
              v44 = v38;
              [(SBSwitcherDisplayItemRemovalResolutionResults *)v38 setOriginatingSwitcherContentController:originatingSwitcherContentController];
            }

            j = v50;
            break;
          }
        }
      }
    }

    v46 = [obj countByEnumeratingWithState:&v63 objects:v73 count:16];
  }

  while (v46);
LABEL_63:

  return v44;
}

uint64_t __129__SBMainSwitcherControllerCoordinator__resultsForDisplayItemRemovalResolutionRequest_preferredAppLayoutForRemovalAnimationIfAny___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  if (v3)
  {
    v4 = [*(a1 + 32) containsObject:v3] ^ 1;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)_nonHiddenAppLayoutsForDisplayItem:(id)item
{
  v21 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  mainSwitcherModel = self->_mainSwitcherModel;
  bundleIdentifier = [itemCopy bundleIdentifier];
  v7 = [(SBAppSwitcherModel *)mainSwitcherModel appLayoutsForBundleIdentifier:bundleIdentifier includingHiddenAppLayouts:0];

  if (!v7)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = self->_appLayouts;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          if ([v14 containsItem:{itemCopy, v16}])
          {
            if (v11)
            {
              [v11 addObject:v14];
            }

            else
            {
              v11 = [MEMORY[0x277CBEB18] arrayWithObject:v14];
            }
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    v7 = [v11 copy];
  }

  return v7;
}

- (id)_switcherModelRemovalResultsForRequest:(id)request forReason:(int64_t)reason
{
  v76 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v47 = objc_alloc_init(SBSwitcherModelRemovalResults);
  v42 = requestCopy;
  originatingSwitcherContentController = [requestCopy originatingSwitcherContentController];
  v37 = originatingSwitcherContentController;
  if (originatingSwitcherContentController)
  {
    v8 = originatingSwitcherContentController;
    v9 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerForContentViewController:originatingSwitcherContentController, originatingSwitcherContentController];
    [(SBSwitcherModelRemovalResults *)v47 setOriginatingSwitcherContentController:v8];
  }

  else
  {
    v9 = 0;
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = [v42 appLayouts];
  v43 = [obj countByEnumeratingWithState:&v70 objects:v75 count:16];
  if (v43)
  {
    v40 = *v71;
    selfCopy = self;
    v41 = v9;
    do
    {
      v10 = 0;
      do
      {
        if (*v71 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v70 + 1) + 8 * v10);
        if (v9)
        {
          v12 = v9;
        }

        else
        {
          v12 = [(SBMainSwitcherControllerCoordinator *)self switcherControllerForAppLayout:*(*(&v70 + 1) + 8 * v10)];
        }

        v13 = v12;
        v45 = v10;
        _currentMainAppLayout = [v12 _currentMainAppLayout];
        _currentFloatingAppLayout = [v13 _currentFloatingAppLayout];
        v44 = [v42 actionForAppLayout:v11];
        replacementAppLayout = [v44 replacementAppLayout];
        v15 = v11;
        if (replacementAppLayout)
        {
          [(SBSwitcherModelRemovalResults *)v47 setReplacementAppLayout:replacementAppLayout forAppLayout:v11];
        }

        v50 = v13;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        allItems = [v11 allItems];
        v54 = [allItems countByEnumeratingWithState:&v66 objects:v74 count:16];
        v16 = 0;
        if (v54)
        {
          v52 = v11;
          v53 = *v67;
          v56 = replacementAppLayout;
          do
          {
            for (i = 0; i != v54; ++i)
            {
              if (*v67 != v53)
              {
                objc_enumerationMutation(allItems);
              }

              v18 = *(*(&v66 + 1) + 8 * i);
              if (!replacementAppLayout || ([replacementAppLayout containsItem:*(*(&v66 + 1) + 8 * i)] & 1) == 0)
              {
                v55 = v16;
                preferredDisplayIdentity = [v15 preferredDisplayIdentity];
                v20 = [(SBMainSwitcherControllerCoordinator *)self _entityForDisplayItem:v18 displayIdentity:preferredDisplayIdentity];
                deviceApplicationSceneEntity = [v20 deviceApplicationSceneEntity];

                if (deviceApplicationSceneEntity)
                {
                  application = [deviceApplicationSceneEntity application];
                  info = [application info];
                  supportsMultiwindow = [info supportsMultiwindow];
                  v25 = 0;
                  if (reason == 1 && supportsMultiwindow)
                  {
                    sceneHandle = [deviceApplicationSceneEntity sceneHandle];
                    sceneIfExists = [sceneHandle sceneIfExists];
                    uiClientSettings = [sceneIfExists uiClientSettings];
                    v25 = [uiClientSettings discardSessionOnUserDisconnect] ^ 1;

                    reason = 1;
                    v15 = v52;

                    self = selfCopy;
                  }
                }

                else
                {
                  v25 = 0;
                }

                [(SBSwitcherModelRemovalResults *)v47 setHide:v25 forDisplayItem:v18];
                v29 = MEMORY[0x223D6F7F0](v55);
                v57[0] = MEMORY[0x277D85DD0];
                v57[1] = 3221225472;
                v57[2] = __88__SBMainSwitcherControllerCoordinator__switcherModelRemovalResultsForRequest_forReason___block_invoke;
                v57[3] = &unk_2783B98B8;
                v30 = v29;
                v63 = v30;
                reasonCopy = reason;
                v57[4] = self;
                v57[5] = v18;
                v58 = _currentMainAppLayout;
                v59 = _currentFloatingAppLayout;
                v60 = v15;
                v31 = v50;
                v61 = v31;
                v62 = v56;
                v65 = v25;
                v16 = MEMORY[0x223D6F7F0](v57);

                activeAppLayoutWhenActivatingMainSwitcher = [v31 activeAppLayoutWhenActivatingMainSwitcher];
                v33 = v15;
                v34 = activeAppLayoutWhenActivatingMainSwitcher;
                v35 = [activeAppLayoutWhenActivatingMainSwitcher isOrContainsAppLayout:v33];

                if (v35)
                {
                  [v31 setActiveAppLayoutWhenActivatingMainSwitcher:0];
                }

                self = selfCopy;
                v15 = v52;
                replacementAppLayout = v56;
              }
            }

            v54 = [allItems countByEnumeratingWithState:&v66 objects:v74 count:16];
          }

          while (v54);
        }

        [(SBSwitcherModelRemovalResults *)v47 setAction:v16 forAppLayout:v15];
        v10 = v45 + 1;
        v9 = v41;
      }

      while (v45 + 1 != v43);
      v43 = [obj countByEnumeratingWithState:&v70 objects:v75 count:16];
    }

    while (v43);
  }

  return v47;
}

void __88__SBMainSwitcherControllerCoordinator__switcherModelRemovalResultsForRequest_forReason___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    (*(v2 + 16))();
  }

  if (*(a1 + 96) == 1)
  {
    v3 = [*(*(a1 + 32) + 344) objectForKey:*(a1 + 40)];
    if (!v3)
    {
      v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
      [*(*(a1 + 32) + 344) setObject:v3 forKey:*(a1 + 40)];
    }

    if ([v3 count] == 2)
    {
      [v3 removeObjectAtIndex:1];
    }

    v4 = MEMORY[0x277CCABB0];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v5 = [v4 numberWithDouble:?];
    [v3 insertObject:v5 atIndex:0];
  }

  if (([*(a1 + 48) containsItem:*(a1 + 40)] & 1) != 0 || objc_msgSend(*(a1 + 56), "containsItem:", *(a1 + 40)))
  {
    [*(*(a1 + 32) + 168) addObject:*(a1 + 40)];
  }

  v6 = [*(a1 + 64) layoutRoleForItem:*(a1 + 40)];
  v7 = [*(a1 + 72) contentViewController];
  v8 = *(a1 + 64);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__SBMainSwitcherControllerCoordinator__switcherModelRemovalResultsForRequest_forReason___block_invoke_2;
  v11[3] = &unk_2783B6010;
  v11[4] = *(a1 + 32);
  v9 = *(a1 + 80);
  v10 = *(a1 + 64);
  v12 = v9;
  v13 = v10;
  v15 = *(a1 + 104);
  v14 = *(a1 + 40);
  [v7 removeLayoutRole:v6 inSpace:v8 mutationBlock:v11 reason:*(a1 + 96)];
}

uint64_t __88__SBMainSwitcherControllerCoordinator__switcherModelRemovalResultsForRequest_forReason___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 176);
  *(v2 + 176) = 1;
  if (*(a1 + 40))
  {
    [*(*(a1 + 32) + 224) replaceAppLayout:*(a1 + 48) withAppLayout:?];
    if (*(a1 + 64) == 1)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __88__SBMainSwitcherControllerCoordinator__switcherModelRemovalResultsForRequest_forReason___block_invoke_3;
      v11[3] = &unk_2783A8C90;
      v4 = *(a1 + 48);
      v11[4] = *(a1 + 56);
      v5 = [v4 appLayoutWithItemsPassingTest:v11];
      v6 = [v5 appLayoutByModifyingHiddenState:1];
      [*(*(a1 + 32) + 224) addToFront:v6];
    }
  }

  else
  {
    v7 = *(a1 + 64);
    v8 = *(*(a1 + 32) + 224);
    v9 = *(a1 + 48);
    if (v7 == 1)
    {
      [v8 hide:v9];
    }

    else
    {
      [v8 remove:v9];
    }
  }

  result = [*(a1 + 32) _rebuildAppListCache];
  *(*(a1 + 32) + 176) = v3;
  return result;
}

- (id)_modelRemovalRequestForDisplayItemResolutionResults:(id)results
{
  v32 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [resultsCopy displayItems];
  v20 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  v4 = 0;
  if (v20)
  {
    v19 = *v27;
    do
    {
      v5 = 0;
      do
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v5;
        v6 = [resultsCopy actionsForDisplayItem:*(*(&v26 + 1) + 8 * v5)];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v23;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v23 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v22 + 1) + 8 * i);
              actionType = [v11 actionType];
              if (actionType == 2)
              {
                replacementAppLayout = [v11 replacementAppLayout];
                v13 = [SBSwitcherModelRemovalRequestAction replacementActionWithAppLayout:replacementAppLayout];

                if (!v13)
                {
                  continue;
                }
              }

              else
              {
                if (actionType != 1)
                {
                  continue;
                }

                v13 = +[SBSwitcherModelRemovalRequestAction defaultRemovalPolicyAction];
                if (!v13)
                {
                  continue;
                }
              }

              if (!v4)
              {
                v4 = objc_alloc_init(SBSwitcherModelRemovalRequest);
              }

              appLayout = [v11 appLayout];
              [(SBSwitcherModelRemovalRequest *)v4 setAction:v13 forAppLayout:appLayout];

              originatingSwitcherContentController = [resultsCopy originatingSwitcherContentController];
              [(SBSwitcherModelRemovalRequest *)v4 setOriginatingSwitcherContentController:originatingSwitcherContentController];
            }

            v8 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v8);
        }

        v5 = v21 + 1;
      }

      while (v21 + 1 != v20);
      v20 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v20);
  }

  return v4;
}

- (int64_t)_switcherDisplayItemRemovalIntentTypeForEntity:(id)entity removalContext:(id)context
{
  contextCopy = context;
  displayItemRepresentation = [entity displayItemRepresentation];
  if (displayItemRepresentation)
  {
    removalActionType = [contextCopy removalActionType];
    if (removalActionType == 2)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2 * (removalActionType == 1);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_switcherModelRemovalResultsForDisplayItemRemovalResolutionRequest:(id)request
{
  if (request)
  {
    v4 = [(SBMainSwitcherControllerCoordinator *)self _resultsForDisplayItemRemovalResolutionRequest:request preferredAppLayoutForRemovalAnimationIfAny:0];
    v5 = [(SBMainSwitcherControllerCoordinator *)self _modelRemovalRequestForDisplayItemResolutionResults:v4];
    v6 = [(SBMainSwitcherControllerCoordinator *)self _switcherModelRemovalResultsForRequest:v5 forReason:3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_removeAppLayout:(id)layout forReason:(int64_t)reason
{
  layoutCopy = layout;
  v9 = objc_alloc_init(SBSwitcherModelRemovalRequest);
  v7 = +[SBSwitcherModelRemovalRequestAction defaultRemovalPolicyAction];
  [(SBSwitcherModelRemovalRequest *)v9 setAction:v7 forAppLayout:layoutCopy];

  v8 = [(SBMainSwitcherControllerCoordinator *)self _switcherModelRemovalResultsForRequest:v9 forReason:reason];
  [(SBMainSwitcherControllerCoordinator *)self _performSceneDestructionForModelRemovalResults:v8];
}

- (void)_removeDisplayItem:(id)item forReason:(int64_t)reason preferredAppLayoutForRemovalAnimationIfAny:(id)any originatingSwitcherContentController:(id)controller
{
  controllerCopy = controller;
  anyCopy = any;
  itemCopy = item;
  v16 = objc_alloc_init(SBSwitcherDisplayItemRemovalResolutionRequest);
  [(SBSwitcherDisplayItemRemovalResolutionRequest *)v16 setRemovalIntentType:2 forDisplayItem:itemCopy];

  [(SBSwitcherDisplayItemRemovalResolutionRequest *)v16 setOriginatingSwitcherContentController:controllerCopy];
  v13 = [(SBMainSwitcherControllerCoordinator *)self _resultsForDisplayItemRemovalResolutionRequest:v16 preferredAppLayoutForRemovalAnimationIfAny:anyCopy];

  v14 = [(SBMainSwitcherControllerCoordinator *)self _modelRemovalRequestForDisplayItemResolutionResults:v13];
  v15 = [(SBMainSwitcherControllerCoordinator *)self _switcherModelRemovalResultsForRequest:v14 forReason:reason];
  [(SBMainSwitcherControllerCoordinator *)self _performSceneDestructionForModelRemovalResults:v15];
}

- (void)_modifyModelWithDropContext:(id)context
{
  ignoreModelUpdates = self->_ignoreModelUpdates;
  self->_ignoreModelUpdates = 1;
  [(SBAppSwitcherModel *)self->_mainSwitcherModel modifyWithDropContext:context];
  self->_ignoreModelUpdates = ignoreModelUpdates;

  [(SBMainSwitcherControllerCoordinator *)self _rebuildAppListCache];
}

- (void)keyboardFocusController:(id)controller externalSceneDidAcquireFocus:(id)focus
{
  focusCopy = focus;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __92__SBMainSwitcherControllerCoordinator_keyboardFocusController_externalSceneDidAcquireFocus___block_invoke;
  v7[3] = &unk_2783B9578;
  v8 = focusCopy;
  v6 = focusCopy;
  [(SBMainSwitcherControllerCoordinator *)self enumerateSwitcherControllersWithBlock:v7];
}

void __92__SBMainSwitcherControllerCoordinator_keyboardFocusController_externalSceneDidAcquireFocus___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 contentViewController];
  v3 = [*(a1 + 32) identifier];
  [v4 noteKeyboardFocusDidChangeToSceneID:v3];
}

- (void)appSwitcherModel:(id)model didRemoveAppLayoutForFallingOffList:(id)list
{
  listCopy = list;
  if ([listCopy isHidden])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __92__SBMainSwitcherControllerCoordinator_appSwitcherModel_didRemoveAppLayoutForFallingOffList___block_invoke;
    v6[3] = &unk_2783A8FF8;
    v6[4] = self;
    v7 = listCopy;
    [v7 enumerate:v6];
  }
}

void __92__SBMainSwitcherControllerCoordinator_appSwitcherModel_didRemoveAppLayoutForFallingOffList___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a3;
  v6 = [v4 preferredDisplayIdentity];
  v7 = [v3 _entityForDisplayItem:v5 displayIdentity:v6];

  SBWorkspaceDestroyApplicationEntity(v7);
}

- (void)appSwitcherModel:(id)model didMoveAppLayoutToFront:(id)front
{
  frontCopy = front;
  v6 = [(SBMainSwitcherControllerCoordinator *)self switcherControllerForAppLayout:frontCopy];
  [v6 _noteAppLayoutMovedToFront:frontCopy];
}

- (BOOL)handleHomeButtonPress
{
  _embeddedDisplaySwitcherController = [(SBMainSwitcherControllerCoordinator *)self _embeddedDisplaySwitcherController];
  handleHomeButtonPress = [_embeddedDisplaySwitcherController handleHomeButtonPress];

  return handleHomeButtonPress;
}

- (BOOL)handleHomeButtonLongPress
{
  _embeddedDisplaySwitcherController = [(SBMainSwitcherControllerCoordinator *)self _embeddedDisplaySwitcherController];
  handleHomeButtonLongPress = [_embeddedDisplaySwitcherController handleHomeButtonLongPress];

  return handleHomeButtonLongPress;
}

- (BOOL)handleLockButtonPress
{
  _embeddedDisplaySwitcherController = [(SBMainSwitcherControllerCoordinator *)self _embeddedDisplaySwitcherController];
  handleLockButtonPress = [_embeddedDisplaySwitcherController handleLockButtonPress];

  return handleLockButtonPress;
}

- (BOOL)handleVoiceCommandButtonPress
{
  _embeddedDisplaySwitcherController = [(SBMainSwitcherControllerCoordinator *)self _embeddedDisplaySwitcherController];
  handleVoiceCommandButtonPress = [_embeddedDisplaySwitcherController handleVoiceCommandButtonPress];

  return handleVoiceCommandButtonPress;
}

- (BOOL)handleVolumeUpButtonPress
{
  _embeddedDisplaySwitcherController = [(SBMainSwitcherControllerCoordinator *)self _embeddedDisplaySwitcherController];
  handleVolumeUpButtonPress = [_embeddedDisplaySwitcherController handleVolumeUpButtonPress];

  return handleVolumeUpButtonPress;
}

- (BOOL)handleVolumeDownButtonPress
{
  _embeddedDisplaySwitcherController = [(SBMainSwitcherControllerCoordinator *)self _embeddedDisplaySwitcherController];
  handleVolumeDownButtonPress = [_embeddedDisplaySwitcherController handleVolumeDownButtonPress];

  return handleVolumeDownButtonPress;
}

- (BOOL)handleHeadsetButtonPress:(BOOL)press
{
  pressCopy = press;
  _embeddedDisplaySwitcherController = [(SBMainSwitcherControllerCoordinator *)self _embeddedDisplaySwitcherController];
  LOBYTE(pressCopy) = [_embeddedDisplaySwitcherController handleHeadsetButtonPress:pressCopy];

  return pressCopy;
}

- (void)betaLaunchHandle:(id)handle activateIfNeededEndedWithResult:(BOOL)result
{
  handleCopy = handle;
  v4 = handleCopy;
  BSDispatchMain();
}

void __88__SBMainSwitcherControllerCoordinator_betaLaunchHandle_activateIfNeededEndedWithResult___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 384) removeObject:*(a1 + 40)];
  if (![*(*(a1 + 32) + 384) count])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 384);
    *(v2 + 384) = 0;
  }
}

- (int64_t)_overrideWindowActiveInterfaceOrientation
{
  _embeddedDisplaySwitcherController = [(SBMainSwitcherControllerCoordinator *)self _embeddedDisplaySwitcherController];
  contentViewController = [_embeddedDisplaySwitcherController contentViewController];

  v5 = [(SBMainSwitcherControllerCoordinator *)self switcherInterfaceOrientationForSwitcherContentController:contentViewController];
  return v5;
}

- (void)_insertCardForDisplayIdentifier:(id)identifier atIndex:(unint64_t)index
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = [SBDisplayItem applicationDisplayItemWithBundleIdentifier:identifier sceneIdentifier:@"_SB_TEST_"];
  v7 = [SBAppLayout alloc];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:1];
  v16 = v8;
  v17[0] = v6;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v10 = [(SBAppLayout *)v7 initWithItemsForLayoutRoles:v9 configuration:1 environment:1 preferredDisplayOrdinal:0];

  testItemForInsertion = self->_testItemForInsertion;
  self->_testItemForInsertion = v10;
  v12 = v10;

  self->_testItemInsertionIndex = index;
  _embeddedDisplaySwitcherController = [(SBMainSwitcherControllerCoordinator *)self _embeddedDisplaySwitcherController];
  contentViewController = [_embeddedDisplaySwitcherController contentViewController];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__SBMainSwitcherControllerCoordinator__insertCardForDisplayIdentifier_atIndex___block_invoke;
  v15[3] = &unk_2783A8C18;
  v15[4] = self;
  [(SBMainSwitcherControllerCoordinator *)self _insertAppLayout:v12 atIndex:index contentViewController:contentViewController modelMutationBlock:v15 completion:0];
}

- (void)_removeCardForDisplayIdentifier:(id)identifier
{
  v11 = [SBDisplayItem applicationDisplayItemWithBundleIdentifier:identifier sceneIdentifier:@"_SB_TEST_"];
  v4 = [(SBAppLayout *)self->_testItemForInsertion itemForLayoutRole:1];
  v5 = [(SBDisplayItem *)v11 isEqualToItem:v4];

  if (v5)
  {
    testItemForInsertion = self->_testItemForInsertion;
    self->_testItemForInsertion = 0;
    v7 = testItemForInsertion;

    v8 = objc_alloc_init(SBSwitcherModelRemovalRequest);
    v9 = +[SBSwitcherModelRemovalRequestAction defaultRemovalPolicyAction];
    [(SBSwitcherModelRemovalRequest *)v8 setAction:v9 forAppLayout:v7];

    v10 = [(SBMainSwitcherControllerCoordinator *)self _switcherModelRemovalResultsForRequest:v8 forReason:0];
    [(SBMainSwitcherControllerCoordinator *)self _performSceneDestructionForModelRemovalResults:v10];
  }
}

- (void)_acquireAssertion:(id)assertion
{
  v15 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  asynchronousRenderingAssertions = self->_asynchronousRenderingAssertions;
  if (!asynchronousRenderingAssertions)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = self->_asynchronousRenderingAssertions;
    self->_asynchronousRenderingAssertions = v6;

    asynchronousRenderingAssertions = self->_asynchronousRenderingAssertions;
  }

  [(NSMutableSet *)asynchronousRenderingAssertions addObject:assertionCopy];
  v8 = SBLogAppSwitcher();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    reason = [assertionCopy reason];
    v10 = [(NSMutableSet *)self->_asynchronousRenderingAssertions count];
    v11 = 138543618;
    v12 = reason;
    v13 = 2048;
    v14 = v10;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Acquiring asynchronous rendering assertion: %{public}@, assertion count: %lu", &v11, 0x16u);
  }

  [(SBMainSwitcherControllerCoordinator *)self _evaluateAsynchronousRenderingEnablement];
}

- (void)_updateAssertion:(id)assertion
{
  v12 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  v5 = SBLogAppSwitcher();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    reason = [assertionCopy reason];
    v7 = [(NSMutableSet *)self->_asynchronousRenderingAssertions count];
    v8 = 138543618;
    v9 = reason;
    v10 = 2048;
    v11 = v7;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Updating asynchronous rendering assertion: %{public}@, assertion count: %lu", &v8, 0x16u);
  }

  [(SBMainSwitcherControllerCoordinator *)self _evaluateAsynchronousRenderingEnablement];
}

- (void)_reqlinquishAssertion:(id)assertion
{
  v12 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  [(NSMutableSet *)self->_asynchronousRenderingAssertions removeObject:assertionCopy];
  v5 = SBLogAppSwitcher();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    reason = [assertionCopy reason];
    v7 = [(NSMutableSet *)self->_asynchronousRenderingAssertions count];
    v8 = 138543618;
    v9 = reason;
    v10 = 2048;
    v11 = v7;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Relinquishing asynchronous rendering assertion: %{public}@, assertion count: %lu", &v8, 0x16u);
  }

  [(SBMainSwitcherControllerCoordinator *)self _evaluateAsynchronousRenderingEnablement];
}

- (void)_setAsynchronousRenderingEnabled:(BOOL)enabled withMinificationFilter:(BOOL)filter forLayerTarget:(id)target presentationManager:(id)manager
{
  targetCopy = target;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __130__SBMainSwitcherControllerCoordinator__setAsynchronousRenderingEnabled_withMinificationFilter_forLayerTarget_presentationManager___block_invoke;
  v11[3] = &unk_2783B9900;
  v12 = targetCopy;
  enabledCopy = enabled;
  filterCopy = filter;
  v10 = targetCopy;
  [manager modifyDefaultPresentationContext:v11];
}

uint64_t __130__SBMainSwitcherControllerCoordinator__setAsynchronousRenderingEnabled_withMinificationFilter_forLayerTarget_presentationManager___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __130__SBMainSwitcherControllerCoordinator__setAsynchronousRenderingEnabled_withMinificationFilter_forLayerTarget_presentationManager___block_invoke_2;
  v4[3] = &__block_descriptor_34_e48_v16__0__UIMutableSceneLayerPresentationContext_8l;
  v5 = *(a1 + 40);
  return [a2 modifyLayerPresentationOverrideContextForLayerTarget:v2 block:v4];
}

void __130__SBMainSwitcherControllerCoordinator__setAsynchronousRenderingEnabled_withMinificationFilter_forLayerTarget_presentationManager___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setRenderingMode:v3];
  if (*(a1 + 33))
  {
    v4 = *MEMORY[0x277CDA278];
  }

  else
  {
    v4 = 0;
  }

  [v5 _setMinificationFilterName:v4];
}

- (void)transactionDidComplete:(id)complete
{
  if (self->_activeGestureTransaction == complete)
  {
    [(SBMainSwitcherControllerCoordinator *)self setActiveGestureTransaction:0];
  }
}

- (void)beginCoordinatingSwitcherController:(id)controller options:(unint64_t)options
{
  optionsCopy = options;
  controllerCopy = controller;
  windowScene = [controllerCopy windowScene];
  [controllerCopy willBeginCoordinationWithCoordinator:self];
  v8 = [(NSPointerArray *)self->_coordinatedSwitcherControllers count];
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = v8;
  v10 = 0;
  while (1)
  {
    v11 = [(NSPointerArray *)self->_coordinatedSwitcherControllers pointerAtIndex:v10];

    if (v11 == controllerCopy)
    {
      break;
    }

    if (v9 == ++v10)
    {
      goto LABEL_7;
    }
  }

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_7:
    [(NSPointerArray *)self->_coordinatedSwitcherControllers addPointer:controllerCopy];
    [(NSPointerArray *)self->_coordinatedSwitcherControllers compact];
  }

  [(NSMapTable *)self->_switcherControllersByWindowScene setObject:controllerCopy forKey:windowScene];
  [(SBMainSwitcherControllerCoordinator *)self _rebuildCurrentWindowingModeCompatibleAppLayoutsIfNecessary];
  layoutStateProvider = [windowScene layoutStateProvider];
  layoutState = [layoutStateProvider layoutState];
  [(SBMainSwitcherControllerCoordinator *)self _updateHomeScreenDisplayLayoutElementForLayoutState:layoutState switcherController:controllerCopy];

  [controllerCopy didBeginCoordinationWithCoordinator:self];
  [(SBMainSwitcherControllerCoordinator *)self _notifySwitcherControllersAppLayoutsDidChange];
  [(SBMainSwitcherControllerCoordinator *)self _notifySwitcherControllersCoordinatedSwitcherControllersDidChange];
  if (optionsCopy)
  {
    _defaultSwitcherController = [(SBMainSwitcherControllerCoordinator *)self _defaultSwitcherController];
    windowScene2 = [_defaultSwitcherController windowScene];
    v28 = _defaultSwitcherController;
    layoutStatePrimaryElement = [_defaultSwitcherController layoutStatePrimaryElement];
    workspaceEntity = [layoutStatePrimaryElement workspaceEntity];
    applicationSceneEntity = [workspaceEntity applicationSceneEntity];
    sceneHandle = [applicationSceneEntity sceneHandle];
    application = [sceneHandle application];
    bundleIdentifier = [application bundleIdentifier];
    LODWORD(_defaultSwitcherController) = [bundleIdentifier isEqualToString:@"com.apple.ist.demoloop"];

    v21 = +[SBWorkspace mainWorkspace];
    if (_defaultSwitcherController)
    {
      v22 = windowScene2;
      _fbsDisplayConfiguration = [windowScene2 _fbsDisplayConfiguration];
      [v21 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration builder:&__block_literal_global_385];

      v24 = +[SBWorkspace mainWorkspace];
      _fbsDisplayConfiguration2 = [windowScene _fbsDisplayConfiguration];
      [v24 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration2 builder:&__block_literal_global_392];
    }

    else
    {
      _fbsDisplayConfiguration3 = [windowScene _fbsDisplayConfiguration];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __83__SBMainSwitcherControllerCoordinator_beginCoordinatingSwitcherController_options___block_invoke_5;
      v29[3] = &unk_2783A98F0;
      v29[4] = self;
      [v21 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration3 builder:v29];

      v22 = windowScene2;
    }
  }
}

void __83__SBMainSwitcherControllerCoordinator_beginCoordinatingSwitcherController_options___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setEventLabel:@"ContinuityScreenConnect"];
  [v2 modifyApplicationContext:&__block_literal_global_390];
}

void __83__SBMainSwitcherControllerCoordinator_beginCoordinatingSwitcherController_options___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[(SBWorkspaceEntity *)SBHomeScreenEntity];
  [v2 setActivatingEntity:v3];
}

void __83__SBMainSwitcherControllerCoordinator_beginCoordinatingSwitcherController_options___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setEventLabel:@"ContinuityScreenConnect"];
  [v2 modifyApplicationContext:&__block_literal_global_394];
}

void __83__SBMainSwitcherControllerCoordinator_beginCoordinatingSwitcherController_options___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[(SBWorkspaceEntity *)SBHomeScreenEntity];
  [v2 setActivatingEntity:v3];
}

void __83__SBMainSwitcherControllerCoordinator_beginCoordinatingSwitcherController_options___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _defaultSwitcherController];
  v6 = [v5 _currentMainAppLayout];
  v7 = [(SBSwitcherTransitionRequest *)SBMutableSwitcherTransitionRequest requestForActivatingAppLayout:v6];

  [v7 setAnimationDisabled:1];
  [*(a1 + 32) _configureRequest:v4 forSwitcherTransitionRequest:v7 withEventLabel:@"ContinuityScreenConnect"];
}

- (void)endCoordinatingSwitcherController:(id)controller options:(unint64_t)options
{
  optionsCopy = options;
  v68 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  [controllerCopy willEndCoordinationWithCoordinator:self];
  val = self;
  _defaultSwitcherController = [(SBMainSwitcherControllerCoordinator *)self _defaultSwitcherController];
  v6 = controllerCopy;
  v7 = [controllerCopy isEqual:_defaultSwitcherController];

  if ((v7 & 1) == 0)
  {
    objc_initWeak(&location, val);
    _defaultSwitcherController2 = [(SBMainSwitcherControllerCoordinator *)val _defaultSwitcherController];
    windowScene = [_defaultSwitcherController2 windowScene];
    sceneManager = [windowScene sceneManager];
    v9 = controllerCopy;
    windowScene2 = [v9 windowScene];
    sceneManager2 = [windowScene2 sceneManager];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __81__SBMainSwitcherControllerCoordinator_endCoordinatingSwitcherController_options___block_invoke;
    v61[3] = &unk_2783AFDE8;
    objc_copyWeak(&v64, &location);
    v12 = v9;
    v62 = v12;
    v37 = windowScene2;
    v63 = v37;
    v40 = MEMORY[0x223D6F7F0](v61);
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v13 = [(SBMainSwitcherControllerCoordinator *)val appLayoutsForSwitcherController:v12];
    v14 = [v13 countByEnumeratingWithState:&v57 objects:v67 count:16];
    if (v14)
    {
      obj = v13;
      v15 = 0;
      v45 = *v58;
      v46 = v14;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v58 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v57 + 1) + 8 * i);
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          allItems = [v16 allItems];
          v18 = [allItems countByEnumeratingWithState:&v53 objects:v66 count:16];
          if (v18)
          {
            v19 = *v54;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v54 != v19)
                {
                  objc_enumerationMutation(allItems);
                }

                v21 = [v12 _deviceApplicationSceneHandleForDisplayItem:*(*(&v53 + 1) + 8 * j)];
                v22 = v21;
                if (v21)
                {
                  _sceneIdentity = [v21 _sceneIdentity];
                  [sceneManager2 transferOwnershipOfSceneWithIdentity:_sceneIdentity toSceneManager:sceneManager];

                  sceneIfExists = [v22 sceneIfExists];
                  LOBYTE(_sceneIdentity) = sceneIfExists != 0;

                  v15 |= _sceneIdentity;
                }
              }

              v18 = [allItems countByEnumeratingWithState:&v53 objects:v66 count:16];
            }

            while (v18);
          }
        }

        v46 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
      }

      while (v46);

      if ((optionsCopy & 1) == 0)
      {
        if (v15)
        {
          v25 = +[(SBWorkspace *)SBMainWorkspace];
          _fbsDisplayConfiguration = [windowScene _fbsDisplayConfiguration];
          v27 = v48;
          v48[0] = MEMORY[0x277D85DD0];
          v48[1] = 3221225472;
          v48[2] = __81__SBMainSwitcherControllerCoordinator_endCoordinatingSwitcherController_options___block_invoke_5;
          v48[3] = &unk_2783AB410;
          v48[4] = windowScene;
          v49 = v40;
          [v25 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration builder:v48];

LABEL_26:
          goto LABEL_27;
        }

LABEL_22:
        v40[2](v40, 1);
LABEL_27:

        objc_destroyWeak(&v64);
        objc_destroyWeak(&location);
        v6 = controllerCopy;
        goto LABEL_28;
      }
    }

    else
    {

      if ((optionsCopy & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    layoutStatePrimaryElement = [v12 layoutStatePrimaryElement];
    workspaceEntity = [layoutStatePrimaryElement workspaceEntity];
    applicationSceneEntity = [workspaceEntity applicationSceneEntity];
    sceneHandle = [applicationSceneEntity sceneHandle];
    application = [sceneHandle application];
    bundleIdentifier = [application bundleIdentifier];
    v34 = [bundleIdentifier isEqualToString:@"com.apple.ist.demoloop"];

    v35 = +[SBWorkspace mainWorkspace];
    _fbsDisplayConfiguration2 = [windowScene _fbsDisplayConfiguration];
    if (v34)
    {
      v27 = v52;
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __81__SBMainSwitcherControllerCoordinator_endCoordinatingSwitcherController_options___block_invoke_2;
      v52[3] = &unk_2783AB528;
      v52[4] = v40;
      [v35 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration2 builder:v52];
    }

    else
    {
      v27 = v50;
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __81__SBMainSwitcherControllerCoordinator_endCoordinatingSwitcherController_options___block_invoke_4;
      v50[3] = &unk_2783B9928;
      v50[4] = v12;
      v50[5] = val;
      v51 = v40;
      [v35 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration2 builder:v50];
    }

    goto LABEL_26;
  }

LABEL_28:
}

void __81__SBMainSwitcherControllerCoordinator_endCoordinatingSwitcherController_options___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v4 = [WeakRetained[51] objectForKey:*(a1 + 32)];
    [v4 invalidate];
    [v12[51] removeObjectForKey:*(a1 + 32)];
    v5 = [v12[52] objectForKey:*(a1 + 32)];
    [v5 invalidate];
    [v12[52] removeObjectForKey:*(a1 + 32)];
    [v12[4] removeObjectForKey:*(a1 + 40)];
    [v12[2] removeObjectForKey:*(a1 + 40)];
    v6 = [v12[1] count];
    v7 = v12;
    if (v6)
    {
      v8 = v6;
      v9 = 0;
      while (1)
      {
        v10 = [v7[1] pointerAtIndex:v9];
        v11 = *(a1 + 32);

        if (v11 == v10)
        {
          break;
        }

        ++v9;
        v7 = v12;
        if (v8 == v9)
        {
          goto LABEL_9;
        }
      }

      if (v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v12[1] removePointerAtIndex:v9];
        [v12[1] compact];
      }
    }

LABEL_9:
    [*(a1 + 32) didEndCoordinationWithCoordinator:v12];
    [v12 _notifySwitcherControllersAppLayoutsDidChange];
    [v12 _notifySwitcherControllersCoordinatedSwitcherControllersDidChange];

    v3 = v12;
  }
}

void __81__SBMainSwitcherControllerCoordinator_endCoordinatingSwitcherController_options___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setEventLabel:@"ContinuityScreenDisconnect"];
  [v4 modifyApplicationContext:&__block_literal_global_399];
  v3 = [v4 addCompletionHandler:*(a1 + 32)];
}

void __81__SBMainSwitcherControllerCoordinator_endCoordinatingSwitcherController_options___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[(SBWorkspaceEntity *)SBHomeScreenEntity];
  [v2 setActivatingEntity:v3];
}

void __81__SBMainSwitcherControllerCoordinator_endCoordinatingSwitcherController_options___block_invoke_4(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _currentMainAppLayout];
  v5 = [(SBSwitcherTransitionRequest *)SBMutableSwitcherTransitionRequest requestForActivatingAppLayout:v4];

  [v5 setAnimationDisabled:1];
  v19 = v5;
  v20 = a1;
  [*(a1 + 40) _configureRequest:v3 forSwitcherTransitionRequest:v5 withEventLabel:@"ContinuityScreenDisconnect"];
  [v3 setShouldPreventDismissalOfUnrelatedTransientOverlays:1];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = v3;
  v6 = [v3 applicationContext];
  v7 = [v6 applicationSceneEntities];

  obj = v7;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [v12 applicationSceneEntity];
        v14 = [v13 sceneHandle];
        v15 = [v14 application];
        v16 = [v15 bundleIdentifier];
        v17 = [v16 isEqualToString:@"com.apple.ist.demoloop"];

        if ((v17 & 1) == 0)
        {
          [v12 setFlag:1 forActivationSetting:41];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  v18 = [v21 addCompletionHandler:*(v20 + 48)];
}

void __81__SBMainSwitcherControllerCoordinator_endCoordinatingSwitcherController_options___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:17];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __81__SBMainSwitcherControllerCoordinator_endCoordinatingSwitcherController_options___block_invoke_6;
  v5[3] = &unk_2783A98C8;
  v6 = *(a1 + 32);
  [v3 modifyApplicationContext:v5];
  v4 = [v3 addCompletionHandler:*(a1 + 40)];
}

void __81__SBMainSwitcherControllerCoordinator_endCoordinatingSwitcherController_options___block_invoke_6(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) layoutStateProvider];
  v4 = [v3 layoutState];

  if (SBLayoutRoleIsValid([v4 windowPickerRole]))
  {
    [v5 setRequestedWindowPickerRole:{objc_msgSend(v4, "windowPickerRole")}];
  }

  if ([v4 unlockedEnvironmentMode] == 2)
  {
    [v5 setRequestedUnlockedEnvironmentMode:2];
  }
}

- (void)enumerateSwitcherControllersWithBlock:(id)block
{
  v18 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_switcherControllersByWindowScene;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [(NSMapTable *)self->_switcherControllersByWindowScene objectForKey:*(*(&v12 + 1) + 8 * v9), v12];
      blockCopy[2](blockCopy, v10, &v16);
      v11 = v16;

      if (v11)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)appLayoutsForSwitcherController:(id)controller
{
  v136 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v4 = self->_appLayouts;
  selfCopy = self;
  if ((SBFIsChamoisWindowingUIAvailable() & 1) != 0 || SBFIsFlexibleWindowingUIAvailable())
  {
    currentWindowingModeCompatibleAppLayoutsByWindowScene = self->_currentWindowingModeCompatibleAppLayoutsByWindowScene;
    windowScene = [controllerCopy windowScene];
    v7 = [(NSMapTable *)currentWindowingModeCompatibleAppLayoutsByWindowScene objectForKey:windowScene];

    if (v7)
    {
      v8 = v7;

      v4 = v8;
    }
  }

  if ([(NSMapTable *)self->_switcherControllersByWindowScene count]== 1)
  {
    v92 = v4;
  }

  else
  {
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v9 = self->_switcherControllersByWindowScene;
    v10 = [(NSMapTable *)v9 countByEnumeratingWithState:&v124 objects:v135 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v125;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v125 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if ([*(*(&v124 + 1) + 8 * i) isContinuityDisplayWindowScene])
          {
            v14 = 1;
            goto LABEL_18;
          }
        }

        v11 = [(NSMapTable *)v9 countByEnumeratingWithState:&v124 objects:v135 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_18:

    windowScene2 = [controllerCopy windowScene];
    v16 = windowScene2;
    if (v14 && (([windowScene2 isMainDisplayWindowScene] & 1) != 0 || objc_msgSend(v16, "isContinuityDisplayWindowScene")))
    {
      v92 = v4;
    }

    else
    {
      v86 = v16;
      if ([v16 isMainDisplayWindowScene])
      {
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        layoutState2 = selfCopy->_coordinatedSwitcherControllers;
        v18 = [(NSPointerArray *)layoutState2 countByEnumeratingWithState:&v120 objects:v134 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v121;
          v21 = -1;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v121 != v20)
              {
                objc_enumerationMutation(layoutState2);
              }

              windowScene3 = [*(*(&v120 + 1) + 8 * j) windowScene];
              if (([windowScene3 isMainDisplayWindowScene] & 1) == 0)
              {
                layoutStateProvider = [windowScene3 layoutStateProvider];
                layoutState = [layoutStateProvider layoutState];
                v21 &= ~(1 << [layoutState displayOrdinal]);
              }
            }

            v19 = [(NSPointerArray *)layoutState2 countByEnumeratingWithState:&v120 objects:v134 count:16];
          }

          while (v19);
        }

        else
        {
          v21 = -1;
        }
      }

      else
      {
        layoutState2 = [controllerCopy layoutState];
        v21 = 1 << [(NSPointerArray *)layoutState2 displayOrdinal];
      }

      v92 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v116 = 0u;
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      v26 = v4;
      v27 = [(NSArray *)v26 countByEnumeratingWithState:&v116 objects:v133 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v117;
        do
        {
          for (k = 0; k != v28; ++k)
          {
            if (*v117 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v116 + 1) + 8 * k);
            if (((1 << [v31 preferredDisplayOrdinal]) & ~v21) == 0)
            {
              [(NSArray *)v92 addObject:v31];
            }
          }

          v28 = [(NSArray *)v26 countByEnumeratingWithState:&v116 objects:v133 count:16];
        }

        while (v28);
      }

      v87 = v4;

      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      obj = selfCopy->_draggingAppLayouts;
      v32 = [(NSCountedSet *)obj countByEnumeratingWithState:&v112 objects:v132 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v113;
        do
        {
          v35 = 0;
          v90 = v33;
          do
          {
            if (*v113 != v34)
            {
              objc_enumerationMutation(obj);
            }

            v36 = *(*(&v112 + 1) + 8 * v35);
            v37 = [v36 itemForLayoutRole:1];
            v110[0] = MEMORY[0x277D85DD0];
            v110[1] = 3221225472;
            v110[2] = __71__SBMainSwitcherControllerCoordinator_appLayoutsForSwitcherController___block_invoke;
            v110[3] = &unk_2783B5428;
            v38 = v37;
            v111 = v38;
            if (([(NSArray *)v92 bs_containsObjectPassingTest:v110]& 1) == 0)
            {
              objectEnumerator = [(NSMapTable *)selfCopy->_switcherControllersByWindowScene objectEnumerator];
              allObjects = [objectEnumerator allObjects];
              v109[0] = MEMORY[0x277D85DD0];
              v109[1] = 3221225472;
              v109[2] = __71__SBMainSwitcherControllerCoordinator_appLayoutsForSwitcherController___block_invoke_2;
              v109[3] = &unk_2783B9710;
              v109[4] = v36;
              [allObjects bs_firstObjectPassingTest:v109];
              v42 = v41 = v34;

              v43 = [(SBMainSwitcherControllerCoordinator *)selfCopy convertAppLayout:v36 fromSwitcherController:v42 toSwitcherController:controllerCopy];
              [(NSArray *)v92 addObject:v43];

              v33 = v90;
              v34 = v41;
            }

            ++v35;
          }

          while (v33 != v35);
          v33 = [(NSCountedSet *)obj countByEnumeratingWithState:&v112 objects:v132 count:16];
        }

        while (v33);
      }

      v44 = selfCopy;
      currentCoordinatedLayoutStateTransitionContext = selfCopy->_currentCoordinatedLayoutStateTransitionContext;
      if (currentCoordinatedLayoutStateTransitionContext)
      {
        fromSwitcherController = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)currentCoordinatedLayoutStateTransitionContext fromSwitcherController];
        v47 = [controllerCopy isEqual:fromSwitcherController];

        v4 = v87;
        if (v47)
        {
          displayItems = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)selfCopy->_currentCoordinatedLayoutStateTransitionContext displayItems];
          v49 = [displayItems mutableCopy];

          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v50 = v92;
          v51 = [(NSArray *)v50 countByEnumeratingWithState:&v105 objects:v131 count:16];
          if (v51)
          {
            v52 = v51;
            v53 = *v106;
            do
            {
              for (m = 0; m != v52; ++m)
              {
                if (*v106 != v53)
                {
                  objc_enumerationMutation(v50);
                }

                v55 = MEMORY[0x277CBEB98];
                allItems = [*(*(&v105 + 1) + 8 * m) allItems];
                v57 = [v55 setWithArray:allItems];
                [v49 minusSet:v57];
              }

              v52 = [(NSArray *)v50 countByEnumeratingWithState:&v105 objects:v131 count:16];
            }

            while (v52);
          }

          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v58 = v49;
          v59 = [v58 countByEnumeratingWithState:&v101 objects:v130 count:16];
          v44 = selfCopy;
          if (v59)
          {
            v60 = v59;
            v61 = *v102;
            do
            {
              for (n = 0; n != v60; ++n)
              {
                if (*v102 != v61)
                {
                  objc_enumerationMutation(v58);
                }

                v63 = *(*(&v101 + 1) + 8 * n);
                fromAppLayout = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)selfCopy->_currentCoordinatedLayoutStateTransitionContext fromAppLayout];
                v65 = [fromAppLayout leafAppLayoutForItem:v63];
                [(NSArray *)v50 addObject:v65];
              }

              v60 = [v58 countByEnumeratingWithState:&v101 objects:v130 count:16];
            }

            while (v60);
          }
        }

        toSwitcherController = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)v44->_currentCoordinatedLayoutStateTransitionContext toSwitcherController];
        v67 = [controllerCopy isEqual:toSwitcherController];

        if (v67)
        {
          displayItems2 = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)v44->_currentCoordinatedLayoutStateTransitionContext displayItems];
          v69 = [displayItems2 mutableCopy];

          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v92 = v92;
          v70 = [(NSArray *)v92 countByEnumeratingWithState:&v97 objects:v129 count:16];
          if (v70)
          {
            v71 = v70;
            v72 = *v98;
            do
            {
              for (ii = 0; ii != v71; ++ii)
              {
                if (*v98 != v72)
                {
                  objc_enumerationMutation(v92);
                }

                v74 = MEMORY[0x277CBEB98];
                allItems2 = [*(*(&v97 + 1) + 8 * ii) allItems];
                v76 = [v74 setWithArray:allItems2];
                [v69 minusSet:v76];
              }

              v71 = [(NSArray *)v92 countByEnumeratingWithState:&v97 objects:v129 count:16];
            }

            while (v71);
          }

          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v77 = v69;
          v78 = [v77 countByEnumeratingWithState:&v93 objects:v128 count:16];
          if (v78)
          {
            v79 = v78;
            v80 = *v94;
            do
            {
              for (jj = 0; jj != v79; ++jj)
              {
                if (*v94 != v80)
                {
                  objc_enumerationMutation(v77);
                }

                v82 = *(*(&v93 + 1) + 8 * jj);
                toAppLayout = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)selfCopy->_currentCoordinatedLayoutStateTransitionContext toAppLayout];
                v84 = [toAppLayout leafAppLayoutForItem:v82];
                [(NSArray *)v92 addObject:v84];
              }

              v79 = [v77 countByEnumeratingWithState:&v93 objects:v128 count:16];
            }

            while (v79);
          }
        }
      }

      else
      {
        v4 = v87;
      }

      v16 = v86;
    }
  }

  return v92;
}

BOOL __71__SBMainSwitcherControllerCoordinator_appLayoutsForSwitcherController___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 layoutState];
  v4 = [v3 displayOrdinal];
  v5 = v4 == [*(a1 + 32) preferredDisplayOrdinal];

  return v5;
}

- (id)switcherControllerForAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([(NSMapTable *)self->_switcherControllersByWindowScene count]== 1)
  {
    objectEnumerator = [(NSMapTable *)self->_switcherControllersByWindowScene objectEnumerator];
    nextObject = [objectEnumerator nextObject];
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__72;
    v15 = __Block_byref_object_dispose__72;
    v16 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __70__SBMainSwitcherControllerCoordinator_switcherControllerForAppLayout___block_invoke;
    v8[3] = &unk_2783B9950;
    v8[4] = self;
    v9 = layoutCopy;
    v10 = &v11;
    [(SBMainSwitcherControllerCoordinator *)self enumerateSwitcherControllersWithBlock:v8];
    nextObject = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  return nextObject;
}

void __70__SBMainSwitcherControllerCoordinator_switcherControllerForAppLayout___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v7 = [*(a1 + 32) appLayoutsForSwitcherController:v6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__SBMainSwitcherControllerCoordinator_switcherControllerForAppLayout___block_invoke_2;
  v8[3] = &unk_2783A8CB8;
  v9 = *(a1 + 40);
  if ([v7 bs_containsObjectPassingTest:v8])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)switcherControllerForDisplayItem:(id)item
{
  itemCopy = item;
  if ([(NSMapTable *)self->_switcherControllersByWindowScene count]== 1)
  {
    objectEnumerator = [(NSMapTable *)self->_switcherControllersByWindowScene objectEnumerator];
    nextObject = [objectEnumerator nextObject];
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__72;
    v15 = __Block_byref_object_dispose__72;
    v16 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __72__SBMainSwitcherControllerCoordinator_switcherControllerForDisplayItem___block_invoke;
    v8[3] = &unk_2783B0A70;
    v9 = itemCopy;
    v10 = &v11;
    [(SBMainSwitcherControllerCoordinator *)self enumerateSwitcherControllersWithBlock:v8];
    nextObject = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  return nextObject;
}

void __72__SBMainSwitcherControllerCoordinator_switcherControllerForDisplayItem___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 _currentMainAppLayout];
  v7 = [v6 containsItem:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)convertAppLayout:(id)layout fromSwitcherController:(id)controller toSwitcherController:(id)switcherController
{
  layoutCopy = layout;
  controllerCopy = controller;
  switcherControllerCopy = switcherController;
  if ([controllerCopy isEqual:switcherControllerCopy])
  {
    v10 = layoutCopy;
    goto LABEL_7;
  }

  layoutState = [switcherControllerCopy layoutState];
  v10 = [layoutCopy appLayoutByModifyingPreferredDisplayOrdinal:{objc_msgSend(layoutState, "displayOrdinal")}];

  windowManagementContext = [controllerCopy windowManagementContext];
  if (([windowManagementContext isChamoisOrFlexibleWindowing] & 1) == 0)
  {
    windowManagementContext2 = [switcherControllerCopy windowManagementContext];
    isChamoisOrFlexibleWindowing = [windowManagementContext2 isChamoisOrFlexibleWindowing];

    if (!isChamoisOrFlexibleWindowing)
    {
      goto LABEL_7;
    }

    [v10 appLayoutByAdjustingCenterWindowItemsForFlexibleWindowing];
    v10 = windowManagementContext = v10;
  }

LABEL_7:

  return v10;
}

- (SBDisplayItemSlideOverConfiguration)slideOverConfigurationOnAnySwitcherForDisplayItem:(SEL)item
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x4810000000;
    v18 = &unk_21F9DA6A3;
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __89__SBMainSwitcherControllerCoordinator_slideOverConfigurationOnAnySwitcherForDisplayItem___block_invoke;
    v11[3] = &unk_2783B9978;
    selfCopy = self;
    v14 = &v15;
    v12 = v6;
    [(SBMainSwitcherControllerCoordinator *)self enumerateSwitcherControllersWithBlock:v11];
    v8 = v16[8];
    v9 = *(v16 + 3);
    *&retstr->corner = *(v16 + 2);
    retstr->size = v9;
    *&retstr->isActive = v8;

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    SBDisplayItemSlideOverConfigurationNone(retstr);
  }

  return result;
}

void __89__SBMainSwitcherControllerCoordinator_slideOverConfigurationOnAnySwitcherForDisplayItem___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 _slideOverDisplayItem];
  if (BSEqualObjects())
  {
    v7 = [v5 layoutState];
    v8 = [*(a1 + 40) displayItemLayoutAttributesProvider];
    v9 = [v7 appLayout];
    v10 = [v7 displayOrdinal];
    v11 = [v7 interfaceOrientation];
    if ((v11 - 1) < 2)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2 * ((v11 - 3) < 2);
    }

    v13 = [v8 layoutAttributesForDisplayItem:v6 inAppLayout:v9 displayOrdinal:v10 orientation:v12];
    [(SBDisplayItemLayoutAttributes *)v13 slideOverConfiguration];
    v14 = *(*(a1 + 48) + 8);
    v15 = v18;
    v16 = v17[1];
    *(v14 + 32) = v17[0];
    *(v14 + 48) = v16;
    *(v14 + 64) = v15;

    *a3 = 1;
  }
}

- (void)switcherControllerViewWillAppear:(id)appear animated:(BOOL)animated
{
  [(SBMainSwitcherControllerCoordinator *)self _rebuildAppListCache:appear];

  [(SBMainSwitcherControllerCoordinator *)self _updateBestAppSuggestion];
}

- (void)setActiveGestureTransaction:(id)transaction
{
  transactionCopy = transaction;
  activeGestureTransaction = self->_activeGestureTransaction;
  if (activeGestureTransaction != transactionCopy)
  {
    [(SBFluidSwitcherGestureWorkspaceTransaction *)activeGestureTransaction removeObserver:self];
    objc_storeStrong(&self->_activeGestureTransaction, transaction);
    [(SBFluidSwitcherGestureWorkspaceTransaction *)self->_activeGestureTransaction addObserver:self];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __67__SBMainSwitcherControllerCoordinator_setActiveGestureTransaction___block_invoke;
    v7[3] = &unk_2783B9578;
    v8 = transactionCopy;
    [(SBMainSwitcherControllerCoordinator *)self enumerateSwitcherControllersWithBlock:v7];
  }
}

void __67__SBMainSwitcherControllerCoordinator_setActiveGestureTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 gestureManager];
  [v3 setActiveGestureTransaction:*(a1 + 32)];
}

- (void)setLiveContentOverlayUpdatesSuspended:(BOOL)suspended
{
  if (self->_liveContentOverlayUpdatesSuspended != suspended)
  {
    v7 = v3;
    v8 = v4;
    self->_liveContentOverlayUpdatesSuspended = suspended;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __77__SBMainSwitcherControllerCoordinator_setLiveContentOverlayUpdatesSuspended___block_invoke;
    v5[3] = &__block_descriptor_33_e34_v24__0__SBSwitcherController_8_B16l;
    suspendedCopy = suspended;
    [(SBMainSwitcherControllerCoordinator *)self enumerateSwitcherControllersWithBlock:v5];
  }
}

void __77__SBMainSwitcherControllerCoordinator_setLiveContentOverlayUpdatesSuspended___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 contentViewController];
  v4 = objc_opt_class();
  v5 = v3;
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

  [v7 setLiveContentOverlayUpdatesSuspended:*(a1 + 32)];
}

- (id)draggingAppLayouts
{
  v2 = [(NSCountedSet *)self->_draggingAppLayouts copy];

  return v2;
}

- (void)prepareForCoordinatedLayoutStateTransitionWithContext:(id)context
{
  objc_storeStrong(&self->_currentCoordinatedLayoutStateTransitionContext, context);
  contextCopy = context;
  fromSwitcherController = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)self->_currentCoordinatedLayoutStateTransitionContext fromSwitcherController];
  [fromSwitcherController prepareForCoordinatedLayoutStateTransitionWithContext:self->_currentCoordinatedLayoutStateTransitionContext];

  toSwitcherController = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)self->_currentCoordinatedLayoutStateTransitionContext toSwitcherController];
  [toSwitcherController prepareForCoordinatedLayoutStateTransitionWithContext:self->_currentCoordinatedLayoutStateTransitionContext];
}

- (void)cleanUpAfterCoordinatedLayoutStateTransitionWithContext:(id)context
{
  fromSwitcherController = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)self->_currentCoordinatedLayoutStateTransitionContext fromSwitcherController];
  [fromSwitcherController cleanUpAfterCoordinatedLayoutStateTransitionWithContext:self->_currentCoordinatedLayoutStateTransitionContext];

  toSwitcherController = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)self->_currentCoordinatedLayoutStateTransitionContext toSwitcherController];
  [toSwitcherController cleanUpAfterCoordinatedLayoutStateTransitionWithContext:self->_currentCoordinatedLayoutStateTransitionContext];

  currentCoordinatedLayoutStateTransitionContext = self->_currentCoordinatedLayoutStateTransitionContext;
  self->_currentCoordinatedLayoutStateTransitionContext = 0;
}

- (id)_switcherControllerForTransitionRequest:(id)request
{
  requestCopy = request;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__SBMainSwitcherControllerCoordinator__switcherControllerForTransitionRequest___block_invoke;
  v8[3] = &unk_2783B9710;
  v9 = requestCopy;
  v5 = requestCopy;
  v6 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerPassingTest:v8];

  return v6;
}

uint64_t __79__SBMainSwitcherControllerCoordinator__switcherControllerForTransitionRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 windowScene];
  v4 = [v3 _fbsDisplayIdentity];

  v5 = [*(a1 + 32) displayIdentity];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (id)_switcherControllerForContentViewController:(id)controller
{
  controllerCopy = controller;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__SBMainSwitcherControllerCoordinator__switcherControllerForContentViewController___block_invoke;
  v8[3] = &unk_2783B9710;
  v9 = controllerCopy;
  v5 = controllerCopy;
  v6 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerPassingTest:v8];

  return v6;
}

uint64_t __83__SBMainSwitcherControllerCoordinator__switcherControllerForContentViewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 contentViewController];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)_switcherControllerForDisplayItem:(id)item
{
  itemCopy = item;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__SBMainSwitcherControllerCoordinator__switcherControllerForDisplayItem___block_invoke;
  v8[3] = &unk_2783B9710;
  v9 = itemCopy;
  v5 = itemCopy;
  v6 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerPassingTest:v8];

  return v6;
}

BOOL __73__SBMainSwitcherControllerCoordinator__switcherControllerForDisplayItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D0ADC0];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 uniqueIdentifier];
  v6 = [v2 identityForIdentifier:v5];

  v7 = [v4 windowScene];

  v8 = [v7 sceneManager];
  v9 = [v8 existingSceneHandleForSceneIdentity:v6];
  v10 = v9 != 0;

  return v10;
}

- (BOOL)_contentControllerIsEmbeddedDisplayContentController:(id)controller
{
  controllerCopy = controller;
  _embeddedDisplaySwitcherController = [(SBMainSwitcherControllerCoordinator *)self _embeddedDisplaySwitcherController];
  contentViewController = [_embeddedDisplaySwitcherController contentViewController];

  return contentViewController == controllerCopy;
}

- (id)switcherControllerForWindowScene:(id)scene
{
  sceneCopy = scene;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__SBMainSwitcherControllerCoordinator_switcherControllerForWindowScene___block_invoke;
  v8[3] = &unk_2783B9710;
  v9 = sceneCopy;
  v5 = sceneCopy;
  v6 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerPassingTest:v8];

  return v6;
}

uint64_t __72__SBMainSwitcherControllerCoordinator_switcherControllerForWindowScene___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 windowScene];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)_switcherControllerPassingTest:(id)test
{
  v16 = *MEMORY[0x277D85DE8];
  testCopy = test;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_coordinatedSwitcherControllers;
  v6 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (testCopy[2](testCopy, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_defaultSwitcherController
{
  v3 = [(NSPointerArray *)self->_coordinatedSwitcherControllers count];
  if (v3)
  {
    v3 = [(NSPointerArray *)self->_coordinatedSwitcherControllers pointerAtIndex:0];
  }

  return v3;
}

- (BOOL)_windowManagementContextIsSingleAppModeForSwitcherCorrespondingToDisplayOrdinal:(int64_t)ordinal
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __119__SBMainSwitcherControllerCoordinator__windowManagementContextIsSingleAppModeForSwitcherCorrespondingToDisplayOrdinal___block_invoke;
  v7[3] = &__block_descriptor_40_e30_B16__0__SBSwitcherController_8l;
  v7[4] = ordinal;
  v3 = [(SBMainSwitcherControllerCoordinator *)self _switcherControllerPassingTest:v7];
  windowManagementContext = [v3 windowManagementContext];

  if (windowManagementContext)
  {
    v5 = [windowManagementContext baseStyle] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL __119__SBMainSwitcherControllerCoordinator__windowManagementContextIsSingleAppModeForSwitcherCorrespondingToDisplayOrdinal___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 layoutState];
  v4 = [v3 displayOrdinal] == *(a1 + 32);

  return v4;
}

- (void)knownWindowsForAppBundleIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"bundleID != nil" object:? file:? lineNumber:? description:?];
}

void __94__SBMainSwitcherControllerCoordinator__presentStoreKitSheetIfNeededWithAppInfo_processHandle___block_invoke_2_cold_1(char a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "StoreKit sheet preflight result: %d", v2, 8u);
}

void __112__SBMainSwitcherControllerCoordinator__requestAutomaticUpdateAuthorizationIfNecessaryWithAppInfo_processHandle___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_debug_impl(&dword_21ED4E000, log, OS_LOG_TYPE_DEBUG, "Error acquiring automatic update authorization for %{public}@: %{public}@", &v4, 0x16u);
}

- (void)_activateNeighboringAppLayoutRequiringActiveAppLayout:appLayoutEnvironment:inForwardDirection:windowScene:eventLabel:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)removeAppLayoutForDisplayItem:(uint64_t)a3 shouldDestroyScene:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBMainSwitcherControllerCoordinator.m" lineNumber:2022 description:{@"Tried to remove app layout %@ without destroying scene while a switcher was visible. This is not supported.", a3}];
}

- (void)switcherContentController:setInterfaceOrientationFromUserResizing:forDisplayItem:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"controller" object:? file:? lineNumber:? description:?];
}

- (void)switcherContentController:setInterfaceOrientationFromUserResizing:forDisplayItem:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"item" object:? file:? lineNumber:? description:?];
}

- (void)fluidSwitcherGestureManager:didBeginDraggingWindowWithSceneIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"sceneIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)fluidSwitcherGestureManager:willEndDraggingWindowWithSceneIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"sceneIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)_beginDisplayLayoutTransitionForSwitcherController:(os_log_t)log reason:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218242;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "SwitcherController %p asked to being displayLayoutTransition reason: %@ without ending previous one, forcibly ending the previous", &v3, 0x16u);
}

void __86__SBMainSwitcherControllerCoordinator__performSceneDestructionForModelRemovalResults___block_invoke_4_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Error while attempting to disconnect scene: %@", &v2, 0xCu);
}

@end