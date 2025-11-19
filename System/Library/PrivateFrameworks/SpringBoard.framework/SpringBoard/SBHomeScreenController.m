@interface SBHomeScreenController
+ (void)_getApplicationDataStore:(id *)a3 configurationKey:(id *)a4 forDataSource:(id)a5;
- (BOOL)_controlCenterIsOnTheSameWindowScene:(id)a3;
- (BOOL)_dragSessionContainsAppClipWebClipIcon:(id)a3;
- (BOOL)_isCoplanarHomeScreenEnabled;
- (BOOL)_isFileStackIconSupported;
- (BOOL)_isHostedByCoverSheet;
- (BOOL)_ppt_pushHomeScreenStateWithError:(id *)a3;
- (BOOL)_shouldHideAppIconForceTouchInfoForApplication:(id)a3;
- (BOOL)_shouldTodayViewController:(id)a3 receiveTouch:(id)a4;
- (BOOL)allowsHomeScreenOverlay;
- (BOOL)allowsUninstall;
- (BOOL)appPredictionViewController:(id)a3 shouldDisplayBadgeWithBundleIdentifier:(id)a4;
- (BOOL)areAnyIconViewContextMenusAnimating;
- (BOOL)areAnyIconViewContextMenusShowing;
- (BOOL)canAppPredictionsWidgetAlignWithGrid;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)iconManager:(id)a3 allowsBadgingForIcon:(id)a4;
- (BOOL)iconManager:(id)a3 allowsBadgingForIconLocation:(id)a4;
- (BOOL)iconManager:(id)a3 canAddIcon:(id)a4 toIconList:(id)a5 inFolder:(id)a6;
- (BOOL)iconManager:(id)a3 canBeginDragForIconView:(id)a4;
- (BOOL)iconManager:(id)a3 canCustomElementAlignWithGrid:(id)a4;
- (BOOL)iconManager:(id)a3 folderController:(id)a4 canChangeCurrentPageIndexToIndex:(int64_t)a5;
- (BOOL)iconManager:(id)a3 iconViewDisplaysCloseBox:(id)a4;
- (BOOL)iconManager:(id)a3 iconViewDisplaysLabel:(id)a4;
- (BOOL)iconManager:(id)a3 isCustomElementValid:(id)a4;
- (BOOL)iconManager:(id)a3 isEditingAllowedForIconView:(id)a4;
- (BOOL)iconManager:(id)a3 isIconVisibleForBundleIdentifier:(id)a4;
- (BOOL)iconManager:(id)a3 isPartialEditingAllowedForIconLocation:(id)a4;
- (BOOL)iconManager:(id)a3 isWidgetValid:(id)a4;
- (BOOL)iconManager:(id)a3 requestDeleteFileStackIcon:(id)a4;
- (BOOL)iconManager:(id)a3 shouldActivateApplicationShortcutItem:(id)a4 atIndex:(unint64_t)a5 forIconView:(id)a6;
- (BOOL)iconManager:(id)a3 shouldCacheRecentViewController:(id)a4 forIdentifier:(id)a5;
- (BOOL)iconManager:(id)a3 shouldGroupSystemApplicationShortcutItemsForIconView:(id)a4;
- (BOOL)iconManager:(id)a3 shouldPlaceIconOnIgnoredList:(id)a4;
- (BOOL)iconManager:(id)a3 shouldPreviewOverlapMenuForIconView:(id)a4;
- (BOOL)iconManager:(id)a3 supportsParallaxForIconView:(id)a4;
- (BOOL)iconManagerCanBeginIconDrags:(id)a3;
- (BOOL)iconManagerCanSaveIconState:(id)a3;
- (BOOL)iconManagerCanUseSeparateWindowForRotation:(id)a3;
- (BOOL)iconManagerShouldShowWidgetIntroductionPopoverForDefaultWidgets:(id)a3;
- (BOOL)iconsSnapToGrid;
- (BOOL)isAnySearchVisibleOrTransitioning;
- (BOOL)isAppLibraryAllowed;
- (BOOL)isAppLibrarySupported;
- (BOOL)isBackdropVisible;
- (BOOL)isEditingAllowedForIconManager:(id)a3;
- (BOOL)isEditingForHomeScreenOverlayController:(id)a3;
- (BOOL)isFileStackIconRemoteContentPresented;
- (BOOL)isFloatingDockVisibleForIconManager:(id)a3;
- (BOOL)isFocusAllowedForIconManager:(id)a3;
- (BOOL)isHideSuggestionSupportedForIconView:(id)a3 inLocation:(id)a4;
- (BOOL)isHideSupportedForIcon:(id)a3 inLocation:(id)a4;
- (BOOL)isIconContentPossiblyVisibleOverApplicationForIconManager:(id)a3;
- (BOOL)isIconListViewTornDown;
- (BOOL)isMainDisplayLibraryViewVisible;
- (BOOL)isModalAppLibrarySupported;
- (BOOL)isRootFolderContentVisibleForIconManager:(id)a3;
- (BOOL)isShowingHomeScreenOverlay;
- (BOOL)isTodayOverlayPresented;
- (BOOL)isTodayOverlaySpotlightVisible;
- (BOOL)isUninstallSupportedForAnyIcon;
- (BOOL)isUninstallSupportedForIcon:(id)a3;
- (BOOL)isUninstallingSystemAppsRestricted;
- (BOOL)searchPresenterCanPresent:(id)a3;
- (BOOL)showsAddWidgetButtonWhileEditingForHomeScreenOverlayController:(id)a3;
- (BOOL)showsDoneButtonWhileEditingForHomeScreenOverlayController:(id)a3;
- (CGRect)iconManager:(id)a3 contentBoundingRectForConfigurationOfIconView:(id)a4;
- (Class)iconManager:(id)a3 iconClassForApplicationWithBundleIdentifier:(id)a4 proposedClass:(Class)a5;
- (SBFolderController)_currentFolderController;
- (SBFolderController)_openFolderController;
- (SBHIconImageAppearance)currentIconImageAppearance;
- (SBHIconImageStyleConfiguration)currentIconImageStyleConfiguration;
- (SBHomeScreenController)initWithWindowScene:(id)a3 iconController:(id)a4 alertItemsController:(id)a5 applicationController:(id)a6 applicationPlaceholderController:(id)a7 assistantController:(id)a8 coverSheetPresentationManager:(id)a9 lockScreenManager:(id)a10 policyAggregator:(id)a11 userInterfaceController:(id)a12;
- (SBIconController)_iconController;
- (SBRootFolderController)_rootFolderController;
- (SBSHomeScreenIconStyleConfiguration)currentHomeScreenIconStyleConfiguration;
- (SBUIController)userInterfaceController;
- (SBWindowScene)windowScene;
- (UIEdgeInsets)contentOverlayInsetsFromParentIfAvailableForFolderController:(id)a3;
- (UIEdgeInsets)iconManager:(id)a3 contentOverlayInsetsFromParentIfAvailableForFolderController:(id)a4;
- (UIEdgeInsets)iconManager:(id)a3 statusBarEdgeInsetsForFolderController:(id)a4;
- (UIView)containerView;
- (double)distanceToTopOfSpotlightIconsForIconManager:(id)a3;
- (double)minimumHomeScreenScale;
- (id)_aggregateLoggingAppKeyForIcon:(id)a3;
- (id)_appLibraryListLayoutProviderForWindowScene:(id)a3;
- (id)_configureCategoryMapProviderToUseCategoryMapAtURL:(id)a3;
- (id)_createHomeScreenOverlayControllerIfNeeded;
- (id)_createTestFolderWithOverrideIconList:(id)a3;
- (id)_currentMainDisplayLayoutState;
- (id)_hideStatusBarForReason:(id)a3 animated:(BOOL)a4;
- (id)_homeScreenOverlayControllerIfNeeded;
- (id)_identifierForSearchPresenter;
- (id)_libraryViewControllers;
- (id)_newSearchPillBackgroundView;
- (id)_newTodayViewControllerWithIconManager:(id)a3 iconListModel:(id)a4 rootFolder:(id)a5 location:(int64_t)a6;
- (id)_ppt_prepareTransientIconModelStoreWithError:(id *)a3;
- (id)_setUpLibraryViewControllerForWindowScene:(id)a3;
- (id)additionalIconListLayoutObserversForAppPredictionViewController:(id)a3;
- (id)alertItemsController;
- (id)animator:(id)a3 animationSettingsForOperation:(unint64_t)a4 childViewController:(id)a5;
- (id)appPredictionViewController:(id)a3 badgeValueForApplicationWithBundleIdentifier:(id)a4;
- (id)appPredictionViewController:(id)a3 iconForApplicationWithBundleIdentifier:(id)a4;
- (id)applicationController;
- (id)applicationPlaceholderController;
- (id)assistantController;
- (id)backgroundViewForSpotlightPresentableViewController:(id)a3;
- (id)coverSheetPresentationManager;
- (id)createFloatingDockControllerForWindowScene:(id)a3;
- (id)createModalLibraryControllerForWindowScene:(id)a3;
- (id)createStatusBarVisibiltyAssertionForWindowScene:(id)a3;
- (id)currentAnimationContainer;
- (id)defaultIconStateForIconManager:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)displayConfigurationForPresenter:(id)a3;
- (id)fallbackDefaultFirstPageWidgetsForIconManager:(id)a3;
- (id)featureIntroductionItemForWidgetSetupAtLocation:(unint64_t)a3;
- (id)homeScreenOverlayController:(id)a3 displayLayoutIdentifierForSidebarViewController:(id)a4;
- (id)iconDragManager;
- (id)iconManager:(id)a3 accessibilityTintColorForIconView:(id)a4;
- (id)iconManager:(id)a3 accessibilityTintColorForScreenRect:(CGRect)a4;
- (id)iconManager:(id)a3 applicationIconForReplacingIconWithAppIcon:(id)a4 proposedApplicationIcon:(id)a5;
- (id)iconManager:(id)a3 applicationShortcutItemsForIconView:(id)a4;
- (id)iconManager:(id)a3 applicationShortcutSectionOrderingForIconView:(id)a4;
- (id)iconManager:(id)a3 bundleIdentifierToLaunchForWidgetURL:(id)a4;
- (id)iconManager:(id)a3 configurationDataForDataSource:(id)a4 ofIcon:(id)a5;
- (id)iconManager:(id)a3 containerBundleIdentifierForDescriptor:(id)a4;
- (id)iconManager:(id)a3 containerViewControllerForConfigurationOfIconView:(id)a4;
- (id)iconManager:(id)a3 containerViewControllerForModalInteractionFromIconView:(id)a4;
- (id)iconManager:(id)a3 containerViewForConfigurationOfIconView:(id)a4;
- (id)iconManager:(id)a3 containerViewForModalInteractionFromIconView:(id)a4;
- (id)iconManager:(id)a3 containerViewForPresentingContextMenuForIconView:(id)a4;
- (id)iconManager:(id)a3 customInsertionGridPathForIcon:(id)a4 inRootFolder:(id)a5;
- (id)iconManager:(id)a3 dataSourceForOpenApplicationWindowsContextMenuProvider:(id)a4;
- (id)iconManager:(id)a3 defaultAutomaticFavoriteIconIdentifiersWithMaximumCount:(unint64_t)a4;
- (id)iconManager:(id)a3 dragPreviewForIconView:(id)a4;
- (id)iconManager:(id)a3 fakeStatusBarForFolderController:(id)a4;
- (id)iconManager:(id)a3 floatingDockViewControllerForView:(id)a4;
- (id)iconManager:(id)a3 floatingDockViewControllerForViewController:(id)a4;
- (id)iconManager:(id)a3 homeScreenContentViewForConfigurationOfIconView:(id)a4;
- (id)iconManager:(id)a3 homeScreenContentViewForModalInteractionFromIconView:(id)a4;
- (id)iconManager:(id)a3 screenSnapshotProviderForComponentsOfIconView:(id)a4;
- (id)iconManager:(id)a3 statusBarStyleRequestForFolderController:(id)a4;
- (id)iconManager:(id)a3 viewControllerForCustomIcon:(id)a4 element:(id)a5;
- (id)iconManager:(id)a3 wantsToHideStatusBarForFolderController:(id)a4 animated:(BOOL)a5;
- (id)iconManager:(id)a3 widgetDataSourceForReplacingIconWithWidget:(id)a4 proposedWidgetDataSource:(id)a5;
- (id)iconManager:(id)a3 willAddDefaultFirstPageWidgetsBasedOnPinnedWidgets:(id)a4 suggestionWidgets:(id)a5;
- (id)launchActionsForIconView:(id)a3;
- (id)launchActivationSettingsForIconView:(id)a3;
- (id)launchURLForIconView:(id)a3;
- (id)libraryViewControllerForWindowScene:(id)a3;
- (id)lockScreenManager;
- (id)markIconsOccludedForReason:(id)a3;
- (id)policyAggregator;
- (id)preferredFocusEnvironments;
- (id)rootFolder;
- (id)rootFolderController:(id)a3 transitionContextForTransitioningToState:(int64_t)a4 animated:(BOOL)a5 interactive:(BOOL)a6;
- (id)searchAffordanceViewForSpotlightPresentableViewController:(id)a3;
- (id)searchPresentablesForPresenter:(id)a3;
- (id)succinctDescription;
- (id)suggestionsWidgetViewController:(id)a3 iconForApplicationWithBundleIdentifier:(id)a4;
- (id)temporaryIntentDataForIconWithIdentifier:(id)a3 widgetUniqueIdentifier:(id)a4;
- (id)testSetupForIconManagerAddWidgetsToEachPage:(id)a3;
- (id)testSetupForIconManagerWidgetScrollPerformanceTest:(id)a3;
- (id)testSetupForIconManagerWidgetScrollTest:(id)a3;
- (id)testSetupHomeScreenForWidgetScrollPerformanceTest:(id)a3;
- (id)transitionContextToShowSpotlight:(BOOL)a3 fromTodayView:(BOOL)a4 animated:(BOOL)a5 interactive:(BOOL)a6;
- (id)widgetIntroductionPreviewViewForIconManager:(id)a3;
- (id)willBeginModifyingPresentationProgressForState:(int64_t)a3 animated:(BOOL)a4 needsInitialLayout:(BOOL *)a5;
- (id)windowForIconDragPreviewsForIconManager:(id)a3 forWindowScene:(id)a4;
- (int64_t)iconManager:(id)a3 closeBoxTypeForIconView:(id)a4 proposedType:(int64_t)a5;
- (int64_t)iconManager:(id)a3 draggingStartLocationForIconView:(id)a4 proposedStartLocation:(int64_t)a5;
- (int64_t)iconManager:(id)a3 preferredMenuElementOrderForIconView:(id)a4;
- (int64_t)interfaceOrientationForIconManager:(id)a3;
- (int64_t)interfaceOrientationForWallpaperController:(id)a3;
- (unint64_t)addWidgetSheetStyleForIconManager:(id)a3;
- (unint64_t)allowedInterfaceOrientationsForIconManager:(id)a3;
- (unint64_t)barSwipeAffordanceView:(id)a3 systemGestureTypeForType:(int64_t)a4;
- (unint64_t)bestListLayoutProviderLayoutOptions;
- (unint64_t)defaultSearchViewPresentationSourceForViewController:(id)a3;
- (unint64_t)iconManager:(id)a3 supportedMultitaskingShortcutActionsForIconView:(id)a4;
- (unint64_t)maximumListCountForFoldersForIconManager:(id)a3;
- (unint64_t)possibleInterfaceOrientationsForIconManager:(id)a3;
- (unint64_t)supportedMultitaskingShortcutActionsForBundleIdentifier:(id)a3;
- (void)_backgroundContrastDidChange:(id)a3;
- (void)_beginDisablingAllOrientationChangesForReason:(id)a3;
- (void)_closeOpenFolderIfNecessary;
- (void)_colorDropperDismissed:(id)a3;
- (void)_colorDropperWillPresent:(id)a3;
- (void)_configureBackgroundTapObservation:(BOOL)a3;
- (void)_configureDeweyEachAppHasItsOwnCategory:(unint64_t)a3;
- (void)_configureDeweyOneCategoryWithAllApps;
- (void)_configureEditingGestureRecognizers;
- (void)_configureFloatingDockController:(id)a3 forWindowScene:(id)a4;
- (void)_configureLibraryWithCategoryLimit:(int64_t)a3;
- (void)_configureNavigationGestureRecognizersIfNeeded;
- (void)_controlCenterDidPresent:(id)a3;
- (void)_controlCenterWillDismiss:(id)a3;
- (void)_controlCenterWillPresent:(id)a3;
- (void)_coverSheetDidPresent:(id)a3;
- (void)_coverSheetWillPresent:(id)a3;
- (void)_dismissPageManagementIfPresented:(id)a3;
- (void)_endDisablingAllOrientationChangesForReason:(id)a3;
- (void)_enumerateTodayViewControllers:(id)a3;
- (void)_failCurrentTestWithMessage:(id)a3;
- (void)_forceTouchControllerWillPresent:(id)a3;
- (void)_handleBackgroundTap:(id)a3;
- (void)_handleEditingGesture:(id)a3;
- (void)_handleSearchAffordanceTap;
- (void)_iconModelDidChange:(id)a3;
- (void)_launchFromIconView:(id)a3 withActions:(id)a4 modifierFlags:(int64_t)a5;
- (void)_launchWidgetIcon:(id)a3 fromLocation:(id)a4 withContext:(id)a5;
- (void)_lockScreenUIWillDismiss:(id)a3;
- (void)_lockScreenUIWillLock:(id)a3;
- (void)_mainSwitcherCreated:(id)a3;
- (void)_makeTodayViewControllers;
- (void)_noteStatusBarHeightChanged:(id)a3;
- (void)_policyAggregatorCapabilitiesDidChange:(id)a3;
- (void)_ppt_popHomeScreenState;
- (void)_presentPageManagement:(id)a3;
- (void)_rebuildTodayViewControllers;
- (void)_reduceMotionStatusDidChange:(id)a3;
- (void)_removeReachabilityEffectViewIfNecessary;
- (void)_resetHomeScreenBackdropView;
- (void)_rootFolderDidChange;
- (void)_runAppIconForceTouchTest:(id)a3 withOptions:(id)a4;
- (void)_runFolderCloseTest;
- (void)_runFolderOpenTest;
- (void)_runFolderTestWithName:(id)a3 actions:(id)a4;
- (void)_runScrollFolderTest:(int64_t)a3;
- (void)_runTest:(id)a3 afterMovingIconsIntoFolder:(id)a4 withFolderOpen:(BOOL)a5;
- (void)_setFolderDisplayLayoutElementActive:(BOOL)a3;
- (void)_setWidgetEditingDisplayLayoutElementActive:(BOOL)a3;
- (void)_setupAppearanceControlling;
- (void)_setupHomeScreenContentBackdropView;
- (void)_setupHomeScreenDimmingWindow;
- (void)_setupOverlayLibraryViewController;
- (void)_showInfoAlertIfNeeded:(BOOL)a3;
- (void)_showsBadgesInAppLibraryDidChange;
- (void)_startSpotlightInteractiveGestureTransactionForGesture:(id)a3;
- (void)_styleEditorDidDismiss:(id)a3;
- (void)_styleEditorWillPresent:(id)a3;
- (void)_switchToHomeScreenWallpaperAnimated:(BOOL)a3;
- (void)_teardownDeweyTestConfigurations;
- (void)_unlockAnimationDidFinish:(id)a3;
- (void)_updateRequireWallpaperRasterization;
- (void)_updateVisibleIconsAfterOcclusionChange;
- (void)_willRevealOrHideContentView;
- (void)activateTodayViewWithCompletion:(id)a3;
- (void)addEventObserver:(id)a3;
- (void)addFloatingDockControllerObserver:(id)a3;
- (void)addIconOcclusionReason:(unint64_t)a3 updateVisibleIcons:(BOOL)a4;
- (void)addIconStyleObserver:(id)a3;
- (void)addIconToHomeScreen:(id)a3;
- (void)addSmartStacksForWidgetDiscoverabilityAndPrepareWidgetIntroduction;
- (void)alertItemsController:(id)a3 willActivateAlertItem:(id)a4;
- (void)assistantWillAppear:(id)a3 windowScene:(id)a4;
- (void)beginRequiringBackdropViewForReason:(id)a3;
- (void)beginRequiringContentForReason:(id)a3 options:(unint64_t)a4;
- (void)beginRequiringLiveBackdropViewForReason:(id)a3;
- (void)cancelInProcessAnimations;
- (void)caseAttachedStateDidUpdateWithColor:(id)a3;
- (void)closeFileStackIconRemoteContent;
- (void)dealloc;
- (void)dismissAppIconForceTouchControllers:(id)a3;
- (void)dismissHomeScreenOverlayControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)dismissHomeScreenOverlayUsingTransitionCoordinator:(id)a3;
- (void)dismissHomeScreenOverlaysAnimated:(BOOL)a3 completion:(id)a4;
- (void)dismissHomeScreenOverlaysForAddingNewIcon;
- (void)dismissLibraryAnimated:(BOOL)a3 completion:(id)a4;
- (void)dismissLibraryForIconManager:(id)a3 windowScene:(id)a4 animated:(BOOL)a5;
- (void)dismissLibraryFromOverlayControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)dismissRemoteWallpaperEditorViewController;
- (void)dismissSearchView;
- (void)dismissTodayOverlayAnimated:(BOOL)a3 completion:(id)a4;
- (void)dismissTodayOverlaySpotlightAnimated:(BOOL)a3;
- (void)displayFeatureIntroductionItem:(id)a3 atLocation:(unint64_t)a4;
- (void)displayFeatureIntroductionsAtLocation:(unint64_t)a3;
- (void)earlyTerminateAnyContextMenuAnimations;
- (void)endRequiringBackdropViewForReason:(id)a3;
- (void)endRequiringContentForReason:(id)a3;
- (void)endRequiringLiveBackdropViewForReason:(id)a3;
- (void)enumerateTintableViewControllersUsingBlock:(id)a3;
- (void)folderController:(id)a3 iconListView:(id)a4 springLoadedInteractionForIconDragDidCompleteOnIconView:(id)a5;
- (void)getLeadingTopButtonFrame:(CGRect *)a3 trailingTopButtonFrame:(CGRect *)a4;
- (void)handleHomeButtonTap;
- (void)handleNavigationCommand:(id)a3 withDirection:(int64_t)a4;
- (void)handleSpotlightDismissalFromViewController:(id)a3;
- (void)handleSpotlightPresentationFromViewController:(id)a3;
- (void)handleWillBeginReachabilityAnimation;
- (void)homeGesturePerformedForBarSwipeAffordanceView:(id)a3;
- (void)homeScreenBackdropView:(id)a3 opaquenessDidChange:(BOOL)a4;
- (void)homeScreenOverlayController:(id)a3 setSuppressesEditingStateForListView:(BOOL)a4;
- (void)homeScreenOverlayWantsToEndEditing:(id)a3;
- (void)homeScreenOverlayWantsWidgetEditingViewControllerPresented:(id)a3;
- (void)iconManager:(id)a3 dataSource:(id)a4 ofIcon:(id)a5 didUpdateConfigurationData:(id)a6;
- (void)iconManager:(id)a3 didAddItemsToIconDragWithUniqueIdentifier:(id)a4 numberOfDraggedItems:(unint64_t)a5;
- (void)iconManager:(id)a3 didCloseFolder:(id)a4;
- (void)iconManager:(id)a3 didCreateRootFolderController:(id)a4;
- (void)iconManager:(id)a3 didCreateRootViewController:(id)a4;
- (void)iconManager:(id)a3 didDismissPageManagementWithLayoutManager:(id)a4 context:(id)a5;
- (void)iconManager:(id)a3 didEndIconDragWithUniqueIdentifier:(id)a4 numberOfDraggedItems:(unint64_t)a5;
- (void)iconManager:(id)a3 didOpenFolder:(id)a4;
- (void)iconManager:(id)a3 didReceiveTapOnLaunchDisabledIconView:(id)a4;
- (void)iconManager:(id)a3 didSpringLoadIconView:(id)a4;
- (void)iconManager:(id)a3 displayFeatureIntroductionItemIfUnlocked:(id)a4;
- (void)iconManager:(id)a3 folderControllerDidEndScrolling:(id)a4;
- (void)iconManager:(id)a3 folderControllerWillBeginScrolling:(id)a4;
- (void)iconManager:(id)a3 iconDropSessionDidEnter:(id)a4;
- (void)iconManager:(id)a3 iconView:(id)a4 configurationDidEndWithInteraction:(id)a5;
- (void)iconManager:(id)a3 iconView:(id)a4 configurationWillBeginWithInteraction:(id)a5;
- (void)iconManager:(id)a3 iconView:(id)a4 contentDropSessionDidEnter:(id)a5;
- (void)iconManager:(id)a3 iconView:(id)a4 contentDropSessionDidExit:(id)a5;
- (void)iconManager:(id)a3 iconView:(id)a4 willUseContextMenuStyle:(id)a5;
- (void)iconManager:(id)a3 launchIcon:(id)a4 location:(id)a5 animated:(BOOL)a6 completionHandler:(id)a7;
- (void)iconManager:(id)a3 launchIconForIconView:(id)a4 withActions:(id)a5 modifierFlags:(int64_t)a6;
- (void)iconManager:(id)a3 modalInteractionDidEnd:(id)a4;
- (void)iconManager:(id)a3 modalInteractionWillBegin:(id)a4;
- (void)iconManager:(id)a3 nestingViewController:(id)a4 willPerformOperation:(int64_t)a5 onViewController:(id)a6 withTransitionCoordinator:(id)a7;
- (void)iconManager:(id)a3 prepareAddSheetViewController:(id)a4;
- (void)iconManager:(id)a3 prepareForPageHidingEducationWithCompletionHandler:(id)a4;
- (void)iconManager:(id)a3 rootFolderController:(id)a4 didEndOverscrollOnFirstPageWithVelocity:(double)a5 translation:(double)a6;
- (void)iconManager:(id)a3 rootFolderController:(id)a4 didEndOverscrollOnLastPageWithVelocity:(double)a5 translation:(double)a6;
- (void)iconManager:(id)a3 rootFolderController:(id)a4 didOverscrollOnFirstPageByAmount:(double)a5;
- (void)iconManager:(id)a3 rootFolderController:(id)a4 didOverscrollOnLastPageByAmount:(double)a5;
- (void)iconManager:(id)a3 rootFolderController:(id)a4 willUseTransitionContext:(id)a5 toTransitionToState:(int64_t)a6;
- (void)iconManager:(id)a3 statusBarInsetsDidChange:(UIEdgeInsets)a4;
- (void)iconManager:(id)a3 tapFloatingDockStackIconView:(id)a4;
- (void)iconManager:(id)a3 wantsLaunchForWidgetURL:(id)a4;
- (void)iconManager:(id)a3 wantsUninstallForIcon:(id)a4 location:(id)a5;
- (void)iconManager:(id)a3 willBeginIconDragWithUniqueIdentifier:(id)a4 numberOfDraggedItems:(unint64_t)a5;
- (void)iconManager:(id)a3 willCloseFolder:(id)a4;
- (void)iconManager:(id)a3 willCloseFolderController:(id)a4;
- (void)iconManager:(id)a3 willDestroyRootFolderController:(id)a4;
- (void)iconManager:(id)a3 willDestroyRootViewController:(id)a4;
- (void)iconManager:(id)a3 willDismissPageManagementUsingAnimator:(id)a4 context:(id)a5;
- (void)iconManager:(id)a3 willOpenFolder:(id)a4;
- (void)iconManager:(id)a3 willOpenFolderController:(id)a4;
- (void)iconManager:(id)a3 willPrepareIconViewForLaunch:(id)a4;
- (void)iconManager:(id)a3 willPresentPageManagementWithLayoutManager:(id)a4 animator:(id)a5 context:(id)a6;
- (void)iconManager:(id)a3 willRemoveFakeStatusBar:(id)a4 forFolderController:(id)a5;
- (void)iconManager:(id)a3 willRemoveViewControllerForIdentifier:(id)a4;
- (void)iconManager:(id)a3 willUseIconImageCache:(id)a4;
- (void)iconManager:(id)a3 willUseRootFolderControllerConfiguration:(id)a4;
- (void)iconManagerDidAddOrRemoveWidgetIcon:(id)a3;
- (void)iconManagerDidDismissWidgetEditing:(id)a3;
- (void)iconManagerDidFinishInstallForIcon:(id)a3;
- (void)iconManagerDidNoteIconStateChangedExternally:(id)a3;
- (void)iconManagerDidSaveIconState:(id)a3;
- (void)iconManagerEditingDidChange:(id)a3;
- (void)iconManagerFolderAnimatingDidChange:(id)a3;
- (void)iconManagerIconDraggingDidChange:(id)a3;
- (void)iconManagerListLayoutProviderDidChange:(id)a3;
- (void)iconManagerPreferredProminentPosterColor:(id)a3 handler:(id)a4;
- (void)iconManagerToggleHomeScreenWallpaperDimming:(id)a3;
- (void)iconManagerWantsHomeScreenWallpaperEditorViewControllerPresented:(id)a3;
- (void)iconManagerWantsIconSizeToggled:(id)a3;
- (void)iconManagerWillAnimateWidgetInsertion:(id)a3;
- (void)iconManagerWillPresentWidgetEditing:(id)a3;
- (void)iconModel:(id)a3 backupRestoringStatusDidChange:(BOOL)a4;
- (void)iconModel:(id)a3 wantsToRevealAnyApplicationFromIdentifiers:(id)a4;
- (void)iconModelDidImportIconState:(id)a3;
- (void)iconModelInstalledAppsDidChange:(id)a3;
- (void)iconStyleCoordinatorDidUpdate:(id)a3;
- (void)informIconStyleObserversOfStyleChange;
- (void)invalidate;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4;
- (void)libraryViewController:(id)a3 didDismissSearchController:(id)a4;
- (void)libraryViewController:(id)a3 willDismissFolderController:(id)a4;
- (void)libraryViewController:(id)a3 willDismissSearchController:(id)a4;
- (void)libraryViewController:(id)a3 willPresentFolderController:(id)a4;
- (void)libraryViewController:(id)a3 willPresentSearchController:(id)a4;
- (void)libraryViewControllerDidDismiss:(id)a3;
- (void)libraryViewControllerRequestsDismissal:(id)a3;
- (void)libraryViewControllerWillPresent:(id)a3;
- (void)modalRemoteViewController:(id)a3 didDismissWithResponse:(id)a4;
- (void)modalRemoteViewController:(id)a3 willDismissWithResponse:(id)a4;
- (void)noteTransientOverlayPresented;
- (void)noteViewCovered;
- (void)notifyFloatingDockControllerObserversDidRegister:(id)a3;
- (void)overlayController:(id)a3 didChangePresentationProgress:(double)a4 newPresentationProgress:(double)a5 fromLeading:(BOOL)a6;
- (void)overlayController:(id)a3 visibilityDidChange:(BOOL)a4;
- (void)overlayControllerDidBeginChangingPresentationProgress:(id)a3;
- (void)performAfterContextMenuAnimationsHaveCompleted:(id)a3;
- (void)popToCurrentRootIconListWhenPossible;
- (void)presentLibraryCategoryPodFromOverlayControllerForCategoryIdentifier:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)presentLibraryForIconManager:(id)a3 windowScene:(id)a4 animated:(BOOL)a5;
- (void)presentLibraryFromOverlayControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)presentTodayOverlayForIconManager:(id)a3;
- (void)proactiveHomeScreenSuggestionProvider:(id)a3 willUseTemporaryIntent:(id)a4 forIconWithIdentifier:(id)a5 widgetUniqueIdentifier:(id)a6;
- (void)publisher:(id)a3 didUpdateLayout:(id)a4 withTransition:(id)a5;
- (void)removeEventObserver:(id)a3;
- (void)removeFloatingDockControllerObserver:(id)a3;
- (void)removeHomeScreenTraitOverridesForViewController:(id)a3;
- (void)removeIconOcclusionReason:(unint64_t)a3 updateVisibleIcons:(BOOL)a4;
- (void)removeIconsOccludedAssertion:(id)a3;
- (void)restoreContentAndUnscatterIconsAnimated:(BOOL)a3 afterDelay:(double)a4 withCompletion:(id)a5;
- (void)restoreContentWithOptions:(unint64_t)a3;
- (void)rootFolderController:(id)a3 transitionDidFinish:(id)a4;
- (void)rootFolderController:(id)a3 transitionWillBegin:(id)a4;
- (void)rootFolderPageStateProvider:(id)a3 didContinueTransitionToState:(int64_t)a4 progress:(double)a5;
- (void)rootFolderPageStateProvider:(id)a3 didEndTransitionFromState:(int64_t)a4 toState:(int64_t)a5 successfully:(BOOL)a6;
- (void)rootFolderPageStateProvider:(id)a3 willBeginTransitionToState:(int64_t)a4 animated:(BOOL)a5 interactive:(BOOL)a6;
- (void)runWidgetDiscoverabilityTest;
- (void)searchBarDidFocus;
- (void)searchGesture:(id)a3 changedPercentComplete:(double)a4;
- (void)searchGesture:(id)a3 endedGesture:(BOOL)a4;
- (void)searchGesture:(id)a3 startedShowing:(BOOL)a4;
- (void)searchPresenterDidDismissSearch:(id)a3;
- (void)searchPresenterDidPresentSearch:(id)a3;
- (void)searchPresenterWillDismissSearch:(id)a3 animated:(BOOL)a4;
- (void)searchPresenterWillPresentSearch:(id)a3 animated:(BOOL)a4;
- (void)setCurrentHomeScreenIconStyleConfiguration:(id)a3;
- (void)setCurrentHomeScreenIconStyleConfiguration:(id)a3 wallpaperDimmed:(BOOL)a4;
- (void)setHomeScreenAlpha:(double)a3 behaviorMode:(int64_t)a4 completion:(id)a5;
- (void)setHomeScreenBackdropBlurMaterialRecipeName:(id)a3 behaviorMode:(int64_t)a4 completion:(id)a5;
- (void)setHomeScreenDimmingAlpha:(double)a3 settings:(id)a4 behaviorMode:(int64_t)a5 completion:(id)a6;
- (void)setHomeScreenScale:(double)a3 behaviorMode:(int64_t)a4 completion:(id)a5;
- (void)setLegibilitySettings:(id)a3;
- (void)setModel:(id)a3;
- (void)setTemporaryIntent:(id)a3 forIconWithIdentifier:(id)a4 widgetUniqueIdentifier:(id)a5;
- (void)setWallpaperAnimationDisabled:(BOOL)a3 forReason:(id)a4;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)spotlightPresentableViewControllerShouldDismiss:(id)a3;
- (void)tearDownIconListAndBar;
- (void)todayViewControllerDidAppear:(id)a3;
- (void)todayViewControllerDidDisappear:(id)a3;
- (void)todayViewControllerWillPresentSpotlight:(id)a3;
- (void)todayViewDidAppear:(id)a3;
- (void)todayViewWantsToEndEditing:(id)a3;
- (void)updateDefaultFirstPageWidgetDescriptors:(id)a3 withSizeClass:(id)a4 andGridCellInfoOptions:(unint64_t)a5;
- (void)updateHomeScreenTraitOverridesForTraitOverrides:(id)a3;
- (void)updateHomeScreenTraitOverridesForViewController:(id)a3;
- (void)updateHomeScreenTraitOverridesForWindowScene:(id)a3;
- (void)updateNumberOfRowsWithDuration:(double)a3;
- (void)updatePresentationProgress:(double)a3 withOffset:(double)a4 velocity:(double)a5 presentationState:(int64_t)a6;
- (void)windowSceneDidDisconnect:(id)a3;
- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4;
@end

@implementation SBHomeScreenController

- (BOOL)areAnyIconViewContextMenusShowing
{
  v2 = [MEMORY[0x277D66210] sharedInstance];
  v3 = [v2 areAnyIconViewContextMenusShowing];

  return v3;
}

- (void)_updateVisibleIconsAfterOcclusionChange
{
  v4 = [(SBHomeScreenController *)self iconOcclusionReasons];
  v5 = (v4 & 0x12) != 0;
  if ((v4 & 0x12) != 0)
  {
    v6 = 2;
  }

  else
  {
    v6 = v4 != 0;
  }

  v11 = [(SBHomeScreenController *)self iconManager];
  [v11 setContentVisibility:v6];
  v7 = [(SBHomeScreenController *)self homeScreenOverlayController];
  [v7 setContentVisibility:v6];
  v8 = [(SBHomeScreenController *)self homeScreenViewController];
  v9 = [v8 iconEffectView];
  [v9 setContentVisibility:v6];

  v10 = NSStringFromSelector(a2);
  [(SBHomeScreenController *)self setWallpaperAnimationDisabled:v5 forReason:v10];
}

- (id)_libraryViewControllers
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(SBHomeScreenController *)self isModalAppLibrarySupported])
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = [SBApp windowSceneManager];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [v4 connectedWindowScenes];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v13 + 1) + 8 * i) modalLibraryController];
          v11 = [v10 libraryViewController];

          if (v11)
          {
            [v3 addObject:v11];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v7);
    }
  }

  else if (self->_overlayLibraryViewController)
  {
    overlayLibraryViewController = self->_overlayLibraryViewController;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&overlayLibraryViewController count:1];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (BOOL)isAppLibrarySupported
{
  v2 = [(SBHomeScreenController *)self _iconController];
  v3 = [v2 isAppLibrarySupported];

  return v3;
}

- (SBIconController)_iconController
{
  WeakRetained = objc_loadWeakRetained(&self->_iconController);

  return WeakRetained;
}

- (BOOL)isTodayOverlaySpotlightVisible
{
  v3 = objc_opt_class();
  v4 = [(SBHomeScreenController *)self todayViewController];
  v5 = SBSafeCast(v3, v4);

  LOBYTE(v4) = [v5 isSpotlightVisible];
  return v4;
}

- (BOOL)isModalAppLibrarySupported
{
  v2 = [(SBHomeScreenController *)self isAppLibrarySupported];
  if (v2)
  {

    LOBYTE(v2) = +[SBFloatingDockController isFloatingDockSupported];
  }

  return v2;
}

- (SBSHomeScreenIconStyleConfiguration)currentHomeScreenIconStyleConfiguration
{
  v2 = [(SBHomeScreenController *)self currentIconImageStyleConfiguration];
  v3 = [v2 sb_homeScreenIconStyleConfiguration];

  return v3;
}

- (SBHIconImageStyleConfiguration)currentIconImageStyleConfiguration
{
  v2 = [(SBWallpaperIconStyleCoordinator *)self->_iconStyleCoordinator currentStyleConfiguration];
  v3 = [MEMORY[0x277D661D8] styleConfigurationWithHomeScreenConfiguration:v2];

  return v3;
}

- (BOOL)isIconListViewTornDown
{
  v2 = [(SBHomeScreenController *)self homeScreenScalingView];
  v3 = [v2 isHidden];

  return v3;
}

- (void)_updateRequireWallpaperRasterization
{
  v3 = [(SBHomeScreenController *)self isBackdropVisible];
  wallpaperRasterizationAssertion = self->_wallpaperRasterizationAssertion;
  if (v3)
  {
    if (wallpaperRasterizationAssertion)
    {
      return;
    }

    v8 = +[SBWallpaperController sharedInstance];
    v5 = [v8 requireWallpaperRasterizationWithReason:@"SBUIControllerWallpaperRasterizationReason"];
    v6 = self->_wallpaperRasterizationAssertion;
    self->_wallpaperRasterizationAssertion = v5;

    v7 = v8;
  }

  else
  {
    if (!wallpaperRasterizationAssertion)
    {
      return;
    }

    [(BSInvalidatable *)wallpaperRasterizationAssertion invalidate];
    v7 = self->_wallpaperRasterizationAssertion;
    self->_wallpaperRasterizationAssertion = 0;
  }
}

- (BOOL)isBackdropVisible
{
  if ([(SBHomeScreenBackdropViewBase *)self->_homeScreenBackdropView requiresBackdropView])
  {
    return 1;
  }

  homeScreenBackdropView = self->_homeScreenBackdropView;

  return [(SBHomeScreenBackdropViewBase *)homeScreenBackdropView requiresLiveBackdropView];
}

double __92__SBHomeScreenController_AppearanceControllingInternal___setupHomeScreenContentBackdropView__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 sbf_animatedBlurRadiusGraphicsQuality];

  result = 0.5;
  if (v3 <= 40)
  {
    result = 0.3;
    if (!*(a1 + 32))
    {
      return 0.5;
    }
  }

  return result;
}

- (void)cancelInProcessAnimations
{
  v3 = [(SBHomeScreenController *)self window];
  [v3 _removeAllRetargetableAnimations:1];

  [(SBWindow *)self->_homeScreenDimmingWindow _removeAllRetargetableAnimations:1];
  homeScreenBackdropView = self->_homeScreenBackdropView;

  [(SBHomeScreenBackdropViewBase *)homeScreenBackdropView cancelInProcessAnimations];
}

- (void)_removeReachabilityEffectViewIfNecessary
{
  if ([(SBHomeScreenBackdropViewBase *)self->_homeScreenBackdropView requiresBackdropView])
  {
    v3 = 0;
  }

  else
  {
    v3 = ![(SBHomeScreenBackdropViewBase *)self->_homeScreenBackdropView requiresLiveBackdropView];
  }

  v4 = [(SBHomeScreenBackdropViewBase *)self->_homeScreenBackdropView isOpaque];
  if ((v3 & 1) != 0 || v4)
  {
    reachabilityWallpaperEffectView = self->_reachabilityWallpaperEffectView;
    if (reachabilityWallpaperEffectView)
    {
      [(SBWallpaperEffectView *)reachabilityWallpaperEffectView removeFromSuperview];
      v6 = self->_reachabilityWallpaperEffectView;
      self->_reachabilityWallpaperEffectView = 0;
    }
  }
}

- (void)tearDownIconListAndBar
{
  if (![(NSMutableSet *)self->_contentRequiringReasons count]|| [(SBHomeScreenBackdropViewBase *)self->_homeScreenBackdropView isOpaque])
  {
    v3 = SBLogUIController();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Tearing down home screen", v8, 2u);
    }

    v4 = [(SBHomeScreenController *)self homeScreenViewController];
    [v4 setIconContentHidden:1];
    v5 = [(SBHomeScreenController *)self windowScene];
    v6 = [v5 isMainDisplayWindowScene];

    if (v6)
    {
      v7 = +[SBWallpaperController sharedInstance];
      [v7 deactivateOrientationSource:2];
    }
  }
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (double)minimumHomeScreenScale
{
  v2 = [(SBHomeScreenController *)self windowScene];
  v3 = [v2 switcherController];

  if (v3)
  {
    [v3 minimumHomeScreenScale];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  return v5;
}

- (SBRootFolderController)_rootFolderController
{
  v2 = [(SBHomeScreenController *)self iconManager];
  v3 = [v2 rootFolderController];

  return v3;
}

void __53__SBHomeScreenController_Testing___runFolderOpenTest__block_invoke_2(uint64_t a1)
{
  [*MEMORY[0x277D76620] finishedSubTest:@"commitDelay" forTest:@"FolderOpen"];
  v2 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SBHomeScreenController_Testing___runFolderOpenTest__block_invoke_3;
  block[3] = &unk_2783A8C18;
  block[4] = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
}

- (id)_homeScreenOverlayControllerIfNeeded
{
  if ([(SBHomeScreenController *)self _isCoplanarHomeScreenEnabled])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(SBHomeScreenController *)self _createHomeScreenOverlayControllerIfNeeded];
  }

  return v3;
}

- (BOOL)_isCoplanarHomeScreenEnabled
{
  if (__sb__runningInSpringBoard())
  {
    return !SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1;
  }

  else
  {
    v3 = [MEMORY[0x277D75418] currentDevice];
    v2 = [v3 userInterfaceIdiom] == 0;
  }

  return v2;
}

- (id)policyAggregator
{
  override_policyAggregator = self->_override_policyAggregator;
  if (override_policyAggregator)
  {
    v3 = override_policyAggregator;
  }

  else
  {
    v4 = [(SBHomeScreenController *)self windowScene];
    v5 = [v4 sceneManager];
    v3 = [v5 policyAggregator];
  }

  return v3;
}

uint64_t __53__SBHomeScreenController_Testing___runFolderOpenTest__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D76620];
  [*MEMORY[0x277D76620] startedTest:@"FolderOpen"];
  [*v2 startedSubTest:@"delay" forTest:@"FolderOpen"];
  [*v2 startedSubTest:@"openAnimation" forTest:@"FolderOpen"];
  [*(a1 + 32) launchFromLocation:*MEMORY[0x277D666D0] context:0];
  [*v2 finishedSubTest:@"delay" forTest:@"FolderOpen"];
  [*v2 startedSubTest:@"commitDelay" forTest:@"FolderOpen"];
  v3 = *v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__SBHomeScreenController_Testing___runFolderOpenTest__block_invoke_2;
  v5[3] = &unk_2783A8C18;
  v5[4] = *(a1 + 40);
  return [v3 _performBlockAfterCATransactionCommits:v5];
}

- (void)_closeOpenFolderIfNecessary
{
  v3 = [(SBHomeScreenController *)self iconManager];
  v2 = [v3 iconToReveal];
  if (v2 && [v3 hasOpenFolder])
  {
    [v3 popToCurrentRootIconList];
  }
}

- (void)_willRevealOrHideContentView
{
  v2 = [(SBHomeScreenController *)self iconManager];
  [v2 cancelAllFolderScrolling];
}

- (SBFolderController)_openFolderController
{
  v2 = [(SBHomeScreenController *)self iconManager];
  v3 = [v2 openedFolderController];

  return v3;
}

- (SBFolderController)_currentFolderController
{
  v3 = [(SBHomeScreenController *)self _openFolderController];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(SBHomeScreenController *)self _rootFolderController];
  }

  v6 = v5;

  return v6;
}

- (id)_createTestFolderWithOverrideIconList:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBHomeScreenController *)self iconManager];
  v6 = [v5 rootFolder];
  v7 = [v6 allIcons];

  v8 = [MEMORY[0x277CBEB18] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v36 + 1) + 8 * i);
        if ((!v4 || [v4 containsObject:*(*(&v36 + 1) + 8 * i)]) && objc_msgSend(v14, "isApplicationIcon"))
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v15 = [(SBHomeScreenController *)self iconManager];
    v16 = [v15 iconModel];

    v31 = self;
    v17 = [(SBHomeScreenController *)self iconManager];
    v18 = [v17 rootFolder];

    v30 = v16;
    v19 = [v16 makeFolderWithDisplayName:@"TEST FOLDER"];
    v20 = [objc_alloc(MEMORY[0x277D660E8]) initWithFolder:v19];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v21 = v8;
    v22 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v33;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v33 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [v18 removeIcon:*(*(&v32 + 1) + 8 * j) options:0];
        }

        v23 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v23);
    }

    v26 = [v19 addIcons:v21];
    v27 = [v18 addIcon:v20];

    self = v31;
  }

  else
  {
    v19 = 0;
  }

  v28 = [(SBHomeScreenController *)self iconManager];
  [v28 layoutIconListsWithAnimationType:-1 forceRelayout:1];

  return v19;
}

- (BOOL)_ppt_pushHomeScreenStateWithError:(id *)a3
{
  v4 = [(SBHomeScreenController *)self _ppt_prepareTransientIconModelStoreWithError:a3];
  if (v4)
  {
    v5 = __ppt_homeScreenStateStack;
    if (!__ppt_homeScreenStateStack)
    {
      v6 = objc_opt_new();
      v7 = __ppt_homeScreenStateStack;
      __ppt_homeScreenStateStack = v6;

      v5 = __ppt_homeScreenStateStack;
    }

    [v5 addObject:v4];
    v8 = [(SBHomeScreenController *)self iconManager];
    v9 = [v8 iconModel];
    [v9 setStore:v4];

    v10 = [(SBHomeScreenController *)self iconManager];
    [v10 relayout];
  }

  return v4 != 0;
}

- (void)_ppt_popHomeScreenState
{
  if (__ppt_homeScreenStateStack)
  {
    v3 = [(SBHomeScreenController *)self iconManager];
    v4 = [v3 iconModel];
    v19 = [v4 store];

    [__ppt_homeScreenStateStack removeLastObject];
    v5 = [__ppt_homeScreenStateStack lastObject];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = +[SBDefaultIconModelStore sharedInstance];
    }

    v8 = v7;

    if (![__ppt_homeScreenStateStack count])
    {
      v9 = __ppt_homeScreenStateStack;
      __ppt_homeScreenStateStack = 0;
    }

    v10 = [(SBHomeScreenController *)self iconManager];
    v11 = [v10 iconModel];
    [v11 setStore:v8];

    v12 = [(SBHomeScreenController *)self iconManager];
    [v12 relayout];

    v13 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      v14 = v19;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (v15)
    {
      v16 = [v15 currentIconStateURL];
      v17 = [v16 URLByDeletingLastPathComponent];

      v18 = [MEMORY[0x277CCAA00] defaultManager];
      [v18 removeItemAtURL:v17 error:0];
    }
  }
}

- (id)_ppt_prepareTransientIconModelStoreWithError:(id *)a3
{
  v4 = [(SBHomeScreenController *)self iconManager];
  v5 = [v4 iconModel];

  [v5 saveIconStateIfNeeded];
  v6 = [v5 store];
  if (!v6)
  {
    v11 = 0;
    goto LABEL_19;
  }

  v7 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = 0;
  if (isKindOfClass)
  {
    v12 = [v6 currentIconStateURL];
    v13 = [v6 desiredIconStateURL];
    v14 = [MEMORY[0x277CCAD78] UUID];
    v15 = [v14 UUIDString];

    v16 = MEMORY[0x277CBEBC0];
    v17 = NSTemporaryDirectory();
    v18 = [v16 fileURLWithPath:v17];
    v37 = v15;
    v19 = [v18 URLByAppendingPathComponent:v15];

    v20 = v12;
    v21 = [v12 lastPathComponent];
    v22 = [v19 URLByAppendingPathComponent:v21];

    v39 = v13;
    v23 = [v13 lastPathComponent];
    v38 = [v19 URLByAppendingPathComponent:v23];

    v24 = [MEMORY[0x277CCAA00] defaultManager];
    v42 = 0;
    [v24 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:&v42];
    v25 = v42;
    v26 = v25;
    v36 = v20;
    if (v25)
    {
      if (a3)
      {
        v27 = v25;
        v28 = 0;
        v29 = 0;
        v11 = 0;
        *a3 = v26;
LABEL_16:
        v32 = v38;
LABEL_17:

        goto LABEL_18;
      }

      v28 = 0;
    }

    else
    {
      v41 = 0;
      [v24 copyItemAtURL:v20 toURL:v22 error:&v41];
      v30 = v41;
      if (!v30)
      {
        v34 = [v39 path];
        v35 = [v24 fileExistsAtPath:v34];

        if (!v35 || (v40 = 0, [v24 copyItemAtURL:v39 toURL:v38 error:&v40], (v29 = v40) == 0))
        {
          v32 = v38;
          v11 = [objc_alloc(MEMORY[0x277D663E0]) initWithIconStateURL:v22 desiredIconStateURL:v38];
          v28 = 0;
          v29 = 0;
          goto LABEL_17;
        }

        if (a3)
        {
          v29 = v29;
          v28 = 0;
          v11 = 0;
          *a3 = v29;
          goto LABEL_16;
        }

        v28 = 0;
        goto LABEL_15;
      }

      v28 = v30;
      if (a3)
      {
        v31 = v30;
        v29 = 0;
        v11 = 0;
        *a3 = v28;
        goto LABEL_16;
      }
    }

    v29 = 0;
LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

LABEL_18:

LABEL_19:

  return v11;
}

- (void)runWidgetDiscoverabilityTest
{
  v2 = [(SBHomeScreenController *)self _iconController];
  [v2 runWidgetDiscoverabilityTest];
}

- (void)_runTest:(id)a3 afterMovingIconsIntoFolder:(id)a4 withFolderOpen:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  if ([(SBHomeScreenController *)self _ppt_pushHomeScreenStateWithError:0])
  {
    v11 = [v10 mutableCopy];
    v12 = [(SBHomeScreenController *)self _createTestFolderWithOverrideIconList:v11];

    if (v12)
    {
      v13 = [v12 icon];
      if (v5)
      {
        v14 = [(SBHomeScreenController *)self iconManager];
        [v14 scrollToIconListContainingIcon:v13 animate:0];
      }

      v15 = dispatch_time(0, 1000000000);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __86__SBHomeScreenController_Testing___runTest_afterMovingIconsIntoFolder_withFolderOpen___block_invoke;
      v18[3] = &unk_2783AAC68;
      v22 = v5;
      v19 = v13;
      v20 = self;
      v21 = v9;
      v16 = v13;
      dispatch_after(v15, MEMORY[0x277D85CD0], v18);
    }

    else
    {
      [(SBHomeScreenController *)self _failCurrentTestWithMessage:@"Unable to create test folder"];
    }
  }

  else
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"SBHomeScreenController+Testing.m" lineNumber:210 description:@"Unable to swap out icon model store; cannot run test."];
  }
}

void __86__SBHomeScreenController_Testing___runTest_afterMovingIconsIntoFolder_withFolderOpen___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) launchFromLocation:*MEMORY[0x277D666D0] context:0];
  }

  v2 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__SBHomeScreenController_Testing___runTest_afterMovingIconsIntoFolder_withFolderOpen___block_invoke_2;
  block[3] = &unk_2783B1770;
  v6 = *(a1 + 56);
  v3 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v5 = v3;
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
}

void __86__SBHomeScreenController_Testing___runTest_afterMovingIconsIntoFolder_withFolderOpen___block_invoke_2(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __86__SBHomeScreenController_Testing___runTest_afterMovingIconsIntoFolder_withFolderOpen___block_invoke_3;
  v4[3] = &unk_2783A9F58;
  v5 = *(a1 + 48);
  v4[4] = *(a1 + 32);
  v2 = MEMORY[0x223D6F7F0](v4);
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v2);
  }

  else
  {
    v2[2](v2);
  }
}

void __86__SBHomeScreenController_Testing___runTest_afterMovingIconsIntoFolder_withFolderOpen___block_invoke_3(uint64_t a1)
{
  v2 = dispatch_time(0, 2000000000);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __86__SBHomeScreenController_Testing___runTest_afterMovingIconsIntoFolder_withFolderOpen___block_invoke_4;
  v3[3] = &unk_2783A9F58;
  v4 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x277D85CD0], v3);
}

void __86__SBHomeScreenController_Testing___runTest_afterMovingIconsIntoFolder_withFolderOpen___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = [v3 iconManager];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __86__SBHomeScreenController_Testing___runTest_afterMovingIconsIntoFolder_withFolderOpen___block_invoke_5;
    v5[3] = &unk_2783A9398;
    v5[4] = *(a1 + 32);
    [v4 popExpandedIconAnimated:1 completionHandler:v5];
  }

  else
  {

    [v3 _ppt_popHomeScreenState];
  }
}

- (void)_runFolderOpenTest
{
  if ([(SBHomeScreenController *)self _ppt_pushHomeScreenStateWithError:0])
  {
    v4 = [(SBHomeScreenController *)self _createTestFolder];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 icon];
      v7 = [(SBHomeScreenController *)self iconManager];
      [v7 scrollToIconListContainingIcon:v6 animate:0];

      v8 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__SBHomeScreenController_Testing___runFolderOpenTest__block_invoke;
      block[3] = &unk_2783A92D8;
      v12 = v6;
      v13 = self;
      v9 = v6;
      dispatch_after(v8, MEMORY[0x277D85CD0], block);
    }

    else
    {
      [(SBHomeScreenController *)self _failCurrentTestWithMessage:@"Unable to create test folder"];
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"SBHomeScreenController+Testing.m" lineNumber:254 description:@"Unable to swap out icon model store; cannot run test."];
  }
}

void __53__SBHomeScreenController_Testing___runFolderOpenTest__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) iconManager];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__SBHomeScreenController_Testing___runFolderOpenTest__block_invoke_4;
  v3[3] = &unk_2783A9398;
  v3[4] = *(a1 + 32);
  [v2 popExpandedIconAnimated:1 completionHandler:v3];
}

- (void)_runFolderCloseTest
{
  if ([(SBHomeScreenController *)self _ppt_pushHomeScreenStateWithError:0])
  {
    v4 = [(SBHomeScreenController *)self _createTestFolder];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 icon];
      v7 = [(SBHomeScreenController *)self iconManager];
      [v7 scrollToIconListContainingIcon:v6 animate:0];

      v8 = [(SBHomeScreenController *)self iconManager];
      v9 = *MEMORY[0x277D666D0];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __54__SBHomeScreenController_Testing___runFolderCloseTest__block_invoke;
      v11[3] = &unk_2783A9398;
      v11[4] = self;
      [v8 openFolderIcon:v6 location:v9 animated:0 withCompletion:v11];
    }

    else
    {
      [(SBHomeScreenController *)self _failCurrentTestWithMessage:@"Unable to create test folder"];
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"SBHomeScreenController+Testing.m" lineNumber:290 description:@"Unable to swap out icon model store; cannot run test."];
  }
}

void __54__SBHomeScreenController_Testing___runFolderCloseTest__block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SBHomeScreenController_Testing___runFolderCloseTest__block_invoke_2;
  block[3] = &unk_2783A8C18;
  block[4] = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
}

void __54__SBHomeScreenController_Testing___runFolderCloseTest__block_invoke_2(uint64_t a1)
{
  [*MEMORY[0x277D76620] startedTest:@"FolderClose"];
  [MEMORY[0x277CD9FF0] setFrameStallSkipRequest:1];
  v2 = [*(a1 + 32) iconManager];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__SBHomeScreenController_Testing___runFolderCloseTest__block_invoke_3;
  v3[3] = &unk_2783A9398;
  v3[4] = *(a1 + 32);
  [v2 popExpandedIconAnimated:1 completionHandler:v3];
}

- (void)_runFolderTestWithName:(id)a3 actions:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(SBHomeScreenController *)self _ppt_pushHomeScreenStateWithError:0])
  {
    v9 = [(SBHomeScreenController *)self _createTestFolder];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 icon];
      v12 = [(SBHomeScreenController *)self iconManager];
      [v12 scrollToIconListContainingIcon:v11 animate:0];

      [v11 launchFromLocation:*MEMORY[0x277D666D0] context:0];
      v13 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__SBHomeScreenController_Testing___runFolderTestWithName_actions___block_invoke;
      block[3] = &unk_2783B1320;
      v16 = v7;
      v17 = self;
      v18 = v8;
      dispatch_after(v13, MEMORY[0x277D85CD0], block);
    }

    else
    {
      [*MEMORY[0x277D76620] failedTest:v7 withFailure:@"Unable to create test folder"];
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"SBHomeScreenController+Testing.m" lineNumber:316 description:{@"Unable to swap out icon model store; cannot run test %@", v7}];
  }
}

uint64_t __66__SBHomeScreenController_Testing___runFolderTestWithName_actions___block_invoke(void *a1)
{
  [*MEMORY[0x277D76620] startedTest:a1[4]];
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __66__SBHomeScreenController_Testing___runFolderTestWithName_actions___block_invoke_2;
  v7 = &unk_2783A8C18;
  v2 = a1[6];
  v8 = a1[5];
  return (*(v2 + 16))();
}

- (void)_runScrollFolderTest:(int64_t)a3
{
  if ([(SBHomeScreenController *)self _ppt_pushHomeScreenStateWithError:0])
  {
    v6 = [(SBHomeScreenController *)self _createTestFolder];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 icon];
      v9 = [(SBHomeScreenController *)self iconManager];
      [v9 scrollToIconListContainingIcon:v8 animate:0];

      [v8 launchFromLocation:*MEMORY[0x277D666D0] context:0];
      v10 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__SBHomeScreenController_Testing___runScrollFolderTest___block_invoke;
      block[3] = &unk_2783A8BC8;
      block[4] = self;
      block[5] = a3;
      dispatch_after(v10, MEMORY[0x277D85CD0], block);
    }
  }

  else
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"SBHomeScreenController+Testing.m" lineNumber:342 description:@"Unable to swap out icon model store; cannot run test."];
  }
}

void __56__SBHomeScreenController_Testing___runScrollFolderTest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _openFolderController];
  [v2 layoutIconListsWithAnimationType:0 forceRelayout:1];
  [v2 setCurrentPageIndex:objc_msgSend(v2 animated:{"defaultPageIndex"), 0}];
  [*MEMORY[0x277D76620] startedTest:@"ScrollFolder"];
  v3 = [v2 minimumPageIndex];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__SBHomeScreenController_Testing___runScrollFolderTest___block_invoke_2;
  v5[3] = &unk_2783A8C18;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  [v2 setCurrentPageIndex:v4 + v3 animated:1 completion:v5];
}

void __56__SBHomeScreenController_Testing___runScrollFolderTest___block_invoke_2(uint64_t a1)
{
  [*MEMORY[0x277D76620] finishedTest:@"ScrollFolder"];
  v2 = [*(a1 + 32) iconManager];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__SBHomeScreenController_Testing___runScrollFolderTest___block_invoke_3;
  v3[3] = &unk_2783A9398;
  v3[4] = *(a1 + 32);
  [v2 popExpandedIconAnimated:1 completionHandler:v3];
}

- (void)_runAppIconForceTouchTest:(id)a3 withOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:@"testApplication"];
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__85;
  v50 = __Block_byref_object_dispose__85;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__85;
  v44 = __Block_byref_object_dispose__85;
  v45 = *MEMORY[0x277D666D0];
  if (v8)
  {
    v9 = [(SBHomeScreenController *)self iconManager];
    v10 = [v9 rootFolder];

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __73__SBHomeScreenController_Testing___runAppIconForceTouchTest_withOptions___block_invoke;
    v35[3] = &unk_2783BA9F8;
    v36 = v8;
    v38 = &v46;
    v39 = &v40;
    v11 = v10;
    v37 = v11;
    [v11 enumerateAllIconsUsingBlock:v35];
  }

  if (v47[5] && ((-[SBHomeScreenController iconManager](self, "iconManager"), v12 = objc_claimAutoreleasedReturnValue(), [v12 iconViewForIcon:v47[5] location:v41[5]], v13 = objc_claimAutoreleasedReturnValue(), v12, v13) || (-[SBHomeScreenController iconManager](self, "iconManager"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "iconViewForIcon:location:", v47[5], *MEMORY[0x277D66688]), v13 = objc_claimAutoreleasedReturnValue(), v14, v13)))
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __73__SBHomeScreenController_Testing___runAppIconForceTouchTest_withOptions___block_invoke_2;
    v32[3] = &unk_2783A92D8;
    v15 = v6;
    v33 = v15;
    v16 = v13;
    v34 = v16;
    v17 = MEMORY[0x223D6F7F0](v32);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __73__SBHomeScreenController_Testing___runAppIconForceTouchTest_withOptions___block_invoke_8;
    v29[3] = &unk_2783A92D8;
    v18 = v15;
    v30 = v18;
    v19 = v16;
    v31 = v19;
    v20 = MEMORY[0x223D6F7F0](v29);
    v21 = [(SBHomeScreenController *)self iconManager];
    [v21 scrollToIconListContainingIcon:v47[5] animate:0];

    v22 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__SBHomeScreenController_Testing___runAppIconForceTouchTest_withOptions___block_invoke_14;
    block[3] = &unk_2783AAE90;
    v26 = v18;
    v27 = v17;
    v28 = v20;
    v23 = v20;
    v24 = v17;
    dispatch_after(v22, MEMORY[0x277D85CD0], block);
  }

  else
  {
    [*MEMORY[0x277D76620] failedTest:v6];
  }

  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v46, 8);
}

void __73__SBHomeScreenController_Testing___runAppIconForceTouchTest_withOptions___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v13 = a2;
  v8 = a3;
  if ([v13 isLeafIcon])
  {
    v9 = [v13 applicationBundleID];
    v10 = [v9 isEqualToString:*(a1 + 32)];

    if (v10)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
      v11 = [*(a1 + 40) isIconAtIndexPathInDock:v8];
      v12 = MEMORY[0x277D66688];
      if (!v11)
      {
        v12 = MEMORY[0x277D666D0];
      }

      objc_storeStrong((*(*(a1 + 56) + 8) + 40), *v12);
      *a4 = 1;
    }
  }
}

void __73__SBHomeScreenController_Testing___runAppIconForceTouchTest_withOptions___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D76620];
  [*MEMORY[0x277D76620] startedTest:*(a1 + 32)];
  [*v2 startedSubTest:@"Delay" forTest:*(a1 + 32)];
  v3 = *v2;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__SBHomeScreenController_Testing___runAppIconForceTouchTest_withOptions___block_invoke_3;
  v14[3] = &unk_2783A8C18;
  v15 = *(a1 + 32);
  [v3 installCACommitCompletionBlock:v14];
  v4 = objc_opt_new();
  v5 = MEMORY[0x277D44358];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__SBHomeScreenController_Testing___runAppIconForceTouchTest_withOptions___block_invoke_4;
  v12[3] = &unk_2783AA958;
  v13 = *(a1 + 40);
  v6 = [v5 eventStreamWithEventActions:v12];
  v7 = MEMORY[0x277D44348];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__SBHomeScreenController_Testing___runAppIconForceTouchTest_withOptions___block_invoke_5;
  v9[3] = &unk_2783A92D8;
  v10 = *(a1 + 32);
  v11 = v4;
  v8 = v4;
  [v7 playEventStream:v6 options:v8 completion:v9];
}

uint64_t __73__SBHomeScreenController_Testing___runAppIconForceTouchTest_withOptions___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x277D76620];
  [*MEMORY[0x277D76620] finishedSubTest:@"Delay" forTest:*(a1 + 32)];
  v3 = *v2;
  v4 = *(a1 + 32);

  return [v3 startedSubTest:@"Animation" forTest:v4];
}

void __73__SBHomeScreenController_Testing___runAppIconForceTouchTest_withOptions___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v24 = a2;
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [*(a1 + 32) window];
  v13 = [v12 screen];
  v14 = [v13 fixedCoordinateSpace];
  [v3 convertRect:v14 toCoordinateSpace:{v5, v7, v9, v11}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v26.origin.x = v16;
  v26.origin.y = v18;
  v26.size.width = v20;
  v26.size.height = v22;
  MidX = CGRectGetMidX(v26);
  v27.origin.x = v16;
  v27.origin.y = v18;
  v27.size.width = v20;
  v27.size.height = v22;
  [v24 touchDown:{MidX, CGRectGetMidY(v27)}];
  [v24 advanceTime:3.0];
  [v24 liftUpAtAllActivePoints];
}

void __73__SBHomeScreenController_Testing___runAppIconForceTouchTest_withOptions___block_invoke_5(uint64_t a1)
{
  v2 = *MEMORY[0x277D76620];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__SBHomeScreenController_Testing___runAppIconForceTouchTest_withOptions___block_invoke_6;
  v6[3] = &unk_2783A8C18;
  v7 = *(a1 + 32);
  [v2 installCACommitCompletionBlock:v6];
  v3 = dispatch_time(0, 1000000000);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __73__SBHomeScreenController_Testing___runAppIconForceTouchTest_withOptions___block_invoke_7;
  v4[3] = &unk_2783A8C18;
  v5 = *(a1 + 40);
  dispatch_after(v3, MEMORY[0x277D85CD0], v4);
}

uint64_t __73__SBHomeScreenController_Testing___runAppIconForceTouchTest_withOptions___block_invoke_6(uint64_t a1)
{
  v2 = MEMORY[0x277D76620];
  [*MEMORY[0x277D76620] finishedSubTest:@"Animation" forTest:*(a1 + 32)];
  v3 = *v2;
  v4 = *(a1 + 32);

  return [v3 finishedTest:v4];
}

void __73__SBHomeScreenController_Testing___runAppIconForceTouchTest_withOptions___block_invoke_8(uint64_t a1)
{
  v2 = MEMORY[0x277D76620];
  [*MEMORY[0x277D76620] startedTest:*(a1 + 32)];
  [*v2 startedSubTest:@"Delay" forTest:*(a1 + 32)];
  v3 = *v2;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__SBHomeScreenController_Testing___runAppIconForceTouchTest_withOptions___block_invoke_9;
  v14[3] = &unk_2783A8C18;
  v15 = *(a1 + 32);
  [v3 installCACommitCompletionBlock:v14];
  v4 = objc_opt_new();
  v5 = MEMORY[0x277D44358];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__SBHomeScreenController_Testing___runAppIconForceTouchTest_withOptions___block_invoke_10;
  v12[3] = &unk_2783AA958;
  v13 = *(a1 + 40);
  v6 = [v5 eventStreamWithEventActions:v12];
  v7 = MEMORY[0x277D44348];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__SBHomeScreenController_Testing___runAppIconForceTouchTest_withOptions___block_invoke_11;
  v9[3] = &unk_2783A92D8;
  v10 = v4;
  v11 = *(a1 + 32);
  v8 = v4;
  [v7 playEventStream:v6 options:v8 completion:v9];
}

uint64_t __73__SBHomeScreenController_Testing___runAppIconForceTouchTest_withOptions___block_invoke_9(uint64_t a1)
{
  v2 = MEMORY[0x277D76620];
  [*MEMORY[0x277D76620] finishedSubTest:@"Delay" forTest:*(a1 + 32)];
  v3 = *v2;
  v4 = *(a1 + 32);

  return [v3 startedSubTest:@"Animation" forTest:v4];
}

void __73__SBHomeScreenController_Testing___runAppIconForceTouchTest_withOptions___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v24 = a2;
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [*(a1 + 32) window];
  v13 = [v12 screen];
  v14 = [v13 fixedCoordinateSpace];
  [v3 convertRect:v14 toCoordinateSpace:{v5, v7, v9, v11}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v26.origin.x = v16;
  v26.origin.y = v18;
  v26.size.width = v20;
  v26.size.height = v22;
  MidX = CGRectGetMidX(v26);
  v27.origin.x = v16;
  v27.origin.y = v18;
  v27.size.width = v20;
  v27.size.height = v22;
  [v24 touchDown:{MidX, CGRectGetMidY(v27)}];
  [v24 advanceTime:3.0];
  [v24 liftUpAtAllActivePoints];
}

void __73__SBHomeScreenController_Testing___runAppIconForceTouchTest_withOptions___block_invoke_11(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __73__SBHomeScreenController_Testing___runAppIconForceTouchTest_withOptions___block_invoke_12;
  v3[3] = &unk_2783A92D8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  dispatch_after(v2, MEMORY[0x277D85CD0], v3);
}

void __73__SBHomeScreenController_Testing___runAppIconForceTouchTest_withOptions___block_invoke_12(uint64_t a1)
{
  v1 = MEMORY[0x277D44348];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __73__SBHomeScreenController_Testing___runAppIconForceTouchTest_withOptions___block_invoke_13;
  v3[3] = &unk_2783A8C18;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v1 playCommandString:@"b h" options:v2 completion:v3];
}

uint64_t __73__SBHomeScreenController_Testing___runAppIconForceTouchTest_withOptions___block_invoke_13(uint64_t a1)
{
  v2 = MEMORY[0x277D76620];
  [*MEMORY[0x277D76620] finishedSubTest:@"Animation" forTest:*(a1 + 32)];
  v3 = *v2;
  v4 = *(a1 + 32);

  return [v3 finishedTest:v4];
}

uint64_t __73__SBHomeScreenController_Testing___runAppIconForceTouchTest_withOptions___block_invoke_14(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:@"AppIconForceTouchPresent"] & 1) != 0 || (objc_msgSend(*(a1 + 32), "isEqualToString:", @"AppIconForceTouchPresentInDock"))
  {
    v2 = 40;
  }

  else
  {
    if (([*(a1 + 32) isEqualToString:@"AppIconForceTouchDismiss"] & 1) == 0)
    {
      result = [*(a1 + 32) isEqualToString:@"AppIconForceTouchDismissInDock"];
      if (!result)
      {
        return result;
      }
    }

    v2 = 48;
  }

  v3 = *(*(a1 + v2) + 16);

  return v3();
}

- (void)_failCurrentTestWithMessage:(id)a3
{
  v3 = *MEMORY[0x277D76620];
  v4 = a3;
  v6 = +[SBApplicationTestingManager sharedInstance];
  v5 = [v6 currentTestName];
  [v3 failedTest:v5 withFailure:v4];
}

- (void)setHomeScreenAlpha:(double)a3 behaviorMode:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(SBHomeScreenController *)self homeScreenScalingView];
  if ([(NSMutableSet *)self->_contentRequiringReasons count])
  {
    if (a3 >= 0.011)
    {
      v10 = a3;
    }

    else
    {
      v10 = 0.011;
    }

    v11 = MEMORY[0x277D75D18];
    v12 = [(SBAppSwitcherSettings *)self->_switcherSettings animationSettings];
    v13 = [v12 homeScreenOpacitySettings];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __92__SBHomeScreenController_AppearanceControlling__setHomeScreenAlpha_behaviorMode_completion___block_invoke;
    v19[3] = &unk_2783A8BC8;
    v20 = v9;
    v21 = v10;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __92__SBHomeScreenController_AppearanceControlling__setHomeScreenAlpha_behaviorMode_completion___block_invoke_2;
    v14[3] = &unk_2783BC2B8;
    v17 = v10;
    v18 = a3;
    v15 = v20;
    v16 = v8;
    [v11 sb_animateWithSettings:v13 mode:a4 animations:v19 completion:v14];
  }

  else
  {
    [v9 setAlpha:a3];
    if (v8)
    {
      (*(v8 + 2))(v8, 1, 0);
    }
  }
}

uint64_t __92__SBHomeScreenController_AppearanceControlling__setHomeScreenAlpha_behaviorMode_completion___block_invoke_2(uint64_t a1, int a2, char a3)
{
  if (a2 && (a3 & 1) == 0 && *(a1 + 48) != *(a1 + 56))
  {
    [*(a1 + 32) setAlpha:?];
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)setHomeScreenScale:(double)a3 behaviorMode:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(SBHomeScreenController *)self homeScreenScalingView];
  if ([(NSMutableSet *)self->_contentRequiringReasons count])
  {
    v10 = MEMORY[0x277D75D18];
    v11 = [(SBAppSwitcherSettings *)self->_switcherSettings animationSettings];
    v12 = [v11 homeScreenScaleSettings];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __92__SBHomeScreenController_AppearanceControlling__setHomeScreenScale_behaviorMode_completion___block_invoke;
    v13[3] = &unk_2783A8BC8;
    v14 = v9;
    v15 = a3;
    [v10 sb_animateWithSettings:v12 mode:a4 animations:v13 completion:v8];
  }

  else
  {
    CGAffineTransformMakeScale(&v16, a3, a3);
    [v9 setTransform:&v16];
    if (v8)
    {
      v8[2](v8, 1, 0);
    }
  }
}

uint64_t __92__SBHomeScreenController_AppearanceControlling__setHomeScreenScale_behaviorMode_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  CGAffineTransformMakeScale(&v3, *(a1 + 40), *(a1 + 40));
  return [v1 setTransform:&v3];
}

- (void)setHomeScreenDimmingAlpha:(double)a3 settings:(id)a4 behaviorMode:(int64_t)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = [(SBWindow *)self->_homeScreenDimmingWindow rootViewController];
  v13 = [v12 view];

  [v13 alpha];
  if (v14 == a3)
  {
    if (v11)
    {
      v11[2](v11, 1, 0);
    }
  }

  else
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __108__SBHomeScreenController_AppearanceControlling__setHomeScreenDimmingAlpha_settings_behaviorMode_completion___block_invoke;
    v23[3] = &unk_2783B9188;
    v23[4] = self;
    v15 = v13;
    v24 = v15;
    v16 = v11;
    v25 = v16;
    v17 = MEMORY[0x223D6F7F0](v23);
    [(SBWindow *)self->_homeScreenDimmingWindow setHidden:0];
    v18 = [(NSMutableSet *)self->_contentRequiringReasons count];
    if (a5 != 5 || v18)
    {
      v19 = MEMORY[0x277D75D18];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __108__SBHomeScreenController_AppearanceControlling__setHomeScreenDimmingAlpha_settings_behaviorMode_completion___block_invoke_2;
      v20[3] = &unk_2783A8BC8;
      v21 = v15;
      v22 = a3;
      [v19 sb_animateWithSettings:v10 mode:a5 animations:v20 completion:v17];
    }

    else
    {
      [v15 setAlpha:a3];
      if (v16)
      {
        v17[2](v17, 1, 0);
      }
    }
  }
}

uint64_t __108__SBHomeScreenController_AppearanceControlling__setHomeScreenDimmingAlpha_settings_behaviorMode_completion___block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v4 = *(*(a1 + 32) + 24);
    [*(a1 + 40) alpha];
    [v4 setHidden:BSFloatIsZero()];
  }

  result = *(a1 + 48);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)setHomeScreenBackdropBlurMaterialRecipeName:(id)a3 behaviorMode:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = MEMORY[0x277D75D18];
  switcherSettings = self->_switcherSettings;
  v11 = a5;
  v12 = [(SBAppSwitcherSettings *)switcherSettings animationSettings];
  v13 = [v12 homeScreenScaleSettings];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __117__SBHomeScreenController_AppearanceControlling__setHomeScreenBackdropBlurMaterialRecipeName_behaviorMode_completion___block_invoke;
  v15[3] = &unk_2783A92D8;
  v15[4] = self;
  v16 = v8;
  v14 = v8;
  [v9 sb_animateWithSettings:v13 mode:a4 animations:v15 completion:v11];
}

void __117__SBHomeScreenController_AppearanceControlling__setHomeScreenBackdropBlurMaterialRecipeName_behaviorMode_completion___block_invoke(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = SBSafeCast(v2, *(*(a1 + 32) + 8));
  if (v3)
  {
    v4 = v3;
    [v3 setMaterialRecipeName:*(a1 + 40)];
    v3 = v4;
  }
}

- (void)restoreContentWithOptions:(unint64_t)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = [(SBHomeScreenController *)self windowScene];
  v6 = +[SBLockScreenManager sharedInstance];
  v7 = [v6 isUILocked];
  v8 = [v5 isContinuityDisplayWindowScene];
  v9 = SBLogUIController();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSBUIControllerRequireContentOptions(a3);
    *buf = 138412290;
    v37 = v10;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Attempting restoreContentWithOptions:(%@)", buf, 0xCu);
  }

  if ((a3 & 2) == 0)
  {
    v11 = [SBApp lockOutController];
    if ([v11 isLockedOut])
    {

      if ((v7 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v15 = [v6 lockScreenEnvironment];
      v16 = [v15 callController];
      v17 = [v16 isMakingEmergencyCall];

      if (!(v7 & 1 | ((v17 & 1) == 0)))
      {
LABEL_6:
        v34[0] = @"SBUILockOptionsUseScreenOffModeKey";
        v34[1] = @"SBUILockOptionsLockAutomaticallyKey";
        v35[0] = MEMORY[0x277CBEC28];
        v35[1] = MEMORY[0x277CBEC38];
        v34[2] = @"SBUILockOptionsForceLockKey";
        v35[2] = MEMORY[0x277CBEC38];
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];
        [v6 lockUIFromSource:6 withOptions:v12];

        v13 = SBLogUIController();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v14 = "abort restoreContentWithOptions: Force lock case";
LABEL_15:
          _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
          goto LABEL_43;
        }

        goto LABEL_43;
      }
    }
  }

  if (v8 & 1 | ((v7 & 1) == 0))
  {
    v13 = [SBApp restartManager];
    if ([v13 isPendingExit])
    {
      v18 = SBLogUIController();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "abort restoreContentWithOptions: restartManager isPendingExit", buf, 2u);
      }

      goto LABEL_42;
    }

    v19 = [(SBHomeScreenController *)self homeScreenScalingView];
    v18 = v19;
    if (v19 && ([v19 isHidden]& 1) == 0)
    {
      v21 = SBLogUIController();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v23 = "abort restoreContentWithOptions: _iconsView is already visible";
        goto LABEL_40;
      }
    }

    else
    {
      v20 = [(SBHomeScreenBackdropViewBase *)self->_homeScreenBackdropView isOpaque];
      v21 = SBLogUIController();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (!v20)
      {
        if (v22)
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "Restoring home screen", buf, 2u);
        }

        v24 = [(SBHomeScreenController *)self isIconListViewTornDown];
        [(SBHomeScreenController *)self _willRevealOrHideContentView];
        v21 = [(SBHomeScreenController *)self homeScreenViewController];
        v25 = SBLogUIController();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_DEFAULT, "Setting _iconsView to visible", buf, 2u);
        }

        [v21 setIconContentHidden:0];
        v26 = [(SBHomeScreenController *)self window];
        v27 = [v26 traitsParticipant];
        [v27 setNeedsUpdatePreferencesWithReason:@"restore icons" animate:0];

        [(SBHomeScreenController *)self _closeOpenFolderIfNecessary];
        [(SBHomeScreenController *)self updateNumberOfRowsWithDuration:0.0];
        if ((a3 & 1) == 0)
        {
          v28 = [v5 statusBarManager];
          [v28 updateHomeScreenStatusBarLegibility];
        }

        if ([v5 isMainDisplayWindowScene])
        {
          [(SBHomeScreenController *)self _switchToHomeScreenWallpaperAnimated:1];
          v29 = +[SBWallpaperController sharedInstance];
          [v29 activateOrientationSource:2];
        }

        if (v24)
        {
          v30 = [(SBHomeScreenController *)self window];
          if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleHomeScreen") & 1) == 0)
          {
            [v30 _updateInterfaceOrientationFromActiveInterfaceOrientationIfRotationEnabled:0];
          }

          [v30 layoutBelowIfNeeded];
        }

        v31 = [(SBHomeScreenController *)self iconManager];
        v32 = v31;
        if ((a3 & 4) != 0)
        {
          v33 = [v31 rootFolderController];
          [v33 presentSpotlightAnimated:0 completionHandler:&__block_literal_global_250];
        }

        if (objc_opt_respondsToSelector())
        {
          [v32 beginNewRootFolderContentSession];
        }

        goto LABEL_41;
      }

      if (v22)
      {
        *buf = 0;
        v23 = "abort restoreContentWithOptions: _homeScreenBackdropView is opaque";
LABEL_40:
        _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, v23, buf, 2u);
      }
    }

LABEL_41:

LABEL_42:
    goto LABEL_43;
  }

  v13 = SBLogUIController();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v14 = "abort restoreContentWithOptions: UI is locked";
    goto LABEL_15;
  }

LABEL_43:
}

- (void)restoreContentAndUnscatterIconsAnimated:(BOOL)a3 afterDelay:(double)a4 withCompletion:(id)a5
{
  v6 = a3;
  v8 = a5;
  [(SBHomeScreenController *)self restoreContent];
  v9 = [(SBHomeScreenController *)self iconManager];
  [v9 unscatterAnimated:v6 afterDelay:v8 withCompletion:a4];
}

- (void)beginRequiringContentForReason:(id)a3 options:(unint64_t)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    [SBHomeScreenController(AppearanceControlling) beginRequiringContentForReason:a2 options:self];
  }

  v8 = SBLogUIController();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v7;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Begin requiring home screen content for reason '%{public}@'", &v13, 0xCu);
  }

  contentRequiringReasons = self->_contentRequiringReasons;
  if (!contentRequiringReasons)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v11 = self->_contentRequiringReasons;
    self->_contentRequiringReasons = v10;

    contentRequiringReasons = self->_contentRequiringReasons;
  }

  v12 = [(NSMutableSet *)contentRequiringReasons count];
  [(NSMutableSet *)self->_contentRequiringReasons addObject:v7];
  if (!v12 || [(SBHomeScreenController *)self isIconListViewTornDown])
  {
    [(SBHomeScreenController *)self restoreContentWithOptions:a4];
  }
}

- (void)endRequiringContentForReason:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    [(SBHomeScreenController(AppearanceControlling) *)a2 endRequiringContentForReason:?];
  }

  v6 = SBLogUIController();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "End requiring home screen content for reason '%{public}@'", &v10, 0xCu);
  }

  v7 = [(NSMutableSet *)self->_contentRequiringReasons count];
  [(NSMutableSet *)self->_contentRequiringReasons removeObject:v5];
  v8 = [(NSMutableSet *)self->_contentRequiringReasons count];
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    [(SBHomeScreenController *)self tearDownIconListAndBar];
  }
}

- (void)beginRequiringBackdropViewForReason:(id)a3
{
  [(SBHomeScreenBackdropViewBase *)self->_homeScreenBackdropView beginRequiringBackdropViewForReason:a3];

  [(SBHomeScreenController *)self _updateRequireWallpaperRasterization];
}

- (void)beginRequiringLiveBackdropViewForReason:(id)a3
{
  [(SBHomeScreenBackdropViewBase *)self->_homeScreenBackdropView beginRequiringLiveBackdropViewForReason:a3];

  [(SBHomeScreenController *)self _updateRequireWallpaperRasterization];
}

- (void)endRequiringBackdropViewForReason:(id)a3
{
  [(SBHomeScreenBackdropViewBase *)self->_homeScreenBackdropView endRequiringBackdropViewForReason:a3];
  [(SBHomeScreenController *)self _removeReachabilityEffectViewIfNecessary];

  [(SBHomeScreenController *)self _updateRequireWallpaperRasterization];
}

- (void)endRequiringLiveBackdropViewForReason:(id)a3
{
  [(SBHomeScreenBackdropViewBase *)self->_homeScreenBackdropView endRequiringLiveBackdropViewForReason:a3];
  [(SBHomeScreenController *)self _removeReachabilityEffectViewIfNecessary];

  [(SBHomeScreenController *)self _updateRequireWallpaperRasterization];
}

- (void)_switchToHomeScreenWallpaperAnimated:(BOOL)a3
{
  v3 = a3;
  v14 = +[SBWallpaperController sharedInstance];
  if ([v14 activeVariant] != 1)
  {
    v4 = [MEMORY[0x277D02C20] rootSettings];
    v5 = v4;
    if (v3)
    {
      v6 = MEMORY[0x277CF0D38];
      v7 = [v4 unlockToPhoneWallpaperOutSettings];
      v8 = [v7 BSAnimationSettings];
      v9 = [v6 factoryWithSettings:v8];

      v10 = MEMORY[0x277CF0D38];
      v11 = [v5 unlockToPhoneWallpaperInSettings];
      v12 = [v11 BSAnimationSettings];
      v13 = [v10 factoryWithSettings:v12];
    }

    else
    {
      v13 = 0;
      v9 = 0;
    }

    [v14 setWindowLevel:*MEMORY[0x277D772B0] + -3.0];
    [v14 setActiveVariant:1 withOutAnimationFactory:v9 inAnimationFactory:v13 completion:0];
  }
}

- (void)handleWillBeginReachabilityAnimation
{
  if ([(SBHomeScreenBackdropViewBase *)self->_homeScreenBackdropView requiresBackdropView]|| [(SBHomeScreenBackdropViewBase *)self->_homeScreenBackdropView requiresLiveBackdropView])
  {
    [(SBHomeScreenController *)self beginRequiringLiveBackdropViewForReason:@"ReachabilityAnimation"];
    if (!self->_reachabilityWallpaperEffectView)
    {
      v3 = [(SBHomeScreenController *)self homeScreenContentView];
      v4 = [[SBWallpaperEffectView alloc] initWithWallpaperVariant:1];
      reachabilityWallpaperEffectView = self->_reachabilityWallpaperEffectView;
      self->_reachabilityWallpaperEffectView = v4;

      [(PBUIWallpaperEffectViewBase *)self->_reachabilityWallpaperEffectView setForcesOpaque:1];
      [(PBUIWallpaperEffectViewBase *)self->_reachabilityWallpaperEffectView setFullscreen:1];
      [(PBUIWallpaperEffectViewBase *)self->_reachabilityWallpaperEffectView setStyle:0];
      [v3 addSubview:self->_reachabilityWallpaperEffectView];
      [v3 sendSubviewToBack:self->_reachabilityWallpaperEffectView];
      v6 = MEMORY[0x277D75D18];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __85__SBHomeScreenController_AppearanceControlling__handleWillBeginReachabilityAnimation__block_invoke;
      v8[3] = &unk_2783A92D8;
      v8[4] = self;
      v9 = v3;
      v7 = v3;
      [v6 _performWithoutRetargetingAnimations:v8];
    }
  }
}

uint64_t __85__SBHomeScreenController_AppearanceControlling__handleWillBeginReachabilityAnimation__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  [*(a1 + 40) bounds];
  [v2 setFrame:?];
  v3 = *(*(a1 + 32) + 80);

  return [v3 layoutIfNeeded];
}

- (void)_setupAppearanceControlling
{
  v13 = [(SBHomeScreenController *)self windowScene];
  v3 = [SBHomeScreenWindow alloc];
  v4 = [(SBHomeScreenController *)self homeScreenViewController];
  v5 = [(SBWindow *)v3 initWithWindowScene:v13 rootViewController:v4 role:@"SBTraitsParticipantRoleHomeScreen" debugName:@"HomeScreen"];
  homeScreenWindow = self->_homeScreenWindow;
  self->_homeScreenWindow = v5;

  [(SBHomeScreenWindow *)self->_homeScreenWindow setOpaque:0];
  [(SBHomeScreenWindow *)self->_homeScreenWindow setWindowLevel:*MEMORY[0x277D772B0] + -2.0];
  [(SBWindow *)self->_homeScreenWindow makeKeyAndVisible];
  v7 = [v13 statusBarManager];
  v8 = [v7 layoutManager];
  [v8 setOrientationWindow:self->_homeScreenWindow forStatusBarLayoutLayer:0];
  v9 = [MEMORY[0x277CBEB58] set];
  contentRequiringReasons = self->_contentRequiringReasons;
  self->_contentRequiringReasons = v9;

  [(SBHomeScreenController *)self _setupHomeScreenContentBackdropView];
  [(SBHomeScreenController *)self _setupHomeScreenDimmingWindow];
  v11 = +[SBAppSwitcherDomain rootSettings];
  switcherSettings = self->_switcherSettings;
  self->_switcherSettings = v11;

  [(PTSettings *)self->_switcherSettings addKeyObserver:self];
}

- (void)_setupHomeScreenDimmingWindow
{
  v10 = objc_alloc_init(MEMORY[0x277D75D28]);
  v3 = [v10 view];
  v4 = [MEMORY[0x277D75348] blackColor];
  [v3 setBackgroundColor:v4];

  v5 = [v10 view];
  [v5 setAlpha:0.0];

  v6 = [SBWindow alloc];
  v7 = [(SBHomeScreenController *)self windowScene];
  v8 = [(SBWindow *)v6 initWithWindowScene:v7 rootViewController:v10 role:@"SBTraitsParticipantRoleHomeScreenDimming" debugName:@"HomeScreenDimming"];
  homeScreenDimmingWindow = self->_homeScreenDimmingWindow;
  self->_homeScreenDimmingWindow = v8;

  [(SBWindow *)self->_homeScreenDimmingWindow setWindowLevel:*MEMORY[0x277D772B0] + -2.0 + 1.0];
  [(SBWindow *)self->_homeScreenDimmingWindow bs_setHitTestingDisabled:1];
}

- (void)_setupHomeScreenContentBackdropView
{
  v3 = [(SBHomeScreenController *)self homeScreenContentView];
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    v4 = [SBHomeScreenBackdropDarkTintView alloc];
    [v3 bounds];
    v5 = [(SBHomeScreenBackdropDarkTintView *)v4 initWithFrame:?];
    homeScreenBackdropView = self->_homeScreenBackdropView;
    self->_homeScreenBackdropView = v5;
  }

  else
  {
    v7 = [(SBHomeScreenController *)self iconManager];
    v8 = [v7 openedFolder];
    v9 = v8 != 0;

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __92__SBHomeScreenController_AppearanceControllingInternal___setupHomeScreenContentBackdropView__block_invoke;
    v14[3] = &__block_descriptor_33_e8_d16__0d8l;
    v15 = v9;
    v10 = MEMORY[0x223D6F7F0](v14);
    v11 = [SBHomeScreenBackdropView alloc];
    [v3 bounds];
    v12 = [(SBHomeScreenBackdropView *)v11 initWithFrame:0 materialRecipe:v10 scaleAdjustment:?];
    v13 = self->_homeScreenBackdropView;
    self->_homeScreenBackdropView = v12;
  }

  [(SBHomeScreenBackdropViewBase *)self->_homeScreenBackdropView setAutoresizingMask:18];
  [(SBHomeScreenBackdropViewBase *)self->_homeScreenBackdropView bs_setHitTestingDisabled:1];
  [(SBHomeScreenBackdropViewBase *)self->_homeScreenBackdropView setDelegate:self];
  [v3 addSubview:self->_homeScreenBackdropView];
}

- (void)_resetHomeScreenBackdropView
{
  [(SBHomeScreenBackdropViewBase *)self->_homeScreenBackdropView removeFromSuperview];

  [(SBHomeScreenController *)self _setupHomeScreenContentBackdropView];
}

- (void)homeScreenBackdropView:(id)a3 opaquenessDidChange:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  if (v4)
  {
    v6 = [(SBHomeScreenController *)self iconManager];
    self->_isShowingSpotlightUnderOpaqueBackdrop = [v6 isShowingPullDownSearch];

    [(SBHomeScreenController *)self tearDownIconListAndBar];
    [(SBHomeScreenController *)self _removeReachabilityEffectViewIfNecessary];
  }

  else if ([(NSMutableSet *)self->_contentRequiringReasons count]&& [(SBHomeScreenController *)self isIconListViewTornDown])
  {
    if (self->_isShowingSpotlightUnderOpaqueBackdrop)
    {
      self->_isShowingSpotlightUnderOpaqueBackdrop = 0;
      v7 = 5;
    }

    else
    {
      v7 = 1;
    }

    [(SBHomeScreenController *)self restoreContentWithOptions:v7];
  }
}

- (SBHomeScreenController)initWithWindowScene:(id)a3 iconController:(id)a4 alertItemsController:(id)a5 applicationController:(id)a6 applicationPlaceholderController:(id)a7 assistantController:(id)a8 coverSheetPresentationManager:(id)a9 lockScreenManager:(id)a10 policyAggregator:(id)a11 userInterfaceController:(id)a12
{
  v17 = a3;
  obj = a4;
  v88 = a5;
  v18 = a5;
  v98 = a6;
  v97 = a7;
  v96 = a8;
  v95 = a9;
  v94 = a10;
  v93 = a11;
  v92 = a12;
  v110.receiver = self;
  v110.super_class = SBHomeScreenController;
  v19 = [(SBHomeScreenController *)&v110 init];
  if (v19)
  {
    v87 = v18;
    if (!v17)
    {
      [SBHomeScreenController initWithWindowScene:iconController:alertItemsController:applicationController:applicationPlaceholderController:assistantController:coverSheetPresentationManager:lockScreenManager:policyAggregator:userInterfaceController:];
    }

    objc_storeWeak(&v19->_windowScene, v17);
    objc_storeWeak(&v19->_iconController, obj);
    objc_storeStrong(&v19->_override_alertItemsController, v88);
    objc_storeStrong(&v19->_override_applicationController, a6);
    objc_storeStrong(&v19->_override_applicationPlaceholderController, a7);
    objc_storeStrong(&v19->_override_assistantController, a8);
    objc_storeStrong(&v19->_override_coverSheetPresentationManager, a9);
    objc_storeStrong(&v19->_override_lockScreenManager, a10);
    objc_storeStrong(&v19->_override_policyAggregator, a11);
    objc_storeStrong(&v19->_override_userInterfaceController, a12);
    v20 = objc_opt_class();
    v21 = [obj iconModel];
    v22 = SBSafeCast(v20, v21);

    v90 = v22;
    [(SBHomeScreenController *)v19 setModel:v22];
    [obj addIconControllerObserver:v19];
    v23 = [(SBHomeScreenController *)v19 coverSheetPresentationManager];
    v24 = [MEMORY[0x277CCAB98] defaultCenter];
    [v24 addObserver:v19 selector:sel__unlockAnimationDidFinish_ name:@"SBLockScreenManagerUnlockAnimationDidFinish" object:0];
    [v24 addObserver:v19 selector:sel__lockScreenUIWillLock_ name:@"SBLockScreenUIWillLockNotification" object:0];
    [v24 addObserver:v19 selector:sel__lockScreenUIWillLock_ name:@"SBLockScreenUIRelockedNotification" object:0];
    [v24 addObserver:v19 selector:sel__lockScreenUIWillDismiss_ name:@"SBLockScreenUIWillDismissNotification" object:0];
    if (obj)
    {
      [v24 addObserver:v19 selector:sel__iconModelDidChange_ name:SBIconControllerIconModelDidChangeNotification object:obj];
    }

    [v24 addObserver:v19 selector:sel__controlCenterWillPresent_ name:@"SBControlCenterWillPresentNotification" object:0];
    [v24 addObserver:v19 selector:sel__controlCenterDidPresent_ name:@"SBControlCenterDidPresentNotification" object:0];
    [v24 addObserver:v19 selector:sel__controlCenterWillDismiss_ name:@"SBControlCenterWillDismissNotification" object:0];
    [v24 addObserver:v19 selector:sel__coverSheetWillPresent_ name:@"SBCoverSheetWillPresentNotification" object:v23];
    [v24 addObserver:v19 selector:sel__coverSheetDidPresent_ name:@"SBCoverSheetDidPresentNotification" object:v23];
    [v24 addObserver:v19 selector:sel__forceTouchControllerWillPresent_ name:*MEMORY[0x277D66720] object:0];
    [v24 addObserver:v19 selector:sel__mainSwitcherCreated_ name:@"SBMainSwitcherSwitcherSharedInstanceCreatedNotification" object:0];
    [v24 addObserver:v19 selector:sel__reduceMotionStatusDidChange_ name:*MEMORY[0x277D764C0] object:0];
    [v24 addObserver:v19 selector:sel__deviceUILocked name:@"SBLockScreenUIDidLockNotification" object:0];
    [v24 addObserver:v19 selector:sel__policyAggregatorCapabilitiesDidChange_ name:@"SBPolicyAggregatorCapabilitiesChangedNotification" object:0];
    [v24 addObserver:v19 selector:sel__noteStatusBarHeightChanged_ name:*MEMORY[0x277D76718] object:0];
    [v24 addObserver:v19 selector:sel__styleEditorWillPresent_ name:*MEMORY[0x277D66588] object:0];
    [v24 addObserver:v19 selector:sel__styleEditorDidDismiss_ name:*MEMORY[0x277D66558] object:0];
    [v24 addObserver:v19 selector:sel__colorDropperWillPresent_ name:*MEMORY[0x277D66580] object:0];
    [v24 addObserver:v19 selector:sel__colorDropperDismissed_ name:*MEMORY[0x277D66550] object:0];
    v89 = v23;
    if (obj && [v17 isMainDisplayWindowScene])
    {
      v25 = [obj iconManager];
      iconManager = v19->_iconManager;
      v19->_iconManager = v25;
    }

    else
    {
      v27 = objc_alloc_init(MEMORY[0x277D661E8]);
      v28 = v19->_iconManager;
      v19->_iconManager = v27;

      [(SBHIconManager *)v19->_iconManager setOwnsIconModel:0];
      [obj configureIconManager:v19->_iconManager];
    }

    [(SBHIconManager *)v19->_iconManager setDelegate:v19];
    v29 = [SBWallpaperIconStyleCoordinator alloc];
    v30 = +[SBWallpaperController sharedInstance];
    v31 = +[SBDefaults localDefaults];
    v32 = [v31 homeScreenDefaults];
    v33 = [(SBWallpaperIconStyleCoordinator *)v29 initWithWallpaperController:v30 homeScreenDefaults:v32];
    iconStyleCoordinator = v19->_iconStyleCoordinator;
    v19->_iconStyleCoordinator = v33;

    [(SBWallpaperIconStyleCoordinator *)v19->_iconStyleCoordinator addIconStyleObserver:v19];
    if (obj)
    {
      v35 = v19->_iconManager;
    }

    else
    {
      v35 = 0;
    }

    v36 = v35;
    v37 = [[SBHomeScreenViewController alloc] initWithWindowScene:v17 contextProvider:v19 iconManager:v36 appearanceController:v19];
    homeScreenViewController = v19->_homeScreenViewController;
    v19->_homeScreenViewController = v37;

    v39 = [(SBHomeScreenViewController *)v19->_homeScreenViewController iconContentView];
    homeScreenScalingView = v19->_homeScreenScalingView;
    v19->_homeScreenScalingView = v39;

    v41 = [(SBHomeScreenViewController *)v19->_homeScreenViewController view];
    homeScreenContentView = v19->_homeScreenContentView;
    v19->_homeScreenContentView = v41;

    [(SBHIconManager *)v19->_iconManager configureFeedbackView:v19->_homeScreenContentView];
    [(SBHomeScreenController *)v19 updateHomeScreenTraitOverridesForWindowScene:v17];
    [(SBHIconManager *)v19->_iconManager setListLayoutProviderLayoutOptions:[(SBHomeScreenController *)v19 bestListLayoutProviderLayoutOptions]];
    [(SBHIconManager *)v19->_iconManager setIconModel:v19->_iconModel];
    if (![(SBHomeScreenController *)v19 _isCoplanarHomeScreenEnabled])
    {
      [(SBHomeScreenController *)v19 _setupOverlayLibraryViewController];
    }

    if (([(SBHIconManager *)v19->_iconManager ownsIconModel]& 1) == 0)
    {
      [(SBHomeScreenController *)v19 _setupOverlayLibraryViewController];
    }

    [(SBHomeScreenController *)v19 _makeTodayViewControllers];
    if (![(SBHomeScreenController *)v19 _isCoplanarHomeScreenEnabled])
    {
      v43 = v19->_iconManager;
      v44 = [(SBHomeScreenController *)v19 todayViewController];
      [(SBHIconManager *)v43 setOverlayTodayViewController:v44];
    }

    v45 = v19->_iconManager;
    v46 = [(SBHomeScreenController *)v19 coverSheetTodayViewController];
    [(SBHIconManager *)v45 setOverlayCoverSheetTodayViewController:v46];

    [(SBHomeScreenController *)v19 _setupAppearanceControlling];
    v47 = [(SBHomeScreenController *)v19 alertItemsController];
    [v47 addObserver:v19];

    v48 = [(SBHomeScreenController *)v19 assistantController];
    [v48 addObserver:v19];

    v49 = [v17 displayLayoutPublisher];
    [v49 addObserver:v19];

    v50 = [v17 layoutStateTransitionCoordinator];
    [v50 addObserver:v19];

    v51 = [(SBHomeScreenController *)v19 _iconController];
    v52 = [v51 proactiveSuggestionProvider];
    [v52 addObserver:v19];

    v53 = [[SBTipsHomeScreenUsageObserver alloc] initWithIconManager:v19->_iconManager];
    tipsUsageObserver = v19->_tipsUsageObserver;
    v19->_tipsUsageObserver = v53;

    v55 = [MEMORY[0x277D661A0] rootSettings];
    v56 = [v55 rootFolderSettings];
    rootFolderSettings = v19->_rootFolderSettings;
    v19->_rootFolderSettings = v56;

    [(SBHRootFolderSettings *)v19->_rootFolderSettings addKeyObserver:v19];
    v58 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    deviceOrientationUpdateDeferralAssertionsByReason = v19->_deviceOrientationUpdateDeferralAssertionsByReason;
    v19->_deviceOrientationUpdateDeferralAssertionsByReason = v58;

    v60 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    activeInterfaceOrientationChangeDeferralAssertionsByReason = v19->_activeInterfaceOrientationChangeDeferralAssertionsByReason;
    v19->_activeInterfaceOrientationChangeDeferralAssertionsByReason = v60;

    v62 = +[SBDefaults localDefaults];
    v63 = [v62 homeScreenDefaults];

    v64 = +[SBDefaults localDefaults];
    v91 = [v64 floatingDockDefaults];

    v65 = [MEMORY[0x277D661A0] rootSettings];
    objc_initWeak(&location, v19);
    v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"shouldUseLargeDefaultSizedIcons"];
    v67 = MEMORY[0x277D85CD0];
    v68 = MEMORY[0x277D85CD0];
    v107[0] = MEMORY[0x277D85DD0];
    v107[1] = 3221225472;
    v107[2] = __246__SBHomeScreenController_initWithWindowScene_iconController_alertItemsController_applicationController_applicationPlaceholderController_assistantController_coverSheetPresentationManager_lockScreenManager_policyAggregator_userInterfaceController___block_invoke;
    v107[3] = &unk_2783A8C68;
    objc_copyWeak(&v108, &location);
    v69 = [v63 observeDefault:v66 onQueue:v67 withBlock:v107];

    v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"recentsEnabled"];
    v105[0] = MEMORY[0x277D85DD0];
    v105[1] = 3221225472;
    v105[2] = __246__SBHomeScreenController_initWithWindowScene_iconController_alertItemsController_applicationController_applicationPlaceholderController_assistantController_coverSheetPresentationManager_lockScreenManager_policyAggregator_userInterfaceController___block_invoke_2;
    v105[3] = &unk_2783A8C68;
    objc_copyWeak(&v106, &location);
    v71 = [v91 observeDefault:v70 onQueue:MEMORY[0x277D85CD0] withBlock:v105];

    [v65 addKeyObserver:v19];
    v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:"showsBadgesInAppLibrary"];
    v103[0] = MEMORY[0x277D85DD0];
    v103[1] = 3221225472;
    v103[2] = __246__SBHomeScreenController_initWithWindowScene_iconController_alertItemsController_applicationController_applicationPlaceholderController_assistantController_coverSheetPresentationManager_lockScreenManager_policyAggregator_userInterfaceController___block_invoke_3;
    v103[3] = &unk_2783A8C68;
    objc_copyWeak(&v104, &location);
    v73 = [v63 observeDefault:v72 onQueue:MEMORY[0x277D85CD0] withBlock:v103];

    v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:"showsHomeScreenSearchAffordance"];
    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 3221225472;
    v101[2] = __246__SBHomeScreenController_initWithWindowScene_iconController_alertItemsController_applicationController_applicationPlaceholderController_assistantController_coverSheetPresentationManager_lockScreenManager_policyAggregator_userInterfaceController___block_invoke_4;
    v101[3] = &unk_2783A8C68;
    objc_copyWeak(&v102, &location);
    v75 = [v63 observeDefault:v74 onQueue:MEMORY[0x277D85CD0] withBlock:v101];

    v76 = [MEMORY[0x277D661A0] rootSettings];
    v77 = [v76 iconEditingSettings];
    iconEditingSettings = v19->_iconEditingSettings;
    v19->_iconEditingSettings = v77;

    [(SBHIconEditingSettings *)v19->_iconEditingSettings addKeyObserver:v19];
    [(SBHomeScreenController *)v19 _configureEditingGestureRecognizers];
    [(SBHomeScreenController *)v19 _configureNavigationGestureRecognizersIfNeeded];
    v79 = [MEMORY[0x277D661A0] rootSettings];
    v80 = [v79 widgetSettings];
    widgetSettings = v19->_widgetSettings;
    v19->_widgetSettings = v80;

    v82 = +[SBDraggingSystemManager sharedInstance];
    v83 = +[SBReachabilityManager sharedInstance];
    [v83 addObserver:v19];

    if ([v17 isMainDisplayWindowScene])
    {
      v84 = +[SBWallpaperController sharedInstance];
      [v84 setOrientationProvider:v19 forSource:2];
      [v84 activateOrientationSource:2];
    }

    v85 = [v17 statusBarManager];
    [v85 addHomeScreenStatusBarLegibilityObserver:v19];

    objc_destroyWeak(&v102);
    objc_destroyWeak(&v104);
    objc_destroyWeak(&v106);
    objc_destroyWeak(&v108);
    objc_destroyWeak(&location);

    v18 = v87;
  }

  return v19;
}

void __246__SBHomeScreenController_initWithWindowScene_iconController_alertItemsController_applicationController_applicationPlaceholderController_assistantController_coverSheetPresentationManager_lockScreenManager_policyAggregator_userInterfaceController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained iconManager];
  [v1 setListLayoutProviderLayoutOptions:objc_msgSend(WeakRetained animated:{"bestListLayoutProviderLayoutOptions"), 0}];
}

void __246__SBHomeScreenController_initWithWindowScene_iconController_alertItemsController_applicationController_applicationPlaceholderController_assistantController_coverSheetPresentationManager_lockScreenManager_policyAggregator_userInterfaceController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained iconManager];
  [v1 setListLayoutProviderLayoutOptions:{objc_msgSend(WeakRetained, "bestListLayoutProviderLayoutOptions")}];
}

void __246__SBHomeScreenController_initWithWindowScene_iconController_alertItemsController_applicationController_applicationPlaceholderController_assistantController_coverSheetPresentationManager_lockScreenManager_policyAggregator_userInterfaceController___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showsBadgesInAppLibraryDidChange];
}

void __246__SBHomeScreenController_initWithWindowScene_iconController_alertItemsController_applicationController_applicationPlaceholderController_assistantController_coverSheetPresentationManager_lockScreenManager_policyAggregator_userInterfaceController___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained iconManager];
  [v1 tearDownAndResetRootIconLists];
}

- (void)addEventObserver:(id)a3
{
  v4 = a3;
  eventObservers = self->_eventObservers;
  v8 = v4;
  if (!eventObservers)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_eventObservers;
    self->_eventObservers = v6;

    [(SBHomeScreenController *)self _configureBackgroundTapObservation:1];
    v4 = v8;
    eventObservers = self->_eventObservers;
  }

  [(NSHashTable *)eventObservers addObject:v4];
}

- (void)removeEventObserver:(id)a3
{
  [(NSHashTable *)self->_eventObservers removeObject:a3];
  if (![(NSHashTable *)self->_eventObservers count])
  {
    eventObservers = self->_eventObservers;
    self->_eventObservers = 0;

    [(SBHomeScreenController *)self _configureBackgroundTapObservation:0];
  }
}

- (void)_configureBackgroundTapObservation:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBHomeScreenController *)self iconManager];
  v12 = [v5 rootFolderController];

  v6 = [v12 folderView];
  v7 = [v6 scrollView];

  homeScreenBackgroundTapGestureRecognizer = self->_homeScreenBackgroundTapGestureRecognizer;
  if (v3)
  {
    if (!homeScreenBackgroundTapGestureRecognizer)
    {
      v9 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleBackgroundTap_];
      v10 = self->_homeScreenBackgroundTapGestureRecognizer;
      self->_homeScreenBackgroundTapGestureRecognizer = v9;

      [(UITapGestureRecognizer *)self->_homeScreenBackgroundTapGestureRecognizer setDelegate:self];
      [v7 addGestureRecognizer:self->_homeScreenBackgroundTapGestureRecognizer];
    }
  }

  else if (homeScreenBackgroundTapGestureRecognizer)
  {
    [v7 removeGestureRecognizer:?];
    v11 = self->_homeScreenBackgroundTapGestureRecognizer;
    self->_homeScreenBackgroundTapGestureRecognizer = 0;
  }
}

- (void)_handleBackgroundTap:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBHomeScreenController *)self iconManager];
  v6 = [v5 rootFolderController];
  v7 = [v6 currentIconListView];

  [v4 locationInView:v7];
  v9 = v8;
  v11 = v10;
  v12 = [v7 iconAtPoint:0 index:?];
  if (!v12)
  {
LABEL_10:
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = [(NSHashTable *)self->_eventObservers copy];
    v23 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v28;
      do
      {
        v26 = 0;
        do
        {
          if (*v28 != v25)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v27 + 1) + 8 * v26++) homeScreenControllerReceivedTouchInBackground:self];
        }

        while (v24 != v26);
        v24 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v24);
    }

    goto LABEL_17;
  }

  v13 = [v7 iconViewForIcon:v12];
  v14 = [v7 dragHitRegionForPoint:v12 icon:{v9, v11}];
  if (!v13 || (v15 = v14, ![v12 isApplicationIcon]) || (v15 & 1) == 0 && (objc_msgSend(v13, "isCursorActive") & 1) == 0)
  {
    v16 = [v13 customIconImageViewController];
    v17 = [v16 view];

    if (v17)
    {
      [v4 locationInView:v17];
      v19 = v18;
      v21 = v20;
      [v17 bounds];
      v33.x = v19;
      v33.y = v21;
      v22 = CGRectContainsPoint(v34, v33);

      if (v22)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    goto LABEL_10;
  }

LABEL_17:

LABEL_18:
}

- (void)_setupOverlayLibraryViewController
{
  if (![(SBHomeScreenController *)self isModalAppLibrarySupported])
  {
    v3 = [(SBHomeScreenController *)self overlayLibraryViewController];
    if (!v3)
    {
      v4 = [(SBHomeScreenController *)self isAppLibrarySupported];
      v3 = 0;
      if (v4)
      {
        v5 = [(SBHomeScreenController *)self iconManager];

        if (!v5)
        {
          return;
        }

        v6 = [(SBHomeScreenController *)self windowScene];
        v7 = [(SBHomeScreenController *)self _setUpLibraryViewControllerForWindowScene:v6];

        [(SBHomeScreenController *)self setOverlayLibraryViewController:v7];
        if (![(SBHomeScreenController *)self _isCoplanarHomeScreenEnabled])
        {
          [(SBHIconManager *)self->_iconManager setOverlayLibraryViewController:v7];
        }

        v3 = v7;
      }
    }
  }
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)invalidate
{
  v24 = *MEMORY[0x277D85DE8];
  self->_invalidated = 1;
  v3 = [(SBHomeScreenController *)self iconManager];
  v4 = [(SBHomeScreenController *)self spotlightViewController];
  if ([v3 isShowingPullDownOrLeadingCustomViewSearch])
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __36__SBHomeScreenController_invalidate__block_invoke;
    v21[3] = &unk_2783A8C18;
    v22 = v4;
    [v3 dismissSpotlightAnimated:0 completionHandler:v21];
  }

  else
  {
    [v4 invalidate];
  }

  v5 = [v3 rootViewController];
  [(SBHomeScreenController *)self iconManager:v3 willDestroyRootViewController:v5];

  v6 = [(SBHomeScreenController *)self windowScene];
  if (v6)
  {
    [(NSMapTable *)self->_windowSceneToMedusaDragWindowContext removeObjectForKey:v6];
    v7 = [(SBHomeScreenController *)self iconDragManager];
    [v7 windowSceneDidDisconnect:v6];

    v8 = [v6 displayLayoutPublisher];
    [v8 removeObserver:self];

    v9 = [v6 layoutStateTransitionCoordinator];
    [v9 removeObserver:self];
  }

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 removeObserver:self];

  [(SBHIconEditingSettings *)self->_iconEditingSettings removeKeyObserver:self];
  [(BSInvalidatable *)self->_duckWallpaperDimmingAssertion invalidate];
  v11 = [v6 statusBarManager];
  [v11 removeHomeScreenStatusBarLegibilityObserver:self];

  [(BSInvalidatable *)self->_displayLayoutTransition invalidate];
  [(BSInvalidatable *)self->_folderDisplayLayoutAssertion invalidate];
  [(BSInvalidatable *)self->_todayViewDisplayLayoutAssertion invalidate];
  [(BSInvalidatable *)self->_widgetEditingLayoutAssertion invalidate];
  [(NSMapTable *)self->_suspendWallpaperAnimationForFolderAssertions bs_each:&__block_literal_global_407];
  [(BSInvalidatable *)self->_suspendWallpaperAnimationForOverlayViewAssertion invalidate];
  [(BSInvalidatable *)self->_suspendWallpaperAnimationForSpotlightAssertion invalidate];
  [(BSInvalidatable *)self->_wallpaperRasterizationAssertion invalidate];
  [(SBFloatingDockBehaviorAssertion *)self->_homeScreenOverlayFloatingDockBehaviorAssertion invalidate];
  [(SBFloatingDockBehaviorAssertion *)self->_addWidgetSheetFloatingDockBehaviorAssertion invalidate];
  [(SBFloatingDockBehaviorAssertion *)self->_widgetConfigurationFloatingDockBehaviorAssertion invalidate];
  [(SBFloatingDockBehaviorAssertion *)self->_modalInteractionFloatingDockBehaviorAssertion invalidate];
  [(SBFloatingDockBehaviorAssertion *)self->_wallpaperEditorFloatingDockBehaviorAssertion invalidate];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = [(SBHomeScreenController *)self floatingDockBehaviorAssertions];
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v17 + 1) + 8 * v16++) invalidate];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v14);
  }

  [(BSInvalidatable *)self->_addWidgetSheetKeyboardFocusAssertion invalidate];
  [(SBLibraryViewController *)self->_overlayLibraryViewController invalidate];
  [(SBFZStackParticipant *)self->_zStackParticipant invalidate];
  [(SBWallpaperIconStyleCoordinator *)self->_iconStyleCoordinator removeIconStyleObserver:self];
  [(BSInvalidatable *)self->_wallpaperEditorStatusBarAssertion invalidate];
}

- (id)iconDragManager
{
  v2 = [(SBHomeScreenController *)self iconManager];
  v3 = [v2 iconDragManager];

  return v3;
}

- (id)alertItemsController
{
  override_alertItemsController = self->_override_alertItemsController;
  if (override_alertItemsController)
  {
    v3 = override_alertItemsController;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v5 = [WeakRetained alertItemsController];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = +[SBAlertItemsController sharedInstance];
    }

    v3 = v7;
  }

  return v3;
}

- (id)applicationController
{
  override_applicationController = self->_override_applicationController;
  if (override_applicationController)
  {
    v3 = override_applicationController;
  }

  else
  {
    v3 = +[SBApplicationController sharedInstance];
  }

  return v3;
}

- (id)applicationPlaceholderController
{
  override_applicationPlaceholderController = self->_override_applicationPlaceholderController;
  if (override_applicationPlaceholderController)
  {
    v3 = override_applicationPlaceholderController;
  }

  else
  {
    v3 = +[SBApplicationPlaceholderController sharedInstance];
  }

  return v3;
}

- (id)assistantController
{
  override_assistantController = self->_override_assistantController;
  if (override_assistantController)
  {
    v3 = override_assistantController;
  }

  else
  {
    v3 = +[SBAssistantController sharedInstance];
  }

  return v3;
}

- (id)coverSheetPresentationManager
{
  override_coverSheetPresentationManager = self->_override_coverSheetPresentationManager;
  if (override_coverSheetPresentationManager)
  {
    v3 = override_coverSheetPresentationManager;
  }

  else
  {
    v3 = +[SBCoverSheetPresentationManager sharedInstance];
  }

  return v3;
}

- (id)lockScreenManager
{
  override_lockScreenManager = self->_override_lockScreenManager;
  if (override_lockScreenManager)
  {
    v3 = override_lockScreenManager;
  }

  else
  {
    v3 = +[SBLockScreenManager sharedInstance];
  }

  return v3;
}

- (SBUIController)userInterfaceController
{
  override_userInterfaceController = self->_override_userInterfaceController;
  if (override_userInterfaceController)
  {
    v3 = override_userInterfaceController;
  }

  else
  {
    v3 = +[SBUIController sharedInstance];
  }

  return v3;
}

- (id)_currentMainDisplayLayoutState
{
  v2 = [(SBHomeScreenController *)self windowScene];
  v3 = [v2 layoutStateProvider];
  v4 = [v3 layoutState];

  return v4;
}

- (void)iconModelDidImportIconState:(id)a3
{
  v3 = [(SBHomeScreenController *)self iconManager];
  [v3 relayout];
}

- (void)iconModelInstalledAppsDidChange:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [(SBHomeScreenController *)self _libraryViewControllers];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) noteInstalledApplicationsDidChange];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = [(SBHomeScreenController *)self iconManager];
  [v9 checkForInvalidCustomElements];
}

- (void)iconModel:(id)a3 backupRestoringStatusDidChange:(BOOL)a4
{
  if (!a4)
  {
    v6 = [(SBHomeScreenController *)self iconManager];
    [v6 checkForInvalidWidgets];

    v7 = [(SBHomeScreenController *)self iconManager];
    [v7 checkForInvalidCustomElements];
  }
}

- (void)iconModel:(id)a3 wantsToRevealAnyApplicationFromIdentifiers:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SBHomeScreenController *)self iconManager];
  v9 = [v7 anyObject];
  if (v9)
  {
    v10 = [v6 applicationIconForBundleIdentifier:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(SBHomeScreenController *)self _currentMainDisplayLayoutState];
  v12 = [v11 unlockedEnvironmentMode];

  if ([v7 count] < 2)
  {
    if (v10)
    {
      if (v12 == 3)
      {
        v22 = 4;
      }

      else
      {
        v22 = 6;
      }

      [v8 addNewIconToDesignatedLocation:v10 options:v22];
    }
  }

  else if (v12 != 3 && v10)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = v7;
    v25 = [v13 countByEnumeratingWithState:&v31 objects:v38 count:16];
    if (v25)
    {
      v14 = *v32;
      v26 = v13;
      v24 = *v32;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v13);
          }

          v16 = *(*(&v31 + 1) + 8 * i);
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v17 = [v6 applicationIconsForBundleIdentifier:v16];
          v18 = [v17 countByEnumeratingWithState:&v27 objects:v37 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v28;
            while (2)
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v28 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                if ([v8 isDisplayingIcon:*(*(&v27 + 1) + 8 * j)])
                {

                  v23 = SBLogIconController();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v36 = v9;
                    _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, "Skipping revealing added/modified icon: %@", buf, 0xCu);
                  }

                  goto LABEL_31;
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v27 objects:v37 count:16];
              if (v19)
              {
                continue;
              }

              break;
            }
          }

          v13 = v26;
          v14 = v24;
        }

        v25 = [v26 countByEnumeratingWithState:&v31 objects:v38 count:16];
      }

      while (v25);
    }

    [v8 scrollToIconListContainingIcon:v10 animate:1];
  }

LABEL_31:
}

- (id)featureIntroductionItemForWidgetSetupAtLocation:(unint64_t)a3
{
  v4 = [(SBHomeScreenController *)self iconManager];
  v5 = [v4 featureIntroductionManager];
  v6 = [v5 featureIntroductionItemAtLocation:a3 withIdentifier:@"SBFeatureIntroductionLocationNone"];
  if ([v6 shouldSetupFeatureIntroductionAtLocations:a3])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (void)windowSceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v7 = SBSafeCast(v5, v4);

  if (v7)
  {
    [(NSMapTable *)self->_windowSceneToMedusaDragWindowContext removeObjectForKey:v7];
    v6 = [(SBHomeScreenController *)self iconDragManager];
    [v6 windowSceneDidDisconnect:v7];
  }
}

- (void)_beginDisablingAllOrientationChangesForReason:(id)a3
{
  v6 = a3;
  v4 = [(NSMapTable *)self->_deviceOrientationUpdateDeferralAssertionsByReason objectForKey:?];
  if (!v4)
  {
    v4 = [SBApp deviceOrientationUpdateDeferralAssertionWithReason:v6];
    [(NSMapTable *)self->_deviceOrientationUpdateDeferralAssertionsByReason setObject:v4 forKey:v6];
  }

  v5 = [(NSMapTable *)self->_activeInterfaceOrientationChangeDeferralAssertionsByReason objectForKey:v6];
  if (!v5)
  {
    v5 = [[SBDisableActiveInterfaceOrientationChangeAssertion alloc] initWithReason:v6 nudgeOrientationOnInvalidate:0];
    [(NSMapTable *)self->_activeInterfaceOrientationChangeDeferralAssertionsByReason setObject:v5 forKey:v6];
  }
}

- (void)_endDisablingAllOrientationChangesForReason:(id)a3
{
  deviceOrientationUpdateDeferralAssertionsByReason = self->_deviceOrientationUpdateDeferralAssertionsByReason;
  v5 = a3;
  v7 = [(NSMapTable *)deviceOrientationUpdateDeferralAssertionsByReason objectForKey:v5];
  [(NSMapTable *)self->_deviceOrientationUpdateDeferralAssertionsByReason removeObjectForKey:v5];
  [v7 invalidate];
  v6 = [(NSMapTable *)self->_activeInterfaceOrientationChangeDeferralAssertionsByReason objectForKey:v5];
  [(NSMapTable *)self->_activeInterfaceOrientationChangeDeferralAssertionsByReason removeObjectForKey:v5];

  [v6 invalidate];
}

- (unint64_t)bestListLayoutProviderLayoutOptions
{
  v3 = +[SBDefaults localDefaults];
  v4 = [v3 homeScreenDefaults];

  v5 = +[SBDefaults localDefaults];
  v6 = [v5 floatingDockDefaults];

  if ([v6 recentsEnabled])
  {
    v7 = 0;
  }

  else
  {
    v7 = 4;
  }

  if ([v4 shouldUseLargeDefaultSizedIcons])
  {
    if (__sb__runningInSpringBoard())
    {
      v8 = SBFEffectiveDeviceClass() == 2;
    }

    else
    {
      v9 = [MEMORY[0x277D75418] currentDevice];
      v8 = [v9 userInterfaceIdiom] == 1;
    }

    if (v8)
    {
      v7 |= 8uLL;
    }
  }

  if ([(SBWallpaperIconStyleCoordinator *)self->_iconStyleCoordinator shouldUseLargeHomeScreenIcons])
  {
    v10 = v7 | 0x18;
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

- (id)rootFolder
{
  v2 = [(SBHomeScreenController *)self iconModel];
  v3 = [v2 rootFolder];

  return v3;
}

- (void)_showInfoAlertIfNeeded:(BOOL)a3
{
  v14 = [(SBHomeScreenController *)self alertItemsController];
  v5 = +[SBDefaults localDefaults];
  v6 = [v5 iconDefaults];
  v7 = [v6 didShowIconReorderAlert];

  v8 = [v14 hasAlertOfClass:objc_opt_class()];
  if (a3)
  {
    v9 = 1;
    if (v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = [(SBHomeScreenController *)self applicationPlaceholderController];
    v9 = [v10 hasDownloadedStoreApplication];

    if (v7)
    {
      goto LABEL_7;
    }
  }

  v11 = [(SBHomeScreenController *)self iconManager];
  v12 = [v11 isEditingAllowed] & v9 & (v8 ^ 1);

  if (v12 == 1)
  {
    v13 = objc_alloc_init(SBReorderInfoAlert);
    [v14 activateAlertItem:v13];
  }

LABEL_7:
}

- (void)handleHomeButtonTap
{
  v3 = [(SBHomeScreenController *)self iconManager];
  v4 = [(SBHomeScreenController *)self homeScreenViewController];
  if (![(SBHomeScreenController *)self areAnyIconViewContextMenusShowing])
  {
    if ([v3 areAnyIconShareSheetsShowing])
    {
      [v3 dismissIconShareSheets];
      goto LABEL_7;
    }

    v5 = [v4 presentedViewController];

    if (v5)
    {
      [v4 dismissViewControllerAnimated:1 completion:0];
      goto LABEL_7;
    }

    if ([v3 hasOpenFolder] && (!objc_msgSend(v3, "isEditing") || objc_msgSend(v3, "isIconDragging")))
    {
      [v3 popExpandedIconAnimated:1 completionHandler:0];
      goto LABEL_7;
    }

    if ([v3 isShowingModalInteraction])
    {
      [v3 popModalInteraction];
      goto LABEL_7;
    }

    if ([v3 isFolderPageManagementUIVisible])
    {
      [v3 dismissFolderPageManagementUI];
      goto LABEL_7;
    }

    if ([v3 isEditing])
    {
      [v3 setEditing:0];
      goto LABEL_7;
    }

    if ([v3 isShowingPullDownSearchOrTransitioningToVisible])
    {
      [v3 dismissSpotlightAnimated:1 completionHandler:0];
      goto LABEL_7;
    }

    if ([(SBHomeScreenController *)self isMainDisplayLibraryViewVisible])
    {
      if (![(SBHomeScreenController *)self isModalAppLibrarySupported])
      {
        v6 = [(SBHomeScreenController *)self overlayLibraryViewController];
        [v6 popPresentationState];
        goto LABEL_29;
      }

      v6 = [(SBHomeScreenController *)self windowScene];
      v7 = [v6 modalLibraryController];
      if (![v7 isPresentingLibrary])
      {
LABEL_25:

LABEL_29:
        goto LABEL_7;
      }

      v8 = [v7 libraryViewController];
      [v8 popPresentationState];
    }

    else
    {
      if ([(SBHomeScreenController *)self isTodayOverlaySpotlightVisible])
      {
        [(SBHomeScreenController *)self dismissTodayOverlaySpotlightAnimated:1];
        goto LABEL_7;
      }

      if ([(SBHomeScreenController *)self isTodayOverlayPresented])
      {
        [(SBHomeScreenController *)self dismissTodayOverlayAnimated:1];
        goto LABEL_7;
      }

      if ([(SBHomeScreenController *)self isFileStackIconRemoteContentPresented])
      {
        [(SBHomeScreenController *)self closeFileStackIconRemoteContent];
        goto LABEL_7;
      }

      v9 = [(SBHomeScreenController *)self remoteWallpaperEditorViewController];

      if (v9)
      {
        v6 = [(SBHomeScreenController *)self remoteWallpaperEditorViewController];
        [v6 sendRequestDismissalAction];
        goto LABEL_29;
      }

      v10 = SBLogTelemetrySignposts();
      if (os_signpost_enabled(v10))
      {
        *v12 = 0;
        _os_signpost_emit_with_name_impl(&dword_21ED4E000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_ANIMATE_TO_FIRST_HOME_PAGE", " enableTelemetry=YES  isAnimation=YES ", v12, 2u);
      }

      kdebug_trace();
      [v3 animateToDefaultStateWithCompletionHandler:&__block_literal_global_151_0];
      v6 = [v4 iconContentView];
      v11 = [v6 window];
      v7 = [v11 _eventRoutingScene];

      if (!v7)
      {
        goto LABEL_25;
      }

      v8 = [MEMORY[0x277D75128] sharedApplication];
      [v8 _cancelAllEventsOfType:0 onEventRoutingScene:v7];
    }

    goto LABEL_25;
  }

  [(SBHomeScreenController *)self dismissAppIconForceTouchControllers:0];
LABEL_7:
}

uint64_t __45__SBHomeScreenController_handleHomeButtonTap__block_invoke()
{
  v0 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v0))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_ANIMATE_TO_FIRST_HOME_PAGE", " enableTelemetry=YES  isAnimation=YES ", v2, 2u);
  }

  return kdebug_trace();
}

- (BOOL)allowsUninstall
{
  v2 = [(SBHomeScreenController *)self _iconController];
  v3 = [v2 allowsUninstall];

  return v3;
}

- (BOOL)isUninstallingSystemAppsRestricted
{
  v2 = [(SBHomeScreenController *)self _iconController];
  v3 = [v2 isUninstallingSystemAppsRestricted];

  return v3;
}

- (BOOL)isUninstallSupportedForAnyIcon
{
  v2 = [(SBHomeScreenController *)self _iconController];
  v3 = [v2 isUninstallSupportedForAnyIcon];

  return v3;
}

- (BOOL)isUninstallSupportedForIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBHomeScreenController *)self _iconController];
  v6 = [v5 isUninstallSupportedForIcon:v4];

  return v6;
}

- (BOOL)isHideSupportedForIcon:(id)a3 inLocation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBHomeScreenController *)self _iconController];
  v9 = [v8 isHideSupportedForIcon:v7 inLocation:v6];

  return v9;
}

- (BOOL)isHideSuggestionSupportedForIconView:(id)a3 inLocation:(id)a4
{
  v6 = a3;
  if ([a4 isEqualToString:@"SBIconLocationFloatingDockSuggestions"])
  {
    v7 = [(SBHomeScreenController *)self windowScene];
    v8 = [v7 floatingDockController];
    v9 = [v8 shouldShowHideSuggestionForIconView:v6 proposedValue:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)updateNumberOfRowsWithDuration:(double)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__SBHomeScreenController_updateNumberOfRowsWithDuration___block_invoke;
  v5[3] = &unk_2783A8C18;
  v5[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:2 delay:v5 options:0 animations:a3 completion:0.0];
  v4 = [(SBHomeScreenController *)self iconManager];
  [v4 layoutIconListsWithAnimationType:0 forceRelayout:0];
}

void __57__SBHomeScreenController_updateNumberOfRowsWithDuration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) homeScreenViewController];
  v1 = [v2 iconContentView];
  [v1 layoutIfNeeded];
}

- (void)_launchFromIconView:(id)a3 withActions:(id)a4 modifierFlags:(int64_t)a5
{
  v5 = a5;
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(SBHomeScreenController *)self delayedLaunchRequestTimer];
  [v10 invalidate];

  [(SBHomeScreenController *)self setDelayedLaunchRequestTimer:0];
  v11 = [(SBHomeScreenController *)self iconManager];
  v12 = [v8 icon];
  v13 = [v11 reasonToDisallowTapOnIconView:v8];
  if (v13)
  {
    [v11 clearHighlightedIcon];
    v14 = SBLogIcon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v38 = v8;
      v39 = 2114;
      v40 = v13;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Ignoring launch from icon view: %@, reason: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v32 = v5;
    v34 = v9;
    v15 = SBLogIcon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v8;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Initiating launch from icon view: %@", buf, 0xCu);
    }

    v14 = [v8 _sbWindowScene];
    v16 = [v14 switcherController];
    v17 = [MEMORY[0x277D0AB20] sharedInstance];
    [v17 cancelEventsWithName:@"SBUIApplicationIconLaunchEventLabel"];

    v18 = [MEMORY[0x277D0AB20] sharedInstance];
    v19 = [v16 toggleSwitcherEventName];
    [v18 cancelEventsWithName:v19];

    v20 = [MEMORY[0x277D0AB20] sharedInstance];
    v21 = [v16 activateSwitcherEventName];
    [v20 cancelEventsWithName:v21];

    v22 = [MEMORY[0x277D65DD0] sharedInstance];
    [v22 emitEvent:10];

    v23 = [(SBHomeScreenController *)self launchActivationSettingsForIconView:v8];
    v24 = [v16 windowManagementContext];
    if ([v24 isAutomaticStageCreationEnabled])
    {

      if ((v32 & 0x20000) != 0)
      {
        [v23 setFlag:1 forActivationSetting:73];
      }
    }

    else
    {
    }

    v25 = [v8 location];
    v26 = objc_alloc_init(SBIconLaunchContext);
    v33 = v23;
    [(SBIconLaunchContext *)v26 setActivationSettings:v23];
    [(SBIconLaunchContext *)v26 setActions:v34];
    [(SBIconLaunchContext *)v26 setIconView:v8];
    if ([v12 isWidgetIcon])
    {
      [(SBHomeScreenController *)self _launchWidgetIcon:v12 fromLocation:v25 withContext:v26];
    }

    else
    {
      v27 = [v12 performLaunchFromLocation:v25 context:v26];
      v28 = SBLogIcon();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v38) = v27;
        _os_log_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_DEFAULT, "Icon handled launch: %{BOOL}u", buf, 8u);
      }
    }

    v29 = MEMORY[0x277D0AB18];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __72__SBHomeScreenController__launchFromIconView_withActions_modifierFlags___block_invoke;
    v35[3] = &unk_2783A8C18;
    v36 = v8;
    v30 = [v29 eventWithName:@"noteActivatingAppSuggestion" handler:v35];
    v31 = [MEMORY[0x277D0AB20] sharedInstance];
    [v31 executeOrAppendEvent:v30];

    v9 = v34;
  }
}

void __72__SBHomeScreenController__launchFromIconView_withActions_modifierFlags___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) continuityInfo];
  if (v1)
  {
    v3 = v1;
    v2 = +[SBAppSuggestionManager sharedInstance];
    [v2 noteActivatingForAppSuggestion:v3 fromSource:2];

    v1 = v3;
  }
}

- (void)_launchWidgetIcon:(id)a3 fromLocation:(id)a4 withContext:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 activationSettings];
  v12 = [v10 actions];

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = objc_alloc_init(SBActivationSettings);
  }

  v14 = v13;
  v15 = [v8 activeWidget];
  v16 = v15;
  if (v15)
  {
    v25 = v12;
    v26 = v9;
    v17 = [v15 extensionBundleIdentifier];
    v18 = [v16 containerBundleIdentifier];
    v19 = [(SBHomeScreenController *)self applicationController];
    v20 = [v19 applicationWithBundleIdentifier:v18];

    v21 = SBLogIcon();
    v22 = os_log_type_enabled(&v21->super, OS_LOG_TYPE_INFO);
    if (v20)
    {
      if (v22)
      {
        *buf = 138412802;
        v34 = v18;
        v35 = 2112;
        v36 = v8;
        v37 = 2112;
        v38 = v26;
        _os_log_impl(&dword_21ED4E000, &v21->super, OS_LOG_TYPE_INFO, "Launching application %@ from widget icon %@, location: %@", buf, 0x20u);
      }

      [(SBActivationSettings *)v14 setObject:v17 forActivationSetting:14];
      v21 = objc_alloc_init(SBLockScreenUnlockRequest);
      [(SBLockScreenUnlockRequest *)v21 setSource:24];
      [(SBLockScreenUnlockRequest *)v21 setIntent:3];
      [(SBLockScreenUnlockRequest *)v21 setName:@"Launch From Widget Icon Unlock"];
      [(SBLockScreenUnlockRequest *)v21 setWantsBiometricPresentation:1];
      v23 = [(SBHomeScreenController *)self windowScene];
      [(SBLockScreenUnlockRequest *)v21 setWindowScene:v23];

      v24 = [(SBHomeScreenController *)self lockScreenManager];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __69__SBHomeScreenController__launchWidgetIcon_fromLocation_withContext___block_invoke;
      v27[3] = &unk_2783C24C0;
      v27[4] = self;
      v28 = v20;
      v29 = v8;
      v30 = v26;
      v31 = v14;
      v32 = v25;
      [v24 unlockWithRequest:v21 completion:v27];
    }

    else if (v22)
    {
      *buf = 138412802;
      v34 = v18;
      v35 = 2112;
      v36 = v8;
      v37 = 2112;
      v38 = v26;
      _os_log_impl(&dword_21ED4E000, &v21->super, OS_LOG_TYPE_INFO, "Failed to launch application %@ from widget icon %@, location: %@", buf, 0x20u);
    }

    v12 = v25;
    v9 = v26;
  }
}

void __69__SBHomeScreenController__launchWidgetIcon_fromLocation_withContext___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) userInterfaceController];
    [v3 activateApplication:*(a1 + 40) fromIcon:*(a1 + 48) location:*(a1 + 56) activationSettings:*(a1 + 64) actions:*(a1 + 72)];
  }
}

- (void)noteTransientOverlayPresented
{
  v3 = SBLogIconDragging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "transient overlay presented", v6, 2u);
  }

  v4 = [(SBHomeScreenController *)self iconManager];
  [v4 setEditing:0];

  v5 = [(SBHomeScreenController *)self iconManager];
  [v5 cancelAllDrags];
}

- (void)noteViewCovered
{
  v2 = [(SBHomeScreenController *)self iconManager];
  [v2 cancelAllFolderScrolling];
}

- (void)_lockScreenUIWillLock:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBHomeScreenController *)self windowScene];
  v6 = [v5 isMainDisplayWindowScene];

  if (v6)
  {
    v7 = [(SBHomeScreenController *)self iconManager];
    [v7 setEditing:0];
    v8 = objc_opt_class();
    v9 = [v4 userInfo];
    v10 = [v9 objectForKey:@"Animated"];
    v11 = SBSafeCast(v8, v10);

    v24 = v11;
    v12 = [v11 BOOLValue];
    [(SBHomeScreenController *)self dismissAppIconForceTouchControllers:0];
    [v7 dismissIconShareSheets];
    v13 = [(SBHomeScreenController *)self homeScreenViewController];
    v14 = [v13 presentedViewController];

    if (v14)
    {
      [v13 dismissViewControllerAnimated:v12 completion:0];
    }

    [(SBHomeScreenController *)self dismissTodayOverlayAnimated:v12];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = [SBApp windowSceneManager];
    v16 = [v15 connectedWindowScenes];

    v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v25 + 1) + 8 * i) modalLibraryController];
          if ([v21 isPresentingLibraryInForeground])
          {
            [v21 dismissLibraryAnimated:v12 completion:0];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v18);
    }

    if (v12)
    {
      [v7 dismissModalInteractions];
    }

    else
    {
      [v7 dismissModalInteractionsImmediately];
    }

    v22 = [v7 focusModeManager];
    [v22 dismissAllFocusModePopovers];
    v23 = [(SBHomeScreenController *)self _rootFolderController];
    [v23 setCurrentPageIndex:objc_msgSend(v23 animated:{"nearestIconPageIndex"), 0}];
  }
}

- (void)_lockScreenUIWillDismiss:(id)a3
{
  v4 = [(SBHomeScreenController *)self windowScene];
  v5 = [v4 isMainDisplayWindowScene];

  if (v5)
  {

    [(SBHomeScreenController *)self removeIconOcclusionReason:16 updateVisibleIcons:1];
  }
}

- (id)currentAnimationContainer
{
  v2 = self;
  v3 = [(SBHomeScreenController *)self _currentFolderController];
  v4 = v3;
  if (v3)
  {
    v2 = v3;
  }

  v5 = v2;

  return v2;
}

- (id)launchActionsForIconView:(id)a3
{
  v3 = [a3 continuityInfo];
  v4 = [v3 uniqueIdentifier];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D750D8]);
    v6 = [v4 UUIDString];
    v7 = [v3 activityType];
    v8 = [v5 initWithIdentifier:v6 activityTypeIdentifier:v7 appSuggestion:v3];

    v9 = [MEMORY[0x277CBEB98] setWithObject:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)launchURLForIconView:(id)a3
{
  v3 = a3;
  v4 = [v3 continuityInfo];
  v5 = [v4 launchURL];
  v6 = [v3 icon];

  if ([v4 launchURLRequiresInboxCopy] && objc_msgSend(v6, "isApplicationIcon"))
  {
    v7 = [v6 application];
    v8 = [v7 info];
    v9 = [v8 documentInboxURL];

    v10 = [v4 makeInboxCopyOfLaunchURLToInboxURL:v9];
LABEL_11:
    v15 = v10;

    v5 = v15;
    goto LABEL_12;
  }

  if (![v6 isBookmarkIcon])
  {
    goto LABEL_13;
  }

  v7 = v6;
  v11 = [v7 applicationToLaunch];
  v9 = v11;
  if (v11)
  {
    v12 = [v11 info];
    if ([v12 supportsYttrium])
    {
      v13 = [v7 webClip];
      v14 = [v13 alternativeFullScreen];

      if (v14)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    v10 = [v7 launchURL];
    goto LABEL_11;
  }

LABEL_12:

LABEL_13:

  return v5;
}

- (id)launchActivationSettingsForIconView:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SBActivationSettings);
  v6 = [(SBHomeScreenController *)self launchURLForIconView:v4];
  if (v6)
  {
    [(SBActivationSettings *)v5 setObject:v6 forActivationSetting:5];
  }

  v7 = [v4 _sbWindowScene];
  v8 = [v4 icon];
  v9 = objc_opt_self();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v10 = [v8 application];

  if (v10 && [v10 restrictedToTheEmbeddedDisplayInChamois] && objc_msgSend(v7, "isExtendedDisplayWindowScene"))
  {
    v9 = [SBApp windowSceneManager];
    v11 = [v9 embeddedDisplayWindowScene];

    v7 = v11;
LABEL_9:
  }

  [(SBActivationSettings *)v5 setObject:v7 forActivationSetting:69];

  return v5;
}

- (void)_mainSwitcherCreated:(id)a3
{
  v3 = [(SBHomeScreenController *)self iconManager];
  [v3 minimumHomeScreenScaleDidChange];
}

- (BOOL)isShowingHomeScreenOverlay
{
  if ([(SBHomeScreenController *)self isTodayOverlayPresented])
  {
    return 1;
  }

  return [(SBHomeScreenController *)self isMainDisplayLibraryViewVisible];
}

- (void)dismissHomeScreenOverlaysAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v40 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    v7 = dispatch_group_create();
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2020000000;
    v38 = 1;
    dispatch_group_enter(v7);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __71__SBHomeScreenController_dismissHomeScreenOverlaysAnimated_completion___block_invoke;
    v34[3] = &unk_2783C24E8;
    v36 = v37;
    v8 = v7;
    v35 = v8;
    v9 = MEMORY[0x223D6F7F0](v34);
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v33 = 1;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __71__SBHomeScreenController_dismissHomeScreenOverlaysAnimated_completion___block_invoke_2;
    v29[3] = &unk_2783C24E8;
    v31 = v32;
    v10 = v8;
    v30 = v10;
    v11 = MEMORY[0x223D6F7F0](v29);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__SBHomeScreenController_dismissHomeScreenOverlaysAnimated_completion___block_invoke_3;
    block[3] = &unk_2783C2510;
    v26 = v6;
    v27 = v37;
    v28 = v32;
    dispatch_group_notify(v10, MEMORY[0x277D85CD0], block);

    _Block_object_dispose(v32, 8);
    _Block_object_dispose(v37, 8);
    if (![(SBHomeScreenController *)self isModalAppLibrarySupported])
    {
      if (v10)
      {
        dispatch_group_enter(v10);
      }

      goto LABEL_16;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    if (![(SBHomeScreenController *)self isModalAppLibrarySupported])
    {
LABEL_16:
      [(SBHomeScreenController *)self dismissLibraryAnimated:v4 completion:v11];
      goto LABEL_17;
    }
  }

  v20 = self;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [SBApp windowSceneManager];
  v13 = [v12 connectedWindowScenes];

  v14 = [v13 countByEnumeratingWithState:&v21 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v21 + 1) + 8 * i);
        if (v10)
        {
          dispatch_group_enter(v10);
        }

        v19 = [v18 modalLibraryController];
        [v19 dismissLibraryAnimated:v4 completion:v11];
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v39 count:16];
    }

    while (v15);
  }

  self = v20;
LABEL_17:
  [(SBHomeScreenController *)self dismissTodayOverlayAnimated:v4 completion:v9];
}

uint64_t __71__SBHomeScreenController_dismissHomeScreenOverlaysAnimated_completion___block_invoke_3(void *a1)
{
  v2 = a1[4];
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v3 = *(*(a1[6] + 8) + 24);
  }

  else
  {
    v3 = 0;
  }

  return (*(v2 + 16))(v2, v3 & 1);
}

- (void)dismissRemoteWallpaperEditorViewController
{
  v3 = [(SBHomeScreenController *)self remoteWallpaperEditorViewController];

  if (v3)
  {
    v4 = [(SBHomeScreenController *)self remoteWallpaperEditorViewController];
    [v4 sendRequestDismissalAction];
  }
}

- (void)dismissTodayOverlayAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ([(SBHomeScreenController *)self isTodayOverlayPresented])
  {
    [(SBHomeScreenController *)self dismissHomeScreenOverlayControllerAnimated:v4 completion:v6];
  }

  else if (v6)
  {
    v6[2](v6, 1);
  }
}

- (void)dismissTodayOverlaySpotlightAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();
  v6 = [(SBHomeScreenController *)self todayViewController];
  v7 = SBSafeCast(v5, v6);

  [v7 dismissSpotlightAnimated:v3];
}

- (BOOL)isFileStackIconRemoteContentPresented
{
  v2 = [(SBHomeScreenController *)self windowScene];
  v3 = [v2 floatingDockController];
  v4 = [v3 remoteContentManager];

  LOBYTE(v2) = [v4 isRemoteContentPresenting];
  return v2;
}

- (void)closeFileStackIconRemoteContent
{
  v2 = [(SBHomeScreenController *)self windowScene];
  v3 = [v2 floatingDockController];
  v4 = [v3 remoteContentManager];

  [v4 closeFileStackIconIfNeeded];
}

- (void)dismissHomeScreenOverlayControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SBHomeScreenController *)self homeScreenOverlayController];
  if ([v7 isPresented])
  {
    if ([(SBHomeScreenController *)self isBackdropVisible])
    {
      [(SBHomeScreenController *)self beginRequiringLiveBackdropViewForReason:@"SBIconControllerLiveBackdropForDismissingTodayViewReason"];
    }

    [v7 setShouldUseReducedMotionAnimation:UIAccessibilityIsReduceMotionEnabled()];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __80__SBHomeScreenController_dismissHomeScreenOverlayControllerAnimated_completion___block_invoke;
    v8[3] = &unk_2783AE5A0;
    v8[4] = self;
    v9 = v7;
    v10 = v6;
    [v9 dismissAnimated:v4 completionHandler:v8];
  }

  else if (v6)
  {
    (*(v6 + 2))(v6, 1);
  }
}

uint64_t __80__SBHomeScreenController_dismissHomeScreenOverlayControllerAnimated_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) endRequiringLiveBackdropViewForReason:@"SBIconControllerLiveBackdropForDismissingTodayViewReason"];
  [*(a1 + 40) setShouldUseReducedMotionAnimation:0];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)dismissHomeScreenOverlayUsingTransitionCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(SBHomeScreenController *)self homeScreenOverlayController];
  if ([v5 isPresented])
  {
    if ([(SBHomeScreenController *)self isBackdropVisible])
    {
      [(SBHomeScreenController *)self beginRequiringLiveBackdropViewForReason:@"SBIconControllerLiveBackdropForDismissingTodayViewReason"];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __77__SBHomeScreenController_dismissHomeScreenOverlayUsingTransitionCoordinator___block_invoke;
      v7[3] = &unk_2783A9488;
      v7[4] = self;
      [v4 notifyWhenInteractionChangesUsingBlock:v7];
    }

    [v5 dismissUsingViewControllerTransitionCoordinator:v4];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __77__SBHomeScreenController_dismissHomeScreenOverlayUsingTransitionCoordinator___block_invoke_2;
    v6[3] = &unk_2783A9488;
    v6[4] = self;
    [v4 animateAlongsideTransition:v6 completion:0];
  }
}

void __77__SBHomeScreenController_dismissHomeScreenOverlayUsingTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) _rootFolderController];
  [v1 setSuppressesExtraEditingButtons:0];
}

- (void)setTemporaryIntent:(id)a3 forIconWithIdentifier:(id)a4 widgetUniqueIdentifier:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && !self->_temporaryWidgetIntents)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    temporaryWidgetIntents = self->_temporaryWidgetIntents;
    self->_temporaryWidgetIntents = v11;
  }

  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@^%@", v9, v10];
  if (v8)
  {
    v25 = 0;
    v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v25];
    v15 = v25;
    if (!v14)
    {
      v17 = SBLogWidgetIntent();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v24 = [v8 _indexingHash];
        *buf = 138544130;
        v27 = v10;
        v28 = 2048;
        v29 = v24;
        v30 = 2112;
        v31 = v13;
        v32 = 2112;
        v33 = v15;
        _os_log_error_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_ERROR, "Error archiving temporary intent widget unique identifier '%{public}@/%lld/%@': %@", buf, 0x2Au);
      }

      goto LABEL_17;
    }

    [(NSMutableDictionary *)self->_temporaryWidgetIntents setObject:v14 forKey:v13];
    v16 = [v14 length];
    v17 = SBLogWidgetIntent();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v18)
      {
        v19 = [v8 _indexingHash];
        *buf = 138543618;
        v27 = v10;
        v28 = 2048;
        v29 = v19;
        v20 = "Saving temporary intent for widget unique identifier '%{public}@'/%lld";
        v21 = v17;
        v22 = 22;
LABEL_16:
        _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
      }
    }

    else if (v18)
    {
      *buf = 138543362;
      v27 = v10;
      v20 = "Saving 0-length temporary intent for widget unique identifier '%{public}@'";
      v21 = v17;
      v22 = 12;
      goto LABEL_16;
    }

LABEL_17:

    goto LABEL_18;
  }

  v23 = SBLogWidgetIntent();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v27 = v10;
    v28 = 2048;
    v29 = [0 _indexingHash];
    v30 = 2112;
    v31 = v13;
    _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, "Removing temporary intent for widget unique identifier '%{public}@'/%lld/%@", buf, 0x20u);
  }

  [(NSMutableDictionary *)self->_temporaryWidgetIntents removeObjectForKey:v13];
LABEL_18:
}

- (id)temporaryIntentDataForIconWithIdentifier:(id)a3 widgetUniqueIdentifier:(id)a4
{
  v6 = MEMORY[0x277CCACA8];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithFormat:@"%@^%@", v8, v7];

  v10 = [(NSMutableDictionary *)self->_temporaryWidgetIntents objectForKey:v9];
  v11 = v10;
  if (v10)
  {
    [v10 length];
  }

  return v11;
}

- (BOOL)allowsHomeScreenOverlay
{
  v3 = [SBApp userSessionController];
  v4 = [v3 sessionType] != 2;

  v5 = [(SBHomeScreenController *)self iconManager];
  LOBYTE(v3) = [v5 isFolderPageManagementUIVisible];

  return v4 & ~v3;
}

- (void)getLeadingTopButtonFrame:(CGRect *)a3 trailingTopButtonFrame:(CGRect *)a4
{
  v7 = [(SBHomeScreenController *)self iconManager];
  v20 = [v7 listLayoutProvider];

  v8 = [v20 layoutForIconLocation:*MEMORY[0x277D666D0]];
  v9 = [(SBHomeScreenController *)self homeScreenViewController];
  v10 = [v9 iconContentView];
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
  [MEMORY[0x277D66430] _getTopLeadingButtonFrame:a3 topTrailingButtonFrame:a4 inBounds:v8 forListLayout:v19 withTranslationOffset:v12 inRTL:{v14, v16, v18, 0.0}];
}

- (void)enumerateTintableViewControllersUsingBlock:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(SBHomeScreenController *)self homeScreenViewController];
  v19 = v5 = v4 + 2;
  (v4[2])(v4);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __69__SBHomeScreenController_enumerateTintableViewControllersUsingBlock___block_invoke;
  v24[3] = &unk_2783C2538;
  v6 = v4;
  v25 = v6;
  v18 = self;
  [(SBHomeScreenController *)self _enumerateTodayViewControllers:v24];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [SBApp windowSceneManager];
  v8 = [v7 connectedWindowScenes];

  v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 modalLibraryController];
        v15 = [v14 libraryViewController];
        if (v15)
        {
          (*v5)(v6, v15);
        }

        v16 = [v13 floatingDockController];
        v17 = [v16 viewController];
        if (v17)
        {
          (*v5)(v6, v17);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v10);
  }

  if (v18->_overlayLibraryViewController)
  {
    (*v5)(v6);
  }
}

- (void)updateHomeScreenTraitOverridesForViewController:(id)a3
{
  v4 = [a3 traitOverrides];
  [(SBHomeScreenController *)self updateHomeScreenTraitOverridesForTraitOverrides:v4];
}

- (void)updateHomeScreenTraitOverridesForWindowScene:(id)a3
{
  v4 = [a3 traitOverrides];
  [(SBHomeScreenController *)self updateHomeScreenTraitOverridesForTraitOverrides:v4];
}

- (void)updateHomeScreenTraitOverridesForTraitOverrides:(id)a3
{
  v8 = a3;
  v4 = [(SBHomeScreenController *)self iconStylePickerConfigurationForIconManager:self->_iconManager];
  v5 = objc_opt_self();
  if (v4)
  {
    [v8 setObject:v4 forTrait:v5];
  }

  else
  {
    [v8 removeTrait:v5];
  }

  v6 = [(SBWallpaperIconStyleCoordinator *)self->_iconStyleCoordinator isWallpaperDimmed];
  v7 = objc_opt_self();
  [v8 setNSIntegerValue:v6 forTrait:v7];
}

- (void)caseAttachedStateDidUpdateWithColor:(id)a3
{
  iconStyleCoordinator = self->_iconStyleCoordinator;
  v5 = a3;
  v6 = [(SBWallpaperIconStyleCoordinator *)iconStyleCoordinator currentStyleConfiguration];
  v7 = [v6 mutableCopy];

  [v7 setCaseAccentColor:v5];
  [(SBWallpaperIconStyleCoordinator *)self->_iconStyleCoordinator setCurrentStyleConfiguration:v7];
}

- (void)iconManagerWantsIconSizeToggled:(id)a3
{
  iconStyleCoordinator = self->_iconStyleCoordinator;
  v4 = [(SBWallpaperIconStyleCoordinator *)iconStyleCoordinator shouldUseLargeHomeScreenIcons]^ 1;

  [(SBWallpaperIconStyleCoordinator *)iconStyleCoordinator setShouldUseLargeHomeScreenIcons:v4];
}

- (void)removeHomeScreenTraitOverridesForViewController:(id)a3
{
  v5 = [a3 traitOverrides];
  v3 = objc_opt_self();
  [v5 removeTrait:v3];

  v4 = objc_opt_self();
  [v5 removeTrait:v4];
}

- (void)setCurrentHomeScreenIconStyleConfiguration:(id)a3
{
  v5 = [a3 sb_iconImageStyleConfiguration];
  v4 = [v5 homeScreenConfiguration];
  [(SBWallpaperIconStyleCoordinator *)self->_iconStyleCoordinator setCurrentStyleConfiguration:v4];
  [(SBHomeScreenController *)self iconStyleCoordinatorDidUpdate:self->_iconStyleCoordinator];
}

- (void)setCurrentHomeScreenIconStyleConfiguration:(id)a3 wallpaperDimmed:(BOOL)a4
{
  v4 = a4;
  v7 = [a3 sb_iconImageStyleConfiguration];
  v6 = [v7 homeScreenConfiguration];
  [(SBWallpaperIconStyleCoordinator *)self->_iconStyleCoordinator setCurrentStyleConfiguration:v6];
  [(SBWallpaperIconStyleCoordinator *)self->_iconStyleCoordinator setWallpaperDimmed:v4];
  [(SBHomeScreenController *)self iconStyleCoordinatorDidUpdate:self->_iconStyleCoordinator];
}

- (SBHIconImageAppearance)currentIconImageAppearance
{
  v2 = [(SBHomeScreenController *)self rootViewController];
  v3 = [v2 traitCollection];
  v4 = [MEMORY[0x277D75C80] sbh_iconImageAppearanceFromTraitCollection:v3];

  return v4;
}

- (void)addIconStyleObserver:(id)a3
{
  v4 = a3;
  iconStyleObservers = self->_iconStyleObservers;
  v8 = v4;
  if (!iconStyleObservers)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_iconStyleObservers;
    self->_iconStyleObservers = v6;

    v4 = v8;
    iconStyleObservers = self->_iconStyleObservers;
  }

  [(NSHashTable *)iconStyleObservers addObject:v4];
}

- (void)informIconStyleObserversOfStyleChange
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(SBHomeScreenController *)self currentIconStyleConfiguration];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(NSHashTable *)self->_iconStyleObservers copy];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) iconStyleProvider:self didUpdateIconStyleConfiguration:v3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)createFloatingDockControllerForWindowScene:(id)a3
{
  v4 = a3;
  if (+[SBFloatingDockController isFloatingDockSupported])
  {
    v5 = [[SBFloatingDockController alloc] initWithWindowScene:v4 homeScreenContextProvider:self];
    [(SBHomeScreenController *)self _configureFloatingDockController:v5 forWindowScene:v4];
    [(SBHomeScreenController *)self updateHomeScreenTraitOverridesForWindowScene:v4];
    v6 = [(SBHomeScreenController *)self additionalFloatingDockControllers];
    if (!v6)
    {
      v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      [(SBHomeScreenController *)self setAdditionalFloatingDockControllers:v6];
    }

    [v6 addObject:v5];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_configureFloatingDockController:(id)a3 forWindowScene:(id)a4
{
  v6 = a3;
  [v6 registerForWindowScene:a4];
  [(SBHomeScreenController *)self notifyFloatingDockControllerObserversDidRegister:v6];
}

- (void)addFloatingDockControllerObserver:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (!v4)
  {
    [SBHomeScreenController addFloatingDockControllerObserver:];
    v4 = 0;
  }

  if (![(NSHashTable *)self->_floatingDockControllerObservers containsObject:v4])
  {
    floatingDockControllerObservers = self->_floatingDockControllerObservers;
    if (!floatingDockControllerObservers)
    {
      v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v7 = self->_floatingDockControllerObservers;
      self->_floatingDockControllerObservers = v6;

      floatingDockControllerObservers = self->_floatingDockControllerObservers;
    }

    [(NSHashTable *)floatingDockControllerObservers addObject:v8];
  }
}

- (void)removeFloatingDockControllerObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    [SBHomeScreenController removeFloatingDockControllerObserver:];
    v4 = 0;
  }

  [(NSHashTable *)self->_floatingDockControllerObservers removeObject:v4];
}

- (void)notifyFloatingDockControllerObserversDidRegister:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSHashTable *)self->_floatingDockControllerObservers copy];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 floatingDockControllerDidRegister:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)preferredFocusEnvironments
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = [(SBHomeScreenController *)self _currentFolderController];
  v4 = [(SBHomeScreenController *)self homeScreenOverlayController];
  v5 = [(SBHomeScreenController *)self windowScene];
  v6 = [v5 modalLibraryController];

  if ([v4 isPresented])
  {
    v7 = [v4 viewController];
    v14[0] = v7;
    v8 = MEMORY[0x277CBEA60];
    v9 = v14;
LABEL_5:
    v10 = [v8 arrayWithObjects:v9 count:1];

    goto LABEL_6;
  }

  if ([v6 isPresentingLibraryInForeground])
  {
    v7 = [v6 libraryViewController];
    v13 = v7;
    v8 = MEMORY[0x277CBEA60];
    v9 = &v13;
    goto LABEL_5;
  }

  if (v3)
  {
    v12 = v3;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

LABEL_6:

  return v10;
}

- (void)_reduceMotionStatusDidChange:(id)a3
{
  [(SBHomeScreenController *)self _resetHomeScreenBackdropView];
  v14 = [(SBHomeScreenController *)self searchPresentableViewController];
  [v14 invalidateBackgroundView];
  [v14 invalidateSearchAffordanceView];
  v4 = [(SBHomeScreenController *)self scrollAccessoryAuxiliaryView];
  if (v4)
  {
    v5 = v4;
    v6 = [(SBHomeScreenController *)self searchPresenter];
    v7 = [v6 isPresenting];

    if (v7)
    {
      v8 = objc_opt_class();
      v9 = [(SBHomeScreenController *)self _rootFolderController];
      v10 = [v9 contentView];
      v11 = SBSafeCast(v8, v10);

      if (UIAccessibilityIsReduceMotionEnabled())
      {
        v12 = 1.0;
      }

      else
      {
        v12 = 0.0;
      }

      v13 = [v11 scrollAccessoryView];
      [v13 setAlpha:v12];
    }
  }
}

- (void)_backgroundContrastDidChange:(id)a3
{
  [(SBHomeScreenController *)self _resetHomeScreenBackdropView];
  v5 = [(SBHomeScreenController *)self windowScene];
  v4 = [v5 statusBarManager];
  [v4 updateHomeScreenStatusBarLegibility];
}

- (void)_noteStatusBarHeightChanged:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D0AB18];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __54__SBHomeScreenController__noteStatusBarHeightChanged___block_invoke;
  v12 = &unk_2783A92D8;
  v13 = v4;
  v14 = self;
  v6 = v4;
  v7 = [v5 eventWithName:@"updateLayoutForStatusBarHeightChange" handler:&v9];
  v8 = [MEMORY[0x277D0AB20] sharedInstance];
  [v8 executeOrPrependEvent:v7];
}

void __54__SBHomeScreenController__noteStatusBarHeightChanged___block_invoke(uint64_t a1)
{
  if (SBWorkspaceSpringBoardIsActive())
  {
    v2 = [*(a1 + 32) userInfo];
    v5 = [v2 objectForKey:*MEMORY[0x277D76710]];

    if (v5)
    {
      [v5 doubleValue];
    }

    else
    {
      v3 = 0.0;
    }

    [*(a1 + 40) updateNumberOfRowsWithDuration:v3];
  }

  else
  {
    v4 = *(a1 + 40);

    [v4 updateNumberOfRowsWithDuration:0.0];
  }
}

- (void)handleNavigationCommand:(id)a3 withDirection:(int64_t)a4
{
  v6 = [SBApp windowSceneManager];
  v37 = [v6 activeDisplayWindowScene];

  if (![v37 isMainDisplayWindowScene])
  {
    goto LABEL_89;
  }

  v7 = [(SBHomeScreenController *)self isModalAppLibrarySupported];
  v8 = v7;
  if (a4 == 4)
  {
    if (v7)
    {
      v10 = [v37 modalLibraryController];
      v11 = [v10 libraryViewController];
      v12 = [v10 isPresentingLibrary];

      if (v12)
      {
LABEL_6:
        [(SBHLibraryViewController *)v11 popPresentationState];
        v9 = 1;
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      v11 = self->_overlayLibraryViewController;
      v13 = [(SBHomeScreenController *)self iconManager];
      v14 = [v13 isMainDisplayLibraryViewVisible];

      if (v14)
      {
        goto LABEL_6;
      }
    }

    v9 = 0;
    goto LABEL_9;
  }

  v9 = 0;
LABEL_10:
  if (!-[SBHomeScreenController areHomeScreenIconsOccluded](self, "areHomeScreenIconsOccluded") && [v37 isMainDisplayWindowScene])
  {
    v15 = [(SBHomeScreenController *)self _currentFolderController];
    v16 = [(SBHomeScreenController *)self _rootFolderController];
    v17 = [v15 currentPageIndex];
    v18 = [v15 contentVisibility];
    if (v17 == [v15 firstIconPageIndex])
    {
      v19 = v9;
    }

    else
    {
      v19 = 1;
    }

    v20 = v9;
    if ((v19 & 1) == 0)
    {
      v20 = v9;
      if (v15 == v16)
      {
        v21 = [(SBHomeScreenController *)self isTodayOverlayPresented];
        if (a4 != 1 || v21)
        {
          if ((a4 == 4 || a4 == 2) && v21)
          {
            v20 = 1;
            [(SBHomeScreenController *)self dismissTodayOverlayAnimated:1];
            goto LABEL_27;
          }
        }

        else if (v18 == 3 || !v18)
        {
          v22 = [(SBHomeScreenController *)self iconManager];
          [(SBHomeScreenController *)self presentTodayOverlayForIconManager:v22];

          v20 = 1;
          goto LABEL_27;
        }

        v20 = 0;
      }
    }

LABEL_27:
    if (v8)
    {
      v23 = [v16 trailingCustomViewPageIndex];
      if (v17 == [v15 lastIconPageIndex])
      {
        v24 = v20;
      }

      else
      {
        v24 = 1;
      }

      if (a4 != 2 || (v24 & 1) != 0 || v15 != v16)
      {
        if (v17 == v23)
        {
          v29 = v20;
        }

        else
        {
          v29 = 1;
        }

        if (a4 == 1 && (v29 & 1) == 0 && v15 == v16)
        {
          v30 = [v37 modalLibraryController];
          [v30 dismissLibraryAnimated:1 completion:0];

          goto LABEL_88;
        }

        goto LABEL_61;
      }

      if (v18 == 3 || !v18)
      {
        v25 = v15;
        v26 = v23;
LABEL_87:
        [v25 setCurrentPageIndex:v26 animated:1];
        goto LABEL_88;
      }
    }

    else
    {
      if (v17 == [v15 lastIconPageIndex])
      {
        v27 = v20;
      }

      else
      {
        v27 = 1;
      }

      if ((v27 & 1) != 0 || v15 != v16)
      {
LABEL_61:
        if (a4 - 3) < 0xFFFFFFFFFFFFFFFELL || (v20)
        {
          if (a4 == 4)
          {
            v32 = v20;
          }

          else
          {
            v32 = 1;
          }

          if ((v32 & 1) == 0 && (v18 == 3 || !v18))
          {
            if ([v15 isOpen])
            {
              v33 = [v15 folder];
              v34 = [v33 isRootFolder];

              if ((v34 & 1) == 0)
              {
                [v15 _closeFolder];
              }
            }
          }

          goto LABEL_88;
        }

        if (a4 == 2)
        {
          v31 = v17 + 1;
        }

        else
        {
          v31 = v17 - 1;
        }

        if ((v18 == 3 || !v18) && [v15 _isValidPageIndex:v31])
        {
          if (__sb__runningInSpringBoard())
          {
            if (SBFEffectiveDeviceClass() == 2 && ![v15 doesPageContainIconListView:v31])
            {
              goto LABEL_88;
            }
          }

          else
          {
            v35 = [MEMORY[0x277D75418] currentDevice];
            if ([v35 userInterfaceIdiom] == 1)
            {
              v36 = [v15 doesPageContainIconListView:v31];

              if ((v36 & 1) == 0)
              {
                goto LABEL_88;
              }
            }

            else
            {
            }
          }

          v25 = v15;
          v26 = v31;
          goto LABEL_87;
        }

LABEL_88:

        goto LABEL_89;
      }

      if (a4 == 2)
      {
        v28 = v9;
      }

      else
      {
        v28 = 1;
      }

      if (v28)
      {
        if ((a4 == 4 || a4 == 1) && v9)
        {
          [(SBHomeScreenController *)self dismissLibraryAnimated:1 completion:0];
          goto LABEL_88;
        }
      }

      else if (v18 == 3 || !v18)
      {
        [(SBHomeScreenController *)self presentLibraryFromOverlayControllerAnimated:1 completion:0];
        goto LABEL_88;
      }
    }

    v20 = 0;
    goto LABEL_61;
  }

LABEL_89:
}

- (void)_configureEditingGestureRecognizers
{
  if (!self->_longPressToEditGestureRecognizer)
  {
    v3 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__handleEditingGesture_];
    longPressToEditGestureRecognizer = self->_longPressToEditGestureRecognizer;
    self->_longPressToEditGestureRecognizer = v3;

    [(UILongPressGestureRecognizer *)self->_longPressToEditGestureRecognizer setDelegate:self];
    v5 = [(SBHomeScreenController *)self homeScreenViewController];
    v6 = [v5 view];
    [v6 addGestureRecognizer:self->_longPressToEditGestureRecognizer];
  }

  if (!self->_tapToEndEditingGestureRecognizer)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleEditingGesture_];
    tapToEndEditingGestureRecognizer = self->_tapToEndEditingGestureRecognizer;
    self->_tapToEndEditingGestureRecognizer = v7;

    [(UITapGestureRecognizer *)self->_tapToEndEditingGestureRecognizer setDelegate:self];
    v9 = [(SBHomeScreenController *)self homeScreenViewController];
    v10 = [v9 view];
    [v10 addGestureRecognizer:self->_tapToEndEditingGestureRecognizer];
  }

  v11 = self->_longPressToEditGestureRecognizer;
  [(SBHIconEditingSettings *)self->_iconEditingSettings longPressToEditDuration];

  [(UILongPressGestureRecognizer *)v11 setMinimumPressDuration:?];
}

- (void)_handleEditingGesture:(id)a3
{
  v8 = a3;
  v4 = [(SBHomeScreenController *)self iconManager];
  if (self->_longPressToEditGestureRecognizer == v8)
  {
    if ([(UITapGestureRecognizer *)v8 state]== 1)
    {
      v5 = [v4 iconEditingFeedbackBehavior];
      v6 = [(SBHomeScreenController *)self homeScreenViewController];
      v7 = [v6 view];
      [(UITapGestureRecognizer *)v8 locationInView:v7];
      [v4 setEditing:1 withFeedbackBehavior:v5 location:?];

      [(UITapGestureRecognizer *)v8 setEnabled:0];
      [(UITapGestureRecognizer *)v8 setEnabled:1];
    }
  }

  else if (self->_tapToEndEditingGestureRecognizer == v8)
  {
    [v4 setEditing:0 withFeedbackBehavior:0 location:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBHomeScreenController *)self windowScene];
  v9 = [v8 controlCenterController];
  v10 = [v9 isPresented];

  if (v10)
  {
    v11 = 0;
  }

  else if (self->_homeScreenBackgroundTapGestureRecognizer == v6)
  {
    v16 = [v8 controlCenterController];
    v17 = [v16 isPresentedOrDismissing];

    v11 = v17 ^ 1;
  }

  else if (self->_longPressToEditGestureRecognizer == v6 || self->_tapToEndEditingGestureRecognizer == v6)
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 1;
    v12 = [(SBHomeScreenController *)self iconManager];
    v13 = [v12 isEditing];
    v14 = [v12 isFolderPageManagementUIVisible];
    v15 = [v12 isShowingIconContextMenu];
    if (self->_longPressToEditGestureRecognizer == v6)
    {
      *(v46 + 24) = ((v13 | v14 | v15) & 1) == 0;
    }

    else if (self->_tapToEndEditingGestureRecognizer == v6)
    {
      if (v14 & 1 | ((v13 & 1) == 0) | v15 & 1)
      {
        *(v46 + 24) = 0;
      }

      else
      {
        v18 = [(SBHomeScreenController *)self iconDragManager];
        v19 = [v18 isTrackingUserActiveIconDrags];
        *(v46 + 24) = v19 ^ 1;
      }
    }

    if (*(v46 + 24) == 1)
    {
      if (self->_longPressToEditGestureRecognizer != v6)
      {
        goto LABEL_19;
      }

      v20 = objc_opt_class();
      v21 = [(SBHomeScreenController *)self _rootFolderController];
      v22 = [v21 contentView];
      v23 = SBSafeCast(v20, v22);

      if (v23)
      {
        [v23 enterEditingTouchRect];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;
        [v7 locationInView:v23];
        v49.x = v32;
        v49.y = v33;
        v50.origin.x = v25;
        v50.origin.y = v27;
        v50.size.width = v29;
        v50.size.height = v31;
        *(v46 + 24) = CGRectContainsPoint(v50, v49);
      }

      if (v46[3])
      {
LABEL_19:
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __63__SBHomeScreenController_gestureRecognizer_shouldReceiveTouch___block_invoke;
        v41[3] = &unk_2783C2560;
        v34 = v7;
        v42 = v34;
        v35 = v12;
        v43 = v35;
        v44 = &v45;
        [v35 enumerateDisplayedIconViewsUsingBlock:v41];

        if ((v46[3] & 1) != 0 && [v35 isOverlayTodayViewVisible])
        {
          v36 = [(SBHomeScreenController *)self todayViewController];
          v37 = [(SBHomeScreenController *)self _shouldTodayViewController:v36 receiveTouch:v34];
          *(v46 + 24) = v37;
        }
      }
    }

    if (*(v46 + 24) == 1 && [v12 isMainDisplayLibraryViewVisible])
    {
      v38 = [(SBHomeScreenController *)self libraryViewControllerForWindowScene:v8];
      v39 = [v38 isPresentingSearch];
      *(v46 + 24) = v39 ^ 1;
    }

    v11 = *(v46 + 24);

    _Block_object_dispose(&v45, 8);
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

void __63__SBHomeScreenController_gestureRecognizer_shouldReceiveTouch___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  [*(a1 + 32) locationInView:v9];
  v6 = v5;
  v8 = v7;
  [v9 bounds];
  v11.x = v6;
  v11.y = v8;
  if (CGRectContainsPoint(v12, v11) && SBIconViewQueryingDisplayingIconView())
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a3 = 1;
  }
}

- (BOOL)_shouldTodayViewController:(id)a3 receiveTouch:(id)a4
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 isSpotlightVisible] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  if (self->_longPressToEditGestureRecognizer == a3 && (objc_opt_self(), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_isKindOfClass(), v7, (v8 & 1) != 0))
  {
    v9 = [v6 view];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)_configureNavigationGestureRecognizersIfNeeded
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)addIconOcclusionReason:(unint64_t)a3 updateVisibleIcons:(BOOL)a4
{
  v4 = a4;
  v7 = [(SBHomeScreenController *)self iconOcclusionReasons];
  if ((a3 & ~v7) != 0)
  {
    [(SBHomeScreenController *)self setIconOcclusionReasons:v7 | a3];
    if (v4)
    {

      [(SBHomeScreenController *)self _updateVisibleIconsAfterOcclusionChange];
    }
  }
}

- (void)removeIconOcclusionReason:(unint64_t)a3 updateVisibleIcons:(BOOL)a4
{
  v4 = a4;
  v7 = [(SBHomeScreenController *)self iconOcclusionReasons];
  if ((v7 & a3) != 0)
  {
    [(SBHomeScreenController *)self setIconOcclusionReasons:v7 & ~a3];
    if (v4)
    {

      [(SBHomeScreenController *)self _updateVisibleIconsAfterOcclusionChange];
    }
  }
}

- (id)markIconsOccludedForReason:(id)a3
{
  v4 = a3;
  if (!self->_iconsOccludedAssertions)
  {
    v5 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    iconsOccludedAssertions = self->_iconsOccludedAssertions;
    self->_iconsOccludedAssertions = v5;
  }

  v7 = [[SBIconsOccludedAssertion alloc] initWithInvalidator:self reason:v4];
  [(NSHashTable *)self->_iconsOccludedAssertions addObject:v7];
  [(SBHomeScreenController *)self addIconOcclusionReason:64 updateVisibleIcons:1];

  return v7;
}

- (void)removeIconsOccludedAssertion:(id)a3
{
  v4 = a3;
  if ([(NSHashTable *)self->_iconsOccludedAssertions containsObject:?])
  {
    [(NSHashTable *)self->_iconsOccludedAssertions removeObject:v4];
    if (![(NSHashTable *)self->_iconsOccludedAssertions count])
    {
      [(SBHomeScreenController *)self removeIconOcclusionReason:64 updateVisibleIcons:1];
    }
  }
}

- (void)_coverSheetWillPresent:(id)a3
{
  v4 = [(SBHomeScreenController *)self iconManager];
  [v4 setEditing:0];

  v5 = [(SBHomeScreenController *)self iconManager];
  [v5 cancelAllDrags];
}

- (void)_coverSheetDidPresent:(id)a3
{
  [(SBHomeScreenController *)self dismissTodayOverlayAnimated:0];
  v4 = [(SBHomeScreenController *)self remoteWallpaperEditorViewController];
  [v4 sendRequestDismissalAction];
}

- (void)_controlCenterWillPresent:(id)a3
{
  if ([(SBHomeScreenController *)self _controlCenterIsOnTheSameWindowScene:a3])
  {
    v4 = [(SBHomeScreenController *)self iconManager];
    [v4 setEditing:0];

    v5 = [(SBHomeScreenController *)self iconManager];
    [v5 cancelAllDrags];
  }
}

- (void)_controlCenterDidPresent:(id)a3
{
  if ([(SBHomeScreenController *)self _controlCenterIsOnTheSameWindowScene:a3])
  {
    [(SBHomeScreenController *)self addIconOcclusionReason:4 updateVisibleIcons:1];
    v4 = [(SBHomeScreenController *)self iconManager];
    [v4 setEditing:0];

    v5 = [(SBHomeScreenController *)self iconManager];
    [v5 cancelAllDrags];
  }
}

- (void)_controlCenterWillDismiss:(id)a3
{
  if ([(SBHomeScreenController *)self _controlCenterIsOnTheSameWindowScene:a3])
  {

    [(SBHomeScreenController *)self removeIconOcclusionReason:4 updateVisibleIcons:1];
  }
}

- (BOOL)_controlCenterIsOnTheSameWindowScene:(id)a3
{
  v4 = a3;
  v5 = [(SBHomeScreenController *)self windowScene];
  v6 = [v4 object];

  v7 = [v6 objectForKeyedSubscript:@"SBControlCenterNotificationWindowSceneKey"];

  return v5 == v7;
}

- (void)_policyAggregatorCapabilitiesDidChange:(id)a3
{
  v5 = [(SBHomeScreenController *)self policyAggregator];
  if (([v5 allowsCapability:24] & 1) == 0)
  {
    [(SBHomeScreenController *)self dismissTodayOverlay];
  }

  if (([v5 allowsCapability:18] & 1) == 0)
  {
    v4 = [(SBHomeScreenController *)self iconManager];
    [v4 setEditing:0];
  }
}

- (void)setModel:(id)a3
{
  v5 = a3;
  if (self->_iconModel != v5)
  {
    v6 = [(SBHomeScreenController *)self iconManager];
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = *MEMORY[0x277D666F0];
    [v7 removeObserver:self name:*MEMORY[0x277D666F0] object:self->_iconModel];
    v9 = [(SBHomeScreenController *)self overlayLibraryViewController];
    [v9 invalidate];

    [(SBHomeScreenController *)self setOverlayLibraryViewController:0];
    [v6 setOverlayLibraryViewController:0];
    [(SBHomeScreenController *)self setHomeScreenOverlayController:0];
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v11 = SBLogIcon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(SBHomeScreenController *)WeakRetained setModel:v11];
    }

    objc_storeStrong(&self->_iconModel, a3);
    [v6 setIconModel:v5];
    [v7 addObserver:self selector:sel__iconModelDidLayout_ name:v8 object:self->_iconModel];
    v12 = [(SBHIconModel *)self->_iconModel rootFolder];

    if (v12)
    {
      [(SBHomeScreenController *)self _rootFolderDidChange];
    }

    if ([(SBHomeScreenController *)self isAppLibrarySupported])
    {
      v13 = [(SBHomeScreenController *)self iconManager];

      if (v13)
      {
        if (![(SBHomeScreenController *)self isModalAppLibrarySupported])
        {
          v14 = [(SBHomeScreenController *)self windowScene];
          v15 = [(SBHomeScreenController *)self _setUpLibraryViewControllerForWindowScene:v14];
          [(SBHomeScreenController *)self setOverlayLibraryViewController:v15];
          v16 = [(SBHomeScreenController *)self iconManager];
          [v16 setOverlayLibraryViewController:v15];
        }
      }
    }
  }
}

- (void)_showsBadgesInAppLibraryDidChange
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = +[SBDefaults localDefaults];
  v4 = [v3 homeScreenDefaults];
  v5 = [v4 showsBadgesInAppLibrary];

  v6 = [(SBHomeScreenController *)self _libraryViewControllers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) setAllowsBadging:v5];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_iconModelDidChange:(id)a3
{
  v7 = [a3 object];
  WeakRetained = objc_loadWeakRetained(&self->_iconController);

  v5 = v7;
  if (WeakRetained == v7)
  {
    v6 = [v7 iconModel];
    [(SBHomeScreenController *)self setModel:v6];

    v5 = v7;
  }
}

- (void)addSmartStacksForWidgetDiscoverabilityAndPrepareWidgetIntroduction
{
  v8 = [(SBHomeScreenController *)self iconManager];
  v3 = +[SBDefaults localDefaults];
  v4 = [v3 homeScreenDefaults];

  v5 = [v8 deviceTypeSupportModalWidgetIntroduction];
  if (v5)
  {
    v6 = [(SBHomeScreenController *)self alertItemsController];
    [v6 setForceAlertsToPend:1 forReason:@"SBHomeScreenWidgetDiscoverabilityIntroduction"];
  }

  if ([v8 addDefaultWidgetsToHomeScreen])
  {
    [v8 scrollToDefaultWidgets];
    [v4 setShouldAddDefaultWidgetsToHomeScreen:0];
    v7 = [(SBHomeScreenController *)self iconManager];
    [v7 disableUserInteractionForWidgetDiscoverability];
LABEL_9:

    goto LABEL_10;
  }

  if ([v8 rootFolderContainsWidgets])
  {
    [v4 setShouldAddDefaultWidgetsToHomeScreen:0];
  }

  if (v5)
  {
    v7 = [(SBHomeScreenController *)self alertItemsController];
    [v7 setForceAlertsToPend:0 forReason:@"SBHomeScreenWidgetDiscoverabilityIntroduction"];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)updateDefaultFirstPageWidgetDescriptors:(id)a3 withSizeClass:(id)a4 andGridCellInfoOptions:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(SBHomeScreenController *)self iconManager];
  [v10 setDefaultFirstPageWidgetDescriptors:v9];

  [v10 setDefaultFirstPageWidgetSizeClass:v8];
  [v10 setGridCellInfoOptionsForInsertingDefaultWidgets:a5];
}

- (void)displayFeatureIntroductionItem:(id)a3 atLocation:(unint64_t)a4
{
  v6 = a3;
  if ([v6 shouldDisplayFeatureIntroductionAtLocations:a4])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v7 = [v6 featureIntroductionIdentifier];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v6 shouldDeferAlertsAtLocations:a4])
    {
      *(v14 + 24) = 1;
      v8 = [(SBHomeScreenController *)self alertItemsController];
      [v8 setForceAlertsToPend:1 forReason:v7];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0 || ![v6 shouldPauseUserInteractionAtLocations:a4])
      {
        goto LABEL_9;
      }

      v8 = [(SBHomeScreenController *)self iconManager];
      [v8 disableUserInteractionForWidgetDiscoverability];
    }

LABEL_9:
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __68__SBHomeScreenController_displayFeatureIntroductionItem_atLocation___block_invoke;
    v10[3] = &unk_2783AB258;
    v12 = &v13;
    v10[4] = self;
    v9 = v7;
    v11 = v9;
    [v6 displayFeatureIntroductionAtLocations:a4 presentCompletion:0 dismissCompletion:v10];

    _Block_object_dispose(&v13, 8);
  }
}

void __68__SBHomeScreenController_displayFeatureIntroductionItem_atLocation___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v3 = [*(a1 + 32) alertItemsController];
    [v3 setForceAlertsToPend:0 forReason:*(a1 + 40)];
  }
}

- (void)displayFeatureIntroductionsAtLocation:(unint64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(SBHomeScreenController *)self iconManager];
  v6 = [v5 featureIntroductionManager];
  v7 = [v6 featureIntroductionItemAtLocation:a3];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v7 allObjects];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(SBHomeScreenController *)self displayFeatureIntroductionItem:*(*(&v13 + 1) + 8 * v12++) atLocation:a3];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_unlockAnimationDidFinish:(id)a3
{
  v5 = [(SBHomeScreenController *)self iconManager];
  v4 = [v5 focusModeManager];
  [v4 updateFocusModePopoverVisibility];
  [(SBHomeScreenController *)self displayFeatureIntroductionsAtLocation:4];
}

- (void)_rootFolderDidChange
{
  v14 = [(SBHomeScreenController *)self iconManager];
  v3 = [(SBHomeScreenController *)self iconModel];
  v4 = [v3 rootFolder];
  v5 = [SBApp userSessionController];
  v6 = [v5 sessionType];

  if (v6 == 2)
  {
    [v14 removeWidgetIconsFromHomeScreen];
  }

  v7 = [v4 todayList];
  v8 = [(SBHomeScreenController *)self todayViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [(SBHomeScreenController *)self todayViewController];
    [v10 setRootFolder:v4];
  }

  else
  {
    if (!v14)
    {
      goto LABEL_9;
    }

    v10 = [(SBHomeScreenController *)self _newTodayViewControllerWithIconManager:v14 iconListModel:v7 rootFolder:v4 location:1];
    [(SBHomeScreenController *)self setTodayViewController:v10];
    if (![(SBHomeScreenController *)self _isCoplanarHomeScreenEnabled])
    {
      [(SBHIconManager *)self->_iconManager setOverlayTodayViewController:v10];
    }
  }

LABEL_9:
  [(SBHomeScreenController *)self _setupOverlayLibraryViewController];
  v11 = [(SBHomeScreenController *)self coverSheetTodayViewController];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  if (v12)
  {
    v13 = [(SBHomeScreenController *)self coverSheetTodayViewController];
    [v13 setRootFolder:v4];
  }

  else
  {
    if (!v14)
    {
      goto LABEL_14;
    }

    v13 = [(SBHomeScreenController *)self _newTodayViewControllerWithIconManager:v14 iconListModel:v7 rootFolder:v4 location:2];
    [(SBHomeScreenController *)self setCoverSheetTodayViewController:v13];
  }

LABEL_14:
  [v4 addFolderObserver:self];
}

- (void)_makeTodayViewControllers
{
  v10 = [(SBHomeScreenController *)self iconManager];
  v3 = [(SBHomeScreenController *)self iconModel];
  v4 = [v3 rootFolder];
  v5 = [v4 todayList];
  v6 = [(SBHomeScreenController *)self todayViewController];

  if (!v6)
  {
    v7 = [(SBHomeScreenController *)self _newTodayViewControllerWithIconManager:v10 iconListModel:v5 rootFolder:v4 location:1];
    [(SBHomeScreenController *)self setTodayViewController:v7];
    if (![(SBHomeScreenController *)self _isCoplanarHomeScreenEnabled])
    {
      [(SBHIconManager *)self->_iconManager setOverlayTodayViewController:v7];
    }
  }

  v8 = [(SBHomeScreenController *)self coverSheetTodayViewController];

  if (!v8)
  {
    v9 = [(SBHomeScreenController *)self _newTodayViewControllerWithIconManager:v10 iconListModel:v5 rootFolder:v4 location:2];
    [(SBHomeScreenController *)self setCoverSheetTodayViewController:v9];
  }
}

- (void)_rebuildTodayViewControllers
{
  [(SBHomeScreenController *)self setTodayViewController:0];
  [(SBHomeScreenController *)self setCoverSheetTodayViewController:0];

  [(SBHomeScreenController *)self _makeTodayViewControllers];
}

- (void)_enumerateTodayViewControllers:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SBHomeScreenController *)self todayViewController];

    if (v5)
    {
      v5 = objc_opt_new();
      v6 = [(SBHomeScreenController *)self todayViewController];
      [v5 bs_safeAddObject:v6];
    }

    v7 = [(SBHomeScreenController *)self coverSheetTodayViewController];

    if (v7)
    {
      if (!v5)
      {
        v5 = objc_opt_new();
      }

      v8 = [(SBHomeScreenController *)self coverSheetTodayViewController];
      [v5 bs_safeAddObject:v8];
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__SBHomeScreenController__enumerateTodayViewControllers___block_invoke;
    v9[3] = &unk_2783C2588;
    v10 = v4;
    [v5 enumerateObjectsUsingBlock:v9];
  }
}

- (BOOL)iconsSnapToGrid
{
  if (__sb__runningInSpringBoard())
  {
    return SBFEffectiveDeviceClass() == 2;
  }

  v3 = [MEMORY[0x277D75418] currentDevice];
  v2 = [v3 userInterfaceIdiom] == 1;

  return v2;
}

- (BOOL)isAppLibraryAllowed
{
  if (![(SBHomeScreenController *)self isAppLibrarySupported])
  {
    return 0;
  }

  if ([SBApp homeScreenRotationStyle] == 1)
  {
    return 1;
  }

  v4 = [(SBHomeScreenController *)self homeScreenViewController];
  v3 = ([v4 orientation] - 5) < 0xFFFFFFFFFFFFFFFELL;

  return v3;
}

- (id)createModalLibraryControllerForWindowScene:(id)a3
{
  v4 = a3;
  if ([(SBHomeScreenController *)self isModalAppLibrarySupported])
  {
    v5 = [(SBHomeScreenController *)self _iconController];
    v6 = [v5 libraryCategoryMapProvider];

    v7 = [v4 floatingDockController];
    if (!v7)
    {
      [SBHomeScreenController createModalLibraryControllerForWindowScene:];
    }

    v8 = [(SBHomeScreenController *)self iconManager];

    if (v8)
    {
      v8 = [(SBHomeScreenController *)self _setUpLibraryViewControllerForWindowScene:v4];
    }

    v9 = [SBModalLibraryController alloc];
    v10 = [(SBHomeScreenController *)self iconManager];
    v11 = [(SBModalLibraryController *)v9 initWithIconManager:v10 libraryViewController:v8 floatingDockController:v7 windowScene:v4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_setUpLibraryViewControllerForWindowScene:(id)a3
{
  v4 = a3;
  v5 = [(SBHomeScreenController *)self iconManager];
  v6 = [(SBHomeScreenController *)self iconModel];
  if (!v5)
  {
    [SBHomeScreenController _setUpLibraryViewControllerForWindowScene:];
  }

  v7 = [v5 iconModel];

  if (!v7)
  {
    [SBHomeScreenController _setUpLibraryViewControllerForWindowScene:];
  }

  v8 = [(SBHomeScreenController *)self _iconController];
  v9 = [v8 libraryCategoryMapProvider];

  v10 = +[SBDefaults localDefaults];
  v11 = [v10 homeScreenDefaults];

  v12 = [[SBLibraryViewController alloc] initWithCategoryMapProvider:v9 windowScene:v4];
  if (![(SBHomeScreenController *)self _isCoplanarHomeScreenEnabled])
  {
    [(SBHLibraryViewController *)v12 setIconLocation:*MEMORY[0x277D66678]];
  }

  [(SBHLibraryViewController *)v12 setIconModel:v6];
  [(SBHLibraryViewController *)v12 addObserver:self];
  [(SBHLibraryViewController *)v12 setBehaviorDelegate:self];
  -[SBLibraryViewController setEditing:](v12, "setEditing:", [v5 isEditing]);
  -[SBHLibraryViewController setAllowsBadging:](v12, "setAllowsBadging:", [v11 showsBadgesInAppLibrary]);
  [(SBHLibraryViewController *)v12 setContentVisibility:2];
  [(SBHLibraryViewController *)v12 setIconViewProvider:v5];
  [(SBHLibraryViewController *)v12 setIconViewDelegate:v5];
  [(SBHLibraryViewController *)v12 setHomeScreenIconTransitionAnimatorDelegate:v5];
  v13 = [(SBHomeScreenController *)self _appLibraryListLayoutProviderForWindowScene:v4];
  [(SBHLibraryViewController *)v12 setListLayoutProvider:v13];
  v14 = [v5 iconImageCache];
  [(SBHLibraryViewController *)v12 setIconImageCache:v14];

  v15 = [v5 legibilitySettings];
  [(SBHLibraryViewController *)v12 setLegibilitySettings:v15];

  [(SBHLibraryViewController *)v12 addObserver:v5];

  return v12;
}

- (id)libraryViewControllerForWindowScene:(id)a3
{
  v4 = a3;
  if ([(SBHomeScreenController *)self isModalAppLibrarySupported])
  {
    v5 = [v4 modalLibraryController];
    v6 = [v5 libraryViewController];
  }

  else
  {
    v6 = [(SBHomeScreenController *)self overlayLibraryViewController];
  }

  return v6;
}

- (id)_appLibraryListLayoutProviderForWindowScene:(id)a3
{
  v31[9] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = SBLogIconController();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [SBHomeScreenController _appLibraryListLayoutProviderForWindowScene:];
    }
  }

  v6 = [(SBHomeScreenController *)self iconManager];
  if (([v4 isContinuityDisplayWindowScene] & 1) != 0 || objc_msgSend(v4, "isMainDisplayWindowScene"))
  {
    v7 = [v6 listLayoutProvider];
  }

  else
  {
    v8 = [v6 listLayoutProvider];
    v9 = *MEMORY[0x277D66660];
    v10 = [v8 layoutForIconLocation:*MEMORY[0x277D66660]];
    v11 = objc_opt_class();
    v12 = v10;
    if (v11)
    {
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    v15 = [v14 layoutConfiguration];

    v29 = v12;
    v16 = [v15 copy];

    [v16 landscapeLayoutInsets];
    [v16 portraitLayoutInsets];
    [v16 setPortraitLayoutInsets:?];
    v25 = [objc_alloc(MEMORY[0x277D663A8]) initWithLayoutConfiguration:v16];
    v30[0] = *MEMORY[0x277D666D0];
    v28 = [v8 layoutForIconLocation:?];
    v31[0] = v28;
    v30[1] = *MEMORY[0x277D66648];
    v27 = [v8 layoutForIconLocation:?];
    v31[1] = v27;
    v30[2] = *MEMORY[0x277D66678];
    v26 = [v8 layoutForIconLocation:?];
    v31[2] = v26;
    v30[3] = *MEMORY[0x277D66650];
    v17 = [v8 layoutForIconLocation:?];
    v31[3] = v17;
    v30[4] = *MEMORY[0x277D66670];
    v18 = [v8 layoutForIconLocation:?];
    v31[4] = v18;
    v30[5] = *MEMORY[0x277D66668];
    v19 = [v8 layoutForIconLocation:?];
    v31[5] = v19;
    v30[6] = *MEMORY[0x277D66658];
    v20 = [v8 layoutForIconLocation:?];
    v31[6] = v20;
    v31[7] = v25;
    v21 = *MEMORY[0x277D66680];
    v30[7] = v9;
    v30[8] = v21;
    v22 = [v8 layoutForIconLocation:?];
    v31[8] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:9];

    v7 = [objc_alloc(MEMORY[0x277D66158]) initWithListLayouts:v23];
  }

  return v7;
}

- (id)animator:(id)a3 animationSettingsForOperation:(unint64_t)a4 childViewController:(id)a5
{
  v6 = [a3 iconAnimator];
  v7 = [MEMORY[0x277D661A0] rootSettings];
  v8 = [v7 iconAnimationSettings];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v9 = [v8 reducedMotionSettings];
LABEL_4:
    v10 = v9;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a4)
    {
      [v8 folderCloseSettings];
    }

    else
    {
      [v8 folderOpenSettings];
    }

    v9 = LABEL_11:;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!a4)
    {
      v9 = [v8 crossfadeLaunchSettings];
      goto LABEL_4;
    }

    v12 = [SBApp homeHardwareButton];
    if ([v12 supportsAcceleratedAppDismiss])
    {
      [v8 crossfadeAcceleratedSuspendSettings];
    }

    else
    {
      [v8 crossfadeSuspendSettings];
    }

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!a4)
    {
      v9 = [v8 centerLaunchSettings];
      goto LABEL_4;
    }

    v12 = [SBApp homeHardwareButton];
    if ([v12 supportsAcceleratedAppDismiss])
    {
      [v8 centerAcceleratedSuspendSettings];
    }

    else
    {
      [v8 centerSuspendSettings];
    }

    v13 = LABEL_16:;
    v10 = v13;

    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a4)
    {
      [v8 libraryPodCloseSettings];
    }

    else
    {
      [v8 libraryPodOpenSettings];
    }

    goto LABEL_11;
  }

  v10 = 0;
LABEL_5:

  return v10;
}

- (void)iconManager:(id)a3 folderControllerWillBeginScrolling:(id)a4
{
  v4 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v4))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_HOME_SCROLL_TO_ICON_FROM_ICON", " enableTelemetry=YES  isAnimation=YES ", v5, 2u);
  }

  kdebug_trace();
}

- (void)iconManager:(id)a3 folderControllerDidEndScrolling:(id)a4
{
  v5 = a3;
  v6 = [(SBHomeScreenController *)self _rootFolderController];
  v7 = [v5 hasOpenFolder];

  if ((v7 & 1) == 0 && ([v6 isDockExternal] & 1) == 0)
  {
    v8 = [(SBHomeScreenController *)self windowScene];
    v9 = [v8 pictureInPictureManager];

    [v6 dockHeight];
    [v9 applyPictureInPictureInsets:1 forSource:{0.0, 0.0, v10, 0.0}];
  }

  v11 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v11))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_HOME_SCROLL_TO_ICON_FROM_ICON", " enableTelemetry=YES  isAnimation=YES ", v12, 2u);
  }

  kdebug_trace();
}

- (void)folderController:(id)a3 iconListView:(id)a4 springLoadedInteractionForIconDragDidCompleteOnIconView:(id)a5
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277D674E0];
  v14[0] = &unk_283372218;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a5;
  v8 = [v6 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v9 = MEMORY[0x277D65DD0];
  v10 = v8;
  v11 = [v9 sharedInstance];
  [v11 emitEvent:31 withPayload:v10];

  v12 = [(SBHomeScreenController *)self iconDragManager];
  [v12 performSpringLoadedInteractionForIconDragOnIconView:v7];
}

- (UIEdgeInsets)contentOverlayInsetsFromParentIfAvailableForFolderController:(id)a3
{
  v3 = [(SBHomeScreenController *)self homeScreenViewController];
  [v3 _contentOverlayInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (void)iconManager:(id)a3 willOpenFolderController:(id)a4
{
  v5 = a4;
  if ([v5 suspendsWallpaperAnimationWhileOpen])
  {
    if (self->_invalidated)
    {
      v6 = SBLogIconController();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [SBHomeScreenController iconManager:willOpenFolderController:];
      }
    }

    else
    {
      v6 = [v5 extraAssertions];
      if (!v6)
      {
        v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v5 setExtraAssertions:v6];
      }

      v7 = [v6 valueForKey:@"SuspendWallpaperAnimationAssertion"];
      v8 = v7;
      if (v7)
      {
        [v7 invalidate];
      }

      v9 = +[SBWallpaperController sharedInstance];
      v10 = [@"SBIconControllerOpenFolderWallpaperAnimationSuspensionReason" stringByAppendingFormat:@"-%p", v5];
      v11 = [v9 suspendWallpaperAnimationForReason:v10];

      [v6 setValue:v11 forKey:@"SuspendWallpaperAnimationAssertion"];
    }
  }
}

- (void)iconManager:(id)a3 willCloseFolderController:(id)a4
{
  v8 = a4;
  if ([v8 suspendsWallpaperAnimationWhileOpen])
  {
    v4 = [v8 extraAssertions];
    v5 = [v4 valueForKey:@"SuspendWallpaperAnimationAssertion"];
    v6 = v5;
    if (v5)
    {
      [v5 invalidate];
      [v4 removeObjectForKey:@"SuspendWallpaperAnimationAssertion"];
    }
  }

  v7 = [MEMORY[0x277D66210] sharedInstance];
  [v7 noteFolderControllerWillClose:v8];
}

- (void)setLegibilitySettings:(id)a3
{
  v14 = a3;
  if (([(_UILegibilitySettings *)self->_legibilitySettings isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
    v5 = [(SBHomeScreenController *)self iconManager];
    [v5 setLegibilitySettings:self->_legibilitySettings];

    v6 = [(SBHomeScreenController *)self windowScene];
    v7 = [v6 floatingDockController];
    [v7 setLegibilitySettings:self->_legibilitySettings];
    v8 = [(SBHomeScreenController *)self spotlightViewController];
    v9 = SBUIDeriveUILegibilitySettings();
    [v8 setLegibilitySettings:v9];

    v10 = [(SBHomeScreenController *)self searchPresentableViewController];
    v11 = [v10 searchAffordanceView];
    [v11 setLegibilitySettings:self->_legibilitySettings];

    v12 = [(SBHomeScreenController *)self scrollAccessoryAuxiliaryView];
    [v12 setLegibilitySettings:self->_legibilitySettings];

    v13 = [(SBHomeScreenController *)self homeScreenViewController];
    [v13 setLegibilitySettings:self->_legibilitySettings];
  }
}

- (double)distanceToTopOfSpotlightIconsForIconManager:(id)a3
{
  v4 = +[SBSpotlightMultiplexingViewController sharedRemoteSearchViewController];
  if ([v4 source] == 6)
  {
    v5 = [MEMORY[0x277D65D28] enableFloatingWindow];

    v6 = 0.0;
    if (v5)
    {
      return v6;
    }
  }

  else
  {
  }

  v7 = [(SBHomeScreenController *)self homeScreenViewController];
  v8 = [v7 view];
  [v8 safeAreaInsets];
  v10 = v9;

  v11 = +[SBSpotlightMultiplexingViewController sharedRemoteSearchViewController];
  [v11 distanceToTopOfIcons];
  v13 = v12;

  v6 = v10 + v13;
  return v6;
}

- (BOOL)iconManagerCanUseSeparateWindowForRotation:(id)a3
{
  v4 = [(SBHomeScreenController *)self _currentMainDisplayLayoutState];
  v5 = [v4 unlockedEnvironmentMode];

  if (v5 == 3)
  {
    return 0;
  }

  v6 = +[SBWorkspace mainWorkspace];
  v7 = [v6 transientOverlayPresentationManager];
  v8 = [v7 hasActivePresentation];

  if (v8)
  {
    return 0;
  }

  v10 = [(SBHomeScreenController *)self coverSheetPresentationManager];
  v11 = [v10 isVisible];

  return v11 ^ 1;
}

- (void)iconManager:(id)a3 statusBarInsetsDidChange:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v10 = [(SBHomeScreenController *)self windowScene];
  v8 = [v10 statusBarManager];
  v9 = [v8 layoutManager];
  [v9 setStatusBarEdgeInsets:0 forLayoutLayer:{top, left, bottom, right}];
}

- (BOOL)iconManager:(id)a3 folderController:(id)a4 canChangeCurrentPageIndexToIndex:(int64_t)a5
{
  if (iconManager_folderController_canChangeCurrentPageIndexToIndex__onceToken != -1)
  {
    [SBHomeScreenController iconManager:folderController:canChangeCurrentPageIndexToIndex:];
  }

  return (iconManager_folderController_canChangeCurrentPageIndexToIndex__suppressSetCurrentPage & 1) == 0;
}

void __88__SBHomeScreenController_iconManager_folderController_canChangeCurrentPageIndexToIndex___block_invoke()
{
  v0 = +[SBDefaults localDefaults];
  v1 = [v0 iconDefaults];
  iconManager_folderController_canChangeCurrentPageIndexToIndex__suppressSetCurrentPage = [v1 suppressSetCurrentPage];

  if (iconManager_folderController_canChangeCurrentPageIndexToIndex__suppressSetCurrentPage == 1)
  {
    v2 = SBLogIcon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __88__SBHomeScreenController_iconManager_folderController_canChangeCurrentPageIndexToIndex___block_invoke_cold_1();
    }
  }
}

- (BOOL)isIconContentPossiblyVisibleOverApplicationForIconManager:(id)a3
{
  v3 = [(SBHomeScreenController *)self _currentMainDisplayLayoutState];
  v4 = [v3 unlockedEnvironmentMode] == 3;

  return v4;
}

- (id)_createHomeScreenOverlayControllerIfNeeded
{
  v3 = [(SBHomeScreenController *)self homeScreenOverlayController];
  if (!v3)
  {
    v21 = [(SBHomeScreenController *)self iconManager];
    v4 = [v21 listLayoutProvider];
    v3 = [[SBHomeScreenOverlayController alloc] initWithListLayoutProvider:v4];
    [(SBHomeScreenOverlayController *)v3 setDelegate:self];
    [(SBHomeScreenOverlayController *)v3 addHomeScreenOverlayObserver:self];
    v5 = [(SBHomeScreenController *)self overlayLibraryViewController];
    [(SBHomeScreenOverlayController *)v3 addHomeScreenOverlayObserver:v5];

    v6 = [(SBHomeScreenController *)self todayViewController];
    [(SBHomeScreenOverlayController *)v3 addHomeScreenOverlayObserver:v6];

    [(SBHomeScreenOverlayController *)v3 setContentVisibility:2];
    v7 = [(SBHomeScreenOverlayController *)v3 viewController];
    v8 = [(SBHomeScreenController *)self homeScreenViewController];
    v9 = [v8 iconContentView];
    [v8 bs_addChildViewController:v7 withSuperview:v9];
    v10 = [v7 view];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = SBHPinViewWithinView();
    v12 = [(SBHomeScreenOverlayController *)v3 dismissTapGestureRecognizer];
    [v12 requireGestureRecognizerToFail:self->_longPressToEditGestureRecognizer];

    v13 = [(SBHomeScreenOverlayController *)v3 dismissTapGestureRecognizer];
    [v13 requireGestureRecognizerToFail:self->_tapToEndEditingGestureRecognizer];

    v14 = [(SBHomeScreenController *)self todayViewController];
    if (+[SBLeftOfHomeAppViewController isEnabled])
    {
      v15 = objc_alloc_init(SBLeftOfHomeAppViewController);
      [(SBHomeScreenOverlayController *)v3 setLeadingSidebarViewController:v15];
      leftOfHomeAppViewController = self->_leftOfHomeAppViewController;
      self->_leftOfHomeAppViewController = v15;
    }

    else
    {
      [(SBHomeScreenOverlayController *)v3 setLeadingSidebarViewController:v14];
    }

    v17 = [(SBHomeScreenOverlayController *)v3 viewController];
    [v14 setContainerViewController:v17];

    [v14 setDismissalDelegate:v3];
    if ([(SBHomeScreenController *)self isAppLibrarySupported]&& ![(SBHomeScreenController *)self isModalAppLibrarySupported])
    {
      v18 = [(SBHomeScreenController *)self overlayLibraryViewController];
      [(SBHomeScreenOverlayController *)v3 setTrailingSidebarViewController:v18];
      v19 = [(SBHomeScreenOverlayController *)v3 viewController];
      [v18 setPresenter:v19];
    }

    [(SBHomeScreenController *)self setHomeScreenOverlayController:v3];
  }

  return v3;
}

- (void)iconManager:(id)a3 rootFolderController:(id)a4 didOverscrollOnFirstPageByAmount:(double)a5
{
  v17 = [(SBHomeScreenController *)self _homeScreenOverlayControllerIfNeeded:a3];
  if (-[SBHomeScreenController allowsHomeScreenOverlay](self, "allowsHomeScreenOverlay") && (-[SBHomeScreenController policyAggregator](self, "policyAggregator"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 allowsCapability:24], v7, (v8 & 1) != 0))
  {
    homeScreenOverlayInitialPresentationProgress = self->_homeScreenOverlayInitialPresentationProgress;
    if (!homeScreenOverlayInitialPresentationProgress)
    {
      v10 = MEMORY[0x277CCABB0];
      [(SBHomeScreenOverlayController *)self->_homeScreenOverlayController layerPresentationProgress];
      *&v11 = v11;
      v12 = [v10 numberWithFloat:v11];
      v13 = self->_homeScreenOverlayInitialPresentationProgress;
      self->_homeScreenOverlayInitialPresentationProgress = v12;

      homeScreenOverlayInitialPresentationProgress = self->_homeScreenOverlayInitialPresentationProgress;
    }

    homeScreenOverlayController = self->_homeScreenOverlayController;
    [(NSNumber *)homeScreenOverlayInitialPresentationProgress doubleValue];
    [(SBHomeScreenOverlayController *)homeScreenOverlayController presentationProgressForTranslation:1 initialPresentationProgress:a5 fromLeading:v15];
    [v17 setPresentationProgress:1 fromLeading:1 interactive:1 animated:0 completionHandler:?];
  }

  else
  {
    v16 = self->_homeScreenOverlayInitialPresentationProgress;
    self->_homeScreenOverlayInitialPresentationProgress = 0;

    [v17 setPresentationProgress:1 fromLeading:0.0];
  }
}

- (void)iconManager:(id)a3 rootFolderController:(id)a4 didEndOverscrollOnFirstPageWithVelocity:(double)a5 translation:(double)a6
{
  v13 = [(SBHomeScreenController *)self _homeScreenOverlayControllerIfNeeded:a3];
  homeScreenOverlayInitialPresentationProgress = self->_homeScreenOverlayInitialPresentationProgress;
  self->_homeScreenOverlayInitialPresentationProgress = 0;

  if (-[SBHomeScreenController allowsHomeScreenOverlay](self, "allowsHomeScreenOverlay") && (-[SBHomeScreenController policyAggregator](self, "policyAggregator"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 allowsCapability:24], v10, (v11 & 1) != 0))
  {
    [(NSNumber *)self->_homeScreenOverlayInitialPresentationProgress doubleValue];
    [v13 finalPresentationProgressForTranslation:1 velocity:a6 initialPresentationProgress:a5 fromLeading:v12];
    [v13 animatePresentationProgress:0 withGestureLiftOffVelocity:? completionHandler:?];
  }

  else
  {
    [v13 setPresentationProgress:1 fromLeading:0.0];
  }
}

- (void)iconManager:(id)a3 rootFolderController:(id)a4 didOverscrollOnLastPageByAmount:(double)a5
{
  v15 = [(SBHomeScreenController *)self _homeScreenOverlayControllerIfNeeded:a3];
  if ([(SBHomeScreenController *)self allowsHomeScreenOverlay]&& [(SBHomeScreenController *)self isAppLibrarySupported])
  {
    homeScreenOverlayInitialPresentationProgress = self->_homeScreenOverlayInitialPresentationProgress;
    if (!homeScreenOverlayInitialPresentationProgress)
    {
      v8 = MEMORY[0x277CCABB0];
      [(SBHomeScreenOverlayController *)self->_homeScreenOverlayController layerPresentationProgress];
      *&v9 = v9;
      v10 = [v8 numberWithFloat:v9];
      v11 = self->_homeScreenOverlayInitialPresentationProgress;
      self->_homeScreenOverlayInitialPresentationProgress = v10;

      homeScreenOverlayInitialPresentationProgress = self->_homeScreenOverlayInitialPresentationProgress;
    }

    homeScreenOverlayController = self->_homeScreenOverlayController;
    [(NSNumber *)homeScreenOverlayInitialPresentationProgress doubleValue];
    [(SBHomeScreenOverlayController *)homeScreenOverlayController presentationProgressForTranslation:0 initialPresentationProgress:a5 fromLeading:v13];
    [v15 setPresentationProgress:0 fromLeading:1 interactive:1 animated:0 completionHandler:?];
  }

  else
  {
    v14 = self->_homeScreenOverlayInitialPresentationProgress;
    self->_homeScreenOverlayInitialPresentationProgress = 0;

    [v15 setPresentationProgress:0 fromLeading:0.0];
  }
}

- (void)iconManager:(id)a3 rootFolderController:(id)a4 didEndOverscrollOnLastPageWithVelocity:(double)a5 translation:(double)a6
{
  v11 = [(SBHomeScreenController *)self homeScreenOverlayController:a3];
  homeScreenOverlayInitialPresentationProgress = self->_homeScreenOverlayInitialPresentationProgress;
  self->_homeScreenOverlayInitialPresentationProgress = 0;

  if ([(SBHomeScreenController *)self allowsHomeScreenOverlay]&& [(SBHomeScreenController *)self isAppLibrarySupported])
  {
    [(NSNumber *)self->_homeScreenOverlayInitialPresentationProgress doubleValue];
    [v11 finalPresentationProgressForTranslation:0 velocity:a6 initialPresentationProgress:a5 fromLeading:v10];
    [v11 animatePresentationProgress:0 withGestureLiftOffVelocity:? completionHandler:?];
  }

  else
  {
    [v11 setPresentationProgress:0 fromLeading:0.0];
  }
}

- (BOOL)iconManager:(id)a3 isIconVisibleForBundleIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(SBHomeScreenController *)self _iconController];
  v7 = [v6 isIconVisibleForBundleIdentifier:v5];

  return v7;
}

- (id)iconManager:(id)a3 bundleIdentifierToLaunchForWidgetURL:(id)a4
{
  v4 = SBWorkspaceApplicationForURLWithError(a4, 0, 0);
  v5 = [v4 bundleIdentifier];

  return v5;
}

- (void)iconManager:(id)a3 wantsLaunchForWidgetURL:(id)a4
{
  v5 = a4;
  v6 = [(SBHomeScreenController *)self windowScene];
  v7 = [v6 _sbDisplayConfiguration];
  v8 = objc_alloc_init(SBLockScreenUnlockRequest);
  [(SBLockScreenUnlockRequest *)v8 setSource:24];
  [(SBLockScreenUnlockRequest *)v8 setIntent:3];
  [(SBLockScreenUnlockRequest *)v8 setName:@"Launch From Widget Icon Unlock"];
  [(SBLockScreenUnlockRequest *)v8 setWantsBiometricPresentation:1];
  [(SBLockScreenUnlockRequest *)v8 setWindowScene:v6];
  v9 = [(SBHomeScreenController *)self lockScreenManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__SBHomeScreenController_iconManager_wantsLaunchForWidgetURL___block_invoke;
  v12[3] = &unk_2783A8BF0;
  v13 = v5;
  v14 = v7;
  v10 = v7;
  v11 = v5;
  [v9 unlockWithRequest:v8 completion:v12];
}

void __62__SBHomeScreenController_iconManager_wantsLaunchForWidgetURL___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __62__SBHomeScreenController_iconManager_wantsLaunchForWidgetURL___block_invoke_2;
    v4[3] = &unk_2783A98F0;
    v5 = v2;
    SBWorkspaceActivateApplicationFromURLWithDisplayConfiguration(v3, v5, 0, v4);
  }
}

void __62__SBHomeScreenController_iconManager_wantsLaunchForWidgetURL___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:1];
  [v3 setDisplayConfiguration:*(a1 + 32)];
}

- (id)iconManager:(id)a3 viewControllerForCustomIcon:(id)a4 element:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v13 = [v9 gridSizeClass];
    v14 = SBHIconGridSizeClassToStackLayoutSize();

    v15 = objc_alloc(MEMORY[0x277CEBE08]);
    v16 = [v10 uniqueIdentifier];
    v17 = [MEMORY[0x277CEB5A0] sharedInstance];
    v18 = [v15 initWithIdentifier:v16 suggestionsClient:v17 layoutSize:v14];

    [v18 setDelegate:self];
    if (v18)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  v19 = objc_opt_self();
  v20 = objc_opt_isKindOfClass();

  if (v20)
  {
    v21 = [v9 gridSizeClass];
    v22 = SBHIconGridSizeClassToStackLayoutSize();

    v23 = [(SBHomeScreenController *)self canAppPredictionsWidgetAlignWithGrid]^ 1;
    v24 = objc_alloc(MEMORY[0x277CEBE00]);
    v25 = [v9 uniqueIdentifier];
    v18 = [v24 initWithIdentifier:v25 layoutSize:v22 mode:v23];

    [v18 setDelegate:self];
    v26 = [v8 listLayoutProvider];
    v27 = [v26 layoutForIconLocation:*MEMORY[0x277D666D0]];

    [v27 iconImageInfoForGridSizeClass:*MEMORY[0x277D66518]];
    v29 = v28;
    v30 = [(SBHomeScreenController *)self homeScreenViewController];
    v31 = [v30 iconContentView];
    [v31 bounds];
    v33 = (v32 - v29) * 0.5;

    [v18 setParentLayoutInsets:{0.0, v33, 0.0, v33}];
    if (v18)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  v34 = objc_opt_self();
  v35 = objc_opt_isKindOfClass();

  if (v35)
  {
    v36 = v10;
    v37 = objc_alloc_init(MEMORY[0x277D7D7F8]);
    v38 = [v9 gridSizeClass];
    [v37 setFamily:CHSWidgetFamilyForSBHIconGridSizeClass()];

    v39 = [(SBHomeScreenController *)self iconManager];
    v40 = [v39 intentForDataSource:v36 ofIcon:v9];
    if (!v40)
    {
      v40 = WFCreateShortcutsWidgetConfigurationIntent();
      v65 = 0;
      v41 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v40 requiringSecureCoding:1 error:&v65];
      v62 = v65;
      if (!v41)
      {
        v42 = SBLogCommon();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = v62;
          [SBHomeScreenController iconManager:viewControllerForCustomIcon:element:];
LABEL_17:

          goto LABEL_18;
        }

LABEL_16:
        v43 = v62;
        goto LABEL_17;
      }

LABEL_15:
      v42 = [(SBHomeScreenController *)self iconManager];
      [(SBHomeScreenController *)self iconManager:v42 dataSource:v36 ofIcon:v9 didUpdateConfigurationData:v41];
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  v44 = objc_opt_self();
  v45 = objc_opt_isKindOfClass();

  if (v45)
  {
    v36 = v10;
    v37 = objc_alloc_init(MEMORY[0x277D7D7F8]);
    v46 = [v9 gridSizeClass];
    [v37 setFamily:CHSWidgetFamilyForSBHIconGridSizeClass()];

    v39 = [(SBHomeScreenController *)self iconManager];
    v40 = [v39 intentForDataSource:v36 ofIcon:v9];
    if (!v40)
    {
      v40 = WFCreateShortcutsSmallWidgetConfigurationIntent();
      v64 = 0;
      v41 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v40 requiringSecureCoding:1 error:&v64];
      v62 = v64;
      if (!v41)
      {
        v42 = SBLogCommon();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = v62;
          [SBHomeScreenController iconManager:viewControllerForCustomIcon:element:];
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_18:
    [v37 setIntent:{v40, v62}];
    v18 = [objc_alloc(MEMORY[0x277D7D800]) initWithOptions:v37];
    goto LABEL_19;
  }

  v47 = objc_opt_self();
  v48 = objc_opt_isKindOfClass();

  if (v48)
  {
    v36 = v10;
    v37 = [(SBHomeScreenController *)self iconManager];
    v39 = [v37 intentForDataSource:v36 ofIcon:v9];
    if (!v39)
    {
      v39 = DOCCreateDefaultHomeScreenWidgetIntent();
      v63 = 0;
      v49 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v39 requiringSecureCoding:1 error:&v63];
      v50 = v63;
      if (v49)
      {
        v51 = [(SBHomeScreenController *)self iconManager];
        [(SBHomeScreenController *)self iconManager:v51 dataSource:v36 ofIcon:v9 didUpdateConfigurationData:v49];
      }

      else
      {
        v51 = SBLogCommon();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          [SBHomeScreenController iconManager:viewControllerForCustomIcon:element:];
        }
      }
    }

    if (!self->_filesWidgetExtensionProviders)
    {
      v56 = [MEMORY[0x277CBEB38] dictionary];
      filesWidgetExtensionProviders = self->_filesWidgetExtensionProviders;
      self->_filesWidgetExtensionProviders = v56;
    }

    v40 = [v36 uniqueIdentifier];
    v58 = [(NSMutableDictionary *)self->_filesWidgetExtensionProviders objectForKey:v40];
    if (v58)
    {
      v59 = v58;
      [MEMORY[0x277CBEB38] cancelPreviousPerformRequestsWithTarget:self->_filesWidgetExtensionProviders selector:sel_removeObjectForKey_ object:v40];
    }

    else
    {
      v59 = objc_alloc_init(MEMORY[0x277D66180]);
      v60 = self->_filesWidgetExtensionProviders;
      v61 = [v36 uniqueIdentifier];
      [(NSMutableDictionary *)v60 setObject:v59 forKey:v61];
    }

    v18 = [v59 filesWidgetViewControllerWithConfiguration:v39];

LABEL_19:
    if (v18)
    {
      goto LABEL_28;
    }
  }

LABEL_25:
  v52 = SBLogCommon();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
  {
    [SBHomeScreenController iconManager:viewControllerForCustomIcon:element:];
  }

  v53 = objc_alloc_init(MEMORY[0x277D75D18]);
  v54 = [MEMORY[0x277D75348] cyanColor];
  [v53 setBackgroundColor:v54];

  v18 = objc_alloc_init(MEMORY[0x277D75D28]);
  [v18 setView:v53];

LABEL_28:

  return v18;
}

- (BOOL)iconManager:(id)a3 shouldCacheRecentViewController:(id)a4 forIdentifier:(id)a5
{
  filesWidgetExtensionProviders = self->_filesWidgetExtensionProviders;
  v6 = a5;
  v7 = [(NSMutableDictionary *)filesWidgetExtensionProviders allKeys];
  v8 = [v7 containsObject:v6];

  return v8 ^ 1;
}

- (void)iconManager:(id)a3 willRemoveViewControllerForIdentifier:(id)a4
{
  v6 = a4;
  v5 = [(NSMutableDictionary *)self->_filesWidgetExtensionProviders objectForKey:?];

  if (v5)
  {
    [(NSMutableDictionary *)self->_filesWidgetExtensionProviders performSelector:sel_removeObjectForKey_ withObject:v6 afterDelay:10.0];
  }
}

- (id)fallbackDefaultFirstPageWidgetsForIconManager:(id)a3
{
  v19[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = MEMORY[0x277D66520];
  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v5 = MEMORY[0x277D66548];
  }

  v6 = *v5;
  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v9 = objc_alloc(MEMORY[0x277D66450]);
  if ((v8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v10 = [v9 initWithWidgetExtensionIdentifiers:&unk_28336EE98 widgetKinds:&unk_28336EEB0 widgetContainerBundleIdentifiers:&unk_28336EE98];
    [v10 setGridSizeClass:v6];
    v11 = objc_alloc(MEMORY[0x277D66450]);
    v19[0] = @"com.apple.weather";
    v19[1] = @"com.apple.reminders.widget";
    v12 = [MEMORY[0x277CBEB68] null];
    v19[2] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
    v14 = [v11 initWithWidgetExtensionIdentifiers:&unk_28336EEC8 widgetKinds:v13 widgetContainerBundleIdentifiers:&unk_28336EEE0];

    v15 = v14;
  }

  else
  {
    v10 = [v9 initWithWidgetExtensionIdentifiers:&unk_28336EF40 widgetKinds:&unk_28336EF58 widgetContainerBundleIdentifiers:&unk_28336EF70];
    [v10 setGridSizeClass:v6];
    v15 = [objc_alloc(MEMORY[0x277D66450]) initWithWidgetExtensionIdentifiers:&unk_28336EEF8 widgetKinds:&unk_28336EF10 widgetContainerBundleIdentifiers:&unk_28336EF28];
    v14 = v15;
  }

  [v15 setGridSizeClass:v6];
  v18[0] = v10;
  v18[1] = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];

  return v16;
}

- (id)iconManager:(id)a3 willAddDefaultFirstPageWidgetsBasedOnPinnedWidgets:(id)a4 suggestionWidgets:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CBEA60] array];
  v12 = SBLogWidgetDiscoverability();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v25) = 0;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Beginning enter builder logic", &v25, 2u);
  }

  v13 = [MEMORY[0x277D75418] currentDevice];
  v14 = [v13 userInterfaceIdiom];

  if ((v14 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v15 = [(SBHomeScreenController *)self _iconController];
    v16 = [v15 userIconStateFileStatus];

    v17 = SBLogWidgetDiscoverability();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 67109120;
      LODWORD(v26) = v16 == 1;
      _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "Beginning enter builder logic isDefaultIconState(%d)", &v25, 8u);
    }

    if ([v10 count] <= 1)
    {
      v18 = [(SBHomeScreenController *)self fallbackDefaultFirstPageWidgetsForIconManager:v8];
      v19 = [v10 arrayByAddingObjectsFromArray:v18];

      v10 = v19;
    }

    v20 = [[SBWidgetOnboardingLayoutBuilder alloc] initWithPinnedWidgets:v9 suggestionWidgets:v10];
    v21 = [(SBWidgetOnboardingLayoutBuilder *)v20 migratedDefaultWidgets:v16 == 1];

    v22 = SBLogWidgetDiscoverability();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = @"upgrade";
      v25 = 138412802;
      if (v16 == 1)
      {
        v23 = @"erase";
      }

      v26 = v23;
      v27 = 2112;
      v28 = v9;
      v29 = 2112;
      v30 = v10;
      _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "Migration pinned widgets with %@ install \n PinnedWidgets = %@ \n SuggestionWidgets = %@", &v25, 0x20u);
    }

    v11 = v20;
  }

  else
  {
    v21 = v10;
    v10 = v21;
  }

  return v21;
}

- (BOOL)iconManagerShouldShowWidgetIntroductionPopoverForDefaultWidgets:(id)a3
{
  if ([MEMORY[0x277D75128] isRunningInStoreDemoMode])
  {
    return 0;
  }

  v5 = [(SBHomeScreenController *)self _iconController];
  v6 = [v5 userIconStateFileStatus];

  return v6 == 2;
}

- (id)widgetIntroductionPreviewViewForIconManager:(id)a3
{
  v4 = [(SBHomeScreenController *)self interfaceOrientationForIconManager:a3];
  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  SBScreenBounds(v4);
  v8 = v7;
  v10 = v9;
  v11 = [SBHomeScreenPreviewView alloc];
  v12 = [(SBHomeScreenController *)self iconManager];
  v13 = [(SBHomeScreenPreviewView *)v11 initWithFrame:v12 iconManager:0 wallpaperController:0 options:0 wallpaperImage:0 listView:v5, v6, v8, v10];

  v14 = [(SBHomeScreenController *)self windowScene];
  v15 = [[SBViewSnapshotProvider alloc] initWithWindowScene:v14 view:v13 orientation:v4];
  v16 = objc_alloc(MEMORY[0x277D66400]);
  v17 = [(SBViewSnapshotProvider *)v15 snapshot];
  v18 = [v16 initWithPreview:v13 withSnapshot:v17];

  return v18;
}

- (void)iconManagerDidAddOrRemoveWidgetIcon:(id)a3
{
  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleHomeScreen"))
  {
    v4 = [(SBHomeScreenController *)self homeScreenViewController];
    [v4 setNeedsUpdateOfSupportedInterfaceOrientations];
  }
}

- (void)iconManagerPreferredProminentPosterColor:(id)a3 handler:(id)a4
{
  if (a4)
  {
    [(SBWallpaperIconStyleCoordinator *)self->_iconStyleCoordinator fetchWallpaperProminentColor:a4];
  }
}

- (void)iconManagerWantsHomeScreenWallpaperEditorViewControllerPresented:(id)a3
{
  v4 = a3;
  v5 = [(SBHomeScreenController *)self _hideStatusBarForReason:@"presenting HomeScreenWallpaperEditor" animated:1];
  wallpaperEditorStatusBarAssertion = self->_wallpaperEditorStatusBarAssertion;
  self->_wallpaperEditorStatusBarAssertion = v5;

  [v4 setEditing:0];
  v7 = [v4 rootFolderController];

  v27 = [v7 folderView];

  [v27 setUsesGlassGroup:1];
  v8 = [(SBHomeScreenController *)self homeScreenViewController];
  [v8 setUsesGlassGroup:0];
  v9 = +[SBWallpaperController sharedInstance];
  v10 = [v9 activeLockScreenPosterConfiguration];
  v11 = [v8 iconContentView];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 layer];
    RenderId = CALayerGetRenderId();
  }

  else
  {
    RenderId = 0;
  }

  v15 = [v12 window];
  v16 = [v15 _contextId];

  v17 = objc_alloc(MEMORY[0x277D3EAB8]);
  if (objc_opt_respondsToSelector())
  {
    v18 = [v17 initWithServiceConfiguration:v10 transitionOverlayRenderId:RenderId transitionOverlayContextId:v16];
  }

  else
  {
    v18 = [v17 initWithServiceConfiguration:v10];
  }

  v19 = v18;
  v20 = [objc_alloc(MEMORY[0x277D3EAF8]) initWithEntryPoint:v18];
  [v20 setModalPresentationStyle:0];
  [v20 setDelegate:self];
  objc_storeStrong(&self->_remoteWallpaperEditorViewController, v20);
  v21 = [v20 view];
  v22 = [v8 view];
  [v22 bounds];
  [v21 setFrame:?];

  [v21 setAutoresizingMask:18];
  if (!self->_wallpaperEditorFloatingDockBehaviorAssertion)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v24 = [WeakRetained floatingDockController];

    v25 = [[SBFloatingDockBehaviorAssertion alloc] initWithFloatingDockController:v24 visibleProgress:1 animated:0 gesturePossible:3 atLevel:@"wallpaper editor" reason:0 withCompletion:0.0];
    wallpaperEditorFloatingDockBehaviorAssertion = self->_wallpaperEditorFloatingDockBehaviorAssertion;
    self->_wallpaperEditorFloatingDockBehaviorAssertion = v25;
  }

  [v8 bs_addChildViewController:v20];
}

- (void)rootFolderPageStateProvider:(id)a3 willBeginTransitionToState:(int64_t)a4 animated:(BOOL)a5 interactive:(BOOL)a6
{
  v7 = a3;
  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleHomeScreen"))
  {
    v8 = [(SBHomeScreenController *)self homeScreenViewController];
    [v8 setNeedsUpdateOfSupportedInterfaceOrientations];
  }

  v9 = SBRootFolderPageStateIsOnLeadingCustomPage();
  if ((v9 & 1) == 0)
  {
    [(SBTodayViewController *)self->_todayViewController resetForSpotlightDismissalAnimated:1];
  }

  [(SBHomeScreenController *)self removeIconOcclusionReason:1 updateVisibleIcons:1];
  v10 = [v7 pageState];

  if (SBRootFolderPageStateIsSearch())
  {
    v11 = [(SBHomeScreenController *)self iconManager];
    if ([v11 isShowingModalInteraction])
    {
      [v11 dismissModalInteractionsImmediately];
    }
  }

  if (v10 == 2)
  {
    v12 = [(SBHomeScreenController *)self todayViewController];
    [v12 setDisplayLayoutElementActive:1];
    [v12 setNeedsFocusUpdate];
  }

  if ((v9 & SBRootFolderPageStateIsOnIconPage()) == 1)
  {
    v13 = SBLogTelemetrySignposts();
    if (!os_signpost_enabled(v13))
    {
LABEL_15:

      kdebug_trace();
      return;
    }

    *buf = 0;
    v14 = "SB_HOME_SCROLL_TO_TODAYVIEW_FROM_ICON";
    v15 = buf;
LABEL_14:
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, v14, " enableTelemetry=YES  isAnimation=YES ", v15, 2u);
    goto LABEL_15;
  }

  if (SBRootFolderPageStateIsOnLeadingCustomPage() && SBRootFolderPageStateIsOnIconPage())
  {
    v13 = SBLogTelemetrySignposts();
    if (!os_signpost_enabled(v13))
    {
      goto LABEL_15;
    }

    v16 = 0;
    v14 = "SB_HOME_SCROLL_TO_ICON_FROM_TODAYVIEW";
    v15 = &v16;
    goto LABEL_14;
  }
}

- (void)rootFolderPageStateProvider:(id)a3 didContinueTransitionToState:(int64_t)a4 progress:(double)a5
{
  if (a4 == 1)
  {
    v6 = [(SBHomeScreenController *)self searchPresentableViewController];

    if (!v6)
    {
      v7 = +[SBSpotlightMultiplexingViewController sharedRemoteSearchViewController];
      [v7 setRevealProgress:a5];
    }
  }
}

- (void)rootFolderPageStateProvider:(id)a3 didEndTransitionFromState:(int64_t)a4 toState:(int64_t)a5 successfully:(BOOL)a6
{
  v6 = a6;
  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleHomeScreen"))
  {
    v10 = [(SBHomeScreenController *)self homeScreenViewController];
    [v10 setNeedsUpdateOfSupportedInterfaceOrientations];
  }

  if (v6)
  {
    v11 = a5;
  }

  else
  {
    v11 = a4;
  }

  IsSearch = SBRootFolderPageStateIsSearch();
  if (IsSearch)
  {
    v13 = +[SBReachabilityManager sharedInstance];
    [v13 deactivateReachability];
  }

  if (a4 == 3 && a5 == 2)
  {
    v14 = [(SBTodayViewController *)self->_todayViewController transitionContext];

    if (v14)
    {
      [(SBTodayViewController *)self->_todayViewController resetForSpotlightDismissalAnimated:0];
      [(SBTodayViewController *)self->_todayViewController setTransitionContext:0];
    }
  }

  if (IsSearch)
  {
    [(SBHomeScreenController *)self addIconOcclusionReason:1 updateVisibleIcons:1];
    v15 = [(SBHomeScreenController *)self suspendWallpaperAnimationForSpotlightAssertion];
    [v15 invalidate];

    if (self->_invalidated)
    {
      v16 = SBLogIconController();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SBHomeScreenController rootFolderPageStateProvider:didEndTransitionFromState:toState:successfully:];
      }
    }

    else
    {
      v16 = +[SBWallpaperController sharedInstance];
      v18 = [v16 suspendWallpaperAnimationForReason:@"SBIconControllerSuspendingWallpaperForSpotlightReason"];
      [(SBHomeScreenController *)self setSuspendWallpaperAnimationForSpotlightAssertion:v18];
    }
  }

  else
  {
    [(SBHomeScreenController *)self removeIconOcclusionReason:1 updateVisibleIcons:1];
    if (SBRootFolderPageStateIsSearch())
    {
      v17 = [(SBHomeScreenController *)self suspendWallpaperAnimationForSpotlightAssertion];
      [v17 invalidate];

      [(SBHomeScreenController *)self setSuspendWallpaperAnimationForSpotlightAssertion:0];
    }
  }

  if (v11 == 2)
  {
    v19 = [(SBHomeScreenController *)self todayViewController];
    [v19 setDisplayLayoutElementActive:1];
    [v19 setNeedsFocusUpdate];
  }

  if (SBRootFolderPageStateIsOnIconPage() && SBRootFolderPageStateIsOnLeadingCustomPage())
  {
    v20 = SBLogTelemetrySignposts();
    if (os_signpost_enabled(v20))
    {
      v24 = 0;
      v21 = "SB_HOME_SCROLL_TO_TODAYVIEW_FROM_ICON";
      v22 = &v24;
LABEL_30:
      _os_signpost_emit_with_name_impl(&dword_21ED4E000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, v21, " enableTelemetry=YES  isAnimation=YES ", v22, 2u);
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  if (SBRootFolderPageStateIsOnLeadingCustomPage() && SBRootFolderPageStateIsOnIconPage())
  {
    v20 = SBLogTelemetrySignposts();
    if (os_signpost_enabled(v20))
    {
      v23 = 0;
      v21 = "SB_HOME_SCROLL_TO_ICON_FROM_TODAYVIEW";
      v22 = &v23;
      goto LABEL_30;
    }

LABEL_31:

    kdebug_trace();
  }
}

- (id)rootFolderController:(id)a3 transitionContextForTransitioningToState:(int64_t)a4 animated:(BOOL)a5 interactive:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = [v10 pageState];
  v12 = [v10 headerView];

  if (v12)
  {
    if (SBRootFolderPageStateIsSearch())
    {
      IsSearch = 1;
LABEL_9:
      if (SBRootFolderPageStateIsOnLeadingCustomPage())
      {
        v15 = 1;
      }

      else
      {
        v15 = SBRootFolderPageStateIsOnLeadingCustomPage();
      }

      v14 = [(SBHomeScreenController *)self transitionContextToShowSpotlight:IsSearch fromTodayView:v15 animated:v7 interactive:v6];
      goto LABEL_13;
    }

    if (SBRootFolderPageStateIsSearch())
    {
LABEL_8:
      IsSearch = SBRootFolderPageStateIsSearch();
      goto LABEL_9;
    }
  }

  else if (a4 == 3 || v11 == 3)
  {
    goto LABEL_8;
  }

  v14 = 0;
LABEL_13:

  return v14;
}

- (void)rootFolderController:(id)a3 transitionWillBegin:(id)a4
{
  v5 = [(SBHomeScreenController *)self displayLayoutTransition:a3];
  if (!v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v7 = [WeakRetained displayLayoutPublisher];
    v8 = [v7 transitionAssertionWithReason:0];

    [(SBHomeScreenController *)self setDisplayLayoutTransition:v8];
    v5 = v8;
  }
}

- (void)rootFolderController:(id)a3 transitionDidFinish:(id)a4
{
  v5 = [(SBHomeScreenController *)self displayLayoutTransition:a3];
  [v5 invalidate];

  [(SBHomeScreenController *)self setDisplayLayoutTransition:0];
}

- (id)transitionContextToShowSpotlight:(BOOL)a3 fromTodayView:(BOOL)a4 animated:(BOOL)a5 interactive:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v25 = a4;
  v10 = *MEMORY[0x277D77240];
  v11 = *MEMORY[0x277D77248];
  if (!a3)
  {
    v12 = *MEMORY[0x277D77230];

    v13 = *MEMORY[0x277D77238];
    v11 = v13;
    v10 = v12;
  }

  v27 = v7;
  if (v7)
  {
    v14 = objc_alloc_init(SBSpotlightTransitionAnimator);
    v26 = v14;
    if (v6)
    {
      v15 = [[SBSpotlightTransitionInteractor alloc] initWithAnimator:v14];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
    v26 = 0;
  }

  v16 = [(SBHomeScreenController *)self _rootFolderController];
  v17 = [v16 contentView];
  v18 = [(SBHomeScreenController *)self spotlightViewController];
  v19 = [v18 view];
  [v17 bounds];
  [v19 setFrame:?];
  v20 = objc_alloc_init(MEMORY[0x277D66448]);
  v21 = [v16 searchableLeadingCustomWrapperView];
  [v20 setContainerView:v21];

  if (v25)
  {
    v22 = [(SBHomeScreenController *)self todayViewController];
    if (v22)
    {
      [v20 setViewController:v22 forKey:@"SBSpotlightInitiatingViewControllerKey"];
    }
  }

  else
  {
    v22 = [v16 headerView];
    if (v22)
    {
      [v20 setView:v22 forKey:@"SBSpotlightSearchHeaderViewKey"];
    }
  }

  [v20 setViewController:v18 forKey:v10];
  [v20 setView:v19 forKey:v11];
  v23 = [v16 searchBackdropView];
  [v20 setView:v23 forKey:@"SBSpotlightSearchBackdropViewKey"];

  [v20 setAnimator:v26];
  [v20 setInteractor:v15];
  [v20 setWantsAnimation:v27];

  return v20;
}

- (void)popToCurrentRootIconListWhenPossible
{
  v3 = [(SBHomeScreenController *)self iconManager];
  [v3 popToCurrentRootIconListWhenPossible];

  [(SBHomeScreenController *)self dismissHomeScreenOverlaysAnimated:0];
}

- (void)overlayControllerDidBeginChangingPresentationProgress:(id)a3
{
  v3 = [(SBHomeScreenController *)self iconManager];
  if ([v3 isShowingModalInteraction])
  {
    [v3 dismissModalInteractions];
  }

  [v3 dismissIconContextMenu];
}

- (void)overlayController:(id)a3 didChangePresentationProgress:(double)a4 newPresentationProgress:(double)a5 fromLeading:(BOOL)a6
{
  v6 = a6;
  [a3 presentationProgress];
  v9 = v8;
  v10 = BSFloatGreaterThanFloat();
  homeScreenOverlayFloatingDockBehaviorAssertion = self->_homeScreenOverlayFloatingDockBehaviorAssertion;
  if (v10)
  {
    if (!homeScreenOverlayFloatingDockBehaviorAssertion)
    {
      v12 = [(SBHomeScreenController *)self windowScene];
      v13 = [v12 floatingDockController];
      v14 = [[SBFloatingDockBehaviorAssertion alloc] initWithFloatingDockController:v13 visibleProgress:1 animated:1 gesturePossible:4 atLevel:@"homeScreenOverlay" reason:0 withCompletion:1.0 - v9];
      v15 = self->_homeScreenOverlayFloatingDockBehaviorAssertion;
      self->_homeScreenOverlayFloatingDockBehaviorAssertion = v14;
    }

    if (BSFloatIsZero())
    {
      v16 = 0;
    }

    else
    {
      v16 = BSFloatIsOne() ^ 1;
    }

    [(SBFloatingDockBehaviorAssertion *)self->_homeScreenOverlayFloatingDockBehaviorAssertion modifyProgress:v16 interactive:0 completion:1.0 - v9];
  }

  else
  {
    [(SBFloatingDockBehaviorAssertion *)homeScreenOverlayFloatingDockBehaviorAssertion invalidate];
    v17 = self->_homeScreenOverlayFloatingDockBehaviorAssertion;
    self->_homeScreenOverlayFloatingDockBehaviorAssertion = 0;
  }

  v18 = v9 < 1.0 && v9 > 0.0;
  v20 = [(SBHomeScreenController *)self iconManager];
  [v20 setOverlayTodayViewVisible:v10 & v6 todayViewTransitioning:v18 & v6];
  v19 = [(SBHomeScreenOverlayController *)self->_homeScreenOverlayController trailingSidebarViewController];

  if (v19)
  {
    [v20 setMainDisplayLibraryViewVisible:v10 & !v6 libraryViewTransitioning:v18 && !v6];
  }

  if ((BSFloatIsZero() & 1) != 0 || BSFloatIsZero())
  {
    [(SBHomeScreenOverlayController *)self->_homeScreenOverlayController updateExtraButtonVisibilityAnimated:0];
  }
}

- (void)overlayController:(id)a3 visibilityDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = NSStringFromSelector(a2);
  [(SBHomeScreenController *)self setWallpaperAnimationDisabled:v4 forReason:v6];

  if (!v4)
  {
    [(SBFloatingDockBehaviorAssertion *)self->_homeScreenOverlayFloatingDockBehaviorAssertion invalidate];
    homeScreenOverlayFloatingDockBehaviorAssertion = self->_homeScreenOverlayFloatingDockBehaviorAssertion;
    self->_homeScreenOverlayFloatingDockBehaviorAssertion = 0;
  }

  [(SBHomeScreenOverlayController *)self->_homeScreenOverlayController updateExtraButtonVisibilityAnimated:0];
  v8 = [(SBHomeScreenController *)self _rootFolderController];
  [v8 setSuppressesExtraEditingButtons:v4];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 postNotificationName:SBIconControllerOverlayVisibilityDidChangeNotification object:self];
}

- (void)homeScreenOverlayWantsToEndEditing:(id)a3
{
  v3 = [(SBHomeScreenController *)self iconManager];
  [v3 setEditing:0];
}

- (void)homeScreenOverlayWantsWidgetEditingViewControllerPresented:(id)a3
{
  v5 = [(SBHomeScreenController *)self _rootFolderController];
  v4 = [(SBHomeScreenOverlayController *)self->_homeScreenOverlayController viewController];
  [v5 presentWidgetEditingViewControllerFromViewController:v4];
}

- (BOOL)showsAddWidgetButtonWhileEditingForHomeScreenOverlayController:(id)a3
{
  v4 = a3;
  v5 = [v4 activeSidebarViewController];

  if (v5)
  {
    v6 = [v4 activeSidebarViewController];
    v7 = [(SBHomeScreenController *)self iconManager];
    v8 = [v7 overlayTodayViewController];
    v9 = v6 == v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)showsDoneButtonWhileEditingForHomeScreenOverlayController:(id)a3
{
  v3 = [(SBHomeScreenController *)self iconManager];
  v4 = [v3 showsDoneButtonWhileEditing];

  return v4;
}

- (BOOL)isEditingForHomeScreenOverlayController:(id)a3
{
  v3 = [(SBHomeScreenController *)self iconManager];
  v4 = [v3 isEditing];

  return v4;
}

- (void)homeScreenOverlayController:(id)a3 setSuppressesEditingStateForListView:(BOOL)a4
{
  v4 = a4;
  v7 = [(SBHomeScreenController *)self todayViewController];
  [v7 setSuppressesEditingStateForListViews:v4];
  v6 = [(SBHomeScreenController *)self overlayLibraryViewController];
  [v6 setSuppressesEditingStateForListViews:v4];
}

- (id)homeScreenOverlayController:(id)a3 displayLayoutIdentifierForSidebarViewController:(id)a4
{
  v6 = a4;
  v7 = [(SBHomeScreenController *)self overlayLibraryViewController];

  if (v7 == v6)
  {
    v11 = MEMORY[0x277D66F00];
  }

  else
  {
    v8 = [(SBHomeScreenController *)self todayViewController];

    if (v8 == v6 || v6 && ([(SBHomeScreenController *)self leftOfHomeAppViewController], v9 = objc_claimAutoreleasedReturnValue(), v9, v9 == v6))
    {
      v11 = MEMORY[0x277D66F68];
    }

    else
    {
      v10 = [MEMORY[0x277CCA890] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"SBHomeScreenController.m" lineNumber:3448 description:{@"unexpected sidebar view controller: %@", v6}];

      v11 = MEMORY[0x277D66F20];
    }
  }

  v12 = *v11;
  v13 = *v11;

  return v12;
}

- (void)handleSpotlightPresentationFromViewController:(id)a3
{
  v3 = [(SBHomeScreenController *)self _rootFolderController];
  if (([v3 isTransitioningPageState] & 1) == 0)
  {
    [v3 presentSpotlightAnimated:1 completionHandler:0];
  }
}

- (void)handleSpotlightDismissalFromViewController:(id)a3
{
  v3 = [(SBHomeScreenController *)self _rootFolderController];
  if (([v3 isTransitioningPageState] & 1) == 0)
  {
    [v3 dismissSpotlightAnimated:1 completionHandler:0];
  }
}

- (unint64_t)defaultSearchViewPresentationSourceForViewController:(id)a3
{
  v3 = [(SBHomeScreenController *)self _rootFolderController];
  v4 = [v3 pageState];
  v5 = [v3 destinationPageState];
  if ([v3 presentationSource])
  {
    v6 = [v3 presentationSource];
  }

  else if (v5 == 3 || v4 == 3)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)todayViewWantsToEndEditing:(id)a3
{
  v3 = [(SBHomeScreenController *)self iconManager];
  [v3 setEditing:0];
}

- (void)todayViewControllerWillPresentSpotlight:(id)a3
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:SBIconControllerOverlayVisibilityDidChangeNotification object:self];

  v5 = [(SBHomeScreenController *)self iconManager];
  [v5 dismissModalInteractionsImmediately];
}

- (void)todayViewDidAppear:(id)a3
{
  v4 = [(SBHomeScreenController *)self _iconController];
  v3 = [v4 proactiveUsageObserver];
  [v3 logTodayViewDidAppear];
}

- (void)todayViewControllerDidAppear:(id)a3
{
  v17 = a3;
  v4 = [(SBHomeScreenController *)self todayViewDisplayLayoutAssertion];
  if (!v4)
  {
    v5 = [(SBHomeScreenController *)self _homeScreenOverlayControllerIfNeeded];
    v6 = [v5 leadingSidebarViewController];

    if (v6 == v17)
    {
      v4 = 0;
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x277D66A50]);
      v8 = [v7 initWithIdentifier:*MEMORY[0x277D66F68]];
      v9 = [v17 listView];
      v10 = [v9 window];
      [v10 level];
      [v8 setLevel:v11];

      [v8 setLayoutRole:6];
      v12 = [v17 listView];
      v13 = [v12 window];
      [v12 bounds];
      [v13 _convertRectToSceneReferenceSpace:?];
      [v8 setReferenceFrame:?];
      v14 = [v17 _sbWindowScene];
      v15 = [v14 displayLayoutPublisher];
      v4 = [v15 addElement:v8];

      [(SBHomeScreenController *)self setTodayViewDisplayLayoutAssertion:v4];
    }
  }

  v16 = [(SBHomeScreenController *)self homeScreenViewController];
  [v16 setHomeAffordanceInteractionAllowed:0];
}

- (void)todayViewControllerDidDisappear:(id)a3
{
  v5 = [(SBHomeScreenController *)self todayViewDisplayLayoutAssertion];
  [v5 invalidate];
  [(SBHomeScreenController *)self setTodayViewDisplayLayoutAssertion:0];
  v4 = [(SBHomeScreenController *)self homeScreenViewController];
  [v4 setHomeAffordanceInteractionAllowed:1];
}

- (void)activateTodayViewWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SBHomeScreenController *)self _rootFolderController];
  v6 = [v5 minimumPageIndex];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__SBHomeScreenController_activateTodayViewWithCompletion___block_invoke;
  v8[3] = &unk_2783A98A0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v5 setCurrentPageIndex:v6 animated:1 completion:v8];
}

void __58__SBHomeScreenController_activateTodayViewWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _homeScreenOverlayControllerIfNeeded];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__SBHomeScreenController_activateTodayViewWithCompletion___block_invoke_2;
  v3[3] = &unk_2783A9C70;
  v4 = *(a1 + 40);
  [v2 setPresentationProgress:0 interactive:1 animated:v3 completionHandler:1.0];
}

uint64_t __58__SBHomeScreenController_activateTodayViewWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)searchPresentablesForPresenter:(id)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v4 = [(SBHomeScreenController *)self searchPresentableViewController];
  if (v4)
  {
    v5 = [(SBHomeScreenController *)self searchPresentableViewController];
    v8[0] = v5;
    v8[1] = self;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (id)displayConfigurationForPresenter:(id)a3
{
  v3 = [(SBHomeScreenController *)self _rootFolderController];
  v4 = [v3 _sbDisplayConfiguration];

  return v4;
}

- (BOOL)searchPresenterCanPresent:(id)a3
{
  v4 = [(SBHomeScreenController *)self policyAggregator];
  v5 = [v4 allowsCapability:9];

  if ((v5 & 1) == 0)
  {
    v6 = SBLogSpotlight();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Disallowing Spotlight presentation over home screen: disallowed by ManagedConfiguration", buf, 2u);
    }

    goto LABEL_15;
  }

  v6 = [(SBHomeScreenController *)self _rootFolderController];
  v7 = [(SBHomeScreenController *)self searchPresenterPageStateTransition];
  if (v7)
  {
  }

  else if (([v6 canTransitionPageStateToState:1]& 1) == 0)
  {
    v8 = SBLogSpotlight();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      v9 = "Disallowing Spotlight presentation over home screen: cannot perform transition";
      v10 = v14;
      goto LABEL_13;
    }

LABEL_14:

LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  if ([v6 isScrolling])
  {
    v8 = SBLogSpotlight();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v9 = "Disallowing Spotlight presentation over home screen: scrolling";
      v10 = &v13;
LABEL_13:
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v11 = 1;
LABEL_16:

  return v11;
}

- (void)searchPresenterWillPresentSearch:(id)a3 animated:(BOOL)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [(SBHomeScreenController *)self _rootFolderController:a3];
  [v5 setScrollingDisabled:1 forReason:@"SBIconControllerDisableScrollingForSearchPresentationReason"];
  v6 = objc_opt_class();
  v7 = [v5 contentView];
  v8 = SBSafeCast(v6, v7);

  if (v8)
  {
    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      v9 = [(SBHomeScreenController *)self scrollAccessoryAuxiliaryView];

      if (v9)
      {
        [v8 setPageControlAlpha:0.0];
      }
    }

    v10 = [(SBHomeScreenController *)self scrollAccessoryBorrowedForSearchPresentationAssertion];

    if (!v10)
    {
      v11 = [v8 borrowScrollAccessoryForReason:@"SearchPresentation"];
      [(SBHomeScreenController *)self setScrollAccessoryBorrowedForSearchPresentationAssertion:v11];
    }
  }

  v12 = [(SBHomeScreenController *)self searchPresentableViewController];
  v13 = [v12 view];

  [v13 setHidden:0];
  v14 = [v13 superview];
  [v14 bringSubviewToFront:v13];

  v15 = [(SBHomeScreenController *)self searchPresenterPageStateTransition];
  v16 = [v15 isValid];
  v17 = SBLogRootController();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    if (v18)
    {
      LOWORD(v22[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "homeScreenController searchPresenterWillPresentSearch keeping transition", v22, 2u);
    }
  }

  else
  {
    if (v18)
    {
      v22[0] = 67109120;
      v22[1] = v15 == 0;
      _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "homeScreenController searchPresenterWillPresentSearch creating new transition; wasNil: %{BOOL}u", v22, 8u);
    }

    v19 = [(SBHomeScreenController *)self _rootFolderController];
    v20 = [v19 beginPageStateTransitionToState:1 reason:@"SBHomeScreenController-SearchPresenter-Present" animated:1 interactive:1];

    [(SBHomeScreenController *)self setSearchPresenterPageStateTransition:v20];
    [(SBHomeScreenController *)self setSearchPresenterDestinationPageState:1];
    v15 = v20;
  }

  v21 = [(SBHomeScreenController *)self homeScreenViewController];
  [v21 setHomeAffordanceInteractionAllowed:0];
}

- (void)searchPresenterDidPresentSearch:(id)a3
{
  v4 = [(SBHomeScreenController *)self searchPresenterPageStateTransition];
  [v4 endTransitionSuccessfully:{-[SBHomeScreenController searchPresenterDestinationPageState](self, "searchPresenterDestinationPageState") == 1}];
  v5 = SBLogRootController();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "homeScreenController searchPresenterDidPresentSearch nil-ing out transition", v6, 2u);
  }

  [(SBHomeScreenController *)self setSearchPresenterPageStateTransition:0];
  [(SBHomeScreenController *)self setSearchPresenterDestinationPageState:-1];
}

- (void)searchPresenterWillDismissSearch:(id)a3 animated:(BOOL)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [(SBHomeScreenController *)self _rootFolderController:a3];
  [v5 setScrollingDisabled:0 forReason:@"SBIconControllerDisableScrollingForSearchPresentationReason"];
  v6 = [(SBHomeScreenController *)self searchPresenterPageStateTransition];
  v7 = [v6 isValid];
  v8 = SBLogRootController();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "homeScreenController searchPresenterWillDismissSearch keeping transition", v13, 2u);
    }
  }

  else
  {
    if (v9)
    {
      v13[0] = 67109120;
      v13[1] = v6 == 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "homeScreenController searchPresenterWillDismissSearch creating new transition; wasNil: %{BOOL}u", v13, 8u);
    }

    v10 = [(SBHomeScreenController *)self _rootFolderController];
    v11 = [v10 beginPageStateTransitionToState:0 reason:@"SBHomeScreenController-SearchPresenter-Dismiss" animated:1 interactive:1];

    [(SBHomeScreenController *)self setSearchPresenterPageStateTransition:v11];
    [(SBHomeScreenController *)self setSearchPresenterDestinationPageState:0];
    v6 = v11;
  }

  v12 = [(SBHomeScreenController *)self homeScreenViewController];
  [v12 setHomeAffordanceInteractionAllowed:1];
}

- (void)searchPresenterDidDismissSearch:(id)a3
{
  v4 = [(SBHomeScreenController *)self scrollAccessoryBorrowedForSearchPresentationAssertion];
  [v4 invalidate];

  [(SBHomeScreenController *)self setScrollAccessoryBorrowedForSearchPresentationAssertion:0];
  v5 = objc_opt_class();
  v6 = [(SBHomeScreenController *)self _rootFolderController];
  v7 = [v6 contentView];
  v8 = SBSafeCast(v5, v7);

  if (v8)
  {
    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      v9 = [(SBHomeScreenController *)self scrollAccessoryAuxiliaryView];

      if (v9)
      {
        [v8 setPageControlAlpha:1.0];
      }
    }
  }

  v10 = [(SBHomeScreenController *)self searchPresentableViewController];
  v11 = [v10 view];
  [v11 setHidden:1];

  v12 = [(SBHomeScreenController *)self searchPresenterPageStateTransition];
  [v12 endTransitionSuccessfully:{-[SBHomeScreenController searchPresenterDestinationPageState](self, "searchPresenterDestinationPageState") == 0}];
  v13 = SBLogRootController();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "homeScreenController searchPresenterDidDismissSearch nil-ing out transition", v14, 2u);
  }

  [(SBHomeScreenController *)self setSearchPresenterPageStateTransition:0];
  [(SBHomeScreenController *)self setSearchPresenterDestinationPageState:-1];
}

- (void)spotlightPresentableViewControllerShouldDismiss:(id)a3
{
  v3 = [(SBHomeScreenController *)self searchPresenter];
  [v3 dismissSearchAnimated:1];
}

- (id)searchAffordanceViewForSpotlightPresentableViewController:(id)a3
{
  v4 = [(SBHomeScreenController *)self scrollAccessoryAuxiliaryView];
  v5 = [(SBHomeScreenController *)self rootViewController];
  v6 = 0;
  if (v5 && v4)
  {
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();

    if (IsReduceMotionEnabled)
    {
      v6 = 0;
      goto LABEL_9;
    }

    v6 = [MEMORY[0x277D662A8] searchPillViewWithSystemDefaultBackground];
    v8 = [v4 legibilitySettings];
    [v6 setLegibilitySettings:v8];

    v5 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleSearchAffordanceTap];
    [v6 addGestureRecognizer:v5];
    [v6 setSearchAffordanceReferenceView:v4];
    v9 = [(SBHomeScreenController *)self _newSearchPillBackgroundView];
    [v6 setSearchAffordanceReferenceBackgroundView:v9];

    v10 = objc_opt_class();
    v11 = [(SBHomeScreenController *)self _rootFolderController];
    v12 = [v11 contentView];
    v13 = SBSafeCast(v10, v12);

    if (v13)
    {
      v14 = [v13 scalingView];
      [v6 setSearchAffordanceReferenceContainerView:v14];
    }
  }

LABEL_9:

  return v6;
}

- (id)backgroundViewForSpotlightPresentableViewController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v4 = [WeakRetained screen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [objc_alloc(MEMORY[0x277D66438]) initWithFrame:3 style:{v6, v8, v10, v12}];
  [v13 prepareForTransitionToBlurred:1];

  return v13;
}

- (void)_handleSearchAffordanceTap
{
  v2 = [(SBHomeScreenController *)self searchPresenter];
  if (![v2 presentationState])
  {
    [v2 presentSearchAnimated:1];
  }
}

- (id)_newSearchPillBackgroundView
{
  v2 = [MEMORY[0x277D26718] materialViewWithRecipe:19];
  [v2 setGroupNameBase:0];
  [v2 setGroupName:@"WallpaperCaptureGroup"];
  v3 = [v2 layer];
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

  [v7 setGroupNamespace:*MEMORY[0x277CDA098]];
  return v2;
}

- (void)updatePresentationProgress:(double)a3 withOffset:(double)a4 velocity:(double)a5 presentationState:(int64_t)a6
{
  v6 = a3;
  if ([(SBHomeScreenController *)self searchPresenterDestinationPageState:a6]!= 1)
  {
    v6 = 1.0 - v6;
  }

  v8 = [(SBHomeScreenController *)self searchPresenterPageStateTransition];
  [v8 setTransitionProgress:v6];
}

- (id)willBeginModifyingPresentationProgressForState:(int64_t)a3 animated:(BOOL)a4 needsInitialLayout:(BOOL *)a5
{
  if (a4)
  {
    v8 = [(SBHomeScreenController *)self searchPresenterOutstandingAnimationCount];
    if (a3 != 1 && !v8)
    {
      *a5 = 1;
    }

    [(SBHomeScreenController *)self setSearchPresenterOutstandingAnimationCount:v8 + 1];
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __101__SBHomeScreenController_willBeginModifyingPresentationProgressForState_animated_needsInitialLayout___block_invoke;
    v11[3] = &unk_2783A8C68;
    objc_copyWeak(&v12, &location);
    v9 = MEMORY[0x223D6F7F0](v11);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __101__SBHomeScreenController_willBeginModifyingPresentationProgressForState_animated_needsInitialLayout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSearchPresenterOutstandingAnimationCount:{objc_msgSend(WeakRetained, "searchPresenterOutstandingAnimationCount") - 1}];
}

- (id)_identifierForSearchPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v3 = [WeakRetained isContinuityDisplayWindowScene];

  if (v3)
  {
    return @"Continuity";
  }

  else
  {
    return @"HomeScreen";
  }
}

- (void)dismissSearchView
{
  v2 = [(SBHomeScreenController *)self _rootFolderController];
  if (([v2 isTransitioningPageState] & 1) == 0)
  {
    [v2 dismissSpotlightAnimated:1 completionHandler:0];
  }
}

- (void)dismissAppIconForceTouchControllers:(id)a3
{
  v3 = MEMORY[0x277D66210];
  v4 = a3;
  v5 = [v3 sharedInstance];
  [v5 dismissAppIconForceTouchControllers:v4];
}

- (BOOL)areAnyIconViewContextMenusAnimating
{
  v2 = [MEMORY[0x277D66210] sharedInstance];
  v3 = [v2 areAnyIconViewContextMenusAnimating];

  return v3;
}

- (BOOL)isAnySearchVisibleOrTransitioning
{
  v2 = [(SBHomeScreenController *)self _rootFolderController];
  v3 = [v2 isAnySearchVisibleOrTransitioning];

  return v3;
}

- (void)performAfterContextMenuAnimationsHaveCompleted:(id)a3
{
  v3 = MEMORY[0x277D66210];
  v4 = a3;
  v5 = [v3 sharedInstance];
  [v5 performAfterContextMenuAnimationsHaveCompleted:v4];
}

- (void)earlyTerminateAnyContextMenuAnimations
{
  v2 = [MEMORY[0x277D66210] sharedInstance];
  [v2 earlyTerminateAnyContextMenuAnimations];
}

- (BOOL)_isHostedByCoverSheet
{
  v2 = [(SBHomeScreenController *)self coverSheetPresentationManager];
  v3 = [v2 isCoverSheetHostingUnlockedEnvironmentWindows];

  return v3;
}

- (BOOL)_shouldHideAppIconForceTouchInfoForApplication:(id)a3
{
  v3 = [a3 info];
  v4 = [v3 isBlockedForScreenTimeExpiration];

  return v4;
}

- (id)iconManager:(id)a3 dataSourceForOpenApplicationWindowsContextMenuProvider:(id)a4
{
  v4 = objc_alloc_init(SBOpenApplicationWindowsContextMenuDataSource);

  return v4;
}

- (BOOL)iconManager:(id)a3 requestDeleteFileStackIcon:(id)a4
{
  v5 = a4;
  v6 = [(SBHomeScreenController *)self windowScene];
  v7 = [v6 floatingDockController];
  v8 = [v7 remoteContentManager];

  LOBYTE(v6) = [v8 deleteFileStackIcon:v5];
  return v6;
}

- (id)iconManager:(id)a3 applicationShortcutItemsForIconView:(id)a4
{
  v90 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 icon];
  v9 = [v7 location];
  v83 = v7;
  v10 = [v6 isEditingAllowedForIconView:v7];
  if (v10)
  {
    if ([(SBHomeScreenController *)self isOnlyHideSuggestionSupportedForIcon:v8 inLocation:v9])
    {
      v11 = [(SBHomeScreenController *)self isHideSuggestionSupportedForIconView:v7 inLocation:v9];
    }

    else if ([(SBHomeScreenController *)self isHideSupportedForIcon:v8 inLocation:v9])
    {
      v11 = 2;
    }

    else if ([(SBHomeScreenController *)self isUninstallSupportedForIcon:v8])
    {
      v11 = 3;
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

  if ([v8 isApplicationIcon])
  {
    v82 = v6;
    v12 = [v8 application];
    v13 = [v8 applicationPlaceholder];
    v81 = v11;
    if (([v13 isDownloading] & 1) == 0 && (objc_msgSend(v13, "isPaused") & 1) == 0 && (objc_msgSend(v13, "isWaiting") & 1) == 0)
    {
      v38 = [v13 isCloudDemoted];
      if (v12 && (v38 & 1) == 0)
      {
        v76 = v13;
        v80 = [(SBHomeScreenController *)self _shouldHideAppIconForceTouchInfoForApplication:v12];
        v39 = [v12 bundleIdentifier];
        v40 = +[SBMainSwitcherControllerCoordinator sharedInstance];
        v41 = [v40 _recentAppLayoutsController];
        v42 = v39;
        v43 = [v41 recentDisplayItemsForBundleIdentifier:v39 includingHiddenAppLayouts:0];
        v74 = [v43 count];

        v73 = [v82 isIconIgnored:v8];
        v44 = objc_opt_class();
        v45 = v8;
        if (v44)
        {
          if (objc_opt_isKindOfClass())
          {
            v46 = v45;
          }

          else
          {
            v46 = 0;
          }
        }

        else
        {
          v46 = 0;
        }

        v49 = v46;

        v50 = MEMORY[0x277CEBE80];
        v72 = v49;
        v51 = [v49 applicationBundleID];
        v52 = [v50 applicationWithBundleIdentifier:v51];

        v75 = v52;
        v53 = v45;
        if (v80)
        {
          v54 = 0;
        }

        else
        {
          v54 = [v52 isLocked] ^ 1;
        }

        v20 = v42;
        v55 = MEMORY[0x277D661A8];
        v56 = [v53 displayName];
        if (v80)
        {
          v78 = 0;
        }

        else
        {
          v63 = [v12 info];
          v78 = [v63 staticApplicationShortcutItems];
        }

        v71 = v54;
        if (v54)
        {
          v69 = [v12 dynamicApplicationShortcutItems];
        }

        else
        {
          v69 = 0;
        }

        v70 = [v12 info];
        v66 = [v70 itemID];
        v68 = [v66 unsignedIntegerValue];
        v57 = [v12 info];
        v67 = [v57 supportsMultiwindow];
        v65 = [v12 isSystemApplication];
        v64 = [v12 isInternalApplication];
        v58 = [v12 info];
        BYTE5(v61) = v10;
        BYTE4(v61) = v73;
        BYTE3(v61) = [v58 isBeta];
        BYTE2(v61) = v64;
        BYTE1(v61) = v65;
        LOBYTE(v61) = v67;
        v59 = v55;
        v60 = v56;
        v25 = [v59 composedShortcutsForApplicationWithBundleIdentifier:v20 iconDisplayName:v56 staticItems:v78 dynamicItems:v69 applicationItemID:v68 numberOfDisplayItemsInSwitcher:v74 supportsMultipleWindows:v61 isSystemApplication:v81 isInternalApplication:? isApplicationInBeta:? isApplicationHidden:? iconManagerAllowsEditing:? removeStyle:?];

        if (v71)
        {
        }

        v13 = v76;
        v21 = v72;
        if (!v80)
        {
        }

        v22 = v75;
        goto LABEL_10;
      }

      if (!v38)
      {
        v25 = 0;
        goto LABEL_11;
      }
    }

    v14 = [(SBHomeScreenController *)self applicationPlaceholderController];
    [v14 placeholdersByDisplayID];
    v15 = v79 = v12;
    v77 = [v15 count] > 1;

    v16 = [v13 canBeShared];
    v17 = self;
    v18 = v9;
    v19 = MEMORY[0x277D661A8];
    v20 = [v13 applicationBundleID];
    v21 = [v8 displayName];
    v22 = [v13 applicationItemID];
    v23 = [v22 unsignedIntegerValue];
    LOBYTE(v62) = v16;
    v12 = v79;
    LOBYTE(v61) = v10;
    v24 = v19;
    v9 = v18;
    self = v17;
    v25 = [v24 composedShortcutsForDownloadingApplicationWithBundleIdentifier:v20 iconDisplayName:v21 applicationItemID:v23 canModifyDownloadState:1 prioritizationIsAvailable:v77 downloadingInformationAgent:v13 iconManagerAllowsEditing:v61 removeStyle:v81 canShare:v62];
LABEL_10:

LABEL_11:
    v6 = v82;
    goto LABEL_36;
  }

  if ([v8 isBookmarkIcon])
  {
    v26 = MEMORY[0x277D661A8];
    v27 = v8;
    v28 = [v27 displayName];
    v25 = [v26 composedShortcutsForBookmarkIcon:v27 withDisplayName:v28 iconManagerAllowsEditing:v10 removeStyle:v11];

    goto LABEL_36;
  }

  if ([v8 isFolderIcon])
  {
    v29 = objc_alloc_init(SBForceTouchAppIconInfoProvider);
    v30 = MEMORY[0x277D661A8];
    v31 = [(SBHomeScreenController *)self iconManager];
    [v31 iconImageCache];
    v33 = v32 = v11;
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __74__SBHomeScreenController_iconManager_applicationShortcutItemsForIconView___block_invoke;
    v84[3] = &unk_2783C25B0;
    v85 = v29;
    v34 = v29;
    v25 = [v30 composedShortcutsForFolderIcon:v8 iconImageCache:v33 iconManagerAllowsEditing:v10 removeStyle:v32 badgeViewGenerator:v84];
  }

  else
  {
    if (![v8 isWidgetIcon])
    {
      v25 = 0;
      goto LABEL_36;
    }

    v35 = [v7 customIconImageViewController];
    v36 = objc_opt_respondsToSelector();

    if (v36)
    {
      v37 = [v83 customIconImageViewController];
      v34 = [v37 applicationShortcutItems];
    }

    else
    {
      v34 = 0;
    }

    v25 = [MEMORY[0x277D661A8] composedShortcutsForWidgetIcon:v8 additionalApplicationShortcutItems:v34 widgetIconSupportsConfiguration:objc_msgSend(v83 iconManagerAllowsEditing:"supportsConfigurationCard") widgetSettings:{v10, self->_widgetSettings}];
  }

LABEL_36:
  v47 = SBLogIcon();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v87 = self;
    v88 = 2114;
    v89 = v25;
    _os_log_impl(&dword_21ED4E000, v47, OS_LOG_TYPE_DEFAULT, "%p: iconManager:applicationShortcutItemsForIconView: %{public}@", buf, 0x16u);
  }

  return v25;
}

id __74__SBHomeScreenController_iconManager_applicationShortcutItemsForIconView___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D66370];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  [v5 configureForIcon:v4 infoProvider:*(a1 + 32)];

  return v5;
}

- (BOOL)iconManager:(id)a3 shouldActivateApplicationShortcutItem:(id)a4 atIndex:(unint64_t)a5 forIconView:(id)a6
{
  v84 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v12 icon];
  v14 = [v11 type];
  if (([v14 isEqualToString:*MEMORY[0x277D66818]] & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", *MEMORY[0x277D66838]) & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", *MEMORY[0x277D66810]) & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", *MEMORY[0x277D66840]) & 1) != 0 || objc_msgSend(v14, "isEqualToString:", *MEMORY[0x277D66820]))
  {
    [v10 iconCloseBoxTapped:v12];
LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  if ([v14 isEqualToString:*MEMORY[0x277D667B8]] && objc_msgSend(v12, "supportsConfigurationCard"))
  {
    [v12 presentConfigurationCard];
    goto LABEL_7;
  }

  if ([v14 isEqualToString:*MEMORY[0x277D667B0]] && objc_msgSend(v12, "supportsStackConfigurationCard"))
  {
    [v12 presentStackConfigurationCard];
    goto LABEL_7;
  }

  if ([v14 isEqualToString:*MEMORY[0x277D667C0]])
  {
    v19 = [MEMORY[0x277CBEBC0] URLWithString:@"tap-to-radar://new?ComponentID=1083491&ComponentName=Proactive%20Stacks&ComponentVersion=UI&Title=Stack%20rotation%20feedback:&Classification=UI%2FUsability&Description=Give%20details%20here..."];
    SBWorkspaceActivateApplicationFromURL(v19, 0, 0);
LABEL_21:

    goto LABEL_7;
  }

  if ([v14 isEqualToString:*MEMORY[0x277D667D8]])
  {
    v20 = objc_opt_class();
    v21 = [v12 icon];
    v22 = SBSafeCast(v20, v21);

    [v10 hideSuggestedWidgetFromStack:v22];
LABEL_28:

    goto LABEL_7;
  }

  if ([v14 isEqualToString:*MEMORY[0x277D667D0]])
  {
    v23 = objc_opt_class();
    v24 = [v12 icon];
    v22 = SBSafeCast(v23, v24);

    [v10 hideSiriSuggestionOnWidgetFromStack:v22];
    goto LABEL_28;
  }

  if ([v14 isEqualToString:*MEMORY[0x277D66760]])
  {
    v25 = objc_opt_class();
    v26 = [v12 icon];
    v22 = SBSafeCast(v25, v26);

    [v10 addSuggestedActiveWidgetToStack:v22];
    goto LABEL_28;
  }

  if (([v13 isWidgetIcon] & 1) != 0 || objc_msgSend(v13, "isApplicationIcon"))
  {
    if ([v14 isEqualToString:*MEMORY[0x277D667A0]])
    {
      v27 = *MEMORY[0x277D66788];
LABEL_37:
      if ([v14 isEqualToString:v27])
      {
        v29 = MEMORY[0x277D66518];
      }

      else if ([v14 isEqualToString:*MEMORY[0x277D66780]])
      {
        v29 = MEMORY[0x277D66510];
      }

      else if ([v14 isEqualToString:*MEMORY[0x277D66798]])
      {
        v29 = MEMORY[0x277D66528];
      }

      else
      {
        v33 = [v14 isEqualToString:*MEMORY[0x277D66790]];
        v29 = MEMORY[0x277D66548];
        if (v33)
        {
          v29 = MEMORY[0x277D66520];
        }
      }

      v19 = *v29;
      if ([v13 isWidgetIcon])
      {
        [v10 changeSizeOfWidgetIcon:v13 toSizeClass:v19];
      }

      else
      {
        [v10 replaceAppIcon:v13 withWidgetOfSize:v19];
      }

      goto LABEL_21;
    }

    v28 = [v14 isEqualToString:*MEMORY[0x277D66790]];
    v27 = *MEMORY[0x277D66788];
    if ((v28 & 1) != 0 || ([v14 isEqualToString:*MEMORY[0x277D66788]] & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", *MEMORY[0x277D66780]) & 1) != 0 || objc_msgSend(v14, "isEqualToString:", *MEMORY[0x277D66798]))
    {
      goto LABEL_37;
    }
  }

  if ([v13 isWidgetIcon] && (objc_msgSend(v13, "isWidgetStackIcon") & 1) == 0 && objc_msgSend(v14, "isEqualToString:", *MEMORY[0x277D667A8]))
  {
    [v10 replaceWidgetIconWithAppIcon:v13];
    goto LABEL_7;
  }

  if ([v14 isEqualToString:*MEMORY[0x277D66830]])
  {
    [v12 startForbiddingEditingModeWithReason:@"SBIconViewForbidEditingModeBecauseWeAreAnimatingTheContextMenuOutButWantEditingToStateImmediately"];
    [v10 setEditing:1 fromIconView:v12];
    objc_initWeak(buf, v12);
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __96__SBHomeScreenController_iconManager_shouldActivateApplicationShortcutItem_atIndex_forIconView___block_invoke;
    v72[3] = &unk_2783A8C68;
    objc_copyWeak(&v73, buf);
    [v12 performAfterContextMenusDismissUsingBlock:v72];
    objc_destroyWeak(&v73);
    objc_destroyWeak(buf);
    goto LABEL_7;
  }

  if ([v13 isApplicationIcon])
  {
    v64 = v13;
    if ([v14 isEqualToString:*MEMORY[0x277D66848]])
    {
      v62 = [SBApp windowSceneManager];
      v60 = [v62 activeDisplayWindowScene];
      v30 = [v60 _fbsDisplayConfiguration];
      v31 = +[SBApplicationMultiwindowService sharedInstance];
      v32 = [v64 applicationBundleID];
      [v31 triggerShowAllWindowsForApplicationBundleIdentifier:v32 displayConfiguration:v30];
    }

    else if ([v14 isEqualToString:*MEMORY[0x277D66828]])
    {
      v36 = [SBApp windowSceneManager];
      v37 = [v36 activeDisplayWindowScene];
      v61 = [v37 switcherController];

      v63 = [v61 windowScene];
      v56 = [v63 _fbsDisplayConfiguration];
      v59 = [v64 application];
      v57 = [v63 sceneManager];
      v58 = [v63 _fbsDisplayIdentity];
      v38 = [SBDeviceApplicationSceneEntity newEntityWithApplication:v59 sceneHandleProvider:v57 displayIdentity:v58];
      v39 = +[SBWorkspace mainWorkspace];
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __96__SBHomeScreenController_iconManager_shouldActivateApplicationShortcutItem_atIndex_forIconView___block_invoke_2;
      v70[3] = &unk_2783A98F0;
      v71 = v38;
      v40 = v38;
      [v39 requestTransitionWithOptions:0 displayConfiguration:v56 builder:v70];
    }

    else if ([v14 isEqualToString:*MEMORY[0x277D667F0]])
    {
      [v64 prioritizeDownload];
    }

    else if ([v14 isEqualToString:*MEMORY[0x277D667E8]])
    {
      [v64 pauseDownload];
    }

    else if ([v14 isEqualToString:*MEMORY[0x277D66800]])
    {
      [v64 resumeDownload];
    }

    else if ([v14 isEqualToString:*MEMORY[0x277D66778]])
    {
      [v64 cancelDownload];
    }

    else if ([v14 isEqualToString:*MEMORY[0x277D66808]])
    {
      v48 = [v10 iconShareSheetManager];
      [v48 presentShareSheetForIconView:v12];
    }

    else
    {
      v49 = *MEMORY[0x277D667E0];
      if (([v14 isEqualToString:*MEMORY[0x277D667E0]] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", *MEMORY[0x277D66858]))
      {
        [v64 changeLockedStatusToLocked:{objc_msgSend(v14, "isEqualToString:", v49)}];
      }

      else
      {
        v50 = *MEMORY[0x277D667C8];
        if (([v14 isEqualToString:*MEMORY[0x277D667C8]] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", *MEMORY[0x277D66850]))
        {
          [v64 changeHiddenStatusToHidden:{objc_msgSend(v14, "isEqualToString:", v50)}];
        }

        else
        {
          if (![v14 isEqualToString:*MEMORY[0x277D66758]])
          {
            v15 = 1;
            goto LABEL_88;
          }

          v51 = MEMORY[0x277CEBE80];
          v52 = [v64 applicationBundleID];
          v53 = [v51 applicationWithBundleIdentifier:v52];

          if ([v53 isHidden])
          {
            v54 = [(SBHomeScreenController *)self rootViewController];
            v68[0] = MEMORY[0x277D85DD0];
            v68[1] = 3221225472;
            v68[2] = __96__SBHomeScreenController_iconManager_shouldActivateApplicationShortcutItem_atIndex_forIconView___block_invoke_4;
            v68[3] = &unk_2783A92D8;
            v68[4] = self;
            v69 = v64;
            v55 = _SBUnhideProtectedAppAlertControllerFor(v53, v68);
            [v54 presentViewController:v55 animated:1 completion:0];
          }

          else
          {
            [(SBHomeScreenController *)self addIconToHomeScreen:v64];
          }
        }
      }
    }

    v15 = 0;
LABEL_88:

    goto LABEL_8;
  }

  if ([v14 isEqualToString:*MEMORY[0x277D66768]])
  {
    v34 = [v11 userInfo];
    v19 = [v34 objectForKey:*MEMORY[0x277D66770]];

    if (v19)
    {
      v35 = [MEMORY[0x277CBEBC0] URLWithString:v19];
      SBWorkspaceActivateApplicationFromURL(v35, 0, 0);
    }

    goto LABEL_21;
  }

  if ([v13 isBookmarkIcon])
  {
    if (![v13 displaysShareBookmarkShortcutItem] || !objc_msgSend(v14, "isEqualToString:", *MEMORY[0x277D66808]))
    {
      goto LABEL_7;
    }

    v19 = [v10 iconShareSheetManager];
    [v19 presentShareSheetForIconView:v12];
    goto LABEL_21;
  }

  if ([v13 isFolderIcon])
  {
    if ([v14 isEqualToString:*MEMORY[0x277D66860]])
    {
      v41 = [(SBHomeScreenController *)self applicationController];
      v42 = [v11 bundleIdentifierToLaunch];
      v43 = [v41 applicationWithBundleIdentifier:v42];

      SBWorkspaceActivateApplication(v43);
    }

    else if ([v14 isEqualToString:*MEMORY[0x277D667F8]])
    {
      v47 = [v12 location];
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __96__SBHomeScreenController_iconManager_shouldActivateApplicationShortcutItem_atIndex_forIconView___block_invoke_5;
      v65[3] = &unk_2783A8BF0;
      v66 = v10;
      v67 = v12;
      [v66 openFolderIcon:v13 location:v47 animated:1 withCompletion:v65];
    }

    goto LABEL_7;
  }

  v44 = [v12 customIconImageViewController];
  v45 = objc_opt_respondsToSelector();

  if (v45)
  {
    v46 = [v12 customIconImageViewController];
    [v46 didSelectApplicationShortcutItem:v11];
  }

  v15 = 1;
LABEL_8:
  v16 = SBLogIcon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219010;
    v17 = @"NO";
    v75 = self;
    v76 = 2114;
    if (v15)
    {
      v17 = @"YES";
    }

    v77 = v11;
    v78 = 2048;
    v79 = a5;
    v80 = 2114;
    v81 = v12;
    v82 = 2114;
    v83 = v17;
    _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "%p: iconManager:shouldActivateApplicationShortcutItem:%{public}@ atIndex:%lu forIconView:%{public}@ -- Returning %{public}@", buf, 0x34u);
  }

  return v15;
}

void __96__SBHomeScreenController_iconManager_shouldActivateApplicationShortcutItem_atIndex_forIconView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained endForbiddingEditingModeWithReason:@"SBIconViewForbidEditingModeBecauseWeAreAnimatingTheContextMenuOutButWantEditingToStateImmediately"];
}

void __96__SBHomeScreenController_iconManager_shouldActivateApplicationShortcutItem_atIndex_forIconView___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:35];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __96__SBHomeScreenController_iconManager_shouldActivateApplicationShortcutItem_atIndex_forIconView___block_invoke_3;
  v4[3] = &unk_2783A98C8;
  v5 = *(a1 + 32);
  [v3 modifyApplicationContext:v4];
}

void __96__SBHomeScreenController_iconManager_shouldActivateApplicationShortcutItem_atIndex_forIconView___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setEditing:1 fromIconView:*(a1 + 40)];
  v2 = [*(a1 + 32) openedFolderController];
  [v2 beginEditingTitle];
}

- (BOOL)iconManager:(id)a3 shouldGroupSystemApplicationShortcutItemsForIconView:(id)a4
{
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  return (v5 & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

- (id)iconManager:(id)a3 applicationShortcutSectionOrderingForIconView:(id)a4
{
  v4 = a4;
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v7 = [v4 location];
    v8 = SBIconLocationGroupContainsLocation();

    if (v8)
    {
      v9 = &unk_28336EF88;
    }

    else
    {
      v10 = [v4 icon];
      v11 = [v10 isWidgetIcon];

      v12 = [v4 icon];
      v13 = [v12 isWidgetStackIcon];

      if ((v11 | v13))
      {
        v9 = &unk_28336EFA0;
      }

      else
      {
        v9 = &unk_28336EFB8;
      }
    }
  }

  else
  {
    v9 = &unk_28336EFD0;
  }

  return v9;
}

- (unint64_t)iconManager:(id)a3 supportedMultitaskingShortcutActionsForIconView:(id)a4
{
  v5 = [a4 icon];
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2 || ![v5 isApplicationIcon])
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v7 = [MEMORY[0x277D75418] currentDevice];
  if ([v7 userInterfaceIdiom] != 1)
  {
    v6 = 0;
    goto LABEL_9;
  }

  v8 = [v5 isApplicationIcon];

  if (v8)
  {
LABEL_7:
    v7 = [v5 applicationBundleID];
    v6 = _SBHMultitaskingApplicationSupportedShortcutActionMaskFromSBSMask([(SBHomeScreenController *)self supportedMultitaskingShortcutActionsForBundleIdentifier:v7]);
LABEL_9:

    goto LABEL_10;
  }

LABEL_4:
  v6 = 0;
LABEL_10:

  return v6;
}

- (unint64_t)supportedMultitaskingShortcutActionsForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SBHomeScreenController *)self applicationController];
  v6 = [v5 applicationWithBundleIdentifier:v4];

  if (v6)
  {
    v7 = [SBApp windowSceneManager];
    v8 = [v7 activeDisplayWindowScene];
    v9 = [v8 switcherController];

    v10 = [v9 canPerformKeyboardShortcutAction:11 forBundleIdentifier:v4 orSceneIdentifier:0];
    if ([v9 canPerformKeyboardShortcutAction:13 forBundleIdentifier:v4 orSceneIdentifier:0])
    {
      v10 |= 6uLL;
    }

    if ([v9 canPerformKeyboardShortcutAction:3 forBundleIdentifier:v4 orSceneIdentifier:0])
    {
      v10 |= 8uLL;
    }

    if ([v9 canPerformKeyboardShortcutAction:18 forBundleIdentifier:v4 orSceneIdentifier:0])
    {
      v10 |= 0x10uLL;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)iconManager:(id)a3 shouldPreviewOverlapMenuForIconView:(id)a4
{
  v4 = a4;
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = [MEMORY[0x277D75418] currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if (v6)
    {
      goto LABEL_7;
    }
  }

  v7 = [v4 icon];
  v8 = [v7 isWidgetIcon];

  if (!v8)
  {
    v9 = 1;
    goto LABEL_9;
  }

LABEL_7:
  v9 = 0;
LABEL_9:

  return v9;
}

- (int64_t)iconManager:(id)a3 preferredMenuElementOrderForIconView:(id)a4
{
  v4 = [a4 location];
  v5 = SBIconLocationGroupContainsLocation();

  if (v5)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)dismissHomeScreenOverlaysForAddingNewIcon
{
  v9 = [(SBHomeScreenController *)self iconManager];
  if ([v9 isShowingSpotlightOrLeadingCustomView])
  {
    [v9 dismissSpotlightAnimated:1 completionHandler:0];
  }

  v3 = +[SBMainWorkspace sharedInstance];
  v4 = [v3 transientOverlayPresentationManager];

  if ([v4 hasActivePresentation])
  {
    v5 = +[SBTransientOverlayDismissalRequest dismissalRequestForAllViewControllers];
    [v4 performDismissalRequest:v5];
  }

  if ([(SBHomeScreenController *)self isModalAppLibrarySupported])
  {
    v6 = [(SBHomeScreenController *)self windowScene];
    v7 = [v6 modalLibraryController];
    v8 = [v7 libraryViewController];
  }

  else
  {
    v8 = [(SBHomeScreenController *)self overlayLibraryViewController];
  }

  [v8 forcedSearchTextFieldNoneditable:1];
  [v9 setDisablesScrollingToLastIconPageForLibraryDismissal:1];
  [(SBHomeScreenController *)self dismissHomeScreenOverlaysAnimated:1];
  [v9 setDisablesScrollingToLastIconPageForLibraryDismissal:0];
  [v8 forcedSearchTextFieldNoneditable:0];
}

- (void)addIconToHomeScreen:(id)a3
{
  v4 = a3;
  v5 = [(SBHomeScreenController *)self iconManager];
  [v5 addNewIconToDesignatedLocation:v4 options:91];

  [(SBHomeScreenController *)self dismissHomeScreenOverlaysForAddingNewIcon];
}

- (void)_forceTouchControllerWillPresent:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 object];

  v11 = SBSafeCast(v5, v6);

  if (v11)
  {
    v7 = [(SBHomeScreenController *)self windowScene];
    v8 = [v7 floatingDockController];
    if ([v8 isFloatingDockPresented])
    {
      v9 = [v11 location];
      if (([v9 isEqual:*MEMORY[0x277D66690]] & 1) == 0)
      {
        v10 = [v11 location];
        [v10 isEqual:@"SBIconLocationFloatingDockSuggestions"];
      }
    }
  }
}

- (id)_aggregateLoggingAppKeyForIcon:(id)a3
{
  v3 = a3;
  if ([v3 isApplicationIcon])
  {
    v4 = v3;
    v5 = [v4 application];
    v6 = [v4 applicationPlaceholder];
    if (([v5 isSystemApplication] & 1) != 0 || objc_msgSend(v5, "isInternalApplication"))
    {
      v7 = [v5 bundleIdentifier];
    }

    else if (v5)
    {
      v7 = @"thirdParty";
    }

    else if (v6)
    {
      v9 = [v4 applicationBundleID];
      v10 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v9 allowPlaceholder:1 error:0];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 typeForInstallMachinery];
        v13 = [v12 isEqualToString:@"User"];

        if (v13)
        {
          v7 = @"thirdParty";
        }

        else
        {
          v7 = v9;
        }
      }

      else
      {
        v7 = @"unknown";
      }
    }

    else
    {
      v7 = @"unknown";
    }
  }

  else if ([v3 isBookmarkIcon])
  {
    v7 = @"bookmark";
  }

  else if ([v3 isFolderIcon])
  {
    v7 = @"folder";
  }

  else
  {
    v7 = @"unknown";
  }

  return v7;
}

- (void)_styleEditorWillPresent:(id)a3
{
  v4 = [(SBHomeScreenController *)self windowScene];
  v5 = [v4 zStackResolver];
  v6 = [v5 acquireParticipantWithIdentifier:6 delegate:self];
  zStackParticipant = self->_zStackParticipant;
  self->_zStackParticipant = v6;

  v8 = self->_zStackParticipant;

  [(SBHomeScreenController *)self zStackParticipantDidChange:v8];
}

- (void)_styleEditorDidDismiss:(id)a3
{
  [(SBFZStackParticipant *)self->_zStackParticipant invalidate];
  zStackParticipant = self->_zStackParticipant;
  self->_zStackParticipant = 0;
}

- (void)_colorDropperWillPresent:(id)a3
{
  v5 = a3;
  v17 = [(SBHomeScreenController *)self windowScene];
  v6 = [v17 floatingDockController];
  colorPickerInterfactionFloatingDockBehaviorAssertion = self->_colorPickerInterfactionFloatingDockBehaviorAssertion;
  if (colorPickerInterfactionFloatingDockBehaviorAssertion)
  {
    [(SBFloatingDockBehaviorAssertion *)colorPickerInterfactionFloatingDockBehaviorAssertion invalidate];
  }

  v8 = [SBFloatingDockBehaviorAssertion alloc];
  v9 = [v5 name];

  v10 = [(SBFloatingDockBehaviorAssertion *)v8 initWithFloatingDockController:v6 visibleProgress:1 animated:0 gesturePossible:0 atLevel:v9 reason:0 withCompletion:0.0];
  v11 = self->_colorPickerInterfactionFloatingDockBehaviorAssertion;
  self->_colorPickerInterfactionFloatingDockBehaviorAssertion = v10;

  duckWallpaperDimmingAssertion = self->_duckWallpaperDimmingAssertion;
  if (duckWallpaperDimmingAssertion)
  {
    [(BSInvalidatable *)duckWallpaperDimmingAssertion invalidate];
  }

  v13 = +[SBWallpaperController sharedInstance];
  v14 = NSStringFromSelector(a2);
  v15 = [v13 acquireDuckHomeScreenWallpaperDimAssertionWithReason:v14];
  v16 = self->_duckWallpaperDimmingAssertion;
  self->_duckWallpaperDimmingAssertion = v15;

  [(SBHomeScreenController *)self _beginDisablingAllOrientationChangesForReason:@"SBIconControllerDisableRotationForStyleColorDropperReason"];
}

- (void)_colorDropperDismissed:(id)a3
{
  [(SBFloatingDockBehaviorAssertion *)self->_colorPickerInterfactionFloatingDockBehaviorAssertion invalidate];
  colorPickerInterfactionFloatingDockBehaviorAssertion = self->_colorPickerInterfactionFloatingDockBehaviorAssertion;
  self->_colorPickerInterfactionFloatingDockBehaviorAssertion = 0;

  [(BSInvalidatable *)self->_duckWallpaperDimmingAssertion invalidate];
  duckWallpaperDimmingAssertion = self->_duckWallpaperDimmingAssertion;
  self->_duckWallpaperDimmingAssertion = 0;

  [(SBHomeScreenController *)self _endDisablingAllOrientationChangesForReason:@"SBIconControllerDisableRotationForStyleColorDropperReason"];
}

- (void)_startSpotlightInteractiveGestureTransactionForGesture:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277D65D28] enableFloatingWindow])
  {
    v5 = [(SBHomeScreenController *)self policyAggregator];
    v6 = [v5 allowsCapability:9];

    if (v6)
    {
      if (!self->_spotlightInteractiveGestureTransaction)
      {
        v7 = SBApp;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __81__SBHomeScreenController__startSpotlightInteractiveGestureTransactionForGesture___block_invoke;
        v11[3] = &unk_2783ACE58;
        v12 = v4;
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __81__SBHomeScreenController__startSpotlightInteractiveGestureTransactionForGesture___block_invoke_2;
        v8[3] = &unk_2783C2600;
        v9 = v12;
        v10 = self;
        [v7 beginInteractiveSpotlightTransientOverlayPresentationWithValidator:v11 beginHandler:v8];
      }
    }
  }
}

void __81__SBHomeScreenController__startSpotlightInteractiveGestureTransactionForGesture___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([*(a1 + 32) isDragging])
  {
    objc_storeStrong((*(a1 + 40) + 328), a2);
    objc_initWeak(&location, *(a1 + 40));
    v5 = [v4 completionBlock];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __81__SBHomeScreenController__startSpotlightInteractiveGestureTransactionForGesture___block_invoke_3;
    v7[3] = &unk_2783C25D8;
    v6 = v5;
    v8 = v6;
    objc_copyWeak(&v9, &location);
    [v4 setCompletionBlock:v7];
    objc_destroyWeak(&v9);

    objc_destroyWeak(&location);
  }

  else
  {
    [v4 noteGestureFinishedBeforeTransactionBegan];
  }
}

void __81__SBHomeScreenController__startSpotlightInteractiveGestureTransactionForGesture___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained[41];
    WeakRetained[41] = 0;
    v5 = WeakRetained;

    WeakRetained = v5;
  }
}

- (void)searchGesture:(id)a3 startedShowing:(BOOL)a4
{
  if (a4)
  {
    [(SBHomeScreenController *)self _startSpotlightInteractiveGestureTransactionForGesture:a3];
  }
}

- (void)searchGesture:(id)a3 changedPercentComplete:(double)a4
{
  v7 = a3;
  if ([v7 isTracking])
  {
    if (self->_spotlightInteractiveGestureTransaction || ([(SBHomeScreenController *)self _startSpotlightInteractiveGestureTransactionForGesture:v7], self->_spotlightInteractiveGestureTransaction))
    {
      [objc_opt_class() searchHeaderHeight];
      [(SBSpotlightTransientOverlayInteractiveGestureTransaction *)self->_spotlightInteractiveGestureTransaction updatePresentationWithProgress:a4 translation:v6 * a4];
    }
  }
}

- (void)searchGesture:(id)a3 endedGesture:(BOOL)a4
{
  spotlightInteractiveGestureTransaction = self->_spotlightInteractiveGestureTransaction;
  if (spotlightInteractiveGestureTransaction)
  {
    [(SBSpotlightTransientOverlayInteractiveGestureTransaction *)spotlightInteractiveGestureTransaction endPresentation:a4];
  }
}

- (void)publisher:(id)a3 didUpdateLayout:(id)a4 withTransition:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [a4 elements];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v20;
    v10 = *MEMORY[0x277D0ABA0];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if ([v12 isSpringBoardElement])
        {
          v13 = [v12 identifier];
          v14 = [v13 isEqualToString:v10];

          if (v14)
          {
            v8 |= 0x10uLL;
          }

          else
          {
            v15 = [v12 identifier];
            v16 = [v15 isEqualToString:@"com.apple.InCallService"];

            if (v16)
            {
              v8 |= 0x20uLL;
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SBHomeScreenController_publisher_didUpdateLayout_withTransition___block_invoke;
  block[3] = &unk_2783A8BC8;
  block[4] = self;
  block[5] = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __67__SBHomeScreenController_publisher_didUpdateLayout_withTransition___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIconOcclusionReasons:{objc_msgSend(*(a1 + 32), "iconOcclusionReasons") & 0xFFFFFFFFFFFFFFCFLL | *(a1 + 40)}];
  v2 = *(a1 + 32);

  return [v2 _updateVisibleIconsAfterOcclusionChange];
}

- (UIView)containerView
{
  v2 = [(SBHomeScreenController *)self homeScreenViewController];
  v3 = [v2 iconContentView];

  return v3;
}

- (void)alertItemsController:(id)a3 willActivateAlertItem:(id)a4
{
  v5 = SBLogIconDragging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "alert item will activate", v7, 2u);
  }

  v6 = [(SBHomeScreenController *)self iconManager];
  [v6 cancelAllDrags];
}

- (void)assistantWillAppear:(id)a3 windowScene:(id)a4
{
  if ([a4 isMainDisplayWindowScene])
  {
    v5 = SBLogIconDragging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "assistant will appear", v8, 2u);
    }

    v6 = [(SBHomeScreenController *)self iconManager];
    [v6 setEditing:0];

    v7 = [(SBHomeScreenController *)self iconManager];
    [v7 cancelAllDrags];
  }
}

- (void)iconManager:(id)a3 willDestroyRootFolderController:(id)a4
{
  v5 = a4;
  [v5 removePageStateObserver:self];
  [v5 setAccessoryViewControllerDelegate:0];

  v12 = [(SBHomeScreenController *)self homeScreenViewController];
  v6 = [v12 iconContentView];
  v7 = objc_opt_class();
  v8 = v6;
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

  [v10 setContentView:0];
  v11 = [(SBHomeScreenController *)self spotlightViewController];
  [v11 invalidate];

  [(SBHomeScreenController *)self setSpotlightViewController:0];
}

- (void)iconManager:(id)a3 willDestroyRootViewController:(id)a4
{
  v5 = a4;
  v11 = [(SBHomeScreenController *)self homeScreenViewController];
  v6 = [v11 iconContentView];
  v7 = objc_opt_class();
  v8 = v6;
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

  [v10 setContentView:0];
  [v5 removeFromParentViewController];

  [(SBHomeScreenController *)self setRootViewController:0];
}

- (void)iconManager:(id)a3 willUseRootFolderControllerConfiguration:(id)a4
{
  v26 = a3;
  v6 = a4;
  if (MEMORY[0x223D6D4D0]())
  {
    if (SBHHomeScreenSearchAffordanceEnabled() && (+[SBDefaults localDefaults](SBDefaults, "localDefaults"), v7 = objc_claimAutoreleasedReturnValue(), [v7 homeScreenDefaults], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "showsHomeScreenSearchAffordance"), v8, v7, v9))
    {
      v10 = objc_alloc_init(MEMORY[0x277D662A8]);
      v11 = [(SBHomeScreenController *)self legibilitySettings];
      [v10 setLegibilitySettings:v11];

      [v10 setAccessibilityIdentifier:@"spotlight-pill"];
      [(SBHomeScreenController *)self setScrollAccessoryAuxiliaryView:v10];
      [v6 setScrollAccessoryAuxiliaryView:v10];
      v12 = [(SBHomeScreenController *)self _newSearchPillBackgroundView];
      [v6 setScrollAccessoryBackgroundView:v12];
    }

    else
    {
      [(SBHomeScreenController *)self setScrollAccessoryAuxiliaryView:0];
    }

    v13 = [[SBHomeScreenSpotlightViewController alloc] initWithDelegate:self];
    [(SBHomeScreenController *)self setSpotlightViewController:v13];
    v14 = [[SBSpotlightPresentableViewController alloc] initWithSpotlightMultiplexingViewController:v13];
    [(SBSpotlightPresentableViewController *)v14 setDelegate:self];
    [(SBHomeScreenController *)self setSearchPresentableViewController:v14];
    v15 = [SBSearchPresenter alloc];
    v16 = [MEMORY[0x277D661A0] rootSettings];
    v17 = [v16 homeScreenPullToSearchSettings];
    v18 = [(SBHomeScreenController *)self _identifierForSearchPresenter];
    v19 = [(SBSearchPresenter *)v15 initWithSettings:v17 identifier:v18];

    [(SBSearchPresenter *)v19 setSearchPresenterDelegate:self];
    [(SBSearchPresenter *)v19 setUsesTransitionDistanceAsStartOffset:1];
    [(SBHomeScreenController *)self setSearchPresenter:v19];
    [v6 setSearchPresenter:v19];
    [v6 setSearchPresentableViewController:v14];
  }

  else
  {
    [(SBHomeScreenController *)self setSpotlightViewController:0];
    [(SBHomeScreenController *)self setSearchPresentableViewController:0];
    [(SBHomeScreenController *)self setSearchPresenter:0];
    if ([MEMORY[0x277D65D28] enableFloatingWindow])
    {
      goto LABEL_10;
    }

    v13 = [[SBHomeScreenSpotlightViewController alloc] initWithDelegate:self];
    [(SBSpotlightMultiplexingViewController *)v13 setSpotlightDelegate:self];
    [(SBHomeScreenController *)self setSpotlightViewController:v13];
    [v6 setPullDownSearchViewController:v13];
  }

LABEL_10:
  if ([(SBHomeScreenController *)self _isCoplanarHomeScreenEnabled])
  {
    v20 = [(SBHomeScreenController *)self todayViewController];
    [v6 setLeadingCustomViewController:v20];

    v21 = [(SBHomeScreenController *)self overlayLibraryViewController];
    [v6 setTrailingCustomViewController:v21];

    v22 = [(SBHomeScreenController *)self overlayLibraryViewController];
    [v22 setPresenter:v26];
  }

  v23 = [MEMORY[0x277D75418] currentDevice];
  v24 = [v23 userInterfaceIdiom];

  if ((v24 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if ([(SBHomeScreenController *)self allowsHomeScreenOverlay])
    {
      [v6 setIgnoresOverscrollOnFirstPageOrientations:30];
    }

    [v6 setFolderPageManagementAllowedOrientations:30];
    [v6 setShowsAddWidgetButtonWhileEditingAllowedOrientations:30];
    if ([(SBHomeScreenController *)self isFocusAllowedForIconManager:v26])
    {
      [v6 setAddsFocusGuidesForWrapping:1];
    }
  }

  else
  {
    if (![(SBHomeScreenController *)self _isCoplanarHomeScreenEnabled])
    {
      [v6 setIgnoresOverscrollOnFirstPageOrientations:30];
      if ([(SBHomeScreenController *)self isAppLibrarySupported])
      {
        [v6 setIgnoresOverscrollOnLastPageOrientations:6];
      }
    }

    [v6 setFolderPageManagementAllowedOrientations:6];
    [v6 setShowsAddWidgetButtonWhileEditingAllowedOrientations:6];
  }

  [v6 setUsesGlassGroup:0];
  v25 = [MEMORY[0x277CCAB98] defaultCenter];
  [v25 postNotificationName:SBIconControllerDidReconfigureChildControllersNotification object:self];
}

- (id)_newTodayViewControllerWithIconManager:(id)a3 iconListModel:(id)a4 rootFolder:(id)a5 location:(int64_t)a6
{
  v9 = a3;
  v10 = a5;
  v11 = [SBTodayViewController alloc];
  v12 = [v9 listLayoutProvider];
  v13 = [(SBHTodayViewController *)v11 initWithListLayoutProvider:v12 iconViewProvider:v9 location:a6];

  if (!v13)
  {
    [SBHomeScreenController _newTodayViewControllerWithIconManager:iconListModel:rootFolder:location:];
  }

  if (![(SBHomeScreenController *)self _isCoplanarHomeScreenEnabled])
  {
    [(SBHTodayViewController *)v13 setIconLocation:*MEMORY[0x277D666E0]];
  }

  [(SBHTodayViewController *)v13 setDelegate:self];
  [(SBHTodayViewController *)v13 addObserver:self];
  [(SBHTodayViewController *)v13 setRootFolder:v10];

  [(SBHTodayViewController *)v13 setIconManager:v9];
  -[SBHTodayViewController setEditing:](v13, "setEditing:", [v9 isEditing]);

  return v13;
}

- (void)iconManager:(id)a3 didCreateRootFolderController:(id)a4
{
  v12 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  [v12 addPageStateObserver:self];
  [v12 setAccessoryViewControllerDelegate:self];
  v6 = MEMORY[0x277D660D8];
  v7 = [WeakRetained screen];
  v8 = [(SBHomeScreenController *)self animationWindow];
  v9 = [(SBHomeScreenController *)self homeScreenContentView];
  v10 = [v6 contextWithScreen:v7 animationWindow:v8 fallbackIconContainer:v9];
  [v12 setAnimationContext:v10];

  v11 = [v12 searchGesture];
  [v11 addObserver:self];

  if ([WeakRetained isContinuityDisplayWindowScene])
  {
    [v12 setParallaxDisabled:1 forReason:@"Continuity"];
  }
}

- (void)iconManager:(id)a3 didCreateRootViewController:(id)a4
{
  v5 = a4;
  [(SBHomeScreenController *)self updateHomeScreenTraitOverridesForViewController:v5];
  v6 = *MEMORY[0x277D76620];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __66__SBHomeScreenController_iconManager_didCreateRootViewController___block_invoke;
  v21 = &unk_2783A92D8;
  v22 = self;
  v7 = v5;
  v23 = v7;
  [v6 _performBlockAfterCATransactionCommits:&v18];
  v8 = [v7 view];
  v9 = [(SBHomeScreenController *)self homeScreenViewController];
  v10 = [v9 iconContentView];
  v11 = objc_opt_class();
  v12 = v10;
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  [v9 bs_addChildViewController:v7 withSuperview:v14];
  [v14 setContentView:v8];
  [v14 sendSubviewToBack:v8];

  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v16 = [WeakRetained statusBarManager];
  [v16 updateHomeScreenStatusBarLegibility];

  [(SBHomeScreenController *)self setRootViewController:v7];
  v17 = [(SBHomeScreenController *)self searchPresentableViewController];
  [v17 invalidateSearchAffordanceView];
}

- (int64_t)interfaceOrientationForIconManager:(id)a3
{
  v3 = [(SBHomeScreenController *)self homeScreenViewController];
  v4 = [v3 effectiveOrientation];

  return v4;
}

- (unint64_t)allowedInterfaceOrientationsForIconManager:(id)a3
{
  v3 = [(SBHomeScreenController *)self homeScreenViewController];
  v4 = [v3 allowedInterfaceOrientations];

  return v4;
}

- (unint64_t)possibleInterfaceOrientationsForIconManager:(id)a3
{
  v3 = [(SBHomeScreenController *)self homeScreenViewController];
  v4 = [v3 possibleInterfaceOrientations];

  return v4;
}

- (BOOL)isRootFolderContentVisibleForIconManager:(id)a3
{
  v3 = [(SBHomeScreenController *)self _currentMainDisplayLayoutState];
  v4 = [v3 unlockedEnvironmentMode] == 1;

  return v4;
}

- (BOOL)isEditingAllowedForIconManager:(id)a3
{
  v3 = [(SBHomeScreenController *)self policyAggregator];
  v4 = [v3 allowsCapability:18];

  return v4;
}

- (BOOL)iconManager:(id)a3 isPartialEditingAllowedForIconLocation:(id)a4
{
  v5 = a4;
  v6 = [(SBHomeScreenController *)self _iconController];
  v7 = [v6 hasRestrictedEnforcedLayout];

  if (v7)
  {
    v8 = SBIconLocationGroupContainsLocation();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)iconManagerEditingDidChange:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBHomeScreenController *)self homeScreenOverlayController];
  [v5 updateExtraButtonVisibilityAnimated:1];

  if ([v4 isEditing])
  {
    v23 = v4;
    [SBApp windowSceneManager];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v22 = v31 = 0u;
    v6 = [v22 connectedWindowScenes];
    v7 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v29;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v28 + 1) + 8 * i);
          if ([v11 isExternalDisplayWindowScene])
          {
            v12 = [v11 floatingDockController];
            v13 = [[SBFloatingDockBehaviorAssertion alloc] initWithFloatingDockController:v12 visibleProgress:1 animated:0 gesturePossible:1 atLevel:@"hideFloatingDockOnExternalDisplayForHomeScreenEditMode" reason:0 withCompletion:0.0];
            v14 = [(SBHomeScreenController *)self floatingDockBehaviorAssertions];
            if (v14)
            {
              v15 = v14;
              v16 = [v14 setByAddingObject:v13];
            }

            else
            {
              v16 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v13, 0}];
            }

            [(SBHomeScreenController *)self setFloatingDockBehaviorAssertions:v16];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v8);
    }

    v4 = v23;
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v17 = [(SBHomeScreenController *)self floatingDockBehaviorAssertions];
    v18 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v25;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v24 + 1) + 8 * j) invalidate];
        }

        v19 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v19);
    }

    [(SBHomeScreenController *)self setFloatingDockBehaviorAssertions:0];
  }
}

- (void)iconManager:(id)a3 willUseIconImageCache:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [SBApp userSessionController];
  v7 = [v6 sessionType];

  if (v7 == 2)
  {
    [v5 setPoolingBypassCount:200];
  }

  v8 = [(SBHomeScreenController *)self _libraryViewControllers];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) setIconImageCache:v5];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)iconManagerListLayoutProviderDidChange:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [(SBHomeScreenController *)self _libraryViewControllers];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 _sbWindowScene];
        v11 = [(SBHomeScreenController *)self _appLibraryListLayoutProviderForWindowScene:v10];
        [v9 setListLayoutProvider:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)iconManagerDidFinishInstallForIcon:(id)a3
{
  v4 = [(SBHomeScreenController *)self _currentMainDisplayLayoutState];
  v5 = [v4 unlockedEnvironmentMode];

  if (v5 == 1)
  {

    [(SBHomeScreenController *)self _showInfoAlertIfNeeded:1];
  }
}

- (void)iconManager:(id)a3 willPrepareIconViewForLaunch:(id)a4
{
  v20[3] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(SBHomeScreenController *)self delayedLaunchRequestTimer];
  [v6 invalidate];

  [(SBHomeScreenController *)self setDelayedLaunchRequestTimer:0];
  v7 = [v5 icon];
  v8 = [v5 location];

  v9 = [(SBHomeScreenController *)self rootFolder];
  v10 = [v9 indexPathForIcon:v7];

  v11 = *MEMORY[0x277D67540];
  v20[0] = v8;
  v12 = *MEMORY[0x277D67538];
  v19[0] = v11;
  v19[1] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "isFolderIcon")}];
  v20[1] = v13;
  v19[2] = *MEMORY[0x277D67530];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "indexAtPosition:", objc_msgSend(v10, "length") - 1)}];
  v20[2] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v16 = MEMORY[0x277D65DD0];
  v17 = v15;
  v18 = [v16 sharedInstance];
  [v18 emitEvent:9 withPayload:v17];
}

- (void)iconManager:(id)a3 didReceiveTapOnLaunchDisabledIconView:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(SBHomeScreenController *)self delayedLaunchRequestTimer];
  [v6 invalidate];

  [(SBHomeScreenController *)self setDelayedLaunchRequestTimer:0];
  v7 = SBLogIcon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 icon];
    v9 = [v8 uniqueIdentifier];
    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Received tap on launch-disabled icon view '%@'", &v10, 0xCu);
  }

  kdebug_trace();
}

- (void)iconManager:(id)a3 launchIconForIconView:(id)a4 withActions:(id)a5 modifierFlags:(int64_t)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = [(SBHomeScreenController *)self delayedLaunchRequestTimer];
  [v11 invalidate];

  [(SBHomeScreenController *)self setDelayedLaunchRequestTimer:0];
  v12 = [v9 icon];
  if ([v12 isApplicationIcon] && (objc_msgSend(v12, "application"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isAnyTerminationAssertionInEffect"), v13, v14))
  {
    v15 = SBLogIcon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v12 applicationBundleID];
      *buf = 138412290;
      v29 = v16;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Delaying launch of %@ because termination assertion is held", buf, 0xCu);
    }

    v17 = MEMORY[0x277CBEBB8];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __86__SBHomeScreenController_iconManager_launchIconForIconView_withActions_modifierFlags___block_invoke;
    v23 = &unk_2783C2628;
    v24 = self;
    v25 = v9;
    v26 = v10;
    v27 = a6;
    v18 = [v17 timerWithTimeInterval:0 repeats:&v20 block:1.0];
    v19 = [MEMORY[0x277CBEB88] currentRunLoop];
    [v19 addTimer:v18 forMode:*MEMORY[0x277CBE738]];

    [(SBHomeScreenController *)self setDelayedLaunchRequestTimer:v18];
  }

  else
  {
    [(SBHomeScreenController *)self _launchFromIconView:v9 withActions:v10 modifierFlags:a6];
  }
}

- (void)iconManager:(id)a3 launchIcon:(id)a4 location:(id)a5 animated:(BOOL)a6 completionHandler:(id)a7
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a7;
  if (![v10 isApplicationIcon])
  {
    v18 = 0;
    if (!v12)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v13 = v10;
  v14 = [v13 application];
  v15 = [v13 applicationBundleID];
  v16 = v15;
  if (!v14)
  {
    if (v15)
    {
      v17 = [(SBHomeScreenController *)self applicationController];
      v14 = [v17 applicationWithBundleIdentifier:v16];
    }

    else
    {
      v14 = 0;
    }
  }

  v19 = SBLogIcon();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412802;
    v31 = v13;
    v32 = 2112;
    v33 = v16;
    v34 = 2112;
    v35 = v14;
    _os_log_fault_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_FAULT, "Fallback launch path: Trying to launch app icon: %@ (%@), found app: %@", buf, 0x20u);
  }

  v18 = v14 != 0;
  if (v14)
  {
    [(SBHomeScreenController *)self userInterfaceController];
    v20 = v29 = v16;
    v21 = v11;
    v22 = objc_alloc_init(SBActivationSettings);
    v23 = [MEMORY[0x277CBEB98] set];
    [v20 activateApplication:v14 fromIcon:v13 location:v21 activationSettings:v22 actions:v23];

    v11 = v21;
    v16 = v29;
    if (v29)
    {
      v24 = [(SBHomeScreenController *)self iconModel];
      v25 = [v24 applicationIconForBundleIdentifier:v29];

      if (v25 && v25 != v13)
      {
        v26 = [(SBHomeScreenController *)self rootFolder];
        v27 = [v26 indexPathForIcon:v13];
        if (v27)
        {
          v28 = [v26 iconAtIndexPath:v27];

          if (v28 != v25)
          {
            [v26 replaceIcon:v13 withIcon:v25];
          }
        }

        v11 = v21;
      }

      v16 = v29;
    }
  }

  if (v12)
  {
LABEL_20:
    v12[2](v12, v18);
  }

LABEL_21:
}

- (id)iconManager:(id)a3 containerViewForPresentingContextMenuForIconView:(id)a4
{
  v5 = a4;
  v6 = [(SBHomeScreenController *)self homeScreenViewController];
  v7 = [v6 containerViewForPresentingContextMenuForIconView:v5];

  return v7;
}

- (id)iconManager:(id)a3 containerViewControllerForConfigurationOfIconView:(id)a4
{
  v5 = [a4 location];
  v6 = [(SBHomeScreenController *)self homeScreenViewController];
  if (SBIconLocationGroupContainsLocation())
  {
    v7 = v6;
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  if (SBIconLocationGroupContainsLocation())
  {
    v7 = [v6 containerViewControllerForPresentingFromTodayViewControllerAllowingCoverSheet:0];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)iconManager:(id)a3 containerViewForConfigurationOfIconView:(id)a4
{
  v5 = [(SBHomeScreenController *)self iconManager:a3 containerViewControllerForConfigurationOfIconView:a4];
  v6 = [(SBHomeScreenController *)self homeScreenViewController];
  v7 = v6;
  if (v5 == v6)
  {
    [v6 iconContentView];
  }

  else
  {
    [v5 view];
  }
  v8 = ;

  return v8;
}

- (CGRect)iconManager:(id)a3 contentBoundingRectForConfigurationOfIconView:(id)a4
{
  v6 = a4;
  v7 = [(SBHomeScreenController *)self iconManager:a3 containerViewForConfigurationOfIconView:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    v10 = [v6 location];
    v11 = v9;
    if (SBIconLocationGroupContainsLocation())
    {
      v11 = v9;
      if ([(SBHomeScreenController *)self isTodayOverlayPresented])
      {
        v12 = [(SBHomeScreenController *)self todayViewController];
        v11 = [v12 view];
      }
    }

    [v11 bounds];
    [v11 convertRect:v9 toView:?];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v14 = *MEMORY[0x277CBF3A0];
    v16 = *(MEMORY[0x277CBF3A0] + 8);
    v18 = *(MEMORY[0x277CBF3A0] + 16);
    v20 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (id)iconManager:(id)a3 homeScreenContentViewForConfigurationOfIconView:(id)a4
{
  v5 = [a4 location];
  if (SBIconLocationGroupContainsLocation() && [(SBHomeScreenController *)self isTodayOverlayPresented])
  {
    v6 = [(SBHomeScreenController *)self todayViewController];
  }

  else
  {
    v6 = [(SBHomeScreenController *)self _rootFolderController];
  }

  v7 = v6;
  v8 = [v6 view];

  return v8;
}

- (id)iconManager:(id)a3 containerViewControllerForModalInteractionFromIconView:(id)a4
{
  v5 = [a4 location];
  v6 = [(SBHomeScreenController *)self homeScreenViewController];
  if (SBIconLocationGroupContainsLocation())
  {
    v7 = v6;
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  if (SBIconLocationGroupContainsLocation())
  {
    v7 = [v6 containerViewControllerForPresentingFromTodayViewControllerAllowingCoverSheet:1];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)iconManager:(id)a3 containerViewForModalInteractionFromIconView:(id)a4
{
  v5 = [(SBHomeScreenController *)self iconManager:a3 containerViewControllerForModalInteractionFromIconView:a4];
  v6 = [(SBHomeScreenController *)self homeScreenViewController];
  v7 = v6;
  if (v5 == v6)
  {
    [v6 iconContentView];
  }

  else
  {
    [v5 view];
  }
  v8 = ;

  return v8;
}

- (id)iconManager:(id)a3 homeScreenContentViewForModalInteractionFromIconView:(id)a4
{
  v5 = [a4 location];
  if (SBIconLocationGroupContainsLocation())
  {
    v6 = [(SBHomeScreenController *)self coverSheetPresentationManager];
    v7 = [v6 isVisible];

    if (v7)
    {
      [(SBHomeScreenController *)self coverSheetTodayViewController];
    }

    else
    {
      [(SBHomeScreenController *)self todayViewController];
    }
    v8 = ;
    if ([v8 _appearState] == 2 || objc_msgSend(v8, "_appearState") == 1)
    {
      v9 = [(SBHomeScreenController *)self todayViewController];
      v10 = [v9 view];

      goto LABEL_10;
    }
  }

  v8 = [(SBHomeScreenController *)self _rootFolderController];
  v10 = [v8 view];
LABEL_10:

  return v10;
}

- (void)iconManager:(id)a3 iconView:(id)a4 configurationWillBeginWithInteraction:(id)a5
{
  v15 = a5;
  v6 = [(SBHomeScreenController *)self _iconController];
  v7 = [v6 powerLogAggregator];
  [v7 emitEventOfType:1];

  if (!self->_widgetConfigurationFloatingDockBehaviorAssertion)
  {
    v8 = [(SBHomeScreenController *)self windowScene];
    v9 = [v8 floatingDockController];
    v10 = [SBFloatingDockBehaviorAssertion alloc];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [(SBFloatingDockBehaviorAssertion *)v10 initWithFloatingDockController:v9 visibleProgress:1 animated:1 gesturePossible:3 atLevel:v12 reason:0 withCompletion:0.0];
    widgetConfigurationFloatingDockBehaviorAssertion = self->_widgetConfigurationFloatingDockBehaviorAssertion;
    self->_widgetConfigurationFloatingDockBehaviorAssertion = v13;
  }
}

- (void)iconManager:(id)a3 iconView:(id)a4 configurationDidEndWithInteraction:(id)a5
{
  [(SBFloatingDockBehaviorAssertion *)self->_widgetConfigurationFloatingDockBehaviorAssertion invalidate:a3];
  widgetConfigurationFloatingDockBehaviorAssertion = self->_widgetConfigurationFloatingDockBehaviorAssertion;
  self->_widgetConfigurationFloatingDockBehaviorAssertion = 0;
}

- (void)iconManager:(id)a3 modalInteractionWillBegin:(id)a4
{
  if (!self->_modalInteractionFloatingDockBehaviorAssertion)
  {
    v6 = a4;
    v13 = [(SBHomeScreenController *)self windowScene];
    v7 = [v13 floatingDockController];
    v8 = [SBFloatingDockBehaviorAssertion alloc];
    v9 = objc_opt_class();

    v10 = NSStringFromClass(v9);
    v11 = [(SBFloatingDockBehaviorAssertion *)v8 initWithFloatingDockController:v7 visibleProgress:1 animated:1 gesturePossible:3 atLevel:v10 reason:0 withCompletion:0.0];
    modalInteractionFloatingDockBehaviorAssertion = self->_modalInteractionFloatingDockBehaviorAssertion;
    self->_modalInteractionFloatingDockBehaviorAssertion = v11;
  }
}

- (void)iconManager:(id)a3 modalInteractionDidEnd:(id)a4
{
  [(SBFloatingDockBehaviorAssertion *)self->_modalInteractionFloatingDockBehaviorAssertion invalidate:a3];
  modalInteractionFloatingDockBehaviorAssertion = self->_modalInteractionFloatingDockBehaviorAssertion;
  self->_modalInteractionFloatingDockBehaviorAssertion = 0;
}

- (unint64_t)addWidgetSheetStyleForIconManager:(id)a3
{
  if (__sb__runningInSpringBoard())
  {
    return SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    v3 = [v4 userInterfaceIdiom] == 1;
  }

  return v3;
}

- (void)iconManager:(id)a3 iconView:(id)a4 willUseContextMenuStyle:(id)a5
{
  v16 = a5;
  [(SBHomeScreenController *)self minimumHomeScreenScale];
  v7 = v6;
  if (v6 != 1.0)
  {
    v8 = [v16 containerView];
    [v8 bounds];
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
    v13 = v7 + -1.0;
    v14 = (v7 + -1.0) * CGRectGetWidth(v18) * 0.5;
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v15 = CGRectGetHeight(v19);
    [v16 setPreferredBackgroundInsets:{v13 * v15 * 0.5, v14, v13 * v15 * 0.5, v14}];
  }
}

- (BOOL)iconManager:(id)a3 iconViewDisplaysCloseBox:(id)a4
{
  v5 = a4;
  v6 = [v5 icon];
  v7 = [(SBHomeScreenController *)self isAppLibrarySupported];
  v8 = [v6 isApplicationIcon];
  v9 = v8 && v7 || [(SBHomeScreenController *)self isUninstallSupportedForIcon:v6];
  v10 = [v5 location];
  v11 = [(SBHomeScreenController *)self windowScene];
  v12 = [v11 floatingDockController];
  if ([v12 isPresentingIconLocation:v10])
  {
    v13 = [v12 shouldShowCloseBoxForIconView:v5 proposedValue:v9];
LABEL_7:
    LOBYTE(v9) = v13;
    goto LABEL_11;
  }

  if (v8 && SBIconLocationGroupContainsLocation())
  {
    v13 = [(SBHomeScreenController *)self isUninstallSupportedForIcon:v6];
    goto LABEL_7;
  }

LABEL_11:

  return v9;
}

- (void)iconManager:(id)a3 wantsUninstallForIcon:(id)a4 location:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(SBHomeScreenController *)self windowScene];
  v10 = [v9 floatingDockController];
  if (([v10 handlePromptingUserToUninstallIcon:v7 location:v8] & 1) == 0)
  {
    if ([v7 isApplicationIcon])
    {
      v11 = [(SBHomeScreenController *)self applicationController];
      v12 = [v7 applicationBundleID];
      v13 = [(SBHomeScreenController *)self isUninstallSupportedForIcon:v7];
      if (v12 && (v13 || [(SBHomeScreenController *)self isAppLibrarySupported]))
      {
        if ([(SBHomeScreenController *)self isAppLibrarySupported])
        {
          v14 = SBIconLocationGroupContainsLocation() ^ 1;
        }

        else
        {
          v14 = 0;
        }

        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __69__SBHomeScreenController_iconManager_wantsUninstallForIcon_location___block_invoke;
        v21[3] = &unk_2783C2650;
        v22 = v7;
        v23 = self;
        [v11 requestUninstallApplicationWithBundleIdentifier:v12 options:v14 withCompletion:v21];
      }
    }

    else
    {
      if ([v7 isWidgetIcon])
      {
        v15 = [SBRemoveWidgetAlertItem alloc];
        v16 = [(SBHomeScreenController *)self iconManager];
        v17 = [(SBRemoveWidgetAlertItem *)v15 initWithWidgetIcon:v7 location:v8 iconManager:v16];
      }

      else if ([v7 isFolderIcon])
      {
        v18 = [SBHideFolderContentsAlertItem alloc];
        v16 = [(SBHomeScreenController *)self iconManager];
        v17 = [(SBHideFolderContentsAlertItem *)v18 initWithIcon:v7 location:v8 iconManager:v16];
      }

      else
      {
        v19 = [SBDeleteNonAppIconAlertItem alloc];
        v16 = [(SBHomeScreenController *)self _iconController];
        v17 = [(SBDeleteNonAppIconAlertItem *)v19 initWithIcon:v7 location:v8 iconController:v16];
      }

      v11 = v17;

      [v11 _setPreferredActivationWindowScene:v9];
      v20 = [(SBHomeScreenController *)self alertItemsController];
      [v20 activateAlertItem:v11];
    }
  }
}

void __69__SBHomeScreenController_iconManager_wantsUninstallForIcon_location___block_invoke(uint64_t a1, int a2, int a3, void *a4)
{
  v7 = a4;
  v8 = v7;
  if (a2)
  {
    if ([*(a1 + 32) isApplicationIcon])
    {
      [*(a1 + 32) setUninstalledByUser:1];
      [*(a1 + 32) cancelDownload];
    }

    v9 = [*(a1 + 40) iconManager];
    v10 = *(a1 + 32);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__SBHomeScreenController_iconManager_wantsUninstallForIcon_location___block_invoke_2;
    v16[3] = &unk_2783A9398;
    v17 = v8;
    [v9 uninstallIcon:v10 animate:1 completion:v16];

    v11 = v17;
  }

  else
  {
    if (!a3)
    {
      [v7 invalidate];
      goto LABEL_9;
    }

    v12 = [*(a1 + 40) iconManager];
    v13 = *(a1 + 32);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__SBHomeScreenController_iconManager_wantsUninstallForIcon_location___block_invoke_3;
    v14[3] = &unk_2783A9398;
    v15 = v8;
    [v12 addIconToIgnoredList:v13 options:1 completion:v14];

    v11 = v15;
  }

LABEL_9:
}

- (BOOL)iconManager:(id)a3 iconViewDisplaysLabel:(id)a4
{
  v4 = [a4 icon];
  if ([v4 isWidgetIcon])
  {
    if (__sb__runningInSpringBoard())
    {
      v5 = SBFEffectiveDeviceClass() != 2;
    }

    else
    {
      v6 = [MEMORY[0x277D75418] currentDevice];
      v5 = [v6 userInterfaceIdiom] != 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)iconManager:(id)a3 canBeginDragForIconView:(id)a4
{
  v4 = [SBWorkspace mainWorkspace:a3];
  v5 = [v4 transientOverlayPresentationManager];
  v6 = [v5 hasActivePresentation];

  return v6 ^ 1;
}

- (BOOL)_dragSessionContainsAppClipWebClipIcon:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [a3 items];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v18 + 1) + 8 * i) sbh_appDragLocalContext];
        v10 = v9;
        if (v9)
        {
          v11 = [v9 uniqueIdentifier];
          v12 = [(SBHomeScreenController *)self iconModel];
          v13 = [v12 bookmarkIconForWebClipIdentifier:v11];

          v14 = [v13 webClip];
          v15 = [v14 isAppClip];

          if (v15)
          {

            v16 = 1;
            goto LABEL_12;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_12:

  return v16;
}

- (int64_t)iconManager:(id)a3 draggingStartLocationForIconView:(id)a4 proposedStartLocation:(int64_t)a5
{
  v6 = [a4 location];
  if ([v6 isEqualToString:@"SBIconLocationFloatingDockSuggestions"])
  {
    a5 = 7;
  }

  return a5;
}

- (void)iconManager:(id)a3 iconDropSessionDidEnter:(id)a4
{
  v5 = MEMORY[0x277D75490];
  v6 = a4;
  v7 = [v5 sharedInstance];
  v8 = [v7 sessionForDropSession:v6];

  v9 = [v8 info];
  LODWORD(v7) = [v9 processIdentifier];
  if (v7 != getpid())
  {
    v14 = 0u;
    v15 = 0u;
    if (v9)
    {
      [v9 auditToken];
    }

    v13[0] = v14;
    v13[1] = v15;
    v10 = [MEMORY[0x277CF0B98] tokenFromAuditToken:v13];
    if (([v10 hasEntitlement:@"com.apple.springboard.app-drag"] & 1) == 0)
    {
      v12 = [(SBHomeScreenController *)self iconManager];
      [v12 cancelAllDrags];

      goto LABEL_8;
    }
  }

  v11 = +[SBDraggingSystemManager sharedInstance];
  [v11 setCommandeered:1 forDraggingSystemSession:v8 forReason:@"SBIconController-IconDrag"];

LABEL_8:
}

- (void)iconManager:(id)a3 iconView:(id)a4 contentDropSessionDidEnter:(id)a5
{
  v9 = a5;
  v7 = [a4 location];
  if ([(SBHomeScreenController *)self shouldCommandeerContentDragsInLocation:v7])
  {
    v8 = +[SBDraggingSystemManager sharedInstance];
    [v8 setCommandeered:1 forDropSession:v9 forReason:@"SBIconController-ContentDrag"];
  }
}

- (void)iconManager:(id)a3 iconView:(id)a4 contentDropSessionDidExit:(id)a5
{
  v9 = a5;
  v7 = [a4 location];
  if ([(SBHomeScreenController *)self shouldCommandeerContentDragsInLocation:v7])
  {
    v8 = +[SBDraggingSystemManager sharedInstance];
    [v8 setCommandeered:0 forDropSession:v9 forReason:@"SBIconController-ContentDrag"];
  }
}

- (BOOL)iconManager:(id)a3 supportsParallaxForIconView:(id)a4
{
  v4 = [a4 _sbWindowScene];
  v5 = [v4 isMainDisplayWindowScene];

  return v5;
}

- (id)iconManager:(id)a3 screenSnapshotProviderForComponentsOfIconView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  if (v8->_screenSnapshotForIconViews || ([v7 window], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "screen"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "snapshotViewAfterScreenUpdates:", 0), v11 = objc_claimAutoreleasedReturnValue(), screenSnapshotForIconViews = v8->_screenSnapshotForIconViews, v8->_screenSnapshotForIconViews = v11, screenSnapshotForIconViews, v10, v9, v8->_screenSnapshotForIconViews))
  {
    objc_initWeak(&location, v8);
    v13 = [SBIconViewSnapshotProvider alloc];
    v14 = [objc_alloc(objc_opt_class()) initAsCopyOf:v8->_screenSnapshotForIconViews];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __84__SBHomeScreenController_iconManager_screenSnapshotProviderForComponentsOfIconView___block_invoke;
    v20[3] = &unk_2783C2678;
    objc_copyWeak(&v21, &location);
    v20[4] = v8;
    v15 = [(SBIconViewSnapshotProvider *)v13 initWithSnapshotView:v14 invalidation:v20];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
    if (v15)
    {
      outstandingSnapshotProviders = v8->_outstandingSnapshotProviders;
      if (!outstandingSnapshotProviders)
      {
        v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v18 = v8->_outstandingSnapshotProviders;
        v8->_outstandingSnapshotProviders = v17;

        outstandingSnapshotProviders = v8->_outstandingSnapshotProviders;
      }

      [(NSMutableArray *)outstandingSnapshotProviders addObject:v15];
    }
  }

  else
  {
    v15 = 0;
  }

  objc_sync_exit(v8);

  return v15;
}

void __84__SBHomeScreenController_iconManager_screenSnapshotProviderForComponentsOfIconView___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = [v5[45] indexOfObject:v10];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v5[45] removeObjectAtIndex:v6];
    }

    if (![v5[45] count])
    {
      v7 = v5[45];
      v5[45] = 0;

      v8 = *(a1 + 32);
      v9 = *(v8 + 352);
      *(v8 + 352) = 0;
    }

    objc_sync_exit(v5);
  }
}

- (int64_t)iconManager:(id)a3 closeBoxTypeForIconView:(id)a4 proposedType:(int64_t)a5
{
  v7 = a4;
  v8 = [v7 icon];
  v9 = [v7 location];

  if ([v9 isEqualToString:@"SBIconLocationFloatingDockSuggestions"] & 1) != 0 || (objc_msgSend(v8, "isWidgetIcon"))
  {
    a5 = 1;
  }

  else if ([(SBHomeScreenController *)self isAppLibrarySupported])
  {
    a5 = SBIconLocationGroupContainsLocation() ^ 1;
  }

  return a5;
}

- (BOOL)iconManager:(id)a3 allowsBadgingForIcon:(id)a4
{
  v5 = a4;
  v6 = [(SBHomeScreenController *)self _iconController];
  v7 = [v6 allowsBadgingForIcon:v5];

  return v7;
}

- (BOOL)iconManager:(id)a3 allowsBadgingForIconLocation:(id)a4
{
  v4 = a4;
  v5 = +[SBDefaults localDefaults];
  v6 = [v5 homeScreenDefaults];
  v7 = [v6 showsBadgesInAppLibrary];

  if ((v7 & 1) != 0 || !SBIconLocationGroupContainsLocation())
  {
    v8 = 1;
  }

  else
  {
    v8 = [v4 isEqualToString:*MEMORY[0x277D66660]];
  }

  return v8;
}

- (BOOL)isFocusAllowedForIconManager:(id)a3
{
  if (__sb__runningInSpringBoard())
  {
    return SBFEffectiveDeviceClass() == 2;
  }

  v4 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v4 userInterfaceIdiom] == 1;

  return v3;
}

- (id)iconManager:(id)a3 accessibilityTintColorForIconView:(id)a4
{
  v4 = [SBWallpaperController sharedInstance:a3];
  v5 = [v4 averageColorForVariant:1];

  return v5;
}

- (BOOL)iconManagerCanBeginIconDrags:(id)a3
{
  v3 = +[SBSetupManager sharedInstance];
  v4 = [v3 isInSetupMode];

  if (v4)
  {
    v5 = SBLogIconDragging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "disallowing icon drag because we are in setup mode", v7, 2u);
    }
  }

  return v4 ^ 1;
}

- (id)iconManager:(id)a3 dragPreviewForIconView:(id)a4
{
  v4 = a4;
  v5 = [[SBAppPlatterDragPreview alloc] initWithReferenceIconView:v4 sourceView:0];
  [v4 iconImageCenter];
  v7 = v6;
  v9 = v8;
  v10 = [v4 window];
  [v4 convertPoint:v10 toView:{v7, v9}];
  v12 = v11;
  v14 = v13;

  [(SBAppPlatterDragPreview *)v5 setCenter:v12, v14];

  return v5;
}

- (id)windowForIconDragPreviewsForIconManager:(id)a3 forWindowScene:(id)a4
{
  v5 = MEMORY[0x277CCACC8];
  v6 = a4;
  if (([v5 isMainThread] & 1) == 0)
  {
    [SBHomeScreenController windowForIconDragPreviewsForIconManager:forWindowScene:];
  }

  if (!self->_windowSceneToMedusaDragWindowContext)
  {
    v7 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    windowSceneToMedusaDragWindowContext = self->_windowSceneToMedusaDragWindowContext;
    self->_windowSceneToMedusaDragWindowContext = v7;
  }

  v9 = objc_opt_class();
  v10 = SBSafeCast(v9, v6);

  if (v10)
  {
    v11 = [(NSMapTable *)self->_windowSceneToMedusaDragWindowContext objectForKey:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(SBMedusaDragWindowContext *)v11 dragWindow];
  if (v10 && !v11)
  {
    v13 = [objc_alloc(MEMORY[0x277D75D28]) initWithNibName:0 bundle:0];
    if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleMedusaDrag"))
    {
      v14 = [(SBWindow *)[SBIconDragPlatterWindow alloc] initWithWindowScene:v10 rootViewController:v13 role:@"SBTraitsParticipantRoleMedusaDrag" debugName:@"Medusa Portal Source Window"];
    }

    else
    {
      v14 = [(SBMainScreenActiveInterfaceOrientationWindow *)[SBOldIconDragPlatterWindow alloc] initWithWindowScene:v10 role:@"SBTraitsParticipantRoleMedusaDrag" debugName:@"Medusa Portal Source Window"];
      [(SBIconDragPlatterWindow *)v14 setContentViewController:v13];
    }

    v15 = objc_alloc_init(SBTraitsWindowParticipantDelegate);
    v16 = [v10 traitsArbiter];
    v17 = [v16 acquireParticipantWithRole:@"SBTraitsParticipantRoleMedusaDrag" delegate:v15];

    [(SBTraitsWindowParticipantDelegate *)v15 setParticipant:v17 ownedByWindow:v14];
    [(SBTraitsWindowParticipantDelegate *)v15 windowDidUpdatePreferredWindowLevel:v17 ownedParticipant:1.79769313e308];
    [(SBTraitsWindowParticipantDelegate *)v15 windowDidUpdateSupportedOrientations:30 ownedParticipant:v17];
    [(SBTraitsWindowParticipantDelegate *)v15 windowWillBecomeVisible:v14 ownedParticipant:v17];
    [v17 setNeedsUpdatePreferencesWithReason:@"Setup"];
    [(SBIconDragPlatterWindow *)v14 setWindowLevel:*MEMORY[0x277D772B0] + -3.0 + -1.0];
    [(SBWindow *)v14 setHidden:0];
    [(SBIconDragPlatterWindow *)v14 setUserInteractionEnabled:0];
    v11 = [[SBMedusaDragWindowContext alloc] initWithDragWindow:v14 traitsParticipant:v17 traitsParticipantDelegate:v15];
    [(NSMapTable *)self->_windowSceneToMedusaDragWindowContext setObject:v11 forKey:v10];

    v12 = v14;
  }

  return v12;
}

- (void)iconManagerIconDraggingDidChange:(id)a3
{
  if ([a3 isIconDragging])
  {
    [(SBHomeScreenController *)self _beginDisablingAllOrientationChangesForReason:@"SBIconController Dragging"];
  }

  else
  {
    [(SBHomeScreenController *)self _endDisablingAllOrientationChangesForReason:@"SBIconController Dragging"];
  }

  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleHomeScreen"))
  {
    v4 = [(SBHomeScreenController *)self homeScreenViewController];
    [v4 setNeedsUpdateOfSupportedInterfaceOrientations];
  }
}

- (void)iconManager:(id)a3 willBeginIconDragWithUniqueIdentifier:(id)a4 numberOfDraggedItems:(unint64_t)a5
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D67520];
  v7 = [a4 UUIDString];
  v16[0] = v7;
  v15[1] = *MEMORY[0x277D67528];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v16[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v10 = MEMORY[0x277D65DD0];
  v11 = v9;
  v12 = [v10 sharedInstance];
  [v12 emitEvent:28 withPayload:v11];

  if (!self->_iconDragSessionBeginDate)
  {
    v13 = [MEMORY[0x277CBEAA8] date];
    iconDragSessionBeginDate = self->_iconDragSessionBeginDate;
    self->_iconDragSessionBeginDate = v13;
  }
}

- (void)iconManager:(id)a3 didAddItemsToIconDragWithUniqueIdentifier:(id)a4 numberOfDraggedItems:(unint64_t)a5
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = *MEMORY[0x277D67520];
  v6 = [a4 UUIDString];
  v13[0] = v6;
  v12[1] = *MEMORY[0x277D67528];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v9 = MEMORY[0x277D65DD0];
  v10 = v8;
  v11 = [v9 sharedInstance];
  [v11 emitEvent:29 withPayload:v10];
}

- (void)iconManager:(id)a3 didEndIconDragWithUniqueIdentifier:(id)a4 numberOfDraggedItems:(unint64_t)a5
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19[0] = *MEMORY[0x277D67520];
  v7 = [a4 UUIDString];
  v20[0] = v7;
  v19[1] = *MEMORY[0x277D67528];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v20[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v10 = MEMORY[0x277D65DD0];
  v11 = v9;
  v12 = [v10 sharedInstance];
  [v12 emitEvent:30 withPayload:v11];

  if (self->_iconDragSessionBeginDate)
  {
    v13 = [MEMORY[0x277CBEAA8] date];
    [v13 timeIntervalSinceDate:self->_iconDragSessionBeginDate];
    v15 = v14;

    iconDragSessionBeginDate = self->_iconDragSessionBeginDate;
    self->_iconDragSessionBeginDate = 0;

    v17 = [(SBHomeScreenController *)self _iconController];
    v18 = [v17 powerLogAggregator];
    [v18 emitEventOfType:2 withDuration:v15];
  }
}

- (void)iconManager:(id)a3 didSpringLoadIconView:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277D674E0];
  v13[0] = &unk_283372218;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a4;
  v7 = [v5 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v8 = MEMORY[0x277D65DD0];
  v9 = v7;
  v10 = [v8 sharedInstance];
  [v10 emitEvent:31 withPayload:v9];

  v11 = [(SBHomeScreenController *)self iconDragManager];
  [v11 performSpringLoadedInteractionForIconDragOnIconView:v6];
}

- (id)iconManager:(id)a3 wantsToHideStatusBarForFolderController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBFolderController - %p", a4];
  v8 = [(SBHomeScreenController *)self _hideStatusBarForReason:v7 animated:v5];

  return v8;
}

- (id)_hideStatusBarForReason:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SBHomeScreenController *)self windowScene];
  v8 = [v7 statusBarManager];
  v9 = [v8 assertionManager];

  v10 = [v9 newSettingsAssertionWithStatusBarHidden:1 atLevel:1 reason:v6];
  if (v4)
  {
    v11 = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
    [v10 acquireWithAnimationParameters:v11];
  }

  else
  {
    [v10 acquire];
  }

  return v10;
}

- (id)iconManager:(id)a3 fakeStatusBarForFolderController:(id)a4
{
  v4 = [(SBHomeScreenController *)self windowScene:a3];
  v5 = [v4 statusBarManager];
  v6 = [v5 reusePool];
  v7 = [v6 getReusableStatusBarWithReason:@"SBFolderController - Blurred Status Bar"];

  return v7;
}

- (id)iconManager:(id)a3 statusBarStyleRequestForFolderController:(id)a4
{
  v4 = [(SBHomeScreenController *)self windowScene:a3];
  v5 = [v4 statusBarManager];
  v6 = [v5 assertionManager];
  v7 = [v6 effectiveStatusBarStyleRequestForLevel:0];

  return v7;
}

- (void)iconManager:(id)a3 willRemoveFakeStatusBar:(id)a4 forFolderController:(id)a5
{
  v6 = a4;
  v9 = [(SBHomeScreenController *)self windowScene];
  v7 = [v9 statusBarManager];
  v8 = [v7 reusePool];
  [v8 recycleStatusBar:v6];
}

- (UIEdgeInsets)iconManager:(id)a3 statusBarEdgeInsetsForFolderController:(id)a4
{
  v4 = [(SBHomeScreenController *)self windowScene:a3];
  v5 = [v4 statusBarManager];
  v6 = [v5 layoutManager];
  [v6 statusBarEdgeInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (UIEdgeInsets)iconManager:(id)a3 contentOverlayInsetsFromParentIfAvailableForFolderController:(id)a4
{
  v4 = [(SBHomeScreenController *)self homeScreenViewController:a3];
  [v4 _contentOverlayInsets];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (void)_setFolderDisplayLayoutElementActive:(BOOL)a3
{
  folderDisplayLayoutAssertion = self->_folderDisplayLayoutAssertion;
  if (a3)
  {
    if (folderDisplayLayoutAssertion)
    {
      return;
    }

    v5 = objc_alloc(MEMORY[0x277D66A50]);
    v11 = [v5 initWithIdentifier:*MEMORY[0x277D66F28]];
    [v11 setLevel:0];
    [v11 setFillsDisplayBounds:1];
    [v11 setLayoutRole:6];
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v7 = [WeakRetained displayLayoutPublisher];
    v8 = [v7 addElement:v11];
    v9 = self->_folderDisplayLayoutAssertion;
    self->_folderDisplayLayoutAssertion = v8;

    v10 = v11;
  }

  else
  {
    if (!folderDisplayLayoutAssertion)
    {
      return;
    }

    [(BSInvalidatable *)folderDisplayLayoutAssertion invalidate];
    v10 = self->_folderDisplayLayoutAssertion;
    self->_folderDisplayLayoutAssertion = 0;
  }
}

- (void)_setWidgetEditingDisplayLayoutElementActive:(BOOL)a3
{
  widgetEditingLayoutAssertion = self->_widgetEditingLayoutAssertion;
  if (a3)
  {
    if (widgetEditingLayoutAssertion)
    {
      return;
    }

    v5 = objc_alloc(MEMORY[0x277D66A50]);
    v11 = [v5 initWithIdentifier:*MEMORY[0x277D66F70]];
    [v11 setLevel:0];
    [v11 setFillsDisplayBounds:1];
    [v11 setLayoutRole:6];
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v7 = [WeakRetained displayLayoutPublisher];
    v8 = [v7 addElement:v11];
    v9 = self->_widgetEditingLayoutAssertion;
    self->_widgetEditingLayoutAssertion = v8;

    v10 = v11;
  }

  else
  {
    if (!widgetEditingLayoutAssertion)
    {
      return;
    }

    [(BSInvalidatable *)widgetEditingLayoutAssertion invalidate];
    v10 = self->_widgetEditingLayoutAssertion;
    self->_widgetEditingLayoutAssertion = 0;
  }
}

- (void)iconManager:(id)a3 willOpenFolder:(id)a4
{
  v4 = a4;
  v5 = +[SBReachabilityManager sharedInstance];
  [v5 deactivateReachability];

  v6 = +[SBReachabilityManager sharedInstance];
  [v6 setReachabilityTemporarilyDisabled:1 forReason:@"Open Folder"];

  v7 = [v4 isLibraryCategoryFolder];
  v8 = SBLogTelemetrySignposts();
  v9 = os_signpost_enabled(v8);
  if (v7)
  {
    if (v9)
    {
      v13 = 0;
      v10 = "SB_HOME_DEWEY_POD_OPEN";
      v11 = &v13;
LABEL_6:
      _os_signpost_emit_with_name_impl(&dword_21ED4E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, v10, " enableTelemetry=YES  isAnimation=YES ", v11, 2u);
    }
  }

  else if (v9)
  {
    v12 = 0;
    v10 = "SB_HOME_FOLDER_OPEN";
    v11 = &v12;
    goto LABEL_6;
  }

  kdebug_trace();
}

- (void)iconManager:(id)a3 didOpenFolder:(id)a4
{
  v5 = a4;
  v6 = +[SBReachabilityManager sharedInstance];
  [v6 setReachabilityTemporarilyDisabled:0 forReason:@"Open Folder"];

  v7 = [v5 isLibraryCategoryFolder];
  v8 = SBLogTelemetrySignposts();
  v9 = os_signpost_enabled(v8);
  if (v7)
  {
    if (v9)
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21ED4E000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_HOME_DEWEY_POD_OPEN", " enableTelemetry=YES  isAnimation=YES ", buf, 2u);
    }

    kdebug_trace();
  }

  else
  {
    if (v9)
    {
      *v13 = 0;
      _os_signpost_emit_with_name_impl(&dword_21ED4E000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_HOME_FOLDER_OPEN", " enableTelemetry=YES  isAnimation=YES ", v13, 2u);
    }

    kdebug_trace();
    [(SBHomeScreenController *)self _setFolderDisplayLayoutElementActive:1];
  }

  v10 = [(SBHomeScreenController *)self homeScreenViewController];
  v11 = [MEMORY[0x277D75518] focusSystemForEnvironment:v10];
  v12 = [v11 focusedItem];

  if (v12)
  {
    [v10 setNeedsFocusUpdate];
  }
}

- (void)iconManager:(id)a3 willCloseFolder:(id)a4
{
  v4 = a4;
  v5 = +[SBReachabilityManager sharedInstance];
  [v5 deactivateReachability];

  v6 = +[SBReachabilityManager sharedInstance];
  [v6 setReachabilityTemporarilyDisabled:1 forReason:@"Close Folder"];

  v7 = [v4 isLibraryCategoryFolder];
  v8 = SBLogTelemetrySignposts();
  v9 = os_signpost_enabled(v8);
  if (v7)
  {
    if (v9)
    {
      v13 = 0;
      v10 = "SB_HOME_DEWEY_POD_CLOSE";
      v11 = &v13;
LABEL_6:
      _os_signpost_emit_with_name_impl(&dword_21ED4E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, v10, " enableTelemetry=YES  isAnimation=YES ", v11, 2u);
    }
  }

  else if (v9)
  {
    v12 = 0;
    v10 = "SB_HOME_FOLDER_CLOSE";
    v11 = &v12;
    goto LABEL_6;
  }

  kdebug_trace();
}

- (void)iconManager:(id)a3 didCloseFolder:(id)a4
{
  v5 = a4;
  v6 = +[SBReachabilityManager sharedInstance];
  [v6 setReachabilityTemporarilyDisabled:0 forReason:@"Close Folder"];

  v7 = [v5 isLibraryCategoryFolder];
  v8 = SBLogTelemetrySignposts();
  v9 = os_signpost_enabled(v8);
  if (v7)
  {
    if (v9)
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21ED4E000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_HOME_DEWEY_POD_CLOSE", " enableTelemetry=YES  isAnimation=YES ", buf, 2u);
    }

    kdebug_trace();
  }

  else
  {
    if (v9)
    {
      *v13 = 0;
      _os_signpost_emit_with_name_impl(&dword_21ED4E000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_HOME_FOLDER_CLOSE", " enableTelemetry=YES  isAnimation=YES ", v13, 2u);
    }

    kdebug_trace();
    [(SBHomeScreenController *)self _setFolderDisplayLayoutElementActive:0];
  }

  v10 = [(SBHomeScreenController *)self homeScreenViewController];
  v11 = [MEMORY[0x277D75518] focusSystemForEnvironment:v10];
  v12 = [v11 focusedItem];

  if (v12)
  {
    [v10 setNeedsFocusUpdate];
  }
}

- (void)iconManagerFolderAnimatingDidChange:(id)a3
{
  if (([a3 hasAnimatingFolder] & 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__SBHomeScreenController_iconManagerFolderAnimatingDidChange___block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleHomeScreen"))
  {
    v4 = [(SBHomeScreenController *)self homeScreenViewController];
    [v4 setNeedsUpdateOfSupportedInterfaceOrientations];
  }
}

void __62__SBHomeScreenController_iconManagerFolderAnimatingDidChange___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) window];
  [v1 sb_updateInterfaceOrientationFromActiveInterfaceOrientation];
}

- (void)iconManager:(id)a3 nestingViewController:(id)a4 willPerformOperation:(int64_t)a5 onViewController:(id)a6 withTransitionCoordinator:(id)a7
{
  v10 = a4;
  v11 = MEMORY[0x277CCACA8];
  v12 = a7;
  v13 = [v11 stringWithFormat:@"SBTransitioningToOrFromFolder-<%@ %p>", objc_opt_class(), v10];
  v14 = [(SBHomeScreenController *)self homeScreenViewController];
  [v14 setAllowIconRotation:0 forReason:v13];

  [(SBHomeScreenController *)self _beginDisablingAllOrientationChangesForReason:v13];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __124__SBHomeScreenController_iconManager_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke_10;
  v25[3] = &unk_2783C26C0;
  v25[4] = self;
  v15 = v13;
  v26 = v15;
  [v12 animateAlongsideTransition:&__block_literal_global_588 completion:v25];

  if (!+[SBFloatingDockController isFloatingDockSupported])
  {
    if (a5 != 1 && ([(SBHomeScreenController *)self _rootFolderController], v16 = objc_claimAutoreleasedReturnValue(), v16, v16 == v10))
    {
      v23 = [(SBHomeScreenController *)self _rootFolderController];
      [v23 dockHeight];
      v19 = v24;

      v20 = 0.0;
      v17 = 0.0;
      v18 = 0.0;
    }

    else
    {
      v18 = *MEMORY[0x277D768C8];
      v17 = *(MEMORY[0x277D768C8] + 8);
      v19 = *(MEMORY[0x277D768C8] + 16);
      v20 = *(MEMORY[0x277D768C8] + 24);
    }

    v21 = [(SBHomeScreenController *)self windowScene];
    v22 = [v21 pictureInPictureManager];
    [v22 applyPictureInPictureInsets:1 forSource:{v18, v17, v19, v20}];
  }
}

uint64_t __124__SBHomeScreenController_iconManager_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke()
{
  v0 = MEMORY[0x277D76620];
  result = [*MEMORY[0x277D76620] isRunningTest];
  if (result)
  {
    [MEMORY[0x277CD9FF0] setFrameStallSkipRequest:1];
    v2 = [*v0 isRunningTest:@"AppOpen"];
    v3 = *v0;
    if (v2)
    {
      [v3 finishedSubTest:@"workspaceActivate" forTest:@"AppOpen"];
      v4 = *v0;
      v5 = &__block_literal_global_594;
    }

    else
    {
      v6 = [v3 isRunningTest:@"AppClose"];
      v7 = *v0;
      if (v6)
      {
        [v7 finishedSubTest:@"workspaceDeactivate" forTest:@"AppClose"];
        v4 = *v0;
        v5 = &__block_literal_global_599;
      }

      else
      {
        v8 = [v7 isRunningTest:@"AppOpenInFolder"];
        v9 = *v0;
        if (v8)
        {
          [v9 finishedSubTest:@"workspaceActivate" forTest:@"AppOpenInFolder"];
          v4 = *v0;
          v5 = &__block_literal_global_601;
        }

        else
        {
          v10 = [v9 isRunningTest:@"AppCloseInFolder"];
          v11 = *v0;
          if (v10)
          {
            [v11 finishedSubTest:@"workspaceDeactivate" forTest:@"AppCloseInFolder"];
            v4 = *v0;
            v5 = &__block_literal_global_603;
          }

          else
          {
            v12 = [v11 isRunningTest:@"FolderOpen"];
            v4 = *v0;
            if (v12)
            {
              v5 = &__block_literal_global_605;
            }

            else
            {
              v13 = [v4 isRunningTest:@"FolderClose"];
              v4 = *v0;
              if (v13)
              {
                v5 = &__block_literal_global_607;
              }

              else
              {
                v14 = [v4 isRunningTest:@"AppOpenInScreenTime"];
                v15 = *v0;
                if (v14)
                {
                  [v15 finishedSubTest:@"workspaceActivate" forTest:@"AppOpenInScreenTime"];
                  v4 = *v0;
                  v5 = &__block_literal_global_609;
                }

                else
                {
                  result = [v15 isRunningTest:@"AppCloseInScreenTime"];
                  if (!result)
                  {
                    return result;
                  }

                  [*v0 finishedSubTest:@"workspaceDeactivate" forTest:@"AppCloseInScreenTime"];
                  v4 = *v0;
                  v5 = &__block_literal_global_611;
                }
              }
            }
          }
        }
      }
    }

    return [v4 installCACommitCompletionBlock:v5];
  }

  return result;
}

uint64_t __124__SBHomeScreenController_iconManager_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke_10(uint64_t a1)
{
  v2 = [*(a1 + 32) homeScreenViewController];
  [v2 setAllowIconRotation:1 forReason:*(a1 + 40)];

  [*(a1 + 32) _endDisablingAllOrientationChangesForReason:*(a1 + 40)];
  v3 = MEMORY[0x277D76620];
  result = [*MEMORY[0x277D76620] isRunningTest];
  if (!result)
  {
    return result;
  }

  v5 = @"AppOpen";
  v6 = [*v3 isRunningTest:@"AppOpen"];
  v7 = *v3;
  if (v6)
  {
    goto LABEL_3;
  }

  v5 = @"AppClose";
  v9 = [v7 isRunningTest:@"AppClose"];
  v7 = *v3;
  if (v9)
  {
LABEL_5:
    v8 = __PPTAppCloseAnimationSubTestName;
    goto LABEL_6;
  }

  v5 = @"AppOpenInFolder";
  v11 = [v7 isRunningTest:@"AppOpenInFolder"];
  v7 = *v3;
  if (v11)
  {
    goto LABEL_3;
  }

  v5 = @"AppCloseInFolder";
  v12 = [v7 isRunningTest:@"AppCloseInFolder"];
  v7 = *v3;
  if (v12)
  {
    goto LABEL_5;
  }

  v13 = @"FolderOpen";
  v14 = [v7 isRunningTest:@"FolderOpen"];
  v15 = *v3;
  if (!v14)
  {
    v13 = @"FolderClose";
    v17 = [v15 isRunningTest:@"FolderClose"];
    v15 = *v3;
    if (v17)
    {
      v16 = __PPTFolderCloseAnimationSubTestName;
      goto LABEL_15;
    }

    v5 = @"AppOpenInScreenTime";
    v19 = [v15 isRunningTest:@"AppOpenInScreenTime"];
    v7 = *v3;
    if (!v19)
    {
      v5 = @"AppCloseInScreenTime";
      result = [v7 isRunningTest:@"AppCloseInScreenTime"];
      if (!result)
      {
        return result;
      }

      v7 = *v3;
      goto LABEL_5;
    }

LABEL_3:
    v8 = __PPTAppOpenAnimationSubTestName;
LABEL_6:
    v10 = *v8;

    return [v7 finishedSubTest:v10 forTest:v5];
  }

  v16 = __PPTFolderOpenAnimationSubTestName;
LABEL_15:
  [v15 finishedSubTest:*v16 forTest:v13];
  v18 = *v3;

  return [v18 finishedTest:v13];
}

- (BOOL)iconManagerCanSaveIconState:(id)a3
{
  v3 = [(SBHomeScreenController *)self _iconController];
  v4 = [v3 canSaveIconState];

  return v4;
}

- (void)iconManagerDidSaveIconState:(id)a3
{
  v3 = [(SBHomeScreenController *)self _iconController];
  [v3 didSaveIconState];
}

- (id)iconManager:(id)a3 accessibilityTintColorForScreenRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = +[SBWallpaperController sharedInstance];
  v9 = [v8 averageColorInRect:1 forVariant:{x, y, width, height}];

  return v9;
}

- (BOOL)isFloatingDockVisibleForIconManager:(id)a3
{
  v3 = [(SBHomeScreenController *)self windowScene];
  v4 = [v3 floatingDockController];
  v5 = [v4 isFloatingDockPresented];

  return v5;
}

- (void)presentTodayOverlayForIconManager:(id)a3
{
  if ([(SBHomeScreenController *)self _isCoplanarHomeScreenEnabled])
  {
    v4 = [(SBHomeScreenController *)self iconManager];
    [v4 presentLeadingCustomViewWithCompletion:0];
  }

  else
  {
    v4 = [(SBHomeScreenController *)self _homeScreenOverlayControllerIfNeeded];
    [v4 presentAnimated:1 fromLeading:1];
  }
}

- (void)presentLibraryForIconManager:(id)a3 windowScene:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v12 = a4;
  if ([(SBHomeScreenController *)self isAppLibraryAllowed])
  {
    if ([(SBHomeScreenController *)self isModalAppLibrarySupported])
    {
      v7 = objc_opt_class();
      v8 = v12;
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

      v11 = [v10 modalLibraryController];

      if (([v11 isPresentingLibraryInForeground] & 1) == 0)
      {
        [v11 toggleLibraryPresentedAnimated:v5 completion:0];
      }
    }

    else
    {
      [(SBHomeScreenController *)self presentLibraryFromOverlayControllerAnimated:v5 completion:0];
    }
  }
}

- (void)presentLibraryFromOverlayControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ([(SBHomeScreenController *)self isAppLibraryAllowed])
  {
    v7 = [(SBHomeScreenController *)self _homeScreenOverlayControllerIfNeeded];
    if (![v7 isPresented] || (objc_msgSend(v7, "activeSidebarViewController"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "trailingSidebarViewController"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v8 == v9))
    {
      if (![(SBHomeScreenController *)self _isCoplanarHomeScreenEnabled])
      {
        [v7 presentAnimated:v4 fromLeading:0 completionHandler:v6];
        goto LABEL_11;
      }

      v11 = [(SBHomeScreenController *)self iconManager];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __81__SBHomeScreenController_presentLibraryFromOverlayControllerAnimated_completion___block_invoke_2;
      v12[3] = &unk_2783A9348;
      v13 = v6;
      [v11 presentTrailingCustomViewWithCompletion:v12];

      v10 = v13;
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __81__SBHomeScreenController_presentLibraryFromOverlayControllerAnimated_completion___block_invoke;
      v14[3] = &unk_2783B1E48;
      v15 = v7;
      v17 = v4;
      v16 = v6;
      [v15 dismissAnimated:v4 completionHandler:v14];

      v10 = v15;
    }

LABEL_11:
    goto LABEL_12;
  }

  if (v6)
  {
    (*(v6 + 2))(v6, 0);
  }

LABEL_12:
}

uint64_t __81__SBHomeScreenController_presentLibraryFromOverlayControllerAnimated_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)presentLibraryCategoryPodFromOverlayControllerForCategoryIdentifier:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = self->_overlayLibraryViewController;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __114__SBHomeScreenController_presentLibraryCategoryPodFromOverlayControllerForCategoryIdentifier_animated_completion___block_invoke;
  v20[3] = &unk_2783AB550;
  v24 = v6;
  v20[4] = self;
  v21 = v8;
  v22 = v10;
  v23 = v9;
  v11 = v9;
  v12 = v10;
  v13 = v8;
  v14 = MEMORY[0x223D6F7F0](v20);
  v15 = [(SBHomeScreenController *)self _rootFolderController];
  v16 = [v15 lastIconPageIndex];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __114__SBHomeScreenController_presentLibraryCategoryPodFromOverlayControllerForCategoryIdentifier_animated_completion___block_invoke_3;
  v18[3] = &unk_2783A9348;
  v19 = v14;
  v17 = v14;
  [v15 setCurrentPageIndex:v16 animated:v6 completion:v18];
}

void __114__SBHomeScreenController_presentLibraryCategoryPodFromOverlayControllerForCategoryIdentifier_animated_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __114__SBHomeScreenController_presentLibraryCategoryPodFromOverlayControllerForCategoryIdentifier_animated_completion___block_invoke_2;
  v4[3] = &unk_2783AAC18;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a1 + 64);
  v7 = *(a1 + 56);
  [v3 presentLibraryFromOverlayControllerAnimated:v2 completion:v4];
}

void __114__SBHomeScreenController_presentLibraryCategoryPodFromOverlayControllerForCategoryIdentifier_animated_completion___block_invoke_2(void *a1, int a2)
{
  if (a2)
  {
    if (a1[4])
    {
      v2 = a1[5];

      [v2 presentPodWithCategoryIdentifier:? animated:? completion:?];
    }

    else
    {
      v4 = a1[6];
      if (v4)
      {
        v5 = *(v4 + 16);

        v5();
      }
    }
  }

  else
  {
    v3 = a1[6];
    if (v3)
    {
      v6 = SBHLibraryPresentationErrorForCode();
      (*(v3 + 16))(v3, v6);
    }
  }
}

- (void)dismissLibraryAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ([(SBHomeScreenController *)self _isCoplanarHomeScreenEnabled])
  {
    if ([(SBHomeScreenController *)self isMainDisplayLibraryViewVisible])
    {
      v7 = [(SBHomeScreenController *)self iconManager];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __60__SBHomeScreenController_dismissLibraryAnimated_completion___block_invoke;
      v8[3] = &unk_2783A9348;
      v9 = v6;
      [v7 animateToDefaultStateWithCompletionHandler:v8];
    }

    else if (v6)
    {
      (*(v6 + 2))(v6, 1);
    }
  }

  else
  {
    [(SBHomeScreenController *)self dismissLibraryFromOverlayControllerAnimated:v4 completion:v6];
  }
}

uint64_t __60__SBHomeScreenController_dismissLibraryAnimated_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)dismissLibraryFromOverlayControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v10 = a4;
  if ([(SBHomeScreenController *)self isAppLibraryAllowed])
  {
    v6 = [(SBHomeScreenController *)self _homeScreenOverlayControllerIfNeeded];
    if (-[SBHomeScreenController isMainDisplayLibraryViewVisible](self, "isMainDisplayLibraryViewVisible") && ([v6 activeSidebarViewController], v7 = objc_claimAutoreleasedReturnValue(), overlayLibraryViewController = self->_overlayLibraryViewController, v7, v7 == overlayLibraryViewController))
    {
      [(SBHomeScreenController *)self dismissHomeScreenOverlayControllerAnimated:v4 completion:v10];
    }

    else if (v10)
    {
      v10[2](v10, 1);
    }
  }

  else
  {
    v9 = v10;
    if (!v10)
    {
      goto LABEL_11;
    }

    v10[2](v10, 0);
  }

  v9 = v10;
LABEL_11:
}

- (BOOL)isMainDisplayLibraryViewVisible
{
  v2 = [(SBHomeScreenController *)self iconManager];
  v3 = [v2 isMainDisplayLibraryViewVisible];

  return v3;
}

- (BOOL)isTodayOverlayPresented
{
  v2 = [(SBHomeScreenController *)self iconManager];
  v3 = [v2 isOverlayTodayViewVisible];

  return v3;
}

- (void)dismissLibraryForIconManager:(id)a3 windowScene:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v12 = a4;
  if ([(SBHomeScreenController *)self isModalAppLibrarySupported])
  {
    v7 = objc_opt_class();
    v8 = v12;
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

    v11 = [v10 modalLibraryController];

    [v11 dismissLibraryAnimated:v5 completion:0];
  }

  else
  {
    [(SBHomeScreenController *)self dismissLibraryAnimated:v5 completion:0];
  }
}

- (unint64_t)maximumListCountForFoldersForIconManager:(id)a3
{
  v3 = +[SBDefaults localDefaults];
  v4 = [v3 iconDefaults];
  v5 = [v4 maxIconListCount];

  if (v5 - 1 >= 0xE)
  {
    return 15;
  }

  else
  {
    return v5;
  }
}

- (id)defaultIconStateForIconManager:(id)a3
{
  v3 = [(SBHomeScreenController *)self _iconController];
  v4 = [v3 hasRestrictedEnforcedLayout];

  if (v4)
  {
    v5 = MEMORY[0x277CBEC10];
  }

  else
  {
    v6 = +[SBPlatformController sharedInstance];
    v5 = [v6 defaultIconState];
  }

  return v5;
}

- (id)iconManager:(id)a3 defaultAutomaticFavoriteIconIdentifiersWithMaximumCount:(unint64_t)a4
{
  v5 = [(SBHomeScreenController *)self iconModel];
  v6 = [v5 leafIconIdentifiers];

  v7 = [v6 allObjects];
  v8 = [v7 sortedArrayUsingSelector:sel_compare_];

  if ([v8 count] > a4)
  {
    v9 = [v8 subarrayWithRange:{0, a4}];

    v8 = v9;
  }

  return v8;
}

- (void)iconManagerDidNoteIconStateChangedExternally:(id)a3
{
  v4 = a3;
  [(SBHomeScreenController *)self dismissAppIconForceTouchControllers:0];
  [v4 dismissIconShareSheets];
}

- (void)iconManager:(id)a3 rootFolderController:(id)a4 willUseTransitionContext:(id)a5 toTransitionToState:(int64_t)a6
{
  v10 = a5;
  v9 = [a4 pageState];
  if (a6 == 2 && v9 == 3)
  {
    [(SBTodayViewController *)self->_todayViewController setTransitionContext:v10];
  }
}

+ (void)_getApplicationDataStore:(id *)a3 configurationKey:(id *)a4 forDataSource:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = objc_opt_respondsToSelector();
  v9 = objc_opt_respondsToSelector();
  if (v8 & 1) != 0 && (v9)
  {
    v10 = [v7 uniqueIdentifier];
    v11 = [v7 configurationStorageIdentifier];
    v12 = [v11 length];
    v13 = SBLogWidgetIntent();
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v19 = v11;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "configurationStorageIdentifier for dataSource '%{public}@' is", buf, 0xCu);
      }

      *a3 = [MEMORY[0x277D0AC98] storeForApplication:v11];
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        +[SBHomeScreenController _getApplicationDataStore:configurationKey:forDataSource:];
      }
    }

    v15 = [v10 length];
    v16 = SBLogWidgetIntent();
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v19 = v10;
        _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "icon-config for dataSource is '%{public}@'", buf, 0xCu);
      }

      *a4 = [MEMORY[0x277CCACA8] stringWithFormat:@"icon-config:%@", v10];
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[SBHomeScreenController _getApplicationDataStore:configurationKey:forDataSource:];
      }
    }
  }
}

- (id)iconManager:(id)a3 configurationDataForDataSource:(id)a4 ofIcon:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = objc_opt_class();
  v10 = SBSafeCast(v9, v7);
  if (![v8 isWidgetIcon] || !v10 || (objc_msgSend(v10, "uniqueIdentifier"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "uniqueIdentifier"), v12 = objc_claimAutoreleasedReturnValue(), -[SBHomeScreenController temporaryIntentDataForIconWithIdentifier:widgetUniqueIdentifier:](self, "temporaryIntentDataForIconWithIdentifier:widgetUniqueIdentifier:", v12, v11), v13 = objc_claimAutoreleasedReturnValue(), v12, v11, !v13))
  {
    v14 = [MEMORY[0x277D65ED8] sharedInstance];
    [v14 performAfterFirstUnlockSinceBootUsingBlock:&__block_literal_global_624];
    v24 = 0;
    v25 = 0;
    [objc_opt_class() _getApplicationDataStore:&v25 configurationKey:&v24 forDataSource:v7];
    v15 = v25;
    v16 = v24;
    v17 = objc_opt_self();
    v13 = [v15 safeObjectForKey:v16 ofType:v17];

    v18 = SBLogWidgetIntent();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      SBHConfigurationIdentifierFromDataSource();
      v19 = v23 = v10;
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "length")}];
      v21 = [v14 state];
      *buf = 138544130;
      v27 = v19;
      v28 = 2114;
      v29 = v16;
      v30 = 2114;
      v31 = v20;
      v32 = 2114;
      v33 = v21;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: fetched config data for key: %{public}@, result: %{public}@ bytes with keybag state: %{public}@.", buf, 0x2Au);

      v10 = v23;
    }
  }

  return v13;
}

void __76__SBHomeScreenController_iconManager_configurationDataForDataSource_ofIcon___block_invoke()
{
  v0 = SBLogWidgetIntent();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_21ED4E000, v0, OS_LOG_TYPE_DEFAULT, "Config data is accessible after first unlock.", v1, 2u);
  }
}

- (void)iconManager:(id)a3 dataSource:(id)a4 ofIcon:(id)a5 didUpdateConfigurationData:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = a6;
  v20 = 0;
  v21 = 0;
  [objc_opt_class() _getApplicationDataStore:&v21 configurationKey:&v20 forDataSource:v8];
  v11 = v21;
  v12 = v20;
  [v11 setObject:v10 forKey:v12];
  v13 = MEMORY[0x277D0AC98];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __83__SBHomeScreenController_iconManager_dataSource_ofIcon_didUpdateConfigurationData___block_invoke;
  v18[3] = &unk_2783A8C18;
  v14 = v9;
  v19 = v14;
  [v13 synchronizeWithCompletion:v18];
  v15 = SBLogWidgetIntent();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = SBHConfigurationIdentifierFromDataSource();
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "length")}];
    *buf = 138543874;
    v23 = v16;
    v24 = 2114;
    v25 = v12;
    v26 = 2114;
    v27 = v17;
    _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: updating config data for key: %{public}@, data: %{public}@ bytes", buf, 0x20u);
  }
}

void __83__SBHomeScreenController_iconManager_dataSource_ofIcon_didUpdateConfigurationData___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v3 = *(a1 + 32);
  if (isKindOfClass)
  {
    v4 = [v3 activeWidget];
    v5 = [v4 extensionBundleIdentifier];
  }

  else
  {
    v5 = [v3 uniqueIdentifier];
  }

  v6 = SBLogWidgetIntent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Writing to disk for icon(%{public}@) config data.", &v7, 0xCu);
  }
}

- (void)iconManager:(id)a3 prepareForPageHidingEducationWithCompletionHandler:(id)a4
{
  v5 = a4;
  v6 = [(SBHomeScreenController *)self homeScreenOverlayController];
  [v6 dismissAnimated:1 completionHandler:v5];
}

- (void)iconManager:(id)a3 willPresentPageManagementWithLayoutManager:(id)a4 animator:(id)a5 context:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = [SBApp deviceOrientationUpdateDeferralAssertionWithReason:@"SBIconControllerDisableRotationForPageHidingReason"];
  if (v10)
  {
    [v9 setObject:v10 forKey:@"SBIconControllerPreventDeviceOrientationChangesForPageHiding"];
  }

  v11 = [[SBDisableActiveInterfaceOrientationChangeAssertion alloc] initWithReason:@"SBIconControllerDisableRotationForPageHidingReason" nudgeOrientationOnInvalidate:0];
  if (v11)
  {
    [v9 setObject:v11 forKey:@"SBIconControllerPreventActiveInterfaceOrientationChangesForPageHiding"];
  }

  v12 = [(SBHomeScreenController *)self windowScene];
  v13 = [v12 floatingDockController];
  v14 = [[SBFloatingDockBehaviorAssertion alloc] initWithFloatingDockController:v13 visibleProgress:1 animated:0 gesturePossible:1 atLevel:@"pageManagement" reason:0 withCompletion:0.0];
  if (v14)
  {
    [v9 setObject:v14 forKey:@"SBIconControllerPageHidingFloatingDockBehaviorAssertion"];
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __98__SBHomeScreenController_iconManager_willPresentPageManagementWithLayoutManager_animator_context___block_invoke;
  v18[3] = &unk_2783A8C18;
  v19 = v9;
  v15 = v9;
  v16 = MEMORY[0x223D6F7F0](v18);
  v17 = v16;
  if (v8)
  {
    [v8 addAnimations:v16];
  }

  else
  {
    (*(v16 + 16))(v16);
  }
}

void __98__SBHomeScreenController_iconManager_willPresentPageManagementWithLayoutManager_animator_context___block_invoke(uint64_t a1)
{
  v4 = +[SBWallpaperController sharedInstance];
  [v4 minimumHomescreenWallpaperScale];
  v3 = [v4 setHomescreenWallpaperScale:0 withAnimationFactory:{fmax(v2, 0.8)}];
  if (v3)
  {
    [*(a1 + 32) setObject:v3 forKey:@"SBIconControllerChangeWallpaperScaleForPageHiding"];
  }
}

- (void)iconManager:(id)a3 willDismissPageManagementUsingAnimator:(id)a4 context:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = [v7 objectForKey:@"SBIconControllerChangeWallpaperScaleForPageHiding"];
  [v7 removeObjectForKey:@"SBIconControllerChangeWallpaperScaleForPageHiding"];
  v9 = [v7 objectForKey:@"SBIconControllerPageHidingFloatingDockBehaviorAssertion"];
  v10 = v9;
  if (v9)
  {
    [v9 invalidate];
    [v7 removeObjectForKey:@"SBIconControllerPageHidingFloatingDockBehaviorAssertion"];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __85__SBHomeScreenController_iconManager_willDismissPageManagementUsingAnimator_context___block_invoke;
  v14[3] = &unk_2783A8C18;
  v15 = v8;
  v11 = v8;
  v12 = MEMORY[0x223D6F7F0](v14);
  v13 = v12;
  if (v6)
  {
    [v6 addAnimations:v12];
  }

  else
  {
    (*(v12 + 16))(v12);
  }
}

- (void)iconManager:(id)a3 didDismissPageManagementWithLayoutManager:(id)a4 context:(id)a5
{
  v11 = a4;
  v6 = a5;
  v7 = [v6 objectForKey:@"SBIconControllerPreventDeviceOrientationChangesForPageHiding"];
  [v7 invalidate];
  [v6 removeObjectForKey:@"SBIconControllerPreventDeviceOrientationChangesForPageHiding"];
  v8 = [v6 objectForKey:@"SBIconControllerPreventActiveInterfaceOrientationChangesForPageHiding"];
  [v8 invalidate];
  [v6 removeObjectForKey:@"SBIconControllerPreventActiveInterfaceOrientationChangesForPageHiding"];

  v9 = [v11 completionURL];
  v10 = v9;
  if (v9)
  {
    SBWorkspaceActivateApplicationFromURL(v9, 0, 0);
    [v11 setCompletionURL:0];
  }
}

- (void)iconManagerWillPresentWidgetEditing:(id)a3
{
  if (!self->_addWidgetSheetFloatingDockBehaviorAssertion)
  {
    v4 = [(SBHomeScreenController *)self windowScene];
    v5 = [v4 floatingDockController];
    v6 = [[SBFloatingDockBehaviorAssertion alloc] initWithFloatingDockController:v5 visibleProgress:1 animated:1 gesturePossible:3 atLevel:@"addWidgetSheet" reason:0 withCompletion:0.0];
    addWidgetSheetFloatingDockBehaviorAssertion = self->_addWidgetSheetFloatingDockBehaviorAssertion;
    self->_addWidgetSheetFloatingDockBehaviorAssertion = v6;

    v8 = [(SBHomeScreenController *)self homeScreenViewController];
    v9 = [v8 iconContentView];
    v10 = [v9 window];
    if (!self->_addWidgetSheetKeyboardFocusAssertion)
    {
      v11 = +[SBWorkspace mainWorkspace];
      v12 = [v11 keyboardFocusController];
      v13 = +[SBKeyboardFocusLockReason addWidgetSheet];
      v14 = [v12 focusLockSpringBoardWindow:v10 forReason:v13];
      addWidgetSheetKeyboardFocusAssertion = self->_addWidgetSheetKeyboardFocusAssertion;
      self->_addWidgetSheetKeyboardFocusAssertion = v14;
    }

    if (([v10 isKeyWindow] & 1) == 0)
    {
      [v10 makeKeyWindow];
    }
  }

  [(SBBarSwipeAffordanceViewController *)self->_widgetAddSheetAffordanceViewController setWantsToBeActiveAffordance:1];

  [(SBHomeScreenController *)self _setWidgetEditingDisplayLayoutElementActive:1];
}

- (void)iconManagerDidDismissWidgetEditing:(id)a3
{
  [(SBFloatingDockBehaviorAssertion *)self->_addWidgetSheetFloatingDockBehaviorAssertion invalidate];
  addWidgetSheetFloatingDockBehaviorAssertion = self->_addWidgetSheetFloatingDockBehaviorAssertion;
  self->_addWidgetSheetFloatingDockBehaviorAssertion = 0;

  [(SBHomeScreenController *)self _setWidgetEditingDisplayLayoutElementActive:0];
  [(SBBarSwipeAffordanceViewController *)self->_widgetAddSheetAffordanceViewController setWantsToBeActiveAffordance:0];
  addWidgetSheetKeyboardFocusAssertion = self->_addWidgetSheetKeyboardFocusAssertion;
  if (addWidgetSheetKeyboardFocusAssertion)
  {
    [(BSInvalidatable *)addWidgetSheetKeyboardFocusAssertion invalidate];
    v6 = self->_addWidgetSheetKeyboardFocusAssertion;
    self->_addWidgetSheetKeyboardFocusAssertion = 0;
  }
}

- (void)iconManagerWillAnimateWidgetInsertion:(id)a3
{
  v4 = [(SBHomeScreenController *)self _iconController];
  v3 = [v4 powerLogAggregator];
  [v3 emitEventOfType:0];
}

- (BOOL)iconManager:(id)a3 shouldPlaceIconOnIgnoredList:(id)a4
{
  v4 = [(SBHomeScreenController *)self _iconController:a3];
  v5 = [v4 shouldAddNewIconsToRootFolder];

  return v5 ^ 1;
}

- (BOOL)iconManager:(id)a3 isWidgetValid:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = SBLogWidgetDiscoverability();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 containerBundleIdentifier];
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[ContainerBundleIdentifier debugging] checking widget = %@", &v12, 0xCu);
  }

  v8 = [(SBHomeScreenController *)self _iconController];
  v9 = [v5 containerBundleIdentifier];
  v10 = [v8 _isWidgetWithContainerBundleIdentifierValid:v9];

  return v10;
}

- (BOOL)_isFileStackIconSupported
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  return (v3 & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

- (Class)iconManager:(id)a3 iconClassForApplicationWithBundleIdentifier:(id)a4 proposedClass:(Class)a5
{
  v7 = [SBDefaults localDefaults:a3];
  v8 = [v7 iconDefaults];
  v9 = [v8 shouldDisableLiveIcons];

  if (v9)
  {
    v10 = [(SBHomeScreenController *)self iconModel];
    a5 = [objc_opt_class() applicationIconClass];
  }

  return a5;
}

- (BOOL)iconManager:(id)a3 isCustomElementValid:(id)a4
{
  v5 = [a4 containerBundleIdentifier];
  if (v5)
  {
    v6 = [(SBHomeScreenController *)self _iconController];
    v7 = [v6 _isWidgetWithContainerBundleIdentifierValid:v5];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)canAppPredictionsWidgetAlignWithGrid
{
  if (__sb__runningInSpringBoard())
  {
    v2 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    v3 = [MEMORY[0x277D75418] currentDevice];
    v2 = [v3 userInterfaceIdiom] == 1;
  }

  return !v2;
}

- (BOOL)iconManager:(id)a3 canCustomElementAlignWithGrid:(id)a4
{
  v5 = a4;
  v6 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 1;
  }

  return [(SBHomeScreenController *)self canAppPredictionsWidgetAlignWithGrid];
}

- (BOOL)iconManager:(id)a3 canAddIcon:(id)a4 toIconList:(id)a5 inFolder:(id)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(SBHomeScreenController *)self rootFolder];
  v11 = [v10 dockUtilities];

  if ((![v8 isFileStackIcon] || v11 == v9) && ((objc_msgSend(v8, "isFileStackIcon") & 1) != 0 || v11 != v9))
  {
    v12 = 1;
    if ([v8 isFileStackIcon] && v11 == v9)
    {
      v14 = objc_opt_class();
      v15 = v8;
      if (v14)
      {
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
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

      v17 = v16;

      v18 = [v17 url];

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v19 = [v11 icons];
      v20 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v31;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v31 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v30 + 1) + 8 * i);
            if ([v24 isFileStackIcon])
            {
              v25 = objc_opt_class();
              v26 = v24;
              if (v25)
              {
                v27 = (objc_opt_isKindOfClass() & 1) != 0 ? v26 : 0;
              }

              else
              {
                v27 = 0;
              }

              v28 = v27;

              v29 = [v28 url];

              LOBYTE(v28) = [v18 isEqual:v29];
              if (v28)
              {
                v12 = 0;
                goto LABEL_30;
              }
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }

        v12 = 1;
      }

LABEL_30:
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)iconManager:(id)a3 prepareAddSheetViewController:(id)a4
{
  v5 = a4;
  widgetAddSheetAffordanceViewController = self->_widgetAddSheetAffordanceViewController;
  v12 = v5;
  if (!widgetAddSheetAffordanceViewController)
  {
    v7 = [(SBHomeScreenController *)self windowScene];
    v8 = [[SBBarSwipeAffordanceViewController alloc] initWithZStackParticipantIdentifier:6 windowScene:v7];
    v9 = self->_widgetAddSheetAffordanceViewController;
    self->_widgetAddSheetAffordanceViewController = v8;
    v10 = v8;

    v11 = [(SBBarSwipeAffordanceViewController *)v10 view];

    [v11 addObserver:self];
    [v11 setDelegate:self];
    [v11 setHomeAffordanceHidden:1];

    v5 = v12;
    widgetAddSheetAffordanceViewController = self->_widgetAddSheetAffordanceViewController;
  }

  [v5 setBarSwipeViewController:widgetAddSheetAffordanceViewController];
}

- (void)iconManager:(id)a3 displayFeatureIntroductionItemIfUnlocked:(id)a4
{
  v9 = a4;
  v6 = [a3 featureIntroductionManager];
  [v6 addFeatureIntroductionItem:v9 atLocations:4];
  v7 = [(SBHomeScreenController *)self lockScreenManager];
  v8 = [v7 isUILocked];

  if ((v8 & 1) == 0)
  {
    [(SBHomeScreenController *)self displayFeatureIntroductionItem:v9 atLocation:4];
  }
}

- (id)iconManager:(id)a3 floatingDockViewControllerForView:(id)a4
{
  v4 = [a4 _sbWindowScene];
  v5 = [v4 floatingDockController];
  v6 = [v5 floatingDockViewController];

  return v6;
}

- (id)iconManager:(id)a3 floatingDockViewControllerForViewController:(id)a4
{
  v4 = [a4 _sbWindowScene];
  v5 = [v4 floatingDockController];
  v6 = [v5 floatingDockViewController];

  return v6;
}

- (BOOL)iconManager:(id)a3 isEditingAllowedForIconView:(id)a4
{
  v4 = [a4 _sbWindowScene];
  if ([v4 isContinuityDisplayWindowScene])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isMainDisplayWindowScene];
  }

  return v5;
}

- (id)iconManager:(id)a3 widgetDataSourceForReplacingIconWithWidget:(id)a4 proposedWidgetDataSource:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!v9)
  {
    if ([v8 isApplicationIcon])
    {
      v11 = [v8 applicationBundleID];
      if ([v11 isEqualToString:@"com.apple.MobileAddressBook"])
      {
        v12 = [v7 widgetExtensionProvider];
        v13 = [v12 sbh_defaultDescriptorForContainerBundleIdentifier:@"com.apple.PeopleViewService"];

        v10 = [v13 sbh_iconDataSource];
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
  }

  return v10;
}

- (id)iconManager:(id)a3 applicationIconForReplacingIconWithAppIcon:(id)a4 proposedApplicationIcon:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if ([v7 isWidgetIcon])
  {
    v9 = v8;
    if (([v7 isWidgetStackIcon] & 1) == 0)
    {
      v10 = [v7 activeWidget];
      v11 = [v10 containerBundleIdentifier];
      v12 = [v10 extensionBundleIdentifier];
      v13 = [v10 kind];
      v9 = v8;
      if ([v11 isEqualToString:@"com.apple.PeopleViewService"])
      {
        v9 = v8;
        if ([v12 isEqualToString:@"com.apple.PeopleViewService.PeopleWidget-iOS"])
        {
          v9 = v8;
          if ([v13 isEqualToString:@"SingleContactWidget_iOS"])
          {
            v14 = [(SBHomeScreenController *)self iconModel];
            v9 = [v14 applicationIconForBundleIdentifier:@"com.apple.MobileAddressBook"];
          }
        }
      }
    }
  }

  return v9;
}

- (void)iconManagerToggleHomeScreenWallpaperDimming:(id)a3
{
  v4 = [(SBWallpaperIconStyleCoordinator *)self->_iconStyleCoordinator isWallpaperDimmed]^ 1;
  iconStyleCoordinator = self->_iconStyleCoordinator;

  [(SBWallpaperIconStyleCoordinator *)iconStyleCoordinator setWallpaperDimmed:v4];
}

- (id)iconManager:(id)a3 containerBundleIdentifierForDescriptor:(id)a4
{
  v4 = a4;
  v5 = [v4 extensionIdentity];
  v6 = [v5 containerBundleIdentifier];

  v7 = [v4 extensionIdentity];

  v8 = [v7 extensionBundleIdentifier];

  if (-[__CFString isEqualToString:](v6, "isEqualToString:", @"com.apple.Health.Sleep") && [v8 isEqualToString:@"com.apple.Health.Sleep.SleepWidgetExtension"])
  {

    v6 = @"com.apple.Health";
  }

  return v6;
}

- (void)iconManager:(id)a3 tapFloatingDockStackIconView:(id)a4
{
  v14 = a4;
  v4 = [v14 icon];
  v5 = [v4 isFileStackIcon];

  if ((v5 & 1) == 0)
  {
    [SBHomeScreenController iconManager:v14 tapFloatingDockStackIconView:?];
  }

  v6 = [v14 window];
  v7 = [v6 windowScene];
  v8 = objc_opt_class();
  v9 = v7;
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

  if (v11)
  {
    v12 = [v11 floatingDockController];
    v13 = [v12 remoteContentManager];

    [v13 tapFileStackIconView:v14];
  }
}

- (id)iconManager:(id)a3 customInsertionGridPathForIcon:(id)a4 inRootFolder:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [v6 application];
    if ([v10 isInternalApplication] && (objc_msgSend(v10, "info"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "visibilityOverride"), v11, !v12) || (objc_msgSend(v10, "info"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isAppLibraryOnlyByDefault"), v13, v14))
    {
      v15 = [v7 ignoredList];
      v16 = [v7 gridPathWithList:v15 gridCellIndex:0 listGridCellInfoOptions:0];
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

- (unint64_t)barSwipeAffordanceView:(id)a3 systemGestureTypeForType:(int64_t)a4
{
  widgetAddSheetAffordanceViewController = self->_widgetAddSheetAffordanceViewController;
  v6 = a3;
  v7 = [(SBBarSwipeAffordanceViewController *)widgetAddSheetAffordanceViewController barSwipeAffordanceView];

  if (v7 == v6 && a4 == 1)
  {
    return 53;
  }

  else
  {
    return 0;
  }
}

- (void)homeGesturePerformedForBarSwipeAffordanceView:(id)a3
{
  widgetAddSheetAffordanceViewController = self->_widgetAddSheetAffordanceViewController;
  v5 = a3;
  v6 = [(SBBarSwipeAffordanceViewController *)widgetAddSheetAffordanceViewController barSwipeAffordanceView];

  if (v6 == v5)
  {
    v7 = [(SBHomeScreenController *)self _rootFolderController];
    [v7 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)libraryViewControllerRequestsDismissal:(id)a3
{
  v6 = a3;
  if ([(SBHomeScreenController *)self isModalAppLibrarySupported])
  {
    v4 = [v6 _sbWindowScene];
    v5 = [v4 modalLibraryController];

    [v5 dismissLibraryAnimated:1 completion:0];
  }

  else
  {
    [(SBHomeScreenController *)self dismissLibraryAnimated:1 completion:0];
  }
}

- (void)libraryViewController:(id)a3 willPresentFolderController:(id)a4
{
  v4 = [(SBHomeScreenController *)self homeScreenOverlayController:a3];
  [v4 addReasonToDisableDismissGestureRecognizer:@"kSBHLibraryViewControllerReasonToForbidDismissalOfHomeScreenOverlayController"];
}

- (void)libraryViewController:(id)a3 willDismissFolderController:(id)a4
{
  v4 = [(SBHomeScreenController *)self homeScreenOverlayController:a3];
  [v4 removeReasonToDisableDismissGestureRecognizer:@"kSBHLibraryViewControllerReasonToForbidDismissalOfHomeScreenOverlayController"];
}

- (void)libraryViewControllerWillPresent:(id)a3
{
  v3 = [(SBHomeScreenController *)self _rootFolderController];
  [v3 dismissWidgetEditingViewControllerIfPresentedAnimated:1];
}

- (void)libraryViewControllerDidDismiss:(id)a3
{
  v3 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v3))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_HOME_LIBRARY_DISMISS", " enableTelemetry=YES  isAnimation=YES ", v4, 2u);
  }

  kdebug_trace();
}

- (void)libraryViewController:(id)a3 willPresentSearchController:(id)a4
{
  v5 = MEMORY[0x277CCAB98];
  v6 = a3;
  v7 = [v5 defaultCenter];
  [v7 postNotificationName:SBIconControllerOverlayVisibilityDidChangeNotification object:self];

  libraryViewControllersActivatingSpotlightAppService = self->_libraryViewControllersActivatingSpotlightAppService;
  if (!libraryViewControllersActivatingSpotlightAppService)
  {
    v9 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v10 = self->_libraryViewControllersActivatingSpotlightAppService;
    self->_libraryViewControllersActivatingSpotlightAppService = v9;

    libraryViewControllersActivatingSpotlightAppService = self->_libraryViewControllersActivatingSpotlightAppService;
  }

  v11 = [(NSHashTable *)libraryViewControllersActivatingSpotlightAppService count];
  [(NSHashTable *)self->_libraryViewControllersActivatingSpotlightAppService addObject:v6];

  if (!v11)
  {
    v12 = [MEMORY[0x277D65D20] sharedAppService];
    [v12 activate];
  }
}

- (void)libraryViewController:(id)a3 willDismissSearchController:(id)a4
{
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:SBIconControllerOverlayVisibilityDidChangeNotification object:self];

  v6 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v6))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_HOME_LIBRARY_SEARCH_DISMISS", " enableTelemetry=YES  isAnimation=YES ", v7, 2u);
  }

  kdebug_trace();
}

- (void)libraryViewController:(id)a3 didDismissSearchController:(id)a4
{
  v5 = a3;
  v6 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v6))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_HOME_LIBRARY_SEARCH_DISMISS", " enableTelemetry=YES  isAnimation=YES ", v8, 2u);
  }

  kdebug_trace();
  [(NSHashTable *)self->_libraryViewControllersActivatingSpotlightAppService removeObject:v5];

  if (![(NSHashTable *)self->_libraryViewControllersActivatingSpotlightAppService count])
  {
    v7 = [MEMORY[0x277D65D20] sharedAppService];
    [v7 deactivate];
  }
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(SBHomeScreenController *)self rootFolderSettings];

  if (v7 == v9)
  {
    if ([v6 isEqualToString:@"showsSpotlightOnEveryPage"])
    {
      v8 = [(SBHomeScreenController *)self iconManager];
      [v8 tearDownAndResetRootIconLists];
    }
  }

  else if (self->_iconEditingSettings == v9)
  {
    [(SBHomeScreenController *)self _configureEditingGestureRecognizers];
  }
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4
{
  v5 = a4;
  v13 = [v5 fromLayoutState];
  v6 = [v13 unlockedEnvironmentMode];
  v7 = [v5 toLayoutState];

  v8 = [v7 unlockedEnvironmentMode];
  v9 = v8;
  if (v6 == 2 && v8 != 2)
  {
    v10 = 8;
LABEL_7:
    [(SBHomeScreenController *)self removeIconOcclusionReason:v10 updateVisibleIcons:1];
    goto LABEL_8;
  }

  if (v6 == 3 && v8 != 3)
  {
    v10 = 2;
    goto LABEL_7;
  }

LABEL_8:
  v11 = [(SBHomeScreenController *)self keepTodayViewIconImagesStaticAssertion];
  v12 = v11;
  if (v9 == 1 && v11)
  {
    [v11 invalidate];
    [(SBHomeScreenController *)self setKeepTodayViewIconImagesStaticAssertion:0];
  }
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4
{
  v5 = a4;
  v19 = [v5 fromLayoutState];
  v6 = [v19 unlockedEnvironmentMode];
  v7 = [v5 toLayoutState];

  v8 = [v7 unlockedEnvironmentMode];
  v9 = v8;
  if (v6 != 2 && v8 == 2)
  {
    v10 = 8;
LABEL_7:
    [(SBHomeScreenController *)self addIconOcclusionReason:v10 updateVisibleIcons:1];
    goto LABEL_8;
  }

  if (v6 != 3 && v8 == 3)
  {
    v10 = 2;
    goto LABEL_7;
  }

LABEL_8:
  v11 = [(SBHomeScreenController *)self todayViewController];
  v12 = [(SBHomeScreenController *)self homeScreenOverlayController];
  v13 = [(SBHomeScreenController *)self keepTodayViewIconImagesStaticAssertion];
  v14 = v13;
  if (v9 != 1 && !v13)
  {
    if ([v12 isPresented])
    {
      v15 = [v12 activeSidebarViewController];

      if (v15 == v11)
      {
        v16 = SBStringForUnlockedEnvironmentMode(v9);
        v17 = [@"Layout State: " stringByAppendingString:v16];

        v18 = [v11 keepIconImageViewControllersStaticForReason:v17];
        [(SBHomeScreenController *)self setKeepTodayViewIconImagesStaticAssertion:v18];
      }
    }
  }
}

- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4
{
  v4 = a4;
  [v4 setActivationPolicyForParticipantsBelow:0];
  [v4 setHomeGestureConsumption:1];
}

- (void)searchBarDidFocus
{
  v2 = [(SBHomeScreenController *)self _rootFolderController];
  if (([v2 isTransitioningPageState] & 1) == 0 && !SBSpotlightIsVisible())
  {
    [v2 presentSpotlightAnimated:1 completionHandler:0];
  }
}

- (void)proactiveHomeScreenSuggestionProvider:(id)a3 willUseTemporaryIntent:(id)a4 forIconWithIdentifier:(id)a5 widgetUniqueIdentifier:(id)a6
{
  v21 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = SBLogWidgetIntent();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138413058;
    v14 = v9;
    v15 = 2048;
    v16 = [v9 _indexingHash];
    v17 = 2112;
    v18 = v10;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Setting temporary intent '%@/%lld' for icons with identifier '%@' / widgetUniqueIdentifier: %{public}@", &v13, 0x2Au);
  }

  [(SBHomeScreenController *)self setTemporaryIntent:v9 forIconWithIdentifier:v10 widgetUniqueIdentifier:v11];
}

- (id)suggestionsWidgetViewController:(id)a3 iconForApplicationWithBundleIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(SBHomeScreenController *)self iconModel];
  v7 = [v6 applicationIconForBundleIdentifier:v5];

  return v7;
}

- (id)appPredictionViewController:(id)a3 badgeValueForApplicationWithBundleIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(SBHomeScreenController *)self _iconController];
  v7 = [v6 displayIDsWithBadgingEnabled];
  v8 = [v7 containsObject:v5];

  if (v8)
  {
    v9 = [(SBHomeScreenController *)self applicationController];
    v10 = [v9 applicationWithBundleIdentifier:v5];
    v11 = [v10 badgeValue];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)appPredictionViewController:(id)a3 shouldDisplayBadgeWithBundleIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(SBHomeScreenController *)self _iconController];
  v7 = [v6 _allowsBadgingForApplicationBundleIdentifier:v5];

  return v7;
}

- (id)appPredictionViewController:(id)a3 iconForApplicationWithBundleIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(SBHomeScreenController *)self iconModel];
  v7 = [v6 applicationIconForBundleIdentifier:v5];

  return v7;
}

- (id)additionalIconListLayoutObserversForAppPredictionViewController:(id)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = [(SBHomeScreenController *)self iconManager];
  if (objc_opt_respondsToSelector())
  {
    v6[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (id)createStatusBarVisibiltyAssertionForWindowScene:(id)a3
{
  v3 = [a3 statusBarManager];
  v4 = [v3 assertionManager];
  v5 = [v4 newSettingsAssertionWithStatusBarHidden:0 atLevel:0 reason:@"show on homescreen backstop"];

  return v5;
}

- (int64_t)interfaceOrientationForWallpaperController:(id)a3
{
  v3 = [(SBHomeScreenController *)self window];
  v4 = [v3 interfaceOrientation];

  return v4;
}

- (void)setWallpaperAnimationDisabled:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SBHomeScreenController *)self suspendWallpaperAnimationForOverlayViewAssertion];
  [v7 invalidate];

  if (v4)
  {
    if (self->_invalidated)
    {
      v8 = SBLogIconController();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SBHomeScreenController setWallpaperAnimationDisabled:forReason:];
      }
    }

    else
    {
      v9 = +[SBWallpaperController sharedInstance];
      v10 = [v9 suspendWallpaperAnimationForReason:v6];
      [(SBHomeScreenController *)self setSuspendWallpaperAnimationForOverlayViewAssertion:v10];
    }
  }
}

- (id)testSetupForIconManagerWidgetScrollPerformanceTest:(id)a3
{
  v40[3] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D66520];
  v36 = [MEMORY[0x277D662F8] todayNewsWidgetIconDescriptorForSizeClass:*MEMORY[0x277D66520]];
  v39[0] = v36;
  v4 = *MEMORY[0x277D66548];
  v35 = [MEMORY[0x277D662F8] overviewStocksWidgetIconDescriptorForSizeClass:*MEMORY[0x277D66548]];
  v39[1] = v35;
  v34 = [MEMORY[0x277D662F8] calendarWidgetIconDescriptorForSizeClass:v4];
  v39[2] = v34;
  v33 = [MEMORY[0x277D662E8] health];
  v39[3] = v33;
  v32 = [MEMORY[0x277D662E8] home];
  v39[4] = v32;
  v31 = [MEMORY[0x277D662E8] passbook];
  v39[5] = v31;
  v30 = [MEMORY[0x277D662E8] preferences];
  v39[6] = v30;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:7];
  v40[0] = v29;
  v28 = [MEMORY[0x277D662F8] remindersWidgetIconDescriptorForSizeClass:v3];
  v38[0] = v28;
  v27 = [MEMORY[0x277D662F8] tvWidgetIconDescriptorForSizeClass:v3];
  v38[1] = v27;
  v26 = [MEMORY[0x277D662E8] documents];
  v38[2] = v26;
  v25 = [MEMORY[0x277D662E8] findMy];
  v38[3] = v25;
  v24 = [MEMORY[0x277D662E8] shortcuts];
  v38[4] = v24;
  v23 = [MEMORY[0x277D662E8] iTunesStore];
  v38[5] = v23;
  v22 = [MEMORY[0x277D662E8] tips];
  v38[6] = v22;
  v21 = [MEMORY[0x277D662E8] translate];
  v38[7] = v21;
  v20 = [MEMORY[0x277D662E8] contacts];
  v38[8] = v20;
  v19 = [MEMORY[0x277D662E8] watch];
  v38[9] = v19;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:10];
  v40[1] = v18;
  v17 = [MEMORY[0x277D66300] defaultStackIconDescriptorForSizeClass:v3];
  v37[0] = v17;
  v16 = [MEMORY[0x277D662F8] recentsWidgetIconDescriptorForSizeClass:v3];
  v37[1] = v16;
  v5 = [MEMORY[0x277D662E8] documents];
  v37[2] = v5;
  v6 = [MEMORY[0x277D662E8] findMy];
  v37[3] = v6;
  v7 = [MEMORY[0x277D662E8] shortcuts];
  v37[4] = v7;
  v8 = [MEMORY[0x277D662E8] iTunesStore];
  v37[5] = v8;
  v9 = [MEMORY[0x277D662E8] health];
  v37[6] = v9;
  v10 = [MEMORY[0x277D662E8] home];
  v37[7] = v10;
  v11 = [MEMORY[0x277D662E8] passbook];
  v37[8] = v11;
  v12 = [MEMORY[0x277D662E8] preferences];
  v37[9] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:10];
  v40[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:3];

  return v14;
}

- (id)testSetupForIconManagerAddWidgetsToEachPage:(id)a3
{
  v10[4] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D66520];
  v4 = [MEMORY[0x277D662F8] gasparWatchDogWidgetIconDescriptorForSizeClass:*MEMORY[0x277D66520]];
  v10[0] = v4;
  v5 = [MEMORY[0x277D662F8] relivePhotosWidgetIconDescriptorForSizeClass:v3];
  v10[1] = v5;
  v6 = [MEMORY[0x277D662F8] mobileNotesWidgetIconDescriptorForSizeClass:v3];
  v10[2] = v6;
  v7 = [MEMORY[0x277D662F8] remindersWidgetIconDescriptorForSizeClass:v3];
  v10[3] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:4];

  return v8;
}

- (id)testSetupForIconManagerWidgetScrollTest:(id)a3
{
  v45[17] = *MEMORY[0x277D85DE8];
  v26 = a3;
  v38 = objc_opt_new();
  v3 = 0;
  v36 = *MEMORY[0x277D66520];
  v29 = *MEMORY[0x277D66548];
  v28 = *MEMORY[0x277D66518];
  v27 = *MEMORY[0x277D66510];
  do
  {
    v4 = objc_opt_new();
    v5 = [MEMORY[0x277D75418] currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      if ((v3 & 1 | 2) == 2)
      {
        v39 = [MEMORY[0x277D662F8] dateTimeWidgetIconDescriptorForSizeClass:v29];
        v45[0] = v39;
        v42 = [MEMORY[0x277D662F8] notesWidgetIconDescriptorForSizeClass:v29];
        v45[1] = v42;
        v35 = [MEMORY[0x277D66300] padDefaultLeadingHomescreenLayoutStackWidgetIconDescriptorForSizeClass:v28];
        v45[2] = v35;
        v34 = [MEMORY[0x277D662F8] calendarWidgetIconDescriptorForSizeClass:v36];
        v45[3] = v34;
        v7 = [MEMORY[0x277D66300] padDefaultTrailingHomescreenLayoutStackWidgetIconDescriptorForSizeClass:v28];
        v45[4] = v7;
        v37 = v4;
        v8 = [MEMORY[0x277D662E8] facetime];
        v45[5] = v8;
        v41 = [MEMORY[0x277D662E8] documents];
        v45[6] = v41;
        v9 = [MEMORY[0x277D662E8] reminders];
        v45[7] = v9;
        v10 = [MEMORY[0x277D662E8] maps];
        v45[8] = v10;
        v33 = [MEMORY[0x277D662E8] home];
        v45[9] = v33;
        v32 = [MEMORY[0x277D662E8] camera];
        v45[10] = v32;
        v31 = [MEMORY[0x277D662E8] appStore];
        v45[11] = v31;
        v30 = [MEMORY[0x277D662E8] books];
        v45[12] = v30;
        v11 = [MEMORY[0x277D662E8] podcasts];
        v45[13] = v11;
        v12 = [MEMORY[0x277D662E8] tv];
        v45[14] = v12;
        v13 = [MEMORY[0x277D662E8] news];
        v45[15] = v13;
        v14 = [MEMORY[0x277D662E8] preferences];
        v45[16] = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:17];
        [v37 addObjectsFromArray:v15];

        v16 = v8;
        v17 = v7;

        v4 = v37;
        v18 = v39;
        v19 = v35;

        v20 = v34;
      }

      else
      {
        v18 = [MEMORY[0x277D662F8] tvWidgetIconDescriptorForSizeClass:v27];
        v44[0] = v18;
        v42 = [MEMORY[0x277D662E8] findMy];
        v44[1] = v42;
        v19 = [MEMORY[0x277D662E8] shortcuts];
        v44[2] = v19;
        v20 = [MEMORY[0x277D662E8] iTunesStore];
        v44[3] = v20;
        v17 = [MEMORY[0x277D662E8] health];
        v44[4] = v17;
        v16 = [MEMORY[0x277D662E8] home];
        v44[5] = v16;
        v41 = [MEMORY[0x277D662E8] passbook];
        v44[6] = v41;
        v9 = [MEMORY[0x277D662E8] preferences];
        v44[7] = v9;
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:8];
        [v4 addObjectsFromArray:v10];
      }
    }

    else
    {
      v40 = v36;
      if ((v3 & 3u) > 1uLL)
      {
        if ((v3 & 3) == 2)
        {
          [MEMORY[0x277D662F8] mobileNotesWidgetIconDescriptorForSizeClass:?];
        }

        else
        {
          [MEMORY[0x277D662F8] remindersWidgetIconDescriptorForSizeClass:?];
        }
      }

      else if ((v3 & 3) != 0)
      {
        [MEMORY[0x277D662F8] relivePhotosWidgetIconDescriptorForSizeClass:?];
      }

      else
      {
        [MEMORY[0x277D662F8] gasparWatchDogWidgetIconDescriptorForSizeClass:?];
      }
      v21 = ;
      v42 = v21;
      [v4 addObject:v21];
      v19 = [MEMORY[0x277D662E8] documents];
      v43[0] = v19;
      v20 = [MEMORY[0x277D662E8] findMy];
      v43[1] = v20;
      v17 = [MEMORY[0x277D662E8] shortcuts];
      v43[2] = v17;
      v16 = [MEMORY[0x277D662E8] iTunesStore];
      v43[3] = v16;
      v41 = [MEMORY[0x277D662E8] health];
      v43[4] = v41;
      v9 = [MEMORY[0x277D662E8] home];
      v43[5] = v9;
      v10 = [MEMORY[0x277D662E8] passbook];
      v43[6] = v10;
      v22 = [MEMORY[0x277D662E8] preferences];
      v43[7] = v22;
      [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:8];
      v24 = v23 = v4;
      [v23 addObjectsFromArray:v24];

      v4 = v23;
      v18 = v40;
    }

    [v38 addObject:v4];
    ++v3;
  }

  while (v3 != 8);

  return v38;
}

- (id)testSetupHomeScreenForWidgetScrollPerformanceTest:(id)a3
{
  v10[4] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D66548];
  v4 = [MEMORY[0x277D662F8] calendarWidgetIconDescriptorForSizeClass:*MEMORY[0x277D66548]];
  v10[0] = v4;
  v5 = [MEMORY[0x277D662F8] podcastWidgetIconDescriptorForSizeClass:v3];
  v10[1] = v5;
  v6 = [MEMORY[0x277D662F8] relivePhotosWidgetIconDescriptorForSizeClass:v3];
  v10[2] = v6;
  v7 = [MEMORY[0x277D662F8] batteryWidgetIconDescriptorForSizeClass:v3];
  v10[3] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:4];

  return v8;
}

- (id)_configureCategoryMapProviderToUseCategoryMapAtURL:(id)a3
{
  v4 = a3;
  if ([(SBHomeScreenController *)self isAppLibrarySupported])
  {
    v5 = [(SBHomeScreenController *)self _iconController];
    v6 = [v5 libraryCategoryMapProvider];

    v9 = 0;
    [v6 overrideCategoryMapForTestingAtURL:v4 error:&v9];
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_configureDeweyOneCategoryWithAllApps
{
  v26 = *MEMORY[0x277D85DE8];
  if ([(SBHomeScreenController *)self isAppLibrarySupported])
  {
    v3 = self->_iconModel;
    v4 = [(SBHIconModel *)v3 leafIcons];
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          if ([(SBIconModel *)v3 isIconVisible:v11, v20])
          {
            v12 = [v11 applicationBundleID];
            if (v12)
            {
              v13 = [v11 leafIdentifier];
              [v5 setObject:v11 forKey:v13];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v8);
    }

    v14 = objc_alloc_init(MEMORY[0x277D66230]);
    v15 = [MEMORY[0x277D66220] categoryWithLocalizedDisplayName:@"Reference & Reading" categoryID:0 categoryIndex:0];
    v24 = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    [v14 setCategoryIdentifiers:v16];

    [v14 setLocalizedCategoryName:@"Reference & Reading" forCategoryIdentifier:v15];
    v17 = [v5 allKeys];
    [v14 setSortedApplicationIdentifiers:v17 forCategoryIdentifier:v15];

    v18 = [(SBHomeScreenController *)self _iconController];
    v19 = [v18 libraryCategoryMapProvider];

    [v19 overrideCategoryMapForTesting:v14];
  }
}

- (void)_configureDeweyEachAppHasItsOwnCategory:(unint64_t)a3
{
  v30 = *MEMORY[0x277D85DE8];
  if ([(SBHomeScreenController *)self isAppLibrarySupported])
  {
    v19 = a3;
    v5 = self->_iconModel;
    v6 = [(SBHIconModel *)v5 leafIcons];
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          if ([(SBIconModel *)v5 isIconVisible:v12, v19])
          {
            v13 = [v12 applicationBundleID];
            if (v13)
            {
              v14 = [v12 leafIdentifier];
              [v7 setObject:v12 forKey:v14];
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v9);
    }

    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    v24[3] = 0;
    v15 = objc_alloc_init(MEMORY[0x277D66230]);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __66__SBHomeScreenController__configureDeweyEachAppHasItsOwnCategory___block_invoke;
    v20[3] = &unk_2783C26E8;
    v22 = v24;
    v16 = v15;
    v21 = v16;
    v23 = v19;
    [v7 enumerateKeysAndObjectsUsingBlock:v20];
    v17 = [(SBHomeScreenController *)self _iconController];
    v18 = [v17 libraryCategoryMapProvider];

    [v18 overrideCategoryMapForTesting:v16];
    _Block_object_dispose(v24, 8);
  }
}

void __66__SBHomeScreenController__configureDeweyEachAppHasItsOwnCategory___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D66220];
  v8 = *(*(*(a1 + 40) + 8) + 24);
  v9 = a3;
  v10 = a2;
  v11 = [v7 categoryWithLocalizedDisplayName:v10 categoryID:v8 categoryIndex:v8];
  [*(a1 + 32) addCategoryIdentifier:v11];
  v12 = *(a1 + 32);
  v19[0] = v10;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [v12 setSortedApplicationIdentifiers:v13 forCategoryIdentifier:v11];

  v14 = *(a1 + 32);
  v15 = [v9 displayName];

  [v14 setLocalizedCategoryName:v15 forCategoryIdentifier:v11];
  v16 = ++*(*(*(a1 + 40) + 8) + 24);

  v17 = *(a1 + 48);
  if (v16 > v17 && v17 != 0)
  {
    *a4 = 1;
  }
}

- (void)_configureLibraryWithCategoryLimit:(int64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(SBHomeScreenController *)self isAppLibrarySupported])
  {
    v5 = [(SBHomeScreenController *)self _libraryViewControllers];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * v9) podFolderViewController];
          v11 = [v10 dataSource];
          [v11 setMaximumNumberOfDisplayedCategories:a3];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (void)_teardownDeweyTestConfigurations
{
  v3 = [(SBHomeScreenController *)self _iconController];
  v5 = [v3 libraryCategoryMapProvider];

  [v5 overrideCategoryMapForTesting:0];
  v4 = [v5 requestLibraryCategoryMapRefreshWithOptions:15 reason:@"Tearing down test config"];
  [(SBHomeScreenController *)self _configureLibraryWithCategoryLimit:-1];
}

- (void)_presentPageManagement:(id)a3
{
  v4 = a3;
  v5 = [(SBHomeScreenController *)self _rootFolderController];
  [v5 _presentPageManagement:v4];
}

- (void)_dismissPageManagementIfPresented:(id)a3
{
  v4 = a3;
  v5 = [(SBHomeScreenController *)self _rootFolderController];
  [v5 _dismissPageManagementIfPresented:v4];
}

- (void)iconStyleCoordinatorDidUpdate:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [(SBHomeScreenController *)self iconManager];
  [v4 setListLayoutProviderLayoutOptions:-[SBHomeScreenController bestListLayoutProviderLayoutOptions](self animated:{"bestListLayoutProviderLayoutOptions"), 1}];
  v5 = [(SBHomeScreenController *)self windowScene];
  [(SBHomeScreenController *)self updateHomeScreenTraitOverridesForWindowScene:v5];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(SBHomeScreenController *)self additionalFloatingDockControllers];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v12 + 1) + 8 * v10) windowScene];
        if (v11)
        {
          [(SBHomeScreenController *)self updateHomeScreenTraitOverridesForWindowScene:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(SBHomeScreenController *)self informIconStyleObserversOfStyleChange];
}

- (void)modalRemoteViewController:(id)a3 willDismissWithResponse:(id)a4
{
  wallpaperEditorStatusBarAssertion = self->_wallpaperEditorStatusBarAssertion;
  v6 = objc_opt_class();
  v7 = wallpaperEditorStatusBarAssertion;
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

  v11 = v8;

  if (v11)
  {
    v9 = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
    [(BSInvalidatable *)v11 invalidateWithAnimationParameters:v9];
  }

  else
  {
    [(BSInvalidatable *)self->_wallpaperEditorStatusBarAssertion invalidate];
  }

  v10 = self->_wallpaperEditorStatusBarAssertion;
  self->_wallpaperEditorStatusBarAssertion = 0;
}

- (void)modalRemoteViewController:(id)a3 didDismissWithResponse:(id)a4
{
  v5 = a3;
  v6 = [(SBHomeScreenController *)self homeScreenViewController];
  [v6 bs_removeChildViewController:v5];

  remoteWallpaperEditorViewController = self->_remoteWallpaperEditorViewController;
  self->_remoteWallpaperEditorViewController = 0;

  [(SBFloatingDockBehaviorAssertion *)self->_wallpaperEditorFloatingDockBehaviorAssertion invalidate];
  wallpaperEditorFloatingDockBehaviorAssertion = self->_wallpaperEditorFloatingDockBehaviorAssertion;
  self->_wallpaperEditorFloatingDockBehaviorAssertion = 0;

  v12 = [(SBHomeScreenController *)self iconManager];
  v9 = [v12 rootFolderController];
  v10 = [v9 folderView];

  [v10 setUsesGlassGroup:0];
  v11 = [(SBHomeScreenController *)self homeScreenViewController];
  [v11 setUsesGlassGroup:1];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHomeScreenController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = [(SBHomeScreenController *)self homeScreenViewController];
  if ([v5 orientation] == 1)
  {
    v6 = @"UIInterfaceOrientationPortrait";
  }

  else if ([v5 orientation] == 4)
  {
    v6 = @"UIInterfaceOrientationLandscapeLeft";
  }

  else if ([v5 orientation] == 3)
  {
    v6 = @"UIInterfaceOrientationLandscapeRight";
  }

  else if ([v5 orientation] == 2)
  {
    v6 = @"UIInterfaceOrientationPortraitUpsideDown";
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 appendObject:v6 withName:@"orientation"];
  v8 = [(SBHomeScreenController *)self iconModel];
  v9 = [v4 appendObject:v8 withName:@"iconModel"];

  v10 = [(SBHomeScreenController *)self _rootFolderController];
  v11 = [v4 appendObject:v10 withName:@"rootFolderController"];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(SBHomeScreenController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (void)initWithWindowScene:iconController:alertItemsController:applicationController:applicationPlaceholderController:assistantController:coverSheetPresentationManager:lockScreenManager:policyAggregator:userInterfaceController:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"windowScene" object:? file:? lineNumber:? description:?];
}

- (void)addFloatingDockControllerObserver:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)removeFloatingDockControllerObserver:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setModel:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 _sceneIdentifier];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "Home Screen is updating icon model for %@", v4, 0xCu);
}

- (void)createModalLibraryControllerForWindowScene:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_setUpLibraryViewControllerForWindowScene:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_setUpLibraryViewControllerForWindowScene:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)iconManager:willOpenFolderController:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __88__SBHomeScreenController_iconManager_folderController_canChangeCurrentPageIndexToIndex___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)iconManager:viewControllerForCustomIcon:element:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)iconManager:viewControllerForCustomIcon:element:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)iconManager:viewControllerForCustomIcon:element:.cold.3()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)iconManager:viewControllerForCustomIcon:element:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v8 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = 138412546;
  v5 = v1;
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&dword_21ED4E000, v0, OS_LOG_TYPE_ERROR, "Did not make a view controller for custom widget element: %@ (%{public}@", &v4, 0x16u);
}

- (void)rootFolderPageStateProvider:didEndTransitionFromState:toState:successfully:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_newTodayViewControllerWithIconManager:iconListModel:rootFolder:location:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)windowForIconDragPreviewsForIconManager:forWindowScene:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBHomeScreenController windowForIconDragPreviewsForIconManager:forWindowScene:]"];
  [v1 handleFailureInFunction:v0 file:@"SBHomeScreenController.m" lineNumber:5236 description:@"this call must be made on the main thread"];
}

+ (void)_getApplicationDataStore:configurationKey:forDataSource:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)_getApplicationDataStore:configurationKey:forDataSource:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)iconManager:(void *)a1 tapFloatingDockStackIconView:.cold.1(void *a1)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v2 = [a1 icon];
  OUTLINED_FUNCTION_0_3();
  [v3 handleFailureInMethod:v2 object:? file:? lineNumber:? description:?];
}

- (void)setWallpaperAnimationDisabled:forReason:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end