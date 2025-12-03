@interface SBHomeScreenController
+ (void)_getApplicationDataStore:(id *)store configurationKey:(id *)key forDataSource:(id)source;
- (BOOL)_controlCenterIsOnTheSameWindowScene:(id)scene;
- (BOOL)_dragSessionContainsAppClipWebClipIcon:(id)icon;
- (BOOL)_isCoplanarHomeScreenEnabled;
- (BOOL)_isFileStackIconSupported;
- (BOOL)_isHostedByCoverSheet;
- (BOOL)_ppt_pushHomeScreenStateWithError:(id *)error;
- (BOOL)_shouldHideAppIconForceTouchInfoForApplication:(id)application;
- (BOOL)_shouldTodayViewController:(id)controller receiveTouch:(id)touch;
- (BOOL)allowsHomeScreenOverlay;
- (BOOL)allowsUninstall;
- (BOOL)appPredictionViewController:(id)controller shouldDisplayBadgeWithBundleIdentifier:(id)identifier;
- (BOOL)areAnyIconViewContextMenusAnimating;
- (BOOL)areAnyIconViewContextMenusShowing;
- (BOOL)canAppPredictionsWidgetAlignWithGrid;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)iconManager:(id)manager allowsBadgingForIcon:(id)icon;
- (BOOL)iconManager:(id)manager allowsBadgingForIconLocation:(id)location;
- (BOOL)iconManager:(id)manager canAddIcon:(id)icon toIconList:(id)list inFolder:(id)folder;
- (BOOL)iconManager:(id)manager canBeginDragForIconView:(id)view;
- (BOOL)iconManager:(id)manager canCustomElementAlignWithGrid:(id)grid;
- (BOOL)iconManager:(id)manager folderController:(id)controller canChangeCurrentPageIndexToIndex:(int64_t)index;
- (BOOL)iconManager:(id)manager iconViewDisplaysCloseBox:(id)box;
- (BOOL)iconManager:(id)manager iconViewDisplaysLabel:(id)label;
- (BOOL)iconManager:(id)manager isCustomElementValid:(id)valid;
- (BOOL)iconManager:(id)manager isEditingAllowedForIconView:(id)view;
- (BOOL)iconManager:(id)manager isIconVisibleForBundleIdentifier:(id)identifier;
- (BOOL)iconManager:(id)manager isPartialEditingAllowedForIconLocation:(id)location;
- (BOOL)iconManager:(id)manager isWidgetValid:(id)valid;
- (BOOL)iconManager:(id)manager requestDeleteFileStackIcon:(id)icon;
- (BOOL)iconManager:(id)manager shouldActivateApplicationShortcutItem:(id)item atIndex:(unint64_t)index forIconView:(id)view;
- (BOOL)iconManager:(id)manager shouldCacheRecentViewController:(id)controller forIdentifier:(id)identifier;
- (BOOL)iconManager:(id)manager shouldGroupSystemApplicationShortcutItemsForIconView:(id)view;
- (BOOL)iconManager:(id)manager shouldPlaceIconOnIgnoredList:(id)list;
- (BOOL)iconManager:(id)manager shouldPreviewOverlapMenuForIconView:(id)view;
- (BOOL)iconManager:(id)manager supportsParallaxForIconView:(id)view;
- (BOOL)iconManagerCanBeginIconDrags:(id)drags;
- (BOOL)iconManagerCanSaveIconState:(id)state;
- (BOOL)iconManagerCanUseSeparateWindowForRotation:(id)rotation;
- (BOOL)iconManagerShouldShowWidgetIntroductionPopoverForDefaultWidgets:(id)widgets;
- (BOOL)iconsSnapToGrid;
- (BOOL)isAnySearchVisibleOrTransitioning;
- (BOOL)isAppLibraryAllowed;
- (BOOL)isAppLibrarySupported;
- (BOOL)isBackdropVisible;
- (BOOL)isEditingAllowedForIconManager:(id)manager;
- (BOOL)isEditingForHomeScreenOverlayController:(id)controller;
- (BOOL)isFileStackIconRemoteContentPresented;
- (BOOL)isFloatingDockVisibleForIconManager:(id)manager;
- (BOOL)isFocusAllowedForIconManager:(id)manager;
- (BOOL)isHideSuggestionSupportedForIconView:(id)view inLocation:(id)location;
- (BOOL)isHideSupportedForIcon:(id)icon inLocation:(id)location;
- (BOOL)isIconContentPossiblyVisibleOverApplicationForIconManager:(id)manager;
- (BOOL)isIconListViewTornDown;
- (BOOL)isMainDisplayLibraryViewVisible;
- (BOOL)isModalAppLibrarySupported;
- (BOOL)isRootFolderContentVisibleForIconManager:(id)manager;
- (BOOL)isShowingHomeScreenOverlay;
- (BOOL)isTodayOverlayPresented;
- (BOOL)isTodayOverlaySpotlightVisible;
- (BOOL)isUninstallSupportedForAnyIcon;
- (BOOL)isUninstallSupportedForIcon:(id)icon;
- (BOOL)isUninstallingSystemAppsRestricted;
- (BOOL)searchPresenterCanPresent:(id)present;
- (BOOL)showsAddWidgetButtonWhileEditingForHomeScreenOverlayController:(id)controller;
- (BOOL)showsDoneButtonWhileEditingForHomeScreenOverlayController:(id)controller;
- (CGRect)iconManager:(id)manager contentBoundingRectForConfigurationOfIconView:(id)view;
- (Class)iconManager:(id)manager iconClassForApplicationWithBundleIdentifier:(id)identifier proposedClass:(Class)class;
- (SBFolderController)_currentFolderController;
- (SBFolderController)_openFolderController;
- (SBHIconImageAppearance)currentIconImageAppearance;
- (SBHIconImageStyleConfiguration)currentIconImageStyleConfiguration;
- (SBHomeScreenController)initWithWindowScene:(id)scene iconController:(id)controller alertItemsController:(id)itemsController applicationController:(id)applicationController applicationPlaceholderController:(id)placeholderController assistantController:(id)assistantController coverSheetPresentationManager:(id)manager lockScreenManager:(id)self0 policyAggregator:(id)self1 userInterfaceController:(id)self2;
- (SBIconController)_iconController;
- (SBRootFolderController)_rootFolderController;
- (SBSHomeScreenIconStyleConfiguration)currentHomeScreenIconStyleConfiguration;
- (SBUIController)userInterfaceController;
- (SBWindowScene)windowScene;
- (UIEdgeInsets)contentOverlayInsetsFromParentIfAvailableForFolderController:(id)controller;
- (UIEdgeInsets)iconManager:(id)manager contentOverlayInsetsFromParentIfAvailableForFolderController:(id)controller;
- (UIEdgeInsets)iconManager:(id)manager statusBarEdgeInsetsForFolderController:(id)controller;
- (UIView)containerView;
- (double)distanceToTopOfSpotlightIconsForIconManager:(id)manager;
- (double)minimumHomeScreenScale;
- (id)_aggregateLoggingAppKeyForIcon:(id)icon;
- (id)_appLibraryListLayoutProviderForWindowScene:(id)scene;
- (id)_configureCategoryMapProviderToUseCategoryMapAtURL:(id)l;
- (id)_createHomeScreenOverlayControllerIfNeeded;
- (id)_createTestFolderWithOverrideIconList:(id)list;
- (id)_currentMainDisplayLayoutState;
- (id)_hideStatusBarForReason:(id)reason animated:(BOOL)animated;
- (id)_homeScreenOverlayControllerIfNeeded;
- (id)_identifierForSearchPresenter;
- (id)_libraryViewControllers;
- (id)_newSearchPillBackgroundView;
- (id)_newTodayViewControllerWithIconManager:(id)manager iconListModel:(id)model rootFolder:(id)folder location:(int64_t)location;
- (id)_ppt_prepareTransientIconModelStoreWithError:(id *)error;
- (id)_setUpLibraryViewControllerForWindowScene:(id)scene;
- (id)additionalIconListLayoutObserversForAppPredictionViewController:(id)controller;
- (id)alertItemsController;
- (id)animator:(id)animator animationSettingsForOperation:(unint64_t)operation childViewController:(id)controller;
- (id)appPredictionViewController:(id)controller badgeValueForApplicationWithBundleIdentifier:(id)identifier;
- (id)appPredictionViewController:(id)controller iconForApplicationWithBundleIdentifier:(id)identifier;
- (id)applicationController;
- (id)applicationPlaceholderController;
- (id)assistantController;
- (id)backgroundViewForSpotlightPresentableViewController:(id)controller;
- (id)coverSheetPresentationManager;
- (id)createFloatingDockControllerForWindowScene:(id)scene;
- (id)createModalLibraryControllerForWindowScene:(id)scene;
- (id)createStatusBarVisibiltyAssertionForWindowScene:(id)scene;
- (id)currentAnimationContainer;
- (id)defaultIconStateForIconManager:(id)manager;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)displayConfigurationForPresenter:(id)presenter;
- (id)fallbackDefaultFirstPageWidgetsForIconManager:(id)manager;
- (id)featureIntroductionItemForWidgetSetupAtLocation:(unint64_t)location;
- (id)homeScreenOverlayController:(id)controller displayLayoutIdentifierForSidebarViewController:(id)viewController;
- (id)iconDragManager;
- (id)iconManager:(id)manager accessibilityTintColorForIconView:(id)view;
- (id)iconManager:(id)manager accessibilityTintColorForScreenRect:(CGRect)rect;
- (id)iconManager:(id)manager applicationIconForReplacingIconWithAppIcon:(id)icon proposedApplicationIcon:(id)applicationIcon;
- (id)iconManager:(id)manager applicationShortcutItemsForIconView:(id)view;
- (id)iconManager:(id)manager applicationShortcutSectionOrderingForIconView:(id)view;
- (id)iconManager:(id)manager bundleIdentifierToLaunchForWidgetURL:(id)l;
- (id)iconManager:(id)manager configurationDataForDataSource:(id)source ofIcon:(id)icon;
- (id)iconManager:(id)manager containerBundleIdentifierForDescriptor:(id)descriptor;
- (id)iconManager:(id)manager containerViewControllerForConfigurationOfIconView:(id)view;
- (id)iconManager:(id)manager containerViewControllerForModalInteractionFromIconView:(id)view;
- (id)iconManager:(id)manager containerViewForConfigurationOfIconView:(id)view;
- (id)iconManager:(id)manager containerViewForModalInteractionFromIconView:(id)view;
- (id)iconManager:(id)manager containerViewForPresentingContextMenuForIconView:(id)view;
- (id)iconManager:(id)manager customInsertionGridPathForIcon:(id)icon inRootFolder:(id)folder;
- (id)iconManager:(id)manager dataSourceForOpenApplicationWindowsContextMenuProvider:(id)provider;
- (id)iconManager:(id)manager defaultAutomaticFavoriteIconIdentifiersWithMaximumCount:(unint64_t)count;
- (id)iconManager:(id)manager dragPreviewForIconView:(id)view;
- (id)iconManager:(id)manager fakeStatusBarForFolderController:(id)controller;
- (id)iconManager:(id)manager floatingDockViewControllerForView:(id)view;
- (id)iconManager:(id)manager floatingDockViewControllerForViewController:(id)controller;
- (id)iconManager:(id)manager homeScreenContentViewForConfigurationOfIconView:(id)view;
- (id)iconManager:(id)manager homeScreenContentViewForModalInteractionFromIconView:(id)view;
- (id)iconManager:(id)manager screenSnapshotProviderForComponentsOfIconView:(id)view;
- (id)iconManager:(id)manager statusBarStyleRequestForFolderController:(id)controller;
- (id)iconManager:(id)manager viewControllerForCustomIcon:(id)icon element:(id)element;
- (id)iconManager:(id)manager wantsToHideStatusBarForFolderController:(id)controller animated:(BOOL)animated;
- (id)iconManager:(id)manager widgetDataSourceForReplacingIconWithWidget:(id)widget proposedWidgetDataSource:(id)source;
- (id)iconManager:(id)manager willAddDefaultFirstPageWidgetsBasedOnPinnedWidgets:(id)widgets suggestionWidgets:(id)suggestionWidgets;
- (id)launchActionsForIconView:(id)view;
- (id)launchActivationSettingsForIconView:(id)view;
- (id)launchURLForIconView:(id)view;
- (id)libraryViewControllerForWindowScene:(id)scene;
- (id)lockScreenManager;
- (id)markIconsOccludedForReason:(id)reason;
- (id)policyAggregator;
- (id)preferredFocusEnvironments;
- (id)rootFolder;
- (id)rootFolderController:(id)controller transitionContextForTransitioningToState:(int64_t)state animated:(BOOL)animated interactive:(BOOL)interactive;
- (id)searchAffordanceViewForSpotlightPresentableViewController:(id)controller;
- (id)searchPresentablesForPresenter:(id)presenter;
- (id)succinctDescription;
- (id)suggestionsWidgetViewController:(id)controller iconForApplicationWithBundleIdentifier:(id)identifier;
- (id)temporaryIntentDataForIconWithIdentifier:(id)identifier widgetUniqueIdentifier:(id)uniqueIdentifier;
- (id)testSetupForIconManagerAddWidgetsToEachPage:(id)page;
- (id)testSetupForIconManagerWidgetScrollPerformanceTest:(id)test;
- (id)testSetupForIconManagerWidgetScrollTest:(id)test;
- (id)testSetupHomeScreenForWidgetScrollPerformanceTest:(id)test;
- (id)transitionContextToShowSpotlight:(BOOL)spotlight fromTodayView:(BOOL)view animated:(BOOL)animated interactive:(BOOL)interactive;
- (id)widgetIntroductionPreviewViewForIconManager:(id)manager;
- (id)willBeginModifyingPresentationProgressForState:(int64_t)state animated:(BOOL)animated needsInitialLayout:(BOOL *)layout;
- (id)windowForIconDragPreviewsForIconManager:(id)manager forWindowScene:(id)scene;
- (int64_t)iconManager:(id)manager closeBoxTypeForIconView:(id)view proposedType:(int64_t)type;
- (int64_t)iconManager:(id)manager draggingStartLocationForIconView:(id)view proposedStartLocation:(int64_t)location;
- (int64_t)iconManager:(id)manager preferredMenuElementOrderForIconView:(id)view;
- (int64_t)interfaceOrientationForIconManager:(id)manager;
- (int64_t)interfaceOrientationForWallpaperController:(id)controller;
- (unint64_t)addWidgetSheetStyleForIconManager:(id)manager;
- (unint64_t)allowedInterfaceOrientationsForIconManager:(id)manager;
- (unint64_t)barSwipeAffordanceView:(id)view systemGestureTypeForType:(int64_t)type;
- (unint64_t)bestListLayoutProviderLayoutOptions;
- (unint64_t)defaultSearchViewPresentationSourceForViewController:(id)controller;
- (unint64_t)iconManager:(id)manager supportedMultitaskingShortcutActionsForIconView:(id)view;
- (unint64_t)maximumListCountForFoldersForIconManager:(id)manager;
- (unint64_t)possibleInterfaceOrientationsForIconManager:(id)manager;
- (unint64_t)supportedMultitaskingShortcutActionsForBundleIdentifier:(id)identifier;
- (void)_backgroundContrastDidChange:(id)change;
- (void)_beginDisablingAllOrientationChangesForReason:(id)reason;
- (void)_closeOpenFolderIfNecessary;
- (void)_colorDropperDismissed:(id)dismissed;
- (void)_colorDropperWillPresent:(id)present;
- (void)_configureBackgroundTapObservation:(BOOL)observation;
- (void)_configureDeweyEachAppHasItsOwnCategory:(unint64_t)category;
- (void)_configureDeweyOneCategoryWithAllApps;
- (void)_configureEditingGestureRecognizers;
- (void)_configureFloatingDockController:(id)controller forWindowScene:(id)scene;
- (void)_configureLibraryWithCategoryLimit:(int64_t)limit;
- (void)_configureNavigationGestureRecognizersIfNeeded;
- (void)_controlCenterDidPresent:(id)present;
- (void)_controlCenterWillDismiss:(id)dismiss;
- (void)_controlCenterWillPresent:(id)present;
- (void)_coverSheetDidPresent:(id)present;
- (void)_coverSheetWillPresent:(id)present;
- (void)_dismissPageManagementIfPresented:(id)presented;
- (void)_endDisablingAllOrientationChangesForReason:(id)reason;
- (void)_enumerateTodayViewControllers:(id)controllers;
- (void)_failCurrentTestWithMessage:(id)message;
- (void)_forceTouchControllerWillPresent:(id)present;
- (void)_handleBackgroundTap:(id)tap;
- (void)_handleEditingGesture:(id)gesture;
- (void)_handleSearchAffordanceTap;
- (void)_iconModelDidChange:(id)change;
- (void)_launchFromIconView:(id)view withActions:(id)actions modifierFlags:(int64_t)flags;
- (void)_launchWidgetIcon:(id)icon fromLocation:(id)location withContext:(id)context;
- (void)_lockScreenUIWillDismiss:(id)dismiss;
- (void)_lockScreenUIWillLock:(id)lock;
- (void)_mainSwitcherCreated:(id)created;
- (void)_makeTodayViewControllers;
- (void)_noteStatusBarHeightChanged:(id)changed;
- (void)_policyAggregatorCapabilitiesDidChange:(id)change;
- (void)_ppt_popHomeScreenState;
- (void)_presentPageManagement:(id)management;
- (void)_rebuildTodayViewControllers;
- (void)_reduceMotionStatusDidChange:(id)change;
- (void)_removeReachabilityEffectViewIfNecessary;
- (void)_resetHomeScreenBackdropView;
- (void)_rootFolderDidChange;
- (void)_runAppIconForceTouchTest:(id)test withOptions:(id)options;
- (void)_runFolderCloseTest;
- (void)_runFolderOpenTest;
- (void)_runFolderTestWithName:(id)name actions:(id)actions;
- (void)_runScrollFolderTest:(int64_t)test;
- (void)_runTest:(id)test afterMovingIconsIntoFolder:(id)folder withFolderOpen:(BOOL)open;
- (void)_setFolderDisplayLayoutElementActive:(BOOL)active;
- (void)_setWidgetEditingDisplayLayoutElementActive:(BOOL)active;
- (void)_setupAppearanceControlling;
- (void)_setupHomeScreenContentBackdropView;
- (void)_setupHomeScreenDimmingWindow;
- (void)_setupOverlayLibraryViewController;
- (void)_showInfoAlertIfNeeded:(BOOL)needed;
- (void)_showsBadgesInAppLibraryDidChange;
- (void)_startSpotlightInteractiveGestureTransactionForGesture:(id)gesture;
- (void)_styleEditorDidDismiss:(id)dismiss;
- (void)_styleEditorWillPresent:(id)present;
- (void)_switchToHomeScreenWallpaperAnimated:(BOOL)animated;
- (void)_teardownDeweyTestConfigurations;
- (void)_unlockAnimationDidFinish:(id)finish;
- (void)_updateRequireWallpaperRasterization;
- (void)_updateVisibleIconsAfterOcclusionChange;
- (void)_willRevealOrHideContentView;
- (void)activateTodayViewWithCompletion:(id)completion;
- (void)addEventObserver:(id)observer;
- (void)addFloatingDockControllerObserver:(id)observer;
- (void)addIconOcclusionReason:(unint64_t)reason updateVisibleIcons:(BOOL)icons;
- (void)addIconStyleObserver:(id)observer;
- (void)addIconToHomeScreen:(id)screen;
- (void)addSmartStacksForWidgetDiscoverabilityAndPrepareWidgetIntroduction;
- (void)alertItemsController:(id)controller willActivateAlertItem:(id)item;
- (void)assistantWillAppear:(id)appear windowScene:(id)scene;
- (void)beginRequiringBackdropViewForReason:(id)reason;
- (void)beginRequiringContentForReason:(id)reason options:(unint64_t)options;
- (void)beginRequiringLiveBackdropViewForReason:(id)reason;
- (void)cancelInProcessAnimations;
- (void)caseAttachedStateDidUpdateWithColor:(id)color;
- (void)closeFileStackIconRemoteContent;
- (void)dealloc;
- (void)dismissAppIconForceTouchControllers:(id)controllers;
- (void)dismissHomeScreenOverlayControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)dismissHomeScreenOverlayUsingTransitionCoordinator:(id)coordinator;
- (void)dismissHomeScreenOverlaysAnimated:(BOOL)animated completion:(id)completion;
- (void)dismissHomeScreenOverlaysForAddingNewIcon;
- (void)dismissLibraryAnimated:(BOOL)animated completion:(id)completion;
- (void)dismissLibraryForIconManager:(id)manager windowScene:(id)scene animated:(BOOL)animated;
- (void)dismissLibraryFromOverlayControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)dismissRemoteWallpaperEditorViewController;
- (void)dismissSearchView;
- (void)dismissTodayOverlayAnimated:(BOOL)animated completion:(id)completion;
- (void)dismissTodayOverlaySpotlightAnimated:(BOOL)animated;
- (void)displayFeatureIntroductionItem:(id)item atLocation:(unint64_t)location;
- (void)displayFeatureIntroductionsAtLocation:(unint64_t)location;
- (void)earlyTerminateAnyContextMenuAnimations;
- (void)endRequiringBackdropViewForReason:(id)reason;
- (void)endRequiringContentForReason:(id)reason;
- (void)endRequiringLiveBackdropViewForReason:(id)reason;
- (void)enumerateTintableViewControllersUsingBlock:(id)block;
- (void)folderController:(id)controller iconListView:(id)view springLoadedInteractionForIconDragDidCompleteOnIconView:(id)iconView;
- (void)getLeadingTopButtonFrame:(CGRect *)frame trailingTopButtonFrame:(CGRect *)buttonFrame;
- (void)handleHomeButtonTap;
- (void)handleNavigationCommand:(id)command withDirection:(int64_t)direction;
- (void)handleSpotlightDismissalFromViewController:(id)controller;
- (void)handleSpotlightPresentationFromViewController:(id)controller;
- (void)handleWillBeginReachabilityAnimation;
- (void)homeGesturePerformedForBarSwipeAffordanceView:(id)view;
- (void)homeScreenBackdropView:(id)view opaquenessDidChange:(BOOL)change;
- (void)homeScreenOverlayController:(id)controller setSuppressesEditingStateForListView:(BOOL)view;
- (void)homeScreenOverlayWantsToEndEditing:(id)editing;
- (void)homeScreenOverlayWantsWidgetEditingViewControllerPresented:(id)presented;
- (void)iconManager:(id)manager dataSource:(id)source ofIcon:(id)icon didUpdateConfigurationData:(id)data;
- (void)iconManager:(id)manager didAddItemsToIconDragWithUniqueIdentifier:(id)identifier numberOfDraggedItems:(unint64_t)items;
- (void)iconManager:(id)manager didCloseFolder:(id)folder;
- (void)iconManager:(id)manager didCreateRootFolderController:(id)controller;
- (void)iconManager:(id)manager didCreateRootViewController:(id)controller;
- (void)iconManager:(id)manager didDismissPageManagementWithLayoutManager:(id)layoutManager context:(id)context;
- (void)iconManager:(id)manager didEndIconDragWithUniqueIdentifier:(id)identifier numberOfDraggedItems:(unint64_t)items;
- (void)iconManager:(id)manager didOpenFolder:(id)folder;
- (void)iconManager:(id)manager didReceiveTapOnLaunchDisabledIconView:(id)view;
- (void)iconManager:(id)manager didSpringLoadIconView:(id)view;
- (void)iconManager:(id)manager displayFeatureIntroductionItemIfUnlocked:(id)unlocked;
- (void)iconManager:(id)manager folderControllerDidEndScrolling:(id)scrolling;
- (void)iconManager:(id)manager folderControllerWillBeginScrolling:(id)scrolling;
- (void)iconManager:(id)manager iconDropSessionDidEnter:(id)enter;
- (void)iconManager:(id)manager iconView:(id)view configurationDidEndWithInteraction:(id)interaction;
- (void)iconManager:(id)manager iconView:(id)view configurationWillBeginWithInteraction:(id)interaction;
- (void)iconManager:(id)manager iconView:(id)view contentDropSessionDidEnter:(id)enter;
- (void)iconManager:(id)manager iconView:(id)view contentDropSessionDidExit:(id)exit;
- (void)iconManager:(id)manager iconView:(id)view willUseContextMenuStyle:(id)style;
- (void)iconManager:(id)manager launchIcon:(id)icon location:(id)location animated:(BOOL)animated completionHandler:(id)handler;
- (void)iconManager:(id)manager launchIconForIconView:(id)view withActions:(id)actions modifierFlags:(int64_t)flags;
- (void)iconManager:(id)manager modalInteractionDidEnd:(id)end;
- (void)iconManager:(id)manager modalInteractionWillBegin:(id)begin;
- (void)iconManager:(id)manager nestingViewController:(id)controller willPerformOperation:(int64_t)operation onViewController:(id)viewController withTransitionCoordinator:(id)coordinator;
- (void)iconManager:(id)manager prepareAddSheetViewController:(id)controller;
- (void)iconManager:(id)manager prepareForPageHidingEducationWithCompletionHandler:(id)handler;
- (void)iconManager:(id)manager rootFolderController:(id)controller didEndOverscrollOnFirstPageWithVelocity:(double)velocity translation:(double)translation;
- (void)iconManager:(id)manager rootFolderController:(id)controller didEndOverscrollOnLastPageWithVelocity:(double)velocity translation:(double)translation;
- (void)iconManager:(id)manager rootFolderController:(id)controller didOverscrollOnFirstPageByAmount:(double)amount;
- (void)iconManager:(id)manager rootFolderController:(id)controller didOverscrollOnLastPageByAmount:(double)amount;
- (void)iconManager:(id)manager rootFolderController:(id)controller willUseTransitionContext:(id)context toTransitionToState:(int64_t)state;
- (void)iconManager:(id)manager statusBarInsetsDidChange:(UIEdgeInsets)change;
- (void)iconManager:(id)manager tapFloatingDockStackIconView:(id)view;
- (void)iconManager:(id)manager wantsLaunchForWidgetURL:(id)l;
- (void)iconManager:(id)manager wantsUninstallForIcon:(id)icon location:(id)location;
- (void)iconManager:(id)manager willBeginIconDragWithUniqueIdentifier:(id)identifier numberOfDraggedItems:(unint64_t)items;
- (void)iconManager:(id)manager willCloseFolder:(id)folder;
- (void)iconManager:(id)manager willCloseFolderController:(id)controller;
- (void)iconManager:(id)manager willDestroyRootFolderController:(id)controller;
- (void)iconManager:(id)manager willDestroyRootViewController:(id)controller;
- (void)iconManager:(id)manager willDismissPageManagementUsingAnimator:(id)animator context:(id)context;
- (void)iconManager:(id)manager willOpenFolder:(id)folder;
- (void)iconManager:(id)manager willOpenFolderController:(id)controller;
- (void)iconManager:(id)manager willPrepareIconViewForLaunch:(id)launch;
- (void)iconManager:(id)manager willPresentPageManagementWithLayoutManager:(id)layoutManager animator:(id)animator context:(id)context;
- (void)iconManager:(id)manager willRemoveFakeStatusBar:(id)bar forFolderController:(id)controller;
- (void)iconManager:(id)manager willRemoveViewControllerForIdentifier:(id)identifier;
- (void)iconManager:(id)manager willUseIconImageCache:(id)cache;
- (void)iconManager:(id)manager willUseRootFolderControllerConfiguration:(id)configuration;
- (void)iconManagerDidAddOrRemoveWidgetIcon:(id)icon;
- (void)iconManagerDidDismissWidgetEditing:(id)editing;
- (void)iconManagerDidFinishInstallForIcon:(id)icon;
- (void)iconManagerDidNoteIconStateChangedExternally:(id)externally;
- (void)iconManagerDidSaveIconState:(id)state;
- (void)iconManagerEditingDidChange:(id)change;
- (void)iconManagerFolderAnimatingDidChange:(id)change;
- (void)iconManagerIconDraggingDidChange:(id)change;
- (void)iconManagerListLayoutProviderDidChange:(id)change;
- (void)iconManagerPreferredProminentPosterColor:(id)color handler:(id)handler;
- (void)iconManagerToggleHomeScreenWallpaperDimming:(id)dimming;
- (void)iconManagerWantsHomeScreenWallpaperEditorViewControllerPresented:(id)presented;
- (void)iconManagerWantsIconSizeToggled:(id)toggled;
- (void)iconManagerWillAnimateWidgetInsertion:(id)insertion;
- (void)iconManagerWillPresentWidgetEditing:(id)editing;
- (void)iconModel:(id)model backupRestoringStatusDidChange:(BOOL)change;
- (void)iconModel:(id)model wantsToRevealAnyApplicationFromIdentifiers:(id)identifiers;
- (void)iconModelDidImportIconState:(id)state;
- (void)iconModelInstalledAppsDidChange:(id)change;
- (void)iconStyleCoordinatorDidUpdate:(id)update;
- (void)informIconStyleObserversOfStyleChange;
- (void)invalidate;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context;
- (void)libraryViewController:(id)controller didDismissSearchController:(id)searchController;
- (void)libraryViewController:(id)controller willDismissFolderController:(id)folderController;
- (void)libraryViewController:(id)controller willDismissSearchController:(id)searchController;
- (void)libraryViewController:(id)controller willPresentFolderController:(id)folderController;
- (void)libraryViewController:(id)controller willPresentSearchController:(id)searchController;
- (void)libraryViewControllerDidDismiss:(id)dismiss;
- (void)libraryViewControllerRequestsDismissal:(id)dismissal;
- (void)libraryViewControllerWillPresent:(id)present;
- (void)modalRemoteViewController:(id)controller didDismissWithResponse:(id)response;
- (void)modalRemoteViewController:(id)controller willDismissWithResponse:(id)response;
- (void)noteTransientOverlayPresented;
- (void)noteViewCovered;
- (void)notifyFloatingDockControllerObserversDidRegister:(id)register;
- (void)overlayController:(id)controller didChangePresentationProgress:(double)progress newPresentationProgress:(double)presentationProgress fromLeading:(BOOL)leading;
- (void)overlayController:(id)controller visibilityDidChange:(BOOL)change;
- (void)overlayControllerDidBeginChangingPresentationProgress:(id)progress;
- (void)performAfterContextMenuAnimationsHaveCompleted:(id)completed;
- (void)popToCurrentRootIconListWhenPossible;
- (void)presentLibraryCategoryPodFromOverlayControllerForCategoryIdentifier:(id)identifier animated:(BOOL)animated completion:(id)completion;
- (void)presentLibraryForIconManager:(id)manager windowScene:(id)scene animated:(BOOL)animated;
- (void)presentLibraryFromOverlayControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)presentTodayOverlayForIconManager:(id)manager;
- (void)proactiveHomeScreenSuggestionProvider:(id)provider willUseTemporaryIntent:(id)intent forIconWithIdentifier:(id)identifier widgetUniqueIdentifier:(id)uniqueIdentifier;
- (void)publisher:(id)publisher didUpdateLayout:(id)layout withTransition:(id)transition;
- (void)removeEventObserver:(id)observer;
- (void)removeFloatingDockControllerObserver:(id)observer;
- (void)removeHomeScreenTraitOverridesForViewController:(id)controller;
- (void)removeIconOcclusionReason:(unint64_t)reason updateVisibleIcons:(BOOL)icons;
- (void)removeIconsOccludedAssertion:(id)assertion;
- (void)restoreContentAndUnscatterIconsAnimated:(BOOL)animated afterDelay:(double)delay withCompletion:(id)completion;
- (void)restoreContentWithOptions:(unint64_t)options;
- (void)rootFolderController:(id)controller transitionDidFinish:(id)finish;
- (void)rootFolderController:(id)controller transitionWillBegin:(id)begin;
- (void)rootFolderPageStateProvider:(id)provider didContinueTransitionToState:(int64_t)state progress:(double)progress;
- (void)rootFolderPageStateProvider:(id)provider didEndTransitionFromState:(int64_t)state toState:(int64_t)toState successfully:(BOOL)successfully;
- (void)rootFolderPageStateProvider:(id)provider willBeginTransitionToState:(int64_t)state animated:(BOOL)animated interactive:(BOOL)interactive;
- (void)runWidgetDiscoverabilityTest;
- (void)searchBarDidFocus;
- (void)searchGesture:(id)gesture changedPercentComplete:(double)complete;
- (void)searchGesture:(id)gesture endedGesture:(BOOL)endedGesture;
- (void)searchGesture:(id)gesture startedShowing:(BOOL)showing;
- (void)searchPresenterDidDismissSearch:(id)search;
- (void)searchPresenterDidPresentSearch:(id)search;
- (void)searchPresenterWillDismissSearch:(id)search animated:(BOOL)animated;
- (void)searchPresenterWillPresentSearch:(id)search animated:(BOOL)animated;
- (void)setCurrentHomeScreenIconStyleConfiguration:(id)configuration;
- (void)setCurrentHomeScreenIconStyleConfiguration:(id)configuration wallpaperDimmed:(BOOL)dimmed;
- (void)setHomeScreenAlpha:(double)alpha behaviorMode:(int64_t)mode completion:(id)completion;
- (void)setHomeScreenBackdropBlurMaterialRecipeName:(id)name behaviorMode:(int64_t)mode completion:(id)completion;
- (void)setHomeScreenDimmingAlpha:(double)alpha settings:(id)settings behaviorMode:(int64_t)mode completion:(id)completion;
- (void)setHomeScreenScale:(double)scale behaviorMode:(int64_t)mode completion:(id)completion;
- (void)setLegibilitySettings:(id)settings;
- (void)setModel:(id)model;
- (void)setTemporaryIntent:(id)intent forIconWithIdentifier:(id)identifier widgetUniqueIdentifier:(id)uniqueIdentifier;
- (void)setWallpaperAnimationDisabled:(BOOL)disabled forReason:(id)reason;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)spotlightPresentableViewControllerShouldDismiss:(id)dismiss;
- (void)tearDownIconListAndBar;
- (void)todayViewControllerDidAppear:(id)appear;
- (void)todayViewControllerDidDisappear:(id)disappear;
- (void)todayViewControllerWillPresentSpotlight:(id)spotlight;
- (void)todayViewDidAppear:(id)appear;
- (void)todayViewWantsToEndEditing:(id)editing;
- (void)updateDefaultFirstPageWidgetDescriptors:(id)descriptors withSizeClass:(id)class andGridCellInfoOptions:(unint64_t)options;
- (void)updateHomeScreenTraitOverridesForTraitOverrides:(id)overrides;
- (void)updateHomeScreenTraitOverridesForViewController:(id)controller;
- (void)updateHomeScreenTraitOverridesForWindowScene:(id)scene;
- (void)updateNumberOfRowsWithDuration:(double)duration;
- (void)updatePresentationProgress:(double)progress withOffset:(double)offset velocity:(double)velocity presentationState:(int64_t)state;
- (void)windowSceneDidDisconnect:(id)disconnect;
- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences;
@end

@implementation SBHomeScreenController

- (BOOL)areAnyIconViewContextMenusShowing
{
  mEMORY[0x277D66210] = [MEMORY[0x277D66210] sharedInstance];
  areAnyIconViewContextMenusShowing = [mEMORY[0x277D66210] areAnyIconViewContextMenusShowing];

  return areAnyIconViewContextMenusShowing;
}

- (void)_updateVisibleIconsAfterOcclusionChange
{
  iconOcclusionReasons = [(SBHomeScreenController *)self iconOcclusionReasons];
  v5 = (iconOcclusionReasons & 0x12) != 0;
  if ((iconOcclusionReasons & 0x12) != 0)
  {
    v6 = 2;
  }

  else
  {
    v6 = iconOcclusionReasons != 0;
  }

  iconManager = [(SBHomeScreenController *)self iconManager];
  [iconManager setContentVisibility:v6];
  homeScreenOverlayController = [(SBHomeScreenController *)self homeScreenOverlayController];
  [homeScreenOverlayController setContentVisibility:v6];
  homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
  iconEffectView = [homeScreenViewController iconEffectView];
  [iconEffectView setContentVisibility:v6];

  v10 = NSStringFromSelector(a2);
  [(SBHomeScreenController *)self setWallpaperAnimationDisabled:v5 forReason:v10];
}

- (id)_libraryViewControllers
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(SBHomeScreenController *)self isModalAppLibrarySupported])
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    windowSceneManager = [SBApp windowSceneManager];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    connectedWindowScenes = [windowSceneManager connectedWindowScenes];
    v6 = [connectedWindowScenes countByEnumeratingWithState:&v13 objects:v18 count:16];
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
            objc_enumerationMutation(connectedWindowScenes);
          }

          modalLibraryController = [*(*(&v13 + 1) + 8 * i) modalLibraryController];
          libraryViewController = [modalLibraryController libraryViewController];

          if (libraryViewController)
          {
            [v3 addObject:libraryViewController];
          }
        }

        v7 = [connectedWindowScenes countByEnumeratingWithState:&v13 objects:v18 count:16];
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
  _iconController = [(SBHomeScreenController *)self _iconController];
  isAppLibrarySupported = [_iconController isAppLibrarySupported];

  return isAppLibrarySupported;
}

- (SBIconController)_iconController
{
  WeakRetained = objc_loadWeakRetained(&self->_iconController);

  return WeakRetained;
}

- (BOOL)isTodayOverlaySpotlightVisible
{
  v3 = objc_opt_class();
  todayViewController = [(SBHomeScreenController *)self todayViewController];
  v5 = SBSafeCast(v3, todayViewController);

  LOBYTE(todayViewController) = [v5 isSpotlightVisible];
  return todayViewController;
}

- (BOOL)isModalAppLibrarySupported
{
  isAppLibrarySupported = [(SBHomeScreenController *)self isAppLibrarySupported];
  if (isAppLibrarySupported)
  {

    LOBYTE(isAppLibrarySupported) = +[SBFloatingDockController isFloatingDockSupported];
  }

  return isAppLibrarySupported;
}

- (SBSHomeScreenIconStyleConfiguration)currentHomeScreenIconStyleConfiguration
{
  currentIconImageStyleConfiguration = [(SBHomeScreenController *)self currentIconImageStyleConfiguration];
  sb_homeScreenIconStyleConfiguration = [currentIconImageStyleConfiguration sb_homeScreenIconStyleConfiguration];

  return sb_homeScreenIconStyleConfiguration;
}

- (SBHIconImageStyleConfiguration)currentIconImageStyleConfiguration
{
  currentStyleConfiguration = [(SBWallpaperIconStyleCoordinator *)self->_iconStyleCoordinator currentStyleConfiguration];
  v3 = [MEMORY[0x277D661D8] styleConfigurationWithHomeScreenConfiguration:currentStyleConfiguration];

  return v3;
}

- (BOOL)isIconListViewTornDown
{
  homeScreenScalingView = [(SBHomeScreenController *)self homeScreenScalingView];
  isHidden = [homeScreenScalingView isHidden];

  return isHidden;
}

- (void)_updateRequireWallpaperRasterization
{
  isBackdropVisible = [(SBHomeScreenController *)self isBackdropVisible];
  wallpaperRasterizationAssertion = self->_wallpaperRasterizationAssertion;
  if (isBackdropVisible)
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
  window = [(SBHomeScreenController *)self window];
  [window _removeAllRetargetableAnimations:1];

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

  isOpaque = [(SBHomeScreenBackdropViewBase *)self->_homeScreenBackdropView isOpaque];
  if ((v3 & 1) != 0 || isOpaque)
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

    homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
    [homeScreenViewController setIconContentHidden:1];
    windowScene = [(SBHomeScreenController *)self windowScene];
    isMainDisplayWindowScene = [windowScene isMainDisplayWindowScene];

    if (isMainDisplayWindowScene)
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
  windowScene = [(SBHomeScreenController *)self windowScene];
  switcherController = [windowScene switcherController];

  if (switcherController)
  {
    [switcherController minimumHomeScreenScale];
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
  iconManager = [(SBHomeScreenController *)self iconManager];
  rootFolderController = [iconManager rootFolderController];

  return rootFolderController;
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
    _createHomeScreenOverlayControllerIfNeeded = 0;
  }

  else
  {
    _createHomeScreenOverlayControllerIfNeeded = [(SBHomeScreenController *)self _createHomeScreenOverlayControllerIfNeeded];
  }

  return _createHomeScreenOverlayControllerIfNeeded;
}

- (BOOL)_isCoplanarHomeScreenEnabled
{
  if (__sb__runningInSpringBoard())
  {
    return !SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1;
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v2 = [currentDevice userInterfaceIdiom] == 0;
  }

  return v2;
}

- (id)policyAggregator
{
  override_policyAggregator = self->_override_policyAggregator;
  if (override_policyAggregator)
  {
    policyAggregator = override_policyAggregator;
  }

  else
  {
    windowScene = [(SBHomeScreenController *)self windowScene];
    sceneManager = [windowScene sceneManager];
    policyAggregator = [sceneManager policyAggregator];
  }

  return policyAggregator;
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
  iconManager = [(SBHomeScreenController *)self iconManager];
  iconToReveal = [iconManager iconToReveal];
  if (iconToReveal && [iconManager hasOpenFolder])
  {
    [iconManager popToCurrentRootIconList];
  }
}

- (void)_willRevealOrHideContentView
{
  iconManager = [(SBHomeScreenController *)self iconManager];
  [iconManager cancelAllFolderScrolling];
}

- (SBFolderController)_openFolderController
{
  iconManager = [(SBHomeScreenController *)self iconManager];
  openedFolderController = [iconManager openedFolderController];

  return openedFolderController;
}

- (SBFolderController)_currentFolderController
{
  _openFolderController = [(SBHomeScreenController *)self _openFolderController];
  v4 = _openFolderController;
  if (_openFolderController)
  {
    _rootFolderController = _openFolderController;
  }

  else
  {
    _rootFolderController = [(SBHomeScreenController *)self _rootFolderController];
  }

  v6 = _rootFolderController;

  return v6;
}

- (id)_createTestFolderWithOverrideIconList:(id)list
{
  v42 = *MEMORY[0x277D85DE8];
  listCopy = list;
  iconManager = [(SBHomeScreenController *)self iconManager];
  rootFolder = [iconManager rootFolder];
  allIcons = [rootFolder allIcons];

  array = [MEMORY[0x277CBEB18] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = allIcons;
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
        if ((!listCopy || [listCopy containsObject:*(*(&v36 + 1) + 8 * i)]) && objc_msgSend(v14, "isApplicationIcon"))
        {
          [array addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v11);
  }

  if ([array count])
  {
    iconManager2 = [(SBHomeScreenController *)self iconManager];
    iconModel = [iconManager2 iconModel];

    selfCopy = self;
    iconManager3 = [(SBHomeScreenController *)self iconManager];
    rootFolder2 = [iconManager3 rootFolder];

    v30 = iconModel;
    v19 = [iconModel makeFolderWithDisplayName:@"TEST FOLDER"];
    v20 = [objc_alloc(MEMORY[0x277D660E8]) initWithFolder:v19];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v21 = array;
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

          [rootFolder2 removeIcon:*(*(&v32 + 1) + 8 * j) options:0];
        }

        v23 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v23);
    }

    v26 = [v19 addIcons:v21];
    v27 = [rootFolder2 addIcon:v20];

    self = selfCopy;
  }

  else
  {
    v19 = 0;
  }

  iconManager4 = [(SBHomeScreenController *)self iconManager];
  [iconManager4 layoutIconListsWithAnimationType:-1 forceRelayout:1];

  return v19;
}

- (BOOL)_ppt_pushHomeScreenStateWithError:(id *)error
{
  v4 = [(SBHomeScreenController *)self _ppt_prepareTransientIconModelStoreWithError:error];
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
    iconManager = [(SBHomeScreenController *)self iconManager];
    iconModel = [iconManager iconModel];
    [iconModel setStore:v4];

    iconManager2 = [(SBHomeScreenController *)self iconManager];
    [iconManager2 relayout];
  }

  return v4 != 0;
}

- (void)_ppt_popHomeScreenState
{
  if (__ppt_homeScreenStateStack)
  {
    iconManager = [(SBHomeScreenController *)self iconManager];
    iconModel = [iconManager iconModel];
    store = [iconModel store];

    [__ppt_homeScreenStateStack removeLastObject];
    lastObject = [__ppt_homeScreenStateStack lastObject];
    v6 = lastObject;
    if (lastObject)
    {
      v7 = lastObject;
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

    iconManager2 = [(SBHomeScreenController *)self iconManager];
    iconModel2 = [iconManager2 iconModel];
    [iconModel2 setStore:v8];

    iconManager3 = [(SBHomeScreenController *)self iconManager];
    [iconManager3 relayout];

    v13 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      v14 = store;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (v15)
    {
      currentIconStateURL = [v15 currentIconStateURL];
      uRLByDeletingLastPathComponent = [currentIconStateURL URLByDeletingLastPathComponent];

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager removeItemAtURL:uRLByDeletingLastPathComponent error:0];
    }
  }
}

- (id)_ppt_prepareTransientIconModelStoreWithError:(id *)error
{
  iconManager = [(SBHomeScreenController *)self iconManager];
  iconModel = [iconManager iconModel];

  [iconModel saveIconStateIfNeeded];
  store = [iconModel store];
  if (!store)
  {
    v11 = 0;
    goto LABEL_19;
  }

  v7 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v9 = store;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = 0;
  if (isKindOfClass)
  {
    currentIconStateURL = [store currentIconStateURL];
    desiredIconStateURL = [store desiredIconStateURL];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    v16 = MEMORY[0x277CBEBC0];
    v17 = NSTemporaryDirectory();
    v18 = [v16 fileURLWithPath:v17];
    v37 = uUIDString;
    v19 = [v18 URLByAppendingPathComponent:uUIDString];

    v20 = currentIconStateURL;
    lastPathComponent = [currentIconStateURL lastPathComponent];
    v22 = [v19 URLByAppendingPathComponent:lastPathComponent];

    v39 = desiredIconStateURL;
    lastPathComponent2 = [desiredIconStateURL lastPathComponent];
    v38 = [v19 URLByAppendingPathComponent:lastPathComponent2];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v42 = 0;
    [defaultManager createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:&v42];
    v25 = v42;
    v26 = v25;
    v36 = v20;
    if (v25)
    {
      if (error)
      {
        v27 = v25;
        v28 = 0;
        v29 = 0;
        v11 = 0;
        *error = v26;
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
      [defaultManager copyItemAtURL:v20 toURL:v22 error:&v41];
      v30 = v41;
      if (!v30)
      {
        path = [v39 path];
        v35 = [defaultManager fileExistsAtPath:path];

        if (!v35 || (v40 = 0, [defaultManager copyItemAtURL:v39 toURL:v38 error:&v40], (v29 = v40) == 0))
        {
          v32 = v38;
          v11 = [objc_alloc(MEMORY[0x277D663E0]) initWithIconStateURL:v22 desiredIconStateURL:v38];
          v28 = 0;
          v29 = 0;
          goto LABEL_17;
        }

        if (error)
        {
          v29 = v29;
          v28 = 0;
          v11 = 0;
          *error = v29;
          goto LABEL_16;
        }

        v28 = 0;
        goto LABEL_15;
      }

      v28 = v30;
      if (error)
      {
        v31 = v30;
        v29 = 0;
        v11 = 0;
        *error = v28;
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
  _iconController = [(SBHomeScreenController *)self _iconController];
  [_iconController runWidgetDiscoverabilityTest];
}

- (void)_runTest:(id)test afterMovingIconsIntoFolder:(id)folder withFolderOpen:(BOOL)open
{
  openCopy = open;
  testCopy = test;
  folderCopy = folder;
  if ([(SBHomeScreenController *)self _ppt_pushHomeScreenStateWithError:0])
  {
    v11 = [folderCopy mutableCopy];
    v12 = [(SBHomeScreenController *)self _createTestFolderWithOverrideIconList:v11];

    if (v12)
    {
      icon = [v12 icon];
      if (openCopy)
      {
        iconManager = [(SBHomeScreenController *)self iconManager];
        [iconManager scrollToIconListContainingIcon:icon animate:0];
      }

      v15 = dispatch_time(0, 1000000000);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __86__SBHomeScreenController_Testing___runTest_afterMovingIconsIntoFolder_withFolderOpen___block_invoke;
      v18[3] = &unk_2783AAC68;
      v22 = openCopy;
      v19 = icon;
      selfCopy = self;
      v21 = testCopy;
      v16 = icon;
      dispatch_after(v15, MEMORY[0x277D85CD0], v18);
    }

    else
    {
      [(SBHomeScreenController *)self _failCurrentTestWithMessage:@"Unable to create test folder"];
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBHomeScreenController+Testing.m" lineNumber:210 description:@"Unable to swap out icon model store; cannot run test."];
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
    _createTestFolder = [(SBHomeScreenController *)self _createTestFolder];
    v5 = _createTestFolder;
    if (_createTestFolder)
    {
      icon = [_createTestFolder icon];
      iconManager = [(SBHomeScreenController *)self iconManager];
      [iconManager scrollToIconListContainingIcon:icon animate:0];

      v8 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__SBHomeScreenController_Testing___runFolderOpenTest__block_invoke;
      block[3] = &unk_2783A92D8;
      v12 = icon;
      selfCopy = self;
      v9 = icon;
      dispatch_after(v8, MEMORY[0x277D85CD0], block);
    }

    else
    {
      [(SBHomeScreenController *)self _failCurrentTestWithMessage:@"Unable to create test folder"];
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBHomeScreenController+Testing.m" lineNumber:254 description:@"Unable to swap out icon model store; cannot run test."];
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
    _createTestFolder = [(SBHomeScreenController *)self _createTestFolder];
    v5 = _createTestFolder;
    if (_createTestFolder)
    {
      icon = [_createTestFolder icon];
      iconManager = [(SBHomeScreenController *)self iconManager];
      [iconManager scrollToIconListContainingIcon:icon animate:0];

      iconManager2 = [(SBHomeScreenController *)self iconManager];
      v9 = *MEMORY[0x277D666D0];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __54__SBHomeScreenController_Testing___runFolderCloseTest__block_invoke;
      v11[3] = &unk_2783A9398;
      v11[4] = self;
      [iconManager2 openFolderIcon:icon location:v9 animated:0 withCompletion:v11];
    }

    else
    {
      [(SBHomeScreenController *)self _failCurrentTestWithMessage:@"Unable to create test folder"];
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBHomeScreenController+Testing.m" lineNumber:290 description:@"Unable to swap out icon model store; cannot run test."];
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

- (void)_runFolderTestWithName:(id)name actions:(id)actions
{
  nameCopy = name;
  actionsCopy = actions;
  if ([(SBHomeScreenController *)self _ppt_pushHomeScreenStateWithError:0])
  {
    _createTestFolder = [(SBHomeScreenController *)self _createTestFolder];
    v10 = _createTestFolder;
    if (_createTestFolder)
    {
      icon = [_createTestFolder icon];
      iconManager = [(SBHomeScreenController *)self iconManager];
      [iconManager scrollToIconListContainingIcon:icon animate:0];

      [icon launchFromLocation:*MEMORY[0x277D666D0] context:0];
      v13 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__SBHomeScreenController_Testing___runFolderTestWithName_actions___block_invoke;
      block[3] = &unk_2783B1320;
      v16 = nameCopy;
      selfCopy = self;
      v18 = actionsCopy;
      dispatch_after(v13, MEMORY[0x277D85CD0], block);
    }

    else
    {
      [*MEMORY[0x277D76620] failedTest:nameCopy withFailure:@"Unable to create test folder"];
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBHomeScreenController+Testing.m" lineNumber:316 description:{@"Unable to swap out icon model store; cannot run test %@", nameCopy}];
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

- (void)_runScrollFolderTest:(int64_t)test
{
  if ([(SBHomeScreenController *)self _ppt_pushHomeScreenStateWithError:0])
  {
    _createTestFolder = [(SBHomeScreenController *)self _createTestFolder];
    v7 = _createTestFolder;
    if (_createTestFolder)
    {
      icon = [_createTestFolder icon];
      iconManager = [(SBHomeScreenController *)self iconManager];
      [iconManager scrollToIconListContainingIcon:icon animate:0];

      [icon launchFromLocation:*MEMORY[0x277D666D0] context:0];
      v10 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__SBHomeScreenController_Testing___runScrollFolderTest___block_invoke;
      block[3] = &unk_2783A8BC8;
      block[4] = self;
      block[5] = test;
      dispatch_after(v10, MEMORY[0x277D85CD0], block);
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBHomeScreenController+Testing.m" lineNumber:342 description:@"Unable to swap out icon model store; cannot run test."];
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

- (void)_runAppIconForceTouchTest:(id)test withOptions:(id)options
{
  testCopy = test;
  optionsCopy = options;
  v8 = [optionsCopy objectForKeyedSubscript:@"testApplication"];
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
    iconManager = [(SBHomeScreenController *)self iconManager];
    rootFolder = [iconManager rootFolder];

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __73__SBHomeScreenController_Testing___runAppIconForceTouchTest_withOptions___block_invoke;
    v35[3] = &unk_2783BA9F8;
    v36 = v8;
    v38 = &v46;
    v39 = &v40;
    v11 = rootFolder;
    v37 = v11;
    [v11 enumerateAllIconsUsingBlock:v35];
  }

  if (v47[5] && ((-[SBHomeScreenController iconManager](self, "iconManager"), v12 = objc_claimAutoreleasedReturnValue(), [v12 iconViewForIcon:v47[5] location:v41[5]], v13 = objc_claimAutoreleasedReturnValue(), v12, v13) || (-[SBHomeScreenController iconManager](self, "iconManager"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "iconViewForIcon:location:", v47[5], *MEMORY[0x277D66688]), v13 = objc_claimAutoreleasedReturnValue(), v14, v13)))
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __73__SBHomeScreenController_Testing___runAppIconForceTouchTest_withOptions___block_invoke_2;
    v32[3] = &unk_2783A92D8;
    v15 = testCopy;
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
    iconManager2 = [(SBHomeScreenController *)self iconManager];
    [iconManager2 scrollToIconListContainingIcon:v47[5] animate:0];

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
    [*MEMORY[0x277D76620] failedTest:testCopy];
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

- (void)_failCurrentTestWithMessage:(id)message
{
  v3 = *MEMORY[0x277D76620];
  messageCopy = message;
  v6 = +[SBApplicationTestingManager sharedInstance];
  currentTestName = [v6 currentTestName];
  [v3 failedTest:currentTestName withFailure:messageCopy];
}

- (void)setHomeScreenAlpha:(double)alpha behaviorMode:(int64_t)mode completion:(id)completion
{
  completionCopy = completion;
  homeScreenScalingView = [(SBHomeScreenController *)self homeScreenScalingView];
  if ([(NSMutableSet *)self->_contentRequiringReasons count])
  {
    if (alpha >= 0.011)
    {
      alphaCopy = alpha;
    }

    else
    {
      alphaCopy = 0.011;
    }

    v11 = MEMORY[0x277D75D18];
    animationSettings = [(SBAppSwitcherSettings *)self->_switcherSettings animationSettings];
    homeScreenOpacitySettings = [animationSettings homeScreenOpacitySettings];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __92__SBHomeScreenController_AppearanceControlling__setHomeScreenAlpha_behaviorMode_completion___block_invoke;
    v19[3] = &unk_2783A8BC8;
    v20 = homeScreenScalingView;
    v21 = alphaCopy;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __92__SBHomeScreenController_AppearanceControlling__setHomeScreenAlpha_behaviorMode_completion___block_invoke_2;
    v14[3] = &unk_2783BC2B8;
    v17 = alphaCopy;
    alphaCopy2 = alpha;
    v15 = v20;
    v16 = completionCopy;
    [v11 sb_animateWithSettings:homeScreenOpacitySettings mode:mode animations:v19 completion:v14];
  }

  else
  {
    [homeScreenScalingView setAlpha:alpha];
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 1, 0);
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

- (void)setHomeScreenScale:(double)scale behaviorMode:(int64_t)mode completion:(id)completion
{
  completionCopy = completion;
  homeScreenScalingView = [(SBHomeScreenController *)self homeScreenScalingView];
  if ([(NSMutableSet *)self->_contentRequiringReasons count])
  {
    v10 = MEMORY[0x277D75D18];
    animationSettings = [(SBAppSwitcherSettings *)self->_switcherSettings animationSettings];
    homeScreenScaleSettings = [animationSettings homeScreenScaleSettings];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __92__SBHomeScreenController_AppearanceControlling__setHomeScreenScale_behaviorMode_completion___block_invoke;
    v13[3] = &unk_2783A8BC8;
    v14 = homeScreenScalingView;
    scaleCopy = scale;
    [v10 sb_animateWithSettings:homeScreenScaleSettings mode:mode animations:v13 completion:completionCopy];
  }

  else
  {
    CGAffineTransformMakeScale(&v16, scale, scale);
    [homeScreenScalingView setTransform:&v16];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }
  }
}

uint64_t __92__SBHomeScreenController_AppearanceControlling__setHomeScreenScale_behaviorMode_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  CGAffineTransformMakeScale(&v3, *(a1 + 40), *(a1 + 40));
  return [v1 setTransform:&v3];
}

- (void)setHomeScreenDimmingAlpha:(double)alpha settings:(id)settings behaviorMode:(int64_t)mode completion:(id)completion
{
  settingsCopy = settings;
  completionCopy = completion;
  rootViewController = [(SBWindow *)self->_homeScreenDimmingWindow rootViewController];
  view = [rootViewController view];

  [view alpha];
  if (v14 == alpha)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }
  }

  else
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __108__SBHomeScreenController_AppearanceControlling__setHomeScreenDimmingAlpha_settings_behaviorMode_completion___block_invoke;
    v23[3] = &unk_2783B9188;
    v23[4] = self;
    v15 = view;
    v24 = v15;
    v16 = completionCopy;
    v25 = v16;
    v17 = MEMORY[0x223D6F7F0](v23);
    [(SBWindow *)self->_homeScreenDimmingWindow setHidden:0];
    v18 = [(NSMutableSet *)self->_contentRequiringReasons count];
    if (mode != 5 || v18)
    {
      v19 = MEMORY[0x277D75D18];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __108__SBHomeScreenController_AppearanceControlling__setHomeScreenDimmingAlpha_settings_behaviorMode_completion___block_invoke_2;
      v20[3] = &unk_2783A8BC8;
      v21 = v15;
      alphaCopy = alpha;
      [v19 sb_animateWithSettings:settingsCopy mode:mode animations:v20 completion:v17];
    }

    else
    {
      [v15 setAlpha:alpha];
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

- (void)setHomeScreenBackdropBlurMaterialRecipeName:(id)name behaviorMode:(int64_t)mode completion:(id)completion
{
  nameCopy = name;
  v9 = MEMORY[0x277D75D18];
  switcherSettings = self->_switcherSettings;
  completionCopy = completion;
  animationSettings = [(SBAppSwitcherSettings *)switcherSettings animationSettings];
  homeScreenScaleSettings = [animationSettings homeScreenScaleSettings];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __117__SBHomeScreenController_AppearanceControlling__setHomeScreenBackdropBlurMaterialRecipeName_behaviorMode_completion___block_invoke;
  v15[3] = &unk_2783A92D8;
  v15[4] = self;
  v16 = nameCopy;
  v14 = nameCopy;
  [v9 sb_animateWithSettings:homeScreenScaleSettings mode:mode animations:v15 completion:completionCopy];
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

- (void)restoreContentWithOptions:(unint64_t)options
{
  v38 = *MEMORY[0x277D85DE8];
  windowScene = [(SBHomeScreenController *)self windowScene];
  v6 = +[SBLockScreenManager sharedInstance];
  isUILocked = [v6 isUILocked];
  isContinuityDisplayWindowScene = [windowScene isContinuityDisplayWindowScene];
  v9 = SBLogUIController();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSBUIControllerRequireContentOptions(options);
    *buf = 138412290;
    v37 = v10;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Attempting restoreContentWithOptions:(%@)", buf, 0xCu);
  }

  if ((options & 2) == 0)
  {
    lockOutController = [SBApp lockOutController];
    if ([lockOutController isLockedOut])
    {

      if ((isUILocked & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      lockScreenEnvironment = [v6 lockScreenEnvironment];
      callController = [lockScreenEnvironment callController];
      isMakingEmergencyCall = [callController isMakingEmergencyCall];

      if (!(isUILocked & 1 | ((isMakingEmergencyCall & 1) == 0)))
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

        restartManager = SBLogUIController();
        if (os_log_type_enabled(restartManager, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v14 = "abort restoreContentWithOptions: Force lock case";
LABEL_15:
          _os_log_impl(&dword_21ED4E000, restartManager, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
          goto LABEL_43;
        }

        goto LABEL_43;
      }
    }
  }

  if (isContinuityDisplayWindowScene & 1 | ((isUILocked & 1) == 0))
  {
    restartManager = [SBApp restartManager];
    if ([restartManager isPendingExit])
    {
      v18 = SBLogUIController();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "abort restoreContentWithOptions: restartManager isPendingExit", buf, 2u);
      }

      goto LABEL_42;
    }

    homeScreenScalingView = [(SBHomeScreenController *)self homeScreenScalingView];
    v18 = homeScreenScalingView;
    if (homeScreenScalingView && ([homeScreenScalingView isHidden]& 1) == 0)
    {
      homeScreenViewController = SBLogUIController();
      if (os_log_type_enabled(homeScreenViewController, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v23 = "abort restoreContentWithOptions: _iconsView is already visible";
        goto LABEL_40;
      }
    }

    else
    {
      isOpaque = [(SBHomeScreenBackdropViewBase *)self->_homeScreenBackdropView isOpaque];
      homeScreenViewController = SBLogUIController();
      v22 = os_log_type_enabled(homeScreenViewController, OS_LOG_TYPE_DEFAULT);
      if (!isOpaque)
      {
        if (v22)
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, homeScreenViewController, OS_LOG_TYPE_DEFAULT, "Restoring home screen", buf, 2u);
        }

        isIconListViewTornDown = [(SBHomeScreenController *)self isIconListViewTornDown];
        [(SBHomeScreenController *)self _willRevealOrHideContentView];
        homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
        v25 = SBLogUIController();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_DEFAULT, "Setting _iconsView to visible", buf, 2u);
        }

        [homeScreenViewController setIconContentHidden:0];
        window = [(SBHomeScreenController *)self window];
        traitsParticipant = [window traitsParticipant];
        [traitsParticipant setNeedsUpdatePreferencesWithReason:@"restore icons" animate:0];

        [(SBHomeScreenController *)self _closeOpenFolderIfNecessary];
        [(SBHomeScreenController *)self updateNumberOfRowsWithDuration:0.0];
        if ((options & 1) == 0)
        {
          statusBarManager = [windowScene statusBarManager];
          [statusBarManager updateHomeScreenStatusBarLegibility];
        }

        if ([windowScene isMainDisplayWindowScene])
        {
          [(SBHomeScreenController *)self _switchToHomeScreenWallpaperAnimated:1];
          v29 = +[SBWallpaperController sharedInstance];
          [v29 activateOrientationSource:2];
        }

        if (isIconListViewTornDown)
        {
          window2 = [(SBHomeScreenController *)self window];
          if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleHomeScreen") & 1) == 0)
          {
            [window2 _updateInterfaceOrientationFromActiveInterfaceOrientationIfRotationEnabled:0];
          }

          [window2 layoutBelowIfNeeded];
        }

        iconManager = [(SBHomeScreenController *)self iconManager];
        v32 = iconManager;
        if ((options & 4) != 0)
        {
          rootFolderController = [iconManager rootFolderController];
          [rootFolderController presentSpotlightAnimated:0 completionHandler:&__block_literal_global_250];
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
        _os_log_impl(&dword_21ED4E000, homeScreenViewController, OS_LOG_TYPE_DEFAULT, v23, buf, 2u);
      }
    }

LABEL_41:

LABEL_42:
    goto LABEL_43;
  }

  restartManager = SBLogUIController();
  if (os_log_type_enabled(restartManager, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v14 = "abort restoreContentWithOptions: UI is locked";
    goto LABEL_15;
  }

LABEL_43:
}

- (void)restoreContentAndUnscatterIconsAnimated:(BOOL)animated afterDelay:(double)delay withCompletion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  [(SBHomeScreenController *)self restoreContent];
  iconManager = [(SBHomeScreenController *)self iconManager];
  [iconManager unscatterAnimated:animatedCopy afterDelay:completionCopy withCompletion:delay];
}

- (void)beginRequiringContentForReason:(id)reason options:(unint64_t)options
{
  v15 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if (!reasonCopy)
  {
    [SBHomeScreenController(AppearanceControlling) beginRequiringContentForReason:a2 options:self];
  }

  v8 = SBLogUIController();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = reasonCopy;
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
  [(NSMutableSet *)self->_contentRequiringReasons addObject:reasonCopy];
  if (!v12 || [(SBHomeScreenController *)self isIconListViewTornDown])
  {
    [(SBHomeScreenController *)self restoreContentWithOptions:options];
  }
}

- (void)endRequiringContentForReason:(id)reason
{
  v12 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if (!reasonCopy)
  {
    [(SBHomeScreenController(AppearanceControlling) *)a2 endRequiringContentForReason:?];
  }

  v6 = SBLogUIController();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "End requiring home screen content for reason '%{public}@'", &v10, 0xCu);
  }

  v7 = [(NSMutableSet *)self->_contentRequiringReasons count];
  [(NSMutableSet *)self->_contentRequiringReasons removeObject:reasonCopy];
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

- (void)beginRequiringBackdropViewForReason:(id)reason
{
  [(SBHomeScreenBackdropViewBase *)self->_homeScreenBackdropView beginRequiringBackdropViewForReason:reason];

  [(SBHomeScreenController *)self _updateRequireWallpaperRasterization];
}

- (void)beginRequiringLiveBackdropViewForReason:(id)reason
{
  [(SBHomeScreenBackdropViewBase *)self->_homeScreenBackdropView beginRequiringLiveBackdropViewForReason:reason];

  [(SBHomeScreenController *)self _updateRequireWallpaperRasterization];
}

- (void)endRequiringBackdropViewForReason:(id)reason
{
  [(SBHomeScreenBackdropViewBase *)self->_homeScreenBackdropView endRequiringBackdropViewForReason:reason];
  [(SBHomeScreenController *)self _removeReachabilityEffectViewIfNecessary];

  [(SBHomeScreenController *)self _updateRequireWallpaperRasterization];
}

- (void)endRequiringLiveBackdropViewForReason:(id)reason
{
  [(SBHomeScreenBackdropViewBase *)self->_homeScreenBackdropView endRequiringLiveBackdropViewForReason:reason];
  [(SBHomeScreenController *)self _removeReachabilityEffectViewIfNecessary];

  [(SBHomeScreenController *)self _updateRequireWallpaperRasterization];
}

- (void)_switchToHomeScreenWallpaperAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v14 = +[SBWallpaperController sharedInstance];
  if ([v14 activeVariant] != 1)
  {
    rootSettings = [MEMORY[0x277D02C20] rootSettings];
    v5 = rootSettings;
    if (animatedCopy)
    {
      v6 = MEMORY[0x277CF0D38];
      unlockToPhoneWallpaperOutSettings = [rootSettings unlockToPhoneWallpaperOutSettings];
      bSAnimationSettings = [unlockToPhoneWallpaperOutSettings BSAnimationSettings];
      v9 = [v6 factoryWithSettings:bSAnimationSettings];

      v10 = MEMORY[0x277CF0D38];
      unlockToPhoneWallpaperInSettings = [v5 unlockToPhoneWallpaperInSettings];
      bSAnimationSettings2 = [unlockToPhoneWallpaperInSettings BSAnimationSettings];
      v13 = [v10 factoryWithSettings:bSAnimationSettings2];
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
      homeScreenContentView = [(SBHomeScreenController *)self homeScreenContentView];
      v4 = [[SBWallpaperEffectView alloc] initWithWallpaperVariant:1];
      reachabilityWallpaperEffectView = self->_reachabilityWallpaperEffectView;
      self->_reachabilityWallpaperEffectView = v4;

      [(PBUIWallpaperEffectViewBase *)self->_reachabilityWallpaperEffectView setForcesOpaque:1];
      [(PBUIWallpaperEffectViewBase *)self->_reachabilityWallpaperEffectView setFullscreen:1];
      [(PBUIWallpaperEffectViewBase *)self->_reachabilityWallpaperEffectView setStyle:0];
      [homeScreenContentView addSubview:self->_reachabilityWallpaperEffectView];
      [homeScreenContentView sendSubviewToBack:self->_reachabilityWallpaperEffectView];
      v6 = MEMORY[0x277D75D18];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __85__SBHomeScreenController_AppearanceControlling__handleWillBeginReachabilityAnimation__block_invoke;
      v8[3] = &unk_2783A92D8;
      v8[4] = self;
      v9 = homeScreenContentView;
      v7 = homeScreenContentView;
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
  windowScene = [(SBHomeScreenController *)self windowScene];
  v3 = [SBHomeScreenWindow alloc];
  homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
  v5 = [(SBWindow *)v3 initWithWindowScene:windowScene rootViewController:homeScreenViewController role:@"SBTraitsParticipantRoleHomeScreen" debugName:@"HomeScreen"];
  homeScreenWindow = self->_homeScreenWindow;
  self->_homeScreenWindow = v5;

  [(SBHomeScreenWindow *)self->_homeScreenWindow setOpaque:0];
  [(SBHomeScreenWindow *)self->_homeScreenWindow setWindowLevel:*MEMORY[0x277D772B0] + -2.0];
  [(SBWindow *)self->_homeScreenWindow makeKeyAndVisible];
  statusBarManager = [windowScene statusBarManager];
  layoutManager = [statusBarManager layoutManager];
  [layoutManager setOrientationWindow:self->_homeScreenWindow forStatusBarLayoutLayer:0];
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
  view = [v10 view];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [view setBackgroundColor:blackColor];

  view2 = [v10 view];
  [view2 setAlpha:0.0];

  v6 = [SBWindow alloc];
  windowScene = [(SBHomeScreenController *)self windowScene];
  v8 = [(SBWindow *)v6 initWithWindowScene:windowScene rootViewController:v10 role:@"SBTraitsParticipantRoleHomeScreenDimming" debugName:@"HomeScreenDimming"];
  homeScreenDimmingWindow = self->_homeScreenDimmingWindow;
  self->_homeScreenDimmingWindow = v8;

  [(SBWindow *)self->_homeScreenDimmingWindow setWindowLevel:*MEMORY[0x277D772B0] + -2.0 + 1.0];
  [(SBWindow *)self->_homeScreenDimmingWindow bs_setHitTestingDisabled:1];
}

- (void)_setupHomeScreenContentBackdropView
{
  homeScreenContentView = [(SBHomeScreenController *)self homeScreenContentView];
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    v4 = [SBHomeScreenBackdropDarkTintView alloc];
    [homeScreenContentView bounds];
    v5 = [(SBHomeScreenBackdropDarkTintView *)v4 initWithFrame:?];
    homeScreenBackdropView = self->_homeScreenBackdropView;
    self->_homeScreenBackdropView = v5;
  }

  else
  {
    iconManager = [(SBHomeScreenController *)self iconManager];
    openedFolder = [iconManager openedFolder];
    v9 = openedFolder != 0;

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __92__SBHomeScreenController_AppearanceControllingInternal___setupHomeScreenContentBackdropView__block_invoke;
    v14[3] = &__block_descriptor_33_e8_d16__0d8l;
    v15 = v9;
    v10 = MEMORY[0x223D6F7F0](v14);
    v11 = [SBHomeScreenBackdropView alloc];
    [homeScreenContentView bounds];
    v12 = [(SBHomeScreenBackdropView *)v11 initWithFrame:0 materialRecipe:v10 scaleAdjustment:?];
    v13 = self->_homeScreenBackdropView;
    self->_homeScreenBackdropView = v12;
  }

  [(SBHomeScreenBackdropViewBase *)self->_homeScreenBackdropView setAutoresizingMask:18];
  [(SBHomeScreenBackdropViewBase *)self->_homeScreenBackdropView bs_setHitTestingDisabled:1];
  [(SBHomeScreenBackdropViewBase *)self->_homeScreenBackdropView setDelegate:self];
  [homeScreenContentView addSubview:self->_homeScreenBackdropView];
}

- (void)_resetHomeScreenBackdropView
{
  [(SBHomeScreenBackdropViewBase *)self->_homeScreenBackdropView removeFromSuperview];

  [(SBHomeScreenController *)self _setupHomeScreenContentBackdropView];
}

- (void)homeScreenBackdropView:(id)view opaquenessDidChange:(BOOL)change
{
  changeCopy = change;
  viewCopy = view;
  if (changeCopy)
  {
    iconManager = [(SBHomeScreenController *)self iconManager];
    self->_isShowingSpotlightUnderOpaqueBackdrop = [iconManager isShowingPullDownSearch];

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

- (SBHomeScreenController)initWithWindowScene:(id)scene iconController:(id)controller alertItemsController:(id)itemsController applicationController:(id)applicationController applicationPlaceholderController:(id)placeholderController assistantController:(id)assistantController coverSheetPresentationManager:(id)manager lockScreenManager:(id)self0 policyAggregator:(id)self1 userInterfaceController:(id)self2
{
  sceneCopy = scene;
  obj = controller;
  itemsControllerCopy = itemsController;
  itemsControllerCopy2 = itemsController;
  applicationControllerCopy = applicationController;
  placeholderControllerCopy = placeholderController;
  assistantControllerCopy = assistantController;
  managerCopy = manager;
  screenManagerCopy = screenManager;
  aggregatorCopy = aggregator;
  interfaceControllerCopy = interfaceController;
  v110.receiver = self;
  v110.super_class = SBHomeScreenController;
  v19 = [(SBHomeScreenController *)&v110 init];
  if (v19)
  {
    v87 = itemsControllerCopy2;
    if (!sceneCopy)
    {
      [SBHomeScreenController initWithWindowScene:iconController:alertItemsController:applicationController:applicationPlaceholderController:assistantController:coverSheetPresentationManager:lockScreenManager:policyAggregator:userInterfaceController:];
    }

    objc_storeWeak(&v19->_windowScene, sceneCopy);
    objc_storeWeak(&v19->_iconController, obj);
    objc_storeStrong(&v19->_override_alertItemsController, itemsControllerCopy);
    objc_storeStrong(&v19->_override_applicationController, applicationController);
    objc_storeStrong(&v19->_override_applicationPlaceholderController, placeholderController);
    objc_storeStrong(&v19->_override_assistantController, assistantController);
    objc_storeStrong(&v19->_override_coverSheetPresentationManager, manager);
    objc_storeStrong(&v19->_override_lockScreenManager, screenManager);
    objc_storeStrong(&v19->_override_policyAggregator, aggregator);
    objc_storeStrong(&v19->_override_userInterfaceController, interfaceController);
    v20 = objc_opt_class();
    iconModel = [obj iconModel];
    v22 = SBSafeCast(v20, iconModel);

    v90 = v22;
    [(SBHomeScreenController *)v19 setModel:v22];
    [obj addIconControllerObserver:v19];
    coverSheetPresentationManager = [(SBHomeScreenController *)v19 coverSheetPresentationManager];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v19 selector:sel__unlockAnimationDidFinish_ name:@"SBLockScreenManagerUnlockAnimationDidFinish" object:0];
    [defaultCenter addObserver:v19 selector:sel__lockScreenUIWillLock_ name:@"SBLockScreenUIWillLockNotification" object:0];
    [defaultCenter addObserver:v19 selector:sel__lockScreenUIWillLock_ name:@"SBLockScreenUIRelockedNotification" object:0];
    [defaultCenter addObserver:v19 selector:sel__lockScreenUIWillDismiss_ name:@"SBLockScreenUIWillDismissNotification" object:0];
    if (obj)
    {
      [defaultCenter addObserver:v19 selector:sel__iconModelDidChange_ name:SBIconControllerIconModelDidChangeNotification object:obj];
    }

    [defaultCenter addObserver:v19 selector:sel__controlCenterWillPresent_ name:@"SBControlCenterWillPresentNotification" object:0];
    [defaultCenter addObserver:v19 selector:sel__controlCenterDidPresent_ name:@"SBControlCenterDidPresentNotification" object:0];
    [defaultCenter addObserver:v19 selector:sel__controlCenterWillDismiss_ name:@"SBControlCenterWillDismissNotification" object:0];
    [defaultCenter addObserver:v19 selector:sel__coverSheetWillPresent_ name:@"SBCoverSheetWillPresentNotification" object:coverSheetPresentationManager];
    [defaultCenter addObserver:v19 selector:sel__coverSheetDidPresent_ name:@"SBCoverSheetDidPresentNotification" object:coverSheetPresentationManager];
    [defaultCenter addObserver:v19 selector:sel__forceTouchControllerWillPresent_ name:*MEMORY[0x277D66720] object:0];
    [defaultCenter addObserver:v19 selector:sel__mainSwitcherCreated_ name:@"SBMainSwitcherSwitcherSharedInstanceCreatedNotification" object:0];
    [defaultCenter addObserver:v19 selector:sel__reduceMotionStatusDidChange_ name:*MEMORY[0x277D764C0] object:0];
    [defaultCenter addObserver:v19 selector:sel__deviceUILocked name:@"SBLockScreenUIDidLockNotification" object:0];
    [defaultCenter addObserver:v19 selector:sel__policyAggregatorCapabilitiesDidChange_ name:@"SBPolicyAggregatorCapabilitiesChangedNotification" object:0];
    [defaultCenter addObserver:v19 selector:sel__noteStatusBarHeightChanged_ name:*MEMORY[0x277D76718] object:0];
    [defaultCenter addObserver:v19 selector:sel__styleEditorWillPresent_ name:*MEMORY[0x277D66588] object:0];
    [defaultCenter addObserver:v19 selector:sel__styleEditorDidDismiss_ name:*MEMORY[0x277D66558] object:0];
    [defaultCenter addObserver:v19 selector:sel__colorDropperWillPresent_ name:*MEMORY[0x277D66580] object:0];
    [defaultCenter addObserver:v19 selector:sel__colorDropperDismissed_ name:*MEMORY[0x277D66550] object:0];
    v89 = coverSheetPresentationManager;
    if (obj && [sceneCopy isMainDisplayWindowScene])
    {
      iconManager = [obj iconManager];
      iconManager = v19->_iconManager;
      v19->_iconManager = iconManager;
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
    homeScreenDefaults = [v31 homeScreenDefaults];
    v33 = [(SBWallpaperIconStyleCoordinator *)v29 initWithWallpaperController:v30 homeScreenDefaults:homeScreenDefaults];
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
    v37 = [[SBHomeScreenViewController alloc] initWithWindowScene:sceneCopy contextProvider:v19 iconManager:v36 appearanceController:v19];
    homeScreenViewController = v19->_homeScreenViewController;
    v19->_homeScreenViewController = v37;

    iconContentView = [(SBHomeScreenViewController *)v19->_homeScreenViewController iconContentView];
    homeScreenScalingView = v19->_homeScreenScalingView;
    v19->_homeScreenScalingView = iconContentView;

    view = [(SBHomeScreenViewController *)v19->_homeScreenViewController view];
    homeScreenContentView = v19->_homeScreenContentView;
    v19->_homeScreenContentView = view;

    [(SBHIconManager *)v19->_iconManager configureFeedbackView:v19->_homeScreenContentView];
    [(SBHomeScreenController *)v19 updateHomeScreenTraitOverridesForWindowScene:sceneCopy];
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
      todayViewController = [(SBHomeScreenController *)v19 todayViewController];
      [(SBHIconManager *)v43 setOverlayTodayViewController:todayViewController];
    }

    v45 = v19->_iconManager;
    coverSheetTodayViewController = [(SBHomeScreenController *)v19 coverSheetTodayViewController];
    [(SBHIconManager *)v45 setOverlayCoverSheetTodayViewController:coverSheetTodayViewController];

    [(SBHomeScreenController *)v19 _setupAppearanceControlling];
    alertItemsController = [(SBHomeScreenController *)v19 alertItemsController];
    [alertItemsController addObserver:v19];

    assistantController = [(SBHomeScreenController *)v19 assistantController];
    [assistantController addObserver:v19];

    displayLayoutPublisher = [sceneCopy displayLayoutPublisher];
    [displayLayoutPublisher addObserver:v19];

    layoutStateTransitionCoordinator = [sceneCopy layoutStateTransitionCoordinator];
    [layoutStateTransitionCoordinator addObserver:v19];

    _iconController = [(SBHomeScreenController *)v19 _iconController];
    proactiveSuggestionProvider = [_iconController proactiveSuggestionProvider];
    [proactiveSuggestionProvider addObserver:v19];

    v53 = [[SBTipsHomeScreenUsageObserver alloc] initWithIconManager:v19->_iconManager];
    tipsUsageObserver = v19->_tipsUsageObserver;
    v19->_tipsUsageObserver = v53;

    rootSettings = [MEMORY[0x277D661A0] rootSettings];
    rootFolderSettings = [rootSettings rootFolderSettings];
    rootFolderSettings = v19->_rootFolderSettings;
    v19->_rootFolderSettings = rootFolderSettings;

    [(SBHRootFolderSettings *)v19->_rootFolderSettings addKeyObserver:v19];
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    deviceOrientationUpdateDeferralAssertionsByReason = v19->_deviceOrientationUpdateDeferralAssertionsByReason;
    v19->_deviceOrientationUpdateDeferralAssertionsByReason = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    activeInterfaceOrientationChangeDeferralAssertionsByReason = v19->_activeInterfaceOrientationChangeDeferralAssertionsByReason;
    v19->_activeInterfaceOrientationChangeDeferralAssertionsByReason = strongToStrongObjectsMapTable2;

    v62 = +[SBDefaults localDefaults];
    homeScreenDefaults2 = [v62 homeScreenDefaults];

    v64 = +[SBDefaults localDefaults];
    floatingDockDefaults = [v64 floatingDockDefaults];

    rootSettings2 = [MEMORY[0x277D661A0] rootSettings];
    objc_initWeak(&location, v19);
    v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"shouldUseLargeDefaultSizedIcons"];
    v67 = MEMORY[0x277D85CD0];
    v68 = MEMORY[0x277D85CD0];
    v107[0] = MEMORY[0x277D85DD0];
    v107[1] = 3221225472;
    v107[2] = __246__SBHomeScreenController_initWithWindowScene_iconController_alertItemsController_applicationController_applicationPlaceholderController_assistantController_coverSheetPresentationManager_lockScreenManager_policyAggregator_userInterfaceController___block_invoke;
    v107[3] = &unk_2783A8C68;
    objc_copyWeak(&v108, &location);
    v69 = [homeScreenDefaults2 observeDefault:v66 onQueue:v67 withBlock:v107];

    v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"recentsEnabled"];
    v105[0] = MEMORY[0x277D85DD0];
    v105[1] = 3221225472;
    v105[2] = __246__SBHomeScreenController_initWithWindowScene_iconController_alertItemsController_applicationController_applicationPlaceholderController_assistantController_coverSheetPresentationManager_lockScreenManager_policyAggregator_userInterfaceController___block_invoke_2;
    v105[3] = &unk_2783A8C68;
    objc_copyWeak(&v106, &location);
    v71 = [floatingDockDefaults observeDefault:v70 onQueue:MEMORY[0x277D85CD0] withBlock:v105];

    [rootSettings2 addKeyObserver:v19];
    v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:"showsBadgesInAppLibrary"];
    v103[0] = MEMORY[0x277D85DD0];
    v103[1] = 3221225472;
    v103[2] = __246__SBHomeScreenController_initWithWindowScene_iconController_alertItemsController_applicationController_applicationPlaceholderController_assistantController_coverSheetPresentationManager_lockScreenManager_policyAggregator_userInterfaceController___block_invoke_3;
    v103[3] = &unk_2783A8C68;
    objc_copyWeak(&v104, &location);
    v73 = [homeScreenDefaults2 observeDefault:v72 onQueue:MEMORY[0x277D85CD0] withBlock:v103];

    v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:"showsHomeScreenSearchAffordance"];
    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 3221225472;
    v101[2] = __246__SBHomeScreenController_initWithWindowScene_iconController_alertItemsController_applicationController_applicationPlaceholderController_assistantController_coverSheetPresentationManager_lockScreenManager_policyAggregator_userInterfaceController___block_invoke_4;
    v101[3] = &unk_2783A8C68;
    objc_copyWeak(&v102, &location);
    v75 = [homeScreenDefaults2 observeDefault:v74 onQueue:MEMORY[0x277D85CD0] withBlock:v101];

    rootSettings3 = [MEMORY[0x277D661A0] rootSettings];
    iconEditingSettings = [rootSettings3 iconEditingSettings];
    iconEditingSettings = v19->_iconEditingSettings;
    v19->_iconEditingSettings = iconEditingSettings;

    [(SBHIconEditingSettings *)v19->_iconEditingSettings addKeyObserver:v19];
    [(SBHomeScreenController *)v19 _configureEditingGestureRecognizers];
    [(SBHomeScreenController *)v19 _configureNavigationGestureRecognizersIfNeeded];
    rootSettings4 = [MEMORY[0x277D661A0] rootSettings];
    widgetSettings = [rootSettings4 widgetSettings];
    widgetSettings = v19->_widgetSettings;
    v19->_widgetSettings = widgetSettings;

    v82 = +[SBDraggingSystemManager sharedInstance];
    v83 = +[SBReachabilityManager sharedInstance];
    [v83 addObserver:v19];

    if ([sceneCopy isMainDisplayWindowScene])
    {
      v84 = +[SBWallpaperController sharedInstance];
      [v84 setOrientationProvider:v19 forSource:2];
      [v84 activateOrientationSource:2];
    }

    statusBarManager = [sceneCopy statusBarManager];
    [statusBarManager addHomeScreenStatusBarLegibilityObserver:v19];

    objc_destroyWeak(&v102);
    objc_destroyWeak(&v104);
    objc_destroyWeak(&v106);
    objc_destroyWeak(&v108);
    objc_destroyWeak(&location);

    itemsControllerCopy2 = v87;
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

- (void)addEventObserver:(id)observer
{
  observerCopy = observer;
  eventObservers = self->_eventObservers;
  v8 = observerCopy;
  if (!eventObservers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_eventObservers;
    self->_eventObservers = weakObjectsHashTable;

    [(SBHomeScreenController *)self _configureBackgroundTapObservation:1];
    observerCopy = v8;
    eventObservers = self->_eventObservers;
  }

  [(NSHashTable *)eventObservers addObject:observerCopy];
}

- (void)removeEventObserver:(id)observer
{
  [(NSHashTable *)self->_eventObservers removeObject:observer];
  if (![(NSHashTable *)self->_eventObservers count])
  {
    eventObservers = self->_eventObservers;
    self->_eventObservers = 0;

    [(SBHomeScreenController *)self _configureBackgroundTapObservation:0];
  }
}

- (void)_configureBackgroundTapObservation:(BOOL)observation
{
  observationCopy = observation;
  iconManager = [(SBHomeScreenController *)self iconManager];
  rootFolderController = [iconManager rootFolderController];

  folderView = [rootFolderController folderView];
  scrollView = [folderView scrollView];

  homeScreenBackgroundTapGestureRecognizer = self->_homeScreenBackgroundTapGestureRecognizer;
  if (observationCopy)
  {
    if (!homeScreenBackgroundTapGestureRecognizer)
    {
      v9 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleBackgroundTap_];
      v10 = self->_homeScreenBackgroundTapGestureRecognizer;
      self->_homeScreenBackgroundTapGestureRecognizer = v9;

      [(UITapGestureRecognizer *)self->_homeScreenBackgroundTapGestureRecognizer setDelegate:self];
      [scrollView addGestureRecognizer:self->_homeScreenBackgroundTapGestureRecognizer];
    }
  }

  else if (homeScreenBackgroundTapGestureRecognizer)
  {
    [scrollView removeGestureRecognizer:?];
    v11 = self->_homeScreenBackgroundTapGestureRecognizer;
    self->_homeScreenBackgroundTapGestureRecognizer = 0;
  }
}

- (void)_handleBackgroundTap:(id)tap
{
  v32 = *MEMORY[0x277D85DE8];
  tapCopy = tap;
  iconManager = [(SBHomeScreenController *)self iconManager];
  rootFolderController = [iconManager rootFolderController];
  currentIconListView = [rootFolderController currentIconListView];

  [tapCopy locationInView:currentIconListView];
  v9 = v8;
  v11 = v10;
  v12 = [currentIconListView iconAtPoint:0 index:?];
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

  v13 = [currentIconListView iconViewForIcon:v12];
  v14 = [currentIconListView dragHitRegionForPoint:v12 icon:{v9, v11}];
  if (!v13 || (v15 = v14, ![v12 isApplicationIcon]) || (v15 & 1) == 0 && (objc_msgSend(v13, "isCursorActive") & 1) == 0)
  {
    customIconImageViewController = [v13 customIconImageViewController];
    view = [customIconImageViewController view];

    if (view)
    {
      [tapCopy locationInView:view];
      v19 = v18;
      v21 = v20;
      [view bounds];
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
    overlayLibraryViewController = [(SBHomeScreenController *)self overlayLibraryViewController];
    if (!overlayLibraryViewController)
    {
      isAppLibrarySupported = [(SBHomeScreenController *)self isAppLibrarySupported];
      overlayLibraryViewController = 0;
      if (isAppLibrarySupported)
      {
        iconManager = [(SBHomeScreenController *)self iconManager];

        if (!iconManager)
        {
          return;
        }

        windowScene = [(SBHomeScreenController *)self windowScene];
        v7 = [(SBHomeScreenController *)self _setUpLibraryViewControllerForWindowScene:windowScene];

        [(SBHomeScreenController *)self setOverlayLibraryViewController:v7];
        if (![(SBHomeScreenController *)self _isCoplanarHomeScreenEnabled])
        {
          [(SBHIconManager *)self->_iconManager setOverlayLibraryViewController:v7];
        }

        overlayLibraryViewController = v7;
      }
    }
  }
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)invalidate
{
  v24 = *MEMORY[0x277D85DE8];
  self->_invalidated = 1;
  iconManager = [(SBHomeScreenController *)self iconManager];
  spotlightViewController = [(SBHomeScreenController *)self spotlightViewController];
  if ([iconManager isShowingPullDownOrLeadingCustomViewSearch])
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __36__SBHomeScreenController_invalidate__block_invoke;
    v21[3] = &unk_2783A8C18;
    v22 = spotlightViewController;
    [iconManager dismissSpotlightAnimated:0 completionHandler:v21];
  }

  else
  {
    [spotlightViewController invalidate];
  }

  rootViewController = [iconManager rootViewController];
  [(SBHomeScreenController *)self iconManager:iconManager willDestroyRootViewController:rootViewController];

  windowScene = [(SBHomeScreenController *)self windowScene];
  if (windowScene)
  {
    [(NSMapTable *)self->_windowSceneToMedusaDragWindowContext removeObjectForKey:windowScene];
    iconDragManager = [(SBHomeScreenController *)self iconDragManager];
    [iconDragManager windowSceneDidDisconnect:windowScene];

    displayLayoutPublisher = [windowScene displayLayoutPublisher];
    [displayLayoutPublisher removeObserver:self];

    layoutStateTransitionCoordinator = [windowScene layoutStateTransitionCoordinator];
    [layoutStateTransitionCoordinator removeObserver:self];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(SBHIconEditingSettings *)self->_iconEditingSettings removeKeyObserver:self];
  [(BSInvalidatable *)self->_duckWallpaperDimmingAssertion invalidate];
  statusBarManager = [windowScene statusBarManager];
  [statusBarManager removeHomeScreenStatusBarLegibilityObserver:self];

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
  floatingDockBehaviorAssertions = [(SBHomeScreenController *)self floatingDockBehaviorAssertions];
  v13 = [floatingDockBehaviorAssertions countByEnumeratingWithState:&v17 objects:v23 count:16];
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
          objc_enumerationMutation(floatingDockBehaviorAssertions);
        }

        [*(*(&v17 + 1) + 8 * v16++) invalidate];
      }

      while (v14 != v16);
      v14 = [floatingDockBehaviorAssertions countByEnumeratingWithState:&v17 objects:v23 count:16];
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
  iconManager = [(SBHomeScreenController *)self iconManager];
  iconDragManager = [iconManager iconDragManager];

  return iconDragManager;
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
    alertItemsController = [WeakRetained alertItemsController];
    v6 = alertItemsController;
    if (alertItemsController)
    {
      v7 = alertItemsController;
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
  windowScene = [(SBHomeScreenController *)self windowScene];
  layoutStateProvider = [windowScene layoutStateProvider];
  layoutState = [layoutStateProvider layoutState];

  return layoutState;
}

- (void)iconModelDidImportIconState:(id)state
{
  iconManager = [(SBHomeScreenController *)self iconManager];
  [iconManager relayout];
}

- (void)iconModelInstalledAppsDidChange:(id)change
{
  v15 = *MEMORY[0x277D85DE8];
  _libraryViewControllers = [(SBHomeScreenController *)self _libraryViewControllers];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [_libraryViewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(_libraryViewControllers);
        }

        [*(*(&v10 + 1) + 8 * v8++) noteInstalledApplicationsDidChange];
      }

      while (v6 != v8);
      v6 = [_libraryViewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  iconManager = [(SBHomeScreenController *)self iconManager];
  [iconManager checkForInvalidCustomElements];
}

- (void)iconModel:(id)model backupRestoringStatusDidChange:(BOOL)change
{
  if (!change)
  {
    iconManager = [(SBHomeScreenController *)self iconManager];
    [iconManager checkForInvalidWidgets];

    iconManager2 = [(SBHomeScreenController *)self iconManager];
    [iconManager2 checkForInvalidCustomElements];
  }
}

- (void)iconModel:(id)model wantsToRevealAnyApplicationFromIdentifiers:(id)identifiers
{
  v39 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  identifiersCopy = identifiers;
  iconManager = [(SBHomeScreenController *)self iconManager];
  anyObject = [identifiersCopy anyObject];
  if (anyObject)
  {
    v10 = [modelCopy applicationIconForBundleIdentifier:anyObject];
  }

  else
  {
    v10 = 0;
  }

  _currentMainDisplayLayoutState = [(SBHomeScreenController *)self _currentMainDisplayLayoutState];
  unlockedEnvironmentMode = [_currentMainDisplayLayoutState unlockedEnvironmentMode];

  if ([identifiersCopy count] < 2)
  {
    if (v10)
    {
      if (unlockedEnvironmentMode == 3)
      {
        v22 = 4;
      }

      else
      {
        v22 = 6;
      }

      [iconManager addNewIconToDesignatedLocation:v10 options:v22];
    }
  }

  else if (unlockedEnvironmentMode != 3 && v10)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = identifiersCopy;
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
          v17 = [modelCopy applicationIconsForBundleIdentifier:v16];
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

                if ([iconManager isDisplayingIcon:*(*(&v27 + 1) + 8 * j)])
                {

                  v23 = SBLogIconController();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v36 = anyObject;
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

    [iconManager scrollToIconListContainingIcon:v10 animate:1];
  }

LABEL_31:
}

- (id)featureIntroductionItemForWidgetSetupAtLocation:(unint64_t)location
{
  iconManager = [(SBHomeScreenController *)self iconManager];
  featureIntroductionManager = [iconManager featureIntroductionManager];
  v6 = [featureIntroductionManager featureIntroductionItemAtLocation:location withIdentifier:@"SBFeatureIntroductionLocationNone"];
  if ([v6 shouldSetupFeatureIntroductionAtLocations:location])
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

- (void)windowSceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v5 = objc_opt_class();
  v7 = SBSafeCast(v5, disconnectCopy);

  if (v7)
  {
    [(NSMapTable *)self->_windowSceneToMedusaDragWindowContext removeObjectForKey:v7];
    iconDragManager = [(SBHomeScreenController *)self iconDragManager];
    [iconDragManager windowSceneDidDisconnect:v7];
  }
}

- (void)_beginDisablingAllOrientationChangesForReason:(id)reason
{
  reasonCopy = reason;
  v4 = [(NSMapTable *)self->_deviceOrientationUpdateDeferralAssertionsByReason objectForKey:?];
  if (!v4)
  {
    v4 = [SBApp deviceOrientationUpdateDeferralAssertionWithReason:reasonCopy];
    [(NSMapTable *)self->_deviceOrientationUpdateDeferralAssertionsByReason setObject:v4 forKey:reasonCopy];
  }

  v5 = [(NSMapTable *)self->_activeInterfaceOrientationChangeDeferralAssertionsByReason objectForKey:reasonCopy];
  if (!v5)
  {
    v5 = [[SBDisableActiveInterfaceOrientationChangeAssertion alloc] initWithReason:reasonCopy nudgeOrientationOnInvalidate:0];
    [(NSMapTable *)self->_activeInterfaceOrientationChangeDeferralAssertionsByReason setObject:v5 forKey:reasonCopy];
  }
}

- (void)_endDisablingAllOrientationChangesForReason:(id)reason
{
  deviceOrientationUpdateDeferralAssertionsByReason = self->_deviceOrientationUpdateDeferralAssertionsByReason;
  reasonCopy = reason;
  v7 = [(NSMapTable *)deviceOrientationUpdateDeferralAssertionsByReason objectForKey:reasonCopy];
  [(NSMapTable *)self->_deviceOrientationUpdateDeferralAssertionsByReason removeObjectForKey:reasonCopy];
  [v7 invalidate];
  v6 = [(NSMapTable *)self->_activeInterfaceOrientationChangeDeferralAssertionsByReason objectForKey:reasonCopy];
  [(NSMapTable *)self->_activeInterfaceOrientationChangeDeferralAssertionsByReason removeObjectForKey:reasonCopy];

  [v6 invalidate];
}

- (unint64_t)bestListLayoutProviderLayoutOptions
{
  v3 = +[SBDefaults localDefaults];
  homeScreenDefaults = [v3 homeScreenDefaults];

  v5 = +[SBDefaults localDefaults];
  floatingDockDefaults = [v5 floatingDockDefaults];

  if ([floatingDockDefaults recentsEnabled])
  {
    v7 = 0;
  }

  else
  {
    v7 = 4;
  }

  if ([homeScreenDefaults shouldUseLargeDefaultSizedIcons])
  {
    if (__sb__runningInSpringBoard())
    {
      v8 = SBFEffectiveDeviceClass() == 2;
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      v8 = [currentDevice userInterfaceIdiom] == 1;
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
  iconModel = [(SBHomeScreenController *)self iconModel];
  rootFolder = [iconModel rootFolder];

  return rootFolder;
}

- (void)_showInfoAlertIfNeeded:(BOOL)needed
{
  alertItemsController = [(SBHomeScreenController *)self alertItemsController];
  v5 = +[SBDefaults localDefaults];
  iconDefaults = [v5 iconDefaults];
  didShowIconReorderAlert = [iconDefaults didShowIconReorderAlert];

  v8 = [alertItemsController hasAlertOfClass:objc_opt_class()];
  if (needed)
  {
    hasDownloadedStoreApplication = 1;
    if (didShowIconReorderAlert)
    {
      goto LABEL_7;
    }
  }

  else
  {
    applicationPlaceholderController = [(SBHomeScreenController *)self applicationPlaceholderController];
    hasDownloadedStoreApplication = [applicationPlaceholderController hasDownloadedStoreApplication];

    if (didShowIconReorderAlert)
    {
      goto LABEL_7;
    }
  }

  iconManager = [(SBHomeScreenController *)self iconManager];
  v12 = [iconManager isEditingAllowed] & hasDownloadedStoreApplication & (v8 ^ 1);

  if (v12 == 1)
  {
    v13 = objc_alloc_init(SBReorderInfoAlert);
    [alertItemsController activateAlertItem:v13];
  }

LABEL_7:
}

- (void)handleHomeButtonTap
{
  iconManager = [(SBHomeScreenController *)self iconManager];
  homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
  if (![(SBHomeScreenController *)self areAnyIconViewContextMenusShowing])
  {
    if ([iconManager areAnyIconShareSheetsShowing])
    {
      [iconManager dismissIconShareSheets];
      goto LABEL_7;
    }

    presentedViewController = [homeScreenViewController presentedViewController];

    if (presentedViewController)
    {
      [homeScreenViewController dismissViewControllerAnimated:1 completion:0];
      goto LABEL_7;
    }

    if ([iconManager hasOpenFolder] && (!objc_msgSend(iconManager, "isEditing") || objc_msgSend(iconManager, "isIconDragging")))
    {
      [iconManager popExpandedIconAnimated:1 completionHandler:0];
      goto LABEL_7;
    }

    if ([iconManager isShowingModalInteraction])
    {
      [iconManager popModalInteraction];
      goto LABEL_7;
    }

    if ([iconManager isFolderPageManagementUIVisible])
    {
      [iconManager dismissFolderPageManagementUI];
      goto LABEL_7;
    }

    if ([iconManager isEditing])
    {
      [iconManager setEditing:0];
      goto LABEL_7;
    }

    if ([iconManager isShowingPullDownSearchOrTransitioningToVisible])
    {
      [iconManager dismissSpotlightAnimated:1 completionHandler:0];
      goto LABEL_7;
    }

    if ([(SBHomeScreenController *)self isMainDisplayLibraryViewVisible])
    {
      if (![(SBHomeScreenController *)self isModalAppLibrarySupported])
      {
        overlayLibraryViewController = [(SBHomeScreenController *)self overlayLibraryViewController];
        [overlayLibraryViewController popPresentationState];
        goto LABEL_29;
      }

      overlayLibraryViewController = [(SBHomeScreenController *)self windowScene];
      modalLibraryController = [overlayLibraryViewController modalLibraryController];
      if (![modalLibraryController isPresentingLibrary])
      {
LABEL_25:

LABEL_29:
        goto LABEL_7;
      }

      libraryViewController = [modalLibraryController libraryViewController];
      [libraryViewController popPresentationState];
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

      remoteWallpaperEditorViewController = [(SBHomeScreenController *)self remoteWallpaperEditorViewController];

      if (remoteWallpaperEditorViewController)
      {
        overlayLibraryViewController = [(SBHomeScreenController *)self remoteWallpaperEditorViewController];
        [overlayLibraryViewController sendRequestDismissalAction];
        goto LABEL_29;
      }

      v10 = SBLogTelemetrySignposts();
      if (os_signpost_enabled(v10))
      {
        *v12 = 0;
        _os_signpost_emit_with_name_impl(&dword_21ED4E000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_ANIMATE_TO_FIRST_HOME_PAGE", " enableTelemetry=YES  isAnimation=YES ", v12, 2u);
      }

      kdebug_trace();
      [iconManager animateToDefaultStateWithCompletionHandler:&__block_literal_global_151_0];
      overlayLibraryViewController = [homeScreenViewController iconContentView];
      window = [overlayLibraryViewController window];
      modalLibraryController = [window _eventRoutingScene];

      if (!modalLibraryController)
      {
        goto LABEL_25;
      }

      libraryViewController = [MEMORY[0x277D75128] sharedApplication];
      [libraryViewController _cancelAllEventsOfType:0 onEventRoutingScene:modalLibraryController];
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
  _iconController = [(SBHomeScreenController *)self _iconController];
  allowsUninstall = [_iconController allowsUninstall];

  return allowsUninstall;
}

- (BOOL)isUninstallingSystemAppsRestricted
{
  _iconController = [(SBHomeScreenController *)self _iconController];
  isUninstallingSystemAppsRestricted = [_iconController isUninstallingSystemAppsRestricted];

  return isUninstallingSystemAppsRestricted;
}

- (BOOL)isUninstallSupportedForAnyIcon
{
  _iconController = [(SBHomeScreenController *)self _iconController];
  isUninstallSupportedForAnyIcon = [_iconController isUninstallSupportedForAnyIcon];

  return isUninstallSupportedForAnyIcon;
}

- (BOOL)isUninstallSupportedForIcon:(id)icon
{
  iconCopy = icon;
  _iconController = [(SBHomeScreenController *)self _iconController];
  v6 = [_iconController isUninstallSupportedForIcon:iconCopy];

  return v6;
}

- (BOOL)isHideSupportedForIcon:(id)icon inLocation:(id)location
{
  locationCopy = location;
  iconCopy = icon;
  _iconController = [(SBHomeScreenController *)self _iconController];
  v9 = [_iconController isHideSupportedForIcon:iconCopy inLocation:locationCopy];

  return v9;
}

- (BOOL)isHideSuggestionSupportedForIconView:(id)view inLocation:(id)location
{
  viewCopy = view;
  if ([location isEqualToString:@"SBIconLocationFloatingDockSuggestions"])
  {
    windowScene = [(SBHomeScreenController *)self windowScene];
    floatingDockController = [windowScene floatingDockController];
    v9 = [floatingDockController shouldShowHideSuggestionForIconView:viewCopy proposedValue:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)updateNumberOfRowsWithDuration:(double)duration
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__SBHomeScreenController_updateNumberOfRowsWithDuration___block_invoke;
  v5[3] = &unk_2783A8C18;
  v5[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:2 delay:v5 options:0 animations:duration completion:0.0];
  iconManager = [(SBHomeScreenController *)self iconManager];
  [iconManager layoutIconListsWithAnimationType:0 forceRelayout:0];
}

void __57__SBHomeScreenController_updateNumberOfRowsWithDuration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) homeScreenViewController];
  v1 = [v2 iconContentView];
  [v1 layoutIfNeeded];
}

- (void)_launchFromIconView:(id)view withActions:(id)actions modifierFlags:(int64_t)flags
{
  flagsCopy = flags;
  v41 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  actionsCopy = actions;
  delayedLaunchRequestTimer = [(SBHomeScreenController *)self delayedLaunchRequestTimer];
  [delayedLaunchRequestTimer invalidate];

  [(SBHomeScreenController *)self setDelayedLaunchRequestTimer:0];
  iconManager = [(SBHomeScreenController *)self iconManager];
  icon = [viewCopy icon];
  v13 = [iconManager reasonToDisallowTapOnIconView:viewCopy];
  if (v13)
  {
    [iconManager clearHighlightedIcon];
    _sbWindowScene = SBLogIcon();
    if (os_log_type_enabled(_sbWindowScene, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v38 = viewCopy;
      v39 = 2114;
      v40 = v13;
      _os_log_impl(&dword_21ED4E000, _sbWindowScene, OS_LOG_TYPE_DEFAULT, "Ignoring launch from icon view: %@, reason: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v32 = flagsCopy;
    v34 = actionsCopy;
    v15 = SBLogIcon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = viewCopy;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Initiating launch from icon view: %@", buf, 0xCu);
    }

    _sbWindowScene = [viewCopy _sbWindowScene];
    switcherController = [_sbWindowScene switcherController];
    mEMORY[0x277D0AB20] = [MEMORY[0x277D0AB20] sharedInstance];
    [mEMORY[0x277D0AB20] cancelEventsWithName:@"SBUIApplicationIconLaunchEventLabel"];

    mEMORY[0x277D0AB20]2 = [MEMORY[0x277D0AB20] sharedInstance];
    toggleSwitcherEventName = [switcherController toggleSwitcherEventName];
    [mEMORY[0x277D0AB20]2 cancelEventsWithName:toggleSwitcherEventName];

    mEMORY[0x277D0AB20]3 = [MEMORY[0x277D0AB20] sharedInstance];
    activateSwitcherEventName = [switcherController activateSwitcherEventName];
    [mEMORY[0x277D0AB20]3 cancelEventsWithName:activateSwitcherEventName];

    mEMORY[0x277D65DD0] = [MEMORY[0x277D65DD0] sharedInstance];
    [mEMORY[0x277D65DD0] emitEvent:10];

    v23 = [(SBHomeScreenController *)self launchActivationSettingsForIconView:viewCopy];
    windowManagementContext = [switcherController windowManagementContext];
    if ([windowManagementContext isAutomaticStageCreationEnabled])
    {

      if ((v32 & 0x20000) != 0)
      {
        [v23 setFlag:1 forActivationSetting:73];
      }
    }

    else
    {
    }

    location = [viewCopy location];
    v26 = objc_alloc_init(SBIconLaunchContext);
    v33 = v23;
    [(SBIconLaunchContext *)v26 setActivationSettings:v23];
    [(SBIconLaunchContext *)v26 setActions:v34];
    [(SBIconLaunchContext *)v26 setIconView:viewCopy];
    if ([icon isWidgetIcon])
    {
      [(SBHomeScreenController *)self _launchWidgetIcon:icon fromLocation:location withContext:v26];
    }

    else
    {
      v27 = [icon performLaunchFromLocation:location context:v26];
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
    v36 = viewCopy;
    v30 = [v29 eventWithName:@"noteActivatingAppSuggestion" handler:v35];
    mEMORY[0x277D0AB20]4 = [MEMORY[0x277D0AB20] sharedInstance];
    [mEMORY[0x277D0AB20]4 executeOrAppendEvent:v30];

    actionsCopy = v34;
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

- (void)_launchWidgetIcon:(id)icon fromLocation:(id)location withContext:(id)context
{
  v39 = *MEMORY[0x277D85DE8];
  iconCopy = icon;
  locationCopy = location;
  contextCopy = context;
  activationSettings = [contextCopy activationSettings];
  actions = [contextCopy actions];

  if (activationSettings)
  {
    v13 = activationSettings;
  }

  else
  {
    v13 = objc_alloc_init(SBActivationSettings);
  }

  v14 = v13;
  activeWidget = [iconCopy activeWidget];
  v16 = activeWidget;
  if (activeWidget)
  {
    v25 = actions;
    v26 = locationCopy;
    extensionBundleIdentifier = [activeWidget extensionBundleIdentifier];
    containerBundleIdentifier = [v16 containerBundleIdentifier];
    applicationController = [(SBHomeScreenController *)self applicationController];
    v20 = [applicationController applicationWithBundleIdentifier:containerBundleIdentifier];

    v21 = SBLogIcon();
    v22 = os_log_type_enabled(&v21->super, OS_LOG_TYPE_INFO);
    if (v20)
    {
      if (v22)
      {
        *buf = 138412802;
        v34 = containerBundleIdentifier;
        v35 = 2112;
        v36 = iconCopy;
        v37 = 2112;
        v38 = v26;
        _os_log_impl(&dword_21ED4E000, &v21->super, OS_LOG_TYPE_INFO, "Launching application %@ from widget icon %@, location: %@", buf, 0x20u);
      }

      [(SBActivationSettings *)v14 setObject:extensionBundleIdentifier forActivationSetting:14];
      v21 = objc_alloc_init(SBLockScreenUnlockRequest);
      [(SBLockScreenUnlockRequest *)v21 setSource:24];
      [(SBLockScreenUnlockRequest *)v21 setIntent:3];
      [(SBLockScreenUnlockRequest *)v21 setName:@"Launch From Widget Icon Unlock"];
      [(SBLockScreenUnlockRequest *)v21 setWantsBiometricPresentation:1];
      windowScene = [(SBHomeScreenController *)self windowScene];
      [(SBLockScreenUnlockRequest *)v21 setWindowScene:windowScene];

      lockScreenManager = [(SBHomeScreenController *)self lockScreenManager];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __69__SBHomeScreenController__launchWidgetIcon_fromLocation_withContext___block_invoke;
      v27[3] = &unk_2783C24C0;
      v27[4] = self;
      v28 = v20;
      v29 = iconCopy;
      v30 = v26;
      v31 = v14;
      v32 = v25;
      [lockScreenManager unlockWithRequest:v21 completion:v27];
    }

    else if (v22)
    {
      *buf = 138412802;
      v34 = containerBundleIdentifier;
      v35 = 2112;
      v36 = iconCopy;
      v37 = 2112;
      v38 = v26;
      _os_log_impl(&dword_21ED4E000, &v21->super, OS_LOG_TYPE_INFO, "Failed to launch application %@ from widget icon %@, location: %@", buf, 0x20u);
    }

    actions = v25;
    locationCopy = v26;
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

  iconManager = [(SBHomeScreenController *)self iconManager];
  [iconManager setEditing:0];

  iconManager2 = [(SBHomeScreenController *)self iconManager];
  [iconManager2 cancelAllDrags];
}

- (void)noteViewCovered
{
  iconManager = [(SBHomeScreenController *)self iconManager];
  [iconManager cancelAllFolderScrolling];
}

- (void)_lockScreenUIWillLock:(id)lock
{
  v30 = *MEMORY[0x277D85DE8];
  lockCopy = lock;
  windowScene = [(SBHomeScreenController *)self windowScene];
  isMainDisplayWindowScene = [windowScene isMainDisplayWindowScene];

  if (isMainDisplayWindowScene)
  {
    iconManager = [(SBHomeScreenController *)self iconManager];
    [iconManager setEditing:0];
    v8 = objc_opt_class();
    userInfo = [lockCopy userInfo];
    v10 = [userInfo objectForKey:@"Animated"];
    v11 = SBSafeCast(v8, v10);

    v24 = v11;
    bOOLValue = [v11 BOOLValue];
    [(SBHomeScreenController *)self dismissAppIconForceTouchControllers:0];
    [iconManager dismissIconShareSheets];
    homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
    presentedViewController = [homeScreenViewController presentedViewController];

    if (presentedViewController)
    {
      [homeScreenViewController dismissViewControllerAnimated:bOOLValue completion:0];
    }

    [(SBHomeScreenController *)self dismissTodayOverlayAnimated:bOOLValue];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    windowSceneManager = [SBApp windowSceneManager];
    connectedWindowScenes = [windowSceneManager connectedWindowScenes];

    v17 = [connectedWindowScenes countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(connectedWindowScenes);
          }

          modalLibraryController = [*(*(&v25 + 1) + 8 * i) modalLibraryController];
          if ([modalLibraryController isPresentingLibraryInForeground])
          {
            [modalLibraryController dismissLibraryAnimated:bOOLValue completion:0];
          }
        }

        v18 = [connectedWindowScenes countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v18);
    }

    if (bOOLValue)
    {
      [iconManager dismissModalInteractions];
    }

    else
    {
      [iconManager dismissModalInteractionsImmediately];
    }

    focusModeManager = [iconManager focusModeManager];
    [focusModeManager dismissAllFocusModePopovers];
    _rootFolderController = [(SBHomeScreenController *)self _rootFolderController];
    [_rootFolderController setCurrentPageIndex:objc_msgSend(_rootFolderController animated:{"nearestIconPageIndex"), 0}];
  }
}

- (void)_lockScreenUIWillDismiss:(id)dismiss
{
  windowScene = [(SBHomeScreenController *)self windowScene];
  isMainDisplayWindowScene = [windowScene isMainDisplayWindowScene];

  if (isMainDisplayWindowScene)
  {

    [(SBHomeScreenController *)self removeIconOcclusionReason:16 updateVisibleIcons:1];
  }
}

- (id)currentAnimationContainer
{
  selfCopy = self;
  _currentFolderController = [(SBHomeScreenController *)self _currentFolderController];
  v4 = _currentFolderController;
  if (_currentFolderController)
  {
    selfCopy = _currentFolderController;
  }

  v5 = selfCopy;

  return selfCopy;
}

- (id)launchActionsForIconView:(id)view
{
  continuityInfo = [view continuityInfo];
  uniqueIdentifier = [continuityInfo uniqueIdentifier];
  if (uniqueIdentifier)
  {
    v5 = objc_alloc(MEMORY[0x277D750D8]);
    uUIDString = [uniqueIdentifier UUIDString];
    activityType = [continuityInfo activityType];
    v8 = [v5 initWithIdentifier:uUIDString activityTypeIdentifier:activityType appSuggestion:continuityInfo];

    v9 = [MEMORY[0x277CBEB98] setWithObject:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)launchURLForIconView:(id)view
{
  viewCopy = view;
  continuityInfo = [viewCopy continuityInfo];
  launchURL = [continuityInfo launchURL];
  icon = [viewCopy icon];

  if ([continuityInfo launchURLRequiresInboxCopy] && objc_msgSend(icon, "isApplicationIcon"))
  {
    application = [icon application];
    info = [application info];
    documentInboxURL = [info documentInboxURL];

    launchURL2 = [continuityInfo makeInboxCopyOfLaunchURLToInboxURL:documentInboxURL];
LABEL_11:
    v15 = launchURL2;

    launchURL = v15;
    goto LABEL_12;
  }

  if (![icon isBookmarkIcon])
  {
    goto LABEL_13;
  }

  application = icon;
  applicationToLaunch = [application applicationToLaunch];
  documentInboxURL = applicationToLaunch;
  if (applicationToLaunch)
  {
    info2 = [applicationToLaunch info];
    if ([info2 supportsYttrium])
    {
      webClip = [application webClip];
      alternativeFullScreen = [webClip alternativeFullScreen];

      if (alternativeFullScreen)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    launchURL2 = [application launchURL];
    goto LABEL_11;
  }

LABEL_12:

LABEL_13:

  return launchURL;
}

- (id)launchActivationSettingsForIconView:(id)view
{
  viewCopy = view;
  v5 = objc_alloc_init(SBActivationSettings);
  v6 = [(SBHomeScreenController *)self launchURLForIconView:viewCopy];
  if (v6)
  {
    [(SBActivationSettings *)v5 setObject:v6 forActivationSetting:5];
  }

  _sbWindowScene = [viewCopy _sbWindowScene];
  icon = [viewCopy icon];
  windowSceneManager = objc_opt_self();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    application = 0;
    goto LABEL_9;
  }

  application = [icon application];

  if (application && [application restrictedToTheEmbeddedDisplayInChamois] && objc_msgSend(_sbWindowScene, "isExtendedDisplayWindowScene"))
  {
    windowSceneManager = [SBApp windowSceneManager];
    embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];

    _sbWindowScene = embeddedDisplayWindowScene;
LABEL_9:
  }

  [(SBActivationSettings *)v5 setObject:_sbWindowScene forActivationSetting:69];

  return v5;
}

- (void)_mainSwitcherCreated:(id)created
{
  iconManager = [(SBHomeScreenController *)self iconManager];
  [iconManager minimumHomeScreenScaleDidChange];
}

- (BOOL)isShowingHomeScreenOverlay
{
  if ([(SBHomeScreenController *)self isTodayOverlayPresented])
  {
    return 1;
  }

  return [(SBHomeScreenController *)self isMainDisplayLibraryViewVisible];
}

- (void)dismissHomeScreenOverlaysAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v40 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (completionCopy)
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
    v26 = completionCopy;
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
      [(SBHomeScreenController *)self dismissLibraryAnimated:animatedCopy completion:v11];
      goto LABEL_17;
    }
  }

  selfCopy = self;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  windowSceneManager = [SBApp windowSceneManager];
  connectedWindowScenes = [windowSceneManager connectedWindowScenes];

  v14 = [connectedWindowScenes countByEnumeratingWithState:&v21 objects:v39 count:16];
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
          objc_enumerationMutation(connectedWindowScenes);
        }

        v18 = *(*(&v21 + 1) + 8 * i);
        if (v10)
        {
          dispatch_group_enter(v10);
        }

        modalLibraryController = [v18 modalLibraryController];
        [modalLibraryController dismissLibraryAnimated:animatedCopy completion:v11];
      }

      v15 = [connectedWindowScenes countByEnumeratingWithState:&v21 objects:v39 count:16];
    }

    while (v15);
  }

  self = selfCopy;
LABEL_17:
  [(SBHomeScreenController *)self dismissTodayOverlayAnimated:animatedCopy completion:v9];
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
  remoteWallpaperEditorViewController = [(SBHomeScreenController *)self remoteWallpaperEditorViewController];

  if (remoteWallpaperEditorViewController)
  {
    remoteWallpaperEditorViewController2 = [(SBHomeScreenController *)self remoteWallpaperEditorViewController];
    [remoteWallpaperEditorViewController2 sendRequestDismissalAction];
  }
}

- (void)dismissTodayOverlayAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if ([(SBHomeScreenController *)self isTodayOverlayPresented])
  {
    [(SBHomeScreenController *)self dismissHomeScreenOverlayControllerAnimated:animatedCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 1);
  }
}

- (void)dismissTodayOverlaySpotlightAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = objc_opt_class();
  todayViewController = [(SBHomeScreenController *)self todayViewController];
  v7 = SBSafeCast(v5, todayViewController);

  [v7 dismissSpotlightAnimated:animatedCopy];
}

- (BOOL)isFileStackIconRemoteContentPresented
{
  windowScene = [(SBHomeScreenController *)self windowScene];
  floatingDockController = [windowScene floatingDockController];
  remoteContentManager = [floatingDockController remoteContentManager];

  LOBYTE(windowScene) = [remoteContentManager isRemoteContentPresenting];
  return windowScene;
}

- (void)closeFileStackIconRemoteContent
{
  windowScene = [(SBHomeScreenController *)self windowScene];
  floatingDockController = [windowScene floatingDockController];
  remoteContentManager = [floatingDockController remoteContentManager];

  [remoteContentManager closeFileStackIconIfNeeded];
}

- (void)dismissHomeScreenOverlayControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  homeScreenOverlayController = [(SBHomeScreenController *)self homeScreenOverlayController];
  if ([homeScreenOverlayController isPresented])
  {
    if ([(SBHomeScreenController *)self isBackdropVisible])
    {
      [(SBHomeScreenController *)self beginRequiringLiveBackdropViewForReason:@"SBIconControllerLiveBackdropForDismissingTodayViewReason"];
    }

    [homeScreenOverlayController setShouldUseReducedMotionAnimation:UIAccessibilityIsReduceMotionEnabled()];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __80__SBHomeScreenController_dismissHomeScreenOverlayControllerAnimated_completion___block_invoke;
    v8[3] = &unk_2783AE5A0;
    v8[4] = self;
    v9 = homeScreenOverlayController;
    v10 = completionCopy;
    [v9 dismissAnimated:animatedCopy completionHandler:v8];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
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

- (void)dismissHomeScreenOverlayUsingTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  homeScreenOverlayController = [(SBHomeScreenController *)self homeScreenOverlayController];
  if ([homeScreenOverlayController isPresented])
  {
    if ([(SBHomeScreenController *)self isBackdropVisible])
    {
      [(SBHomeScreenController *)self beginRequiringLiveBackdropViewForReason:@"SBIconControllerLiveBackdropForDismissingTodayViewReason"];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __77__SBHomeScreenController_dismissHomeScreenOverlayUsingTransitionCoordinator___block_invoke;
      v7[3] = &unk_2783A9488;
      v7[4] = self;
      [coordinatorCopy notifyWhenInteractionChangesUsingBlock:v7];
    }

    [homeScreenOverlayController dismissUsingViewControllerTransitionCoordinator:coordinatorCopy];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __77__SBHomeScreenController_dismissHomeScreenOverlayUsingTransitionCoordinator___block_invoke_2;
    v6[3] = &unk_2783A9488;
    v6[4] = self;
    [coordinatorCopy animateAlongsideTransition:v6 completion:0];
  }
}

void __77__SBHomeScreenController_dismissHomeScreenOverlayUsingTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) _rootFolderController];
  [v1 setSuppressesExtraEditingButtons:0];
}

- (void)setTemporaryIntent:(id)intent forIconWithIdentifier:(id)identifier widgetUniqueIdentifier:(id)uniqueIdentifier
{
  v34 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  identifierCopy = identifier;
  uniqueIdentifierCopy = uniqueIdentifier;
  if (intentCopy && !self->_temporaryWidgetIntents)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    temporaryWidgetIntents = self->_temporaryWidgetIntents;
    self->_temporaryWidgetIntents = v11;
  }

  uniqueIdentifierCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@^%@", identifierCopy, uniqueIdentifierCopy];
  if (intentCopy)
  {
    v25 = 0;
    v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:intentCopy requiringSecureCoding:1 error:&v25];
    v15 = v25;
    if (!v14)
    {
      v17 = SBLogWidgetIntent();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        _indexingHash = [intentCopy _indexingHash];
        *buf = 138544130;
        v27 = uniqueIdentifierCopy;
        v28 = 2048;
        _indexingHash3 = _indexingHash;
        v30 = 2112;
        v31 = uniqueIdentifierCopy;
        v32 = 2112;
        v33 = v15;
        _os_log_error_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_ERROR, "Error archiving temporary intent widget unique identifier '%{public}@/%lld/%@': %@", buf, 0x2Au);
      }

      goto LABEL_17;
    }

    [(NSMutableDictionary *)self->_temporaryWidgetIntents setObject:v14 forKey:uniqueIdentifierCopy];
    v16 = [v14 length];
    v17 = SBLogWidgetIntent();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v18)
      {
        _indexingHash2 = [intentCopy _indexingHash];
        *buf = 138543618;
        v27 = uniqueIdentifierCopy;
        v28 = 2048;
        _indexingHash3 = _indexingHash2;
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
      v27 = uniqueIdentifierCopy;
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
    v27 = uniqueIdentifierCopy;
    v28 = 2048;
    _indexingHash3 = [0 _indexingHash];
    v30 = 2112;
    v31 = uniqueIdentifierCopy;
    _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, "Removing temporary intent for widget unique identifier '%{public}@'/%lld/%@", buf, 0x20u);
  }

  [(NSMutableDictionary *)self->_temporaryWidgetIntents removeObjectForKey:uniqueIdentifierCopy];
LABEL_18:
}

- (id)temporaryIntentDataForIconWithIdentifier:(id)identifier widgetUniqueIdentifier:(id)uniqueIdentifier
{
  v6 = MEMORY[0x277CCACA8];
  uniqueIdentifierCopy = uniqueIdentifier;
  identifierCopy = identifier;
  uniqueIdentifierCopy = [[v6 alloc] initWithFormat:@"%@^%@", identifierCopy, uniqueIdentifierCopy];

  v10 = [(NSMutableDictionary *)self->_temporaryWidgetIntents objectForKey:uniqueIdentifierCopy];
  v11 = v10;
  if (v10)
  {
    [v10 length];
  }

  return v11;
}

- (BOOL)allowsHomeScreenOverlay
{
  userSessionController = [SBApp userSessionController];
  v4 = [userSessionController sessionType] != 2;

  iconManager = [(SBHomeScreenController *)self iconManager];
  LOBYTE(userSessionController) = [iconManager isFolderPageManagementUIVisible];

  return v4 & ~userSessionController;
}

- (void)getLeadingTopButtonFrame:(CGRect *)frame trailingTopButtonFrame:(CGRect *)buttonFrame
{
  iconManager = [(SBHomeScreenController *)self iconManager];
  listLayoutProvider = [iconManager listLayoutProvider];

  v8 = [listLayoutProvider layoutForIconLocation:*MEMORY[0x277D666D0]];
  homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
  iconContentView = [homeScreenViewController iconContentView];
  [iconContentView bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
  [MEMORY[0x277D66430] _getTopLeadingButtonFrame:frame topTrailingButtonFrame:buttonFrame inBounds:v8 forListLayout:v19 withTranslationOffset:v12 inRTL:{v14, v16, v18, 0.0}];
}

- (void)enumerateTintableViewControllersUsingBlock:(id)block
{
  v27 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  [(SBHomeScreenController *)self homeScreenViewController];
  v19 = v5 = blockCopy + 2;
  (blockCopy[2])(blockCopy);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __69__SBHomeScreenController_enumerateTintableViewControllersUsingBlock___block_invoke;
  v24[3] = &unk_2783C2538;
  v6 = blockCopy;
  v25 = v6;
  selfCopy = self;
  [(SBHomeScreenController *)self _enumerateTodayViewControllers:v24];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  windowSceneManager = [SBApp windowSceneManager];
  connectedWindowScenes = [windowSceneManager connectedWindowScenes];

  v9 = [connectedWindowScenes countByEnumeratingWithState:&v20 objects:v26 count:16];
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
          objc_enumerationMutation(connectedWindowScenes);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        modalLibraryController = [v13 modalLibraryController];
        libraryViewController = [modalLibraryController libraryViewController];
        if (libraryViewController)
        {
          (*v5)(v6, libraryViewController);
        }

        floatingDockController = [v13 floatingDockController];
        viewController = [floatingDockController viewController];
        if (viewController)
        {
          (*v5)(v6, viewController);
        }
      }

      v10 = [connectedWindowScenes countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v10);
  }

  if (selfCopy->_overlayLibraryViewController)
  {
    (*v5)(v6);
  }
}

- (void)updateHomeScreenTraitOverridesForViewController:(id)controller
{
  traitOverrides = [controller traitOverrides];
  [(SBHomeScreenController *)self updateHomeScreenTraitOverridesForTraitOverrides:traitOverrides];
}

- (void)updateHomeScreenTraitOverridesForWindowScene:(id)scene
{
  traitOverrides = [scene traitOverrides];
  [(SBHomeScreenController *)self updateHomeScreenTraitOverridesForTraitOverrides:traitOverrides];
}

- (void)updateHomeScreenTraitOverridesForTraitOverrides:(id)overrides
{
  overridesCopy = overrides;
  v4 = [(SBHomeScreenController *)self iconStylePickerConfigurationForIconManager:self->_iconManager];
  v5 = objc_opt_self();
  if (v4)
  {
    [overridesCopy setObject:v4 forTrait:v5];
  }

  else
  {
    [overridesCopy removeTrait:v5];
  }

  isWallpaperDimmed = [(SBWallpaperIconStyleCoordinator *)self->_iconStyleCoordinator isWallpaperDimmed];
  v7 = objc_opt_self();
  [overridesCopy setNSIntegerValue:isWallpaperDimmed forTrait:v7];
}

- (void)caseAttachedStateDidUpdateWithColor:(id)color
{
  iconStyleCoordinator = self->_iconStyleCoordinator;
  colorCopy = color;
  currentStyleConfiguration = [(SBWallpaperIconStyleCoordinator *)iconStyleCoordinator currentStyleConfiguration];
  v7 = [currentStyleConfiguration mutableCopy];

  [v7 setCaseAccentColor:colorCopy];
  [(SBWallpaperIconStyleCoordinator *)self->_iconStyleCoordinator setCurrentStyleConfiguration:v7];
}

- (void)iconManagerWantsIconSizeToggled:(id)toggled
{
  iconStyleCoordinator = self->_iconStyleCoordinator;
  v4 = [(SBWallpaperIconStyleCoordinator *)iconStyleCoordinator shouldUseLargeHomeScreenIcons]^ 1;

  [(SBWallpaperIconStyleCoordinator *)iconStyleCoordinator setShouldUseLargeHomeScreenIcons:v4];
}

- (void)removeHomeScreenTraitOverridesForViewController:(id)controller
{
  traitOverrides = [controller traitOverrides];
  v3 = objc_opt_self();
  [traitOverrides removeTrait:v3];

  v4 = objc_opt_self();
  [traitOverrides removeTrait:v4];
}

- (void)setCurrentHomeScreenIconStyleConfiguration:(id)configuration
{
  sb_iconImageStyleConfiguration = [configuration sb_iconImageStyleConfiguration];
  homeScreenConfiguration = [sb_iconImageStyleConfiguration homeScreenConfiguration];
  [(SBWallpaperIconStyleCoordinator *)self->_iconStyleCoordinator setCurrentStyleConfiguration:homeScreenConfiguration];
  [(SBHomeScreenController *)self iconStyleCoordinatorDidUpdate:self->_iconStyleCoordinator];
}

- (void)setCurrentHomeScreenIconStyleConfiguration:(id)configuration wallpaperDimmed:(BOOL)dimmed
{
  dimmedCopy = dimmed;
  sb_iconImageStyleConfiguration = [configuration sb_iconImageStyleConfiguration];
  homeScreenConfiguration = [sb_iconImageStyleConfiguration homeScreenConfiguration];
  [(SBWallpaperIconStyleCoordinator *)self->_iconStyleCoordinator setCurrentStyleConfiguration:homeScreenConfiguration];
  [(SBWallpaperIconStyleCoordinator *)self->_iconStyleCoordinator setWallpaperDimmed:dimmedCopy];
  [(SBHomeScreenController *)self iconStyleCoordinatorDidUpdate:self->_iconStyleCoordinator];
}

- (SBHIconImageAppearance)currentIconImageAppearance
{
  rootViewController = [(SBHomeScreenController *)self rootViewController];
  traitCollection = [rootViewController traitCollection];
  v4 = [MEMORY[0x277D75C80] sbh_iconImageAppearanceFromTraitCollection:traitCollection];

  return v4;
}

- (void)addIconStyleObserver:(id)observer
{
  observerCopy = observer;
  iconStyleObservers = self->_iconStyleObservers;
  v8 = observerCopy;
  if (!iconStyleObservers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_iconStyleObservers;
    self->_iconStyleObservers = weakObjectsHashTable;

    observerCopy = v8;
    iconStyleObservers = self->_iconStyleObservers;
  }

  [(NSHashTable *)iconStyleObservers addObject:observerCopy];
}

- (void)informIconStyleObserversOfStyleChange
{
  v14 = *MEMORY[0x277D85DE8];
  currentIconStyleConfiguration = [(SBHomeScreenController *)self currentIconStyleConfiguration];
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

        [*(*(&v9 + 1) + 8 * v8++) iconStyleProvider:self didUpdateIconStyleConfiguration:currentIconStyleConfiguration];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)createFloatingDockControllerForWindowScene:(id)scene
{
  sceneCopy = scene;
  if (+[SBFloatingDockController isFloatingDockSupported])
  {
    v5 = [[SBFloatingDockController alloc] initWithWindowScene:sceneCopy homeScreenContextProvider:self];
    [(SBHomeScreenController *)self _configureFloatingDockController:v5 forWindowScene:sceneCopy];
    [(SBHomeScreenController *)self updateHomeScreenTraitOverridesForWindowScene:sceneCopy];
    additionalFloatingDockControllers = [(SBHomeScreenController *)self additionalFloatingDockControllers];
    if (!additionalFloatingDockControllers)
    {
      additionalFloatingDockControllers = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      [(SBHomeScreenController *)self setAdditionalFloatingDockControllers:additionalFloatingDockControllers];
    }

    [additionalFloatingDockControllers addObject:v5];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_configureFloatingDockController:(id)controller forWindowScene:(id)scene
{
  controllerCopy = controller;
  [controllerCopy registerForWindowScene:scene];
  [(SBHomeScreenController *)self notifyFloatingDockControllerObserversDidRegister:controllerCopy];
}

- (void)addFloatingDockControllerObserver:(id)observer
{
  observerCopy = observer;
  v8 = observerCopy;
  if (!observerCopy)
  {
    [SBHomeScreenController addFloatingDockControllerObserver:];
    observerCopy = 0;
  }

  if (![(NSHashTable *)self->_floatingDockControllerObservers containsObject:observerCopy])
  {
    floatingDockControllerObservers = self->_floatingDockControllerObservers;
    if (!floatingDockControllerObservers)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v7 = self->_floatingDockControllerObservers;
      self->_floatingDockControllerObservers = weakObjectsHashTable;

      floatingDockControllerObservers = self->_floatingDockControllerObservers;
    }

    [(NSHashTable *)floatingDockControllerObservers addObject:v8];
  }
}

- (void)removeFloatingDockControllerObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (!observerCopy)
  {
    [SBHomeScreenController removeFloatingDockControllerObserver:];
    observerCopy = 0;
  }

  [(NSHashTable *)self->_floatingDockControllerObservers removeObject:observerCopy];
}

- (void)notifyFloatingDockControllerObserversDidRegister:(id)register
{
  v16 = *MEMORY[0x277D85DE8];
  registerCopy = register;
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
          [v10 floatingDockControllerDidRegister:registerCopy];
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
  _currentFolderController = [(SBHomeScreenController *)self _currentFolderController];
  homeScreenOverlayController = [(SBHomeScreenController *)self homeScreenOverlayController];
  windowScene = [(SBHomeScreenController *)self windowScene];
  modalLibraryController = [windowScene modalLibraryController];

  if ([homeScreenOverlayController isPresented])
  {
    viewController = [homeScreenOverlayController viewController];
    v14[0] = viewController;
    v8 = MEMORY[0x277CBEA60];
    v9 = v14;
LABEL_5:
    v10 = [v8 arrayWithObjects:v9 count:1];

    goto LABEL_6;
  }

  if ([modalLibraryController isPresentingLibraryInForeground])
  {
    viewController = [modalLibraryController libraryViewController];
    v13 = viewController;
    v8 = MEMORY[0x277CBEA60];
    v9 = &v13;
    goto LABEL_5;
  }

  if (_currentFolderController)
  {
    v12 = _currentFolderController;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

LABEL_6:

  return v10;
}

- (void)_reduceMotionStatusDidChange:(id)change
{
  [(SBHomeScreenController *)self _resetHomeScreenBackdropView];
  searchPresentableViewController = [(SBHomeScreenController *)self searchPresentableViewController];
  [searchPresentableViewController invalidateBackgroundView];
  [searchPresentableViewController invalidateSearchAffordanceView];
  scrollAccessoryAuxiliaryView = [(SBHomeScreenController *)self scrollAccessoryAuxiliaryView];
  if (scrollAccessoryAuxiliaryView)
  {
    v5 = scrollAccessoryAuxiliaryView;
    searchPresenter = [(SBHomeScreenController *)self searchPresenter];
    isPresenting = [searchPresenter isPresenting];

    if (isPresenting)
    {
      v8 = objc_opt_class();
      _rootFolderController = [(SBHomeScreenController *)self _rootFolderController];
      contentView = [_rootFolderController contentView];
      v11 = SBSafeCast(v8, contentView);

      if (UIAccessibilityIsReduceMotionEnabled())
      {
        v12 = 1.0;
      }

      else
      {
        v12 = 0.0;
      }

      scrollAccessoryView = [v11 scrollAccessoryView];
      [scrollAccessoryView setAlpha:v12];
    }
  }
}

- (void)_backgroundContrastDidChange:(id)change
{
  [(SBHomeScreenController *)self _resetHomeScreenBackdropView];
  windowScene = [(SBHomeScreenController *)self windowScene];
  statusBarManager = [windowScene statusBarManager];
  [statusBarManager updateHomeScreenStatusBarLegibility];
}

- (void)_noteStatusBarHeightChanged:(id)changed
{
  changedCopy = changed;
  v5 = MEMORY[0x277D0AB18];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __54__SBHomeScreenController__noteStatusBarHeightChanged___block_invoke;
  v12 = &unk_2783A92D8;
  v13 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  v7 = [v5 eventWithName:@"updateLayoutForStatusBarHeightChange" handler:&v9];
  mEMORY[0x277D0AB20] = [MEMORY[0x277D0AB20] sharedInstance];
  [mEMORY[0x277D0AB20] executeOrPrependEvent:v7];
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

- (void)handleNavigationCommand:(id)command withDirection:(int64_t)direction
{
  windowSceneManager = [SBApp windowSceneManager];
  activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];

  if (![activeDisplayWindowScene isMainDisplayWindowScene])
  {
    goto LABEL_89;
  }

  isModalAppLibrarySupported = [(SBHomeScreenController *)self isModalAppLibrarySupported];
  v8 = isModalAppLibrarySupported;
  if (direction == 4)
  {
    if (isModalAppLibrarySupported)
    {
      modalLibraryController = [activeDisplayWindowScene modalLibraryController];
      libraryViewController = [modalLibraryController libraryViewController];
      isPresentingLibrary = [modalLibraryController isPresentingLibrary];

      if (isPresentingLibrary)
      {
LABEL_6:
        [(SBHLibraryViewController *)libraryViewController popPresentationState];
        v9 = 1;
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      libraryViewController = self->_overlayLibraryViewController;
      iconManager = [(SBHomeScreenController *)self iconManager];
      isMainDisplayLibraryViewVisible = [iconManager isMainDisplayLibraryViewVisible];

      if (isMainDisplayLibraryViewVisible)
      {
        goto LABEL_6;
      }
    }

    v9 = 0;
    goto LABEL_9;
  }

  v9 = 0;
LABEL_10:
  if (!-[SBHomeScreenController areHomeScreenIconsOccluded](self, "areHomeScreenIconsOccluded") && [activeDisplayWindowScene isMainDisplayWindowScene])
  {
    _currentFolderController = [(SBHomeScreenController *)self _currentFolderController];
    _rootFolderController = [(SBHomeScreenController *)self _rootFolderController];
    currentPageIndex = [_currentFolderController currentPageIndex];
    contentVisibility = [_currentFolderController contentVisibility];
    if (currentPageIndex == [_currentFolderController firstIconPageIndex])
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
      if (_currentFolderController == _rootFolderController)
      {
        isTodayOverlayPresented = [(SBHomeScreenController *)self isTodayOverlayPresented];
        if (direction != 1 || isTodayOverlayPresented)
        {
          if ((direction == 4 || direction == 2) && isTodayOverlayPresented)
          {
            v20 = 1;
            [(SBHomeScreenController *)self dismissTodayOverlayAnimated:1];
            goto LABEL_27;
          }
        }

        else if (contentVisibility == 3 || !contentVisibility)
        {
          iconManager2 = [(SBHomeScreenController *)self iconManager];
          [(SBHomeScreenController *)self presentTodayOverlayForIconManager:iconManager2];

          v20 = 1;
          goto LABEL_27;
        }

        v20 = 0;
      }
    }

LABEL_27:
    if (v8)
    {
      trailingCustomViewPageIndex = [_rootFolderController trailingCustomViewPageIndex];
      if (currentPageIndex == [_currentFolderController lastIconPageIndex])
      {
        v24 = v20;
      }

      else
      {
        v24 = 1;
      }

      if (direction != 2 || (v24 & 1) != 0 || _currentFolderController != _rootFolderController)
      {
        if (currentPageIndex == trailingCustomViewPageIndex)
        {
          v29 = v20;
        }

        else
        {
          v29 = 1;
        }

        if (direction == 1 && (v29 & 1) == 0 && _currentFolderController == _rootFolderController)
        {
          modalLibraryController2 = [activeDisplayWindowScene modalLibraryController];
          [modalLibraryController2 dismissLibraryAnimated:1 completion:0];

          goto LABEL_88;
        }

        goto LABEL_61;
      }

      if (contentVisibility == 3 || !contentVisibility)
      {
        v25 = _currentFolderController;
        v26 = trailingCustomViewPageIndex;
LABEL_87:
        [v25 setCurrentPageIndex:v26 animated:1];
        goto LABEL_88;
      }
    }

    else
    {
      if (currentPageIndex == [_currentFolderController lastIconPageIndex])
      {
        v27 = v20;
      }

      else
      {
        v27 = 1;
      }

      if ((v27 & 1) != 0 || _currentFolderController != _rootFolderController)
      {
LABEL_61:
        if (direction - 3) < 0xFFFFFFFFFFFFFFFELL || (v20)
        {
          if (direction == 4)
          {
            v32 = v20;
          }

          else
          {
            v32 = 1;
          }

          if ((v32 & 1) == 0 && (contentVisibility == 3 || !contentVisibility))
          {
            if ([_currentFolderController isOpen])
            {
              folder = [_currentFolderController folder];
              isRootFolder = [folder isRootFolder];

              if ((isRootFolder & 1) == 0)
              {
                [_currentFolderController _closeFolder];
              }
            }
          }

          goto LABEL_88;
        }

        if (direction == 2)
        {
          v31 = currentPageIndex + 1;
        }

        else
        {
          v31 = currentPageIndex - 1;
        }

        if ((contentVisibility == 3 || !contentVisibility) && [_currentFolderController _isValidPageIndex:v31])
        {
          if (__sb__runningInSpringBoard())
          {
            if (SBFEffectiveDeviceClass() == 2 && ![_currentFolderController doesPageContainIconListView:v31])
            {
              goto LABEL_88;
            }
          }

          else
          {
            currentDevice = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice userInterfaceIdiom] == 1)
            {
              v36 = [_currentFolderController doesPageContainIconListView:v31];

              if ((v36 & 1) == 0)
              {
                goto LABEL_88;
              }
            }

            else
            {
            }
          }

          v25 = _currentFolderController;
          v26 = v31;
          goto LABEL_87;
        }

LABEL_88:

        goto LABEL_89;
      }

      if (direction == 2)
      {
        v28 = v9;
      }

      else
      {
        v28 = 1;
      }

      if (v28)
      {
        if ((direction == 4 || direction == 1) && v9)
        {
          [(SBHomeScreenController *)self dismissLibraryAnimated:1 completion:0];
          goto LABEL_88;
        }
      }

      else if (contentVisibility == 3 || !contentVisibility)
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
    homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
    view = [homeScreenViewController view];
    [view addGestureRecognizer:self->_longPressToEditGestureRecognizer];
  }

  if (!self->_tapToEndEditingGestureRecognizer)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleEditingGesture_];
    tapToEndEditingGestureRecognizer = self->_tapToEndEditingGestureRecognizer;
    self->_tapToEndEditingGestureRecognizer = v7;

    [(UITapGestureRecognizer *)self->_tapToEndEditingGestureRecognizer setDelegate:self];
    homeScreenViewController2 = [(SBHomeScreenController *)self homeScreenViewController];
    view2 = [homeScreenViewController2 view];
    [view2 addGestureRecognizer:self->_tapToEndEditingGestureRecognizer];
  }

  v11 = self->_longPressToEditGestureRecognizer;
  [(SBHIconEditingSettings *)self->_iconEditingSettings longPressToEditDuration];

  [(UILongPressGestureRecognizer *)v11 setMinimumPressDuration:?];
}

- (void)_handleEditingGesture:(id)gesture
{
  gestureCopy = gesture;
  iconManager = [(SBHomeScreenController *)self iconManager];
  if (self->_longPressToEditGestureRecognizer == gestureCopy)
  {
    if ([(UITapGestureRecognizer *)gestureCopy state]== 1)
    {
      iconEditingFeedbackBehavior = [iconManager iconEditingFeedbackBehavior];
      homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
      view = [homeScreenViewController view];
      [(UITapGestureRecognizer *)gestureCopy locationInView:view];
      [iconManager setEditing:1 withFeedbackBehavior:iconEditingFeedbackBehavior location:?];

      [(UITapGestureRecognizer *)gestureCopy setEnabled:0];
      [(UITapGestureRecognizer *)gestureCopy setEnabled:1];
    }
  }

  else if (self->_tapToEndEditingGestureRecognizer == gestureCopy)
  {
    [iconManager setEditing:0 withFeedbackBehavior:0 location:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  windowScene = [(SBHomeScreenController *)self windowScene];
  controlCenterController = [windowScene controlCenterController];
  isPresented = [controlCenterController isPresented];

  if (isPresented)
  {
    v11 = 0;
  }

  else if (self->_homeScreenBackgroundTapGestureRecognizer == recognizerCopy)
  {
    controlCenterController2 = [windowScene controlCenterController];
    isPresentedOrDismissing = [controlCenterController2 isPresentedOrDismissing];

    v11 = isPresentedOrDismissing ^ 1;
  }

  else if (self->_longPressToEditGestureRecognizer == recognizerCopy || self->_tapToEndEditingGestureRecognizer == recognizerCopy)
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 1;
    iconManager = [(SBHomeScreenController *)self iconManager];
    isEditing = [iconManager isEditing];
    isFolderPageManagementUIVisible = [iconManager isFolderPageManagementUIVisible];
    isShowingIconContextMenu = [iconManager isShowingIconContextMenu];
    if (self->_longPressToEditGestureRecognizer == recognizerCopy)
    {
      *(v46 + 24) = ((isEditing | isFolderPageManagementUIVisible | isShowingIconContextMenu) & 1) == 0;
    }

    else if (self->_tapToEndEditingGestureRecognizer == recognizerCopy)
    {
      if (isFolderPageManagementUIVisible & 1 | ((isEditing & 1) == 0) | isShowingIconContextMenu & 1)
      {
        *(v46 + 24) = 0;
      }

      else
      {
        iconDragManager = [(SBHomeScreenController *)self iconDragManager];
        isTrackingUserActiveIconDrags = [iconDragManager isTrackingUserActiveIconDrags];
        *(v46 + 24) = isTrackingUserActiveIconDrags ^ 1;
      }
    }

    if (*(v46 + 24) == 1)
    {
      if (self->_longPressToEditGestureRecognizer != recognizerCopy)
      {
        goto LABEL_19;
      }

      v20 = objc_opt_class();
      _rootFolderController = [(SBHomeScreenController *)self _rootFolderController];
      contentView = [_rootFolderController contentView];
      v23 = SBSafeCast(v20, contentView);

      if (v23)
      {
        [v23 enterEditingTouchRect];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;
        [touchCopy locationInView:v23];
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
        v34 = touchCopy;
        v42 = v34;
        v35 = iconManager;
        v43 = v35;
        v44 = &v45;
        [v35 enumerateDisplayedIconViewsUsingBlock:v41];

        if ((v46[3] & 1) != 0 && [v35 isOverlayTodayViewVisible])
        {
          todayViewController = [(SBHomeScreenController *)self todayViewController];
          v37 = [(SBHomeScreenController *)self _shouldTodayViewController:todayViewController receiveTouch:v34];
          *(v46 + 24) = v37;
        }
      }
    }

    if (*(v46 + 24) == 1 && [iconManager isMainDisplayLibraryViewVisible])
    {
      v38 = [(SBHomeScreenController *)self libraryViewControllerForWindowScene:windowScene];
      isPresentingSearch = [v38 isPresentingSearch];
      *(v46 + 24) = isPresentingSearch ^ 1;
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

- (BOOL)_shouldTodayViewController:(id)controller receiveTouch:(id)touch
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [controllerCopy isSpotlightVisible] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  if (self->_longPressToEditGestureRecognizer == recognizer && (objc_opt_self(), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_isKindOfClass(), v7, (v8 & 1) != 0))
  {
    view = [gestureRecognizerCopy view];
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)addIconOcclusionReason:(unint64_t)reason updateVisibleIcons:(BOOL)icons
{
  iconsCopy = icons;
  iconOcclusionReasons = [(SBHomeScreenController *)self iconOcclusionReasons];
  if ((reason & ~iconOcclusionReasons) != 0)
  {
    [(SBHomeScreenController *)self setIconOcclusionReasons:iconOcclusionReasons | reason];
    if (iconsCopy)
    {

      [(SBHomeScreenController *)self _updateVisibleIconsAfterOcclusionChange];
    }
  }
}

- (void)removeIconOcclusionReason:(unint64_t)reason updateVisibleIcons:(BOOL)icons
{
  iconsCopy = icons;
  iconOcclusionReasons = [(SBHomeScreenController *)self iconOcclusionReasons];
  if ((iconOcclusionReasons & reason) != 0)
  {
    [(SBHomeScreenController *)self setIconOcclusionReasons:iconOcclusionReasons & ~reason];
    if (iconsCopy)
    {

      [(SBHomeScreenController *)self _updateVisibleIconsAfterOcclusionChange];
    }
  }
}

- (id)markIconsOccludedForReason:(id)reason
{
  reasonCopy = reason;
  if (!self->_iconsOccludedAssertions)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    iconsOccludedAssertions = self->_iconsOccludedAssertions;
    self->_iconsOccludedAssertions = weakObjectsHashTable;
  }

  v7 = [[SBIconsOccludedAssertion alloc] initWithInvalidator:self reason:reasonCopy];
  [(NSHashTable *)self->_iconsOccludedAssertions addObject:v7];
  [(SBHomeScreenController *)self addIconOcclusionReason:64 updateVisibleIcons:1];

  return v7;
}

- (void)removeIconsOccludedAssertion:(id)assertion
{
  assertionCopy = assertion;
  if ([(NSHashTable *)self->_iconsOccludedAssertions containsObject:?])
  {
    [(NSHashTable *)self->_iconsOccludedAssertions removeObject:assertionCopy];
    if (![(NSHashTable *)self->_iconsOccludedAssertions count])
    {
      [(SBHomeScreenController *)self removeIconOcclusionReason:64 updateVisibleIcons:1];
    }
  }
}

- (void)_coverSheetWillPresent:(id)present
{
  iconManager = [(SBHomeScreenController *)self iconManager];
  [iconManager setEditing:0];

  iconManager2 = [(SBHomeScreenController *)self iconManager];
  [iconManager2 cancelAllDrags];
}

- (void)_coverSheetDidPresent:(id)present
{
  [(SBHomeScreenController *)self dismissTodayOverlayAnimated:0];
  remoteWallpaperEditorViewController = [(SBHomeScreenController *)self remoteWallpaperEditorViewController];
  [remoteWallpaperEditorViewController sendRequestDismissalAction];
}

- (void)_controlCenterWillPresent:(id)present
{
  if ([(SBHomeScreenController *)self _controlCenterIsOnTheSameWindowScene:present])
  {
    iconManager = [(SBHomeScreenController *)self iconManager];
    [iconManager setEditing:0];

    iconManager2 = [(SBHomeScreenController *)self iconManager];
    [iconManager2 cancelAllDrags];
  }
}

- (void)_controlCenterDidPresent:(id)present
{
  if ([(SBHomeScreenController *)self _controlCenterIsOnTheSameWindowScene:present])
  {
    [(SBHomeScreenController *)self addIconOcclusionReason:4 updateVisibleIcons:1];
    iconManager = [(SBHomeScreenController *)self iconManager];
    [iconManager setEditing:0];

    iconManager2 = [(SBHomeScreenController *)self iconManager];
    [iconManager2 cancelAllDrags];
  }
}

- (void)_controlCenterWillDismiss:(id)dismiss
{
  if ([(SBHomeScreenController *)self _controlCenterIsOnTheSameWindowScene:dismiss])
  {

    [(SBHomeScreenController *)self removeIconOcclusionReason:4 updateVisibleIcons:1];
  }
}

- (BOOL)_controlCenterIsOnTheSameWindowScene:(id)scene
{
  sceneCopy = scene;
  windowScene = [(SBHomeScreenController *)self windowScene];
  object = [sceneCopy object];

  v7 = [object objectForKeyedSubscript:@"SBControlCenterNotificationWindowSceneKey"];

  return windowScene == v7;
}

- (void)_policyAggregatorCapabilitiesDidChange:(id)change
{
  policyAggregator = [(SBHomeScreenController *)self policyAggregator];
  if (([policyAggregator allowsCapability:24] & 1) == 0)
  {
    [(SBHomeScreenController *)self dismissTodayOverlay];
  }

  if (([policyAggregator allowsCapability:18] & 1) == 0)
  {
    iconManager = [(SBHomeScreenController *)self iconManager];
    [iconManager setEditing:0];
  }
}

- (void)setModel:(id)model
{
  modelCopy = model;
  if (self->_iconModel != modelCopy)
  {
    iconManager = [(SBHomeScreenController *)self iconManager];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = *MEMORY[0x277D666F0];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D666F0] object:self->_iconModel];
    overlayLibraryViewController = [(SBHomeScreenController *)self overlayLibraryViewController];
    [overlayLibraryViewController invalidate];

    [(SBHomeScreenController *)self setOverlayLibraryViewController:0];
    [iconManager setOverlayLibraryViewController:0];
    [(SBHomeScreenController *)self setHomeScreenOverlayController:0];
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v11 = SBLogIcon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(SBHomeScreenController *)WeakRetained setModel:v11];
    }

    objc_storeStrong(&self->_iconModel, model);
    [iconManager setIconModel:modelCopy];
    [defaultCenter addObserver:self selector:sel__iconModelDidLayout_ name:v8 object:self->_iconModel];
    rootFolder = [(SBHIconModel *)self->_iconModel rootFolder];

    if (rootFolder)
    {
      [(SBHomeScreenController *)self _rootFolderDidChange];
    }

    if ([(SBHomeScreenController *)self isAppLibrarySupported])
    {
      iconManager2 = [(SBHomeScreenController *)self iconManager];

      if (iconManager2)
      {
        if (![(SBHomeScreenController *)self isModalAppLibrarySupported])
        {
          windowScene = [(SBHomeScreenController *)self windowScene];
          v15 = [(SBHomeScreenController *)self _setUpLibraryViewControllerForWindowScene:windowScene];
          [(SBHomeScreenController *)self setOverlayLibraryViewController:v15];
          iconManager3 = [(SBHomeScreenController *)self iconManager];
          [iconManager3 setOverlayLibraryViewController:v15];
        }
      }
    }
  }
}

- (void)_showsBadgesInAppLibraryDidChange
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = +[SBDefaults localDefaults];
  homeScreenDefaults = [v3 homeScreenDefaults];
  showsBadgesInAppLibrary = [homeScreenDefaults showsBadgesInAppLibrary];

  _libraryViewControllers = [(SBHomeScreenController *)self _libraryViewControllers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [_libraryViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(_libraryViewControllers);
        }

        [*(*(&v11 + 1) + 8 * v10++) setAllowsBadging:showsBadgesInAppLibrary];
      }

      while (v8 != v10);
      v8 = [_libraryViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_iconModelDidChange:(id)change
{
  object = [change object];
  WeakRetained = objc_loadWeakRetained(&self->_iconController);

  v5 = object;
  if (WeakRetained == object)
  {
    iconModel = [object iconModel];
    [(SBHomeScreenController *)self setModel:iconModel];

    v5 = object;
  }
}

- (void)addSmartStacksForWidgetDiscoverabilityAndPrepareWidgetIntroduction
{
  iconManager = [(SBHomeScreenController *)self iconManager];
  v3 = +[SBDefaults localDefaults];
  homeScreenDefaults = [v3 homeScreenDefaults];

  deviceTypeSupportModalWidgetIntroduction = [iconManager deviceTypeSupportModalWidgetIntroduction];
  if (deviceTypeSupportModalWidgetIntroduction)
  {
    alertItemsController = [(SBHomeScreenController *)self alertItemsController];
    [alertItemsController setForceAlertsToPend:1 forReason:@"SBHomeScreenWidgetDiscoverabilityIntroduction"];
  }

  if ([iconManager addDefaultWidgetsToHomeScreen])
  {
    [iconManager scrollToDefaultWidgets];
    [homeScreenDefaults setShouldAddDefaultWidgetsToHomeScreen:0];
    iconManager2 = [(SBHomeScreenController *)self iconManager];
    [iconManager2 disableUserInteractionForWidgetDiscoverability];
LABEL_9:

    goto LABEL_10;
  }

  if ([iconManager rootFolderContainsWidgets])
  {
    [homeScreenDefaults setShouldAddDefaultWidgetsToHomeScreen:0];
  }

  if (deviceTypeSupportModalWidgetIntroduction)
  {
    iconManager2 = [(SBHomeScreenController *)self alertItemsController];
    [iconManager2 setForceAlertsToPend:0 forReason:@"SBHomeScreenWidgetDiscoverabilityIntroduction"];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)updateDefaultFirstPageWidgetDescriptors:(id)descriptors withSizeClass:(id)class andGridCellInfoOptions:(unint64_t)options
{
  classCopy = class;
  descriptorsCopy = descriptors;
  iconManager = [(SBHomeScreenController *)self iconManager];
  [iconManager setDefaultFirstPageWidgetDescriptors:descriptorsCopy];

  [iconManager setDefaultFirstPageWidgetSizeClass:classCopy];
  [iconManager setGridCellInfoOptionsForInsertingDefaultWidgets:options];
}

- (void)displayFeatureIntroductionItem:(id)item atLocation:(unint64_t)location
{
  itemCopy = item;
  if ([itemCopy shouldDisplayFeatureIntroductionAtLocations:location])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    featureIntroductionIdentifier = [itemCopy featureIntroductionIdentifier];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [itemCopy shouldDeferAlertsAtLocations:location])
    {
      *(v14 + 24) = 1;
      alertItemsController = [(SBHomeScreenController *)self alertItemsController];
      [alertItemsController setForceAlertsToPend:1 forReason:featureIntroductionIdentifier];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0 || ![itemCopy shouldPauseUserInteractionAtLocations:location])
      {
        goto LABEL_9;
      }

      alertItemsController = [(SBHomeScreenController *)self iconManager];
      [alertItemsController disableUserInteractionForWidgetDiscoverability];
    }

LABEL_9:
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __68__SBHomeScreenController_displayFeatureIntroductionItem_atLocation___block_invoke;
    v10[3] = &unk_2783AB258;
    v12 = &v13;
    v10[4] = self;
    v9 = featureIntroductionIdentifier;
    v11 = v9;
    [itemCopy displayFeatureIntroductionAtLocations:location presentCompletion:0 dismissCompletion:v10];

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

- (void)displayFeatureIntroductionsAtLocation:(unint64_t)location
{
  v18 = *MEMORY[0x277D85DE8];
  iconManager = [(SBHomeScreenController *)self iconManager];
  featureIntroductionManager = [iconManager featureIntroductionManager];
  v7 = [featureIntroductionManager featureIntroductionItemAtLocation:location];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allObjects = [v7 allObjects];
  v9 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        [(SBHomeScreenController *)self displayFeatureIntroductionItem:*(*(&v13 + 1) + 8 * v12++) atLocation:location];
      }

      while (v10 != v12);
      v10 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_unlockAnimationDidFinish:(id)finish
{
  iconManager = [(SBHomeScreenController *)self iconManager];
  focusModeManager = [iconManager focusModeManager];
  [focusModeManager updateFocusModePopoverVisibility];
  [(SBHomeScreenController *)self displayFeatureIntroductionsAtLocation:4];
}

- (void)_rootFolderDidChange
{
  iconManager = [(SBHomeScreenController *)self iconManager];
  iconModel = [(SBHomeScreenController *)self iconModel];
  rootFolder = [iconModel rootFolder];
  userSessionController = [SBApp userSessionController];
  sessionType = [userSessionController sessionType];

  if (sessionType == 2)
  {
    [iconManager removeWidgetIconsFromHomeScreen];
  }

  todayList = [rootFolder todayList];
  todayViewController = [(SBHomeScreenController *)self todayViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    todayViewController2 = [(SBHomeScreenController *)self todayViewController];
    [todayViewController2 setRootFolder:rootFolder];
  }

  else
  {
    if (!iconManager)
    {
      goto LABEL_9;
    }

    todayViewController2 = [(SBHomeScreenController *)self _newTodayViewControllerWithIconManager:iconManager iconListModel:todayList rootFolder:rootFolder location:1];
    [(SBHomeScreenController *)self setTodayViewController:todayViewController2];
    if (![(SBHomeScreenController *)self _isCoplanarHomeScreenEnabled])
    {
      [(SBHIconManager *)self->_iconManager setOverlayTodayViewController:todayViewController2];
    }
  }

LABEL_9:
  [(SBHomeScreenController *)self _setupOverlayLibraryViewController];
  coverSheetTodayViewController = [(SBHomeScreenController *)self coverSheetTodayViewController];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  if (v12)
  {
    coverSheetTodayViewController2 = [(SBHomeScreenController *)self coverSheetTodayViewController];
    [coverSheetTodayViewController2 setRootFolder:rootFolder];
  }

  else
  {
    if (!iconManager)
    {
      goto LABEL_14;
    }

    coverSheetTodayViewController2 = [(SBHomeScreenController *)self _newTodayViewControllerWithIconManager:iconManager iconListModel:todayList rootFolder:rootFolder location:2];
    [(SBHomeScreenController *)self setCoverSheetTodayViewController:coverSheetTodayViewController2];
  }

LABEL_14:
  [rootFolder addFolderObserver:self];
}

- (void)_makeTodayViewControllers
{
  iconManager = [(SBHomeScreenController *)self iconManager];
  iconModel = [(SBHomeScreenController *)self iconModel];
  rootFolder = [iconModel rootFolder];
  todayList = [rootFolder todayList];
  todayViewController = [(SBHomeScreenController *)self todayViewController];

  if (!todayViewController)
  {
    v7 = [(SBHomeScreenController *)self _newTodayViewControllerWithIconManager:iconManager iconListModel:todayList rootFolder:rootFolder location:1];
    [(SBHomeScreenController *)self setTodayViewController:v7];
    if (![(SBHomeScreenController *)self _isCoplanarHomeScreenEnabled])
    {
      [(SBHIconManager *)self->_iconManager setOverlayTodayViewController:v7];
    }
  }

  coverSheetTodayViewController = [(SBHomeScreenController *)self coverSheetTodayViewController];

  if (!coverSheetTodayViewController)
  {
    v9 = [(SBHomeScreenController *)self _newTodayViewControllerWithIconManager:iconManager iconListModel:todayList rootFolder:rootFolder location:2];
    [(SBHomeScreenController *)self setCoverSheetTodayViewController:v9];
  }
}

- (void)_rebuildTodayViewControllers
{
  [(SBHomeScreenController *)self setTodayViewController:0];
  [(SBHomeScreenController *)self setCoverSheetTodayViewController:0];

  [(SBHomeScreenController *)self _makeTodayViewControllers];
}

- (void)_enumerateTodayViewControllers:(id)controllers
{
  controllersCopy = controllers;
  if (controllersCopy)
  {
    todayViewController = [(SBHomeScreenController *)self todayViewController];

    if (todayViewController)
    {
      todayViewController = objc_opt_new();
      todayViewController2 = [(SBHomeScreenController *)self todayViewController];
      [todayViewController bs_safeAddObject:todayViewController2];
    }

    coverSheetTodayViewController = [(SBHomeScreenController *)self coverSheetTodayViewController];

    if (coverSheetTodayViewController)
    {
      if (!todayViewController)
      {
        todayViewController = objc_opt_new();
      }

      coverSheetTodayViewController2 = [(SBHomeScreenController *)self coverSheetTodayViewController];
      [todayViewController bs_safeAddObject:coverSheetTodayViewController2];
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__SBHomeScreenController__enumerateTodayViewControllers___block_invoke;
    v9[3] = &unk_2783C2588;
    v10 = controllersCopy;
    [todayViewController enumerateObjectsUsingBlock:v9];
  }
}

- (BOOL)iconsSnapToGrid
{
  if (__sb__runningInSpringBoard())
  {
    return SBFEffectiveDeviceClass() == 2;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v2 = [currentDevice userInterfaceIdiom] == 1;

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

  homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
  v3 = ([homeScreenViewController orientation] - 5) < 0xFFFFFFFFFFFFFFFELL;

  return v3;
}

- (id)createModalLibraryControllerForWindowScene:(id)scene
{
  sceneCopy = scene;
  if ([(SBHomeScreenController *)self isModalAppLibrarySupported])
  {
    _iconController = [(SBHomeScreenController *)self _iconController];
    libraryCategoryMapProvider = [_iconController libraryCategoryMapProvider];

    floatingDockController = [sceneCopy floatingDockController];
    if (!floatingDockController)
    {
      [SBHomeScreenController createModalLibraryControllerForWindowScene:];
    }

    iconManager = [(SBHomeScreenController *)self iconManager];

    if (iconManager)
    {
      iconManager = [(SBHomeScreenController *)self _setUpLibraryViewControllerForWindowScene:sceneCopy];
    }

    v9 = [SBModalLibraryController alloc];
    iconManager2 = [(SBHomeScreenController *)self iconManager];
    v11 = [(SBModalLibraryController *)v9 initWithIconManager:iconManager2 libraryViewController:iconManager floatingDockController:floatingDockController windowScene:sceneCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_setUpLibraryViewControllerForWindowScene:(id)scene
{
  sceneCopy = scene;
  iconManager = [(SBHomeScreenController *)self iconManager];
  iconModel = [(SBHomeScreenController *)self iconModel];
  if (!iconManager)
  {
    [SBHomeScreenController _setUpLibraryViewControllerForWindowScene:];
  }

  iconModel2 = [iconManager iconModel];

  if (!iconModel2)
  {
    [SBHomeScreenController _setUpLibraryViewControllerForWindowScene:];
  }

  _iconController = [(SBHomeScreenController *)self _iconController];
  libraryCategoryMapProvider = [_iconController libraryCategoryMapProvider];

  v10 = +[SBDefaults localDefaults];
  homeScreenDefaults = [v10 homeScreenDefaults];

  v12 = [[SBLibraryViewController alloc] initWithCategoryMapProvider:libraryCategoryMapProvider windowScene:sceneCopy];
  if (![(SBHomeScreenController *)self _isCoplanarHomeScreenEnabled])
  {
    [(SBHLibraryViewController *)v12 setIconLocation:*MEMORY[0x277D66678]];
  }

  [(SBHLibraryViewController *)v12 setIconModel:iconModel];
  [(SBHLibraryViewController *)v12 addObserver:self];
  [(SBHLibraryViewController *)v12 setBehaviorDelegate:self];
  -[SBLibraryViewController setEditing:](v12, "setEditing:", [iconManager isEditing]);
  -[SBHLibraryViewController setAllowsBadging:](v12, "setAllowsBadging:", [homeScreenDefaults showsBadgesInAppLibrary]);
  [(SBHLibraryViewController *)v12 setContentVisibility:2];
  [(SBHLibraryViewController *)v12 setIconViewProvider:iconManager];
  [(SBHLibraryViewController *)v12 setIconViewDelegate:iconManager];
  [(SBHLibraryViewController *)v12 setHomeScreenIconTransitionAnimatorDelegate:iconManager];
  v13 = [(SBHomeScreenController *)self _appLibraryListLayoutProviderForWindowScene:sceneCopy];
  [(SBHLibraryViewController *)v12 setListLayoutProvider:v13];
  iconImageCache = [iconManager iconImageCache];
  [(SBHLibraryViewController *)v12 setIconImageCache:iconImageCache];

  legibilitySettings = [iconManager legibilitySettings];
  [(SBHLibraryViewController *)v12 setLegibilitySettings:legibilitySettings];

  [(SBHLibraryViewController *)v12 addObserver:iconManager];

  return v12;
}

- (id)libraryViewControllerForWindowScene:(id)scene
{
  sceneCopy = scene;
  if ([(SBHomeScreenController *)self isModalAppLibrarySupported])
  {
    modalLibraryController = [sceneCopy modalLibraryController];
    libraryViewController = [modalLibraryController libraryViewController];
  }

  else
  {
    libraryViewController = [(SBHomeScreenController *)self overlayLibraryViewController];
  }

  return libraryViewController;
}

- (id)_appLibraryListLayoutProviderForWindowScene:(id)scene
{
  v31[9] = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  if (!sceneCopy)
  {
    v5 = SBLogIconController();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [SBHomeScreenController _appLibraryListLayoutProviderForWindowScene:];
    }
  }

  iconManager = [(SBHomeScreenController *)self iconManager];
  if (([sceneCopy isContinuityDisplayWindowScene] & 1) != 0 || objc_msgSend(sceneCopy, "isMainDisplayWindowScene"))
  {
    listLayoutProvider = [iconManager listLayoutProvider];
  }

  else
  {
    listLayoutProvider2 = [iconManager listLayoutProvider];
    v9 = *MEMORY[0x277D66660];
    v10 = [listLayoutProvider2 layoutForIconLocation:*MEMORY[0x277D66660]];
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

    layoutConfiguration = [v14 layoutConfiguration];

    v29 = v12;
    v16 = [layoutConfiguration copy];

    [v16 landscapeLayoutInsets];
    [v16 portraitLayoutInsets];
    [v16 setPortraitLayoutInsets:?];
    v25 = [objc_alloc(MEMORY[0x277D663A8]) initWithLayoutConfiguration:v16];
    v30[0] = *MEMORY[0x277D666D0];
    v28 = [listLayoutProvider2 layoutForIconLocation:?];
    v31[0] = v28;
    v30[1] = *MEMORY[0x277D66648];
    v27 = [listLayoutProvider2 layoutForIconLocation:?];
    v31[1] = v27;
    v30[2] = *MEMORY[0x277D66678];
    v26 = [listLayoutProvider2 layoutForIconLocation:?];
    v31[2] = v26;
    v30[3] = *MEMORY[0x277D66650];
    v17 = [listLayoutProvider2 layoutForIconLocation:?];
    v31[3] = v17;
    v30[4] = *MEMORY[0x277D66670];
    v18 = [listLayoutProvider2 layoutForIconLocation:?];
    v31[4] = v18;
    v30[5] = *MEMORY[0x277D66668];
    v19 = [listLayoutProvider2 layoutForIconLocation:?];
    v31[5] = v19;
    v30[6] = *MEMORY[0x277D66658];
    v20 = [listLayoutProvider2 layoutForIconLocation:?];
    v31[6] = v20;
    v31[7] = v25;
    v21 = *MEMORY[0x277D66680];
    v30[7] = v9;
    v30[8] = v21;
    v22 = [listLayoutProvider2 layoutForIconLocation:?];
    v31[8] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:9];

    listLayoutProvider = [objc_alloc(MEMORY[0x277D66158]) initWithListLayouts:v23];
  }

  return listLayoutProvider;
}

- (id)animator:(id)animator animationSettingsForOperation:(unint64_t)operation childViewController:(id)controller
{
  iconAnimator = [animator iconAnimator];
  rootSettings = [MEMORY[0x277D661A0] rootSettings];
  iconAnimationSettings = [rootSettings iconAnimationSettings];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    reducedMotionSettings = [iconAnimationSettings reducedMotionSettings];
LABEL_4:
    v10 = reducedMotionSettings;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (operation)
    {
      [iconAnimationSettings folderCloseSettings];
    }

    else
    {
      [iconAnimationSettings folderOpenSettings];
    }

    reducedMotionSettings = LABEL_11:;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!operation)
    {
      reducedMotionSettings = [iconAnimationSettings crossfadeLaunchSettings];
      goto LABEL_4;
    }

    homeHardwareButton = [SBApp homeHardwareButton];
    if ([homeHardwareButton supportsAcceleratedAppDismiss])
    {
      [iconAnimationSettings crossfadeAcceleratedSuspendSettings];
    }

    else
    {
      [iconAnimationSettings crossfadeSuspendSettings];
    }

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!operation)
    {
      reducedMotionSettings = [iconAnimationSettings centerLaunchSettings];
      goto LABEL_4;
    }

    homeHardwareButton = [SBApp homeHardwareButton];
    if ([homeHardwareButton supportsAcceleratedAppDismiss])
    {
      [iconAnimationSettings centerAcceleratedSuspendSettings];
    }

    else
    {
      [iconAnimationSettings centerSuspendSettings];
    }

    v13 = LABEL_16:;
    v10 = v13;

    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (operation)
    {
      [iconAnimationSettings libraryPodCloseSettings];
    }

    else
    {
      [iconAnimationSettings libraryPodOpenSettings];
    }

    goto LABEL_11;
  }

  v10 = 0;
LABEL_5:

  return v10;
}

- (void)iconManager:(id)manager folderControllerWillBeginScrolling:(id)scrolling
{
  v4 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v4))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_HOME_SCROLL_TO_ICON_FROM_ICON", " enableTelemetry=YES  isAnimation=YES ", v5, 2u);
  }

  kdebug_trace();
}

- (void)iconManager:(id)manager folderControllerDidEndScrolling:(id)scrolling
{
  managerCopy = manager;
  _rootFolderController = [(SBHomeScreenController *)self _rootFolderController];
  hasOpenFolder = [managerCopy hasOpenFolder];

  if ((hasOpenFolder & 1) == 0 && ([_rootFolderController isDockExternal] & 1) == 0)
  {
    windowScene = [(SBHomeScreenController *)self windowScene];
    pictureInPictureManager = [windowScene pictureInPictureManager];

    [_rootFolderController dockHeight];
    [pictureInPictureManager applyPictureInPictureInsets:1 forSource:{0.0, 0.0, v10, 0.0}];
  }

  v11 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v11))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_HOME_SCROLL_TO_ICON_FROM_ICON", " enableTelemetry=YES  isAnimation=YES ", v12, 2u);
  }

  kdebug_trace();
}

- (void)folderController:(id)controller iconListView:(id)view springLoadedInteractionForIconDragDidCompleteOnIconView:(id)iconView
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277D674E0];
  v14[0] = &unk_283372218;
  v6 = MEMORY[0x277CBEAC0];
  iconViewCopy = iconView;
  v8 = [v6 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v9 = MEMORY[0x277D65DD0];
  v10 = v8;
  sharedInstance = [v9 sharedInstance];
  [sharedInstance emitEvent:31 withPayload:v10];

  iconDragManager = [(SBHomeScreenController *)self iconDragManager];
  [iconDragManager performSpringLoadedInteractionForIconDragOnIconView:iconViewCopy];
}

- (UIEdgeInsets)contentOverlayInsetsFromParentIfAvailableForFolderController:(id)controller
{
  homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
  [homeScreenViewController _contentOverlayInsets];
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

- (void)iconManager:(id)manager willOpenFolderController:(id)controller
{
  controllerCopy = controller;
  if ([controllerCopy suspendsWallpaperAnimationWhileOpen])
  {
    if (self->_invalidated)
    {
      extraAssertions = SBLogIconController();
      if (os_log_type_enabled(extraAssertions, OS_LOG_TYPE_ERROR))
      {
        [SBHomeScreenController iconManager:willOpenFolderController:];
      }
    }

    else
    {
      extraAssertions = [controllerCopy extraAssertions];
      if (!extraAssertions)
      {
        extraAssertions = objc_alloc_init(MEMORY[0x277CBEB38]);
        [controllerCopy setExtraAssertions:extraAssertions];
      }

      v7 = [extraAssertions valueForKey:@"SuspendWallpaperAnimationAssertion"];
      v8 = v7;
      if (v7)
      {
        [v7 invalidate];
      }

      v9 = +[SBWallpaperController sharedInstance];
      controllerCopy = [@"SBIconControllerOpenFolderWallpaperAnimationSuspensionReason" stringByAppendingFormat:@"-%p", controllerCopy];
      v11 = [v9 suspendWallpaperAnimationForReason:controllerCopy];

      [extraAssertions setValue:v11 forKey:@"SuspendWallpaperAnimationAssertion"];
    }
  }
}

- (void)iconManager:(id)manager willCloseFolderController:(id)controller
{
  controllerCopy = controller;
  if ([controllerCopy suspendsWallpaperAnimationWhileOpen])
  {
    extraAssertions = [controllerCopy extraAssertions];
    v5 = [extraAssertions valueForKey:@"SuspendWallpaperAnimationAssertion"];
    v6 = v5;
    if (v5)
    {
      [v5 invalidate];
      [extraAssertions removeObjectForKey:@"SuspendWallpaperAnimationAssertion"];
    }
  }

  mEMORY[0x277D66210] = [MEMORY[0x277D66210] sharedInstance];
  [mEMORY[0x277D66210] noteFolderControllerWillClose:controllerCopy];
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (([(_UILegibilitySettings *)self->_legibilitySettings isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    iconManager = [(SBHomeScreenController *)self iconManager];
    [iconManager setLegibilitySettings:self->_legibilitySettings];

    windowScene = [(SBHomeScreenController *)self windowScene];
    floatingDockController = [windowScene floatingDockController];
    [floatingDockController setLegibilitySettings:self->_legibilitySettings];
    spotlightViewController = [(SBHomeScreenController *)self spotlightViewController];
    v9 = SBUIDeriveUILegibilitySettings();
    [spotlightViewController setLegibilitySettings:v9];

    searchPresentableViewController = [(SBHomeScreenController *)self searchPresentableViewController];
    searchAffordanceView = [searchPresentableViewController searchAffordanceView];
    [searchAffordanceView setLegibilitySettings:self->_legibilitySettings];

    scrollAccessoryAuxiliaryView = [(SBHomeScreenController *)self scrollAccessoryAuxiliaryView];
    [scrollAccessoryAuxiliaryView setLegibilitySettings:self->_legibilitySettings];

    homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
    [homeScreenViewController setLegibilitySettings:self->_legibilitySettings];
  }
}

- (double)distanceToTopOfSpotlightIconsForIconManager:(id)manager
{
  v4 = +[SBSpotlightMultiplexingViewController sharedRemoteSearchViewController];
  if ([v4 source] == 6)
  {
    enableFloatingWindow = [MEMORY[0x277D65D28] enableFloatingWindow];

    v6 = 0.0;
    if (enableFloatingWindow)
    {
      return v6;
    }
  }

  else
  {
  }

  homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
  view = [homeScreenViewController view];
  [view safeAreaInsets];
  v10 = v9;

  v11 = +[SBSpotlightMultiplexingViewController sharedRemoteSearchViewController];
  [v11 distanceToTopOfIcons];
  v13 = v12;

  v6 = v10 + v13;
  return v6;
}

- (BOOL)iconManagerCanUseSeparateWindowForRotation:(id)rotation
{
  _currentMainDisplayLayoutState = [(SBHomeScreenController *)self _currentMainDisplayLayoutState];
  unlockedEnvironmentMode = [_currentMainDisplayLayoutState unlockedEnvironmentMode];

  if (unlockedEnvironmentMode == 3)
  {
    return 0;
  }

  v6 = +[SBWorkspace mainWorkspace];
  transientOverlayPresentationManager = [v6 transientOverlayPresentationManager];
  hasActivePresentation = [transientOverlayPresentationManager hasActivePresentation];

  if (hasActivePresentation)
  {
    return 0;
  }

  coverSheetPresentationManager = [(SBHomeScreenController *)self coverSheetPresentationManager];
  isVisible = [coverSheetPresentationManager isVisible];

  return isVisible ^ 1;
}

- (void)iconManager:(id)manager statusBarInsetsDidChange:(UIEdgeInsets)change
{
  right = change.right;
  bottom = change.bottom;
  left = change.left;
  top = change.top;
  windowScene = [(SBHomeScreenController *)self windowScene];
  statusBarManager = [windowScene statusBarManager];
  layoutManager = [statusBarManager layoutManager];
  [layoutManager setStatusBarEdgeInsets:0 forLayoutLayer:{top, left, bottom, right}];
}

- (BOOL)iconManager:(id)manager folderController:(id)controller canChangeCurrentPageIndexToIndex:(int64_t)index
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

- (BOOL)isIconContentPossiblyVisibleOverApplicationForIconManager:(id)manager
{
  _currentMainDisplayLayoutState = [(SBHomeScreenController *)self _currentMainDisplayLayoutState];
  v4 = [_currentMainDisplayLayoutState unlockedEnvironmentMode] == 3;

  return v4;
}

- (id)_createHomeScreenOverlayControllerIfNeeded
{
  homeScreenOverlayController = [(SBHomeScreenController *)self homeScreenOverlayController];
  if (!homeScreenOverlayController)
  {
    iconManager = [(SBHomeScreenController *)self iconManager];
    listLayoutProvider = [iconManager listLayoutProvider];
    homeScreenOverlayController = [[SBHomeScreenOverlayController alloc] initWithListLayoutProvider:listLayoutProvider];
    [(SBHomeScreenOverlayController *)homeScreenOverlayController setDelegate:self];
    [(SBHomeScreenOverlayController *)homeScreenOverlayController addHomeScreenOverlayObserver:self];
    overlayLibraryViewController = [(SBHomeScreenController *)self overlayLibraryViewController];
    [(SBHomeScreenOverlayController *)homeScreenOverlayController addHomeScreenOverlayObserver:overlayLibraryViewController];

    todayViewController = [(SBHomeScreenController *)self todayViewController];
    [(SBHomeScreenOverlayController *)homeScreenOverlayController addHomeScreenOverlayObserver:todayViewController];

    [(SBHomeScreenOverlayController *)homeScreenOverlayController setContentVisibility:2];
    viewController = [(SBHomeScreenOverlayController *)homeScreenOverlayController viewController];
    homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
    iconContentView = [homeScreenViewController iconContentView];
    [homeScreenViewController bs_addChildViewController:viewController withSuperview:iconContentView];
    view = [viewController view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = SBHPinViewWithinView();
    dismissTapGestureRecognizer = [(SBHomeScreenOverlayController *)homeScreenOverlayController dismissTapGestureRecognizer];
    [dismissTapGestureRecognizer requireGestureRecognizerToFail:self->_longPressToEditGestureRecognizer];

    dismissTapGestureRecognizer2 = [(SBHomeScreenOverlayController *)homeScreenOverlayController dismissTapGestureRecognizer];
    [dismissTapGestureRecognizer2 requireGestureRecognizerToFail:self->_tapToEndEditingGestureRecognizer];

    todayViewController2 = [(SBHomeScreenController *)self todayViewController];
    if (+[SBLeftOfHomeAppViewController isEnabled])
    {
      v15 = objc_alloc_init(SBLeftOfHomeAppViewController);
      [(SBHomeScreenOverlayController *)homeScreenOverlayController setLeadingSidebarViewController:v15];
      leftOfHomeAppViewController = self->_leftOfHomeAppViewController;
      self->_leftOfHomeAppViewController = v15;
    }

    else
    {
      [(SBHomeScreenOverlayController *)homeScreenOverlayController setLeadingSidebarViewController:todayViewController2];
    }

    viewController2 = [(SBHomeScreenOverlayController *)homeScreenOverlayController viewController];
    [todayViewController2 setContainerViewController:viewController2];

    [todayViewController2 setDismissalDelegate:homeScreenOverlayController];
    if ([(SBHomeScreenController *)self isAppLibrarySupported]&& ![(SBHomeScreenController *)self isModalAppLibrarySupported])
    {
      overlayLibraryViewController2 = [(SBHomeScreenController *)self overlayLibraryViewController];
      [(SBHomeScreenOverlayController *)homeScreenOverlayController setTrailingSidebarViewController:overlayLibraryViewController2];
      viewController3 = [(SBHomeScreenOverlayController *)homeScreenOverlayController viewController];
      [overlayLibraryViewController2 setPresenter:viewController3];
    }

    [(SBHomeScreenController *)self setHomeScreenOverlayController:homeScreenOverlayController];
  }

  return homeScreenOverlayController;
}

- (void)iconManager:(id)manager rootFolderController:(id)controller didOverscrollOnFirstPageByAmount:(double)amount
{
  v17 = [(SBHomeScreenController *)self _homeScreenOverlayControllerIfNeeded:manager];
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
    [(SBHomeScreenOverlayController *)homeScreenOverlayController presentationProgressForTranslation:1 initialPresentationProgress:amount fromLeading:v15];
    [v17 setPresentationProgress:1 fromLeading:1 interactive:1 animated:0 completionHandler:?];
  }

  else
  {
    v16 = self->_homeScreenOverlayInitialPresentationProgress;
    self->_homeScreenOverlayInitialPresentationProgress = 0;

    [v17 setPresentationProgress:1 fromLeading:0.0];
  }
}

- (void)iconManager:(id)manager rootFolderController:(id)controller didEndOverscrollOnFirstPageWithVelocity:(double)velocity translation:(double)translation
{
  v13 = [(SBHomeScreenController *)self _homeScreenOverlayControllerIfNeeded:manager];
  homeScreenOverlayInitialPresentationProgress = self->_homeScreenOverlayInitialPresentationProgress;
  self->_homeScreenOverlayInitialPresentationProgress = 0;

  if (-[SBHomeScreenController allowsHomeScreenOverlay](self, "allowsHomeScreenOverlay") && (-[SBHomeScreenController policyAggregator](self, "policyAggregator"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 allowsCapability:24], v10, (v11 & 1) != 0))
  {
    [(NSNumber *)self->_homeScreenOverlayInitialPresentationProgress doubleValue];
    [v13 finalPresentationProgressForTranslation:1 velocity:translation initialPresentationProgress:velocity fromLeading:v12];
    [v13 animatePresentationProgress:0 withGestureLiftOffVelocity:? completionHandler:?];
  }

  else
  {
    [v13 setPresentationProgress:1 fromLeading:0.0];
  }
}

- (void)iconManager:(id)manager rootFolderController:(id)controller didOverscrollOnLastPageByAmount:(double)amount
{
  v15 = [(SBHomeScreenController *)self _homeScreenOverlayControllerIfNeeded:manager];
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
    [(SBHomeScreenOverlayController *)homeScreenOverlayController presentationProgressForTranslation:0 initialPresentationProgress:amount fromLeading:v13];
    [v15 setPresentationProgress:0 fromLeading:1 interactive:1 animated:0 completionHandler:?];
  }

  else
  {
    v14 = self->_homeScreenOverlayInitialPresentationProgress;
    self->_homeScreenOverlayInitialPresentationProgress = 0;

    [v15 setPresentationProgress:0 fromLeading:0.0];
  }
}

- (void)iconManager:(id)manager rootFolderController:(id)controller didEndOverscrollOnLastPageWithVelocity:(double)velocity translation:(double)translation
{
  v11 = [(SBHomeScreenController *)self homeScreenOverlayController:manager];
  homeScreenOverlayInitialPresentationProgress = self->_homeScreenOverlayInitialPresentationProgress;
  self->_homeScreenOverlayInitialPresentationProgress = 0;

  if ([(SBHomeScreenController *)self allowsHomeScreenOverlay]&& [(SBHomeScreenController *)self isAppLibrarySupported])
  {
    [(NSNumber *)self->_homeScreenOverlayInitialPresentationProgress doubleValue];
    [v11 finalPresentationProgressForTranslation:0 velocity:translation initialPresentationProgress:velocity fromLeading:v10];
    [v11 animatePresentationProgress:0 withGestureLiftOffVelocity:? completionHandler:?];
  }

  else
  {
    [v11 setPresentationProgress:0 fromLeading:0.0];
  }
}

- (BOOL)iconManager:(id)manager isIconVisibleForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _iconController = [(SBHomeScreenController *)self _iconController];
  v7 = [_iconController isIconVisibleForBundleIdentifier:identifierCopy];

  return v7;
}

- (id)iconManager:(id)manager bundleIdentifierToLaunchForWidgetURL:(id)l
{
  v4 = SBWorkspaceApplicationForURLWithError(l, 0, 0);
  bundleIdentifier = [v4 bundleIdentifier];

  return bundleIdentifier;
}

- (void)iconManager:(id)manager wantsLaunchForWidgetURL:(id)l
{
  lCopy = l;
  windowScene = [(SBHomeScreenController *)self windowScene];
  _sbDisplayConfiguration = [windowScene _sbDisplayConfiguration];
  v8 = objc_alloc_init(SBLockScreenUnlockRequest);
  [(SBLockScreenUnlockRequest *)v8 setSource:24];
  [(SBLockScreenUnlockRequest *)v8 setIntent:3];
  [(SBLockScreenUnlockRequest *)v8 setName:@"Launch From Widget Icon Unlock"];
  [(SBLockScreenUnlockRequest *)v8 setWantsBiometricPresentation:1];
  [(SBLockScreenUnlockRequest *)v8 setWindowScene:windowScene];
  lockScreenManager = [(SBHomeScreenController *)self lockScreenManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__SBHomeScreenController_iconManager_wantsLaunchForWidgetURL___block_invoke;
  v12[3] = &unk_2783A8BF0;
  v13 = lCopy;
  v14 = _sbDisplayConfiguration;
  v10 = _sbDisplayConfiguration;
  v11 = lCopy;
  [lockScreenManager unlockWithRequest:v8 completion:v12];
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

- (id)iconManager:(id)manager viewControllerForCustomIcon:(id)icon element:(id)element
{
  managerCopy = manager;
  iconCopy = icon;
  elementCopy = element;
  v11 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    gridSizeClass = [iconCopy gridSizeClass];
    v14 = SBHIconGridSizeClassToStackLayoutSize();

    v15 = objc_alloc(MEMORY[0x277CEBE08]);
    uniqueIdentifier = [elementCopy uniqueIdentifier];
    mEMORY[0x277CEB5A0] = [MEMORY[0x277CEB5A0] sharedInstance];
    v18 = [v15 initWithIdentifier:uniqueIdentifier suggestionsClient:mEMORY[0x277CEB5A0] layoutSize:v14];

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
    gridSizeClass2 = [iconCopy gridSizeClass];
    v22 = SBHIconGridSizeClassToStackLayoutSize();

    v23 = [(SBHomeScreenController *)self canAppPredictionsWidgetAlignWithGrid]^ 1;
    v24 = objc_alloc(MEMORY[0x277CEBE00]);
    uniqueIdentifier2 = [iconCopy uniqueIdentifier];
    v18 = [v24 initWithIdentifier:uniqueIdentifier2 layoutSize:v22 mode:v23];

    [v18 setDelegate:self];
    listLayoutProvider = [managerCopy listLayoutProvider];
    v27 = [listLayoutProvider layoutForIconLocation:*MEMORY[0x277D666D0]];

    [v27 iconImageInfoForGridSizeClass:*MEMORY[0x277D66518]];
    v29 = v28;
    homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
    iconContentView = [homeScreenViewController iconContentView];
    [iconContentView bounds];
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
    v36 = elementCopy;
    iconManager3 = objc_alloc_init(MEMORY[0x277D7D7F8]);
    gridSizeClass3 = [iconCopy gridSizeClass];
    [iconManager3 setFamily:CHSWidgetFamilyForSBHIconGridSizeClass()];

    iconManager = [(SBHomeScreenController *)self iconManager];
    uniqueIdentifier3 = [iconManager intentForDataSource:v36 ofIcon:iconCopy];
    if (!uniqueIdentifier3)
    {
      uniqueIdentifier3 = WFCreateShortcutsWidgetConfigurationIntent();
      v65 = 0;
      v41 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:uniqueIdentifier3 requiringSecureCoding:1 error:&v65];
      v62 = v65;
      if (!v41)
      {
        iconManager2 = SBLogCommon();
        if (os_log_type_enabled(iconManager2, OS_LOG_TYPE_ERROR))
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
      iconManager2 = [(SBHomeScreenController *)self iconManager];
      [(SBHomeScreenController *)self iconManager:iconManager2 dataSource:v36 ofIcon:iconCopy didUpdateConfigurationData:v41];
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  v44 = objc_opt_self();
  v45 = objc_opt_isKindOfClass();

  if (v45)
  {
    v36 = elementCopy;
    iconManager3 = objc_alloc_init(MEMORY[0x277D7D7F8]);
    gridSizeClass4 = [iconCopy gridSizeClass];
    [iconManager3 setFamily:CHSWidgetFamilyForSBHIconGridSizeClass()];

    iconManager = [(SBHomeScreenController *)self iconManager];
    uniqueIdentifier3 = [iconManager intentForDataSource:v36 ofIcon:iconCopy];
    if (!uniqueIdentifier3)
    {
      uniqueIdentifier3 = WFCreateShortcutsSmallWidgetConfigurationIntent();
      v64 = 0;
      v41 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:uniqueIdentifier3 requiringSecureCoding:1 error:&v64];
      v62 = v64;
      if (!v41)
      {
        iconManager2 = SBLogCommon();
        if (os_log_type_enabled(iconManager2, OS_LOG_TYPE_ERROR))
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
    [iconManager3 setIntent:{uniqueIdentifier3, v62}];
    v18 = [objc_alloc(MEMORY[0x277D7D800]) initWithOptions:iconManager3];
    goto LABEL_19;
  }

  v47 = objc_opt_self();
  v48 = objc_opt_isKindOfClass();

  if (v48)
  {
    v36 = elementCopy;
    iconManager3 = [(SBHomeScreenController *)self iconManager];
    iconManager = [iconManager3 intentForDataSource:v36 ofIcon:iconCopy];
    if (!iconManager)
    {
      iconManager = DOCCreateDefaultHomeScreenWidgetIntent();
      v63 = 0;
      v49 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:iconManager requiringSecureCoding:1 error:&v63];
      v50 = v63;
      if (v49)
      {
        iconManager4 = [(SBHomeScreenController *)self iconManager];
        [(SBHomeScreenController *)self iconManager:iconManager4 dataSource:v36 ofIcon:iconCopy didUpdateConfigurationData:v49];
      }

      else
      {
        iconManager4 = SBLogCommon();
        if (os_log_type_enabled(iconManager4, OS_LOG_TYPE_ERROR))
        {
          [SBHomeScreenController iconManager:viewControllerForCustomIcon:element:];
        }
      }
    }

    if (!self->_filesWidgetExtensionProviders)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      filesWidgetExtensionProviders = self->_filesWidgetExtensionProviders;
      self->_filesWidgetExtensionProviders = dictionary;
    }

    uniqueIdentifier3 = [v36 uniqueIdentifier];
    v58 = [(NSMutableDictionary *)self->_filesWidgetExtensionProviders objectForKey:uniqueIdentifier3];
    if (v58)
    {
      v59 = v58;
      [MEMORY[0x277CBEB38] cancelPreviousPerformRequestsWithTarget:self->_filesWidgetExtensionProviders selector:sel_removeObjectForKey_ object:uniqueIdentifier3];
    }

    else
    {
      v59 = objc_alloc_init(MEMORY[0x277D66180]);
      v60 = self->_filesWidgetExtensionProviders;
      uniqueIdentifier4 = [v36 uniqueIdentifier];
      [(NSMutableDictionary *)v60 setObject:v59 forKey:uniqueIdentifier4];
    }

    v18 = [v59 filesWidgetViewControllerWithConfiguration:iconManager];

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
  cyanColor = [MEMORY[0x277D75348] cyanColor];
  [v53 setBackgroundColor:cyanColor];

  v18 = objc_alloc_init(MEMORY[0x277D75D28]);
  [v18 setView:v53];

LABEL_28:

  return v18;
}

- (BOOL)iconManager:(id)manager shouldCacheRecentViewController:(id)controller forIdentifier:(id)identifier
{
  filesWidgetExtensionProviders = self->_filesWidgetExtensionProviders;
  identifierCopy = identifier;
  allKeys = [(NSMutableDictionary *)filesWidgetExtensionProviders allKeys];
  v8 = [allKeys containsObject:identifierCopy];

  return v8 ^ 1;
}

- (void)iconManager:(id)manager willRemoveViewControllerForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_filesWidgetExtensionProviders objectForKey:?];

  if (v5)
  {
    [(NSMutableDictionary *)self->_filesWidgetExtensionProviders performSelector:sel_removeObjectForKey_ withObject:identifierCopy afterDelay:10.0];
  }
}

- (id)fallbackDefaultFirstPageWidgetsForIconManager:(id)manager
{
  v19[3] = *MEMORY[0x277D85DE8];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = MEMORY[0x277D66520];
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v5 = MEMORY[0x277D66548];
  }

  v6 = *v5;
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  v9 = objc_alloc(MEMORY[0x277D66450]);
  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v10 = [v9 initWithWidgetExtensionIdentifiers:&unk_28336EE98 widgetKinds:&unk_28336EEB0 widgetContainerBundleIdentifiers:&unk_28336EE98];
    [v10 setGridSizeClass:v6];
    v11 = objc_alloc(MEMORY[0x277D66450]);
    v19[0] = @"com.apple.weather";
    v19[1] = @"com.apple.reminders.widget";
    null = [MEMORY[0x277CBEB68] null];
    v19[2] = null;
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

- (id)iconManager:(id)manager willAddDefaultFirstPageWidgetsBasedOnPinnedWidgets:(id)widgets suggestionWidgets:(id)suggestionWidgets
{
  v31 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  widgetsCopy = widgets;
  suggestionWidgetsCopy = suggestionWidgets;
  array = [MEMORY[0x277CBEA60] array];
  v12 = SBLogWidgetDiscoverability();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v25) = 0;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Beginning enter builder logic", &v25, 2u);
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    _iconController = [(SBHomeScreenController *)self _iconController];
    userIconStateFileStatus = [_iconController userIconStateFileStatus];

    v17 = SBLogWidgetDiscoverability();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 67109120;
      LODWORD(v26) = userIconStateFileStatus == 1;
      _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "Beginning enter builder logic isDefaultIconState(%d)", &v25, 8u);
    }

    if ([suggestionWidgetsCopy count] <= 1)
    {
      v18 = [(SBHomeScreenController *)self fallbackDefaultFirstPageWidgetsForIconManager:managerCopy];
      v19 = [suggestionWidgetsCopy arrayByAddingObjectsFromArray:v18];

      suggestionWidgetsCopy = v19;
    }

    v20 = [[SBWidgetOnboardingLayoutBuilder alloc] initWithPinnedWidgets:widgetsCopy suggestionWidgets:suggestionWidgetsCopy];
    v21 = [(SBWidgetOnboardingLayoutBuilder *)v20 migratedDefaultWidgets:userIconStateFileStatus == 1];

    v22 = SBLogWidgetDiscoverability();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = @"upgrade";
      v25 = 138412802;
      if (userIconStateFileStatus == 1)
      {
        v23 = @"erase";
      }

      v26 = v23;
      v27 = 2112;
      v28 = widgetsCopy;
      v29 = 2112;
      v30 = suggestionWidgetsCopy;
      _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "Migration pinned widgets with %@ install \n PinnedWidgets = %@ \n SuggestionWidgets = %@", &v25, 0x20u);
    }

    array = v20;
  }

  else
  {
    v21 = suggestionWidgetsCopy;
    suggestionWidgetsCopy = v21;
  }

  return v21;
}

- (BOOL)iconManagerShouldShowWidgetIntroductionPopoverForDefaultWidgets:(id)widgets
{
  if ([MEMORY[0x277D75128] isRunningInStoreDemoMode])
  {
    return 0;
  }

  _iconController = [(SBHomeScreenController *)self _iconController];
  userIconStateFileStatus = [_iconController userIconStateFileStatus];

  return userIconStateFileStatus == 2;
}

- (id)widgetIntroductionPreviewViewForIconManager:(id)manager
{
  v4 = [(SBHomeScreenController *)self interfaceOrientationForIconManager:manager];
  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  SBScreenBounds(v4);
  v8 = v7;
  v10 = v9;
  v11 = [SBHomeScreenPreviewView alloc];
  iconManager = [(SBHomeScreenController *)self iconManager];
  v13 = [(SBHomeScreenPreviewView *)v11 initWithFrame:iconManager iconManager:0 wallpaperController:0 options:0 wallpaperImage:0 listView:v5, v6, v8, v10];

  windowScene = [(SBHomeScreenController *)self windowScene];
  v15 = [[SBViewSnapshotProvider alloc] initWithWindowScene:windowScene view:v13 orientation:v4];
  v16 = objc_alloc(MEMORY[0x277D66400]);
  snapshot = [(SBViewSnapshotProvider *)v15 snapshot];
  v18 = [v16 initWithPreview:v13 withSnapshot:snapshot];

  return v18;
}

- (void)iconManagerDidAddOrRemoveWidgetIcon:(id)icon
{
  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleHomeScreen"))
  {
    homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
    [homeScreenViewController setNeedsUpdateOfSupportedInterfaceOrientations];
  }
}

- (void)iconManagerPreferredProminentPosterColor:(id)color handler:(id)handler
{
  if (handler)
  {
    [(SBWallpaperIconStyleCoordinator *)self->_iconStyleCoordinator fetchWallpaperProminentColor:handler];
  }
}

- (void)iconManagerWantsHomeScreenWallpaperEditorViewControllerPresented:(id)presented
{
  presentedCopy = presented;
  v5 = [(SBHomeScreenController *)self _hideStatusBarForReason:@"presenting HomeScreenWallpaperEditor" animated:1];
  wallpaperEditorStatusBarAssertion = self->_wallpaperEditorStatusBarAssertion;
  self->_wallpaperEditorStatusBarAssertion = v5;

  [presentedCopy setEditing:0];
  rootFolderController = [presentedCopy rootFolderController];

  folderView = [rootFolderController folderView];

  [folderView setUsesGlassGroup:1];
  homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
  [homeScreenViewController setUsesGlassGroup:0];
  v9 = +[SBWallpaperController sharedInstance];
  activeLockScreenPosterConfiguration = [v9 activeLockScreenPosterConfiguration];
  iconContentView = [homeScreenViewController iconContentView];
  v12 = iconContentView;
  if (iconContentView)
  {
    layer = [iconContentView layer];
    RenderId = CALayerGetRenderId();
  }

  else
  {
    RenderId = 0;
  }

  window = [v12 window];
  _contextId = [window _contextId];

  v17 = objc_alloc(MEMORY[0x277D3EAB8]);
  if (objc_opt_respondsToSelector())
  {
    v18 = [v17 initWithServiceConfiguration:activeLockScreenPosterConfiguration transitionOverlayRenderId:RenderId transitionOverlayContextId:_contextId];
  }

  else
  {
    v18 = [v17 initWithServiceConfiguration:activeLockScreenPosterConfiguration];
  }

  v19 = v18;
  v20 = [objc_alloc(MEMORY[0x277D3EAF8]) initWithEntryPoint:v18];
  [v20 setModalPresentationStyle:0];
  [v20 setDelegate:self];
  objc_storeStrong(&self->_remoteWallpaperEditorViewController, v20);
  view = [v20 view];
  view2 = [homeScreenViewController view];
  [view2 bounds];
  [view setFrame:?];

  [view setAutoresizingMask:18];
  if (!self->_wallpaperEditorFloatingDockBehaviorAssertion)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    floatingDockController = [WeakRetained floatingDockController];

    v25 = [[SBFloatingDockBehaviorAssertion alloc] initWithFloatingDockController:floatingDockController visibleProgress:1 animated:0 gesturePossible:3 atLevel:@"wallpaper editor" reason:0 withCompletion:0.0];
    wallpaperEditorFloatingDockBehaviorAssertion = self->_wallpaperEditorFloatingDockBehaviorAssertion;
    self->_wallpaperEditorFloatingDockBehaviorAssertion = v25;
  }

  [homeScreenViewController bs_addChildViewController:v20];
}

- (void)rootFolderPageStateProvider:(id)provider willBeginTransitionToState:(int64_t)state animated:(BOOL)animated interactive:(BOOL)interactive
{
  providerCopy = provider;
  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleHomeScreen"))
  {
    homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
    [homeScreenViewController setNeedsUpdateOfSupportedInterfaceOrientations];
  }

  v9 = SBRootFolderPageStateIsOnLeadingCustomPage();
  if ((v9 & 1) == 0)
  {
    [(SBTodayViewController *)self->_todayViewController resetForSpotlightDismissalAnimated:1];
  }

  [(SBHomeScreenController *)self removeIconOcclusionReason:1 updateVisibleIcons:1];
  pageState = [providerCopy pageState];

  if (SBRootFolderPageStateIsSearch())
  {
    iconManager = [(SBHomeScreenController *)self iconManager];
    if ([iconManager isShowingModalInteraction])
    {
      [iconManager dismissModalInteractionsImmediately];
    }
  }

  if (pageState == 2)
  {
    todayViewController = [(SBHomeScreenController *)self todayViewController];
    [todayViewController setDisplayLayoutElementActive:1];
    [todayViewController setNeedsFocusUpdate];
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

- (void)rootFolderPageStateProvider:(id)provider didContinueTransitionToState:(int64_t)state progress:(double)progress
{
  if (state == 1)
  {
    searchPresentableViewController = [(SBHomeScreenController *)self searchPresentableViewController];

    if (!searchPresentableViewController)
    {
      v7 = +[SBSpotlightMultiplexingViewController sharedRemoteSearchViewController];
      [v7 setRevealProgress:progress];
    }
  }
}

- (void)rootFolderPageStateProvider:(id)provider didEndTransitionFromState:(int64_t)state toState:(int64_t)toState successfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleHomeScreen"))
  {
    homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
    [homeScreenViewController setNeedsUpdateOfSupportedInterfaceOrientations];
  }

  if (successfullyCopy)
  {
    stateCopy = toState;
  }

  else
  {
    stateCopy = state;
  }

  IsSearch = SBRootFolderPageStateIsSearch();
  if (IsSearch)
  {
    v13 = +[SBReachabilityManager sharedInstance];
    [v13 deactivateReachability];
  }

  if (state == 3 && toState == 2)
  {
    transitionContext = [(SBTodayViewController *)self->_todayViewController transitionContext];

    if (transitionContext)
    {
      [(SBTodayViewController *)self->_todayViewController resetForSpotlightDismissalAnimated:0];
      [(SBTodayViewController *)self->_todayViewController setTransitionContext:0];
    }
  }

  if (IsSearch)
  {
    [(SBHomeScreenController *)self addIconOcclusionReason:1 updateVisibleIcons:1];
    suspendWallpaperAnimationForSpotlightAssertion = [(SBHomeScreenController *)self suspendWallpaperAnimationForSpotlightAssertion];
    [suspendWallpaperAnimationForSpotlightAssertion invalidate];

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
      suspendWallpaperAnimationForSpotlightAssertion2 = [(SBHomeScreenController *)self suspendWallpaperAnimationForSpotlightAssertion];
      [suspendWallpaperAnimationForSpotlightAssertion2 invalidate];

      [(SBHomeScreenController *)self setSuspendWallpaperAnimationForSpotlightAssertion:0];
    }
  }

  if (stateCopy == 2)
  {
    todayViewController = [(SBHomeScreenController *)self todayViewController];
    [todayViewController setDisplayLayoutElementActive:1];
    [todayViewController setNeedsFocusUpdate];
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

- (id)rootFolderController:(id)controller transitionContextForTransitioningToState:(int64_t)state animated:(BOOL)animated interactive:(BOOL)interactive
{
  interactiveCopy = interactive;
  animatedCopy = animated;
  controllerCopy = controller;
  pageState = [controllerCopy pageState];
  headerView = [controllerCopy headerView];

  if (headerView)
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

      v14 = [(SBHomeScreenController *)self transitionContextToShowSpotlight:IsSearch fromTodayView:v15 animated:animatedCopy interactive:interactiveCopy];
      goto LABEL_13;
    }

    if (SBRootFolderPageStateIsSearch())
    {
LABEL_8:
      IsSearch = SBRootFolderPageStateIsSearch();
      goto LABEL_9;
    }
  }

  else if (state == 3 || pageState == 3)
  {
    goto LABEL_8;
  }

  v14 = 0;
LABEL_13:

  return v14;
}

- (void)rootFolderController:(id)controller transitionWillBegin:(id)begin
{
  v5 = [(SBHomeScreenController *)self displayLayoutTransition:controller];
  if (!v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    displayLayoutPublisher = [WeakRetained displayLayoutPublisher];
    v8 = [displayLayoutPublisher transitionAssertionWithReason:0];

    [(SBHomeScreenController *)self setDisplayLayoutTransition:v8];
    v5 = v8;
  }
}

- (void)rootFolderController:(id)controller transitionDidFinish:(id)finish
{
  v5 = [(SBHomeScreenController *)self displayLayoutTransition:controller];
  [v5 invalidate];

  [(SBHomeScreenController *)self setDisplayLayoutTransition:0];
}

- (id)transitionContextToShowSpotlight:(BOOL)spotlight fromTodayView:(BOOL)view animated:(BOOL)animated interactive:(BOOL)interactive
{
  interactiveCopy = interactive;
  animatedCopy = animated;
  viewCopy = view;
  v10 = *MEMORY[0x277D77240];
  v11 = *MEMORY[0x277D77248];
  if (!spotlight)
  {
    v12 = *MEMORY[0x277D77230];

    v13 = *MEMORY[0x277D77238];
    v11 = v13;
    v10 = v12;
  }

  v27 = animatedCopy;
  if (animatedCopy)
  {
    v14 = objc_alloc_init(SBSpotlightTransitionAnimator);
    v26 = v14;
    if (interactiveCopy)
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

  _rootFolderController = [(SBHomeScreenController *)self _rootFolderController];
  contentView = [_rootFolderController contentView];
  spotlightViewController = [(SBHomeScreenController *)self spotlightViewController];
  view = [spotlightViewController view];
  [contentView bounds];
  [view setFrame:?];
  v20 = objc_alloc_init(MEMORY[0x277D66448]);
  searchableLeadingCustomWrapperView = [_rootFolderController searchableLeadingCustomWrapperView];
  [v20 setContainerView:searchableLeadingCustomWrapperView];

  if (viewCopy)
  {
    todayViewController = [(SBHomeScreenController *)self todayViewController];
    if (todayViewController)
    {
      [v20 setViewController:todayViewController forKey:@"SBSpotlightInitiatingViewControllerKey"];
    }
  }

  else
  {
    todayViewController = [_rootFolderController headerView];
    if (todayViewController)
    {
      [v20 setView:todayViewController forKey:@"SBSpotlightSearchHeaderViewKey"];
    }
  }

  [v20 setViewController:spotlightViewController forKey:v10];
  [v20 setView:view forKey:v11];
  searchBackdropView = [_rootFolderController searchBackdropView];
  [v20 setView:searchBackdropView forKey:@"SBSpotlightSearchBackdropViewKey"];

  [v20 setAnimator:v26];
  [v20 setInteractor:v15];
  [v20 setWantsAnimation:v27];

  return v20;
}

- (void)popToCurrentRootIconListWhenPossible
{
  iconManager = [(SBHomeScreenController *)self iconManager];
  [iconManager popToCurrentRootIconListWhenPossible];

  [(SBHomeScreenController *)self dismissHomeScreenOverlaysAnimated:0];
}

- (void)overlayControllerDidBeginChangingPresentationProgress:(id)progress
{
  iconManager = [(SBHomeScreenController *)self iconManager];
  if ([iconManager isShowingModalInteraction])
  {
    [iconManager dismissModalInteractions];
  }

  [iconManager dismissIconContextMenu];
}

- (void)overlayController:(id)controller didChangePresentationProgress:(double)progress newPresentationProgress:(double)presentationProgress fromLeading:(BOOL)leading
{
  leadingCopy = leading;
  [controller presentationProgress];
  v9 = v8;
  v10 = BSFloatGreaterThanFloat();
  homeScreenOverlayFloatingDockBehaviorAssertion = self->_homeScreenOverlayFloatingDockBehaviorAssertion;
  if (v10)
  {
    if (!homeScreenOverlayFloatingDockBehaviorAssertion)
    {
      windowScene = [(SBHomeScreenController *)self windowScene];
      floatingDockController = [windowScene floatingDockController];
      v14 = [[SBFloatingDockBehaviorAssertion alloc] initWithFloatingDockController:floatingDockController visibleProgress:1 animated:1 gesturePossible:4 atLevel:@"homeScreenOverlay" reason:0 withCompletion:1.0 - v9];
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
  iconManager = [(SBHomeScreenController *)self iconManager];
  [iconManager setOverlayTodayViewVisible:v10 & leadingCopy todayViewTransitioning:v18 & leadingCopy];
  trailingSidebarViewController = [(SBHomeScreenOverlayController *)self->_homeScreenOverlayController trailingSidebarViewController];

  if (trailingSidebarViewController)
  {
    [iconManager setMainDisplayLibraryViewVisible:v10 & !leadingCopy libraryViewTransitioning:v18 && !leadingCopy];
  }

  if ((BSFloatIsZero() & 1) != 0 || BSFloatIsZero())
  {
    [(SBHomeScreenOverlayController *)self->_homeScreenOverlayController updateExtraButtonVisibilityAnimated:0];
  }
}

- (void)overlayController:(id)controller visibilityDidChange:(BOOL)change
{
  changeCopy = change;
  v6 = NSStringFromSelector(a2);
  [(SBHomeScreenController *)self setWallpaperAnimationDisabled:changeCopy forReason:v6];

  if (!changeCopy)
  {
    [(SBFloatingDockBehaviorAssertion *)self->_homeScreenOverlayFloatingDockBehaviorAssertion invalidate];
    homeScreenOverlayFloatingDockBehaviorAssertion = self->_homeScreenOverlayFloatingDockBehaviorAssertion;
    self->_homeScreenOverlayFloatingDockBehaviorAssertion = 0;
  }

  [(SBHomeScreenOverlayController *)self->_homeScreenOverlayController updateExtraButtonVisibilityAnimated:0];
  _rootFolderController = [(SBHomeScreenController *)self _rootFolderController];
  [_rootFolderController setSuppressesExtraEditingButtons:changeCopy];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:SBIconControllerOverlayVisibilityDidChangeNotification object:self];
}

- (void)homeScreenOverlayWantsToEndEditing:(id)editing
{
  iconManager = [(SBHomeScreenController *)self iconManager];
  [iconManager setEditing:0];
}

- (void)homeScreenOverlayWantsWidgetEditingViewControllerPresented:(id)presented
{
  _rootFolderController = [(SBHomeScreenController *)self _rootFolderController];
  viewController = [(SBHomeScreenOverlayController *)self->_homeScreenOverlayController viewController];
  [_rootFolderController presentWidgetEditingViewControllerFromViewController:viewController];
}

- (BOOL)showsAddWidgetButtonWhileEditingForHomeScreenOverlayController:(id)controller
{
  controllerCopy = controller;
  activeSidebarViewController = [controllerCopy activeSidebarViewController];

  if (activeSidebarViewController)
  {
    activeSidebarViewController2 = [controllerCopy activeSidebarViewController];
    iconManager = [(SBHomeScreenController *)self iconManager];
    overlayTodayViewController = [iconManager overlayTodayViewController];
    v9 = activeSidebarViewController2 == overlayTodayViewController;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)showsDoneButtonWhileEditingForHomeScreenOverlayController:(id)controller
{
  iconManager = [(SBHomeScreenController *)self iconManager];
  showsDoneButtonWhileEditing = [iconManager showsDoneButtonWhileEditing];

  return showsDoneButtonWhileEditing;
}

- (BOOL)isEditingForHomeScreenOverlayController:(id)controller
{
  iconManager = [(SBHomeScreenController *)self iconManager];
  isEditing = [iconManager isEditing];

  return isEditing;
}

- (void)homeScreenOverlayController:(id)controller setSuppressesEditingStateForListView:(BOOL)view
{
  viewCopy = view;
  todayViewController = [(SBHomeScreenController *)self todayViewController];
  [todayViewController setSuppressesEditingStateForListViews:viewCopy];
  overlayLibraryViewController = [(SBHomeScreenController *)self overlayLibraryViewController];
  [overlayLibraryViewController setSuppressesEditingStateForListViews:viewCopy];
}

- (id)homeScreenOverlayController:(id)controller displayLayoutIdentifierForSidebarViewController:(id)viewController
{
  viewControllerCopy = viewController;
  overlayLibraryViewController = [(SBHomeScreenController *)self overlayLibraryViewController];

  if (overlayLibraryViewController == viewControllerCopy)
  {
    v11 = MEMORY[0x277D66F00];
  }

  else
  {
    todayViewController = [(SBHomeScreenController *)self todayViewController];

    if (todayViewController == viewControllerCopy || viewControllerCopy && ([(SBHomeScreenController *)self leftOfHomeAppViewController], v9 = objc_claimAutoreleasedReturnValue(), v9, v9 == viewControllerCopy))
    {
      v11 = MEMORY[0x277D66F68];
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SBHomeScreenController.m" lineNumber:3448 description:{@"unexpected sidebar view controller: %@", viewControllerCopy}];

      v11 = MEMORY[0x277D66F20];
    }
  }

  v12 = *v11;
  v13 = *v11;

  return v12;
}

- (void)handleSpotlightPresentationFromViewController:(id)controller
{
  _rootFolderController = [(SBHomeScreenController *)self _rootFolderController];
  if (([_rootFolderController isTransitioningPageState] & 1) == 0)
  {
    [_rootFolderController presentSpotlightAnimated:1 completionHandler:0];
  }
}

- (void)handleSpotlightDismissalFromViewController:(id)controller
{
  _rootFolderController = [(SBHomeScreenController *)self _rootFolderController];
  if (([_rootFolderController isTransitioningPageState] & 1) == 0)
  {
    [_rootFolderController dismissSpotlightAnimated:1 completionHandler:0];
  }
}

- (unint64_t)defaultSearchViewPresentationSourceForViewController:(id)controller
{
  _rootFolderController = [(SBHomeScreenController *)self _rootFolderController];
  pageState = [_rootFolderController pageState];
  destinationPageState = [_rootFolderController destinationPageState];
  if ([_rootFolderController presentationSource])
  {
    presentationSource = [_rootFolderController presentationSource];
  }

  else if (destinationPageState == 3 || pageState == 3)
  {
    presentationSource = 2;
  }

  else
  {
    presentationSource = 1;
  }

  return presentationSource;
}

- (void)todayViewWantsToEndEditing:(id)editing
{
  iconManager = [(SBHomeScreenController *)self iconManager];
  [iconManager setEditing:0];
}

- (void)todayViewControllerWillPresentSpotlight:(id)spotlight
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:SBIconControllerOverlayVisibilityDidChangeNotification object:self];

  iconManager = [(SBHomeScreenController *)self iconManager];
  [iconManager dismissModalInteractionsImmediately];
}

- (void)todayViewDidAppear:(id)appear
{
  _iconController = [(SBHomeScreenController *)self _iconController];
  proactiveUsageObserver = [_iconController proactiveUsageObserver];
  [proactiveUsageObserver logTodayViewDidAppear];
}

- (void)todayViewControllerDidAppear:(id)appear
{
  appearCopy = appear;
  todayViewDisplayLayoutAssertion = [(SBHomeScreenController *)self todayViewDisplayLayoutAssertion];
  if (!todayViewDisplayLayoutAssertion)
  {
    _homeScreenOverlayControllerIfNeeded = [(SBHomeScreenController *)self _homeScreenOverlayControllerIfNeeded];
    leadingSidebarViewController = [_homeScreenOverlayControllerIfNeeded leadingSidebarViewController];

    if (leadingSidebarViewController == appearCopy)
    {
      todayViewDisplayLayoutAssertion = 0;
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x277D66A50]);
      v8 = [v7 initWithIdentifier:*MEMORY[0x277D66F68]];
      listView = [appearCopy listView];
      window = [listView window];
      [window level];
      [v8 setLevel:v11];

      [v8 setLayoutRole:6];
      listView2 = [appearCopy listView];
      window2 = [listView2 window];
      [listView2 bounds];
      [window2 _convertRectToSceneReferenceSpace:?];
      [v8 setReferenceFrame:?];
      _sbWindowScene = [appearCopy _sbWindowScene];
      displayLayoutPublisher = [_sbWindowScene displayLayoutPublisher];
      todayViewDisplayLayoutAssertion = [displayLayoutPublisher addElement:v8];

      [(SBHomeScreenController *)self setTodayViewDisplayLayoutAssertion:todayViewDisplayLayoutAssertion];
    }
  }

  homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
  [homeScreenViewController setHomeAffordanceInteractionAllowed:0];
}

- (void)todayViewControllerDidDisappear:(id)disappear
{
  todayViewDisplayLayoutAssertion = [(SBHomeScreenController *)self todayViewDisplayLayoutAssertion];
  [todayViewDisplayLayoutAssertion invalidate];
  [(SBHomeScreenController *)self setTodayViewDisplayLayoutAssertion:0];
  homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
  [homeScreenViewController setHomeAffordanceInteractionAllowed:1];
}

- (void)activateTodayViewWithCompletion:(id)completion
{
  completionCopy = completion;
  _rootFolderController = [(SBHomeScreenController *)self _rootFolderController];
  minimumPageIndex = [_rootFolderController minimumPageIndex];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__SBHomeScreenController_activateTodayViewWithCompletion___block_invoke;
  v8[3] = &unk_2783A98A0;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [_rootFolderController setCurrentPageIndex:minimumPageIndex animated:1 completion:v8];
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

- (id)searchPresentablesForPresenter:(id)presenter
{
  v8[2] = *MEMORY[0x277D85DE8];
  searchPresentableViewController = [(SBHomeScreenController *)self searchPresentableViewController];
  if (searchPresentableViewController)
  {
    searchPresentableViewController2 = [(SBHomeScreenController *)self searchPresentableViewController];
    v8[0] = searchPresentableViewController2;
    v8[1] = self;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (id)displayConfigurationForPresenter:(id)presenter
{
  _rootFolderController = [(SBHomeScreenController *)self _rootFolderController];
  _sbDisplayConfiguration = [_rootFolderController _sbDisplayConfiguration];

  return _sbDisplayConfiguration;
}

- (BOOL)searchPresenterCanPresent:(id)present
{
  policyAggregator = [(SBHomeScreenController *)self policyAggregator];
  v5 = [policyAggregator allowsCapability:9];

  if ((v5 & 1) == 0)
  {
    _rootFolderController = SBLogSpotlight();
    if (os_log_type_enabled(_rootFolderController, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, _rootFolderController, OS_LOG_TYPE_DEFAULT, "Disallowing Spotlight presentation over home screen: disallowed by ManagedConfiguration", buf, 2u);
    }

    goto LABEL_15;
  }

  _rootFolderController = [(SBHomeScreenController *)self _rootFolderController];
  searchPresenterPageStateTransition = [(SBHomeScreenController *)self searchPresenterPageStateTransition];
  if (searchPresenterPageStateTransition)
  {
  }

  else if (([_rootFolderController canTransitionPageStateToState:1]& 1) == 0)
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

  if ([_rootFolderController isScrolling])
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

- (void)searchPresenterWillPresentSearch:(id)search animated:(BOOL)animated
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [(SBHomeScreenController *)self _rootFolderController:search];
  [v5 setScrollingDisabled:1 forReason:@"SBIconControllerDisableScrollingForSearchPresentationReason"];
  v6 = objc_opt_class();
  contentView = [v5 contentView];
  v8 = SBSafeCast(v6, contentView);

  if (v8)
  {
    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      scrollAccessoryAuxiliaryView = [(SBHomeScreenController *)self scrollAccessoryAuxiliaryView];

      if (scrollAccessoryAuxiliaryView)
      {
        [v8 setPageControlAlpha:0.0];
      }
    }

    scrollAccessoryBorrowedForSearchPresentationAssertion = [(SBHomeScreenController *)self scrollAccessoryBorrowedForSearchPresentationAssertion];

    if (!scrollAccessoryBorrowedForSearchPresentationAssertion)
    {
      v11 = [v8 borrowScrollAccessoryForReason:@"SearchPresentation"];
      [(SBHomeScreenController *)self setScrollAccessoryBorrowedForSearchPresentationAssertion:v11];
    }
  }

  searchPresentableViewController = [(SBHomeScreenController *)self searchPresentableViewController];
  view = [searchPresentableViewController view];

  [view setHidden:0];
  superview = [view superview];
  [superview bringSubviewToFront:view];

  searchPresenterPageStateTransition = [(SBHomeScreenController *)self searchPresenterPageStateTransition];
  isValid = [searchPresenterPageStateTransition isValid];
  v17 = SBLogRootController();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (isValid)
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
      v22[1] = searchPresenterPageStateTransition == 0;
      _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "homeScreenController searchPresenterWillPresentSearch creating new transition; wasNil: %{BOOL}u", v22, 8u);
    }

    _rootFolderController = [(SBHomeScreenController *)self _rootFolderController];
    v20 = [_rootFolderController beginPageStateTransitionToState:1 reason:@"SBHomeScreenController-SearchPresenter-Present" animated:1 interactive:1];

    [(SBHomeScreenController *)self setSearchPresenterPageStateTransition:v20];
    [(SBHomeScreenController *)self setSearchPresenterDestinationPageState:1];
    searchPresenterPageStateTransition = v20;
  }

  homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
  [homeScreenViewController setHomeAffordanceInteractionAllowed:0];
}

- (void)searchPresenterDidPresentSearch:(id)search
{
  searchPresenterPageStateTransition = [(SBHomeScreenController *)self searchPresenterPageStateTransition];
  [searchPresenterPageStateTransition endTransitionSuccessfully:{-[SBHomeScreenController searchPresenterDestinationPageState](self, "searchPresenterDestinationPageState") == 1}];
  v5 = SBLogRootController();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "homeScreenController searchPresenterDidPresentSearch nil-ing out transition", v6, 2u);
  }

  [(SBHomeScreenController *)self setSearchPresenterPageStateTransition:0];
  [(SBHomeScreenController *)self setSearchPresenterDestinationPageState:-1];
}

- (void)searchPresenterWillDismissSearch:(id)search animated:(BOOL)animated
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [(SBHomeScreenController *)self _rootFolderController:search];
  [v5 setScrollingDisabled:0 forReason:@"SBIconControllerDisableScrollingForSearchPresentationReason"];
  searchPresenterPageStateTransition = [(SBHomeScreenController *)self searchPresenterPageStateTransition];
  isValid = [searchPresenterPageStateTransition isValid];
  v8 = SBLogRootController();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (isValid)
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
      v13[1] = searchPresenterPageStateTransition == 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "homeScreenController searchPresenterWillDismissSearch creating new transition; wasNil: %{BOOL}u", v13, 8u);
    }

    _rootFolderController = [(SBHomeScreenController *)self _rootFolderController];
    v11 = [_rootFolderController beginPageStateTransitionToState:0 reason:@"SBHomeScreenController-SearchPresenter-Dismiss" animated:1 interactive:1];

    [(SBHomeScreenController *)self setSearchPresenterPageStateTransition:v11];
    [(SBHomeScreenController *)self setSearchPresenterDestinationPageState:0];
    searchPresenterPageStateTransition = v11;
  }

  homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
  [homeScreenViewController setHomeAffordanceInteractionAllowed:1];
}

- (void)searchPresenterDidDismissSearch:(id)search
{
  scrollAccessoryBorrowedForSearchPresentationAssertion = [(SBHomeScreenController *)self scrollAccessoryBorrowedForSearchPresentationAssertion];
  [scrollAccessoryBorrowedForSearchPresentationAssertion invalidate];

  [(SBHomeScreenController *)self setScrollAccessoryBorrowedForSearchPresentationAssertion:0];
  v5 = objc_opt_class();
  _rootFolderController = [(SBHomeScreenController *)self _rootFolderController];
  contentView = [_rootFolderController contentView];
  v8 = SBSafeCast(v5, contentView);

  if (v8)
  {
    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      scrollAccessoryAuxiliaryView = [(SBHomeScreenController *)self scrollAccessoryAuxiliaryView];

      if (scrollAccessoryAuxiliaryView)
      {
        [v8 setPageControlAlpha:1.0];
      }
    }
  }

  searchPresentableViewController = [(SBHomeScreenController *)self searchPresentableViewController];
  view = [searchPresentableViewController view];
  [view setHidden:1];

  searchPresenterPageStateTransition = [(SBHomeScreenController *)self searchPresenterPageStateTransition];
  [searchPresenterPageStateTransition endTransitionSuccessfully:{-[SBHomeScreenController searchPresenterDestinationPageState](self, "searchPresenterDestinationPageState") == 0}];
  v13 = SBLogRootController();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "homeScreenController searchPresenterDidDismissSearch nil-ing out transition", v14, 2u);
  }

  [(SBHomeScreenController *)self setSearchPresenterPageStateTransition:0];
  [(SBHomeScreenController *)self setSearchPresenterDestinationPageState:-1];
}

- (void)spotlightPresentableViewControllerShouldDismiss:(id)dismiss
{
  searchPresenter = [(SBHomeScreenController *)self searchPresenter];
  [searchPresenter dismissSearchAnimated:1];
}

- (id)searchAffordanceViewForSpotlightPresentableViewController:(id)controller
{
  scrollAccessoryAuxiliaryView = [(SBHomeScreenController *)self scrollAccessoryAuxiliaryView];
  rootViewController = [(SBHomeScreenController *)self rootViewController];
  searchPillViewWithSystemDefaultBackground = 0;
  if (rootViewController && scrollAccessoryAuxiliaryView)
  {
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();

    if (IsReduceMotionEnabled)
    {
      searchPillViewWithSystemDefaultBackground = 0;
      goto LABEL_9;
    }

    searchPillViewWithSystemDefaultBackground = [MEMORY[0x277D662A8] searchPillViewWithSystemDefaultBackground];
    legibilitySettings = [scrollAccessoryAuxiliaryView legibilitySettings];
    [searchPillViewWithSystemDefaultBackground setLegibilitySettings:legibilitySettings];

    rootViewController = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleSearchAffordanceTap];
    [searchPillViewWithSystemDefaultBackground addGestureRecognizer:rootViewController];
    [searchPillViewWithSystemDefaultBackground setSearchAffordanceReferenceView:scrollAccessoryAuxiliaryView];
    _newSearchPillBackgroundView = [(SBHomeScreenController *)self _newSearchPillBackgroundView];
    [searchPillViewWithSystemDefaultBackground setSearchAffordanceReferenceBackgroundView:_newSearchPillBackgroundView];

    v10 = objc_opt_class();
    _rootFolderController = [(SBHomeScreenController *)self _rootFolderController];
    contentView = [_rootFolderController contentView];
    v13 = SBSafeCast(v10, contentView);

    if (v13)
    {
      scalingView = [v13 scalingView];
      [searchPillViewWithSystemDefaultBackground setSearchAffordanceReferenceContainerView:scalingView];
    }
  }

LABEL_9:

  return searchPillViewWithSystemDefaultBackground;
}

- (id)backgroundViewForSpotlightPresentableViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  screen = [WeakRetained screen];
  [screen bounds];
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
  searchPresenter = [(SBHomeScreenController *)self searchPresenter];
  if (![searchPresenter presentationState])
  {
    [searchPresenter presentSearchAnimated:1];
  }
}

- (id)_newSearchPillBackgroundView
{
  v2 = [MEMORY[0x277D26718] materialViewWithRecipe:19];
  [v2 setGroupNameBase:0];
  [v2 setGroupName:@"WallpaperCaptureGroup"];
  layer = [v2 layer];
  v4 = objc_opt_class();
  v5 = layer;
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

- (void)updatePresentationProgress:(double)progress withOffset:(double)offset velocity:(double)velocity presentationState:(int64_t)state
{
  progressCopy = progress;
  if ([(SBHomeScreenController *)self searchPresenterDestinationPageState:state]!= 1)
  {
    progressCopy = 1.0 - progressCopy;
  }

  searchPresenterPageStateTransition = [(SBHomeScreenController *)self searchPresenterPageStateTransition];
  [searchPresenterPageStateTransition setTransitionProgress:progressCopy];
}

- (id)willBeginModifyingPresentationProgressForState:(int64_t)state animated:(BOOL)animated needsInitialLayout:(BOOL *)layout
{
  if (animated)
  {
    searchPresenterOutstandingAnimationCount = [(SBHomeScreenController *)self searchPresenterOutstandingAnimationCount];
    if (state != 1 && !searchPresenterOutstandingAnimationCount)
    {
      *layout = 1;
    }

    [(SBHomeScreenController *)self setSearchPresenterOutstandingAnimationCount:searchPresenterOutstandingAnimationCount + 1];
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
  isContinuityDisplayWindowScene = [WeakRetained isContinuityDisplayWindowScene];

  if (isContinuityDisplayWindowScene)
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
  _rootFolderController = [(SBHomeScreenController *)self _rootFolderController];
  if (([_rootFolderController isTransitioningPageState] & 1) == 0)
  {
    [_rootFolderController dismissSpotlightAnimated:1 completionHandler:0];
  }
}

- (void)dismissAppIconForceTouchControllers:(id)controllers
{
  v3 = MEMORY[0x277D66210];
  controllersCopy = controllers;
  sharedInstance = [v3 sharedInstance];
  [sharedInstance dismissAppIconForceTouchControllers:controllersCopy];
}

- (BOOL)areAnyIconViewContextMenusAnimating
{
  mEMORY[0x277D66210] = [MEMORY[0x277D66210] sharedInstance];
  areAnyIconViewContextMenusAnimating = [mEMORY[0x277D66210] areAnyIconViewContextMenusAnimating];

  return areAnyIconViewContextMenusAnimating;
}

- (BOOL)isAnySearchVisibleOrTransitioning
{
  _rootFolderController = [(SBHomeScreenController *)self _rootFolderController];
  isAnySearchVisibleOrTransitioning = [_rootFolderController isAnySearchVisibleOrTransitioning];

  return isAnySearchVisibleOrTransitioning;
}

- (void)performAfterContextMenuAnimationsHaveCompleted:(id)completed
{
  v3 = MEMORY[0x277D66210];
  completedCopy = completed;
  sharedInstance = [v3 sharedInstance];
  [sharedInstance performAfterContextMenuAnimationsHaveCompleted:completedCopy];
}

- (void)earlyTerminateAnyContextMenuAnimations
{
  mEMORY[0x277D66210] = [MEMORY[0x277D66210] sharedInstance];
  [mEMORY[0x277D66210] earlyTerminateAnyContextMenuAnimations];
}

- (BOOL)_isHostedByCoverSheet
{
  coverSheetPresentationManager = [(SBHomeScreenController *)self coverSheetPresentationManager];
  isCoverSheetHostingUnlockedEnvironmentWindows = [coverSheetPresentationManager isCoverSheetHostingUnlockedEnvironmentWindows];

  return isCoverSheetHostingUnlockedEnvironmentWindows;
}

- (BOOL)_shouldHideAppIconForceTouchInfoForApplication:(id)application
{
  info = [application info];
  isBlockedForScreenTimeExpiration = [info isBlockedForScreenTimeExpiration];

  return isBlockedForScreenTimeExpiration;
}

- (id)iconManager:(id)manager dataSourceForOpenApplicationWindowsContextMenuProvider:(id)provider
{
  v4 = objc_alloc_init(SBOpenApplicationWindowsContextMenuDataSource);

  return v4;
}

- (BOOL)iconManager:(id)manager requestDeleteFileStackIcon:(id)icon
{
  iconCopy = icon;
  windowScene = [(SBHomeScreenController *)self windowScene];
  floatingDockController = [windowScene floatingDockController];
  remoteContentManager = [floatingDockController remoteContentManager];

  LOBYTE(windowScene) = [remoteContentManager deleteFileStackIcon:iconCopy];
  return windowScene;
}

- (id)iconManager:(id)manager applicationShortcutItemsForIconView:(id)view
{
  v90 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  viewCopy = view;
  icon = [viewCopy icon];
  location = [viewCopy location];
  v83 = viewCopy;
  v10 = [managerCopy isEditingAllowedForIconView:viewCopy];
  if (v10)
  {
    if ([(SBHomeScreenController *)self isOnlyHideSuggestionSupportedForIcon:icon inLocation:location])
    {
      v11 = [(SBHomeScreenController *)self isHideSuggestionSupportedForIconView:viewCopy inLocation:location];
    }

    else if ([(SBHomeScreenController *)self isHideSupportedForIcon:icon inLocation:location])
    {
      v11 = 2;
    }

    else if ([(SBHomeScreenController *)self isUninstallSupportedForIcon:icon])
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

  if ([icon isApplicationIcon])
  {
    v82 = managerCopy;
    application = [icon application];
    applicationPlaceholder = [icon applicationPlaceholder];
    v81 = v11;
    if (([applicationPlaceholder isDownloading] & 1) == 0 && (objc_msgSend(applicationPlaceholder, "isPaused") & 1) == 0 && (objc_msgSend(applicationPlaceholder, "isWaiting") & 1) == 0)
    {
      isCloudDemoted = [applicationPlaceholder isCloudDemoted];
      if (application && (isCloudDemoted & 1) == 0)
      {
        v76 = applicationPlaceholder;
        v80 = [(SBHomeScreenController *)self _shouldHideAppIconForceTouchInfoForApplication:application];
        bundleIdentifier = [application bundleIdentifier];
        v40 = +[SBMainSwitcherControllerCoordinator sharedInstance];
        _recentAppLayoutsController = [v40 _recentAppLayoutsController];
        v42 = bundleIdentifier;
        v43 = [_recentAppLayoutsController recentDisplayItemsForBundleIdentifier:bundleIdentifier includingHiddenAppLayouts:0];
        v74 = [v43 count];

        v73 = [v82 isIconIgnored:icon];
        v44 = objc_opt_class();
        v45 = icon;
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
        applicationBundleID = [v49 applicationBundleID];
        v52 = [v50 applicationWithBundleIdentifier:applicationBundleID];

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

        applicationBundleID2 = v42;
        v55 = MEMORY[0x277D661A8];
        displayName = [v53 displayName];
        if (v80)
        {
          staticApplicationShortcutItems = 0;
        }

        else
        {
          info = [application info];
          staticApplicationShortcutItems = [info staticApplicationShortcutItems];
        }

        v71 = v54;
        if (v54)
        {
          dynamicApplicationShortcutItems = [application dynamicApplicationShortcutItems];
        }

        else
        {
          dynamicApplicationShortcutItems = 0;
        }

        info2 = [application info];
        itemID = [info2 itemID];
        unsignedIntegerValue = [itemID unsignedIntegerValue];
        info3 = [application info];
        supportsMultiwindow = [info3 supportsMultiwindow];
        isSystemApplication = [application isSystemApplication];
        isInternalApplication = [application isInternalApplication];
        info4 = [application info];
        BYTE5(v61) = v10;
        BYTE4(v61) = v73;
        BYTE3(v61) = [info4 isBeta];
        BYTE2(v61) = isInternalApplication;
        BYTE1(v61) = isSystemApplication;
        LOBYTE(v61) = supportsMultiwindow;
        v59 = v55;
        v60 = displayName;
        v25 = [v59 composedShortcutsForApplicationWithBundleIdentifier:applicationBundleID2 iconDisplayName:displayName staticItems:staticApplicationShortcutItems dynamicItems:dynamicApplicationShortcutItems applicationItemID:unsignedIntegerValue numberOfDisplayItemsInSwitcher:v74 supportsMultipleWindows:v61 isSystemApplication:v81 isInternalApplication:? isApplicationInBeta:? isApplicationHidden:? iconManagerAllowsEditing:? removeStyle:?];

        if (v71)
        {
        }

        applicationPlaceholder = v76;
        displayName2 = v72;
        if (!v80)
        {
        }

        applicationItemID = v75;
        goto LABEL_10;
      }

      if (!isCloudDemoted)
      {
        v25 = 0;
        goto LABEL_11;
      }
    }

    applicationPlaceholderController = [(SBHomeScreenController *)self applicationPlaceholderController];
    [applicationPlaceholderController placeholdersByDisplayID];
    v15 = v79 = application;
    v77 = [v15 count] > 1;

    canBeShared = [applicationPlaceholder canBeShared];
    selfCopy = self;
    v18 = location;
    v19 = MEMORY[0x277D661A8];
    applicationBundleID2 = [applicationPlaceholder applicationBundleID];
    displayName2 = [icon displayName];
    applicationItemID = [applicationPlaceholder applicationItemID];
    unsignedIntegerValue2 = [applicationItemID unsignedIntegerValue];
    LOBYTE(v62) = canBeShared;
    application = v79;
    LOBYTE(v61) = v10;
    v24 = v19;
    location = v18;
    self = selfCopy;
    v25 = [v24 composedShortcutsForDownloadingApplicationWithBundleIdentifier:applicationBundleID2 iconDisplayName:displayName2 applicationItemID:unsignedIntegerValue2 canModifyDownloadState:1 prioritizationIsAvailable:v77 downloadingInformationAgent:applicationPlaceholder iconManagerAllowsEditing:v61 removeStyle:v81 canShare:v62];
LABEL_10:

LABEL_11:
    managerCopy = v82;
    goto LABEL_36;
  }

  if ([icon isBookmarkIcon])
  {
    v26 = MEMORY[0x277D661A8];
    v27 = icon;
    displayName3 = [v27 displayName];
    v25 = [v26 composedShortcutsForBookmarkIcon:v27 withDisplayName:displayName3 iconManagerAllowsEditing:v10 removeStyle:v11];

    goto LABEL_36;
  }

  if ([icon isFolderIcon])
  {
    v29 = objc_alloc_init(SBForceTouchAppIconInfoProvider);
    v30 = MEMORY[0x277D661A8];
    iconManager = [(SBHomeScreenController *)self iconManager];
    [iconManager iconImageCache];
    v33 = v32 = v11;
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __74__SBHomeScreenController_iconManager_applicationShortcutItemsForIconView___block_invoke;
    v84[3] = &unk_2783C25B0;
    v85 = v29;
    applicationShortcutItems = v29;
    v25 = [v30 composedShortcutsForFolderIcon:icon iconImageCache:v33 iconManagerAllowsEditing:v10 removeStyle:v32 badgeViewGenerator:v84];
  }

  else
  {
    if (![icon isWidgetIcon])
    {
      v25 = 0;
      goto LABEL_36;
    }

    customIconImageViewController = [viewCopy customIconImageViewController];
    v36 = objc_opt_respondsToSelector();

    if (v36)
    {
      customIconImageViewController2 = [v83 customIconImageViewController];
      applicationShortcutItems = [customIconImageViewController2 applicationShortcutItems];
    }

    else
    {
      applicationShortcutItems = 0;
    }

    v25 = [MEMORY[0x277D661A8] composedShortcutsForWidgetIcon:icon additionalApplicationShortcutItems:applicationShortcutItems widgetIconSupportsConfiguration:objc_msgSend(v83 iconManagerAllowsEditing:"supportsConfigurationCard") widgetSettings:{v10, self->_widgetSettings}];
  }

LABEL_36:
  v47 = SBLogIcon();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy2 = self;
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

- (BOOL)iconManager:(id)manager shouldActivateApplicationShortcutItem:(id)item atIndex:(unint64_t)index forIconView:(id)view
{
  v84 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  itemCopy = item;
  viewCopy = view;
  icon = [viewCopy icon];
  type = [itemCopy type];
  if (([type isEqualToString:*MEMORY[0x277D66818]] & 1) != 0 || (objc_msgSend(type, "isEqualToString:", *MEMORY[0x277D66838]) & 1) != 0 || (objc_msgSend(type, "isEqualToString:", *MEMORY[0x277D66810]) & 1) != 0 || (objc_msgSend(type, "isEqualToString:", *MEMORY[0x277D66840]) & 1) != 0 || objc_msgSend(type, "isEqualToString:", *MEMORY[0x277D66820]))
  {
    [managerCopy iconCloseBoxTapped:viewCopy];
LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  if ([type isEqualToString:*MEMORY[0x277D667B8]] && objc_msgSend(viewCopy, "supportsConfigurationCard"))
  {
    [viewCopy presentConfigurationCard];
    goto LABEL_7;
  }

  if ([type isEqualToString:*MEMORY[0x277D667B0]] && objc_msgSend(viewCopy, "supportsStackConfigurationCard"))
  {
    [viewCopy presentStackConfigurationCard];
    goto LABEL_7;
  }

  if ([type isEqualToString:*MEMORY[0x277D667C0]])
  {
    iconShareSheetManager2 = [MEMORY[0x277CBEBC0] URLWithString:@"tap-to-radar://new?ComponentID=1083491&ComponentName=Proactive%20Stacks&ComponentVersion=UI&Title=Stack%20rotation%20feedback:&Classification=UI%2FUsability&Description=Give%20details%20here..."];
    SBWorkspaceActivateApplicationFromURL(iconShareSheetManager2, 0, 0);
LABEL_21:

    goto LABEL_7;
  }

  if ([type isEqualToString:*MEMORY[0x277D667D8]])
  {
    v20 = objc_opt_class();
    icon2 = [viewCopy icon];
    v22 = SBSafeCast(v20, icon2);

    [managerCopy hideSuggestedWidgetFromStack:v22];
LABEL_28:

    goto LABEL_7;
  }

  if ([type isEqualToString:*MEMORY[0x277D667D0]])
  {
    v23 = objc_opt_class();
    icon3 = [viewCopy icon];
    v22 = SBSafeCast(v23, icon3);

    [managerCopy hideSiriSuggestionOnWidgetFromStack:v22];
    goto LABEL_28;
  }

  if ([type isEqualToString:*MEMORY[0x277D66760]])
  {
    v25 = objc_opt_class();
    icon4 = [viewCopy icon];
    v22 = SBSafeCast(v25, icon4);

    [managerCopy addSuggestedActiveWidgetToStack:v22];
    goto LABEL_28;
  }

  if (([icon isWidgetIcon] & 1) != 0 || objc_msgSend(icon, "isApplicationIcon"))
  {
    if ([type isEqualToString:*MEMORY[0x277D667A0]])
    {
      v27 = *MEMORY[0x277D66788];
LABEL_37:
      if ([type isEqualToString:v27])
      {
        v29 = MEMORY[0x277D66518];
      }

      else if ([type isEqualToString:*MEMORY[0x277D66780]])
      {
        v29 = MEMORY[0x277D66510];
      }

      else if ([type isEqualToString:*MEMORY[0x277D66798]])
      {
        v29 = MEMORY[0x277D66528];
      }

      else
      {
        v33 = [type isEqualToString:*MEMORY[0x277D66790]];
        v29 = MEMORY[0x277D66548];
        if (v33)
        {
          v29 = MEMORY[0x277D66520];
        }
      }

      iconShareSheetManager2 = *v29;
      if ([icon isWidgetIcon])
      {
        [managerCopy changeSizeOfWidgetIcon:icon toSizeClass:iconShareSheetManager2];
      }

      else
      {
        [managerCopy replaceAppIcon:icon withWidgetOfSize:iconShareSheetManager2];
      }

      goto LABEL_21;
    }

    v28 = [type isEqualToString:*MEMORY[0x277D66790]];
    v27 = *MEMORY[0x277D66788];
    if ((v28 & 1) != 0 || ([type isEqualToString:*MEMORY[0x277D66788]] & 1) != 0 || (objc_msgSend(type, "isEqualToString:", *MEMORY[0x277D66780]) & 1) != 0 || objc_msgSend(type, "isEqualToString:", *MEMORY[0x277D66798]))
    {
      goto LABEL_37;
    }
  }

  if ([icon isWidgetIcon] && (objc_msgSend(icon, "isWidgetStackIcon") & 1) == 0 && objc_msgSend(type, "isEqualToString:", *MEMORY[0x277D667A8]))
  {
    [managerCopy replaceWidgetIconWithAppIcon:icon];
    goto LABEL_7;
  }

  if ([type isEqualToString:*MEMORY[0x277D66830]])
  {
    [viewCopy startForbiddingEditingModeWithReason:@"SBIconViewForbidEditingModeBecauseWeAreAnimatingTheContextMenuOutButWantEditingToStateImmediately"];
    [managerCopy setEditing:1 fromIconView:viewCopy];
    objc_initWeak(buf, viewCopy);
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __96__SBHomeScreenController_iconManager_shouldActivateApplicationShortcutItem_atIndex_forIconView___block_invoke;
    v72[3] = &unk_2783A8C68;
    objc_copyWeak(&v73, buf);
    [viewCopy performAfterContextMenusDismissUsingBlock:v72];
    objc_destroyWeak(&v73);
    objc_destroyWeak(buf);
    goto LABEL_7;
  }

  if ([icon isApplicationIcon])
  {
    v64 = icon;
    if ([type isEqualToString:*MEMORY[0x277D66848]])
    {
      windowSceneManager = [SBApp windowSceneManager];
      activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];
      _fbsDisplayConfiguration = [activeDisplayWindowScene _fbsDisplayConfiguration];
      v31 = +[SBApplicationMultiwindowService sharedInstance];
      applicationBundleID = [v64 applicationBundleID];
      [v31 triggerShowAllWindowsForApplicationBundleIdentifier:applicationBundleID displayConfiguration:_fbsDisplayConfiguration];
    }

    else if ([type isEqualToString:*MEMORY[0x277D66828]])
    {
      windowSceneManager2 = [SBApp windowSceneManager];
      activeDisplayWindowScene2 = [windowSceneManager2 activeDisplayWindowScene];
      switcherController = [activeDisplayWindowScene2 switcherController];

      windowScene = [switcherController windowScene];
      _fbsDisplayConfiguration2 = [windowScene _fbsDisplayConfiguration];
      application = [v64 application];
      sceneManager = [windowScene sceneManager];
      _fbsDisplayIdentity = [windowScene _fbsDisplayIdentity];
      v38 = [SBDeviceApplicationSceneEntity newEntityWithApplication:application sceneHandleProvider:sceneManager displayIdentity:_fbsDisplayIdentity];
      v39 = +[SBWorkspace mainWorkspace];
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __96__SBHomeScreenController_iconManager_shouldActivateApplicationShortcutItem_atIndex_forIconView___block_invoke_2;
      v70[3] = &unk_2783A98F0;
      v71 = v38;
      v40 = v38;
      [v39 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration2 builder:v70];
    }

    else if ([type isEqualToString:*MEMORY[0x277D667F0]])
    {
      [v64 prioritizeDownload];
    }

    else if ([type isEqualToString:*MEMORY[0x277D667E8]])
    {
      [v64 pauseDownload];
    }

    else if ([type isEqualToString:*MEMORY[0x277D66800]])
    {
      [v64 resumeDownload];
    }

    else if ([type isEqualToString:*MEMORY[0x277D66778]])
    {
      [v64 cancelDownload];
    }

    else if ([type isEqualToString:*MEMORY[0x277D66808]])
    {
      iconShareSheetManager = [managerCopy iconShareSheetManager];
      [iconShareSheetManager presentShareSheetForIconView:viewCopy];
    }

    else
    {
      v49 = *MEMORY[0x277D667E0];
      if (([type isEqualToString:*MEMORY[0x277D667E0]] & 1) != 0 || objc_msgSend(type, "isEqualToString:", *MEMORY[0x277D66858]))
      {
        [v64 changeLockedStatusToLocked:{objc_msgSend(type, "isEqualToString:", v49)}];
      }

      else
      {
        v50 = *MEMORY[0x277D667C8];
        if (([type isEqualToString:*MEMORY[0x277D667C8]] & 1) != 0 || objc_msgSend(type, "isEqualToString:", *MEMORY[0x277D66850]))
        {
          [v64 changeHiddenStatusToHidden:{objc_msgSend(type, "isEqualToString:", v50)}];
        }

        else
        {
          if (![type isEqualToString:*MEMORY[0x277D66758]])
          {
            v15 = 1;
            goto LABEL_88;
          }

          v51 = MEMORY[0x277CEBE80];
          applicationBundleID2 = [v64 applicationBundleID];
          v53 = [v51 applicationWithBundleIdentifier:applicationBundleID2];

          if ([v53 isHidden])
          {
            rootViewController = [(SBHomeScreenController *)self rootViewController];
            v68[0] = MEMORY[0x277D85DD0];
            v68[1] = 3221225472;
            v68[2] = __96__SBHomeScreenController_iconManager_shouldActivateApplicationShortcutItem_atIndex_forIconView___block_invoke_4;
            v68[3] = &unk_2783A92D8;
            v68[4] = self;
            v69 = v64;
            v55 = _SBUnhideProtectedAppAlertControllerFor(v53, v68);
            [rootViewController presentViewController:v55 animated:1 completion:0];
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

  if ([type isEqualToString:*MEMORY[0x277D66768]])
  {
    userInfo = [itemCopy userInfo];
    iconShareSheetManager2 = [userInfo objectForKey:*MEMORY[0x277D66770]];

    if (iconShareSheetManager2)
    {
      v35 = [MEMORY[0x277CBEBC0] URLWithString:iconShareSheetManager2];
      SBWorkspaceActivateApplicationFromURL(v35, 0, 0);
    }

    goto LABEL_21;
  }

  if ([icon isBookmarkIcon])
  {
    if (![icon displaysShareBookmarkShortcutItem] || !objc_msgSend(type, "isEqualToString:", *MEMORY[0x277D66808]))
    {
      goto LABEL_7;
    }

    iconShareSheetManager2 = [managerCopy iconShareSheetManager];
    [iconShareSheetManager2 presentShareSheetForIconView:viewCopy];
    goto LABEL_21;
  }

  if ([icon isFolderIcon])
  {
    if ([type isEqualToString:*MEMORY[0x277D66860]])
    {
      applicationController = [(SBHomeScreenController *)self applicationController];
      bundleIdentifierToLaunch = [itemCopy bundleIdentifierToLaunch];
      v43 = [applicationController applicationWithBundleIdentifier:bundleIdentifierToLaunch];

      SBWorkspaceActivateApplication(v43);
    }

    else if ([type isEqualToString:*MEMORY[0x277D667F8]])
    {
      location = [viewCopy location];
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __96__SBHomeScreenController_iconManager_shouldActivateApplicationShortcutItem_atIndex_forIconView___block_invoke_5;
      v65[3] = &unk_2783A8BF0;
      v66 = managerCopy;
      v67 = viewCopy;
      [v66 openFolderIcon:icon location:location animated:1 withCompletion:v65];
    }

    goto LABEL_7;
  }

  customIconImageViewController = [viewCopy customIconImageViewController];
  v45 = objc_opt_respondsToSelector();

  if (v45)
  {
    customIconImageViewController2 = [viewCopy customIconImageViewController];
    [customIconImageViewController2 didSelectApplicationShortcutItem:itemCopy];
  }

  v15 = 1;
LABEL_8:
  v16 = SBLogIcon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219010;
    v17 = @"NO";
    selfCopy = self;
    v76 = 2114;
    if (v15)
    {
      v17 = @"YES";
    }

    v77 = itemCopy;
    v78 = 2048;
    indexCopy = index;
    v80 = 2114;
    v81 = viewCopy;
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

- (BOOL)iconManager:(id)manager shouldGroupSystemApplicationShortcutItemsForIconView:(id)view
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

- (id)iconManager:(id)manager applicationShortcutSectionOrderingForIconView:(id)view
{
  viewCopy = view;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    location = [viewCopy location];
    v8 = SBIconLocationGroupContainsLocation();

    if (v8)
    {
      v9 = &unk_28336EF88;
    }

    else
    {
      icon = [viewCopy icon];
      isWidgetIcon = [icon isWidgetIcon];

      icon2 = [viewCopy icon];
      isWidgetStackIcon = [icon2 isWidgetStackIcon];

      if ((isWidgetIcon | isWidgetStackIcon))
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

- (unint64_t)iconManager:(id)manager supportedMultitaskingShortcutActionsForIconView:(id)view
{
  icon = [view icon];
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2 || ![icon isApplicationIcon])
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom] != 1)
  {
    v6 = 0;
    goto LABEL_9;
  }

  isApplicationIcon = [icon isApplicationIcon];

  if (isApplicationIcon)
  {
LABEL_7:
    currentDevice = [icon applicationBundleID];
    v6 = _SBHMultitaskingApplicationSupportedShortcutActionMaskFromSBSMask([(SBHomeScreenController *)self supportedMultitaskingShortcutActionsForBundleIdentifier:currentDevice]);
LABEL_9:

    goto LABEL_10;
  }

LABEL_4:
  v6 = 0;
LABEL_10:

  return v6;
}

- (unint64_t)supportedMultitaskingShortcutActionsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  applicationController = [(SBHomeScreenController *)self applicationController];
  v6 = [applicationController applicationWithBundleIdentifier:identifierCopy];

  if (v6)
  {
    windowSceneManager = [SBApp windowSceneManager];
    activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];
    switcherController = [activeDisplayWindowScene switcherController];

    v10 = [switcherController canPerformKeyboardShortcutAction:11 forBundleIdentifier:identifierCopy orSceneIdentifier:0];
    if ([switcherController canPerformKeyboardShortcutAction:13 forBundleIdentifier:identifierCopy orSceneIdentifier:0])
    {
      v10 |= 6uLL;
    }

    if ([switcherController canPerformKeyboardShortcutAction:3 forBundleIdentifier:identifierCopy orSceneIdentifier:0])
    {
      v10 |= 8uLL;
    }

    if ([switcherController canPerformKeyboardShortcutAction:18 forBundleIdentifier:identifierCopy orSceneIdentifier:0])
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

- (BOOL)iconManager:(id)manager shouldPreviewOverlapMenuForIconView:(id)view
{
  viewCopy = view;
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom)
    {
      goto LABEL_7;
    }
  }

  icon = [viewCopy icon];
  isWidgetIcon = [icon isWidgetIcon];

  if (!isWidgetIcon)
  {
    v9 = 1;
    goto LABEL_9;
  }

LABEL_7:
  v9 = 0;
LABEL_9:

  return v9;
}

- (int64_t)iconManager:(id)manager preferredMenuElementOrderForIconView:(id)view
{
  location = [view location];
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
  iconManager = [(SBHomeScreenController *)self iconManager];
  if ([iconManager isShowingSpotlightOrLeadingCustomView])
  {
    [iconManager dismissSpotlightAnimated:1 completionHandler:0];
  }

  v3 = +[SBMainWorkspace sharedInstance];
  transientOverlayPresentationManager = [v3 transientOverlayPresentationManager];

  if ([transientOverlayPresentationManager hasActivePresentation])
  {
    v5 = +[SBTransientOverlayDismissalRequest dismissalRequestForAllViewControllers];
    [transientOverlayPresentationManager performDismissalRequest:v5];
  }

  if ([(SBHomeScreenController *)self isModalAppLibrarySupported])
  {
    windowScene = [(SBHomeScreenController *)self windowScene];
    modalLibraryController = [windowScene modalLibraryController];
    libraryViewController = [modalLibraryController libraryViewController];
  }

  else
  {
    libraryViewController = [(SBHomeScreenController *)self overlayLibraryViewController];
  }

  [libraryViewController forcedSearchTextFieldNoneditable:1];
  [iconManager setDisablesScrollingToLastIconPageForLibraryDismissal:1];
  [(SBHomeScreenController *)self dismissHomeScreenOverlaysAnimated:1];
  [iconManager setDisablesScrollingToLastIconPageForLibraryDismissal:0];
  [libraryViewController forcedSearchTextFieldNoneditable:0];
}

- (void)addIconToHomeScreen:(id)screen
{
  screenCopy = screen;
  iconManager = [(SBHomeScreenController *)self iconManager];
  [iconManager addNewIconToDesignatedLocation:screenCopy options:91];

  [(SBHomeScreenController *)self dismissHomeScreenOverlaysForAddingNewIcon];
}

- (void)_forceTouchControllerWillPresent:(id)present
{
  presentCopy = present;
  v5 = objc_opt_class();
  object = [presentCopy object];

  v11 = SBSafeCast(v5, object);

  if (v11)
  {
    windowScene = [(SBHomeScreenController *)self windowScene];
    floatingDockController = [windowScene floatingDockController];
    if ([floatingDockController isFloatingDockPresented])
    {
      location = [v11 location];
      if (([location isEqual:*MEMORY[0x277D66690]] & 1) == 0)
      {
        location2 = [v11 location];
        [location2 isEqual:@"SBIconLocationFloatingDockSuggestions"];
      }
    }
  }
}

- (id)_aggregateLoggingAppKeyForIcon:(id)icon
{
  iconCopy = icon;
  if ([iconCopy isApplicationIcon])
  {
    v4 = iconCopy;
    application = [v4 application];
    applicationPlaceholder = [v4 applicationPlaceholder];
    if (([application isSystemApplication] & 1) != 0 || objc_msgSend(application, "isInternalApplication"))
    {
      bundleIdentifier = [application bundleIdentifier];
    }

    else if (application)
    {
      bundleIdentifier = @"thirdParty";
    }

    else if (applicationPlaceholder)
    {
      applicationBundleID = [v4 applicationBundleID];
      v10 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:applicationBundleID allowPlaceholder:1 error:0];
      v11 = v10;
      if (v10)
      {
        typeForInstallMachinery = [v10 typeForInstallMachinery];
        v13 = [typeForInstallMachinery isEqualToString:@"User"];

        if (v13)
        {
          bundleIdentifier = @"thirdParty";
        }

        else
        {
          bundleIdentifier = applicationBundleID;
        }
      }

      else
      {
        bundleIdentifier = @"unknown";
      }
    }

    else
    {
      bundleIdentifier = @"unknown";
    }
  }

  else if ([iconCopy isBookmarkIcon])
  {
    bundleIdentifier = @"bookmark";
  }

  else if ([iconCopy isFolderIcon])
  {
    bundleIdentifier = @"folder";
  }

  else
  {
    bundleIdentifier = @"unknown";
  }

  return bundleIdentifier;
}

- (void)_styleEditorWillPresent:(id)present
{
  windowScene = [(SBHomeScreenController *)self windowScene];
  zStackResolver = [windowScene zStackResolver];
  v6 = [zStackResolver acquireParticipantWithIdentifier:6 delegate:self];
  zStackParticipant = self->_zStackParticipant;
  self->_zStackParticipant = v6;

  v8 = self->_zStackParticipant;

  [(SBHomeScreenController *)self zStackParticipantDidChange:v8];
}

- (void)_styleEditorDidDismiss:(id)dismiss
{
  [(SBFZStackParticipant *)self->_zStackParticipant invalidate];
  zStackParticipant = self->_zStackParticipant;
  self->_zStackParticipant = 0;
}

- (void)_colorDropperWillPresent:(id)present
{
  presentCopy = present;
  windowScene = [(SBHomeScreenController *)self windowScene];
  floatingDockController = [windowScene floatingDockController];
  colorPickerInterfactionFloatingDockBehaviorAssertion = self->_colorPickerInterfactionFloatingDockBehaviorAssertion;
  if (colorPickerInterfactionFloatingDockBehaviorAssertion)
  {
    [(SBFloatingDockBehaviorAssertion *)colorPickerInterfactionFloatingDockBehaviorAssertion invalidate];
  }

  v8 = [SBFloatingDockBehaviorAssertion alloc];
  name = [presentCopy name];

  v10 = [(SBFloatingDockBehaviorAssertion *)v8 initWithFloatingDockController:floatingDockController visibleProgress:1 animated:0 gesturePossible:0 atLevel:name reason:0 withCompletion:0.0];
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

- (void)_colorDropperDismissed:(id)dismissed
{
  [(SBFloatingDockBehaviorAssertion *)self->_colorPickerInterfactionFloatingDockBehaviorAssertion invalidate];
  colorPickerInterfactionFloatingDockBehaviorAssertion = self->_colorPickerInterfactionFloatingDockBehaviorAssertion;
  self->_colorPickerInterfactionFloatingDockBehaviorAssertion = 0;

  [(BSInvalidatable *)self->_duckWallpaperDimmingAssertion invalidate];
  duckWallpaperDimmingAssertion = self->_duckWallpaperDimmingAssertion;
  self->_duckWallpaperDimmingAssertion = 0;

  [(SBHomeScreenController *)self _endDisablingAllOrientationChangesForReason:@"SBIconControllerDisableRotationForStyleColorDropperReason"];
}

- (void)_startSpotlightInteractiveGestureTransactionForGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([MEMORY[0x277D65D28] enableFloatingWindow])
  {
    policyAggregator = [(SBHomeScreenController *)self policyAggregator];
    v6 = [policyAggregator allowsCapability:9];

    if (v6)
    {
      if (!self->_spotlightInteractiveGestureTransaction)
      {
        v7 = SBApp;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __81__SBHomeScreenController__startSpotlightInteractiveGestureTransactionForGesture___block_invoke;
        v11[3] = &unk_2783ACE58;
        v12 = gestureCopy;
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __81__SBHomeScreenController__startSpotlightInteractiveGestureTransactionForGesture___block_invoke_2;
        v8[3] = &unk_2783C2600;
        v9 = v12;
        selfCopy = self;
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

- (void)searchGesture:(id)gesture startedShowing:(BOOL)showing
{
  if (showing)
  {
    [(SBHomeScreenController *)self _startSpotlightInteractiveGestureTransactionForGesture:gesture];
  }
}

- (void)searchGesture:(id)gesture changedPercentComplete:(double)complete
{
  gestureCopy = gesture;
  if ([gestureCopy isTracking])
  {
    if (self->_spotlightInteractiveGestureTransaction || ([(SBHomeScreenController *)self _startSpotlightInteractiveGestureTransactionForGesture:gestureCopy], self->_spotlightInteractiveGestureTransaction))
    {
      [objc_opt_class() searchHeaderHeight];
      [(SBSpotlightTransientOverlayInteractiveGestureTransaction *)self->_spotlightInteractiveGestureTransaction updatePresentationWithProgress:complete translation:v6 * complete];
    }
  }
}

- (void)searchGesture:(id)gesture endedGesture:(BOOL)endedGesture
{
  spotlightInteractiveGestureTransaction = self->_spotlightInteractiveGestureTransaction;
  if (spotlightInteractiveGestureTransaction)
  {
    [(SBSpotlightTransientOverlayInteractiveGestureTransaction *)spotlightInteractiveGestureTransaction endPresentation:endedGesture];
  }
}

- (void)publisher:(id)publisher didUpdateLayout:(id)layout withTransition:(id)transition
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  elements = [layout elements];
  v6 = [elements countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(elements);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if ([v12 isSpringBoardElement])
        {
          identifier = [v12 identifier];
          v14 = [identifier isEqualToString:v10];

          if (v14)
          {
            v8 |= 0x10uLL;
          }

          else
          {
            identifier2 = [v12 identifier];
            v16 = [identifier2 isEqualToString:@"com.apple.InCallService"];

            if (v16)
            {
              v8 |= 0x20uLL;
            }
          }
        }
      }

      v7 = [elements countByEnumeratingWithState:&v19 objects:v23 count:16];
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
  homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
  iconContentView = [homeScreenViewController iconContentView];

  return iconContentView;
}

- (void)alertItemsController:(id)controller willActivateAlertItem:(id)item
{
  v5 = SBLogIconDragging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "alert item will activate", v7, 2u);
  }

  iconManager = [(SBHomeScreenController *)self iconManager];
  [iconManager cancelAllDrags];
}

- (void)assistantWillAppear:(id)appear windowScene:(id)scene
{
  if ([scene isMainDisplayWindowScene])
  {
    v5 = SBLogIconDragging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "assistant will appear", v8, 2u);
    }

    iconManager = [(SBHomeScreenController *)self iconManager];
    [iconManager setEditing:0];

    iconManager2 = [(SBHomeScreenController *)self iconManager];
    [iconManager2 cancelAllDrags];
  }
}

- (void)iconManager:(id)manager willDestroyRootFolderController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy removePageStateObserver:self];
  [controllerCopy setAccessoryViewControllerDelegate:0];

  homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
  iconContentView = [homeScreenViewController iconContentView];
  v7 = objc_opt_class();
  v8 = iconContentView;
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
  spotlightViewController = [(SBHomeScreenController *)self spotlightViewController];
  [spotlightViewController invalidate];

  [(SBHomeScreenController *)self setSpotlightViewController:0];
}

- (void)iconManager:(id)manager willDestroyRootViewController:(id)controller
{
  controllerCopy = controller;
  homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
  iconContentView = [homeScreenViewController iconContentView];
  v7 = objc_opt_class();
  v8 = iconContentView;
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
  [controllerCopy removeFromParentViewController];

  [(SBHomeScreenController *)self setRootViewController:0];
}

- (void)iconManager:(id)manager willUseRootFolderControllerConfiguration:(id)configuration
{
  managerCopy = manager;
  configurationCopy = configuration;
  if (MEMORY[0x223D6D4D0]())
  {
    if (SBHHomeScreenSearchAffordanceEnabled() && (+[SBDefaults localDefaults](SBDefaults, "localDefaults"), v7 = objc_claimAutoreleasedReturnValue(), [v7 homeScreenDefaults], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "showsHomeScreenSearchAffordance"), v8, v7, v9))
    {
      v10 = objc_alloc_init(MEMORY[0x277D662A8]);
      legibilitySettings = [(SBHomeScreenController *)self legibilitySettings];
      [v10 setLegibilitySettings:legibilitySettings];

      [v10 setAccessibilityIdentifier:@"spotlight-pill"];
      [(SBHomeScreenController *)self setScrollAccessoryAuxiliaryView:v10];
      [configurationCopy setScrollAccessoryAuxiliaryView:v10];
      _newSearchPillBackgroundView = [(SBHomeScreenController *)self _newSearchPillBackgroundView];
      [configurationCopy setScrollAccessoryBackgroundView:_newSearchPillBackgroundView];
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
    rootSettings = [MEMORY[0x277D661A0] rootSettings];
    homeScreenPullToSearchSettings = [rootSettings homeScreenPullToSearchSettings];
    _identifierForSearchPresenter = [(SBHomeScreenController *)self _identifierForSearchPresenter];
    v19 = [(SBSearchPresenter *)v15 initWithSettings:homeScreenPullToSearchSettings identifier:_identifierForSearchPresenter];

    [(SBSearchPresenter *)v19 setSearchPresenterDelegate:self];
    [(SBSearchPresenter *)v19 setUsesTransitionDistanceAsStartOffset:1];
    [(SBHomeScreenController *)self setSearchPresenter:v19];
    [configurationCopy setSearchPresenter:v19];
    [configurationCopy setSearchPresentableViewController:v14];
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
    [configurationCopy setPullDownSearchViewController:v13];
  }

LABEL_10:
  if ([(SBHomeScreenController *)self _isCoplanarHomeScreenEnabled])
  {
    todayViewController = [(SBHomeScreenController *)self todayViewController];
    [configurationCopy setLeadingCustomViewController:todayViewController];

    overlayLibraryViewController = [(SBHomeScreenController *)self overlayLibraryViewController];
    [configurationCopy setTrailingCustomViewController:overlayLibraryViewController];

    overlayLibraryViewController2 = [(SBHomeScreenController *)self overlayLibraryViewController];
    [overlayLibraryViewController2 setPresenter:managerCopy];
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if ([(SBHomeScreenController *)self allowsHomeScreenOverlay])
    {
      [configurationCopy setIgnoresOverscrollOnFirstPageOrientations:30];
    }

    [configurationCopy setFolderPageManagementAllowedOrientations:30];
    [configurationCopy setShowsAddWidgetButtonWhileEditingAllowedOrientations:30];
    if ([(SBHomeScreenController *)self isFocusAllowedForIconManager:managerCopy])
    {
      [configurationCopy setAddsFocusGuidesForWrapping:1];
    }
  }

  else
  {
    if (![(SBHomeScreenController *)self _isCoplanarHomeScreenEnabled])
    {
      [configurationCopy setIgnoresOverscrollOnFirstPageOrientations:30];
      if ([(SBHomeScreenController *)self isAppLibrarySupported])
      {
        [configurationCopy setIgnoresOverscrollOnLastPageOrientations:6];
      }
    }

    [configurationCopy setFolderPageManagementAllowedOrientations:6];
    [configurationCopy setShowsAddWidgetButtonWhileEditingAllowedOrientations:6];
  }

  [configurationCopy setUsesGlassGroup:0];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:SBIconControllerDidReconfigureChildControllersNotification object:self];
}

- (id)_newTodayViewControllerWithIconManager:(id)manager iconListModel:(id)model rootFolder:(id)folder location:(int64_t)location
{
  managerCopy = manager;
  folderCopy = folder;
  v11 = [SBTodayViewController alloc];
  listLayoutProvider = [managerCopy listLayoutProvider];
  v13 = [(SBHTodayViewController *)v11 initWithListLayoutProvider:listLayoutProvider iconViewProvider:managerCopy location:location];

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
  [(SBHTodayViewController *)v13 setRootFolder:folderCopy];

  [(SBHTodayViewController *)v13 setIconManager:managerCopy];
  -[SBHTodayViewController setEditing:](v13, "setEditing:", [managerCopy isEditing]);

  return v13;
}

- (void)iconManager:(id)manager didCreateRootFolderController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  [controllerCopy addPageStateObserver:self];
  [controllerCopy setAccessoryViewControllerDelegate:self];
  v6 = MEMORY[0x277D660D8];
  screen = [WeakRetained screen];
  animationWindow = [(SBHomeScreenController *)self animationWindow];
  homeScreenContentView = [(SBHomeScreenController *)self homeScreenContentView];
  v10 = [v6 contextWithScreen:screen animationWindow:animationWindow fallbackIconContainer:homeScreenContentView];
  [controllerCopy setAnimationContext:v10];

  searchGesture = [controllerCopy searchGesture];
  [searchGesture addObserver:self];

  if ([WeakRetained isContinuityDisplayWindowScene])
  {
    [controllerCopy setParallaxDisabled:1 forReason:@"Continuity"];
  }
}

- (void)iconManager:(id)manager didCreateRootViewController:(id)controller
{
  controllerCopy = controller;
  [(SBHomeScreenController *)self updateHomeScreenTraitOverridesForViewController:controllerCopy];
  v6 = *MEMORY[0x277D76620];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __66__SBHomeScreenController_iconManager_didCreateRootViewController___block_invoke;
  v21 = &unk_2783A92D8;
  selfCopy = self;
  v7 = controllerCopy;
  v23 = v7;
  [v6 _performBlockAfterCATransactionCommits:&v18];
  view = [v7 view];
  homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
  iconContentView = [homeScreenViewController iconContentView];
  v11 = objc_opt_class();
  v12 = iconContentView;
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

  [homeScreenViewController bs_addChildViewController:v7 withSuperview:v14];
  [v14 setContentView:view];
  [v14 sendSubviewToBack:view];

  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  statusBarManager = [WeakRetained statusBarManager];
  [statusBarManager updateHomeScreenStatusBarLegibility];

  [(SBHomeScreenController *)self setRootViewController:v7];
  searchPresentableViewController = [(SBHomeScreenController *)self searchPresentableViewController];
  [searchPresentableViewController invalidateSearchAffordanceView];
}

- (int64_t)interfaceOrientationForIconManager:(id)manager
{
  homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
  effectiveOrientation = [homeScreenViewController effectiveOrientation];

  return effectiveOrientation;
}

- (unint64_t)allowedInterfaceOrientationsForIconManager:(id)manager
{
  homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
  allowedInterfaceOrientations = [homeScreenViewController allowedInterfaceOrientations];

  return allowedInterfaceOrientations;
}

- (unint64_t)possibleInterfaceOrientationsForIconManager:(id)manager
{
  homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
  possibleInterfaceOrientations = [homeScreenViewController possibleInterfaceOrientations];

  return possibleInterfaceOrientations;
}

- (BOOL)isRootFolderContentVisibleForIconManager:(id)manager
{
  _currentMainDisplayLayoutState = [(SBHomeScreenController *)self _currentMainDisplayLayoutState];
  v4 = [_currentMainDisplayLayoutState unlockedEnvironmentMode] == 1;

  return v4;
}

- (BOOL)isEditingAllowedForIconManager:(id)manager
{
  policyAggregator = [(SBHomeScreenController *)self policyAggregator];
  v4 = [policyAggregator allowsCapability:18];

  return v4;
}

- (BOOL)iconManager:(id)manager isPartialEditingAllowedForIconLocation:(id)location
{
  locationCopy = location;
  _iconController = [(SBHomeScreenController *)self _iconController];
  hasRestrictedEnforcedLayout = [_iconController hasRestrictedEnforcedLayout];

  if (hasRestrictedEnforcedLayout)
  {
    v8 = SBIconLocationGroupContainsLocation();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)iconManagerEditingDidChange:(id)change
{
  v34 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  homeScreenOverlayController = [(SBHomeScreenController *)self homeScreenOverlayController];
  [homeScreenOverlayController updateExtraButtonVisibilityAnimated:1];

  if ([changeCopy isEditing])
  {
    v23 = changeCopy;
    [SBApp windowSceneManager];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v22 = v31 = 0u;
    connectedWindowScenes = [v22 connectedWindowScenes];
    v7 = [connectedWindowScenes countByEnumeratingWithState:&v28 objects:v33 count:16];
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
            objc_enumerationMutation(connectedWindowScenes);
          }

          v11 = *(*(&v28 + 1) + 8 * i);
          if ([v11 isExternalDisplayWindowScene])
          {
            floatingDockController = [v11 floatingDockController];
            v13 = [[SBFloatingDockBehaviorAssertion alloc] initWithFloatingDockController:floatingDockController visibleProgress:1 animated:0 gesturePossible:1 atLevel:@"hideFloatingDockOnExternalDisplayForHomeScreenEditMode" reason:0 withCompletion:0.0];
            floatingDockBehaviorAssertions = [(SBHomeScreenController *)self floatingDockBehaviorAssertions];
            if (floatingDockBehaviorAssertions)
            {
              v15 = floatingDockBehaviorAssertions;
              v16 = [floatingDockBehaviorAssertions setByAddingObject:v13];
            }

            else
            {
              v16 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v13, 0}];
            }

            [(SBHomeScreenController *)self setFloatingDockBehaviorAssertions:v16];
          }
        }

        v8 = [connectedWindowScenes countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v8);
    }

    changeCopy = v23;
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    floatingDockBehaviorAssertions2 = [(SBHomeScreenController *)self floatingDockBehaviorAssertions];
    v18 = [floatingDockBehaviorAssertions2 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
            objc_enumerationMutation(floatingDockBehaviorAssertions2);
          }

          [*(*(&v24 + 1) + 8 * j) invalidate];
        }

        v19 = [floatingDockBehaviorAssertions2 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v19);
    }

    [(SBHomeScreenController *)self setFloatingDockBehaviorAssertions:0];
  }
}

- (void)iconManager:(id)manager willUseIconImageCache:(id)cache
{
  v18 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  userSessionController = [SBApp userSessionController];
  sessionType = [userSessionController sessionType];

  if (sessionType == 2)
  {
    [cacheCopy setPoolingBypassCount:200];
  }

  _libraryViewControllers = [(SBHomeScreenController *)self _libraryViewControllers];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [_libraryViewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(_libraryViewControllers);
        }

        [*(*(&v13 + 1) + 8 * v12++) setIconImageCache:cacheCopy];
      }

      while (v10 != v12);
      v10 = [_libraryViewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)iconManagerListLayoutProviderDidChange:(id)change
{
  v17 = *MEMORY[0x277D85DE8];
  _libraryViewControllers = [(SBHomeScreenController *)self _libraryViewControllers];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [_libraryViewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(_libraryViewControllers);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        _sbWindowScene = [v9 _sbWindowScene];
        v11 = [(SBHomeScreenController *)self _appLibraryListLayoutProviderForWindowScene:_sbWindowScene];
        [v9 setListLayoutProvider:v11];
      }

      v6 = [_libraryViewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)iconManagerDidFinishInstallForIcon:(id)icon
{
  _currentMainDisplayLayoutState = [(SBHomeScreenController *)self _currentMainDisplayLayoutState];
  unlockedEnvironmentMode = [_currentMainDisplayLayoutState unlockedEnvironmentMode];

  if (unlockedEnvironmentMode == 1)
  {

    [(SBHomeScreenController *)self _showInfoAlertIfNeeded:1];
  }
}

- (void)iconManager:(id)manager willPrepareIconViewForLaunch:(id)launch
{
  v20[3] = *MEMORY[0x277D85DE8];
  launchCopy = launch;
  delayedLaunchRequestTimer = [(SBHomeScreenController *)self delayedLaunchRequestTimer];
  [delayedLaunchRequestTimer invalidate];

  [(SBHomeScreenController *)self setDelayedLaunchRequestTimer:0];
  icon = [launchCopy icon];
  location = [launchCopy location];

  rootFolder = [(SBHomeScreenController *)self rootFolder];
  v10 = [rootFolder indexPathForIcon:icon];

  v11 = *MEMORY[0x277D67540];
  v20[0] = location;
  v12 = *MEMORY[0x277D67538];
  v19[0] = v11;
  v19[1] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(icon, "isFolderIcon")}];
  v20[1] = v13;
  v19[2] = *MEMORY[0x277D67530];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "indexAtPosition:", objc_msgSend(v10, "length") - 1)}];
  v20[2] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v16 = MEMORY[0x277D65DD0];
  v17 = v15;
  sharedInstance = [v16 sharedInstance];
  [sharedInstance emitEvent:9 withPayload:v17];
}

- (void)iconManager:(id)manager didReceiveTapOnLaunchDisabledIconView:(id)view
{
  v12 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  delayedLaunchRequestTimer = [(SBHomeScreenController *)self delayedLaunchRequestTimer];
  [delayedLaunchRequestTimer invalidate];

  [(SBHomeScreenController *)self setDelayedLaunchRequestTimer:0];
  v7 = SBLogIcon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    icon = [viewCopy icon];
    uniqueIdentifier = [icon uniqueIdentifier];
    v10 = 138412290;
    v11 = uniqueIdentifier;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Received tap on launch-disabled icon view '%@'", &v10, 0xCu);
  }

  kdebug_trace();
}

- (void)iconManager:(id)manager launchIconForIconView:(id)view withActions:(id)actions modifierFlags:(int64_t)flags
{
  v30 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  actionsCopy = actions;
  delayedLaunchRequestTimer = [(SBHomeScreenController *)self delayedLaunchRequestTimer];
  [delayedLaunchRequestTimer invalidate];

  [(SBHomeScreenController *)self setDelayedLaunchRequestTimer:0];
  icon = [viewCopy icon];
  if ([icon isApplicationIcon] && (objc_msgSend(icon, "application"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isAnyTerminationAssertionInEffect"), v13, v14))
  {
    v15 = SBLogIcon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      applicationBundleID = [icon applicationBundleID];
      *buf = 138412290;
      v29 = applicationBundleID;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Delaying launch of %@ because termination assertion is held", buf, 0xCu);
    }

    v17 = MEMORY[0x277CBEBB8];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __86__SBHomeScreenController_iconManager_launchIconForIconView_withActions_modifierFlags___block_invoke;
    v23 = &unk_2783C2628;
    selfCopy = self;
    v25 = viewCopy;
    v26 = actionsCopy;
    flagsCopy = flags;
    v18 = [v17 timerWithTimeInterval:0 repeats:&v20 block:1.0];
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [currentRunLoop addTimer:v18 forMode:*MEMORY[0x277CBE738]];

    [(SBHomeScreenController *)self setDelayedLaunchRequestTimer:v18];
  }

  else
  {
    [(SBHomeScreenController *)self _launchFromIconView:viewCopy withActions:actionsCopy modifierFlags:flags];
  }
}

- (void)iconManager:(id)manager launchIcon:(id)icon location:(id)location animated:(BOOL)animated completionHandler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  iconCopy = icon;
  locationCopy = location;
  handlerCopy = handler;
  if (![iconCopy isApplicationIcon])
  {
    v18 = 0;
    if (!handlerCopy)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v13 = iconCopy;
  application = [v13 application];
  applicationBundleID = [v13 applicationBundleID];
  v16 = applicationBundleID;
  if (!application)
  {
    if (applicationBundleID)
    {
      applicationController = [(SBHomeScreenController *)self applicationController];
      application = [applicationController applicationWithBundleIdentifier:v16];
    }

    else
    {
      application = 0;
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
    v35 = application;
    _os_log_fault_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_FAULT, "Fallback launch path: Trying to launch app icon: %@ (%@), found app: %@", buf, 0x20u);
  }

  v18 = application != 0;
  if (application)
  {
    [(SBHomeScreenController *)self userInterfaceController];
    v20 = v29 = v16;
    v21 = locationCopy;
    v22 = objc_alloc_init(SBActivationSettings);
    v23 = [MEMORY[0x277CBEB98] set];
    [v20 activateApplication:application fromIcon:v13 location:v21 activationSettings:v22 actions:v23];

    locationCopy = v21;
    v16 = v29;
    if (v29)
    {
      iconModel = [(SBHomeScreenController *)self iconModel];
      v25 = [iconModel applicationIconForBundleIdentifier:v29];

      if (v25 && v25 != v13)
      {
        rootFolder = [(SBHomeScreenController *)self rootFolder];
        v27 = [rootFolder indexPathForIcon:v13];
        if (v27)
        {
          v28 = [rootFolder iconAtIndexPath:v27];

          if (v28 != v25)
          {
            [rootFolder replaceIcon:v13 withIcon:v25];
          }
        }

        locationCopy = v21;
      }

      v16 = v29;
    }
  }

  if (handlerCopy)
  {
LABEL_20:
    handlerCopy[2](handlerCopy, v18);
  }

LABEL_21:
}

- (id)iconManager:(id)manager containerViewForPresentingContextMenuForIconView:(id)view
{
  viewCopy = view;
  homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
  v7 = [homeScreenViewController containerViewForPresentingContextMenuForIconView:viewCopy];

  return v7;
}

- (id)iconManager:(id)manager containerViewControllerForConfigurationOfIconView:(id)view
{
  location = [view location];
  homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
  if (SBIconLocationGroupContainsLocation())
  {
    v7 = homeScreenViewController;
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  if (SBIconLocationGroupContainsLocation())
  {
    v7 = [homeScreenViewController containerViewControllerForPresentingFromTodayViewControllerAllowingCoverSheet:0];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)iconManager:(id)manager containerViewForConfigurationOfIconView:(id)view
{
  v5 = [(SBHomeScreenController *)self iconManager:manager containerViewControllerForConfigurationOfIconView:view];
  homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
  v7 = homeScreenViewController;
  if (v5 == homeScreenViewController)
  {
    [homeScreenViewController iconContentView];
  }

  else
  {
    [v5 view];
  }
  v8 = ;

  return v8;
}

- (CGRect)iconManager:(id)manager contentBoundingRectForConfigurationOfIconView:(id)view
{
  viewCopy = view;
  v7 = [(SBHomeScreenController *)self iconManager:manager containerViewForConfigurationOfIconView:viewCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    location = [viewCopy location];
    view = v9;
    if (SBIconLocationGroupContainsLocation())
    {
      view = v9;
      if ([(SBHomeScreenController *)self isTodayOverlayPresented])
      {
        todayViewController = [(SBHomeScreenController *)self todayViewController];
        view = [todayViewController view];
      }
    }

    [view bounds];
    [view convertRect:v9 toView:?];
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

- (id)iconManager:(id)manager homeScreenContentViewForConfigurationOfIconView:(id)view
{
  location = [view location];
  if (SBIconLocationGroupContainsLocation() && [(SBHomeScreenController *)self isTodayOverlayPresented])
  {
    todayViewController = [(SBHomeScreenController *)self todayViewController];
  }

  else
  {
    todayViewController = [(SBHomeScreenController *)self _rootFolderController];
  }

  v7 = todayViewController;
  view = [todayViewController view];

  return view;
}

- (id)iconManager:(id)manager containerViewControllerForModalInteractionFromIconView:(id)view
{
  location = [view location];
  homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
  if (SBIconLocationGroupContainsLocation())
  {
    v7 = homeScreenViewController;
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  if (SBIconLocationGroupContainsLocation())
  {
    v7 = [homeScreenViewController containerViewControllerForPresentingFromTodayViewControllerAllowingCoverSheet:1];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)iconManager:(id)manager containerViewForModalInteractionFromIconView:(id)view
{
  v5 = [(SBHomeScreenController *)self iconManager:manager containerViewControllerForModalInteractionFromIconView:view];
  homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
  v7 = homeScreenViewController;
  if (v5 == homeScreenViewController)
  {
    [homeScreenViewController iconContentView];
  }

  else
  {
    [v5 view];
  }
  v8 = ;

  return v8;
}

- (id)iconManager:(id)manager homeScreenContentViewForModalInteractionFromIconView:(id)view
{
  location = [view location];
  if (SBIconLocationGroupContainsLocation())
  {
    coverSheetPresentationManager = [(SBHomeScreenController *)self coverSheetPresentationManager];
    isVisible = [coverSheetPresentationManager isVisible];

    if (isVisible)
    {
      [(SBHomeScreenController *)self coverSheetTodayViewController];
    }

    else
    {
      [(SBHomeScreenController *)self todayViewController];
    }
    _rootFolderController = ;
    if ([_rootFolderController _appearState] == 2 || objc_msgSend(_rootFolderController, "_appearState") == 1)
    {
      todayViewController = [(SBHomeScreenController *)self todayViewController];
      view = [todayViewController view];

      goto LABEL_10;
    }
  }

  _rootFolderController = [(SBHomeScreenController *)self _rootFolderController];
  view = [_rootFolderController view];
LABEL_10:

  return view;
}

- (void)iconManager:(id)manager iconView:(id)view configurationWillBeginWithInteraction:(id)interaction
{
  interactionCopy = interaction;
  _iconController = [(SBHomeScreenController *)self _iconController];
  powerLogAggregator = [_iconController powerLogAggregator];
  [powerLogAggregator emitEventOfType:1];

  if (!self->_widgetConfigurationFloatingDockBehaviorAssertion)
  {
    windowScene = [(SBHomeScreenController *)self windowScene];
    floatingDockController = [windowScene floatingDockController];
    v10 = [SBFloatingDockBehaviorAssertion alloc];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [(SBFloatingDockBehaviorAssertion *)v10 initWithFloatingDockController:floatingDockController visibleProgress:1 animated:1 gesturePossible:3 atLevel:v12 reason:0 withCompletion:0.0];
    widgetConfigurationFloatingDockBehaviorAssertion = self->_widgetConfigurationFloatingDockBehaviorAssertion;
    self->_widgetConfigurationFloatingDockBehaviorAssertion = v13;
  }
}

- (void)iconManager:(id)manager iconView:(id)view configurationDidEndWithInteraction:(id)interaction
{
  [(SBFloatingDockBehaviorAssertion *)self->_widgetConfigurationFloatingDockBehaviorAssertion invalidate:manager];
  widgetConfigurationFloatingDockBehaviorAssertion = self->_widgetConfigurationFloatingDockBehaviorAssertion;
  self->_widgetConfigurationFloatingDockBehaviorAssertion = 0;
}

- (void)iconManager:(id)manager modalInteractionWillBegin:(id)begin
{
  if (!self->_modalInteractionFloatingDockBehaviorAssertion)
  {
    beginCopy = begin;
    windowScene = [(SBHomeScreenController *)self windowScene];
    floatingDockController = [windowScene floatingDockController];
    v8 = [SBFloatingDockBehaviorAssertion alloc];
    v9 = objc_opt_class();

    v10 = NSStringFromClass(v9);
    v11 = [(SBFloatingDockBehaviorAssertion *)v8 initWithFloatingDockController:floatingDockController visibleProgress:1 animated:1 gesturePossible:3 atLevel:v10 reason:0 withCompletion:0.0];
    modalInteractionFloatingDockBehaviorAssertion = self->_modalInteractionFloatingDockBehaviorAssertion;
    self->_modalInteractionFloatingDockBehaviorAssertion = v11;
  }
}

- (void)iconManager:(id)manager modalInteractionDidEnd:(id)end
{
  [(SBFloatingDockBehaviorAssertion *)self->_modalInteractionFloatingDockBehaviorAssertion invalidate:manager];
  modalInteractionFloatingDockBehaviorAssertion = self->_modalInteractionFloatingDockBehaviorAssertion;
  self->_modalInteractionFloatingDockBehaviorAssertion = 0;
}

- (unint64_t)addWidgetSheetStyleForIconManager:(id)manager
{
  if (__sb__runningInSpringBoard())
  {
    return SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v3 = [currentDevice userInterfaceIdiom] == 1;
  }

  return v3;
}

- (void)iconManager:(id)manager iconView:(id)view willUseContextMenuStyle:(id)style
{
  styleCopy = style;
  [(SBHomeScreenController *)self minimumHomeScreenScale];
  v7 = v6;
  if (v6 != 1.0)
  {
    containerView = [styleCopy containerView];
    [containerView bounds];
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
    [styleCopy setPreferredBackgroundInsets:{v13 * v15 * 0.5, v14, v13 * v15 * 0.5, v14}];
  }
}

- (BOOL)iconManager:(id)manager iconViewDisplaysCloseBox:(id)box
{
  boxCopy = box;
  icon = [boxCopy icon];
  isAppLibrarySupported = [(SBHomeScreenController *)self isAppLibrarySupported];
  isApplicationIcon = [icon isApplicationIcon];
  v9 = isApplicationIcon && isAppLibrarySupported || [(SBHomeScreenController *)self isUninstallSupportedForIcon:icon];
  location = [boxCopy location];
  windowScene = [(SBHomeScreenController *)self windowScene];
  floatingDockController = [windowScene floatingDockController];
  if ([floatingDockController isPresentingIconLocation:location])
  {
    v13 = [floatingDockController shouldShowCloseBoxForIconView:boxCopy proposedValue:v9];
LABEL_7:
    LOBYTE(v9) = v13;
    goto LABEL_11;
  }

  if (isApplicationIcon && SBIconLocationGroupContainsLocation())
  {
    v13 = [(SBHomeScreenController *)self isUninstallSupportedForIcon:icon];
    goto LABEL_7;
  }

LABEL_11:

  return v9;
}

- (void)iconManager:(id)manager wantsUninstallForIcon:(id)icon location:(id)location
{
  iconCopy = icon;
  locationCopy = location;
  windowScene = [(SBHomeScreenController *)self windowScene];
  floatingDockController = [windowScene floatingDockController];
  if (([floatingDockController handlePromptingUserToUninstallIcon:iconCopy location:locationCopy] & 1) == 0)
  {
    if ([iconCopy isApplicationIcon])
    {
      applicationController = [(SBHomeScreenController *)self applicationController];
      applicationBundleID = [iconCopy applicationBundleID];
      v13 = [(SBHomeScreenController *)self isUninstallSupportedForIcon:iconCopy];
      if (applicationBundleID && (v13 || [(SBHomeScreenController *)self isAppLibrarySupported]))
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
        v22 = iconCopy;
        selfCopy = self;
        [applicationController requestUninstallApplicationWithBundleIdentifier:applicationBundleID options:v14 withCompletion:v21];
      }
    }

    else
    {
      if ([iconCopy isWidgetIcon])
      {
        v15 = [SBRemoveWidgetAlertItem alloc];
        iconManager = [(SBHomeScreenController *)self iconManager];
        v17 = [(SBRemoveWidgetAlertItem *)v15 initWithWidgetIcon:iconCopy location:locationCopy iconManager:iconManager];
      }

      else if ([iconCopy isFolderIcon])
      {
        v18 = [SBHideFolderContentsAlertItem alloc];
        iconManager = [(SBHomeScreenController *)self iconManager];
        v17 = [(SBHideFolderContentsAlertItem *)v18 initWithIcon:iconCopy location:locationCopy iconManager:iconManager];
      }

      else
      {
        v19 = [SBDeleteNonAppIconAlertItem alloc];
        iconManager = [(SBHomeScreenController *)self _iconController];
        v17 = [(SBDeleteNonAppIconAlertItem *)v19 initWithIcon:iconCopy location:locationCopy iconController:iconManager];
      }

      applicationController = v17;

      [applicationController _setPreferredActivationWindowScene:windowScene];
      alertItemsController = [(SBHomeScreenController *)self alertItemsController];
      [alertItemsController activateAlertItem:applicationController];
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

- (BOOL)iconManager:(id)manager iconViewDisplaysLabel:(id)label
{
  icon = [label icon];
  if ([icon isWidgetIcon])
  {
    if (__sb__runningInSpringBoard())
    {
      v5 = SBFEffectiveDeviceClass() != 2;
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      v5 = [currentDevice userInterfaceIdiom] != 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)iconManager:(id)manager canBeginDragForIconView:(id)view
{
  v4 = [SBWorkspace mainWorkspace:manager];
  transientOverlayPresentationManager = [v4 transientOverlayPresentationManager];
  hasActivePresentation = [transientOverlayPresentationManager hasActivePresentation];

  return hasActivePresentation ^ 1;
}

- (BOOL)_dragSessionContainsAppClipWebClipIcon:(id)icon
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  items = [icon items];
  v5 = [items countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(items);
        }

        sbh_appDragLocalContext = [*(*(&v18 + 1) + 8 * i) sbh_appDragLocalContext];
        v10 = sbh_appDragLocalContext;
        if (sbh_appDragLocalContext)
        {
          uniqueIdentifier = [sbh_appDragLocalContext uniqueIdentifier];
          iconModel = [(SBHomeScreenController *)self iconModel];
          v13 = [iconModel bookmarkIconForWebClipIdentifier:uniqueIdentifier];

          webClip = [v13 webClip];
          isAppClip = [webClip isAppClip];

          if (isAppClip)
          {

            v16 = 1;
            goto LABEL_12;
          }
        }
      }

      v6 = [items countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (int64_t)iconManager:(id)manager draggingStartLocationForIconView:(id)view proposedStartLocation:(int64_t)location
{
  location = [view location];
  if ([location isEqualToString:@"SBIconLocationFloatingDockSuggestions"])
  {
    location = 7;
  }

  return location;
}

- (void)iconManager:(id)manager iconDropSessionDidEnter:(id)enter
{
  v5 = MEMORY[0x277D75490];
  enterCopy = enter;
  sharedInstance = [v5 sharedInstance];
  v8 = [sharedInstance sessionForDropSession:enterCopy];

  info = [v8 info];
  LODWORD(sharedInstance) = [info processIdentifier];
  if (sharedInstance != getpid())
  {
    v14 = 0u;
    v15 = 0u;
    if (info)
    {
      [info auditToken];
    }

    v13[0] = v14;
    v13[1] = v15;
    v10 = [MEMORY[0x277CF0B98] tokenFromAuditToken:v13];
    if (([v10 hasEntitlement:@"com.apple.springboard.app-drag"] & 1) == 0)
    {
      iconManager = [(SBHomeScreenController *)self iconManager];
      [iconManager cancelAllDrags];

      goto LABEL_8;
    }
  }

  v11 = +[SBDraggingSystemManager sharedInstance];
  [v11 setCommandeered:1 forDraggingSystemSession:v8 forReason:@"SBIconController-IconDrag"];

LABEL_8:
}

- (void)iconManager:(id)manager iconView:(id)view contentDropSessionDidEnter:(id)enter
{
  enterCopy = enter;
  location = [view location];
  if ([(SBHomeScreenController *)self shouldCommandeerContentDragsInLocation:location])
  {
    v8 = +[SBDraggingSystemManager sharedInstance];
    [v8 setCommandeered:1 forDropSession:enterCopy forReason:@"SBIconController-ContentDrag"];
  }
}

- (void)iconManager:(id)manager iconView:(id)view contentDropSessionDidExit:(id)exit
{
  exitCopy = exit;
  location = [view location];
  if ([(SBHomeScreenController *)self shouldCommandeerContentDragsInLocation:location])
  {
    v8 = +[SBDraggingSystemManager sharedInstance];
    [v8 setCommandeered:0 forDropSession:exitCopy forReason:@"SBIconController-ContentDrag"];
  }
}

- (BOOL)iconManager:(id)manager supportsParallaxForIconView:(id)view
{
  _sbWindowScene = [view _sbWindowScene];
  isMainDisplayWindowScene = [_sbWindowScene isMainDisplayWindowScene];

  return isMainDisplayWindowScene;
}

- (id)iconManager:(id)manager screenSnapshotProviderForComponentsOfIconView:(id)view
{
  managerCopy = manager;
  viewCopy = view;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_screenSnapshotForIconViews || ([viewCopy window], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "screen"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "snapshotViewAfterScreenUpdates:", 0), v11 = objc_claimAutoreleasedReturnValue(), screenSnapshotForIconViews = selfCopy->_screenSnapshotForIconViews, selfCopy->_screenSnapshotForIconViews = v11, screenSnapshotForIconViews, v10, v9, selfCopy->_screenSnapshotForIconViews))
  {
    objc_initWeak(&location, selfCopy);
    v13 = [SBIconViewSnapshotProvider alloc];
    v14 = [objc_alloc(objc_opt_class()) initAsCopyOf:selfCopy->_screenSnapshotForIconViews];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __84__SBHomeScreenController_iconManager_screenSnapshotProviderForComponentsOfIconView___block_invoke;
    v20[3] = &unk_2783C2678;
    objc_copyWeak(&v21, &location);
    v20[4] = selfCopy;
    v15 = [(SBIconViewSnapshotProvider *)v13 initWithSnapshotView:v14 invalidation:v20];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
    if (v15)
    {
      outstandingSnapshotProviders = selfCopy->_outstandingSnapshotProviders;
      if (!outstandingSnapshotProviders)
      {
        v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v18 = selfCopy->_outstandingSnapshotProviders;
        selfCopy->_outstandingSnapshotProviders = v17;

        outstandingSnapshotProviders = selfCopy->_outstandingSnapshotProviders;
      }

      [(NSMutableArray *)outstandingSnapshotProviders addObject:v15];
    }
  }

  else
  {
    v15 = 0;
  }

  objc_sync_exit(selfCopy);

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

- (int64_t)iconManager:(id)manager closeBoxTypeForIconView:(id)view proposedType:(int64_t)type
{
  viewCopy = view;
  icon = [viewCopy icon];
  location = [viewCopy location];

  if ([location isEqualToString:@"SBIconLocationFloatingDockSuggestions"] & 1) != 0 || (objc_msgSend(icon, "isWidgetIcon"))
  {
    type = 1;
  }

  else if ([(SBHomeScreenController *)self isAppLibrarySupported])
  {
    type = SBIconLocationGroupContainsLocation() ^ 1;
  }

  return type;
}

- (BOOL)iconManager:(id)manager allowsBadgingForIcon:(id)icon
{
  iconCopy = icon;
  _iconController = [(SBHomeScreenController *)self _iconController];
  v7 = [_iconController allowsBadgingForIcon:iconCopy];

  return v7;
}

- (BOOL)iconManager:(id)manager allowsBadgingForIconLocation:(id)location
{
  locationCopy = location;
  v5 = +[SBDefaults localDefaults];
  homeScreenDefaults = [v5 homeScreenDefaults];
  showsBadgesInAppLibrary = [homeScreenDefaults showsBadgesInAppLibrary];

  if ((showsBadgesInAppLibrary & 1) != 0 || !SBIconLocationGroupContainsLocation())
  {
    v8 = 1;
  }

  else
  {
    v8 = [locationCopy isEqualToString:*MEMORY[0x277D66660]];
  }

  return v8;
}

- (BOOL)isFocusAllowedForIconManager:(id)manager
{
  if (__sb__runningInSpringBoard())
  {
    return SBFEffectiveDeviceClass() == 2;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 1;

  return v3;
}

- (id)iconManager:(id)manager accessibilityTintColorForIconView:(id)view
{
  v4 = [SBWallpaperController sharedInstance:manager];
  v5 = [v4 averageColorForVariant:1];

  return v5;
}

- (BOOL)iconManagerCanBeginIconDrags:(id)drags
{
  v3 = +[SBSetupManager sharedInstance];
  isInSetupMode = [v3 isInSetupMode];

  if (isInSetupMode)
  {
    v5 = SBLogIconDragging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "disallowing icon drag because we are in setup mode", v7, 2u);
    }
  }

  return isInSetupMode ^ 1;
}

- (id)iconManager:(id)manager dragPreviewForIconView:(id)view
{
  viewCopy = view;
  v5 = [[SBAppPlatterDragPreview alloc] initWithReferenceIconView:viewCopy sourceView:0];
  [viewCopy iconImageCenter];
  v7 = v6;
  v9 = v8;
  window = [viewCopy window];
  [viewCopy convertPoint:window toView:{v7, v9}];
  v12 = v11;
  v14 = v13;

  [(SBAppPlatterDragPreview *)v5 setCenter:v12, v14];

  return v5;
}

- (id)windowForIconDragPreviewsForIconManager:(id)manager forWindowScene:(id)scene
{
  v5 = MEMORY[0x277CCACC8];
  sceneCopy = scene;
  if (([v5 isMainThread] & 1) == 0)
  {
    [SBHomeScreenController windowForIconDragPreviewsForIconManager:forWindowScene:];
  }

  if (!self->_windowSceneToMedusaDragWindowContext)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    windowSceneToMedusaDragWindowContext = self->_windowSceneToMedusaDragWindowContext;
    self->_windowSceneToMedusaDragWindowContext = weakToStrongObjectsMapTable;
  }

  v9 = objc_opt_class();
  v10 = SBSafeCast(v9, sceneCopy);

  if (v10)
  {
    v11 = [(NSMapTable *)self->_windowSceneToMedusaDragWindowContext objectForKey:v10];
  }

  else
  {
    v11 = 0;
  }

  dragWindow = [(SBMedusaDragWindowContext *)v11 dragWindow];
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
    traitsArbiter = [v10 traitsArbiter];
    v17 = [traitsArbiter acquireParticipantWithRole:@"SBTraitsParticipantRoleMedusaDrag" delegate:v15];

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

    dragWindow = v14;
  }

  return dragWindow;
}

- (void)iconManagerIconDraggingDidChange:(id)change
{
  if ([change isIconDragging])
  {
    [(SBHomeScreenController *)self _beginDisablingAllOrientationChangesForReason:@"SBIconController Dragging"];
  }

  else
  {
    [(SBHomeScreenController *)self _endDisablingAllOrientationChangesForReason:@"SBIconController Dragging"];
  }

  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleHomeScreen"))
  {
    homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
    [homeScreenViewController setNeedsUpdateOfSupportedInterfaceOrientations];
  }
}

- (void)iconManager:(id)manager willBeginIconDragWithUniqueIdentifier:(id)identifier numberOfDraggedItems:(unint64_t)items
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D67520];
  uUIDString = [identifier UUIDString];
  v16[0] = uUIDString;
  v15[1] = *MEMORY[0x277D67528];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:items];
  v16[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v10 = MEMORY[0x277D65DD0];
  v11 = v9;
  sharedInstance = [v10 sharedInstance];
  [sharedInstance emitEvent:28 withPayload:v11];

  if (!self->_iconDragSessionBeginDate)
  {
    date = [MEMORY[0x277CBEAA8] date];
    iconDragSessionBeginDate = self->_iconDragSessionBeginDate;
    self->_iconDragSessionBeginDate = date;
  }
}

- (void)iconManager:(id)manager didAddItemsToIconDragWithUniqueIdentifier:(id)identifier numberOfDraggedItems:(unint64_t)items
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = *MEMORY[0x277D67520];
  uUIDString = [identifier UUIDString];
  v13[0] = uUIDString;
  v12[1] = *MEMORY[0x277D67528];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:items];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v9 = MEMORY[0x277D65DD0];
  v10 = v8;
  sharedInstance = [v9 sharedInstance];
  [sharedInstance emitEvent:29 withPayload:v10];
}

- (void)iconManager:(id)manager didEndIconDragWithUniqueIdentifier:(id)identifier numberOfDraggedItems:(unint64_t)items
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19[0] = *MEMORY[0x277D67520];
  uUIDString = [identifier UUIDString];
  v20[0] = uUIDString;
  v19[1] = *MEMORY[0x277D67528];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:items];
  v20[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v10 = MEMORY[0x277D65DD0];
  v11 = v9;
  sharedInstance = [v10 sharedInstance];
  [sharedInstance emitEvent:30 withPayload:v11];

  if (self->_iconDragSessionBeginDate)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:self->_iconDragSessionBeginDate];
    v15 = v14;

    iconDragSessionBeginDate = self->_iconDragSessionBeginDate;
    self->_iconDragSessionBeginDate = 0;

    _iconController = [(SBHomeScreenController *)self _iconController];
    powerLogAggregator = [_iconController powerLogAggregator];
    [powerLogAggregator emitEventOfType:2 withDuration:v15];
  }
}

- (void)iconManager:(id)manager didSpringLoadIconView:(id)view
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277D674E0];
  v13[0] = &unk_283372218;
  v5 = MEMORY[0x277CBEAC0];
  viewCopy = view;
  v7 = [v5 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v8 = MEMORY[0x277D65DD0];
  v9 = v7;
  sharedInstance = [v8 sharedInstance];
  [sharedInstance emitEvent:31 withPayload:v9];

  iconDragManager = [(SBHomeScreenController *)self iconDragManager];
  [iconDragManager performSpringLoadedInteractionForIconDragOnIconView:viewCopy];
}

- (id)iconManager:(id)manager wantsToHideStatusBarForFolderController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controller = [MEMORY[0x277CCACA8] stringWithFormat:@"SBFolderController - %p", controller];
  v8 = [(SBHomeScreenController *)self _hideStatusBarForReason:controller animated:animatedCopy];

  return v8;
}

- (id)_hideStatusBarForReason:(id)reason animated:(BOOL)animated
{
  animatedCopy = animated;
  reasonCopy = reason;
  windowScene = [(SBHomeScreenController *)self windowScene];
  statusBarManager = [windowScene statusBarManager];
  assertionManager = [statusBarManager assertionManager];

  v10 = [assertionManager newSettingsAssertionWithStatusBarHidden:1 atLevel:1 reason:reasonCopy];
  if (animatedCopy)
  {
    initWithDefaultParameters = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
    [v10 acquireWithAnimationParameters:initWithDefaultParameters];
  }

  else
  {
    [v10 acquire];
  }

  return v10;
}

- (id)iconManager:(id)manager fakeStatusBarForFolderController:(id)controller
{
  v4 = [(SBHomeScreenController *)self windowScene:manager];
  statusBarManager = [v4 statusBarManager];
  reusePool = [statusBarManager reusePool];
  v7 = [reusePool getReusableStatusBarWithReason:@"SBFolderController - Blurred Status Bar"];

  return v7;
}

- (id)iconManager:(id)manager statusBarStyleRequestForFolderController:(id)controller
{
  v4 = [(SBHomeScreenController *)self windowScene:manager];
  statusBarManager = [v4 statusBarManager];
  assertionManager = [statusBarManager assertionManager];
  v7 = [assertionManager effectiveStatusBarStyleRequestForLevel:0];

  return v7;
}

- (void)iconManager:(id)manager willRemoveFakeStatusBar:(id)bar forFolderController:(id)controller
{
  barCopy = bar;
  windowScene = [(SBHomeScreenController *)self windowScene];
  statusBarManager = [windowScene statusBarManager];
  reusePool = [statusBarManager reusePool];
  [reusePool recycleStatusBar:barCopy];
}

- (UIEdgeInsets)iconManager:(id)manager statusBarEdgeInsetsForFolderController:(id)controller
{
  v4 = [(SBHomeScreenController *)self windowScene:manager];
  statusBarManager = [v4 statusBarManager];
  layoutManager = [statusBarManager layoutManager];
  [layoutManager statusBarEdgeInsets];
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

- (UIEdgeInsets)iconManager:(id)manager contentOverlayInsetsFromParentIfAvailableForFolderController:(id)controller
{
  v4 = [(SBHomeScreenController *)self homeScreenViewController:manager];
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

- (void)_setFolderDisplayLayoutElementActive:(BOOL)active
{
  folderDisplayLayoutAssertion = self->_folderDisplayLayoutAssertion;
  if (active)
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
    displayLayoutPublisher = [WeakRetained displayLayoutPublisher];
    v8 = [displayLayoutPublisher addElement:v11];
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

- (void)_setWidgetEditingDisplayLayoutElementActive:(BOOL)active
{
  widgetEditingLayoutAssertion = self->_widgetEditingLayoutAssertion;
  if (active)
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
    displayLayoutPublisher = [WeakRetained displayLayoutPublisher];
    v8 = [displayLayoutPublisher addElement:v11];
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

- (void)iconManager:(id)manager willOpenFolder:(id)folder
{
  folderCopy = folder;
  v5 = +[SBReachabilityManager sharedInstance];
  [v5 deactivateReachability];

  v6 = +[SBReachabilityManager sharedInstance];
  [v6 setReachabilityTemporarilyDisabled:1 forReason:@"Open Folder"];

  isLibraryCategoryFolder = [folderCopy isLibraryCategoryFolder];
  v8 = SBLogTelemetrySignposts();
  v9 = os_signpost_enabled(v8);
  if (isLibraryCategoryFolder)
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

- (void)iconManager:(id)manager didOpenFolder:(id)folder
{
  folderCopy = folder;
  v6 = +[SBReachabilityManager sharedInstance];
  [v6 setReachabilityTemporarilyDisabled:0 forReason:@"Open Folder"];

  isLibraryCategoryFolder = [folderCopy isLibraryCategoryFolder];
  v8 = SBLogTelemetrySignposts();
  v9 = os_signpost_enabled(v8);
  if (isLibraryCategoryFolder)
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

  homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
  v11 = [MEMORY[0x277D75518] focusSystemForEnvironment:homeScreenViewController];
  focusedItem = [v11 focusedItem];

  if (focusedItem)
  {
    [homeScreenViewController setNeedsFocusUpdate];
  }
}

- (void)iconManager:(id)manager willCloseFolder:(id)folder
{
  folderCopy = folder;
  v5 = +[SBReachabilityManager sharedInstance];
  [v5 deactivateReachability];

  v6 = +[SBReachabilityManager sharedInstance];
  [v6 setReachabilityTemporarilyDisabled:1 forReason:@"Close Folder"];

  isLibraryCategoryFolder = [folderCopy isLibraryCategoryFolder];
  v8 = SBLogTelemetrySignposts();
  v9 = os_signpost_enabled(v8);
  if (isLibraryCategoryFolder)
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

- (void)iconManager:(id)manager didCloseFolder:(id)folder
{
  folderCopy = folder;
  v6 = +[SBReachabilityManager sharedInstance];
  [v6 setReachabilityTemporarilyDisabled:0 forReason:@"Close Folder"];

  isLibraryCategoryFolder = [folderCopy isLibraryCategoryFolder];
  v8 = SBLogTelemetrySignposts();
  v9 = os_signpost_enabled(v8);
  if (isLibraryCategoryFolder)
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

  homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
  v11 = [MEMORY[0x277D75518] focusSystemForEnvironment:homeScreenViewController];
  focusedItem = [v11 focusedItem];

  if (focusedItem)
  {
    [homeScreenViewController setNeedsFocusUpdate];
  }
}

- (void)iconManagerFolderAnimatingDidChange:(id)change
{
  if (([change hasAnimatingFolder] & 1) == 0)
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
    homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
    [homeScreenViewController setNeedsUpdateOfSupportedInterfaceOrientations];
  }
}

void __62__SBHomeScreenController_iconManagerFolderAnimatingDidChange___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) window];
  [v1 sb_updateInterfaceOrientationFromActiveInterfaceOrientation];
}

- (void)iconManager:(id)manager nestingViewController:(id)controller willPerformOperation:(int64_t)operation onViewController:(id)viewController withTransitionCoordinator:(id)coordinator
{
  controllerCopy = controller;
  v11 = MEMORY[0x277CCACA8];
  coordinatorCopy = coordinator;
  controllerCopy = [v11 stringWithFormat:@"SBTransitioningToOrFromFolder-<%@ %p>", objc_opt_class(), controllerCopy];
  homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
  [homeScreenViewController setAllowIconRotation:0 forReason:controllerCopy];

  [(SBHomeScreenController *)self _beginDisablingAllOrientationChangesForReason:controllerCopy];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __124__SBHomeScreenController_iconManager_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke_10;
  v25[3] = &unk_2783C26C0;
  v25[4] = self;
  v15 = controllerCopy;
  v26 = v15;
  [coordinatorCopy animateAlongsideTransition:&__block_literal_global_588 completion:v25];

  if (!+[SBFloatingDockController isFloatingDockSupported])
  {
    if (operation != 1 && ([(SBHomeScreenController *)self _rootFolderController], v16 = objc_claimAutoreleasedReturnValue(), v16, v16 == controllerCopy))
    {
      _rootFolderController = [(SBHomeScreenController *)self _rootFolderController];
      [_rootFolderController dockHeight];
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

    windowScene = [(SBHomeScreenController *)self windowScene];
    pictureInPictureManager = [windowScene pictureInPictureManager];
    [pictureInPictureManager applyPictureInPictureInsets:1 forSource:{v18, v17, v19, v20}];
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

- (BOOL)iconManagerCanSaveIconState:(id)state
{
  _iconController = [(SBHomeScreenController *)self _iconController];
  canSaveIconState = [_iconController canSaveIconState];

  return canSaveIconState;
}

- (void)iconManagerDidSaveIconState:(id)state
{
  _iconController = [(SBHomeScreenController *)self _iconController];
  [_iconController didSaveIconState];
}

- (id)iconManager:(id)manager accessibilityTintColorForScreenRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = +[SBWallpaperController sharedInstance];
  v9 = [v8 averageColorInRect:1 forVariant:{x, y, width, height}];

  return v9;
}

- (BOOL)isFloatingDockVisibleForIconManager:(id)manager
{
  windowScene = [(SBHomeScreenController *)self windowScene];
  floatingDockController = [windowScene floatingDockController];
  isFloatingDockPresented = [floatingDockController isFloatingDockPresented];

  return isFloatingDockPresented;
}

- (void)presentTodayOverlayForIconManager:(id)manager
{
  if ([(SBHomeScreenController *)self _isCoplanarHomeScreenEnabled])
  {
    iconManager = [(SBHomeScreenController *)self iconManager];
    [iconManager presentLeadingCustomViewWithCompletion:0];
  }

  else
  {
    iconManager = [(SBHomeScreenController *)self _homeScreenOverlayControllerIfNeeded];
    [iconManager presentAnimated:1 fromLeading:1];
  }
}

- (void)presentLibraryForIconManager:(id)manager windowScene:(id)scene animated:(BOOL)animated
{
  animatedCopy = animated;
  sceneCopy = scene;
  if ([(SBHomeScreenController *)self isAppLibraryAllowed])
  {
    if ([(SBHomeScreenController *)self isModalAppLibrarySupported])
    {
      v7 = objc_opt_class();
      v8 = sceneCopy;
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

      modalLibraryController = [v10 modalLibraryController];

      if (([modalLibraryController isPresentingLibraryInForeground] & 1) == 0)
      {
        [modalLibraryController toggleLibraryPresentedAnimated:animatedCopy completion:0];
      }
    }

    else
    {
      [(SBHomeScreenController *)self presentLibraryFromOverlayControllerAnimated:animatedCopy completion:0];
    }
  }
}

- (void)presentLibraryFromOverlayControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if ([(SBHomeScreenController *)self isAppLibraryAllowed])
  {
    _homeScreenOverlayControllerIfNeeded = [(SBHomeScreenController *)self _homeScreenOverlayControllerIfNeeded];
    if (![_homeScreenOverlayControllerIfNeeded isPresented] || (objc_msgSend(_homeScreenOverlayControllerIfNeeded, "activeSidebarViewController"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(_homeScreenOverlayControllerIfNeeded, "trailingSidebarViewController"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v8 == v9))
    {
      if (![(SBHomeScreenController *)self _isCoplanarHomeScreenEnabled])
      {
        [_homeScreenOverlayControllerIfNeeded presentAnimated:animatedCopy fromLeading:0 completionHandler:completionCopy];
        goto LABEL_11;
      }

      iconManager = [(SBHomeScreenController *)self iconManager];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __81__SBHomeScreenController_presentLibraryFromOverlayControllerAnimated_completion___block_invoke_2;
      v12[3] = &unk_2783A9348;
      v13 = completionCopy;
      [iconManager presentTrailingCustomViewWithCompletion:v12];

      v10 = v13;
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __81__SBHomeScreenController_presentLibraryFromOverlayControllerAnimated_completion___block_invoke;
      v14[3] = &unk_2783B1E48;
      v15 = _homeScreenOverlayControllerIfNeeded;
      v17 = animatedCopy;
      v16 = completionCopy;
      [v15 dismissAnimated:animatedCopy completionHandler:v14];

      v10 = v15;
    }

LABEL_11:
    goto LABEL_12;
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
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

- (void)presentLibraryCategoryPodFromOverlayControllerForCategoryIdentifier:(id)identifier animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = self->_overlayLibraryViewController;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __114__SBHomeScreenController_presentLibraryCategoryPodFromOverlayControllerForCategoryIdentifier_animated_completion___block_invoke;
  v20[3] = &unk_2783AB550;
  v24 = animatedCopy;
  v20[4] = self;
  v21 = identifierCopy;
  v22 = v10;
  v23 = completionCopy;
  v11 = completionCopy;
  v12 = v10;
  v13 = identifierCopy;
  v14 = MEMORY[0x223D6F7F0](v20);
  _rootFolderController = [(SBHomeScreenController *)self _rootFolderController];
  lastIconPageIndex = [_rootFolderController lastIconPageIndex];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __114__SBHomeScreenController_presentLibraryCategoryPodFromOverlayControllerForCategoryIdentifier_animated_completion___block_invoke_3;
  v18[3] = &unk_2783A9348;
  v19 = v14;
  v17 = v14;
  [_rootFolderController setCurrentPageIndex:lastIconPageIndex animated:animatedCopy completion:v18];
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

- (void)dismissLibraryAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if ([(SBHomeScreenController *)self _isCoplanarHomeScreenEnabled])
  {
    if ([(SBHomeScreenController *)self isMainDisplayLibraryViewVisible])
    {
      iconManager = [(SBHomeScreenController *)self iconManager];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __60__SBHomeScreenController_dismissLibraryAnimated_completion___block_invoke;
      v8[3] = &unk_2783A9348;
      v9 = completionCopy;
      [iconManager animateToDefaultStateWithCompletionHandler:v8];
    }

    else if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 1);
    }
  }

  else
  {
    [(SBHomeScreenController *)self dismissLibraryFromOverlayControllerAnimated:animatedCopy completion:completionCopy];
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

- (void)dismissLibraryFromOverlayControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if ([(SBHomeScreenController *)self isAppLibraryAllowed])
  {
    _homeScreenOverlayControllerIfNeeded = [(SBHomeScreenController *)self _homeScreenOverlayControllerIfNeeded];
    if (-[SBHomeScreenController isMainDisplayLibraryViewVisible](self, "isMainDisplayLibraryViewVisible") && ([_homeScreenOverlayControllerIfNeeded activeSidebarViewController], v7 = objc_claimAutoreleasedReturnValue(), overlayLibraryViewController = self->_overlayLibraryViewController, v7, v7 == overlayLibraryViewController))
    {
      [(SBHomeScreenController *)self dismissHomeScreenOverlayControllerAnimated:animatedCopy completion:completionCopy];
    }

    else if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  else
  {
    v9 = completionCopy;
    if (!completionCopy)
    {
      goto LABEL_11;
    }

    completionCopy[2](completionCopy, 0);
  }

  v9 = completionCopy;
LABEL_11:
}

- (BOOL)isMainDisplayLibraryViewVisible
{
  iconManager = [(SBHomeScreenController *)self iconManager];
  isMainDisplayLibraryViewVisible = [iconManager isMainDisplayLibraryViewVisible];

  return isMainDisplayLibraryViewVisible;
}

- (BOOL)isTodayOverlayPresented
{
  iconManager = [(SBHomeScreenController *)self iconManager];
  isOverlayTodayViewVisible = [iconManager isOverlayTodayViewVisible];

  return isOverlayTodayViewVisible;
}

- (void)dismissLibraryForIconManager:(id)manager windowScene:(id)scene animated:(BOOL)animated
{
  animatedCopy = animated;
  sceneCopy = scene;
  if ([(SBHomeScreenController *)self isModalAppLibrarySupported])
  {
    v7 = objc_opt_class();
    v8 = sceneCopy;
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

    modalLibraryController = [v10 modalLibraryController];

    [modalLibraryController dismissLibraryAnimated:animatedCopy completion:0];
  }

  else
  {
    [(SBHomeScreenController *)self dismissLibraryAnimated:animatedCopy completion:0];
  }
}

- (unint64_t)maximumListCountForFoldersForIconManager:(id)manager
{
  v3 = +[SBDefaults localDefaults];
  iconDefaults = [v3 iconDefaults];
  maxIconListCount = [iconDefaults maxIconListCount];

  if (maxIconListCount - 1 >= 0xE)
  {
    return 15;
  }

  else
  {
    return maxIconListCount;
  }
}

- (id)defaultIconStateForIconManager:(id)manager
{
  _iconController = [(SBHomeScreenController *)self _iconController];
  hasRestrictedEnforcedLayout = [_iconController hasRestrictedEnforcedLayout];

  if (hasRestrictedEnforcedLayout)
  {
    defaultIconState = MEMORY[0x277CBEC10];
  }

  else
  {
    v6 = +[SBPlatformController sharedInstance];
    defaultIconState = [v6 defaultIconState];
  }

  return defaultIconState;
}

- (id)iconManager:(id)manager defaultAutomaticFavoriteIconIdentifiersWithMaximumCount:(unint64_t)count
{
  iconModel = [(SBHomeScreenController *)self iconModel];
  leafIconIdentifiers = [iconModel leafIconIdentifiers];

  allObjects = [leafIconIdentifiers allObjects];
  v8 = [allObjects sortedArrayUsingSelector:sel_compare_];

  if ([v8 count] > count)
  {
    v9 = [v8 subarrayWithRange:{0, count}];

    v8 = v9;
  }

  return v8;
}

- (void)iconManagerDidNoteIconStateChangedExternally:(id)externally
{
  externallyCopy = externally;
  [(SBHomeScreenController *)self dismissAppIconForceTouchControllers:0];
  [externallyCopy dismissIconShareSheets];
}

- (void)iconManager:(id)manager rootFolderController:(id)controller willUseTransitionContext:(id)context toTransitionToState:(int64_t)state
{
  contextCopy = context;
  pageState = [controller pageState];
  if (state == 2 && pageState == 3)
  {
    [(SBTodayViewController *)self->_todayViewController setTransitionContext:contextCopy];
  }
}

+ (void)_getApplicationDataStore:(id *)store configurationKey:(id *)key forDataSource:(id)source
{
  v20 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v8 = objc_opt_respondsToSelector();
  v9 = objc_opt_respondsToSelector();
  if (v8 & 1) != 0 && (v9)
  {
    uniqueIdentifier = [sourceCopy uniqueIdentifier];
    configurationStorageIdentifier = [sourceCopy configurationStorageIdentifier];
    v12 = [configurationStorageIdentifier length];
    v13 = SBLogWidgetIntent();
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v19 = configurationStorageIdentifier;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "configurationStorageIdentifier for dataSource '%{public}@' is", buf, 0xCu);
      }

      *store = [MEMORY[0x277D0AC98] storeForApplication:configurationStorageIdentifier];
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        +[SBHomeScreenController _getApplicationDataStore:configurationKey:forDataSource:];
      }
    }

    v15 = [uniqueIdentifier length];
    v16 = SBLogWidgetIntent();
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v19 = uniqueIdentifier;
        _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "icon-config for dataSource is '%{public}@'", buf, 0xCu);
      }

      *key = [MEMORY[0x277CCACA8] stringWithFormat:@"icon-config:%@", uniqueIdentifier];
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

- (id)iconManager:(id)manager configurationDataForDataSource:(id)source ofIcon:(id)icon
{
  v34 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  iconCopy = icon;
  v9 = objc_opt_class();
  v10 = SBSafeCast(v9, sourceCopy);
  if (![iconCopy isWidgetIcon] || !v10 || (objc_msgSend(v10, "uniqueIdentifier"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(iconCopy, "uniqueIdentifier"), v12 = objc_claimAutoreleasedReturnValue(), -[SBHomeScreenController temporaryIntentDataForIconWithIdentifier:widgetUniqueIdentifier:](self, "temporaryIntentDataForIconWithIdentifier:widgetUniqueIdentifier:", v12, v11), v13 = objc_claimAutoreleasedReturnValue(), v12, v11, !v13))
  {
    mEMORY[0x277D65ED8] = [MEMORY[0x277D65ED8] sharedInstance];
    [mEMORY[0x277D65ED8] performAfterFirstUnlockSinceBootUsingBlock:&__block_literal_global_624];
    v24 = 0;
    v25 = 0;
    [objc_opt_class() _getApplicationDataStore:&v25 configurationKey:&v24 forDataSource:sourceCopy];
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
      state = [mEMORY[0x277D65ED8] state];
      *buf = 138544130;
      v27 = v19;
      v28 = 2114;
      v29 = v16;
      v30 = 2114;
      v31 = v20;
      v32 = 2114;
      v33 = state;
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

- (void)iconManager:(id)manager dataSource:(id)source ofIcon:(id)icon didUpdateConfigurationData:(id)data
{
  v28 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  iconCopy = icon;
  dataCopy = data;
  v20 = 0;
  v21 = 0;
  [objc_opt_class() _getApplicationDataStore:&v21 configurationKey:&v20 forDataSource:sourceCopy];
  v11 = v21;
  v12 = v20;
  [v11 setObject:dataCopy forKey:v12];
  v13 = MEMORY[0x277D0AC98];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __83__SBHomeScreenController_iconManager_dataSource_ofIcon_didUpdateConfigurationData___block_invoke;
  v18[3] = &unk_2783A8C18;
  v14 = iconCopy;
  v19 = v14;
  [v13 synchronizeWithCompletion:v18];
  v15 = SBLogWidgetIntent();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = SBHConfigurationIdentifierFromDataSource();
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "length")}];
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

- (void)iconManager:(id)manager prepareForPageHidingEducationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  homeScreenOverlayController = [(SBHomeScreenController *)self homeScreenOverlayController];
  [homeScreenOverlayController dismissAnimated:1 completionHandler:handlerCopy];
}

- (void)iconManager:(id)manager willPresentPageManagementWithLayoutManager:(id)layoutManager animator:(id)animator context:(id)context
{
  animatorCopy = animator;
  contextCopy = context;
  v10 = [SBApp deviceOrientationUpdateDeferralAssertionWithReason:@"SBIconControllerDisableRotationForPageHidingReason"];
  if (v10)
  {
    [contextCopy setObject:v10 forKey:@"SBIconControllerPreventDeviceOrientationChangesForPageHiding"];
  }

  v11 = [[SBDisableActiveInterfaceOrientationChangeAssertion alloc] initWithReason:@"SBIconControllerDisableRotationForPageHidingReason" nudgeOrientationOnInvalidate:0];
  if (v11)
  {
    [contextCopy setObject:v11 forKey:@"SBIconControllerPreventActiveInterfaceOrientationChangesForPageHiding"];
  }

  windowScene = [(SBHomeScreenController *)self windowScene];
  floatingDockController = [windowScene floatingDockController];
  v14 = [[SBFloatingDockBehaviorAssertion alloc] initWithFloatingDockController:floatingDockController visibleProgress:1 animated:0 gesturePossible:1 atLevel:@"pageManagement" reason:0 withCompletion:0.0];
  if (v14)
  {
    [contextCopy setObject:v14 forKey:@"SBIconControllerPageHidingFloatingDockBehaviorAssertion"];
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __98__SBHomeScreenController_iconManager_willPresentPageManagementWithLayoutManager_animator_context___block_invoke;
  v18[3] = &unk_2783A8C18;
  v19 = contextCopy;
  v15 = contextCopy;
  v16 = MEMORY[0x223D6F7F0](v18);
  v17 = v16;
  if (animatorCopy)
  {
    [animatorCopy addAnimations:v16];
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

- (void)iconManager:(id)manager willDismissPageManagementUsingAnimator:(id)animator context:(id)context
{
  animatorCopy = animator;
  contextCopy = context;
  v8 = [contextCopy objectForKey:@"SBIconControllerChangeWallpaperScaleForPageHiding"];
  [contextCopy removeObjectForKey:@"SBIconControllerChangeWallpaperScaleForPageHiding"];
  v9 = [contextCopy objectForKey:@"SBIconControllerPageHidingFloatingDockBehaviorAssertion"];
  v10 = v9;
  if (v9)
  {
    [v9 invalidate];
    [contextCopy removeObjectForKey:@"SBIconControllerPageHidingFloatingDockBehaviorAssertion"];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __85__SBHomeScreenController_iconManager_willDismissPageManagementUsingAnimator_context___block_invoke;
  v14[3] = &unk_2783A8C18;
  v15 = v8;
  v11 = v8;
  v12 = MEMORY[0x223D6F7F0](v14);
  v13 = v12;
  if (animatorCopy)
  {
    [animatorCopy addAnimations:v12];
  }

  else
  {
    (*(v12 + 16))(v12);
  }
}

- (void)iconManager:(id)manager didDismissPageManagementWithLayoutManager:(id)layoutManager context:(id)context
{
  layoutManagerCopy = layoutManager;
  contextCopy = context;
  v7 = [contextCopy objectForKey:@"SBIconControllerPreventDeviceOrientationChangesForPageHiding"];
  [v7 invalidate];
  [contextCopy removeObjectForKey:@"SBIconControllerPreventDeviceOrientationChangesForPageHiding"];
  v8 = [contextCopy objectForKey:@"SBIconControllerPreventActiveInterfaceOrientationChangesForPageHiding"];
  [v8 invalidate];
  [contextCopy removeObjectForKey:@"SBIconControllerPreventActiveInterfaceOrientationChangesForPageHiding"];

  completionURL = [layoutManagerCopy completionURL];
  v10 = completionURL;
  if (completionURL)
  {
    SBWorkspaceActivateApplicationFromURL(completionURL, 0, 0);
    [layoutManagerCopy setCompletionURL:0];
  }
}

- (void)iconManagerWillPresentWidgetEditing:(id)editing
{
  if (!self->_addWidgetSheetFloatingDockBehaviorAssertion)
  {
    windowScene = [(SBHomeScreenController *)self windowScene];
    floatingDockController = [windowScene floatingDockController];
    v6 = [[SBFloatingDockBehaviorAssertion alloc] initWithFloatingDockController:floatingDockController visibleProgress:1 animated:1 gesturePossible:3 atLevel:@"addWidgetSheet" reason:0 withCompletion:0.0];
    addWidgetSheetFloatingDockBehaviorAssertion = self->_addWidgetSheetFloatingDockBehaviorAssertion;
    self->_addWidgetSheetFloatingDockBehaviorAssertion = v6;

    homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
    iconContentView = [homeScreenViewController iconContentView];
    window = [iconContentView window];
    if (!self->_addWidgetSheetKeyboardFocusAssertion)
    {
      v11 = +[SBWorkspace mainWorkspace];
      keyboardFocusController = [v11 keyboardFocusController];
      v13 = +[SBKeyboardFocusLockReason addWidgetSheet];
      v14 = [keyboardFocusController focusLockSpringBoardWindow:window forReason:v13];
      addWidgetSheetKeyboardFocusAssertion = self->_addWidgetSheetKeyboardFocusAssertion;
      self->_addWidgetSheetKeyboardFocusAssertion = v14;
    }

    if (([window isKeyWindow] & 1) == 0)
    {
      [window makeKeyWindow];
    }
  }

  [(SBBarSwipeAffordanceViewController *)self->_widgetAddSheetAffordanceViewController setWantsToBeActiveAffordance:1];

  [(SBHomeScreenController *)self _setWidgetEditingDisplayLayoutElementActive:1];
}

- (void)iconManagerDidDismissWidgetEditing:(id)editing
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

- (void)iconManagerWillAnimateWidgetInsertion:(id)insertion
{
  _iconController = [(SBHomeScreenController *)self _iconController];
  powerLogAggregator = [_iconController powerLogAggregator];
  [powerLogAggregator emitEventOfType:0];
}

- (BOOL)iconManager:(id)manager shouldPlaceIconOnIgnoredList:(id)list
{
  v4 = [(SBHomeScreenController *)self _iconController:manager];
  shouldAddNewIconsToRootFolder = [v4 shouldAddNewIconsToRootFolder];

  return shouldAddNewIconsToRootFolder ^ 1;
}

- (BOOL)iconManager:(id)manager isWidgetValid:(id)valid
{
  v14 = *MEMORY[0x277D85DE8];
  validCopy = valid;
  v6 = SBLogWidgetDiscoverability();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    containerBundleIdentifier = [validCopy containerBundleIdentifier];
    v12 = 138412290;
    v13 = containerBundleIdentifier;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[ContainerBundleIdentifier debugging] checking widget = %@", &v12, 0xCu);
  }

  _iconController = [(SBHomeScreenController *)self _iconController];
  containerBundleIdentifier2 = [validCopy containerBundleIdentifier];
  v10 = [_iconController _isWidgetWithContainerBundleIdentifierValid:containerBundleIdentifier2];

  return v10;
}

- (BOOL)_isFileStackIconSupported
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

- (Class)iconManager:(id)manager iconClassForApplicationWithBundleIdentifier:(id)identifier proposedClass:(Class)class
{
  v7 = [SBDefaults localDefaults:manager];
  iconDefaults = [v7 iconDefaults];
  shouldDisableLiveIcons = [iconDefaults shouldDisableLiveIcons];

  if (shouldDisableLiveIcons)
  {
    iconModel = [(SBHomeScreenController *)self iconModel];
    class = [objc_opt_class() applicationIconClass];
  }

  return class;
}

- (BOOL)iconManager:(id)manager isCustomElementValid:(id)valid
{
  containerBundleIdentifier = [valid containerBundleIdentifier];
  if (containerBundleIdentifier)
  {
    _iconController = [(SBHomeScreenController *)self _iconController];
    v7 = [_iconController _isWidgetWithContainerBundleIdentifierValid:containerBundleIdentifier];
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
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v2 = [currentDevice userInterfaceIdiom] == 1;
  }

  return !v2;
}

- (BOOL)iconManager:(id)manager canCustomElementAlignWithGrid:(id)grid
{
  gridCopy = grid;
  v6 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 1;
  }

  return [(SBHomeScreenController *)self canAppPredictionsWidgetAlignWithGrid];
}

- (BOOL)iconManager:(id)manager canAddIcon:(id)icon toIconList:(id)list inFolder:(id)folder
{
  v35 = *MEMORY[0x277D85DE8];
  iconCopy = icon;
  listCopy = list;
  rootFolder = [(SBHomeScreenController *)self rootFolder];
  dockUtilities = [rootFolder dockUtilities];

  if ((![iconCopy isFileStackIcon] || dockUtilities == listCopy) && ((objc_msgSend(iconCopy, "isFileStackIcon") & 1) != 0 || dockUtilities != listCopy))
  {
    v12 = 1;
    if ([iconCopy isFileStackIcon] && dockUtilities == listCopy)
    {
      v14 = objc_opt_class();
      v15 = iconCopy;
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
      icons = [dockUtilities icons];
      v20 = [icons countByEnumeratingWithState:&v30 objects:v34 count:16];
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
              objc_enumerationMutation(icons);
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

          v21 = [icons countByEnumeratingWithState:&v30 objects:v34 count:16];
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

- (void)iconManager:(id)manager prepareAddSheetViewController:(id)controller
{
  controllerCopy = controller;
  widgetAddSheetAffordanceViewController = self->_widgetAddSheetAffordanceViewController;
  v12 = controllerCopy;
  if (!widgetAddSheetAffordanceViewController)
  {
    windowScene = [(SBHomeScreenController *)self windowScene];
    v8 = [[SBBarSwipeAffordanceViewController alloc] initWithZStackParticipantIdentifier:6 windowScene:windowScene];
    v9 = self->_widgetAddSheetAffordanceViewController;
    self->_widgetAddSheetAffordanceViewController = v8;
    v10 = v8;

    view = [(SBBarSwipeAffordanceViewController *)v10 view];

    [view addObserver:self];
    [view setDelegate:self];
    [view setHomeAffordanceHidden:1];

    controllerCopy = v12;
    widgetAddSheetAffordanceViewController = self->_widgetAddSheetAffordanceViewController;
  }

  [controllerCopy setBarSwipeViewController:widgetAddSheetAffordanceViewController];
}

- (void)iconManager:(id)manager displayFeatureIntroductionItemIfUnlocked:(id)unlocked
{
  unlockedCopy = unlocked;
  featureIntroductionManager = [manager featureIntroductionManager];
  [featureIntroductionManager addFeatureIntroductionItem:unlockedCopy atLocations:4];
  lockScreenManager = [(SBHomeScreenController *)self lockScreenManager];
  isUILocked = [lockScreenManager isUILocked];

  if ((isUILocked & 1) == 0)
  {
    [(SBHomeScreenController *)self displayFeatureIntroductionItem:unlockedCopy atLocation:4];
  }
}

- (id)iconManager:(id)manager floatingDockViewControllerForView:(id)view
{
  _sbWindowScene = [view _sbWindowScene];
  floatingDockController = [_sbWindowScene floatingDockController];
  floatingDockViewController = [floatingDockController floatingDockViewController];

  return floatingDockViewController;
}

- (id)iconManager:(id)manager floatingDockViewControllerForViewController:(id)controller
{
  _sbWindowScene = [controller _sbWindowScene];
  floatingDockController = [_sbWindowScene floatingDockController];
  floatingDockViewController = [floatingDockController floatingDockViewController];

  return floatingDockViewController;
}

- (BOOL)iconManager:(id)manager isEditingAllowedForIconView:(id)view
{
  _sbWindowScene = [view _sbWindowScene];
  if ([_sbWindowScene isContinuityDisplayWindowScene])
  {
    isMainDisplayWindowScene = 1;
  }

  else
  {
    isMainDisplayWindowScene = [_sbWindowScene isMainDisplayWindowScene];
  }

  return isMainDisplayWindowScene;
}

- (id)iconManager:(id)manager widgetDataSourceForReplacingIconWithWidget:(id)widget proposedWidgetDataSource:(id)source
{
  managerCopy = manager;
  widgetCopy = widget;
  sourceCopy = source;
  sbh_iconDataSource = sourceCopy;
  if (!sourceCopy)
  {
    if ([widgetCopy isApplicationIcon])
    {
      applicationBundleID = [widgetCopy applicationBundleID];
      if ([applicationBundleID isEqualToString:@"com.apple.MobileAddressBook"])
      {
        widgetExtensionProvider = [managerCopy widgetExtensionProvider];
        v13 = [widgetExtensionProvider sbh_defaultDescriptorForContainerBundleIdentifier:@"com.apple.PeopleViewService"];

        sbh_iconDataSource = [v13 sbh_iconDataSource];
      }

      else
      {
        sbh_iconDataSource = 0;
      }
    }

    else
    {
      sbh_iconDataSource = 0;
    }
  }

  return sbh_iconDataSource;
}

- (id)iconManager:(id)manager applicationIconForReplacingIconWithAppIcon:(id)icon proposedApplicationIcon:(id)applicationIcon
{
  iconCopy = icon;
  applicationIconCopy = applicationIcon;
  v9 = applicationIconCopy;
  if ([iconCopy isWidgetIcon])
  {
    v9 = applicationIconCopy;
    if (([iconCopy isWidgetStackIcon] & 1) == 0)
    {
      activeWidget = [iconCopy activeWidget];
      containerBundleIdentifier = [activeWidget containerBundleIdentifier];
      extensionBundleIdentifier = [activeWidget extensionBundleIdentifier];
      kind = [activeWidget kind];
      v9 = applicationIconCopy;
      if ([containerBundleIdentifier isEqualToString:@"com.apple.PeopleViewService"])
      {
        v9 = applicationIconCopy;
        if ([extensionBundleIdentifier isEqualToString:@"com.apple.PeopleViewService.PeopleWidget-iOS"])
        {
          v9 = applicationIconCopy;
          if ([kind isEqualToString:@"SingleContactWidget_iOS"])
          {
            iconModel = [(SBHomeScreenController *)self iconModel];
            v9 = [iconModel applicationIconForBundleIdentifier:@"com.apple.MobileAddressBook"];
          }
        }
      }
    }
  }

  return v9;
}

- (void)iconManagerToggleHomeScreenWallpaperDimming:(id)dimming
{
  v4 = [(SBWallpaperIconStyleCoordinator *)self->_iconStyleCoordinator isWallpaperDimmed]^ 1;
  iconStyleCoordinator = self->_iconStyleCoordinator;

  [(SBWallpaperIconStyleCoordinator *)iconStyleCoordinator setWallpaperDimmed:v4];
}

- (id)iconManager:(id)manager containerBundleIdentifierForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  extensionIdentity = [descriptorCopy extensionIdentity];
  containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];

  extensionIdentity2 = [descriptorCopy extensionIdentity];

  extensionBundleIdentifier = [extensionIdentity2 extensionBundleIdentifier];

  if (-[__CFString isEqualToString:](containerBundleIdentifier, "isEqualToString:", @"com.apple.Health.Sleep") && [extensionBundleIdentifier isEqualToString:@"com.apple.Health.Sleep.SleepWidgetExtension"])
  {

    containerBundleIdentifier = @"com.apple.Health";
  }

  return containerBundleIdentifier;
}

- (void)iconManager:(id)manager tapFloatingDockStackIconView:(id)view
{
  viewCopy = view;
  icon = [viewCopy icon];
  isFileStackIcon = [icon isFileStackIcon];

  if ((isFileStackIcon & 1) == 0)
  {
    [SBHomeScreenController iconManager:viewCopy tapFloatingDockStackIconView:?];
  }

  window = [viewCopy window];
  windowScene = [window windowScene];
  v8 = objc_opt_class();
  v9 = windowScene;
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
    floatingDockController = [v11 floatingDockController];
    remoteContentManager = [floatingDockController remoteContentManager];

    [remoteContentManager tapFileStackIconView:viewCopy];
  }
}

- (id)iconManager:(id)manager customInsertionGridPathForIcon:(id)icon inRootFolder:(id)folder
{
  iconCopy = icon;
  folderCopy = folder;
  v8 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    application = [iconCopy application];
    if ([application isInternalApplication] && (objc_msgSend(application, "info"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "visibilityOverride"), v11, !v12) || (objc_msgSend(application, "info"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isAppLibraryOnlyByDefault"), v13, v14))
    {
      ignoredList = [folderCopy ignoredList];
      v16 = [folderCopy gridPathWithList:ignoredList gridCellIndex:0 listGridCellInfoOptions:0];
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

- (unint64_t)barSwipeAffordanceView:(id)view systemGestureTypeForType:(int64_t)type
{
  widgetAddSheetAffordanceViewController = self->_widgetAddSheetAffordanceViewController;
  viewCopy = view;
  barSwipeAffordanceView = [(SBBarSwipeAffordanceViewController *)widgetAddSheetAffordanceViewController barSwipeAffordanceView];

  if (barSwipeAffordanceView == viewCopy && type == 1)
  {
    return 53;
  }

  else
  {
    return 0;
  }
}

- (void)homeGesturePerformedForBarSwipeAffordanceView:(id)view
{
  widgetAddSheetAffordanceViewController = self->_widgetAddSheetAffordanceViewController;
  viewCopy = view;
  barSwipeAffordanceView = [(SBBarSwipeAffordanceViewController *)widgetAddSheetAffordanceViewController barSwipeAffordanceView];

  if (barSwipeAffordanceView == viewCopy)
  {
    _rootFolderController = [(SBHomeScreenController *)self _rootFolderController];
    [_rootFolderController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)libraryViewControllerRequestsDismissal:(id)dismissal
{
  dismissalCopy = dismissal;
  if ([(SBHomeScreenController *)self isModalAppLibrarySupported])
  {
    _sbWindowScene = [dismissalCopy _sbWindowScene];
    modalLibraryController = [_sbWindowScene modalLibraryController];

    [modalLibraryController dismissLibraryAnimated:1 completion:0];
  }

  else
  {
    [(SBHomeScreenController *)self dismissLibraryAnimated:1 completion:0];
  }
}

- (void)libraryViewController:(id)controller willPresentFolderController:(id)folderController
{
  v4 = [(SBHomeScreenController *)self homeScreenOverlayController:controller];
  [v4 addReasonToDisableDismissGestureRecognizer:@"kSBHLibraryViewControllerReasonToForbidDismissalOfHomeScreenOverlayController"];
}

- (void)libraryViewController:(id)controller willDismissFolderController:(id)folderController
{
  v4 = [(SBHomeScreenController *)self homeScreenOverlayController:controller];
  [v4 removeReasonToDisableDismissGestureRecognizer:@"kSBHLibraryViewControllerReasonToForbidDismissalOfHomeScreenOverlayController"];
}

- (void)libraryViewControllerWillPresent:(id)present
{
  _rootFolderController = [(SBHomeScreenController *)self _rootFolderController];
  [_rootFolderController dismissWidgetEditingViewControllerIfPresentedAnimated:1];
}

- (void)libraryViewControllerDidDismiss:(id)dismiss
{
  v3 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v3))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_HOME_LIBRARY_DISMISS", " enableTelemetry=YES  isAnimation=YES ", v4, 2u);
  }

  kdebug_trace();
}

- (void)libraryViewController:(id)controller willPresentSearchController:(id)searchController
{
  v5 = MEMORY[0x277CCAB98];
  controllerCopy = controller;
  defaultCenter = [v5 defaultCenter];
  [defaultCenter postNotificationName:SBIconControllerOverlayVisibilityDidChangeNotification object:self];

  libraryViewControllersActivatingSpotlightAppService = self->_libraryViewControllersActivatingSpotlightAppService;
  if (!libraryViewControllersActivatingSpotlightAppService)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v10 = self->_libraryViewControllersActivatingSpotlightAppService;
    self->_libraryViewControllersActivatingSpotlightAppService = weakObjectsHashTable;

    libraryViewControllersActivatingSpotlightAppService = self->_libraryViewControllersActivatingSpotlightAppService;
  }

  v11 = [(NSHashTable *)libraryViewControllersActivatingSpotlightAppService count];
  [(NSHashTable *)self->_libraryViewControllersActivatingSpotlightAppService addObject:controllerCopy];

  if (!v11)
  {
    mEMORY[0x277D65D20] = [MEMORY[0x277D65D20] sharedAppService];
    [mEMORY[0x277D65D20] activate];
  }
}

- (void)libraryViewController:(id)controller willDismissSearchController:(id)searchController
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:SBIconControllerOverlayVisibilityDidChangeNotification object:self];

  v6 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v6))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_HOME_LIBRARY_SEARCH_DISMISS", " enableTelemetry=YES  isAnimation=YES ", v7, 2u);
  }

  kdebug_trace();
}

- (void)libraryViewController:(id)controller didDismissSearchController:(id)searchController
{
  controllerCopy = controller;
  v6 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v6))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_HOME_LIBRARY_SEARCH_DISMISS", " enableTelemetry=YES  isAnimation=YES ", v8, 2u);
  }

  kdebug_trace();
  [(NSHashTable *)self->_libraryViewControllersActivatingSpotlightAppService removeObject:controllerCopy];

  if (![(NSHashTable *)self->_libraryViewControllersActivatingSpotlightAppService count])
  {
    mEMORY[0x277D65D20] = [MEMORY[0x277D65D20] sharedAppService];
    [mEMORY[0x277D65D20] deactivate];
  }
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  settingsCopy = settings;
  keyCopy = key;
  rootFolderSettings = [(SBHomeScreenController *)self rootFolderSettings];

  if (rootFolderSettings == settingsCopy)
  {
    if ([keyCopy isEqualToString:@"showsSpotlightOnEveryPage"])
    {
      iconManager = [(SBHomeScreenController *)self iconManager];
      [iconManager tearDownAndResetRootIconLists];
    }
  }

  else if (self->_iconEditingSettings == settingsCopy)
  {
    [(SBHomeScreenController *)self _configureEditingGestureRecognizers];
  }
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context
{
  contextCopy = context;
  fromLayoutState = [contextCopy fromLayoutState];
  unlockedEnvironmentMode = [fromLayoutState unlockedEnvironmentMode];
  toLayoutState = [contextCopy toLayoutState];

  unlockedEnvironmentMode2 = [toLayoutState unlockedEnvironmentMode];
  v9 = unlockedEnvironmentMode2;
  if (unlockedEnvironmentMode == 2 && unlockedEnvironmentMode2 != 2)
  {
    v10 = 8;
LABEL_7:
    [(SBHomeScreenController *)self removeIconOcclusionReason:v10 updateVisibleIcons:1];
    goto LABEL_8;
  }

  if (unlockedEnvironmentMode == 3 && unlockedEnvironmentMode2 != 3)
  {
    v10 = 2;
    goto LABEL_7;
  }

LABEL_8:
  keepTodayViewIconImagesStaticAssertion = [(SBHomeScreenController *)self keepTodayViewIconImagesStaticAssertion];
  v12 = keepTodayViewIconImagesStaticAssertion;
  if (v9 == 1 && keepTodayViewIconImagesStaticAssertion)
  {
    [keepTodayViewIconImagesStaticAssertion invalidate];
    [(SBHomeScreenController *)self setKeepTodayViewIconImagesStaticAssertion:0];
  }
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context
{
  contextCopy = context;
  fromLayoutState = [contextCopy fromLayoutState];
  unlockedEnvironmentMode = [fromLayoutState unlockedEnvironmentMode];
  toLayoutState = [contextCopy toLayoutState];

  unlockedEnvironmentMode2 = [toLayoutState unlockedEnvironmentMode];
  v9 = unlockedEnvironmentMode2;
  if (unlockedEnvironmentMode != 2 && unlockedEnvironmentMode2 == 2)
  {
    v10 = 8;
LABEL_7:
    [(SBHomeScreenController *)self addIconOcclusionReason:v10 updateVisibleIcons:1];
    goto LABEL_8;
  }

  if (unlockedEnvironmentMode != 3 && unlockedEnvironmentMode2 == 3)
  {
    v10 = 2;
    goto LABEL_7;
  }

LABEL_8:
  todayViewController = [(SBHomeScreenController *)self todayViewController];
  homeScreenOverlayController = [(SBHomeScreenController *)self homeScreenOverlayController];
  keepTodayViewIconImagesStaticAssertion = [(SBHomeScreenController *)self keepTodayViewIconImagesStaticAssertion];
  v14 = keepTodayViewIconImagesStaticAssertion;
  if (v9 != 1 && !keepTodayViewIconImagesStaticAssertion)
  {
    if ([homeScreenOverlayController isPresented])
    {
      activeSidebarViewController = [homeScreenOverlayController activeSidebarViewController];

      if (activeSidebarViewController == todayViewController)
      {
        v16 = SBStringForUnlockedEnvironmentMode(v9);
        v17 = [@"Layout State: " stringByAppendingString:v16];

        v18 = [todayViewController keepIconImageViewControllersStaticForReason:v17];
        [(SBHomeScreenController *)self setKeepTodayViewIconImagesStaticAssertion:v18];
      }
    }
  }
}

- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences
{
  preferencesCopy = preferences;
  [preferencesCopy setActivationPolicyForParticipantsBelow:0];
  [preferencesCopy setHomeGestureConsumption:1];
}

- (void)searchBarDidFocus
{
  _rootFolderController = [(SBHomeScreenController *)self _rootFolderController];
  if (([_rootFolderController isTransitioningPageState] & 1) == 0 && !SBSpotlightIsVisible())
  {
    [_rootFolderController presentSpotlightAnimated:1 completionHandler:0];
  }
}

- (void)proactiveHomeScreenSuggestionProvider:(id)provider willUseTemporaryIntent:(id)intent forIconWithIdentifier:(id)identifier widgetUniqueIdentifier:(id)uniqueIdentifier
{
  v21 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  identifierCopy = identifier;
  uniqueIdentifierCopy = uniqueIdentifier;
  v12 = SBLogWidgetIntent();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138413058;
    v14 = intentCopy;
    v15 = 2048;
    _indexingHash = [intentCopy _indexingHash];
    v17 = 2112;
    v18 = identifierCopy;
    v19 = 2114;
    v20 = uniqueIdentifierCopy;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Setting temporary intent '%@/%lld' for icons with identifier '%@' / widgetUniqueIdentifier: %{public}@", &v13, 0x2Au);
  }

  [(SBHomeScreenController *)self setTemporaryIntent:intentCopy forIconWithIdentifier:identifierCopy widgetUniqueIdentifier:uniqueIdentifierCopy];
}

- (id)suggestionsWidgetViewController:(id)controller iconForApplicationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  iconModel = [(SBHomeScreenController *)self iconModel];
  v7 = [iconModel applicationIconForBundleIdentifier:identifierCopy];

  return v7;
}

- (id)appPredictionViewController:(id)controller badgeValueForApplicationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _iconController = [(SBHomeScreenController *)self _iconController];
  displayIDsWithBadgingEnabled = [_iconController displayIDsWithBadgingEnabled];
  v8 = [displayIDsWithBadgingEnabled containsObject:identifierCopy];

  if (v8)
  {
    applicationController = [(SBHomeScreenController *)self applicationController];
    v10 = [applicationController applicationWithBundleIdentifier:identifierCopy];
    badgeValue = [v10 badgeValue];
  }

  else
  {
    badgeValue = 0;
  }

  return badgeValue;
}

- (BOOL)appPredictionViewController:(id)controller shouldDisplayBadgeWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _iconController = [(SBHomeScreenController *)self _iconController];
  v7 = [_iconController _allowsBadgingForApplicationBundleIdentifier:identifierCopy];

  return v7;
}

- (id)appPredictionViewController:(id)controller iconForApplicationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  iconModel = [(SBHomeScreenController *)self iconModel];
  v7 = [iconModel applicationIconForBundleIdentifier:identifierCopy];

  return v7;
}

- (id)additionalIconListLayoutObserversForAppPredictionViewController:(id)controller
{
  v6[1] = *MEMORY[0x277D85DE8];
  iconManager = [(SBHomeScreenController *)self iconManager];
  if (objc_opt_respondsToSelector())
  {
    v6[0] = iconManager;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (id)createStatusBarVisibiltyAssertionForWindowScene:(id)scene
{
  statusBarManager = [scene statusBarManager];
  assertionManager = [statusBarManager assertionManager];
  v5 = [assertionManager newSettingsAssertionWithStatusBarHidden:0 atLevel:0 reason:@"show on homescreen backstop"];

  return v5;
}

- (int64_t)interfaceOrientationForWallpaperController:(id)controller
{
  window = [(SBHomeScreenController *)self window];
  interfaceOrientation = [window interfaceOrientation];

  return interfaceOrientation;
}

- (void)setWallpaperAnimationDisabled:(BOOL)disabled forReason:(id)reason
{
  disabledCopy = disabled;
  reasonCopy = reason;
  suspendWallpaperAnimationForOverlayViewAssertion = [(SBHomeScreenController *)self suspendWallpaperAnimationForOverlayViewAssertion];
  [suspendWallpaperAnimationForOverlayViewAssertion invalidate];

  if (disabledCopy)
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
      v10 = [v9 suspendWallpaperAnimationForReason:reasonCopy];
      [(SBHomeScreenController *)self setSuspendWallpaperAnimationForOverlayViewAssertion:v10];
    }
  }
}

- (id)testSetupForIconManagerWidgetScrollPerformanceTest:(id)test
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
  health = [MEMORY[0x277D662E8] health];
  v39[3] = health;
  home = [MEMORY[0x277D662E8] home];
  v39[4] = home;
  passbook = [MEMORY[0x277D662E8] passbook];
  v39[5] = passbook;
  preferences = [MEMORY[0x277D662E8] preferences];
  v39[6] = preferences;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:7];
  v40[0] = v29;
  v28 = [MEMORY[0x277D662F8] remindersWidgetIconDescriptorForSizeClass:v3];
  v38[0] = v28;
  v27 = [MEMORY[0x277D662F8] tvWidgetIconDescriptorForSizeClass:v3];
  v38[1] = v27;
  documents = [MEMORY[0x277D662E8] documents];
  v38[2] = documents;
  findMy = [MEMORY[0x277D662E8] findMy];
  v38[3] = findMy;
  shortcuts = [MEMORY[0x277D662E8] shortcuts];
  v38[4] = shortcuts;
  iTunesStore = [MEMORY[0x277D662E8] iTunesStore];
  v38[5] = iTunesStore;
  tips = [MEMORY[0x277D662E8] tips];
  v38[6] = tips;
  translate = [MEMORY[0x277D662E8] translate];
  v38[7] = translate;
  contacts = [MEMORY[0x277D662E8] contacts];
  v38[8] = contacts;
  watch = [MEMORY[0x277D662E8] watch];
  v38[9] = watch;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:10];
  v40[1] = v18;
  v17 = [MEMORY[0x277D66300] defaultStackIconDescriptorForSizeClass:v3];
  v37[0] = v17;
  v16 = [MEMORY[0x277D662F8] recentsWidgetIconDescriptorForSizeClass:v3];
  v37[1] = v16;
  documents2 = [MEMORY[0x277D662E8] documents];
  v37[2] = documents2;
  findMy2 = [MEMORY[0x277D662E8] findMy];
  v37[3] = findMy2;
  shortcuts2 = [MEMORY[0x277D662E8] shortcuts];
  v37[4] = shortcuts2;
  iTunesStore2 = [MEMORY[0x277D662E8] iTunesStore];
  v37[5] = iTunesStore2;
  health2 = [MEMORY[0x277D662E8] health];
  v37[6] = health2;
  home2 = [MEMORY[0x277D662E8] home];
  v37[7] = home2;
  passbook2 = [MEMORY[0x277D662E8] passbook];
  v37[8] = passbook2;
  preferences2 = [MEMORY[0x277D662E8] preferences];
  v37[9] = preferences2;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:10];
  v40[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:3];

  return v14;
}

- (id)testSetupForIconManagerAddWidgetsToEachPage:(id)page
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

- (id)testSetupForIconManagerWidgetScrollTest:(id)test
{
  v45[17] = *MEMORY[0x277D85DE8];
  testCopy = test;
  v38 = objc_opt_new();
  v3 = 0;
  v36 = *MEMORY[0x277D66520];
  v29 = *MEMORY[0x277D66548];
  v28 = *MEMORY[0x277D66518];
  v27 = *MEMORY[0x277D66510];
  do
  {
    v4 = objc_opt_new();
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      if ((v3 & 1 | 2) == 2)
      {
        v39 = [MEMORY[0x277D662F8] dateTimeWidgetIconDescriptorForSizeClass:v29];
        v45[0] = v39;
        findMy = [MEMORY[0x277D662F8] notesWidgetIconDescriptorForSizeClass:v29];
        v45[1] = findMy;
        v35 = [MEMORY[0x277D66300] padDefaultLeadingHomescreenLayoutStackWidgetIconDescriptorForSizeClass:v28];
        v45[2] = v35;
        v34 = [MEMORY[0x277D662F8] calendarWidgetIconDescriptorForSizeClass:v36];
        v45[3] = v34;
        v7 = [MEMORY[0x277D66300] padDefaultTrailingHomescreenLayoutStackWidgetIconDescriptorForSizeClass:v28];
        v45[4] = v7;
        v37 = v4;
        facetime = [MEMORY[0x277D662E8] facetime];
        v45[5] = facetime;
        documents = [MEMORY[0x277D662E8] documents];
        v45[6] = documents;
        reminders = [MEMORY[0x277D662E8] reminders];
        v45[7] = reminders;
        maps = [MEMORY[0x277D662E8] maps];
        v45[8] = maps;
        home = [MEMORY[0x277D662E8] home];
        v45[9] = home;
        camera = [MEMORY[0x277D662E8] camera];
        v45[10] = camera;
        appStore = [MEMORY[0x277D662E8] appStore];
        v45[11] = appStore;
        books = [MEMORY[0x277D662E8] books];
        v45[12] = books;
        podcasts = [MEMORY[0x277D662E8] podcasts];
        v45[13] = podcasts;
        v12 = [MEMORY[0x277D662E8] tv];
        v45[14] = v12;
        news = [MEMORY[0x277D662E8] news];
        v45[15] = news;
        preferences = [MEMORY[0x277D662E8] preferences];
        v45[16] = preferences;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:17];
        [v37 addObjectsFromArray:v15];

        home2 = facetime;
        health = v7;

        v4 = v37;
        v18 = v39;
        shortcuts = v35;

        iTunesStore = v34;
      }

      else
      {
        v18 = [MEMORY[0x277D662F8] tvWidgetIconDescriptorForSizeClass:v27];
        v44[0] = v18;
        findMy = [MEMORY[0x277D662E8] findMy];
        v44[1] = findMy;
        shortcuts = [MEMORY[0x277D662E8] shortcuts];
        v44[2] = shortcuts;
        iTunesStore = [MEMORY[0x277D662E8] iTunesStore];
        v44[3] = iTunesStore;
        health = [MEMORY[0x277D662E8] health];
        v44[4] = health;
        home2 = [MEMORY[0x277D662E8] home];
        v44[5] = home2;
        documents = [MEMORY[0x277D662E8] passbook];
        v44[6] = documents;
        reminders = [MEMORY[0x277D662E8] preferences];
        v44[7] = reminders;
        maps = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:8];
        [v4 addObjectsFromArray:maps];
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
      findMy = v21;
      [v4 addObject:v21];
      shortcuts = [MEMORY[0x277D662E8] documents];
      v43[0] = shortcuts;
      iTunesStore = [MEMORY[0x277D662E8] findMy];
      v43[1] = iTunesStore;
      health = [MEMORY[0x277D662E8] shortcuts];
      v43[2] = health;
      home2 = [MEMORY[0x277D662E8] iTunesStore];
      v43[3] = home2;
      documents = [MEMORY[0x277D662E8] health];
      v43[4] = documents;
      reminders = [MEMORY[0x277D662E8] home];
      v43[5] = reminders;
      maps = [MEMORY[0x277D662E8] passbook];
      v43[6] = maps;
      preferences2 = [MEMORY[0x277D662E8] preferences];
      v43[7] = preferences2;
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

- (id)testSetupHomeScreenForWidgetScrollPerformanceTest:(id)test
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

- (id)_configureCategoryMapProviderToUseCategoryMapAtURL:(id)l
{
  lCopy = l;
  if ([(SBHomeScreenController *)self isAppLibrarySupported])
  {
    _iconController = [(SBHomeScreenController *)self _iconController];
    libraryCategoryMapProvider = [_iconController libraryCategoryMapProvider];

    v9 = 0;
    [libraryCategoryMapProvider overrideCategoryMapForTestingAtURL:lCopy error:&v9];
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
    leafIcons = [(SBHIconModel *)v3 leafIcons];
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = leafIcons;
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
            applicationBundleID = [v11 applicationBundleID];
            if (applicationBundleID)
            {
              leafIdentifier = [v11 leafIdentifier];
              [v5 setObject:v11 forKey:leafIdentifier];
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
    allKeys = [v5 allKeys];
    [v14 setSortedApplicationIdentifiers:allKeys forCategoryIdentifier:v15];

    _iconController = [(SBHomeScreenController *)self _iconController];
    libraryCategoryMapProvider = [_iconController libraryCategoryMapProvider];

    [libraryCategoryMapProvider overrideCategoryMapForTesting:v14];
  }
}

- (void)_configureDeweyEachAppHasItsOwnCategory:(unint64_t)category
{
  v30 = *MEMORY[0x277D85DE8];
  if ([(SBHomeScreenController *)self isAppLibrarySupported])
  {
    categoryCopy = category;
    v5 = self->_iconModel;
    leafIcons = [(SBHIconModel *)v5 leafIcons];
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = leafIcons;
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
          if ([(SBIconModel *)v5 isIconVisible:v12, categoryCopy])
          {
            applicationBundleID = [v12 applicationBundleID];
            if (applicationBundleID)
            {
              leafIdentifier = [v12 leafIdentifier];
              [v7 setObject:v12 forKey:leafIdentifier];
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
    v23 = categoryCopy;
    [v7 enumerateKeysAndObjectsUsingBlock:v20];
    _iconController = [(SBHomeScreenController *)self _iconController];
    libraryCategoryMapProvider = [_iconController libraryCategoryMapProvider];

    [libraryCategoryMapProvider overrideCategoryMapForTesting:v16];
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

- (void)_configureLibraryWithCategoryLimit:(int64_t)limit
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(SBHomeScreenController *)self isAppLibrarySupported])
  {
    _libraryViewControllers = [(SBHomeScreenController *)self _libraryViewControllers];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [_libraryViewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(_libraryViewControllers);
          }

          podFolderViewController = [*(*(&v12 + 1) + 8 * v9) podFolderViewController];
          dataSource = [podFolderViewController dataSource];
          [dataSource setMaximumNumberOfDisplayedCategories:limit];

          ++v9;
        }

        while (v7 != v9);
        v7 = [_libraryViewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (void)_teardownDeweyTestConfigurations
{
  _iconController = [(SBHomeScreenController *)self _iconController];
  libraryCategoryMapProvider = [_iconController libraryCategoryMapProvider];

  [libraryCategoryMapProvider overrideCategoryMapForTesting:0];
  v4 = [libraryCategoryMapProvider requestLibraryCategoryMapRefreshWithOptions:15 reason:@"Tearing down test config"];
  [(SBHomeScreenController *)self _configureLibraryWithCategoryLimit:-1];
}

- (void)_presentPageManagement:(id)management
{
  managementCopy = management;
  _rootFolderController = [(SBHomeScreenController *)self _rootFolderController];
  [_rootFolderController _presentPageManagement:managementCopy];
}

- (void)_dismissPageManagementIfPresented:(id)presented
{
  presentedCopy = presented;
  _rootFolderController = [(SBHomeScreenController *)self _rootFolderController];
  [_rootFolderController _dismissPageManagementIfPresented:presentedCopy];
}

- (void)iconStyleCoordinatorDidUpdate:(id)update
{
  v17 = *MEMORY[0x277D85DE8];
  iconManager = [(SBHomeScreenController *)self iconManager];
  [iconManager setListLayoutProviderLayoutOptions:-[SBHomeScreenController bestListLayoutProviderLayoutOptions](self animated:{"bestListLayoutProviderLayoutOptions"), 1}];
  windowScene = [(SBHomeScreenController *)self windowScene];
  [(SBHomeScreenController *)self updateHomeScreenTraitOverridesForWindowScene:windowScene];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  additionalFloatingDockControllers = [(SBHomeScreenController *)self additionalFloatingDockControllers];
  v7 = [additionalFloatingDockControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(additionalFloatingDockControllers);
        }

        windowScene2 = [*(*(&v12 + 1) + 8 * v10) windowScene];
        if (windowScene2)
        {
          [(SBHomeScreenController *)self updateHomeScreenTraitOverridesForWindowScene:windowScene2];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [additionalFloatingDockControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(SBHomeScreenController *)self informIconStyleObserversOfStyleChange];
}

- (void)modalRemoteViewController:(id)controller willDismissWithResponse:(id)response
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
    initWithDefaultParameters = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
    [(BSInvalidatable *)v11 invalidateWithAnimationParameters:initWithDefaultParameters];
  }

  else
  {
    [(BSInvalidatable *)self->_wallpaperEditorStatusBarAssertion invalidate];
  }

  v10 = self->_wallpaperEditorStatusBarAssertion;
  self->_wallpaperEditorStatusBarAssertion = 0;
}

- (void)modalRemoteViewController:(id)controller didDismissWithResponse:(id)response
{
  controllerCopy = controller;
  homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
  [homeScreenViewController bs_removeChildViewController:controllerCopy];

  remoteWallpaperEditorViewController = self->_remoteWallpaperEditorViewController;
  self->_remoteWallpaperEditorViewController = 0;

  [(SBFloatingDockBehaviorAssertion *)self->_wallpaperEditorFloatingDockBehaviorAssertion invalidate];
  wallpaperEditorFloatingDockBehaviorAssertion = self->_wallpaperEditorFloatingDockBehaviorAssertion;
  self->_wallpaperEditorFloatingDockBehaviorAssertion = 0;

  iconManager = [(SBHomeScreenController *)self iconManager];
  rootFolderController = [iconManager rootFolderController];
  folderView = [rootFolderController folderView];

  [folderView setUsesGlassGroup:0];
  homeScreenViewController2 = [(SBHomeScreenController *)self homeScreenViewController];
  [homeScreenViewController2 setUsesGlassGroup:1];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHomeScreenController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  homeScreenViewController = [(SBHomeScreenController *)self homeScreenViewController];
  if ([homeScreenViewController orientation] == 1)
  {
    v6 = @"UIInterfaceOrientationPortrait";
  }

  else if ([homeScreenViewController orientation] == 4)
  {
    v6 = @"UIInterfaceOrientationLandscapeLeft";
  }

  else if ([homeScreenViewController orientation] == 3)
  {
    v6 = @"UIInterfaceOrientationLandscapeRight";
  }

  else if ([homeScreenViewController orientation] == 2)
  {
    v6 = @"UIInterfaceOrientationPortraitUpsideDown";
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 appendObject:v6 withName:@"orientation"];
  iconModel = [(SBHomeScreenController *)self iconModel];
  v9 = [v4 appendObject:iconModel withName:@"iconModel"];

  _rootFolderController = [(SBHomeScreenController *)self _rootFolderController];
  v11 = [v4 appendObject:_rootFolderController withName:@"rootFolderController"];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHomeScreenController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
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