@interface UIViewController
+ (BOOL)_allViewControllersInArray:(id)a3 allowAutorotationToInterfaceOrientation:(int64_t)a4 predicate:(id)a5;
+ (BOOL)_isViewSizeFullScreen:(id)a3 inWindow:(id)a4 ignoreInWindowCheck:(BOOL)a5;
+ (BOOL)_shouldAnimateTransitions;
+ (BOOL)_shouldUseLegacyUnwindDestinationSearch;
+ (BOOL)doesOverridePreferredInterfaceOrientationForPresentation;
+ (BOOL)doesOverrideViewControllerMethod:(SEL)a3;
+ (CGSize)defaultFormSheetSize;
+ (CGSize)defaultFormSheetSizeForScreenSize:(CGSize)a3;
+ (double)_boundsWidthWithMinimumHorizontalContentMarginForView:(id)a3 preservingContentWidth:(double)a4;
+ (double)_horizontalContentMarginForView:(id)a3;
+ (double)_horizontalContentMarginForView:(id)a3 ofWidth:(double)a4;
+ (double)_horizontalContentMarginForViewWidth:(double)a3 safeAreaInsets:(UIEdgeInsets)a4 traitCollection:(id)a5;
+ (double)_slimHorizontalContentMarginForTraitCollection:(id)a3;
+ (id)XPCInterface;
+ (id)_allDescriptions;
+ (id)_printHierarchy;
+ (id)_safeAreaInsetsTrace;
+ (id)_traitCollectionWithParentTraitCollection:(id)a3 overrideTraitCollection:(id)a4;
+ (id)_viewControllerForFullScreenPresentationFromView:(id)a3;
+ (id)_whitelistOfSubclassableViewControllersMarkedSafe;
+ (int)_keyboardDirectionForTransition:(int)a3;
+ (int64_t)_keyboardAnimationTypeForTransition:(int)a3;
+ (void)_performWithoutDeferringTransitionsAllowingAnimation:(void *)a3 actions:;
+ (void)_scheduleTransition:(id)a3;
+ (void)_sendPrepareForTapGesture:(uint64_t)a1;
+ (void)_traverseViewControllerHierarchyWithDelayedRelease:(id)a3;
+ (void)_withDisabledAppearanceTransitions:(BOOL)a3 forDescendantsOf:(id)a4 visibleOnly:(BOOL)a5 perform:(id)a6;
+ (void)attemptRotationToDeviceOrientation;
+ (void)initialize;
+ (void)removeViewControllerForView:(id)a3;
- ($0AC6E346AE4835514AAA8AC86D8F4844)__sizeClassPair;
- ($0AC6E346AE4835514AAA8AC86D8F4844)_presentationSizeClassPair;
- ($115C4C562B26FF47E01F9F4EA65B5887)_hostAuditToken;
- (BOOL)__knownPresentationWithoutPresentationControllerInstance;
- (BOOL)__withSupportedInterfaceOrientation:(void *)a3 apply:;
- (BOOL)_allowsSkippingLayout;
- (BOOL)_ancestorViewControllerIsInPopover;
- (BOOL)_canBecomeFirstResponder;
- (BOOL)_canPerformUnwindSegueAction:(SEL)a3 fromViewController:(id)a4 sender:(id)a5;
- (BOOL)_canReloadView;
- (BOOL)_canRestoreFocusAfterTransitionToItem:(id)a3;
- (BOOL)_canShowWhileLocked;
- (BOOL)_containsFirstResponder;
- (BOOL)_forwardAppearanceMethods;
- (BOOL)_forwardRotationMethods;
- (BOOL)_freezeLayoutForOrientationChangeOnDismissal;
- (BOOL)_hackFor11408026_beginAppearanceTransition:(BOOL)a3 animated:(BOOL)a4;
- (BOOL)_hasDeepestActionResponder;
- (BOOL)_hasDeepestPresentedActionResponderOrBlock:(id)a3;
- (BOOL)_hasPreferredInterfaceOrientationForPresentation;
- (BOOL)_isDelayingPresentation;
- (BOOL)_isDetachedFromWindowRootViewControllerHierarchy;
- (BOOL)_isDimmingBackground;
- (BOOL)_isInContextOfPresentationControllerOfClass:(Class)a3 effective:(BOOL)a4;
- (BOOL)_isInPopoverPresentation;
- (BOOL)_isInSheetPresentation;
- (BOOL)_isInViewControllerThatHandlesKeyboardAvoidance;
- (BOOL)_isInterfaceAutorotationDisabled;
- (BOOL)_isMemberOfViewControllerHierarchy:(id)a3;
- (BOOL)_isPresentedFormSheet;
- (BOOL)_isSupportedInterfaceOrientation:(int64_t)a3;
- (BOOL)_isViewControllerInWindowHierarchy;
- (BOOL)_navControllerIsLayingOutTopViewController;
- (BOOL)_shouldAttemptToPreserveInputViewsForResponder:(id)a3;
- (BOOL)_shouldChildViewControllerUseFullScreenLayout:(id)a3;
- (BOOL)_shouldIgnoreChildFocusRegions;
- (BOOL)_shouldOverlayTabBar;
- (BOOL)_shouldTrackAppearStateChange;
- (BOOL)_shouldUseFullScreenLayoutInWindow:(id)a3 parentViewController:(id)a4;
- (BOOL)_shouldUseOnePartRotation;
- (BOOL)_tvTabBarShouldAutohide;
- (BOOL)_useSheetRotation;
- (BOOL)_viewControllerIgnoresClippedGlyphPathFrame;
- (BOOL)_viewControllerUnderlapsStatusBar;
- (BOOL)_willPreemptRunningPresentationTransition;
- (BOOL)_willPreemptRunningTransitionForDismissal;
- (BOOL)_wrapsNavigationController:(id *)a3;
- (BOOL)_wrapsSplitViewController:(id *)a3;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canPerformUnwindSegueAction:(SEL)action fromViewController:(UIViewController *)fromViewController sender:(id)sender;
- (BOOL)disablesAutomaticKeyboardDismissal;
- (BOOL)extendedLayoutIncludesOpaqueBars;
- (BOOL)isBeingDismissed;
- (BOOL)isBeingPresented;
- (BOOL)isModalInPopover;
- (BOOL)isMovingFromParentViewController;
- (BOOL)isMovingToParentViewController;
- (BOOL)performsActionsWhilePresentingModally;
- (BOOL)prefersStatusBarHidden;
- (BOOL)restoresFocusAfterTransition;
- (BOOL)searchBarHidNavBar;
- (BOOL)sendClientToHostAction:(id)a3;
- (BOOL)shouldAutorotate;
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation;
- (BOOL)shouldWindowUseOnePartInterfaceRotationAnimation:(id)a3;
- (CGPoint)_centerForOrientation:(int64_t)a3;
- (CGRect)_boundsForOrientation:(int64_t)a3;
- (CGRect)_defaultInitialViewFrame;
- (CGRect)_embeddedViewFrame;
- (CGRect)_viewFrameInWindowForContentOverlayInsetsCalculation;
- (CGSize)_formSheetSizeForWindowWithSize:(CGSize)a3 screenSize:(CGSize)a4;
- (CGSize)_resolvedPreferredContentSize;
- (CGSize)_systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (CGSize)contentSizeForViewInPopoverView;
- (CGSize)formSheetSize;
- (CGSize)preferredContentSize;
- (NSArray)_relevantToolbarItems;
- (NSArray)allowedChildViewControllersForUnwindingFromSource:(UIStoryboardUnwindSegueSource *)source;
- (NSArray)childViewControllers;
- (NSArray)preferredFocusEnvironments;
- (NSArray)previewActionItems;
- (NSBundle)nibBundle;
- (NSDirectionalEdgeInsets)systemMinimumLayoutMargins;
- (NSExtensionContext)extensionContext;
- (NSString)_effectiveInteractionActivityTrackingBaseName;
- (NSString)focusGroupIdentifier;
- (NSString)nibName;
- (NSString)title;
- (SEL)_customSelectorToCreateChildViewControllerAtIndex:(int64_t)a3;
- (UIBarButtonItem)editButtonItem;
- (UIContentUnavailableConfigurationState)_bridgedContentUnavailableConfigurationState;
- (UIEdgeInsets)_avoidanceInsets;
- (UIEdgeInsets)_contentOverlayInsets;
- (UIEdgeInsets)_customBasePresentationInsetsForView:(id)a3;
- (UIEdgeInsets)_devicePeripheryInsets;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4;
- (UIEdgeInsets)_minimumLayoutMarginsForView;
- (UIEdgeInsets)_navigationControllerContentInsetAdjustment;
- (UIEdgeInsets)_overlayInsetsAdjustment;
- (UIEdgeInsets)_viewSafeAreaInsetsFromScene;
- (UIEdgeInsets)additionalSafeAreaInsets;
- (UIFocusEnvironment)parentFocusEnvironment;
- (UIFocusItem)_presentingFocusedItem;
- (UIFocusItemContainer)focusItemContainer;
- (UIInterfaceOrientation)interfaceOrientation;
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation;
- (UIInterfaceOrientationMask)supportedInterfaceOrientations;
- (UIModalPresentationStyle)modalPresentationStyle;
- (UIMultiColumnViewController)_multiColumnViewController;
- (UINavigationContentAdjustments)navigationInsetAdjustment;
- (UINavigationController)navigationController;
- (UINavigationItem)_navigationItemCreatingDefaultIfNotSet;
- (UINavigationItem)navigationItem;
- (UIPresentationController)presentationController;
- (UIScrollView)contentScrollViewForEdge:(NSDirectionalRectEdge)edge;
- (UISearchDisplayController)searchDisplayController;
- (UISheetPresentationController)sheetPresentationController;
- (UISplitViewController)splitViewController;
- (UIStoryboardSegue)segueForUnwindingToViewController:(UIViewController *)toViewController fromViewController:(UIViewController *)fromViewController identifier:(NSString *)identifier;
- (UITab)_resolvedTab;
- (UITab)tab;
- (UITabBarItem)tabBarItem;
- (UITraitCollection)traitCollection;
- (UIView)_showcaseView;
- (UIView)preferredFocusedItem;
- (UIView)preferredFocusedView;
- (UIView)rotatingHeaderView;
- (UIView)view;
- (UIViewController)_departingParentViewController;
- (UIViewController)childModalViewController;
- (UIViewController)childViewControllerForStatusBarStyle;
- (UIViewController)initWithCoder:(NSCoder *)coder;
- (UIViewController)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil;
- (UIViewController)presentedViewController;
- (UIViewController)presentingViewController;
- (UIViewController)targetViewControllerForAction:(SEL)action sender:(id)sender;
- (UIViewController)viewControllerForUnwindSegueAction:(SEL)action fromViewController:(UIViewController *)fromViewController withSender:(id)sender;
- (UIWindow)_window;
- (_BYTE)_contentScrollViewHeuristic;
- (_DWORD)_appearingOrAppearedChildModalViewController;
- (_UIActionSheetPresentationController)actionSheetPresentationController;
- (_UIFocusPlatformBehavior)_focusBehavior;
- (_UITypedStorage)_typedStorage;
- (_UIViewControllerOrnamentDelegate)_ornamentDelegate;
- (double)_executeUpdateProperties;
- (double)_sceneSystemMinimumMargin;
- (double)_statusBarHeightAdjustmentForCurrentOrientation;
- (double)_statusBarHeightForCurrentInterfaceOrientation;
- (double)_topBarHeight;
- (id)__potentialOverridingFocusEnvironments;
- (id)_activityContinuationSuitableToBecomeCurrent;
- (id)_adaptedPresentationControllerForTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
- (id)_ancestorViewController;
- (id)_ancestorViewControllerOfClass:(uint64_t)a3 allowModalParent:;
- (id)_appearanceContainer;
- (id)_childViewControllerForAlwaysOnTimelines;
- (id)_childViewControllersForAlwaysOnTimelines;
- (id)_compatibilityTraitOverridesFromParentViewControllerCreateIfNecessary:(uint64_t)a1;
- (id)_completionBlock;
- (id)_containingTabBarController;
- (id)_contentOrObservableScrollViewForEdge:(unint64_t)a3;
- (id)_contentOrObservableScrollViewInContainerForEdge:(void *)a1;
- (id)_contentScrollView;
- (id)_contentUnavailableConfiguration;
- (id)_contentUnavailableConfigurationState;
- (id)_customAnimatorForDismissedController:(void *)a1;
- (id)_customAnimatorForPresentedController:(void *)a3 presentingController:(void *)a4 sourceController:(void *)a5 originalPresentationController:;
- (id)_customInteractionControllerForDismissal:(void *)a1;
- (id)_customInteractionControllerForPresentation:(void *)a1;
- (id)_customPresentationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)_decodeRestorableStateAndReturnContinuationWithCoder:(id)a3;
- (id)_deepestActionResponder;
- (id)_deepestPresentedActionResponderOrBlock:(id)a3;
- (id)_defaultAnimationController;
- (id)_defaultContentScrollViewForEdge:(unint64_t)a3;
- (id)_definiteTransitionCoordinator;
- (id)_description;
- (id)_descriptionForPrintingHierarchyIncludingInsets:(uint64_t)a1;
- (id)_descriptionWithChildren:(int)a3;
- (id)_destinationForUnwindingFromSource:(id)a3 visitedViewControllers:(id)a4;
- (id)_effectiveControllersForAlwaysOnTimelines;
- (id)_effectiveExclusiveCollectionPhysicalButtonConfigurationViewController;
- (id)_effectiveHomeIndicatorAutoHiddenViewController;
- (id)_effectiveInterfaceOrientationLockViewController;
- (id)_effectivePointerLockViewController;
- (id)_effectiveScreenEdgesDeferringSystemGesturesViewController;
- (id)_effectiveStatusBarHiddenViewController;
- (id)_effectiveStatusBarStyleViewController;
- (id)_effectiveUserInterfaceStyleViewController;
- (id)_effectiveViewControllerForMultitaskingDragExclusionRects;
- (id)_effectiveWhitePointAdaptivityStyleViewController;
- (id)_existingPresentationControllerImmediate:(char)a3 effective:(int)a4 includesRoot:(char)a5 prefersRoot:;
- (id)_fallbackTabElementCreateIfNeeded:(BOOL)a3;
- (id)_firstResponder;
- (id)_hostedWindowScene;
- (id)_hostingNavigationBar;
- (id)_hostingSplitViewControllerForTabBar;
- (id)_independentContainedScrollViewIntermediateToDescendantViewController:(id)a3;
- (id)_keyboardSceneDelegate;
- (id)_keyboardShortcutMenuLeaves;
- (id)_modalPresenter:(void *)a1;
- (id)_modalPresenterForPresentationController:(uint64_t)a1;
- (id)_modalPreservedFirstResponder;
- (id)_nearestFullScreenAncestorViewController;
- (id)_nextResponderUsingTargetActionStrategyFromChildViewController:(id)a3 didTraverseToParentViewController:(BOOL *)a4;
- (id)_nextResponderUsingTraversalStrategy:(unint64_t)a3;
- (id)_nextViewController;
- (id)_nextViewControllerForUnwindSegueSearch;
- (id)_nonModalAncestorViewControllerStopAtIsPresentationContext:(BOOL)a3;
- (id)_nonPresentationAppearanceContainer;
- (id)_orientationDebugDescriptionBuilderWithMultilinePrefix:(id)a3;
- (id)_orientationDebugDescriptionWithMultilinePrefix:(id)a3;
- (id)_overridingPreferredFocusEnvironment;
- (id)_parentContentContainer;
- (id)_parentTraitEnvironment;
- (id)_parentViewController;
- (id)_popoverController;
- (id)_presentationControllerClassName;
- (id)_previousRootViewController;
- (id)_primaryViewControllerForAutorotationBelowWindow:(void *)a1;
- (id)_registerForTraitTokenChanges:(id)a3 withHandler:(id)a4;
- (id)_registerForTraitTokenChanges:(id)a3 withTarget:(id)a4 action:(SEL)a5;
- (id)_remoteViewControllerProxyWithErrorHandler:(id)a3;
- (id)_resolveContentScrollViewForEdge:(uint64_t)a1;
- (id)_retrievePresentingFocusedItemOrRemoveIfNotFocusable;
- (id)_rootAncestorViewControllerInWindow:(void *)a1;
- (id)_safePrimaryViewControllerForAutorotationBelowWindow:(id)a3;
- (id)_safeViewControllerForRotationWithDismissCheck:(BOOL)a3;
- (id)_safeViewControllerForSupportedInterfaceOrientationsWithDismissCheck:(BOOL)a3;
- (id)_safeWindowForAutorotationBelowWindow:(id)a3;
- (id)_screen;
- (id)_shim_contentScrollView;
- (id)_splitViewControllerEnforcingClass:(BOOL)a3;
- (id)_tabBarControllerEnforcingClass:(BOOL)a3;
- (id)_timelinesForDateInterval:(id)a3;
- (id)_traitCollectionByApplyingLocalOverridesToTraitCollection:(void *)a1;
- (id)_traitCollectionByApplyingOverridesFromParentViewControllerToTraitCollection:(void *)a1;
- (id)_traitCollectionForChildEnvironment:(id)a3;
- (id)_transitionCoordinator;
- (id)_userActionDescription;
- (id)_viewControllerForDismissal;
- (id)_viewControllerForObservableScrollView;
- (id)_viewControllerForRotation;
- (id)_viewControllerForRotationWithDismissCheck:(void *)a1;
- (id)_viewControllerForSupportedInterfaceOrientations;
- (id)_viewControllerForSupportedInterfaceOrientationsWithDismissCheck:(BOOL)a3;
- (id)_viewControllersForRotationCallbacks;
- (id)_viewControllersWhoseOrientationsMustCoincide;
- (id)_viewForContentInPopover;
- (id)_viewsWithDisabledInteractionGivenTransitionContext:(id)a3;
- (id)_visibleView;
- (id)_visualStyleOfContainingAlertController;
- (id)_windowForAutorotationBelowWindow:(void *)a1;
- (id)_zoomTransitionController;
- (id)afterAppearanceBlock;
- (id)bottomLayoutGuide;
- (id)invalidate;
- (id)keyCommands;
- (id)nextResponder;
- (id)previewMenuItems;
- (id)registerForPreviewingWithDelegate:(id)delegate sourceView:(UIView *)sourceView;
- (id)registerForTraitChanges:(id)a3 withAction:(SEL)a4;
- (id)registerForTraitChanges:(id)a3 withHandler:(id)a4;
- (id)registerForTraitChanges:(id)a3 withTarget:(id)a4 action:(SEL)a5;
- (id)restorationClass;
- (id)rotatingFooterViewForWindow:(id)a3;
- (id)rotatingHeaderViewForWindow:(id)a3;
- (id)safeAreaLayoutGuide;
- (id)storyboardIdentifier;
- (id)topLayoutGuide;
- (id)transitioningDelegate;
- (id)viewControllerForRotation;
- (int)_hostProcessIdentifier;
- (int)_preferredStatusBarVisibility;
- (int64_t)_horizontalSizeClass;
- (int64_t)_lastKnownInterfaceOrientation;
- (int64_t)_preferredInterfaceOrientationGivenCurrentOrientation:(int64_t)a3;
- (int64_t)_preferredWhitePointAdaptivityStyle;
- (int64_t)_rotatingFromInterfaceOrientation;
- (int64_t)_rotatingToInterfaceOrientation;
- (int64_t)_verticalSizeClass;
- (uint64_t)__updateContentOverlayInsetsWithOurRect:(void *)a3 inBoundsOfAncestorViewController:(CGFloat)x viaImmediateChildOfAncestor:(CGFloat)y;
- (uint64_t)_defaultSupportedInterfaceOrientations;
- (uint64_t)_defaultViewControllerStatusBarVisibilityBehavior;
- (uint64_t)_didSelfOrAncestorBeginAppearanceTransition;
- (uint64_t)_doesSelfOrAncestorPassPredicate:(uint64_t)a1;
- (uint64_t)_endAppearanceTransition:(uint64_t)a1;
- (uint64_t)_getViewControllerToInheritInsetsFrom:(id *)a3 viaImmediateChild:;
- (uint64_t)_isDeallocInitiated;
- (uint64_t)_isPresentingInWindow:(void *)a1;
- (uint64_t)_needsAutomaticContentUnavailableConfigurationUpdates;
- (uint64_t)_preferredInterfaceOrientationForPresentationInWindow:(uint64_t)a3 fromInterfaceOrientation:;
- (uint64_t)_presentedViewControllerStateIsValidForSourcingSupportedOrientations:(void *)a1;
- (uint64_t)_shouldRequestViewControllerForObservableScrollViewFromPresentedViewController;
- (uint64_t)_shouldSkipContentOverlayInsetsUpdate;
- (uint64_t)_transitionForModalTransitionStyle:(int)a3 appearing:;
- (uint64_t)_tryBecomeRootViewControllerInWindow:(uint64_t)a1;
- (uint64_t)_useViewBasedTopAndBottomLayoutGuides;
- (unint64_t)__supportedInterfaceOrientations;
- (void)__setParentViewController:(uint64_t)a1;
- (void)__viewDidAppear:(BOOL)a3;
- (void)__viewDidDisappear:(void *)a1;
- (void)__viewIsAppearing:(char)a3 skipWindowCheck:;
- (void)__viewWillAppear:(BOOL)a3;
- (void)__viewWillDisappear:(void *)a1;
- (void)__willChangeToIdiom:(int64_t)a3 onScreen:(id)a4;
- (void)_addChildModalViewController:(id *)a1;
- (void)_addChildViewController:(id)a3;
- (void)_addChildViewController:(id)a3 performHierarchyCheck:(BOOL)a4 notifyWillMove:(BOOL)a5;
- (void)_addCurlUpTapGestureRecognizerWithRevealedHeight:(void *)a1;
- (void)_addDescendantsToArray:(uint64_t)a3 visibleOnly:;
- (void)_applyCompatibilityTraitOverridesForOverrideTraitCollection:(uint64_t)a1;
- (void)_applyContentUnavailableConfiguration:(void *)a1;
- (void)_attachTab:(id *)a1;
- (void)_beginAppearanceTransitionToViewController:(id)a3 animated:(BOOL)a4;
- (void)_beginDelayingPresentation:(double)a3 cancellationHandler:(id)a4;
- (void)_beginDisablingInterfaceAutorotation;
- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)a3;
- (void)_cancelDelayedPresentation:(BOOL)a3;
- (void)_childTraitTransformDidChange;
- (void)_childViewControllerWillBePresentedFromViewControllerDelayingPresentationWithPresenter:(id)a3;
- (void)_cleanupPresentation;
- (void)_clearCachedPopoverContentSize;
- (void)_clearRecordedContentScrollView;
- (void)_collectExistingTraitCollectionsForTraitTracking:(id)a3;
- (void)_didCancelDismissTransition:(id)a3;
- (void)_didCancelPresentTransition:(id)a3;
- (void)_didEndCounterRotationForPresentation;
- (void)_didEnterAlwaysOn;
- (void)_didExitAlwaysOn;
- (void)_didFinishDismissTransition;
- (void)_didFinishPresentTransition;
- (void)_didResignContentViewControllerOfPopover:(id)a3;
- (void)_didRotateFromInterfaceOrientation;
- (void)_didRotateFromInterfaceOrientation:(int64_t)a3 forwardToChildControllers:(BOOL)a4 skipSelf:(BOOL)a5;
- (void)_didUpdateFocusInContext:(id)a3;
- (void)_dismissAccessibilityHUD;
- (void)_dismissViewControllerWithTransition:(int)a3 from:(id)a4 completion:(id)a5;
- (void)_doCommonSetup;
- (void)_eagerlyUpdateSafeAreaInsetsToViewDescendant:(id)a3;
- (void)_embedContentViewInView:(id)a3 withContentFrame:(CGRect)a4 delegate:(id)a5;
- (void)_endAppearanceTransitionToViewController:(id)a3;
- (void)_endDelayingPresentation;
- (void)_endDisablingInterfaceAutorotation;
- (void)_enumerateAncestorViewControllersUntilStop:(BOOL *)a3 usingBlock:(id)a4;
- (void)_enumerateVisibleChildControllers:(void *)a1 includePresentedChildren:(int)a2 usingBlock:(void *)a3;
- (void)_executeAfterAppearanceBlock;
- (void)_executeContentUnavailableConfigurationUpdate;
- (void)_executeViewIsAppearingBlock:(uint64_t)a1;
- (void)_handleTapToDismissModalCurl:(id)a3;
- (void)_inferLayoutGuidesFromSubviews;
- (void)_intelligenceCollectContentIn:(CGRect)a3 collector:(id)a4;
- (void)_intelligenceCollectSubelementsIn:(CGRect)a3 using:(id)a4 transformToRoot:(id)a5;
- (void)_invalidateChildContentOverlayInsetsWithOldInsets:(__n128)a3;
- (void)_invalidatePreferences:(__int16)a3 excluding:;
- (void)_invalidateRelevantToolbarItems;
- (void)_isWaitingForDelayedPresentation;
- (void)_keyboardWillHide:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)_legacyModalPresentTransitionDidComplete;
- (void)_objc_initiateDealloc;
- (void)_observeScrollView:(id)a3 temporaryCoordinatingReplacementDidChange:(id)a4;
- (void)_parent:(id)a3 willTransitionToTraitCollection:(id)a4 withTransitionCoordinator:(id)a5;
- (void)_performAtViewIsAppearing:(uint64_t)a1;
- (void)_performContentScrollViewUpdatesNotifyingObservers;
- (void)_performContentUnavailableConfigurationStateUpdate;
- (void)_performCoordinatedPresentOrDismiss:(uint64_t)a3 animated:;
- (void)_performPropertiesUpdate;
- (void)_populateArchivedChildViewControllers:(id)a3;
- (void)_populateInitialTraitCollection;
- (void)_prepareForNavigationTransition:(BOOL)a3;
- (void)_prepareForTapGesture:(id)a3;
- (void)_prepareForWindowDealloc;
- (void)_presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_presentViewController:(id)a3 modalSourceViewController:(id)a4 presentationController:(id)a5 animationController:(id)a6 interactionController:(id)a7 handoffData:(id)a8 completion:(id)a9;
- (void)_presentViewController:(id)a3 withAnimationController:(id)a4 completion:(id)a5;
- (void)_presentViewControllerForStateRestoration:(id)a3 animated:(BOOL)a4;
- (void)_presentingViewControllerWillChange:(id)a3;
- (void)_primitiveSetNavigationControllerContentInsetAdjustment:(UIEdgeInsets)a3;
- (void)_recordContentScrollView;
- (void)_recordTraitUsage:(__int128 *)a3 trackedStateDiff:(unint64_t)a4 insideMethod:(const char *)a5 withInvalidationAction:;
- (void)_recursiveUpdateContentOverlayInsetsFromParentIfNecessary;
- (void)_registerAuxiliaryChildEnvironmentForTraitInvalidations:(id)a3;
- (void)_removeChildModalViewController:(id *)a1;
- (void)_removeChildViewController:(id)a3;
- (void)_replaceViewControllerInPresentationHierarchy:(id)a3;
- (void)_restoreInputViewsForPresentation;
- (void)_sceneSettingsSafeAreaInsetsDidChangeForWindow:(id)a3;
- (void)_sendViewDidLoadWithAppearanceProxyObjectTaggingEnabled;
- (void)_sendViewWillTransitionToSizeToPresentationController:(double)a3 withTransitionCoordinator:(double)a4;
- (void)_setAllowsAutorotation:(BOOL)a3;
- (void)_setAvoidanceInsetsNeedsUpdate;
- (void)_setContentMargin:(double)a3;
- (void)_setContentOverlayInsets:(UIEdgeInsets)a3 andLeftMargin:(double)a4 rightMargin:(double)a5;
- (void)_setCustomChildViewControllerSelectorsNames:(id)a3;
- (void)_setExistingNavigationItem:(id)a3;
- (void)_setExistingTabBarItem:(id)a3;
- (void)_setFreezeLayoutForOrientationChangeOnDismissal:(BOOL)a3;
- (void)_setHostAuditToken:(id *)a3;
- (void)_setHostProcessIdentifier:(int)a3;
- (void)_setIgnoresWrapperViewForContentOverlayInsets:(BOOL)a3;
- (void)_setInCustomTransition:(BOOL)a3;
- (void)_setInterfaceOrientationOnModalRecursively:(void *)a1;
- (void)_setInternalContentScrollView:(id)a3;
- (void)_setMayForwardPresentationsToPresentedViewController:(BOOL)a3;
- (void)_setModalPresentationStyle:(int64_t)a3;
- (void)_setNavigationControllerContentInsetAdjustment:(UIEdgeInsets)a3;
- (void)_setNavigationControllerContentOffsetAdjustment:(double)a3;
- (void)_setNeedsNonDeferredFocusUpdate;
- (void)_setNeedsStatusBarAppearanceUpdateWithAnimationParameters:(id)a3;
- (void)_setNeedsUpdateContentUnavailableConfiguration;
- (void)_setNeedsUpdateOfMultitaskingDragExclusionRects;
- (void)_setOverrideHorizontalSizeClass:(int64_t)a3;
- (void)_setOverrideTransitioningDelegate:(id)a3;
- (void)_setOverrideUserInterfaceRenderingMode:(int64_t)a3;
- (void)_setPreferredTransition:(id)a3;
- (void)_setPresentationController:(id)a3;
- (void)_setPresentedStatusBarViewController:(id)a3 shouldJoinAnimationsInProgress:(BOOL)a4;
- (void)_setPresentedUserInterfaceStyleViewController:(id)a3;
- (void)_setSearchDisplayController:(int)a3 retain:;
- (void)_setSecurityModeForViewsLayer;
- (void)_setShouldFreezeUnderlapsStatusBar:(BOOL)a3;
- (void)_setSuppressesBottomBar:(BOOL)a3;
- (void)_setTemporaryPresentationController:(id)a3;
- (void)_setTraitStorageList:(id)a3;
- (void)_setUpLayoutGuideConstraintIfNecessaryAtTop:(uint64_t)a1;
- (void)_setUsesSharedView:(BOOL)a3;
- (void)_setViewAppearState:(uint64_t)a3 isAnimating:;
- (void)_setViewHostsLayoutEngine:(BOOL)a3;
- (void)_showAccessibilityHUDItem:(id)a3;
- (void)_showViewController:(id)a3 withAction:(SEL)a4 sender:(id)a5;
- (void)_supportedInterfaceOrientationsDidChange;
- (void)_systemLayoutFittingSizeDidChangeForChildContentContainer:(id)a3 childViewController:(id)a4;
- (void)_timelinesForDateInterval:(id)a3 completion:(id)a4;
- (void)_toggleEditing:(id)a3;
- (void)_traitCollectionDidChange:(id)a3;
- (void)_traitOverrides;
- (void)_transitionToNavigationViewController:(id)a3 withWrapper:(id)a4;
- (void)_transitionToViewController:(id)a3 whilePerforming:(id)a4 completion:(id)a5;
- (void)_traverseViewControllerHierarchyFromLevel:(int64_t)a3 withBlock:(id)a4;
- (void)_uip_setTabElement:(id)a3;
- (void)_unembedContentViewSettingDelegate:(id)a3;
- (void)_unloadHierarchyInputAccessoryViewIfNecessary;
- (void)_unsafeParentWillTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
- (void)_updateChildContentMargins;
- (void)_updateContentOverlayInsetsForSelfAndChildren;
- (void)_updateContentOverlayInsetsFromParentForNavigationTransitionWithFinalRectInParent:(CGRect)a3;
- (void)_updateContentOverlayInsetsFromParentIfNecessary;
- (void)_updateContentUnavailableConfigurationWithObservationTracking;
- (void)_updateControlledViewsToFrame:(CGRect)a3;
- (void)_updateForReselectionInContainingTabBarController;
- (void)_updateInterfaceOrientationAnimated:(BOOL)a3;
- (void)_updateLastKnownInterfaceOrientationOnPresentionStack:(uint64_t)a1;
- (void)_updateLayoutForStatusBarAndInterfaceOrientation;
- (void)_updatePropertiesWithObservationTracking;
- (void)_updateSystemAppearanceWithRecursionBlock:(void *)a3 action:;
- (void)_updateTabBarLayout;
- (void)_updateToolbarItemsFromViewController:(id)a3 animated:(BOOL)a4;
- (void)_updateTraitsIfNecessarySchedulingPropagation:(uint64_t)a1;
- (void)_updateViewConstraintsWithObservationTracking;
- (void)_updateViewSafeAreaInsetsAndEagerlyUpdateContentScrollView:(double *)a1;
- (void)_updateWithFrameSpecifier:(id)a3;
- (void)_updateWithFrameSpecifier:(id)a3 completion:(id)a4;
- (void)_viewDidLayoutSubviewsWithObservationTracking;
- (void)_viewSubtreeDidGainScrollView:(id)a3 enclosingViewController:(id)a4;
- (void)_viewWillLayoutSubviewsWithObservationTracking;
- (void)_willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4 forwardToChildControllers:(BOOL)a5 skipSelf:(BOOL)a6;
- (void)_willBeginCounterRotationForPresentation;
- (void)_willEnterAlwaysOn;
- (void)_willExitAlwaysOn;
- (void)_willRotateToInterfaceOrientation;
- (void)_willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4 forwardToChildControllers:(BOOL)a5 skipSelf:(BOOL)a6;
- (void)_window:(id)a3 viewWillTransitionToSize:(CGSize)a4 withTransitionCoordinator:(id)a5;
- (void)_window:(id)a3 willTransitionToTraitCollection:(id)a4 withTransitionCoordinator:(id)a5;
- (void)_windowControllerTransitionDidCancel;
- (void)addKeyCommand:(UIKeyCommand *)keyCommand;
- (void)applicationDidResume;
- (void)applicationWantsViewsToDisappear;
- (void)autoresizeArchivedView;
- (void)awakeFromNib;
- (void)beginAppearanceTransition:(BOOL)isAppearing animated:(BOOL)animated;
- (void)beginRequestWithExtensionContext:(id)a3;
- (void)cancelBeginAppearanceTransition;
- (void)dealloc;
- (void)didMoveToParentViewController:(UIViewController *)parent;
- (void)dismissModalViewControllerAnimated:(BOOL)animated;
- (void)dismissViewControllerAnimated:(BOOL)flag completion:(void *)completion;
- (void)dismissViewControllerWithTransition:(int)a3 completion:(id)a4;
- (void)encodeRestorableStateWithCoder:(NSCoder *)coder;
- (void)encodeWithCoder:(id)a3;
- (void)getRotationContentSettings:(id *)a3 forWindow:(id)a4;
- (void)loadView;
- (void)loadViewIfRequired;
- (void)performSegueWithIdentifier:(NSString *)identifier sender:(id)sender;
- (void)popoverPresentationController:(void *)a1;
- (void)presentViewController:(UIViewController *)viewControllerToPresent animated:(BOOL)flag completion:(void *)completion;
- (void)presentViewController:(id)a3 withTransition:(int)a4 completion:(id)a5;
- (void)removeChildViewController:(id)a3 notifyDidMove:(BOOL)a4;
- (void)removeFromParentViewController;
- (void)removeKeyCommand:(UIKeyCommand *)keyCommand;
- (void)setAdditionalSafeAreaInsets:(UIEdgeInsets)additionalSafeAreaInsets;
- (void)setAfterAppearanceBlock:(id)a3;
- (void)setAppearanceTransitionsAreDisabled:(BOOL)a3;
- (void)setAutomaticallyAdjustsScrollViewInsets:(BOOL)automaticallyAdjustsScrollViewInsets;
- (void)setAutoresizesArchivedViewToFullSize:(BOOL)a3;
- (void)setContainmentSupport:(BOOL)a3;
- (void)setContentScrollView:(UIScrollView *)scrollView forEdge:(NSDirectionalRectEdge)edge;
- (void)setContentSizeForViewInPopover:(CGSize)contentSizeForViewInPopover;
- (void)setContentUnavailableConfiguration:(id)contentUnavailableConfiguration;
- (void)setDefinesPresentationContext:(BOOL)definesPresentationContext;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setExtendedLayoutIncludesOpaqueBars:(BOOL)extendedLayoutIncludesOpaqueBars;
- (void)setFinishingModalTransition:(BOOL)a3;
- (void)setFocusGroupIdentifier:(NSString *)focusGroupIdentifier;
- (void)setFormSheetSize:(CGSize)a3;
- (void)setHidesBottomBarWhenPushed:(BOOL)hidesBottomBarWhenPushed;
- (void)setInAnimatedVCTransition:(BOOL)a3;
- (void)setInWillRotateCallback:(BOOL)a3;
- (void)setInterfaceOrientation:(int64_t)a3;
- (void)setModalInPopover:(BOOL)modalInPopover;
- (void)setModalPresentationStyle:(UIModalPresentationStyle)modalPresentationStyle;
- (void)setNeedsDidMoveCleanup:(BOOL)a3;
- (void)setNeedsFocusUpdate;
- (void)setNeedsUpdateOfPrefersInterfaceOrientationLocked;
- (void)setNeedsUpdateOfPrefersPointerLocked;
- (void)setNeedsUpdateOfSupportedInterfaceOrientations;
- (void)setNeedsUserInterfaceAppearanceUpdate;
- (void)setOverrideTraitCollection:(UITraitCollection *)collection forChildViewController:(UIViewController *)childViewController;
- (void)setOverrideTraitCollection:(id)a3;
- (void)setOverrideUserInterfaceStyle:(UIUserInterfaceStyle)overrideUserInterfaceStyle;
- (void)setParentViewController:(id)a3;
- (void)setPerformingModalTransition:(BOOL)a3;
- (void)setPreferredContentSize:(CGSize)preferredContentSize;
- (void)setPreferredFocusedItem:(id)a3;
- (void)setPreferredTransition:(id)a3;
- (void)setProvidesPresentationContextTransitionStyle:(BOOL)providesPresentationContextTransitionStyle;
- (void)setRestorationClass:(id)restorationClass;
- (void)setRestoresFocusAfterTransition:(BOOL)restoresFocusAfterTransition;
- (void)setSearchBarHidNavBar:(BOOL)a3;
- (void)setShouldForceNonAnimatedTransition:(BOOL)a3;
- (void)setStoryboardIdentifier:(id)a3;
- (void)setTabBarItem:(UITabBarItem *)tabBarItem;
- (void)setTitle:(NSString *)title;
- (void)setToolbarItems:(NSArray *)toolbarItems;
- (void)setToolbarItems:(NSArray *)toolbarItems animated:(BOOL)animated;
- (void)setTransitioningDelegate:(id)transitioningDelegate;
- (void)setUserActivity:(id)a3;
- (void)setValue:(id)a3 forKey:(id)a4;
- (void)setView:(UIView *)view;
- (void)setViewRespectsSystemMinimumLayoutMargins:(BOOL)viewRespectsSystemMinimumLayoutMargins;
- (void)setWantsFullScreenLayout:(BOOL)wantsFullScreenLayout;
- (void)transitionFromViewController:(UIViewController *)fromViewController toViewController:(UIViewController *)toViewController duration:(NSTimeInterval)duration options:(UIViewAnimationOptions)options animations:(void *)animations completion:(void *)completion;
- (void)unloadViewForced:(BOOL)a3;
- (void)unregisterPreviewSourceView:(id)a3;
- (void)unregisterPreviewing:(id)a3;
- (void)updateFocusIfNeeded;
- (void)updatePropertiesIfNeeded;
- (void)updateTraitsIfNeeded;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)animated;
- (void)viewDidDisappear:(BOOL)animated;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)animated;
- (void)viewWillDisappear:(BOOL)animated;
- (void)viewWillMoveToWindow:(id)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willMoveToParentViewController:(UIViewController *)parent;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
- (void)window:(id)a3 didAnimateFirstHalfOfRotationToInterfaceOrientation:(int64_t)a4;
- (void)window:(id)a3 didRotateFromInterfaceOrientation:(int64_t)a4;
- (void)window:(id)a3 didRotateFromInterfaceOrientation:(int64_t)a4 oldSize:(CGSize)a5;
- (void)window:(id)a3 resizeFromOrientation:(int64_t)a4;
- (void)window:(id)a3 setupWithInterfaceOrientation:(int64_t)a4;
- (void)window:(id)a3 statusBarWillChangeFromHeight:(double)a4 toHeight:(double)a5;
- (void)window:(id)a3 willAnimateFirstHalfOfRotationToInterfaceOrientation:(int64_t)a4 duration:(double)a5;
- (void)window:(id)a3 willAnimateFromContentFrame:(CGRect)a4 toContentFrame:(CGRect)a5;
- (void)window:(id)a3 willAnimateRotationToInterfaceOrientation:(int64_t)a4 duration:(double)a5;
- (void)window:(id)a3 willAnimateRotationToInterfaceOrientation:(int64_t)a4 duration:(double)a5 newSize:(CGSize)a6;
- (void)window:(id)a3 willAnimateSecondHalfOfRotationFromInterfaceOrientation:(int64_t)a4 duration:(double)a5;
- (void)window:(id)a3 willRotateToInterfaceOrientation:(int64_t)a4 duration:(double)a5;
- (void)window:(id)a3 willRotateToInterfaceOrientation:(int64_t)a4 duration:(double)a5 newSize:(CGSize)a6;
@end

@implementation UIViewController

- (UIView)view
{
  [(UIViewController *)self loadViewIfRequired];

  return [(UIViewController *)self _existingView];
}

- (void)loadViewIfRequired
{
  v52 = *MEMORY[0x1E69E9840];
  if (!self->_view)
  {
    if ((*(&self->_viewControllerFlags + 4) & 0x80) == 0)
    {
      v3 = self->_lastNotifiedTraitCollection;
      if (dyld_program_sdk_at_least() && v3)
      {
        v4 = v3;
        v5 = _UISetCurrentFallbackEnvironment(v4);
        [(UIViewController *)self loadView];
        _UIRestorePreviousFallbackEnvironment(v5);
      }

      else
      {
        if (!v3 && dyld_program_sdk_at_least())
        {
          v6 = UIViewControllerMissingInitialTraitCollection(self);
          lastNotifiedTraitCollection = self->_lastNotifiedTraitCollection;
          self->_lastNotifiedTraitCollection = v6;
        }

        [(UIViewController *)self loadView];
      }

      [(UIViewController *)self _setUpLayoutGuideConstraintIfNecessaryAtTop:?];
      [(UIViewController *)self _setUpLayoutGuideConstraintIfNecessaryAtTop:?];
      v8 = [(UIViewController *)self _window];
      v9 = [v8 screen];

      if (v9 && [(UIViewController *)self isViewLoaded])
      {
        v10 = [(UIViewController *)self _contentOrObservableScrollViewForEdge:1];
        [v10 _willChangeToIdiom:objc_msgSend(v9 onScreen:{"_userInterfaceIdiom"), v9}];
        v11 = [(UIViewController *)self _contentOrObservableScrollViewForEdge:4];
        if (v11 != v10)
        {
          [v11 _willChangeToIdiom:objc_msgSend(v9 onScreen:{"_userInterfaceIdiom"), v9}];
        }
      }

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v12 = [(UIViewController *)self storyboardSegueTemplates];
      v13 = [v12 countByEnumeratingWithState:&v45 objects:v51 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v46;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v46 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v45 + 1) + 8 * i);
            if ([v17 performOnViewLoad])
            {
              v18 = [v17 perform:self];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v45 objects:v51 count:16];
        }

        while (v14);
      }

      if ([(NSArray *)self->_storyboardPreviewingRegistrants count])
      {
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v19 = self->_storyboardPreviewingRegistrants;
        v20 = [(NSArray *)v19 countByEnumeratingWithState:&v41 objects:v50 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v42;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v42 != v22)
              {
                objc_enumerationMutation(v19);
              }

              [*(*(&v41 + 1) + 8 * j) registerForPreviewing];
            }

            v21 = [(NSArray *)v19 countByEnumeratingWithState:&v41 objects:v50 count:16];
          }

          while (v21);
        }
      }

      if ([(NSArray *)self->_storyboardCommitSegueTemplates count])
      {
        v24 = [(NSArray *)self->_storyboardSegueTemplates arrayByAddingObjectsFromArray:self->_storyboardCommitSegueTemplates];
        storyboardSegueTemplates = self->_storyboardSegueTemplates;
        self->_storyboardSegueTemplates = v24;
      }

      if (dyld_program_sdk_at_least())
      {
        if ([(UIView *)self->_view translatesAutoresizingMaskIntoConstraints])
        {
          [(UIView *)self->_view _setHostsLayoutEngine:1];
        }
      }

      [(UIView *)self->_view setNeedsUpdateProperties];
      [(UIViewController *)self _sendViewDidLoadWithAppearanceProxyObjectTaggingEnabled];
      v26 = [(UIViewController *)self searchDisplayController];
      if (!v26)
      {
        goto LABEL_47;
      }

      v27 = v26;
      v28 = [(UIViewController *)self searchDisplayController];
      if ([v28 displaysSearchBarInNavigationBar])
      {
        v29 = [(UIViewController *)self navigationController];
        v30 = [v29 navigationBar];
        v31 = [v30 topItem];
        v32 = [(UIViewController *)self searchDisplayController];
        v33 = [v32 navigationItem];

        if (v31 == v33)
        {
LABEL_47:

          return;
        }

        v34 = [(UIViewController *)self navigationController];
        v27 = [v34 navigationBar];

        v35 = [v27 items];
        v36 = [v35 indexOfObject:self->_navigationItem];

        if (v36 == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_46:

          goto LABEL_47;
        }

        [v27 setLocked:0];
        v37 = [v27 items];
        v28 = [v37 mutableCopy];

        v38 = [v28 indexOfObject:self->_navigationItem];
        v39 = [(UIViewController *)self searchDisplayController];
        v40 = [v39 navigationItem];
        [v28 replaceObjectAtIndex:v38 withObject:v40];

        [v27 setItems:v28 animated:0];
        [v27 setLocked:1];
        [v27 setNeedsDisplay];
      }

      goto LABEL_46;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__UIViewController_loadViewIfRequired__block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    if (loadViewIfRequired_once != -1)
    {
      dispatch_once(&loadViewIfRequired_once, block);
    }
  }
}

- (id)_firstResponder
{
  if (!-[UIViewController isViewLoaded](self, "isViewLoaded") || (-[UIViewController view](self, "view"), v3 = objc_claimAutoreleasedReturnValue(), [v3 _firstResponder], v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
    v6.receiver = self;
    v6.super_class = UIViewController;
    v4 = [(UIResponder *)&v6 _firstResponder];
  }

  return v4;
}

- (id)nextResponder
{
  v3 = _UIResponderCrossSceneResponderChainEnabled();
  v4 = [(UIResponder *)self _nextResponderOverride];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v6 = [(UIViewController *)self _existingView];
      v7 = [(UIViewController *)self _window];
      v8 = v7;
      if (self->_nextResponderIgnoresWindowIfRootVC || ([v7 rootViewController], v9 = objc_claimAutoreleasedReturnValue(), v9, v9 != self))
      {
        v10 = [(UIViewController *)self parentModalViewController];
        if (v10 && ![(UIViewController *)self isBeingDismissed])
        {
          v12 = v10;
        }

        else
        {
          v11 = [v6 _window];

          if (v11)
          {
            [v6 superview];
          }

          else
          {
            [(UIViewController *)self parentViewController];
          }
          v12 = ;
        }

        v13 = v12;

        goto LABEL_53;
      }

      v33 = v8;
LABEL_51:
      v13 = v33;
      goto LABEL_53;
    }

LABEL_11:
    v13 = v4;
    goto LABEL_54;
  }

  if (v4)
  {
    goto LABEL_11;
  }

  parentModalViewController = self->_parentModalViewController;
  v15 = [(UIViewController *)self childModalViewController];
  if (v15)
  {
    v16 = [(UIViewController *)self _popoverController];
    if (dyld_program_sdk_at_least())
    {
      v17 = 1;
    }

    else
    {
      v18 = [v16 contentViewController];
      v17 = v18 != self;
    }
  }

  else
  {
    v17 = 0;
  }

  if (parentModalViewController)
  {
    v19 = 0;
  }

  else
  {
    v19 = !v17;
  }

  if (v19)
  {
    v6 = 0;
    v8 = 0;
LABEL_27:
    if (v17)
    {
      v22 = [v15 _existingView];
      v23 = v22;
      if (!v8 || ([v22 isDescendantOfView:v6] & 1) == 0)
      {
        v40 = v23;
        v24 = self;
        v25 = [(UIViewController *)v24 childModalViewController];
        if (v25)
        {
          v26 = v25;
          v27 = 0;
          v28 = 0;
          v29 = v24;
          do
          {
            v30 = [v26 _existingView];
            v31 = [v30 window];

            if (v31)
            {
              v32 = v26;

              v28 = v32;
            }

            v24 = v26;

            v26 = [(UIViewController *)v24 childModalViewController];

            v27 = v31;
            v29 = v24;
          }

          while (v26);
        }

        else
        {
          v28 = 0;
          v31 = 0;
        }

        if (v28)
        {
          v34 = v28;
        }

        else
        {
          v34 = v24;
        }

        v35 = v34;

        v36 = [(UIViewController *)v35 _existingView];
        v37 = [v36 window];

        if (v37)
        {
          v38 = [(UIViewController *)v35 view];
          v13 = [v38 superview];

          goto LABEL_53;
        }

        v23 = v40;
      }
    }

    if (![(UIViewController *)self isViewLoaded])
    {
      v13 = 0;
      goto LABEL_53;
    }

    v33 = [(UIView *)self->_view superview];
    goto LABEL_51;
  }

  v6 = [(UIViewController *)self _existingView];
  v8 = [v6 window];
  if (!parentModalViewController)
  {
    goto LABEL_27;
  }

  v20 = [(UIViewController *)parentModalViewController _existingView];
  v21 = [v20 window];
  if (v21 && ([v6 isDescendantOfView:v20] & 1) != 0)
  {

    goto LABEL_27;
  }

  v13 = parentModalViewController;

LABEL_53:
LABEL_54:

  return v13;
}

- (UIViewController)childModalViewController
{
  v3 = [(UIViewController *)self _appearingOrAppearedChildModalViewController];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_childModalViewControllers lastObject];
  }

  v6 = v5;

  return v6;
}

- (_DWORD)_appearingOrAppearedChildModalViewController
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v1 = *(a1 + 104);
    v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v2)
    {
      v3 = *v8;
      while (2)
      {
        for (i = 0; i != v2; i = i + 1)
        {
          if (*v8 != v3)
          {
            objc_enumerationMutation(v1);
          }

          v5 = *(*(&v7 + 1) + 8 * i);
          if (v5 && (v5[94] & 3u) - 1 < 2)
          {
            v2 = v5;
            goto LABEL_13;
          }
        }

        v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
        if (v2)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_populateInitialTraitCollection
{
  if (dyld_program_sdk_at_least())
  {
    v2 = +[UITraitCollection _fallbackTraitCollection];
    v3 = *(a1 + 504);
    *(a1 + 504) = v2;
  }
}

- (void)_doCommonSetup
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = *(a1 + 104);
  *(a1 + 104) = v2;

  if (([objc_opt_class() doesOverrideViewControllerMethod:sel_systemLayoutFittingSizeDidChangeForChildContentContainer_] & 1) != 0 || objc_msgSend(objc_opt_class(), "doesOverrideViewControllerMethod:", sel_systemLayoutFittingSizeDidChangeForChildViewController_))
  {
    *(a1 + 376) |= 0x20000000000uLL;
  }

  if ([objc_opt_class() doesOverrideViewControllerMethod:sel_contentScrollView])
  {
    *(a1 + 376) |= 0x100000000000000uLL;
  }

  if ([objc_opt_class() doesOverrideViewControllerMethod:sel__setContentOverlayInsets_])
  {
    *(a1 + 376) |= 0x10000000000000uLL;
  }

  v4 = [objc_opt_class() doesOverrideViewControllerMethod:sel_contentScrollViewForEdge_];
  v5 = (a1 + 376);
  v6 = *(a1 + 376);
  if (v4)
  {
    v6 = *v5 | 0x200000000000000;
  }

  *v5 = v6 & 0x9FFFFFFFFFFFFFFFLL;
  *(a1 + 384) &= 0xFFFCu;
  *(a1 + 384) &= 0xFFF3u;
  [a1 _setAllowsAutorotation:1];
  [objc_opt_class() defaultFormSheetSize];
  [a1 _setFormSheetSize:?];
  *(a1 + 376) |= 0x80000uLL;
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  if (pthread_main_np() == 1 && ([UIApp _isHandlingMemoryWarning] & 1) == 0)
  {
    [qword_1ED4985A8 addObject:a1];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__UIViewController__doCommonSetup__block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = a1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  if (qword_1ED4985D0 != -1)
  {
    dispatch_once(&qword_1ED4985D0, &__block_literal_global_294);
  }

  [v7 addObserver:a1 selector:sel_applicationWillSuspend name:@"UIApplicationSuspendedNotification" object:UIApp];
  [v7 addObserver:a1 selector:sel_applicationDidResume name:@"UIApplicationResumedNotification" object:UIApp];
  [v7 addObserver:a1 selector:sel_applicationWantsViewsToDisappear name:@"UIApplicationWantsViewsToDisappearNotification" object:UIApp];
  [v7 addObserver:a1 selector:sel_accessibilityLargeTextDidChange name:@"UIAccessibilityLargeTextChangedNotification" object:UIApp];
  [(UIViewController *)a1 _inferLayoutGuidesFromSubviews];
  [(UIViewController *)a1 _setUpLayoutGuideConstraintIfNecessaryAtTop:?];
  [(UIViewController *)a1 _setUpLayoutGuideConstraintIfNecessaryAtTop:?];
  *(a1 + 376) &= 0xFFFFFF3FFFFFFFFFLL;
  *(a1 + 384) &= ~0x20u;
  if ([(UIViewController *)a1 _needsAutomaticContentUnavailableConfigurationUpdates])
  {
    *(a1 + 384) |= 0x10u;
  }
}

+ (CGSize)defaultFormSheetSize
{
  v2 = +[_UIPresentationControllerDefaultVisualStyleProvider sharedInstance];
  v3 = [v2 defaultSheetMetrics];
  v4 = [objc_opt_self() mainScreen];
  [v4 bounds];
  [v3 defaultFormSheetSizeForScreenSize:{v5, v6}];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)_inferLayoutGuidesFromSubviews
{
  v42 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [*(a1 + 24) layoutGuides];
    v2 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v37;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v37 != v4)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v36 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v7 = v6;
          }

          else
          {
            v7 = 0;
          }

          v8 = v7;
          v9 = [v8 identifier];
          v10 = [v9 isEqualToString:@"_UIViewControllerTop"];
          v11 = &OBJC_IVAR___UIViewController__topLayoutGuide;
          if ((v10 & 1) != 0 || (v12 = [v9 isEqualToString:@"_UIViewControllerBottom"], v11 = &OBJC_IVAR___UIViewController__bottomLayoutGuide, v12))
          {
            v13 = *v11;
            v14 = v8;
            v8 = *(a1 + v13);
            *(a1 + v13) = v14;
          }

          else
          {
            v14 = 0;
          }

          v15 = [v14 _constraintsToRemoveAtRuntime];
          if ([v15 count])
          {
            [MEMORY[0x1E69977A0] deactivateConstraints:v15];
            [v14 _setConstraintsToRemoveAtRuntime:0];
          }
        }

        v3 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v3);
    }

    if (!*(a1 + 552) && !*(a1 + 560))
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      obja = [*(a1 + 24) subviews];
      v16 = [obja countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v33;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v33 != v18)
            {
              objc_enumerationMutation(obja);
            }

            v20 = *(*(&v32 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = v20;
              v22 = [v21 _archivedIdentifier];
              v23 = [v22 isEqualToString:@"_UIViewControllerTop"];

              v24 = &OBJC_IVAR___UIViewController__topLayoutGuide;
              if ((v23 & 1) != 0 || ([v21 _archivedIdentifier], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isEqualToString:", @"_UIViewControllerBottom"), v25, v24 = &OBJC_IVAR___UIViewController__bottomLayoutGuide, v26))
              {
                objc_storeStrong((a1 + *v24), v20);
                *(a1 + 376) |= 0x80000000000uLL;
                v27 = [v21 _constraintsToRemoveAtRuntime];

                if (v27)
                {
                  v28 = *(a1 + 24);
                  v29 = [v21 _constraintsToRemoveAtRuntime];
                  [v28 removeConstraints:v29];

                  [v21 _setConstraintsToRemoveAtRuntime:0];
                }
              }
            }
          }

          v17 = [obja countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v17);
      }
    }
  }
}

- (uint64_t)_needsAutomaticContentUnavailableConfigurationUpdates
{
  if (result)
  {
    if (*(result + 616) || ([objc_opt_class() doesOverrideViewControllerMethod:sel__bridgedUpdateContentUnavailableConfigurationUsingState_] & 1) != 0 || (objc_msgSend(objc_opt_class(), "doesOverrideViewControllerMethod:", sel_updateContentUnavailableConfigurationUsingState_) & 1) != 0)
    {
      return 1;
    }

    else
    {
      v1 = objc_opt_class();

      return [v1 doesOverrideViewControllerMethod:sel__updateContentUnavailableConfigurationUsingState_];
    }
  }

  return result;
}

- (UIViewController)presentedViewController
{
  v3 = [(UIViewController *)self childModalViewController];
  if (!v3)
  {
    v3 = [(UIViewController *)self->_parentViewController presentedViewController];
  }

  return v3;
}

- (UIWindow)_window
{
  if ([(UIViewController *)self isViewLoaded])
  {
    v3 = [(UIViewController *)self view];
    WeakRetained = [v3 window];

    if (WeakRetained)
    {
      goto LABEL_14;
    }
  }

  v5 = [(UIViewController *)self _rootAncestorViewControllerInWindow:?];
  if ([(UIViewController *)v5 isViewLoaded])
  {
    v6 = [(UIViewController *)v5 view];
    WeakRetained = [v6 window];

    if (!v5)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (!WeakRetained)
    {
      WeakRetained = objc_loadWeakRetained(&v5->_windowOfRootViewController);
    }

    goto LABEL_9;
  }

  WeakRetained = 0;
  if (v5)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (!WeakRetained)
  {
    if (v5 == self)
    {
      WeakRetained = 0;
    }

    else
    {
      WeakRetained = [(UIViewController *)v5 _window];
    }
  }

LABEL_14:

  return WeakRetained;
}

- (NSArray)childViewControllers
{
  if ([(NSMutableArray *)self->_childViewControllers count])
  {
    v3 = [(NSMutableArray *)self->_childViewControllers copy];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (UINavigationController)navigationController
{
  v3 = objc_opt_class();
  v4 = [(UIViewController *)self _ancestorViewControllerOfClass:v3 allowModalParent:0];
  v5 = v4;
  if (v4)
  {
    if ((*(v4 + 384) & 0x80) != 0)
    {
      v6 = 0;
    }

    else
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (UISplitViewController)splitViewController
{
  v3 = [(UIViewController *)self _popoverController];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _splitParentController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }
  }

  v6 = objc_opt_class();
  v5 = [(UIViewController *)self _ancestorViewControllerOfClass:v6 allowModalParent:0];
LABEL_5:

  return v5;
}

- (id)_popoverController
{
  WeakRetained = objc_loadWeakRetained(&self->_popoverController);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    goto LABEL_7;
  }

  v6 = self->_parentViewController;
  if (v6)
  {
    v7 = v6;
    goto LABEL_5;
  }

  v9 = self->_parentModalViewController;
  if (v9)
  {
    v7 = v9;
    if ([(UIViewController *)self modalPresentationStyle]!= UIModalPresentationCurrentContext && [(UIViewController *)self modalPresentationStyle]!= UIModalPresentationOverCurrentContext && [(UIViewController *)self modalPresentationStyle]!= 18)
    {
      v5 = 0;
      goto LABEL_6;
    }

LABEL_5:
    v5 = [(UIViewController *)v7 _popoverController];
LABEL_6:

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)loadView
{
  v3 = [(UIViewController *)self nibName];
  if (v3 && (v4 = v3, [(UIViewController *)self nibBundle], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [(UIViewController *)self nibName];
    v7 = [(UIViewController *)self nibBundle];
    v27 = v6;
    v8 = v7;
    if (self)
    {
      v9 = [(UIViewController *)self storyboard];
      if (v9 && (v10 = v9, -[UIViewController storyboard](self, "storyboard"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 containsNibNamed:v27], v11, v10, v12))
      {
        v13 = [(UIViewController *)self storyboard];
        v14 = [v13 nibForStoryboardNibNamed:v27];
      }

      else
      {
        v14 = [[UINib alloc] initWithNibName:v27 directory:0 bundle:v8];
      }

      externalObjectsTableForViewLoading = self->_externalObjectsTableForViewLoading;
      if (externalObjectsTableForViewLoading)
      {
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObject:externalObjectsTableForViewLoading forKey:@"UINibExternalObjects"];
      }

      else
      {
        v17 = 0;
      }

      v18 = [(UINib *)v14 instantiateWithOwner:self options:v17];
      if (!self->_view)
      {
        v19 = MEMORY[0x1E696AEC0];
        v20 = objc_opt_self();
        v21 = NSStringFromClass(v20);
        v22 = NSStringFromSelector(sel__loadViewFromNibNamed_bundle_);
        v23 = [v19 stringWithFormat:@"-[%@ %@]", v21, v22];

        v24 = [v18 count];
        if (v24)
        {
          v25 = @"%@ loaded the %@ nib but the view outlet was not set.";
        }

        else
        {
          v25 = @"%@ was unable to load a nib named %@";
        }

        v26 = MEMORY[0x1E695D940];
        if (v24)
        {
          v26 = MEMORY[0x1E695D930];
        }

        [MEMORY[0x1E695DF30] raise:*v26 format:{v25, v23, v27}];
      }

      [(UIViewController *)self autoresizeArchivedView];
    }
  }

  else
  {
    v15 = [UIView alloc];
    [(UIViewController *)self _defaultInitialViewFrame];
    v27 = [(UIView *)v15 initWithFrame:?];
    [(UIView *)v27 setAutoresizingMask:18];
    [(UIViewController *)self setView:v27];
  }
}

- (NSString)nibName
{
  if (!self->_nibName)
  {
    v3 = objc_opt_class();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = objc_opt_class();
    }

    if (([objc_opt_class() doesOverrideViewControllerMethod:sel_loadView inBaseClass:v3] & 1) == 0)
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = [(UIViewController *)self nibBundle];
      v7 = v5;
      v8 = v6;
      objc_opt_self();
      if ([v7 hasPrefix:@"UI"])
      {
        v9 = 0;
LABEL_16:

        [(UIViewController *)self setNibName:v9];
        goto LABEL_17;
      }

      v10 = [v8 pathForResource:v7 ofType:@"nib"];

      if (v10)
      {
        v9 = v7;
        goto LABEL_16;
      }

      v11 = _UIInternalPreference_ViewControllersInheritTraitsFromViewHierarchy_block_invoke_2(v7);
      if (v11 && ([v8 pathForResource:v11 ofType:@"nib"], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
      {
        v9 = v11;
      }

      else
      {
        v13 = [v7 rangeOfString:@"." options:4];
        if (v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = v13;
          if (v13 != [v7 length] - 1)
          {
            v17 = [v7 substringFromIndex:v14 + 1];
            v18 = [v8 pathForResource:v17 ofType:@"nib"];

            if (v18)
            {
              v9 = v17;
              goto LABEL_15;
            }

            v9 = _UIInternalPreference_ViewControllersInheritTraitsFromViewHierarchy_block_invoke_2(v17);
            v19 = [v8 pathForResource:v9 ofType:@"nib"];

            if (v19)
            {

              goto LABEL_15;
            }
          }
        }

        v9 = 0;
      }

LABEL_15:

      goto LABEL_16;
    }
  }

LABEL_17:
  nibName = self->_nibName;

  return nibName;
}

- (NSBundle)nibBundle
{
  nibBundle = self->_nibBundle;
  if (!nibBundle)
  {
    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    [(UIViewController *)self setNibBundle:v4];

    nibBundle = self->_nibBundle;
  }

  return nibBundle;
}

- (CGRect)_defaultInitialViewFrame
{
  v2 = [(UIViewController *)self _window];
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v11 = [v2 _windowHostingScene];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = [UIApp _defaultUISceneOrMainScreenPlaceholderIfExists];
      if (!v12)
      {
        goto LABEL_13;
      }
    }

    if ([v12 _hostsWindows])
    {
      v17 = [v12 _coordinateSpace];
      [v17 bounds];
      if (v2)
      {
        v18 = v2;
      }

      else
      {
        v18 = v17;
      }

      [v17 convertRect:v18 toCoordinateSpace:?];
LABEL_17:
      v4 = v19;
      v6 = v20;
      v8 = v21;
      v10 = v22;

      goto LABEL_18;
    }

LABEL_13:
    if (v2)
    {
      [v2 screen];
    }

    else
    {
      [objc_opt_self() mainScreen];
    }
    v17 = ;
    [v17 bounds];
    goto LABEL_17;
  }

  if (!v2)
  {
    v12 = [objc_opt_self() mainScreen];
    [v12 bounds];
    v4 = v13;
    v6 = v14;
    v8 = v15;
    v10 = v16;
LABEL_18:

    goto LABEL_19;
  }

  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
LABEL_19:

  v23 = v4;
  v24 = v6;
  v25 = v8;
  v26 = v10;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (BOOL)_allowsSkippingLayout
{
  if ([objc_opt_class() doesOverrideViewControllerMethod:sel_viewWillLayoutSubviews])
  {
    return 0;
  }

  else
  {
    return [objc_opt_class() doesOverrideViewControllerMethod:sel_viewDidLayoutSubviews] ^ 1;
  }
}

- (UIEdgeInsets)_minimumLayoutMarginsForView
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  if ([(UIViewController *)self viewRespectsSystemMinimumLayoutMargins])
  {
    [(UIViewController *)self systemMinimumLayoutMargins];
    v6 = v7;
    v5 = v8;
    v4 = v9;
    v3 = v10;
  }

  v11 = [(UIViewController *)self viewIfLoaded];
  v12 = [v11 _isRenderedHorizontallyFlipped];

  if (v12)
  {
    v13 = v5;
  }

  else
  {
    v13 = v3;
  }

  if (v12)
  {
    v14 = v3;
  }

  else
  {
    v14 = v5;
  }

  v15 = v6;
  v16 = v4;
  result.right = v13;
  result.bottom = v16;
  result.left = v14;
  result.top = v15;
  return result;
}

- (NSDirectionalEdgeInsets)systemMinimumLayoutMargins
{
  top = self->_systemMinimumLayoutMargins.top;
  leading = self->_systemMinimumLayoutMargins.leading;
  bottom = self->_systemMinimumLayoutMargins.bottom;
  trailing = self->_systemMinimumLayoutMargins.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (void)_updateContentOverlayInsetsFromParentIfNecessary
{
  v86 = *MEMORY[0x1E69E9840];
  if (dyld_program_sdk_at_least() && ([(UIViewController *)self _shouldSkipContentOverlayInsetsUpdate]& 1) == 0)
  {
    p_contentOverlayInsets = &self->_contentOverlayInsets;
    top = self->_contentOverlayInsets.top;
    left = self->_contentOverlayInsets.left;
    bottom = self->_contentOverlayInsets.bottom;
    right = self->_contentOverlayInsets.right;
    if ((byte_1ED498591 & 1) == 0)
    {
      if (qword_1ED498680 != -1)
      {
        dispatch_once(&qword_1ED498680, &__block_literal_global_2585);
      }

      if (byte_1ED498599 != 1)
      {
        goto LABEL_12;
      }
    }

    if ((*(&self->_viewControllerFlags + 6) & 0x10) == 0 && ([(UIView *)self->_view superview], (v8 = objc_claimAutoreleasedReturnValue()) != 0) && (v9 = v8, v10 = [(UIViewController *)self _isDetachedFromWindowRootViewControllerHierarchy], v9, v10))
    {
      if (([(UIViewController *)self _shouldSkipContentOverlayInsetsUpdate]& 1) != 0)
      {
        v11 = 0;
        v12 = 0;
LABEL_22:

        return;
      }

      v20 = [(UIView *)self->_view superview];
      if (!v20)
      {
        v73 = [MEMORY[0x1E696AAA8] currentHandler];
        [v73 handleFailureInMethod:sel___updateContentOverlayInsetsDirectlyFromSuperview object:self file:@"UIViewController.m" lineNumber:1672 description:{@"Can't update contentOverlayInsets directly from superview because _view.superview is unexpectedly nil. self = %@, _view = %@", self, self->_view}];
      }

      view = self->_view;
      [(UIView *)view frame];
      [(UIView *)view _safeAreaInsetsForFrame:v20 inSuperview:1 ignoreViewController:?];
      v52 = v51;
      v54 = v53;
      v56 = v55;
      v58 = v57;
      [(UIViewController *)self additionalSafeAreaInsets];
      v81 = v52 + v59;
      v61 = v54 + v60;
      v80 = v56 + v62;
      v64 = v58 + v63;
      LODWORD(view) = [(UIView *)self->_view _isRenderedHorizontallyFlipped];
      v65 = view ^ [v20 _isRenderedHorizontallyFlipped];
      if (v65)
      {
        v66 = v61;
      }

      else
      {
        v66 = v64;
      }

      v79 = v66;
      if (v65)
      {
        v67 = v64;
      }

      else
      {
        v67 = v61;
      }

      v78 = v67;
      v68 = 0.0;
      if ([(UIViewController *)self ignoresParentMargins])
      {
        [objc_opt_class() _horizontalContentMarginForView:self->_view];
        v68 = v69;
      }

      v70.f64[0] = v81;
      v70.f64[1] = v78;
      v71.f64[0] = v80;
      v71.f64[1] = v79;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&p_contentOverlayInsets->top, v70), vceqq_f64(*&self->_contentOverlayInsets.bottom, v71)))) & 1) == 0)
      {
        v72 = [(UIView *)self->_view window];
        [v72 _noteOverlayInsetsDidChange];
      }

      [(UIView *)self->_view _shouldReverseLayoutDirection];
      v76 = *&self->_systemMinimumLayoutMargins.bottom;
      v77 = *&self->_systemMinimumLayoutMargins.top;
      self->_systemMinimumLayoutMargins.top = 0.0;
      self->_systemMinimumLayoutMargins.leading = v68;
      self->_systemMinimumLayoutMargins.bottom = 0.0;
      self->_systemMinimumLayoutMargins.trailing = v68;
      if ((*(&self->_viewControllerFlags + 6) & 0x10) != 0)
      {
        if (os_variant_has_internal_diagnostics())
        {
          v75 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            *&buf[4] = self;
            _os_log_fault_impl(&dword_188A29000, v75, OS_LOG_TYPE_FAULT, "Unexpectedly trying to update contentOverlayInsets directly from superview for UIViewController subclass that overrides -_setContentOverlayInsets. self = %@", buf, 0xCu);
          }
        }

        else
        {
          v74 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4985C0) + 8);
          if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = self;
            _os_log_impl(&dword_188A29000, v74, OS_LOG_TYPE_ERROR, "Unexpectedly trying to update contentOverlayInsets directly from superview for UIViewController subclass that overrides -_setContentOverlayInsets. self = %@", buf, 0xCu);
          }
        }
      }

      p_contentOverlayInsets->top = v81;
      self->_contentOverlayInsets.left = v78;
      self->_contentOverlayInsets.bottom = v80;
      self->_contentOverlayInsets.right = v79;
      [UIViewController _updateViewSafeAreaInsetsAndEagerlyUpdateContentScrollView:?];
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v77, *&self->_systemMinimumLayoutMargins.top), vceqq_f64(v76, *&self->_systemMinimumLayoutMargins.bottom)))) & 1) == 0)
      {
        [(UIView *)self->_view _updateInferredLayoutMargins];
      }

      v11 = 0;
      v12 = 0;
    }

    else
    {
LABEL_12:
      v82 = 0;
      v83 = 0;
      v13 = [(UIViewController *)&self->super.super.isa _getViewControllerToInheritInsetsFrom:&v82 viaImmediateChild:?];
      v12 = v83;
      v11 = v82;
      if (v13)
      {
        if (![v12 isViewLoaded])
        {
          goto LABEL_22;
        }

        v14 = [(UIViewController *)self view];
        if ([v14 _ignoresLayerTransformForSafeAreaInsets])
        {
          [v14 _frameIgnoringLayerTransform];
        }

        else
        {
          [v14 frame];
        }

        v39 = v15;
        v40 = v16;
        v41 = v17;
        v42 = v18;
        if ((*(&self->_viewControllerFlags + 6) & 8) == 0)
        {
          v43 = [v12 view];
          v44 = [v14 superview];
          [v43 convertRect:v44 fromView:{v39, v40, v41, v42}];
          v39 = v45;
          v40 = v46;
          v41 = v47;
          v42 = v48;
        }

        v49 = [(UIViewController *)self __updateContentOverlayInsetsWithOurRect:v12 inBoundsOfAncestorViewController:v11 viaImmediateChildOfAncestor:v39, v40, v41, v42];

        if ((v49 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      v19 = [(UIViewController *)self _existingPresentationControllerImmediate:0 effective:1];
      v20 = v19;
      v84 = 0.0;
      *buf = 0;
      if (v19)
      {
        [v19 _baseContentInsetsWithLeftMargin:buf rightMargin:&v84];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;
      }

      else
      {
        v29 = [(UIViewController *)self _existingView];
        v30 = [(UIViewController *)self _window];
        v22 = _UIPresentationControllerBaseContentInsetsForControllersAndViewInWindow(0, self, v29, v30, buf, &v84);
        v24 = v31;
        v26 = v32;
        v28 = v33;
      }

      [(UIViewController *)self additionalSafeAreaInsets];
      [(UIViewController *)self _setContentOverlayInsets:v22 + v34 andLeftMargin:v24 + v35 rightMargin:v26 + v36, v28 + v37, *buf, v84];
      [(UIViewController *)self _setContentMargin:*buf];
    }

LABEL_21:
    v38.n128_f64[0] = left;
    [(UIViewController *)self _invalidateChildContentOverlayInsetsWithOldInsets:v38, bottom, right];
    goto LABEL_22;
  }
}

- (uint64_t)_shouldSkipContentOverlayInsetsUpdate
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 _existingPresentationControllerImmediate:0 effective:1 includesRoot:1];
    v3 = 0;
    if (([objc_opt_class() _wantsContentOverlayInsetsUpdatesWhileDismissing] & 1) == 0)
    {
      v3 = [v2 _wantsContentOverlayInsetsUpdatesWhileDismissing] ^ 1;
    }

    v4 = [v1 _appearState];
    if (!v4 || v4 == 3 && (v3 & 1) != 0 || ([v1 _transitioningOutWithoutDisappearing] & 1) != 0)
    {
      v1 = 1;
LABEL_22:

      return v1;
    }

    v5 = [v1 _existingView];
    v6 = v5;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    if (v5)
    {
      [v5 transform];
    }

    if (_UIViewDirtiesDelegateContentInsetsForGeometryChange())
    {
      v7 = [v1 _existingPresentationControllerImmediate:0 effective:1];
      if (v7 || ([v1 presentedViewController], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        v9[0] = v10;
        v9[1] = v11;
        v9[2] = v12;
        if (_transformIsSupportedForSimpleContainment(v9))
        {
LABEL_20:
          v1 = 0;
LABEL_21:

          goto LABEL_22;
        }
      }
    }

    if (v6)
    {
      v1 = 1;
      if (*(&v10 + 1) != *(MEMORY[0x1E695EFD0] + 8) || *&v11 != *(MEMORY[0x1E695EFD0] + 16) || fabs(*&v10) != *MEMORY[0x1E695EFD0] || fabs(*(&v11 + 1)) != *(MEMORY[0x1E695EFD0] + 24))
      {
        goto LABEL_21;
      }
    }

    goto LABEL_20;
  }

  return v1;
}

- (UIViewController)presentingViewController
{
  v3 = self->_parentModalViewController;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(UIViewController *)self->_parentViewController presentingViewController];
  }

  v6 = v5;

  return v6;
}

- (void)_setSecurityModeForViewsLayer
{
  v5 = [(UIView *)self->_view layer];
  if ([UIApp _supportedOnLockScreen])
  {
    v3 = [(UIViewController *)self _canShowWhileLocked];
    v4 = MEMORY[0x1E6979E60];
    if (!v3)
    {
      v4 = MEMORY[0x1E6979E58];
    }
  }

  else
  {
    v4 = MEMORY[0x1E6979E58];
  }

  [v5 setSecurityMode:*v4];
}

- (_BYTE)_contentScrollViewHeuristic
{
  v46 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [a1 _existingView];
    if (v2)
    {
      v3 = *(a1 + 304);
      if (v3 && ([v3 isDescendantOfView:v2] & 1) == 0)
      {
        [a1 _clearRecordedContentScrollView];
      }

      v4 = *(a1 + 304);
      if (v4)
      {
        goto LABEL_48;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = v2;
LABEL_48:

        goto LABEL_49;
      }

      v5 = [a1 navigationController];
      v6 = [v5 navigationBar];
      v7 = [v6 barStyle];
      v8 = [v2 _screen];
      if (_UIBarStyleWithTintColorIsTranslucentOnScreen(v7, 0, v8))
      {

LABEL_12:
        v12 = v2;
        while (2)
        {
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v13 = [v12 subviews];
            v14 = [v13 count];

            if (v14)
            {
              if ([v12 _canHostViewControllerContentScrollView])
              {
                v15 = [v12 subviews];

                v43 = 0u;
                v44 = 0u;
                v41 = 0u;
                v42 = 0u;
                v16 = v15;
                v17 = [v16 countByEnumeratingWithState:&v41 objects:v45 count:16];
                if (v17)
                {
                  v18 = v17;
                  v19 = *v42;
LABEL_18:
                  v20 = 0;
                  while (1)
                  {
                    if (*v42 != v19)
                    {
                      objc_enumerationMutation(v16);
                    }

                    v21 = *(*(&v41 + 1) + 8 * v20);
                    if (![(UIViewController *)a1 _useViewBasedTopAndBottomLayoutGuides]|| v21 != *(a1 + 552) && v21 != *(a1 + 560))
                    {
                      break;
                    }

                    if (v18 == ++v20)
                    {
                      v18 = [v16 countByEnumeratingWithState:&v41 objects:v45 count:16];
                      if (v18)
                      {
                        goto LABEL_18;
                      }

                      goto LABEL_52;
                    }
                  }

                  v12 = v21;

                  if (v12)
                  {
                    continue;
                  }

                  break;
                }

LABEL_52:
              }

              else
              {
                v16 = v12;
              }

              v12 = 0;
            }
          }

          break;
        }

        if (objc_opt_isKindOfClass())
        {
          v4 = v12;
        }

        else
        {
          v4 = 0;
        }

        goto LABEL_48;
      }

      v9 = [a1 navigationController];
      v10 = [v9 navigationBar];
      v11 = [v10 barStyle];

      if (v11 == 4)
      {
        goto LABEL_12;
      }

      if ((v2[95] & 4) != 0)
      {
        v22 = [v2 subviews];
        v23 = [v22 count];

        if (v23 == 1)
        {
          v24 = [v2 subviews];
          v25 = [v24 objectAtIndexedSubscript:0];

          if (v25[94] & 0x10) != 0 && (objc_opt_isKindOfClass())
          {
            v4 = [v2 _layoutEngine];

            if (v4)
            {
              [(UIView *)v2 _updateConstraintsAtEngineLevelIfNeededWithViewForVariableChangeNotifications:v2];
              [v25 _nsis_origin];
              v27 = v26;
              v29 = v28;
              [v25 _nsis_bounds];
              v31 = v30;
              v33 = v32;
              [v2 _nsis_bounds];
              if (v35 == v33 && v34 == v31 && v29 == *(MEMORY[0x1E695EFF8] + 8) && v27 == *MEMORY[0x1E695EFF8])
              {
                v39 = v25;
              }

              else
              {
                v39 = 0;
              }

              v4 = v39;
            }
          }

          else
          {
            v4 = 0;
          }

          goto LABEL_48;
        }
      }
    }

    v4 = 0;
    goto LABEL_48;
  }

  v4 = 0;
LABEL_49:

  return v4;
}

- (void)_sendViewDidLoadWithAppearanceProxyObjectTaggingEnabled
{
  if (result)
  {
    v1 = result;
    v2 = _UISetCurrentFallbackEnvironment(result);
    if (__isObjectTaggingEnabled == 1)
    {
      __isObjectTaggingEnabled = 0;
      [v1 viewDidLoad];
      __isObjectTaggingEnabled = 1;
    }

    else
    {
      [v1 viewDidLoad];
    }

    return _UIRestorePreviousFallbackEnvironment(v2);
  }

  return result;
}

- (UITraitCollection)traitCollection
{
  frozenTraitCollection = self->_frozenTraitCollection;
  if (frozenTraitCollection)
  {
    v3 = frozenTraitCollection;
    goto LABEL_11;
  }

  TraitCollectionTSD = GetTraitCollectionTSD();
  v6 = TraitCollectionTSD[9];
  TraitCollectionTSD[9] = 1;
  v7 = [(UIViewController *)self _parentTraitEnvironment];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 _traitCollectionForChildEnvironment:self];
  }

  else
  {
    if (dyld_program_sdk_at_least())
    {
      v10 = self->_lastNotifiedTraitCollection;
      if (!v10)
      {
        v10 = UIViewControllerMissingInitialTraitCollection(self);
        objc_storeStrong(&self->_lastNotifiedTraitCollection, v10);
      }

      goto LABEL_10;
    }

    v9 = +[UITraitCollection _defaultTraitCollection];
  }

  v10 = v9;
LABEL_10:

  v11 = [(UIViewController *)self _traitCollectionByApplyingOverridesFromParentViewControllerToTraitCollection:v10];

  v3 = [(UIViewController *)self _traitCollectionByApplyingLocalOverridesToTraitCollection:v11];

  *(GetTraitCollectionTSD() + 9) = v6;
  _UITraitEnvironmentGeneratedTraitCollection(self, v3);
LABEL_11:

  return v3;
}

- (id)_parentTraitEnvironment
{
  v3 = _UIViewControllersInheritTraitsFromViewHierarchy();
  v4 = v3;
  if (v3)
  {
    if (!self)
    {
      goto LABEL_13;
    }

    if (qword_1ED4985D8 != -1)
    {
      dispatch_once(&qword_1ED4985D8, &__block_literal_global_447);
    }

    if (byte_1ED498596 != 1)
    {
      goto LABEL_13;
    }

    v5 = [(UIViewController *)self _existingView];
    v6 = v5;
    if (!v5 || ([v5 window], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {

      goto LABEL_13;
    }
  }

  v8 = [(UIViewController *)self parentViewController];
  if (v8 || ([(UIViewController *)self _departingParentViewController], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    goto LABEL_25;
  }

LABEL_13:
  v10 = [(UIViewController *)self _existingPresentationControllerImmediate:1 effective:1 includesRoot:1];
  v11 = [v10 presentedViewController];

  if (v11 == self)
  {
    v14 = v10;
LABEL_23:
    v9 = v14;
    goto LABEL_24;
  }

  v12 = [(UIView *)self->_view superview];
  if (v12)
  {
    v13 = v12;
    while (([v13 _canBeParentTraitEnvironment] & 1) == 0)
    {
      v13 = [v13 superview];
      if (!v13)
      {
        goto LABEL_18;
      }
    }

    v14 = v13;
    goto LABEL_23;
  }

LABEL_18:
  if ((v4 & 1) == 0)
  {
    v14 = [(UIViewController *)self _window];
    goto LABEL_23;
  }

  v9 = 0;
LABEL_24:

LABEL_25:

  return v9;
}

- (_UIViewControllerOrnamentDelegate)_ornamentDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->__ornamentDelegate);

  return WeakRetained;
}

- (BOOL)_isDetachedFromWindowRootViewControllerHierarchy
{
  if (([(UIViewController *)&self->super.super.isa _getViewControllerToInheritInsetsFrom:0 viaImmediateChild:?]& 1) != 0)
  {
    return 0;
  }

  v3 = [(UIViewController *)self _window];
  v4 = [v3 rootViewController];

  if (v4 == self)
  {
    return 0;
  }

  v5 = [(UIViewController *)self _existingPresentationControllerImmediate:1 effective:1];

  return v5 == 0;
}

- (void)_setAvoidanceInsetsNeedsUpdate
{
  v3 = [(UIViewController *)self _existingView];
  v2 = [v3 window];
  [v2 _noteOverlayInsetsDidChange];
}

- (uint64_t)_useViewBasedTopAndBottomLayoutGuides
{
  if (result)
  {
    v1 = result;
    if ((*(result + 381) & 8) == 0 && (dyld_program_sdk_at_least() & 1) == 0)
    {
      v1[47] |= 0x80000000000uLL;
    }

    v2 = dyld_program_sdk_at_least();
    v3 = v1[47];
    if (v2 && (v3 & 0x100000000000) == 0 && (v1[69] || v1[70]))
    {
      v4 = objc_opt_class();
      v5 = v1[69];
      if (v5)
      {
        v6 = [v5 isMemberOfClass:v4];
      }

      else
      {
        v6 = 1;
      }

      v7 = v1[70];
      if (v7)
      {
        v8 = [v7 isMemberOfClass:v4];
      }

      else
      {
        v8 = 1;
      }

      if ((v6 & v8 & 1) == 0)
      {
        v9 = *MEMORY[0x1E695D940];
        if ((v6 | v8))
        {
          if (v6)
          {
            [MEMORY[0x1E695DF30] raise:v9 format:{@"Unexpected class for bottomLayoutGuide. This is an application bug. bottomlayoutGuide = %@", v1[70], v10}];
          }

          else
          {
            [MEMORY[0x1E695DF30] raise:v9 format:{@"Unexpected class for topLayoutGuide. This is an application bug. topLayoutGuide = %@", v1[69], v10}];
          }
        }

        else
        {
          [MEMORY[0x1E695DF30] raise:v9 format:{@"Unexpected class for topLayoutGuide and bottomLayoutGuide. This is an application bug. topLayoutGuide = %@, bottomlayoutGuide = %@", v1[69], v1[70]}];
        }
      }

      v3 = v1[47] | 0x100000000000;
      v1[47] = v3;
    }

    return (v3 >> 43) & 1;
  }

  return result;
}

- (UIEdgeInsets)_navigationControllerContentInsetAdjustment
{
  v2 = [(UIViewController *)self navigationInsetAdjustment];
  [v2 insetAdjustment];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (UINavigationContentAdjustments)navigationInsetAdjustment
{
  navigationInsetAdjustment = self->_navigationInsetAdjustment;
  if (!navigationInsetAdjustment)
  {
    v4 = objc_alloc_init(UINavigationContentAdjustments);
    v5 = self->_navigationInsetAdjustment;
    self->_navigationInsetAdjustment = v4;

    navigationInsetAdjustment = self->_navigationInsetAdjustment;
  }

  return navigationInsetAdjustment;
}

- (void)_updateLayoutForStatusBarAndInterfaceOrientation
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = [(UIViewController *)self _existingView];

  if (!v3)
  {
    return;
  }

  v4 = [(UIViewController *)self _window];
  v5 = [(UIViewController *)self _existingView];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  if ([v4 _isHostedInAnotherProcess])
  {
    [v4 frame];
  }

  else
  {
    if (![UIApp _appAdoptsUISceneLifecycle])
    {
      v22 = [(UIViewController *)self _screen];
      v23 = [v4 windowScene];
      v24 = [v23 _interfaceOrientation];
      v25 = __UIStatusBarManagerForWindow(v4);
      [v25 defaultStatusBarHeightInOrientation:1];
      v27 = v26;

      [v22 _applicationFrameForInterfaceOrientation:v24 usingStatusbarHeight:1 ignoreStatusBar:v27];
      v18 = v28;
      v19 = v29;
      v20 = v30;
      v21 = v31;

      goto LABEL_8;
    }

    [v4 _referenceFrameFromSceneUsingScreenBounds:1];
  }

  v18 = v14;
  v19 = v15;
  v20 = v16;
  v21 = v17;
LABEL_8:
  if ([objc_opt_class() _directlySetsContentOverlayInsetsForChildren])
  {
    v32 = [(UIViewController *)self _viewControllerUnderlapsStatusBar];
    v33 = 0.0;
    if (v32)
    {
      [(UIViewController *)self _statusBarHeightAdjustmentForCurrentOrientation];
    }

    [(UIViewController *)self _setContentOverlayInsets:v33 andLeftMargin:0.0 rightMargin:0.0, 0.0, -1.79769313e308, -1.79769313e308];
  }

  else
  {
    [(UIViewController *)self _updateContentOverlayInsetsForSelfAndChildren];
  }

  v59.origin.x = v7;
  v59.origin.y = v9;
  v59.size.width = v11;
  v59.size.height = v13;
  v62.origin.x = v18;
  v62.origin.y = v19;
  v62.size.width = v20;
  v62.size.height = v21;
  if (CGRectEqualToRect(v59, v62) || (-[UIViewController _screen](self, "_screen"), v34 = objc_claimAutoreleasedReturnValue(), [v34 bounds], v63.origin.x = v35, v63.origin.y = v36, v63.size.width = v37, v63.size.height = v38, v60.origin.x = v7, v60.origin.y = v9, v60.size.width = v11, v60.size.height = v13, v39 = CGRectEqualToRect(v60, v63), v34, v39))
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v40 = [(UIViewController *)self mutableChildViewControllers];
    v41 = [v40 countByEnumeratingWithState:&v53 objects:v57 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v54;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v54 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v53 + 1) + 8 * i);
          v46 = [v45 _existingView];

          if (v46)
          {
            if ((dyld_program_sdk_at_least() & 1) != 0 || ([v45 _existingView], v47 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v47, "frame"), v64.origin.x = v48, v64.origin.y = v49, v64.size.width = v50, v64.size.height = v51, v61.origin.x = v7, v61.origin.y = v9, v61.size.width = v11, v61.size.height = v13, v52 = CGRectEqualToRect(v61, v64), v47, v52))
            {
              [v45 _updateLayoutForStatusBarAndInterfaceOrientation];
            }
          }
        }

        v42 = [v40 countByEnumeratingWithState:&v53 objects:v57 count:16];
      }

      while (v42);
    }
  }
}

- (void)_updateChildContentMargins
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_childViewControllers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

        [*(*(&v8 + 1) + 8 * v7++) _setContentMargin:{self->_contentMargin, v8}];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (UIEdgeInsets)additionalSafeAreaInsets
{
  top = self->_additionalSafeAreaInsets.top;
  left = self->_additionalSafeAreaInsets.left;
  bottom = self->_additionalSafeAreaInsets.bottom;
  right = self->_additionalSafeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)_contentOverlayInsets
{
  top = self->_contentOverlayInsets.top;
  left = self->_contentOverlayInsets.left;
  bottom = self->_contentOverlayInsets.bottom;
  right = self->_contentOverlayInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (BOOL)_isInPopoverPresentation
{
  v3 = objc_opt_class();

  return [(UIViewController *)self _isInContextOfPresentationControllerOfClass:v3 effective:1];
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
  if (![(UIViewController *)self _defersToPresentingViewControllerForSupportedInterfaceOrientations])
  {
LABEL_5:

    return [(UIViewController *)self _defaultSupportedInterfaceOrientations];
  }

  p_viewControllerFlags = &self->_viewControllerFlags;
  v4 = *(&self->_viewControllerFlags + 4);
  if ((v4 & 0x20) == 0)
  {
    v5 = [(UIViewController *)self presentingViewController];
    if (v5)
    {
      v6 = v5;
      *(&self->_viewControllerFlags + 4) |= 0x20u;
      v7 = [v5 supportedInterfaceOrientations];
      *(p_viewControllerFlags + 4) &= ~0x20u;

      return v7;
    }

    goto LABEL_5;
  }

  *(&self->_viewControllerFlags + 4) = v4 & 0xFFDF;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("Orientation", &supportedInterfaceOrientations___s_category);
  if (*CategoryCachedImpl)
  {
    v10 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "supportedInterfaceOrientations was invoked recursively. Will return the default supported interface orientations", v11, 2u);
    }
  }

  return [(UIViewController *)self _defaultSupportedInterfaceOrientations];
}

- (id)_viewControllersWhoseOrientationsMustCoincide
{
  v3 = [(UIViewController *)self presentingViewController];
  v4 = [v3 _presentationController];
  v5 = [(UIViewController *)self modalPresentationStyle];
  if (v3)
  {
    v6 = v5;
    v7 = [v4 state] == 1 || objc_msgSend(v4, "state") == 2;
    if (v6 == 17 || v6 == UIModalPresentationOverFullScreen || v6 == UIModalPresentationFullScreen && ([v3 _existingView], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "window"), v10 = objc_claimAutoreleasedReturnValue(), v11 = v10 == 0 || v7, v10, v9, !v11))
    {
      v12 = [MEMORY[0x1E695DF70] arrayWithObject:self];
    }

    else
    {
      v12 = [MEMORY[0x1E695DF70] array];
    }

    v13 = v12;
    v8 = _viewControllersWhoseOrientationsMustCoincide(self, v12);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setNeedsFocusUpdate
{
  v3 = [(UIViewController *)self _focusSystem];
  [v3 requestFocusUpdateToEnvironment:self];
}

- (UISearchDisplayController)searchDisplayController
{
  WeakRetained = objc_loadWeakRetained(&self->_searchDisplayController);

  return WeakRetained;
}

- (BOOL)_forwardAppearanceMethods
{
  if ([objc_opt_class() doesOverrideViewControllerMethod:sel_shouldAutomaticallyForwardAppearanceMethods])
  {

    return [(UIViewController *)self shouldAutomaticallyForwardAppearanceMethods];
  }

  else
  {

    return [(UIViewController *)self automaticallyForwardAppearanceAndRotationMethodsToChildViewControllers];
  }
}

- (void)_updateContentOverlayInsetsForSelfAndChildren
{
  v13 = *MEMORY[0x1E69E9840];
  if (dyld_program_sdk_at_least())
  {
    [(UIViewController *)self _updateContentOverlayInsetsFromParentIfNecessary];
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = self->_childViewControllers;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * i) _updateContentOverlayInsetsFromParentIfNecessary];
        }

        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }

  else if ([(UIViewController *)self _viewControllerUnderlapsStatusBar])
  {
    [(UIViewController *)self _statusBarHeightAdjustmentForCurrentOrientation];

    [UIViewController _setContentOverlayInsets:"_setContentOverlayInsets:andLeftMargin:rightMargin:" andLeftMargin:? rightMargin:?];
  }
}

- (int64_t)_lastKnownInterfaceOrientation
{
  v3 = [(UIViewController *)self _popoverController];

  if (v3)
  {
    return 0;
  }

  else
  {
    return self->_lastKnownInterfaceOrientation;
  }
}

- (id)_screen
{
  view = self->_view;
  if (view)
  {
    [(UIView *)view _screen];
  }

  else
  {
    [objc_opt_self() mainScreen];
  }
  v3 = ;

  return v3;
}

- (unint64_t)__supportedInterfaceOrientations
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = [(UIViewController *)self modalPresentationStyle]== 16 || [(UIViewController *)self modalPresentationStyle]== UIModalPresentationFormSheet || [(UIViewController *)self modalPresentationStyle]== UIModalPresentationPageSheet;
  v4 = [(UIViewController *)self _window];
  v5 = [v4 _windowCanDynamicallySpecifySupportedInterfaceOrientations];

  if ([(UIViewController *)self _ignoreAppSupportedOrientations])
  {
    v6 = 30;
  }

  else
  {
    v7 = UIApp;
    v8 = [(UIViewController *)self _window];
    v9 = [v7 _supportedInterfaceOrientationsForWindow:v8];
    if (v9)
    {
      v6 = v9;
    }

    else
    {
      v6 = 30;
    }
  }

  v10 = [(UIViewController *)self presentingViewController];
  v11 = [v10 _originalPresentationController];
  v12 = [(UIViewController *)self presentingViewController];
  v13 = [v12 _presentationController];

  v14 = [(UIViewController *)self presentingViewController];
  v15 = v14;
  if (v14 == 0 || v3 || v11 == v13)
  {
    v23 = (v14 == 0) ^ (v14 == 0 || v3);

    if (v23)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v16 = v5;
    v17 = [(UIViewController *)self presentingViewController];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 _window];
      v20 = [v19 traitCollection];
      v21 = [v19 _traitCollectionWhenRotated];
      v22 = [v18[97] _shouldAdaptFromTraitCollection:v20 toTraitCollection:v21];

      v5 = v16;
      if ((v22 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_17:
      v24 = [(UIViewController *)self presentingViewController];
      goto LABEL_20;
    }
  }

LABEL_19:
  v24 = self;
LABEL_20:
  v25 = v24;
  v26 = [(UIViewController *)v24 supportedInterfaceOrientations];
  if (![(UIViewController *)v25 _overrideInterfaceOrientationMechanics])
  {
    v27 = [(UIViewController *)v25 _viewControllersWhoseOrientationsMustCoincide];
    v28 = v27;
    if (v27)
    {
      v37 = v5;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v29 = [v27 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v39;
        v32 = v26;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v39 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v32 &= [*(*(&v38 + 1) + 8 * i) supportedInterfaceOrientations];
          }

          v30 = [v28 countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v30);
      }

      else
      {
        v32 = v26;
      }

      if (v32)
      {
        v26 = v32;
      }

      v5 = v37;
    }
  }

  v34 = v26 != 0;
  v35 = v26 & v6;
  if (v35)
  {
    v34 = 0;
  }

  if (!v3 && (v5 & v34 & 1) != 0 && -[UIViewController shouldAutorotate](self, "shouldAutorotate") && ([UIApp _isSpringBoard] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:@"UIApplicationInvalidInterfaceOrientation" format:{@"Supported orientations has no common orientation with the application, and [%@ shouldAutorotate] is returning YES", objc_opt_class()}];
  }

  return v35;
}

- (UIModalPresentationStyle)modalPresentationStyle
{
  modalPresentationStyle = self->_modalPresentationStyle;
  if (modalPresentationStyle == UIModalPresentationAutomatic)
  {
    modalPresentationStyle = [(UIViewController *)self _preferredModalPresentationStyle];
    if (modalPresentationStyle == UIModalPresentationAutomatic)
    {
      v4 = [(UIViewController *)self preferredTransition];
      v5 = v4;
      if (!v4 || (modalPresentationStyle = [v4 _preferredModalPresentationStyle], modalPresentationStyle == UIModalPresentationAutomatic))
      {
        v6 = +[_UIPresentationControllerDefaultVisualStyleProvider sharedInstance];
        modalPresentationStyle = [v6 defaultConcretePresentationStyleForViewController:self];
      }
    }
  }

  return modalPresentationStyle;
}

- (uint64_t)_defaultSupportedInterfaceOrientations
{
  if (result)
  {
    v1 = result;
    if ([result modalPresentationStyle] == 16 || objc_msgSend(v1, "modalPresentationStyle") == 2 || objc_msgSend(v1, "modalPresentationStyle") == 1)
    {
      return 30;
    }

    else
    {
      v2 = +[UIDevice currentDevice];
      v3 = [v2 userInterfaceIdiom];

      if (v3)
      {
        v4 = +[UIDevice currentDevice];
        v5 = [v4 userInterfaceIdiom];

        if (v5 == 1)
        {
          return 30;
        }

        else
        {
          return 2;
        }
      }

      else
      {
        return 26;
      }
    }
  }

  return result;
}

- (void)_updateViewConstraintsWithObservationTracking
{
  v2 = self;
  sub_188A6E828();
}

- (_UITypedStorage)_typedStorage
{
  if (a1)
  {
    v2 = *(a1 + 496);
    if (!v2)
    {
      v2 = objc_alloc_init(_UITypedStorage);
      objc_storeStrong((a1 + 496), v2);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)_isDeallocInitiated
{
  if (result)
  {
    return (*(result + 384) >> 7) & 1;
  }

  return result;
}

- (void)updateViewConstraints
{
  v3 = _UIObservationTrackingEnabled();
  view = self->_view;
  if (v3)
  {

    [(UIView *)view _updateConstraintsWithObservationTracking];
  }

  else
  {

    [(UIView *)view updateConstraints];
  }
}

- (void)_performPropertiesUpdate
{
  if (a1)
  {
    if (_UIObservationTrackingEnabled())
    {
      [a1 _updatePropertiesWithObservationTracking];
    }

    else
    {
      [(UIViewController *)a1 _executeUpdateProperties];
    }

    [(UIViewController *)a1 _performContentUnavailableConfigurationStateUpdate];
  }
}

- (void)_updatePropertiesWithObservationTracking
{
  v2 = self;
  sub_188A70EFC();
}

- (double)_executeUpdateProperties
{
  if (a1)
  {
    memset(__src, 0, 368);
    _UIBeginTrackingTraitUsage(a1, a1[3], __src);
    [a1 _updateProperties];
    [a1 updateProperties];
    memcpy(v13, __src, sizeof(v13));
    TraitCollectionTSD = GetTraitCollectionTSD();
    memcpy(__dst, TraitCollectionTSD + 16, sizeof(__dst));
    memcpy(TraitCollectionTSD + 16, v13, 0x170uLL);
    v3 = *&__dst[11] & ~*&__src[11];
    v4 = *&__src[11] & ~*&__dst[11];
    v5 = *&__dst[11] & *&__src[11];
    v6 = *(&__dst[22] + 1) & ~*(&__src[22] + 1);
    v7 = *(&__src[22] + 1) & ~*(&__dst[22] + 1);
    v8 = *(&__dst[22] + 1) & *(&__src[22] + 1);
    v9 = [a1 methodForSelector:sel_updateProperties];
    *&v13[0] = v3;
    *(&v13[0] + 1) = v4;
    *&v13[1] = v5;
    [(UIViewController *)a1 _recordTraitUsage:v13 trackedStateDiff:v9 insideMethod:sel_setNeedsUpdateProperties withInvalidationAction:?];
    v10 = a1[3];
    v11 = [a1 methodForSelector:sel_updateProperties];
    *&v13[0] = v6;
    *(&v13[0] + 1) = v7;
    *&v13[1] = v8;
    [(UIView *)v10 _recordTraitUsage:v13 trackedStateDiff:v11 insideMethod:sel_setNeedsUpdateProperties withInvalidationAction:?];
    return _UITraitUsageTrackingResultDestroy(__dst);
  }

  return result;
}

- (void)_performContentUnavailableConfigurationStateUpdate
{
  if (a1)
  {
    v2 = a1[192];
    if ((v2 & 0x10) != 0)
    {
      a1[192] = v2 & 0xFFEF;
      if (_UIObservationTrackingEnabled())
      {

        [a1 _updateContentUnavailableConfigurationWithObservationTracking];
      }

      else
      {

        [(UIViewController *)a1 _executeContentUnavailableConfigurationUpdate];
      }
    }
  }
}

- (void)_viewWillLayoutSubviewsWithObservationTracking
{
  v2 = self;
  sub_188A7167C();
}

- (id)_parentContentContainer
{
  v3 = [(UIViewController *)self _parentModalViewController];
  v4 = [v3 _presentationController];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(UIViewController *)self parentViewController];
  }

  v7 = v6;

  return v7;
}

- (void)_viewDidLayoutSubviewsWithObservationTracking
{
  v2 = self;
  sub_188A720FC();
}

- (id)_effectiveWhitePointAdaptivityStyleViewController
{
  v3 = [(UIViewController *)self _presentedStatusBarViewController];
  v4 = [v3 _effectiveWhitePointAdaptivityStyleViewController];

  if (!v4)
  {
    v5 = [(UIViewController *)self childViewControllerForWhitePointAdaptivityStyle];
    v4 = [v5 _effectiveWhitePointAdaptivityStyleViewController];

    if (!v4)
    {
      v4 = self;
    }
  }

  return v4;
}

void __70__UIViewController_setNeedsUpdateOfScreenEdgesDeferringSystemGestures__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v2 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [v5 _systemAppearanceManager];
    [v4 updateScreenEdgesDeferringSystemGestures];
  }
}

- (int64_t)_preferredWhitePointAdaptivityStyle
{
  v2 = UIApp;
  v3 = [(UIViewController *)self _window];
  v4 = [v2 _normativeWhitePointAdaptivityStyleForWindow:v3];

  return v4;
}

- (id)_effectiveHomeIndicatorAutoHiddenViewController
{
  v3 = [(UIViewController *)self _presentedStatusBarViewController];
  v4 = [v3 _effectiveHomeIndicatorAutoHiddenViewController];

  if (!v4)
  {
    v5 = [(UIViewController *)self childViewControllerForHomeIndicatorAutoHidden];
    v4 = [v5 _effectiveHomeIndicatorAutoHiddenViewController];

    if (!v4)
    {
      v4 = self;
    }
  }

  return v4;
}

- (void)setNeedsUpdateOfPrefersPointerLocked
{
  v3 = [(UIViewController *)self _window];
  v4 = [v3 _windowHostingScene];
  IsAvailableForScene = _UIPointerLockStateIsAvailableForScene(v4);

  if (IsAvailableForScene)
  {

    [(UIViewController *)self _updateSystemAppearanceWithRecursionBlock:&__block_literal_global_919_0 action:?];
  }
}

- (void)_setNeedsUpdateOfMultitaskingDragExclusionRects
{
  v3 = [(UIViewController *)self _window];
  v4 = [v3 screen];
  v5 = [v4 _userInterfaceIdiom];

  if (v5 == 1)
  {

    [(UIViewController *)self _updateSystemAppearanceWithRecursionBlock:&__block_literal_global_923 action:?];
  }
}

- (id)_effectiveScreenEdgesDeferringSystemGesturesViewController
{
  v3 = [(UIViewController *)self _presentedStatusBarViewController];
  v4 = [v3 _effectiveScreenEdgesDeferringSystemGesturesViewController];

  if (!v4)
  {
    v5 = [(UIViewController *)self childViewControllerForScreenEdgesDeferringSystemGestures];
    v4 = [v5 _effectiveScreenEdgesDeferringSystemGesturesViewController];

    if (!v4)
    {
      v4 = self;
    }
  }

  return v4;
}

- (id)_effectiveInterfaceOrientationLockViewController
{
  v3 = [(UIViewController *)self _presentedStatusBarViewController];
  v4 = [v3 _effectiveInterfaceOrientationLockViewController];

  if (!v4)
  {
    v5 = [(UIViewController *)self childViewControllerForInterfaceOrientationLock];
    v4 = [v5 _effectiveInterfaceOrientationLockViewController];

    if (!v4)
    {
      v4 = self;
    }
  }

  return v4;
}

void __53__UIViewController_setNeedsStatusBarAppearanceUpdate__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v2 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [v5 statusBarManager];
    [v4 updateStatusBarAppearanceWithAnimationParameters:_CurrentStatusBarAppearanceUpdateAnimationParameters];
  }
}

void __59__UIViewController_setNeedsUpdateOfHomeIndicatorAutoHidden__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v2 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [v5 _systemAppearanceManager];
    [v4 updateHomeIndicatorAutoHidden];
  }
}

void __59__UIViewController_setNeedsWhitePointAdaptivityStyleUpdate__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v2 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [v5 _systemAppearanceManager];
    [v4 updateWhitePointAdaptivityStyle];
  }
}

- (UIViewController)_departingParentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->__departingParentViewController);

  return WeakRetained;
}

- (UIEdgeInsets)_overlayInsetsAdjustment
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

+ (void)initialize
{
  v13 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    _class_setCustomDeallocInitiation();
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = qword_1ED4985A8;
    qword_1ED4985A8 = v6;
  }

  else
  {
    v3 = objc_opt_self();
    [v3 instanceMethodForSelector:sel_traitCollection];
    v4 = dyld_image_header_containing_address();
    [a1 instanceMethodForSelector:sel_traitCollection];
    v5 = dyld_image_header_containing_address();

    if (v4 != v5)
    {
      v8 = *(__UILogGetCategoryCachedImpl("TraitCollection", &qword_1ED4985C8) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = v8;
        v10 = NSStringFromClass(a1);
        v11 = 138412290;
        v12 = v10;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Class %@ overrides the -traitCollection getter, which is not supported. If you're trying to override traits, you must use the appropriate API.", &v11, 0xCu);
      }
    }
  }
}

uint64_t __34__UIViewController__doCommonSetup__block_invoke_2()
{
  result = dyld_program_sdk_at_least();
  if ((result & 1) == 0)
  {
    objc_opt_class();

    return _class_setCustomDeallocInitiation();
  }

  return result;
}

void __70__UIViewController__forceParentViewControllerAsParentTraitEnvironment__block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  byte_1ED498596 = [v0 isEqualToString:@"com.apple.mobilecal"];
}

- (id)_effectiveStatusBarHiddenViewController
{
  v3 = [(UIViewController *)self _presentedStatusBarViewController];
  v4 = [v3 _effectiveStatusBarHiddenViewController];

  if (v4)
  {
    v5 = v4;
    v6 = v5;
  }

  else
  {
    v7 = [(UIViewController *)self _existingPresentationControllerImmediate:0 effective:1 includesRoot:1];
    v8 = v7;
    if (!v7 || ([v7 _shouldPresentedViewControllerControlStatusBarAppearance] & 1) != 0 || (objc_msgSend(v8, "presentedViewController"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "modalPresentationCapturesStatusBarAppearance"), v9, v10))
    {
      v11 = [(UIViewController *)self childViewControllerForStatusBarHidden];
      v12 = [v11 _effectiveStatusBarHiddenViewController];

      if (v12)
      {
        v5 = v12;
        v6 = v5;
      }

      else
      {
        v6 = self;
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  return v6;
}

- (int)_preferredStatusBarVisibility
{
  if ([objc_opt_class() doesOverrideViewControllerMethod:sel_prefersStatusBarHidden])
  {
    if ([(UIViewController *)self prefersStatusBarHidden])
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {

    return [(UIViewController *)self _defaultViewControllerStatusBarVisibilityBehavior];
  }
}

- (double)_sceneSystemMinimumMargin
{
  v2 = [(UIViewController *)self _window];
  v3 = [v2 _windowHostingScene];
  [v3 _systemMinimumMargin];
  v5 = v4;

  return v5;
}

- (UITab)tab
{
  WeakRetained = objc_loadWeakRetained(&self->_tab);

  return WeakRetained;
}

- (id)_transitionCoordinator
{
  v3 = _UIAppUseModernRotationAndPresentationBehaviors();
  if (v3)
  {
    v4 = __42__UIViewController__transitionCoordinator__block_invoke(v3, self);
    if (v4)
    {
      v5 = v4;
      v6 = v5;
      goto LABEL_29;
    }

    v32 = 0;
    v33 = &v32;
    v34 = 0x2050000000;
    v35 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __42__UIViewController__transitionCoordinator__block_invoke_2;
    aBlock[3] = &unk_1E7104258;
    aBlock[4] = self;
    v30 = &__block_literal_global_683;
    v31 = &v32;
    v7 = _Block_copy(aBlock);
    v33[3] = v7;
    v8 = v7[2](v7, self);
    if (v8)
    {
      v5 = v8;

      _Block_object_dispose(&v32, 8);
      v6 = v5;
      goto LABEL_29;
    }

    _Block_object_dispose(&v32, 8);
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __42__UIViewController__transitionCoordinator__block_invoke_3;
  v28[3] = &unk_1E7104280;
  v28[4] = self;
  v9 = _Block_copy(v28);
  v10 = [(UIViewController *)self parentViewController];

  if (v10)
  {
    v11 = [(UIViewController *)self parentViewController];
    v12 = v9[2](v9, v11);

    if (v12)
    {
      v13 = v12;
LABEL_27:
      v5 = v13;
      v6 = v13;
      goto LABEL_28;
    }
  }

  v14 = [(UIViewController *)self presentingViewController];

  if (!v14)
  {
    if (_UIAppUseModernRotationAndPresentationBehaviors())
    {
LABEL_13:
      self = 0;
LABEL_26:
      v13 = self;
      goto LABEL_27;
    }

    v16 = [(UIViewController *)self _existingView];
    v17 = [v16 window];

    if (!v17)
    {
      v18 = [(UIViewController *)self presentedViewController];

      if (v18)
      {
        v19 = [(UIViewController *)self presentedViewController];
      }

      else
      {
        v20 = [(UIViewController *)self presentingViewController];

        if (!v20)
        {
          goto LABEL_13;
        }

        v19 = [(UIViewController *)self presentingViewController];
      }

      v21 = v19;
      v22 = [v19 _existingView];
      v17 = [v22 window];

      if (!v17)
      {
        goto LABEL_13;
      }
    }

    v23 = [UIWindowController windowControllerForWindow:v17];
    v24 = v23;
    if (self)
    {
      v25 = [v23 _transitionController];
      if (v25)
      {
        v26 = [_UIViewControllerTransitionContext _associatedTransitionContextForAnimationController:v25];
        self = [v26 _transitionCoordinator];
      }

      else
      {
        self = 0;
      }
    }

    goto LABEL_26;
  }

  v15 = [(UIViewController *)self presentingViewController];
  v6 = v9[2](v9, v15);

  v5 = 0;
LABEL_28:

LABEL_29:

  return v6;
}

id __42__UIViewController__transitionCoordinator__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    do
    {
      v5 = [v4 _presentationController];
      v6 = [v5 _transitionCoordinator];

      if (v6)
      {
        break;
      }

      v6 = [v4 presentedViewController];

      v4 = v6;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return v6;
}

id __42__UIViewController__transitionCoordinator__block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 childModalViewController];

  if (!v4 || ((*(*(a1 + 40) + 16))(), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [v3 childViewControllers];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [*(a1 + 32) _childControllerToIgnoreWhileLookingForTransitionCoordinator];

          if (v11 != v12)
          {
            v13 = (*(*(*(*(a1 + 48) + 8) + 24) + 16))();
            if (v13)
            {
              v5 = v13;
              goto LABEL_14;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_14:
  }

  return v5;
}

- (uint64_t)_shouldRequestViewControllerForObservableScrollViewFromPresentedViewController
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 _presentationController];
  v2 = v1;
  if (!v1 || ([v1 dismissing] & 1) != 0 || (objc_msgSend(v2, "dismissed") & 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 _presentedViewControllerProvidesContentScrollView];
  }

  return v3;
}

- (UINavigationItem)_navigationItemCreatingDefaultIfNotSet
{
  navigationItem = self->_navigationItem;
  if (!navigationItem)
  {
    v5 = [(UIViewController *)self title];
    if (v5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = [UIViewController instanceMethodForSelector:sel_title];
        v7 = [(UIViewController *)self methodForSelector:sel_title];
        v8 = [MEMORY[0x1E696AAA8] currentHandler];
        v9 = objc_opt_class();
        v10 = objc_opt_class();
        if (v6 == v7)
        {
          [v8 handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:15369 description:{@"ViewController class %@ returned a value of class %@ from -title, that is not a subclass of NSString. This is likely a memory error.", v9, v10, v14}];
        }

        else
        {
          [v8 handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:15367 description:{@"ViewController class %@ overrode -title and returned a value of class %@, that is not a subclass of NSString. This is an illegal override. overrideImplementation=%p", v9, v10, v7}];
        }
      }
    }

    v11 = [[UINavigationItem alloc] initWithTitle:v5];
    v12 = self->_navigationItem;
    self->_navigationItem = v11;

    navigationItem = self->_navigationItem;
  }

  return navigationItem;
}

- (NSString)title
{
  v2 = [(NSString *)self->_title copy];

  return v2;
}

- (UINavigationItem)navigationItem
{
  v3 = [(UIViewController *)self searchDisplayController];
  if (v3 && (v4 = v3, -[UIViewController searchDisplayController](self, "searchDisplayController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 displaysSearchBarInNavigationBar], v5, v4, v6))
  {
    v7 = [(UIViewController *)self searchDisplayController];
    v8 = [v7 navigationItem];
  }

  else
  {
    v8 = [(UIViewController *)self _navigationItemCreatingDefaultIfNotSet];
  }

  return v8;
}

- (void)setNeedsUpdateOfSupportedInterfaceOrientations
{
  v2 = [(UIViewController *)self _window];
  [v2 _updateOrientationPreferencesAnimated:{+[UIView areAnimationsEnabled](UIView, "areAnimationsEnabled")}];
}

- (id)_containingTabBarController
{
  if (a1)
  {
    v2 = a1;
    v3 = objc_opt_class();
    a1 = [(UIViewController *)v2 _ancestorViewControllerOfClass:v3 allowModalParent:0];
    v1 = vars8;
  }

  return a1;
}

- (id)_viewControllerForSupportedInterfaceOrientations
{
  v3 = _UIAppUseModernRotationAndPresentationBehaviors();

  return [(UIViewController *)self _viewControllerForSupportedInterfaceOrientationsWithDismissCheck:v3];
}

- (BOOL)isBeingPresented
{
  viewControllerFlags = self->_viewControllerFlags;
  if ((~*&self->_viewControllerFlags & 0xC00000) == 0)
  {
    return 1;
  }

  return (viewControllerFlags & 0x80000000100000) != 0 && (viewControllerFlags & 0x400000) != 0 && (viewControllerFlags & 3) - 1 < 2;
}

- (BOOL)_freezeLayoutForOrientationChangeOnDismissal
{
  v3 = [(UIViewController *)self _allowsFreezeLayoutForOrientationChangeOnDismissal];
  if (v3)
  {
    return (*(&self->_viewControllerFlags + 6) >> 1) & 1;
  }

  return v3;
}

- (uint64_t)_defaultViewControllerStatusBarVisibilityBehavior
{
  v1 = a1;
  if (a1)
  {
    if ([UIApp _wantsCompactStatusBarHiding])
    {
      v2 = [v1 traitCollection];
      if ([v2 verticalSizeClass] == 1)
      {
        v1 = 1;
      }

      else
      {
        v1 = 2;
      }
    }

    else
    {
      return 2;
    }
  }

  return v1;
}

- (id)_viewControllerForRotation
{
  v3 = _UIAppUseModernRotationAndPresentationBehaviors();

  return [(UIViewController *)self _viewControllerForRotationWithDismissCheck:v3];
}

- (id)_effectiveStatusBarStyleViewController
{
  v3 = [(UIViewController *)self _presentedStatusBarViewController];
  v4 = [v3 _effectiveStatusBarStyleViewController];

  if (v4)
  {
    v5 = v4;
    v6 = v5;
  }

  else
  {
    v7 = [(UIViewController *)self _existingPresentationControllerImmediate:0 effective:1 includesRoot:1];
    v8 = v7;
    if (!v7 || ([v7 _shouldPresentedViewControllerControlStatusBarAppearance] & 1) != 0 || (objc_msgSend(v8, "presentedViewController"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "modalPresentationCapturesStatusBarAppearance"), v9, v10))
    {
      v11 = [(UIViewController *)self childViewControllerForStatusBarStyle];
      v12 = [v11 _effectiveStatusBarStyleViewController];

      if (v12)
      {
        v5 = v12;
        v6 = v5;
      }

      else
      {
        v6 = self;
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  return v6;
}

- (CGRect)_viewFrameInWindowForContentOverlayInsetsCalculation
{
  v3 = [(UIViewController *)self _existingView];
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v54 = v3;
  v8 = [v3 window];
  if (!v8)
  {
    goto LABEL_24;
  }

  v9 = self;
  if (!v9)
  {
    goto LABEL_24;
  }

  v10 = v9;
  v11 = 0;
  v12 = v9;
  do
  {
    v13 = [(UIViewController *)v12 _existingPresentationControllerImmediate:0 effective:1 includesRoot:1];
    v14 = [v13 _viewToIgnoreLayerTransformForViewFrameInWindowContentOverlayInsetsCalculation];
    v15 = [v13 containerView];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v8;
    }

    if (v14)
    {
      v17 = v14;
    }

    v18 = v17;
    if (v12 != v10)
    {
      v19 = v11;
      v20 = v4;
      v21 = v5;
      v22 = v6;
      v23 = v7;
      goto LABEL_16;
    }

    if (!-[UIViewController _ignoresWrapperViewForContentOverlayInsets](v10, "_ignoresWrapperViewForContentOverlayInsets") || ([v54 superview], v24 = objc_claimAutoreleasedReturnValue(), v24, v24 == v18))
    {
      [v54 bounds];
      v19 = v54;
LABEL_16:
      [v19 convertRect:v18 toView:{v20, v21, v22, v23}];
      v4 = v30;
      v5 = v31;
      v6 = v32;
      v7 = v33;
      if (!v14)
      {
        goto LABEL_18;
      }

LABEL_17:
      [v14 _frameIgnoringLayerTransform];
      v35 = v4 + v34;
      v37 = v5 + v36;
      v38 = [v14 superview];
      [v38 convertRect:v16 toView:{v35, v37, v6, v7}];
      v4 = v39;
      v5 = v40;
      v6 = v41;
      v7 = v42;

      goto LABEL_18;
    }

    v53 = [v54 superview];
    v25 = [v53 superview];
    [v54 frame];
    [v25 convertRect:v18 toView:?];
    v4 = v26;
    v5 = v27;
    v6 = v28;
    v7 = v29;

    if (v14)
    {
      goto LABEL_17;
    }

LABEL_18:
    if ([v13 _isPresentedInFullScreen])
    {
      v43 = 0;
    }

    else
    {
      v43 = [(UIViewController *)v12 presentingViewController];
    }

    v44 = v16;
    v12 = v43;
    v11 = v44;
  }

  while (v43);
  if (v16)
  {
    [v44 convertRect:v8 toView:{v4, v5, v6, v7}];
    v4 = v45;
    v5 = v46;
    v6 = v47;
    v7 = v48;
  }

LABEL_24:

  v49 = v4;
  v50 = v5;
  v51 = v6;
  v52 = v7;
  result.size.height = v52;
  result.size.width = v51;
  result.origin.y = v50;
  result.origin.x = v49;
  return result;
}

- (UIEdgeInsets)_viewSafeAreaInsetsFromScene
{
  v3 = [(UIViewController *)self _existingView];
  v4 = [v3 window];
  [v4 _managedSafeAreaInsets];
  if ((*(&self->_viewControllerFlags + 4) & 0x40) != 0)
  {
    v39 = [(UIViewController *)self _lastKnownInterfaceOrientation];
    if (!v39)
    {
      v39 = [v4 interfaceOrientation];
    }

    v40 = [v4 windowScene];
    [v40 _safeAreaInsetsForInterfaceOrientation:v39];
    v9 = v41;
    v10 = v42;
    v11 = v43;
    v12 = v44;

    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:
    v45 = [objc_opt_self() mainScreen];
    [v45 overscanCompensationInsets];
    v35 = v46;
    v34 = v47;
    v33 = v48;
    v32 = v49;

    goto LABEL_14;
  }

  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v56 = v9;
  v59 = v10;
  v61 = v11;
  v62 = v12;
  [(UIViewController *)self _viewFrameInWindowForContentOverlayInsetsCalculation];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [v4 bounds];
  x = v67.origin.x;
  y = v67.origin.y;
  width = v67.size.width;
  height = v67.size.height;
  CGRectGetMinY(v67);
  UIRoundToViewScale(v3);
  v63 = v25;
  v54 = width;
  v55 = x;
  v68.origin.x = x;
  v26 = y;
  v68.origin.y = y;
  v68.size.width = width;
  v68.size.height = height;
  CGRectGetMaxY(v68);
  UIRoundToViewScale(v3);
  v28 = v27;
  v69.origin.x = v14;
  v69.origin.y = v16;
  v69.size.width = v18;
  v69.size.height = v20;
  CGRectGetMinY(v69);
  UIRoundToViewScale(v3);
  v30 = v29;
  v65 = v18;
  v70.origin.x = v14;
  v58 = v16;
  v70.origin.y = v16;
  v70.size.width = v18;
  rect = v20;
  v70.size.height = v20;
  CGRectGetMaxY(v70);
  UIRoundToViewScale(v3);
  if (v30 >= v63 && v31 <= v28 || !dyld_program_sdk_at_least())
  {
    goto LABEL_9;
  }

  if (qword_1ED4985B0 != -1)
  {
    dispatch_once(&qword_1ED4985B0, &__block_literal_global_166);
  }

  v32 = 0.0;
  v33 = 0.0;
  v34 = 0.0;
  v35 = 0.0;
  if (byte_1ED498594 == 1)
  {
LABEL_9:
    v71.origin.x = v14;
    v71.origin.y = v58;
    v71.size.width = v65;
    v71.size.height = rect;
    MinY = CGRectGetMinY(v71);
    v72.origin.x = v55;
    v72.origin.y = v26;
    v72.size.width = v54;
    v72.size.height = height;
    v64 = fmax(v56 - fmax(MinY - CGRectGetMinY(v72), 0.0), 0.0);
    v73.origin.x = v14;
    v73.origin.y = v58;
    v73.size.width = v65;
    v73.size.height = rect;
    MinX = CGRectGetMinX(v73);
    v74.origin.x = v55;
    v74.origin.y = v26;
    v74.size.width = v54;
    v74.size.height = height;
    v60 = fmax(v59 - fmax(MinX - CGRectGetMinX(v74), 0.0), 0.0);
    v75.origin.x = v55;
    v75.origin.y = v26;
    v75.size.width = v54;
    v75.size.height = height;
    MaxY = CGRectGetMaxY(v75);
    v76.origin.x = v14;
    v76.origin.y = v58;
    v76.size.width = v65;
    v76.size.height = rect;
    v33 = fmax(v61 - fmax(MaxY - CGRectGetMaxY(v76), 0.0), 0.0);
    v77.origin.x = v55;
    v77.origin.y = v26;
    v77.size.width = v54;
    v35 = v64;
    v77.size.height = height;
    v34 = v60;
    MaxX = CGRectGetMaxX(v77);
    v78.origin.x = v14;
    v78.origin.y = v58;
    v78.size.width = v65;
    v78.size.height = rect;
    v32 = fmax(v62 - fmax(MaxX - CGRectGetMaxX(v78), 0.0), 0.0);
  }

LABEL_14:

  v50 = v35;
  v51 = v34;
  v52 = v33;
  v53 = v32;
  result.right = v53;
  result.bottom = v52;
  result.left = v51;
  result.top = v50;
  return result;
}

- (BOOL)_canBecomeFirstResponder
{
  if ((~*&self->_viewControllerFlags & 3) == 0)
  {
    v3 = [(UIResponder *)self _responderWindow];
    v4 = [v3 _isHostedInAnotherProcess];

    if (!v4)
    {
      return 0;
    }
  }

  v6.receiver = self;
  v6.super_class = UIViewController;
  return [(UIResponder *)&v6 _canBecomeFirstResponder];
}

- (void)_recursiveUpdateContentOverlayInsetsFromParentIfNecessary
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    [a1 _updateContentOverlayInsetsFromParentIfNecessary];
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v2 = [a1 mutableChildViewControllers];
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

          [(UIViewController *)*(*(&v7 + 1) + 8 * v6++) _recursiveUpdateContentOverlayInsetsFromParentIfNecessary];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }
  }
}

- (id)viewControllerForRotation
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_autoreleasePoolPush();
    v3 = [v1 _window];
    v4 = [v3 _rotationViewControllers];

    if (([v1 isPerformingModalTransition] & 1) == 0)
    {
      v5 = [v1 childModalViewController];
      if (v5)
      {
        v6 = v5;
        v7 = [v1 childModalViewController];
        v8 = [v4 containsObject:v7];

        if ((v8 & 1) == 0)
        {
          v9 = [v1 childModalViewController];
          v10 = [UIViewController viewControllerForRotation];

          v1 = v10;
        }
      }
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (id)_visibleView
{
  v2 = [(UIViewController *)self viewControllerForRotation];
  v3 = [v2 dropShadowView];
  if (v3)
  {
    [v2 dropShadowView];
  }

  else
  {
    [v2 view];
  }
  v4 = ;

  return v4;
}

id __42__UIViewController__transitionCoordinator__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 _setChildControllerToIgnoreWhileLookingForTransitionCoordinator:v2];
  v4 = [v3 _transitionCoordinator];
  [v3 _setChildControllerToIgnoreWhileLookingForTransitionCoordinator:0];

  return v4;
}

- (id)_parentViewController
{
  if (a1)
  {
    a1 = a1[12];
    v1 = vars8;
  }

  return a1;
}

- (uint64_t)_didSelfOrAncestorBeginAppearanceTransition
{
  if (!a1)
  {
    return 0;
  }

  if (a1[41] > 0)
  {
    return 1;
  }

  v2 = [a1 parentViewController];
  v3 = v2;
  if (v2)
  {
    v1 = [(UIViewController *)v2 _didSelfOrAncestorBeginAppearanceTransition];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (id)_keyboardSceneDelegate
{
  if (a1)
  {
    v1 = [a1 _window];
    v2 = [v1 windowScene];
    v3 = [v2 keyboardSceneDelegate];

    if (!v3)
    {
      v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_updateTabBarLayout
{
  v3 = objc_opt_class();
  v4 = [(UIViewController *)self _ancestorViewControllerOfClass:v3 allowModalParent:0];
  [v4 _updateTabBarLayout];
}

- (CGSize)preferredContentSize
{
  width = self->_preferredContentSize.width;
  height = self->_preferredContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_invalidateRelevantToolbarItems
{
  relevantToolbarItems = self->_relevantToolbarItems;
  self->_relevantToolbarItems = 0;
}

- (UIViewController)childViewControllerForStatusBarStyle
{
  v2 = self;
  if (self)
  {
    if (_UISolariumEnabled() && ([UIApp _isSpringBoard] & 1) == 0 && -[NSMutableArray count](v2->_childViewControllers, "count") == 1 && -[UIViewController preferredStatusBarStyle](v2, "preferredStatusBarStyle") == UIStatusBarStyleDefault)
    {
      v3 = [(NSMutableArray *)v2->_childViewControllers firstObject];
      v4 = [v3 childViewControllerForStatusBarStyle];
      v5 = v4;
      if (v4)
      {
        v6 = v4;
      }

      else
      {
        v6 = [(NSMutableArray *)v2->_childViewControllers firstObject];
      }

      v2 = v6;

      if ((objc_opt_respondsToSelector() & 1) != 0 && ([(UIViewController *)v2 _hasInProcessStatusBarLumaTracking]& 1) != 0)
      {
        goto LABEL_13;
      }
    }

    v2 = 0;
  }

LABEL_13:

  return v2;
}

- (void)applicationDidResume
{
  viewControllerFlags = self->_viewControllerFlags;
  *&self->_viewControllerFlags = viewControllerFlags & 0xFFFFFFFFFFFFFEFFLL;
  if ((viewControllerFlags & 0x80) != 0)
  {
    [(UIViewController *)self _updateLayoutForStatusBarAndInterfaceOrientation];
  }
}

- (double)_statusBarHeightForCurrentInterfaceOrientation
{
  v2 = [(UIViewController *)self _existingView];
  v3 = [v2 window];

  v4 = 0.0;
  if (v3 && ([UIApp _sceneInterfaceOrientationFromWindow:v3] - 1) <= 3)
  {
    v5 = __UIStatusBarManagerForWindow(v3);
    [v5 statusBarHeight];
    v4 = v6;
  }

  return v4;
}

- (UITabBarItem)tabBarItem
{
  tabBarItem = self->_tabBarItem;
  if (!tabBarItem)
  {
    v4 = [UITabBarItem alloc];
    v5 = [(UIViewController *)self title];
    v6 = [(UITabBarItem *)v4 initWithTitle:v5 image:0 tag:0];
    v7 = self->_tabBarItem;
    self->_tabBarItem = v6;

    tabBarItem = self->_tabBarItem;
  }

  return tabBarItem;
}

- (UITab)_resolvedTab
{
  v3 = [(UIViewController *)self _uip_tabElement];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(UIViewController *)self _fallbackTabElementCreateIfNeeded:1];
  }

  v6 = v5;

  return v6;
}

- (id)_nearestFullScreenAncestorViewController
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 presentingViewController];
    if (v2)
    {
      if ([v1 modalPresentationStyle])
      {
        v3 = [(UIViewController *)v2 _nearestFullScreenAncestorViewController];
      }

      else
      {
        v3 = v1;
      }

      v1 = v3;
    }

    else
    {
      v4 = v1;
      v5 = [(UIViewController *)v4 _parentViewController];

      if (v5)
      {
        do
        {
          v1 = [(UIViewController *)v4 _parentViewController];

          v6 = [(UIViewController *)v1 _parentViewController];

          v4 = v1;
        }

        while (v6);
      }

      else
      {
        v1 = v4;
      }
    }
  }

  return v1;
}

- (void)removeFromParentViewController
{
  parentViewController = self->_parentViewController;
  if (parentViewController)
  {
    [(UIViewController *)parentViewController removeChildViewController:self];
  }
}

- (void)_objc_initiateDealloc
{
  if (self)
  {
    *(&self->_viewControllerFlags + 4) |= 0x80u;
  }

  _UIDeallocOnMainThread(self);
}

- (void)dealloc
{
  v76[4] = *MEMORY[0x1E69E9840];
  if (!self || (*(&self->_viewControllerFlags + 4) & 0x80) == 0)
  {
    v48 = [MEMORY[0x1E696AAA8] currentHandler];
    v49 = objc_opt_class();
    [v48 handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:3313 description:{@"Application circumvented Objective-C runtime dealloc initiation for <%s> object.", class_getName(v49)}];
  }

  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v76[0] = @"UIApplicationSuspendedNotification";
  v76[1] = @"UIApplicationResumedNotification";
  v76[2] = @"UIApplicationWantsViewsToDisappearNotification";
  v76[3] = @"UIAccessibilityLargeTextChangedNotification";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:4];
  [(NSNotificationCenter *)v5 _uiRemoveObserver:v6 names:?];

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v7 = self->_previewSourceViews;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v68 objects:v75 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v69;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v69 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v68 + 1) + 8 * i) unregister];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v68 objects:v75 count:16];
    }

    while (v9);
  }

  v12 = [(UIViewController *)self _useViewBasedTopAndBottomLayoutGuides];
  topLayoutGuide = self->_topLayoutGuide;
  if (v12)
  {
    [(UILayoutSupport *)topLayoutGuide removeFromSuperview];
    [(UILayoutSupport *)self->_bottomLayoutGuide removeFromSuperview];
  }

  else
  {
    _removeLayoutGuide(topLayoutGuide);
    _removeLayoutGuide(self->_bottomLayoutGuide);
  }

  v14 = self->_topLayoutGuide;
  self->_topLayoutGuide = 0;

  bottomLayoutGuide = self->_bottomLayoutGuide;
  self->_bottomLayoutGuide = 0;

  [qword_1ED4985A8 removeObject:self];
  v16 = [(UIView *)&self->_view->super.super.isa __viewDelegate];

  if (v16 == self)
  {
    [(UIView *)&self->_view->super.super.isa __setViewDelegate:?];
  }

  view = self->_view;
  if (view)
  {
    *&view->_viewFlags &= ~0x40000000uLL;
    view = self->_view;
  }

  self->_view = 0;

  v52 = a2;
  context = v4;
  if (dyld_program_sdk_at_least())
  {
    embeddedView = self->__embeddedView;
    self->__embeddedView = 0;
  }

  else
  {
    objc_storeWeak(&self->_transitioningDelegate, 0);
  }

  title = self->_title;
  self->_title = 0;

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v20 = self->_childViewControllers;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v64 objects:v74 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v65;
    do
    {
      v24 = 0;
      do
      {
        if (*v65 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v64 + 1) + 8 * v24);
        if (*(v25 + 96))
        {
          if (os_variant_has_internal_diagnostics() && *(v25 + 96) != self)
          {
            v51 = [MEMORY[0x1E696AAA8] currentHandler];
            v26 = objc_opt_class();
            v50 = NSStringFromClass(v26);
            [v51 handleFailureInMethod:v52 object:self file:@"UIViewController.m" lineNumber:3367 description:{@"Child VC has a different parent VC than self <%@: %p>: %@, parent: %@", v50, self, v25, *(v25 + 96)}];
          }

          *(v25 + 96) = 0;
        }

        ++v24;
      }

      while (v22 != v24);
      v27 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v64 objects:v74 count:16];
      v22 = v27;
    }

    while (v27);
  }

  v28 = self->_childViewControllers;
  childViewControllers = self->_childViewControllers;
  self->_childViewControllers = 0;

  parentViewController = self->_parentViewController;
  if (parentViewController)
  {
    [(UIViewController *)parentViewController removeChildViewController:self];
    self->_parentViewController = 0;
  }

  parentModalViewController = self->_parentModalViewController;
  if (parentModalViewController)
  {
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    v60 = 0u;
    v32 = parentModalViewController->_childModalViewControllers;
    v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v60 objects:v73 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v61;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v61 != v35)
          {
            objc_enumerationMutation(v32);
          }

          [*(*(&v60 + 1) + 8 * j) setParentModalViewController:0];
        }

        v34 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v60 objects:v73 count:16];
      }

      while (v34);
    }

    self->_parentModalViewController = 0;
  }

  presentedStatusBarViewController = self->_presentedStatusBarViewController;
  self->_presentedStatusBarViewController = 0;

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v38 = self->_childModalViewControllers;
  v39 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v56 objects:v72 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v57;
    do
    {
      for (k = 0; k != v40; ++k)
      {
        if (*v57 != v41)
        {
          objc_enumerationMutation(v38);
        }

        [*(*(&v56 + 1) + 8 * k) setParentModalViewController:0];
      }

      v40 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v56 objects:v72 count:16];
    }

    while (v40);
  }

  currentAction = self->_currentAction;
  self->_currentAction = 0;

  editButtonItem = self->_editButtonItem;
  self->_editButtonItem = 0;

  navigationItem = self->_navigationItem;
  self->_navigationItem = 0;

  overrideTraitCollectionsForChildren = self->_overrideTraitCollectionsForChildren;
  self->_overrideTraitCollectionsForChildren = 0;

  WeakRetained = objc_loadWeakRetained(&self->_searchDisplayController);
  [WeakRetained _clearViewController];

  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __27__UIViewController_dealloc__block_invoke;
  v55[3] = &unk_1E7104050;
  v55[4] = self;
  [UIKeyboardSceneDelegate performOnControllers:v55];
  [(UIViewController *)self _setExtensionContextUUID:0];

  objc_autoreleasePoolPop(context);
  v54.receiver = self;
  v54.super_class = UIViewController;
  [(UIResponder *)&v54 dealloc];
}

void __27__UIViewController_dealloc__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 _clearPreservedInputViewsWithRestorableResponder:v3];
  v5 = [MEMORY[0x1E696B098] valueWithPointer:*(a1 + 32)];
  [v4 _clearPreservedInputViewsWithId:v5 clearKeyboard:0];

  v6 = [MEMORY[0x1E696B098] valueWithPointer:*(a1 + 32)];
  [v4 _endPersistingInputAccessoryViewWithId:v6];
}

- (id)_viewControllerForObservableScrollView
{
  if ([(UIViewController *)self _shouldRequestViewControllerForObservableScrollViewFromPresentedViewController])
  {
    v3 = [(UIViewController *)self presentedViewController];
    v4 = [v3 _viewControllerForObservableScrollView];
  }

  else
  {
    v4 = self;
  }

  return v4;
}

- (void)_traitOverrides
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[52];
    if (!v3)
    {
      v4 = [[_UITraitOverrides alloc] initWithDelegate:a1];
      v5 = v2[52];
      v2[52] = v4;

      v3 = v2[52];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (id)_effectiveControllersForAlwaysOnTimelines
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [(UIViewController *)self presentedViewController];
  v4 = [v3 _effectiveControllersForAlwaysOnTimelines];

  if (!v4)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([-[UIViewController performSelector:](self performSelector:{sel_puic_childViewControllerForAlwaysOnTimelines), "_effectiveControllersForAlwaysOnTimelines"}], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v6 = [(UIViewController *)self _childViewControllersForAlwaysOnTimelines];
      v7 = [MEMORY[0x1E695DF70] array];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __85__UIViewController__UIAlwaysOnEnvironment___effectiveControllersForAlwaysOnTimelines__block_invoke;
      v10[3] = &unk_1E70F5BE0;
      v8 = v7;
      v11 = v8;
      [v6 enumerateObjectsUsingBlock:v10];
      if ([v8 count])
      {
        v4 = [v8 copy];
      }

      else
      {
        v4 = 0;
      }

      if (v4)
      {
        goto LABEL_10;
      }

      v12[0] = self;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    }

    v4 = v5;
  }

LABEL_10:

  return v4;
}

- (id)_childViewControllersForAlwaysOnTimelines
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(UIViewController *)self _childViewControllerForAlwaysOnTimelines];
  v3 = v2;
  if (v2)
  {
    v6[0] = v2;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_childViewControllerForAlwaysOnTimelines
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(UIViewController *)self performSelector:sel_puic_childViewControllerForAlwaysOnTimelines];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_performContentScrollViewUpdatesNotifyingObservers
{
  if (!a1)
  {
    return;
  }

  v23 = [*(a1 + 608) objectForKey:&unk_1EFE30280];
  v2 = [*(a1 + 608) objectForKey:&unk_1EFE30298];
  v3 = [(UIViewController *)a1 _resolveContentScrollViewForEdge:?];
  v4 = [(UIViewController *)a1 _resolveContentScrollViewForEdge:?];
  v5 = [a1 presentingViewController];
  v6 = [v5 navigationController];
  v7 = [v6 _outermostNavigationController];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [a1 navigationController];
    v9 = [v10 _outermostNavigationController];
  }

  v11 = [0 presentingViewController];
  v12 = [(UIViewController *)v11 _containingTabBarController];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v22 = v4;
    v15 = [(UIViewController *)v9 _containingTabBarController];
    v16 = v15;
    if (v15)
    {
      v14 = v15;
    }

    else
    {
      v17 = [(UIViewController *)v5 _containingTabBarController];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = [(UIViewController *)a1 _containingTabBarController];
      }

      v14 = v19;
    }

    v4 = v22;
  }

  if (v23 != v3 && v2 != v4)
  {
    if (v23 == v2)
    {
      [v9 _observableScrollViewDidChangeFrom:? forViewController:? edges:?];
      v20 = v14;
      goto LABEL_23;
    }

    [v9 _observableScrollViewDidChangeFrom:? forViewController:? edges:?];
    goto LABEL_21;
  }

  if (v23 != v3)
  {
    v20 = v9;
LABEL_23:
    [v20 _observableScrollViewDidChangeFrom:v22 forViewController:? edges:?];
    goto LABEL_24;
  }

  if (v2 != v4)
  {
LABEL_21:
    [v9 _observableScrollViewDidChangeFrom:v2 forViewController:a1 edges:{4, v22}];
    v20 = v14;
    goto LABEL_23;
  }

LABEL_24:
  if ((*(a1 + 376) & 3u) - 1 <= 1)
  {
    [UIViewController _updateViewSafeAreaInsetsAndEagerlyUpdateContentScrollView:a1];
  }

  v21 = *(a1 + 616);
  if (v21)
  {
    [v21 reconfigureContentScrollView];
  }
}

- (BOOL)_ancestorViewControllerIsInPopover
{
  v2 = [(UIViewController *)self _rootAncestorViewController];
  v3 = [v2 _popoverController];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)extendedLayoutIncludesOpaqueBars
{
  if ([(UIViewController *)self _ancestorViewControllerIsInPopover])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    return (*(&self->_viewControllerFlags + 4) >> 4) & 1;
  }

  return v3;
}

- (BOOL)_navControllerIsLayingOutTopViewController
{
  v2 = [(UIViewController *)self navigationController];
  v3 = [v2 _isLayingOutTopViewController];

  return v3;
}

- (_UIFocusPlatformBehavior)_focusBehavior
{
  v2 = [(UIViewController *)self _focusSystem];
  v3 = [v2 behavior];

  return v3;
}

- (BOOL)_containsFirstResponder
{
  if ([(UIResponder *)self isFirstResponder]|| [(UIView *)self->_view _isAncestorOfFirstResponder])
  {
    return 1;
  }

  v4 = [(UINavigationItem *)self->_navigationItem titleView];
  v5 = [v4 _isAncestorOfFirstResponder];

  return v5;
}

- (void)awakeFromNib
{
  v4.receiver = self;
  v4.super_class = UIViewController;
  [&v4 awakeFromNib];
  if ((*&self->_viewControllerFlags & 0x40) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(UIViewController *)self _doesSelfOrAncestorPassPredicate:?];
  }

  [(UIView *)self->_view setNeedsUpdateProperties];
  if ([(UIViewController *)self isViewLoaded])
  {
    if ((v3 & 1) == 0)
    {
      [(UIViewController *)self _sendViewDidLoadWithAppearanceProxyObjectTaggingEnabled];
    }
  }
}

- (id)storyboardIdentifier
{
  v2 = self->_storyboardIdentifier;

  return v2;
}

- (void)autoresizeArchivedView
{
  if ([a1 autoresizesArchivedViewToFullSize] && objc_msgSend(a1, "isViewLoaded"))
  {
    v2 = [a1 _existingView];
    [a1 _defaultInitialViewFrame];
    [v2 setFrame:?];
  }
}

- (UISheetPresentationController)sheetPresentationController
{
  v3 = [(UIViewController *)self presentingViewController];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _originalPresentationController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [v4 _originalPresentationController];
LABEL_17:
      v15 = v7;
      goto LABEL_19;
    }
  }

  else
  {
    v8 = [(UIViewController *)self modalPresentationStyle];
    if (self->_temporaryPresentationController)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 > 0x10;
    }

    if (!v9 && ((1 << v8) & 0x10006) != 0)
    {
      if ([(UIViewController *)self _requiresCustomPresentationController])
      {
        v11 = [(UIViewController *)self _customPresentationControllerForPresentedController:self presentingController:0 sourceController:self];
      }

      else
      {
        v11 = [objc_alloc(objc_opt_class()) initWithPresentedViewController:self presentingViewController:0];
      }

      v12 = v11;
      [(UIViewController *)self _setTemporaryPresentationController:v11];
    }

    v13 = [(UIViewController *)self _temporaryPresentationController];
    objc_opt_class();
    v14 = objc_opt_isKindOfClass();

    if (v14)
    {
      v7 = [(UIViewController *)self _temporaryPresentationController];
      goto LABEL_17;
    }
  }

  v15 = 0;
LABEL_19:

  return v15;
}

- (UIInterfaceOrientation)interfaceOrientation
{
  if (!self)
  {
    return 0;
  }

  v3 = [(UIViewController *)self _popoverController];

  if (!v3)
  {
    v5 = self;
    v6 = v5->_parentViewController;
    if (v6)
    {
      v7 = v6;
      do
      {
        p_isa = v7;

        v7 = p_isa[12];
        v5 = p_isa;
      }

      while (v7);
    }

    else
    {
      p_isa = &v5->super.super.isa;
    }

    v9 = [p_isa _existingView];
    v10 = [v9 window];

    v11 = [v10 rootViewController];
    v12 = [p_isa _rootAncestorViewController];

    if (v11 == v12)
    {
      v4 = [p_isa _lastKnownInterfaceOrientation];
      if (!v10)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v10 && [v10 _windowInterfaceOrientation])
      {
        v4 = [v10 _windowInterfaceOrientation];
      }

      else
      {
        v13 = [UIApp _defaultUISceneOrMainScreenPlaceholderIfExists];
        v4 = [v13 _interfaceOrientation];
      }

      if (v4 <= UIInterfaceOrientationPortrait)
      {
        v4 = UIInterfaceOrientationPortrait;
      }

      if (!v10)
      {
        goto LABEL_20;
      }
    }

    v14 = [p_isa _lastKnownInterfaceOrientation];
    v15 = [v10 windowScene];
    v16 = [v15 _interfaceOrientation];

    if (v14 == v16)
    {
LABEL_21:

      return v4;
    }

LABEL_20:
    v4 = [p_isa _preferredInterfaceOrientationGivenCurrentOrientation:v4];
    goto LABEL_21;
  }

  return 1;
}

- (BOOL)_shouldTrackAppearStateChange
{
  if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_EnableViewControllerInteractionActivityTracking, @"EnableViewControllerInteractionActivityTracking", _UIInternalPreferenceUpdateBool) & 1) == 0 && !byte_1ED48ACA4)
  {
    return 0;
  }

  v3 = [a1 parentViewController];
  v4 = v3;
  if (v3 && ([v3 isSettingAppearState] & 1) != 0)
  {
    v2 = 0;
  }

  else
  {
    v5 = [a1 _effectiveInteractionActivityTrackingBaseName];
    v2 = v5 != 0;
  }

  return v2;
}

- (NSString)_effectiveInteractionActivityTrackingBaseName
{
  v3 = [(UIViewController *)self interactionActivityTrackingBaseName];
  if (!v3)
  {
    if (([(UIViewController *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
    {
      v6 = objc_opt_class();
      v5 = NSStringFromClass(v6);
      goto LABEL_6;
    }

    v4 = [(UIViewController *)self nibName];

    if (v4)
    {
      v5 = [(UIViewController *)self nibName];
LABEL_6:
      v3 = v5;
      goto LABEL_7;
    }

    v8 = [(UIViewController *)self view];
    v3 = [v8 accessibilityIdentifier];
  }

LABEL_7:

  return v3;
}

- (id)_effectiveExclusiveCollectionPhysicalButtonConfigurationViewController
{
  v3 = [(UIViewController *)self _presentedStatusBarViewController];
  v4 = [v3 _existingView];
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 _existingPresentationControllerImmediate:0 effective:1];
    v8 = [v7 presentationStyle];
    if (v8 == 7 || v8 == 20)
    {
      v10 = 0;
    }

    else
    {
      v10 = v6;
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v11 _effectiveExclusiveCollectionPhysicalButtonConfigurationViewController];
  v13 = [(UIViewController *)v12 _existingView];
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (!v15)
  {
    v16 = [(UIViewController *)self _childViewControllerForExclusiveCollectionPhysicalButtonConfigurations];
    v12 = [v16 _effectiveExclusiveCollectionPhysicalButtonConfigurationViewController];

    v17 = [(UIViewController *)v12 _existingView];
    v18 = v17 ? v12 : 0;
    v19 = v18;

    if (!v19)
    {
      v12 = self;
    }
  }

  return v12;
}

- (NSArray)_relevantToolbarItems
{
  v2 = self;
  v44 = *MEMORY[0x1E69E9840];
  relevantToolbarItems = self->_relevantToolbarItems;
  if (relevantToolbarItems)
  {
    goto LABEL_39;
  }

  if (!_UISolariumEnabled())
  {
    v26 = [(NSArray *)v2->_toolbarItems copy];
    v27 = v2->_relevantToolbarItems;
    v2->_relevantToolbarItems = v26;

    goto LABEL_35;
  }

  v4 = [(UIViewController *)v2 _existingNavigationItem];
  v5 = [(UIViewController *)v2 traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6)
  {
    goto LABEL_4;
  }

  if (!v4)
  {
    v7 = 0;
    goto LABEL_5;
  }

  if (![v4 searchBarPlacementAllowsToolbarIntegration])
  {
LABEL_4:
    v7 = 1;
  }

  else
  {
    v28 = [v4 _searchControllerIfAllowed];
    v7 = v28 == 0;
  }

LABEL_5:
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = v2->_toolbarItems;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (!v9)
  {

    goto LABEL_33;
  }

  v10 = v9;
  v32 = v2;
  v11 = 0;
  v12 = *v34;
  do
  {
    v13 = 0;
    do
    {
      if (*v34 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v33 + 1) + 8 * v13);
      if ([v14 _isSearchBarPlacementItem])
      {
        if (v7)
        {
          if (!v11)
          {
            v11 = [(NSArray *)v32->_toolbarItems mutableCopy];
          }

LABEL_19:
          [(NSArray *)v11 removeObject:v14];
          goto LABEL_20;
        }

        v15 = [v14 _vendingNavigationItem];
        if (v15)
        {
          v16 = v15;
          v17 = [v14 _vendingNavigationItem];

          if (v4 != v17)
          {
            if (os_variant_has_internal_diagnostics())
            {
              v21 = __UIFaultDebugAssertLog();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
              {
                v22 = [v14 _vendingNavigationItem];
                *buf = 138412802;
                v38 = v32;
                v39 = 2112;
                v40 = v4;
                v41 = 2112;
                v42 = v22;
                _os_log_fault_impl(&dword_188A29000, v21, OS_LOG_TYPE_FAULT, "Ignoring searchBarPlacementBarButtonItem because its vending navigation item does not match the view controller's. view controller: %@; vc's navigationItem = %@; vending navigation item %@", buf, 0x20u);
              }
            }

            else
            {
              v18 = *(__UILogGetCategoryCachedImpl("Assert", &_relevantToolbarItems___s_category) + 8);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                v19 = v18;
                v20 = [v14 _vendingNavigationItem];
                *buf = 138412802;
                v38 = v32;
                v39 = 2112;
                v40 = v4;
                v41 = 2112;
                v42 = v20;
                _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "Ignoring searchBarPlacementBarButtonItem because its vending navigation item does not match the view controller's. view controller: %@; vc's navigationItem = %@; vending navigation item %@", buf, 0x20u);
              }
            }

            goto LABEL_19;
          }
        }
      }

LABEL_20:
      ++v13;
    }

    while (v10 != v13);
    v23 = [(NSArray *)v8 countByEnumeratingWithState:&v33 objects:v43 count:16];
    v10 = v23;
  }

  while (v23);

  v2 = v32;
  if (v11)
  {
    v24 = [(NSArray *)v11 copy];
    v25 = v32->_relevantToolbarItems;
    v32->_relevantToolbarItems = v24;

    goto LABEL_34;
  }

LABEL_33:
  v29 = [(NSArray *)v2->_toolbarItems copy];
  v11 = v2->_relevantToolbarItems;
  v2->_relevantToolbarItems = v29;
LABEL_34:

LABEL_35:
  if (v2->_relevantToolbarItems)
  {
    v30 = v2->_relevantToolbarItems;
  }

  else
  {
    v30 = MEMORY[0x1E695E0F0];
  }

  objc_storeStrong(&v2->_relevantToolbarItems, v30);
  relevantToolbarItems = v2->_relevantToolbarItems;
LABEL_39:

  return relevantToolbarItems;
}

- (id)_viewControllerForDismissal
{
  if (a1)
  {
    v2 = [a1 _presentationController];
    v3 = [v2 _presentingOrPresented];

    if (v3)
    {
      v4 = a1;
    }

    else
    {
      v5 = [a1 presentedViewController];
      v6 = [v5 _existingPresentationControllerImmediate:1 effective:1];
      v7 = [v6 _presentingOrPresented];

      if (!v7 || ([v5 presentingViewController], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v4 = [a1 presentingViewController];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_willPreemptRunningTransitionForDismissal
{
  v2 = [(UIViewController *)self _viewControllerForDismissal];
  v3 = [v2 presentedViewController];
  v4 = [v3 isBeingDismissed];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v2 _presentationController];
    v7 = [v6 _transitionContext];

    v8 = [v7 _animator];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v8 prefersPreemptionEnabledForPresentations];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)_hostingNavigationBar
{
  if ([(NSMutableArray *)self->_childViewControllers count]== 1)
  {
    v3 = [(NSMutableArray *)self->_childViewControllers firstObject];
    v4 = [v3 _hostingNavigationBar];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isInViewControllerThatHandlesKeyboardAvoidance
{
  v3 = [(UIViewController *)self _existingPresentationControllerImmediate:0 effective:1];
  v4 = [(UIViewController *)self _popoverController];
  if (v4)
  {
  }

  else if (([v3 _handlesKeyboardAvoidance] & 1) == 0)
  {
    v7 = [(UIViewController *)self _multiColumnViewController];

    v5 = v7 != 0;
    goto LABEL_5;
  }

  v5 = 1;
LABEL_5:

  return v5;
}

- (id)_nonPresentationAppearanceContainer
{
  v3 = [(UIViewController *)self _existingView];
  v4 = [v3 superview];

  if (dyld_program_sdk_at_least() && !v4)
  {
    v4 = [(UIViewController *)self _window];
  }

  return v4;
}

- (id)_contentScrollView
{
  if ((~*&self->_viewControllerFlags & 0x900000000000000) == 0)
  {
    goto LABEL_2;
  }

  v4 = [(UIViewController *)self contentScrollView];
  v2 = v4;
  viewControllerFlags = self->_viewControllerFlags;
  if ((viewControllerFlags & 0x100000000000000) != 0 && (viewControllerFlags & 0x400000000000000) == 0)
  {
    if (v4)
    {
      *&self->_viewControllerFlags = viewControllerFlags | 0x400000000000000;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        *&self->_viewControllerFlags |= 0x800000000000000uLL;

LABEL_2:
        v2 = 0;
      }
    }
  }

  return v2;
}

- (id)_appearanceContainer
{
  v3 = [(UIViewController *)self _parentModalViewController];
  v4 = [v3 _presentationController];

  if (v4)
  {
    v5 = [(UIViewController *)self _parentModalViewController];
    v6 = [v5 _presentationController];
  }

  else
  {
    v6 = [(UIViewController *)self _nonPresentationAppearanceContainer];
  }

  return v6;
}

- (void)updateTraitsIfNeeded
{
  if (self->_view)
  {
    [(UIView *)self->_view updateTraitsIfNeeded];
  }

  else
  {
    [(UIViewController *)self _updateTraitsIfNecessarySchedulingPropagation:?];
  }
}

- (void)_setNeedsUpdateContentUnavailableConfiguration
{
  *(&self->_viewControllerFlags + 4) |= 0x10u;
  if ([(UIViewController *)self isViewLoaded])
  {
    if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {

      [(UIViewController *)self _performContentUnavailableConfigurationStateUpdate];
    }

    else
    {

      [(UIViewController *)self setNeedsUpdateProperties];
    }
  }
}

- (BOOL)_canShowWhileLocked
{
  v2 = +[UIViewController _whitelistOfSubclassableViewControllersMarkedSafe];
  v3 = [v2 containsObject:objc_opt_class()];

  return v3;
}

+ (id)_whitelistOfSubclassableViewControllersMarkedSafe
{
  if (qword_1ED498670 != -1)
  {
    dispatch_once(&qword_1ED498670, &__block_literal_global_925);
  }

  v3 = qword_1ED498668;

  return v3;
}

void __69__UIViewController__whitelistOfSubclassableViewControllersMarkedSafe__block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, v7, v8, objc_opt_class(), 0}];
  v10 = qword_1ED498668;
  qword_1ED498668 = v9;
}

- (BOOL)shouldAutorotate
{
  if (dyld_program_sdk_at_least() && [(UIViewController *)self isViewLoaded])
  {
    v3 = [(UIViewController *)self view];
    v4 = [v3 window];

    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = [(UIViewController *)self _window];
    if (!v4)
    {
LABEL_8:
      v7 = (*(&self->_viewControllerFlags + 1) >> 3) & 1;
      goto LABEL_9;
    }
  }

  v5 = [v4 screen];
  v6 = [objc_opt_self() mainScreen];

  if (v5 == v6)
  {
    goto LABEL_8;
  }

  LOBYTE(v7) = 0;
LABEL_9:

  return v7;
}

- (UIContentUnavailableConfigurationState)_bridgedContentUnavailableConfigurationState
{
  v2 = self;
  v3 = [(UIViewController *)v2 _contentUnavailableConfigurationState];
  sub_188C36830(v3, v9);

  v4 = v9[0];
  v8 = v9[4];
  sub_188C36CC8();
  v6 = v5;

  return v6;
}

- (id)_contentUnavailableConfigurationState
{
  v3 = [UIContentUnavailableConfigurationState alloc];
  v4 = [(UIViewController *)self traitCollection];
  v5 = [(UIContentUnavailableConfigurationState *)v3 initWithTraitCollection:v4];

  v6 = [(UIViewController *)self navigationItem];
  v7 = [v6 searchController];
  v8 = [v7 searchBar];
  v9 = [v8 text];
  [(UIContentUnavailableConfigurationState *)v5 setSearchText:v9];

  return v5;
}

- (UIMultiColumnViewController)_multiColumnViewController
{
  v3 = objc_opt_class();

  return [(UIViewController *)self _ancestorViewControllerOfClass:v3 allowModalParent:0];
}

- (void)_unloadHierarchyInputAccessoryViewIfNecessary
{
  if (a1)
  {
    v3 = [(UIViewController *)a1 _keyboardSceneDelegate];
    v2 = [MEMORY[0x1E696B098] valueWithPointer:a1];
    [v3 _endPersistingInputAccessoryViewWithId:v2];
  }
}

- (id)_definiteTransitionCoordinator
{
  v3 = [(UIViewController *)self transitionCoordinator];
  if (!v3)
  {
    v4 = [_UIViewControllerImmediateAnimationTransitionCoordinator alloc];
    v5 = [(UIViewController *)self _existingView];
    v3 = [(_UIViewControllerImmediateAnimationTransitionCoordinator *)v4 initWithContainerView:v5];
  }

  return v3;
}

- (void)_executeAfterAppearanceBlock
{
  if (self->_afterAppearance)
  {
    *&self->_viewControllerFlags |= 0x20000000uLL;
    v3 = [(UIViewController *)self afterAppearanceBlock];
    v3[2]();

    [(UIViewController *)self setAfterAppearanceBlock:0];
    *&self->_viewControllerFlags &= ~0x20000000uLL;
  }
}

- (id)afterAppearanceBlock
{
  v2 = _Block_copy(self->_afterAppearance);

  return v2;
}

- (BOOL)isBeingDismissed
{
  viewControllerFlags = self->_viewControllerFlags;
  if ((viewControllerFlags & 0xC00000) == 0x400000)
  {
    return 1;
  }

  return (viewControllerFlags & 0x80000000100000) != 0 && (viewControllerFlags & 0x400000) != 0 && (viewControllerFlags & 3) - 3 < 0xFFFFFFFE;
}

- (id)_contentUnavailableConfiguration
{
  v2 = [(UIViewController *)self contentUnavailableConfiguration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIPresentationController)presentationController
{
  v3 = [(UIViewController *)self _parentModalViewController];

  if (v3)
  {
    v4 = [(UIViewController *)self _parentModalViewController];
    v5 = [v4 _originalPresentationController];
  }

  else
  {
    if (!self->_temporaryPresentationController)
    {
      if ([(UIViewController *)self modalPresentationStyle]== UIModalPresentationCustom || [(UIViewController *)self _requiresCustomPresentationController])
      {
        v6 = [(UIViewController *)self _customPresentationControllerForPresentedController:self presentingController:0 sourceController:self];
      }

      else
      {
        v7 = +[_UIPresentationControllerDefaultVisualStyleProvider sharedInstance];
        v6 = [v7 presentationControllerForPresentedViewController:self];
      }

      [(UIViewController *)self _setTemporaryPresentationController:v6];
    }

    v5 = [(UIViewController *)self _temporaryPresentationController];
  }

  return v5;
}

- (id)_defaultAnimationController
{
  v2 = [[UIViewControllerBuiltinTransitionViewAnimator alloc] initWithTransition:0];

  return v2;
}

- (BOOL)_willPreemptRunningPresentationTransition
{
  v2 = [(UIViewController *)self _nonModalAncestorViewControllerStopAtIsPresentationContext:0];
  v3 = [v2 _presentationController];
  v4 = [v3 _transitionContext];

  v5 = [v4 _animator];
  v6 = 0;
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 prefersPreemptionEnabledForPresentations];
  }

  return v6;
}

- (void)_isWaitingForDelayedPresentation
{
  if (result)
  {
    v1 = objc_getAssociatedObject(result, &unk_1ED498592);
    v2 = [v1 _isDelayingPresentation];

    return v2;
  }

  return result;
}

- (BOOL)_isDelayingPresentation
{
  v2 = objc_getAssociatedObject(self, &unk_1ED498593);
  v3 = [v2 requestCount] != 0;

  return v3;
}

+ (BOOL)_shouldAnimateTransitions
{
  if ([a1 _shouldDeferTransitions])
  {
    v2 = 1;
  }

  else
  {
    objc_opt_self();
    v2 = _ShouldAnimateImmediateTransitions;
  }

  return v2 & 1;
}

- (id)transitioningDelegate
{
  v3 = [(UIViewController *)self _overrideTransitioningDelegate];
  v4 = v3;
  if (v3)
  {
    WeakRetained = v3;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_transitioningDelegate);
  }

  v6 = WeakRetained;

  return v6;
}

- (id)_zoomTransitionController
{
  v3 = objc_getAssociatedObject(self, &_UIViewControllerZoomTransitionControllerKey);
  if (!v3)
  {
    v3 = objc_opt_new();
    objc_setAssociatedObject(self, &_UIViewControllerZoomTransitionControllerKey, v3, 1);
  }

  return v3;
}

- (void)_didFinishPresentTransition
{
  v11 = [(UIViewController *)self presentedViewController];
  if (v11)
  {
    currentAction = self->_currentAction;
    if (currentAction)
    {
      if (currentAction->_transition == 13)
      {
        curlUpRevealedHeight = currentAction->_curlUpRevealedHeight;
        v12 = curlUpRevealedHeight;
        v5 = v11;
        if (curlUpRevealedHeight == 0.0)
        {
          v6 = [v11 view];
          [v6 bounds];
          _UIViewCurlUpTransitionToTime(&v12, v7, v8);

          v5 = v11;
          curlUpRevealedHeight = v12;
        }

        [(UIViewController *)v5 _addCurlUpTapGestureRecognizerWithRevealedHeight:?];
      }
    }
  }

  *&self->_viewControllerFlags &= ~0x200000uLL;
  v9 = self->_currentAction;
  self->_currentAction = 0;

  v10 = [(UIViewController *)self _rootAncestorViewController];
  [v10 setNeedsUpdateOfSupportedInterfaceOrientations];
}

- (BOOL)disablesAutomaticKeyboardDismissal
{
  if ([(UIViewController *)self modalPresentationStyle]!= 16 && [(UIViewController *)self modalPresentationStyle]!= UIModalPresentationFormSheet)
  {
    return 0;
  }

  return [(UIViewController *)self _shouldAutoPinInputViewsForModalFormSheet];
}

- (void)setNeedsUserInterfaceAppearanceUpdate
{
  if (_UIIsPrivateMainBundle())
  {

    [(UIViewController *)self _updateTraitsIfNecessary];
  }
}

- (id)_completionBlock
{
  if (self->_currentAction)
  {
    v2 = [(UIViewController *)self currentAction];
    v3 = v2;
    if (v2)
    {
      v4 = *(v2 + 24);
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_modalPreservedFirstResponder
{
  if (a1)
  {
    a1 = a1[16];
    v1 = vars8;
  }

  return a1;
}

- (BOOL)prefersStatusBarHidden
{
  if ([objc_opt_class() doesOverrideViewControllerMethod:sel__preferredStatusBarVisibility])
  {
    v3 = [(UIViewController *)self _preferredStatusBarVisibility];
  }

  else
  {
    v3 = [(UIViewController *)self _defaultViewControllerStatusBarVisibilityBehavior];
  }

  return v3 == 1;
}

- (id)_activityContinuationSuitableToBecomeCurrent
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(UIViewController *)self childModalViewController];
  v4 = v3;
  if (!v3 || ([v3 _activityContinuationSuitableToBecomeCurrent], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [(UIViewController *)self _additionalViewControllersToCheckForUserActivity];
    v7 = v6;
    if (v6 && [v6 count])
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = v7;
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [*(*(&v16 + 1) + 8 * i) _activityContinuationSuitableToBecomeCurrent];
            if (v12)
            {
              v5 = v12;

              goto LABEL_18;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }
    }

    v13 = [(UIViewController *)self _existingView];
    v14 = [v13 window];

    if (v14)
    {
      v5 = [(UIResponder *)self userActivity];
    }

    else
    {
      v5 = 0;
    }
  }

LABEL_18:

  return v5;
}

- (id)_userActionDescription
{
  if (a1)
  {
    v2 = [MEMORY[0x1E695DF90] dictionary];
    _addUserActionDescription(a1, v2);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_updateContentUnavailableConfigurationWithObservationTracking
{
  v2 = self;
  sub_188CC96E4();
}

- (void)_executeContentUnavailableConfigurationUpdate
{
  if (a1)
  {
    v2 = [a1 contentUnavailableConfigurationState];
    memset(__src, 0, sizeof(__src));
    _UIBeginTrackingTraitUsage(a1, 0, __src);
    v3 = [a1 contentUnavailableConfiguration];
    v4 = [v3 updatedConfigurationForState:v2];

    [(UIViewController *)a1 _applyContentUnavailableConfiguration:v4];
    [a1 updateContentUnavailableConfigurationUsingState:v2];
    [a1 _updateContentUnavailableConfigurationUsingState:v2];
    [a1 _bridgedUpdateContentUnavailableConfigurationUsingState:v2];
    memcpy(v10, __src, sizeof(v10));
    TraitCollectionTSD = GetTraitCollectionTSD();
    memcpy(__dst, TraitCollectionTSD + 16, sizeof(__dst));
    memcpy(TraitCollectionTSD + 16, v10, 0x170uLL);
    v6 = __dst[22] & ~*&__src[11];
    v7 = *&__src[11] & ~__dst[22];
    v8 = __dst[22] & *&__src[11];
    v9 = [a1 methodForSelector:sel_updateContentUnavailableConfigurationUsingState_];
    *&v10[0] = v6;
    *(&v10[0] + 1) = v7;
    *&v10[1] = v8;
    [(UIViewController *)a1 _recordTraitUsage:v10 trackedStateDiff:v9 insideMethod:sel_setNeedsUpdateContentUnavailableConfiguration withInvalidationAction:?];
    _UITraitUsageTrackingResultDestroy(__dst);
  }
}

- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)a3
{
  sub_188C36830(a3, v5);
  v3 = v5[0];
  v4 = v5[4];
}

- (UIBarButtonItem)editButtonItem
{
  editButtonItem = self->_editButtonItem;
  if (!editButtonItem)
  {
    v4 = _UISolariumEnabled();
    viewControllerFlags = self->_viewControllerFlags;
    if (v4)
    {
      v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:~(viewControllerFlags >> 1) & 2 target:self action:sel__toggleEditing_];
      v7 = self->_editButtonItem;
      self->_editButtonItem = v6;

      v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:(*&self->_viewControllerFlags >> 1) & 2 target:0 action:0];
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UIBarButtonItem systemItem](self->_editButtonItem, "systemItem")}];
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UIBarButtonItem systemItem](v8, "systemItem")}];
      v11 = [MEMORY[0x1E695DFD8] setWithObjects:{v9, v10, 0}];
      [(UIBarButtonItem *)self->_editButtonItem _setPossibleSystemItems:v11];
    }

    else
    {
      if ((viewControllerFlags & 4) != 0)
      {
        v12 = @"Done";
      }

      else
      {
        v12 = @"Edit";
      }

      v9 = _UINSLocalizedStringWithDefaultValue(v12, v12);
      if ((*&self->_viewControllerFlags & 4) != 0)
      {
        v13 = @"Edit";
      }

      else
      {
        v13 = @"Done";
      }

      v10 = _UINSLocalizedStringWithDefaultValue(v13, v13);
      v14 = (*&self->_viewControllerFlags >> 1) & 2;
      v15 = [[UIBarButtonItem alloc] initWithTitle:v9 style:v14 target:self action:sel__toggleEditing_];
      v16 = self->_editButtonItem;
      self->_editButtonItem = v15;

      v8 = [[UIBarButtonItem alloc] initWithTitle:v10 style:v14 ^ 2 target:0 action:0];
      v11 = [MEMORY[0x1E695DFD8] setWithObjects:{self->_editButtonItem, v8, 0}];
      [(UIBarButtonItem *)self->_editButtonItem _setPossibleItemVariations:v11];
    }

    editButtonItem = self->_editButtonItem;
  }

  return editButtonItem;
}

BOOL __73__UIViewController_UIResponderChainTraversal___hasDeepestActionResponder__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1 || (v1[94] & 3u) - 1 > 1)
  {
    return 0;
  }

  v2 = [v1 _existingView];
  v3 = [v2 window];
  v4 = v3 != 0;

  return v4;
}

id __70__UIViewController_UIResponderChainTraversal___deepestActionResponder__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) mutableChildViewControllers];
  if ([v2 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = [v2 reverseObjectEnumerator];
    v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v17;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v16 + 1) + 8 * i);
          if (v8 && (v8[94] & 3u) - 1 <= 1 && ([*(*(&v16 + 1) + 8 * i) _hasDeepestActionResponder] & 1) != 0)
          {
            v12 = v8;
            goto LABEL_19;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }
  }

  v9 = *(a1 + 32);
  if (v9 && (v9[94] & 3u) - 1 <= 1 && ([v9 _existingView], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "window"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v9 = *(a1 + 32), v11))
  {
    v12 = [v9 _existingView];
    v3 = v12;
LABEL_19:
    v13 = [v12 _deepestActionResponder];
  }

  else
  {
    v15.receiver = v9;
    v15.super_class = UIViewController;
    v13 = objc_msgSendSuper2(&v15, sel__deepestActionResponder);
  }

  return v13;
}

- (BOOL)_hasDeepestActionResponder
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __73__UIViewController_UIResponderChainTraversal___hasDeepestActionResponder__block_invoke;
  v3[3] = &unk_1E70F3CB0;
  v3[4] = self;
  return [(UIViewController *)self _hasDeepestPresentedActionResponderOrBlock:v3];
}

- (id)_deepestActionResponder
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__UIViewController_UIResponderChainTraversal___deepestActionResponder__block_invoke;
  v4[3] = &unk_1E71005E0;
  v4[4] = self;
  v2 = [(UIViewController *)self _deepestPresentedActionResponderOrBlock:v4];

  return v2;
}

- (BOOL)_isPresentedFormSheet
{
  if (self->_parentModalViewController && ([(UIViewController *)self modalPresentationStyle]== 16 || [(UIViewController *)self modalPresentationStyle]== UIModalPresentationFormSheet || self->_parentModalViewController && [(UIViewController *)self modalPresentationStyle]== UIModalPresentationCurrentContext && [(UIViewController *)self->_parentModalViewController _isPresentedFormSheet]))
  {
    LOBYTE(parentViewController) = 1;
  }

  else
  {
    parentViewController = self->_parentViewController;
    if (parentViewController)
    {

      LOBYTE(parentViewController) = [(UIViewController *)parentViewController _isPresentedFormSheet];
    }
  }

  return parentViewController;
}

void __85__UIViewController__UIAlwaysOnEnvironment___effectiveControllersForAlwaysOnTimelines__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 _effectiveControllersForAlwaysOnTimelines];
  [v2 addObjectsFromArray:v3];
}

- (NSExtensionContext)extensionContext
{
  v3 = [(UIViewController *)self _extensionContextUUID];
  v4 = self;
  v5 = v3 == 0;
  if (!v4 || v3)
  {
    goto LABEL_20;
  }

  do
  {
    v6 = v4->_parentViewController;
    v7 = v6;
    if (v6)
    {
      v8 = v4;
      v4 = v6;
      goto LABEL_13;
    }

    v8 = [(UIViewController *)v4 _parentModalViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      v10 = [(UIViewController *)v9 localViewController];
LABEL_11:
      v14 = v10;

      v4 = v9;
      v9 = v14;
      goto LABEL_12;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v12 = v8;
    v9 = v12;
    if (isKindOfClass)
    {
      if (v12)
      {
        isa = v12[1].super.super.isa;
      }

      else
      {
        isa = 0;
      }

      v10 = isa;
      goto LABEL_11;
    }

LABEL_12:

    v4 = v9;
LABEL_13:

    v15 = [(UIViewController *)v4 _extensionContextUUID];
    v5 = v15 == 0;
    if (v15)
    {
      v16 = 1;
    }

    else
    {
      v16 = v4 == 0;
    }
  }

  while (!v16);
  v3 = v15;
LABEL_20:
  if (v5)
  {
    v17 = 0;
  }

  else
  {
    v18 = [MEMORY[0x1E696B0F8] _sharedExtensionContextVendor];
    v17 = [v18 _extensionContextForUUID:v3];
  }

  return v17;
}

- (void)_willExitAlwaysOn
{
  v2 = [(UIViewController *)self _childViewControllersForAlwaysOnTimelines];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_47_2];
}

- (UIFocusEnvironment)parentFocusEnvironment
{
  v3 = [(UIViewController *)self _existingView];
  v4 = [v3 superview];

  if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_LinkCheckViewControllerParentFocusEnvironment, @"LinkCheckViewControllerParentFocusEnvironment", _UIInternalPreferenceUpdateInteger) & 1) == 0 && qword_1ED48AC98)
  {
    if (qword_1ED48AC98 > 0)
    {
      goto LABEL_13;
    }
  }

  else if (dyld_program_sdk_at_least())
  {
    goto LABEL_13;
  }

  if (!v4)
  {
    v5 = [(UIViewController *)self parentViewController];
    v6 = [v5 _existingView];
    v7 = v6;
    v8 = v6 ? v6 : v5;
    v4 = v8;

    if (!v4)
    {
      v9 = [(UIViewController *)self presentingViewController];
      v10 = [v9 _existingView];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = v9;
      }

      v4 = v12;
    }
  }

LABEL_13:

  return v4;
}

- (id)_nextViewController
{
  v3 = [(UIViewController *)&self->super.super.isa _parentViewController];
  if (!v3)
  {
    v4 = [(UIViewController *)self _popoverController];
    v3 = [v4 _managingSplitViewController];
  }

  return v3;
}

- (id)_overridingPreferredFocusEnvironment
{
  v16[1] = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__59;
  v14 = __Block_byref_object_dispose__59;
  v15 = 0;
  v16[0] = self;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__UIViewController__overridingPreferredFocusEnvironment__block_invoke;
  v9[3] = &unk_1E7104420;
  v9[4] = self;
  v9[5] = &v10;
  _UITreeBreadthFirstTraversal(v3, sel___potentialOverridingFocusEnvironments, v9);

  v4 = v11[5];
  if (!v4)
  {
    v5 = [(UIViewController *)self _retrievePresentingFocusedItemOrRemoveIfNotFocusable];
    v6 = v11[5];
    v11[5] = v5;

    v4 = v11[5];
  }

  v7 = v4;
  _Block_object_dispose(&v10, 8);

  return v7;
}

uint64_t __56__UIViewController__overridingPreferredFocusEnvironment__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 presentedViewController];
  v7 = [v6 activePresentationController];

  if ([v7 presented])
  {
    if (([v7 _isPresentedInFullScreen] & 1) != 0 || (objc_msgSend(v7, "presentingViewController"), v8 = objc_claimAutoreleasedReturnValue(), v9 = *(a1 + 32), v8, v8 == v9))
    {
      if (([v7 _allowsFocusInPresentingViewController] & 1) == 0)
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
        *a3 = 1;
      }
    }
  }

  else
  {
    v10 = [(UIViewController *)v5 _retrievePresentingFocusedItemOrRemoveIfNotFocusable];
    if (v10)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v10);
      *a3 = 1;
    }
  }

  return 1;
}

- (id)_retrievePresentingFocusedItemOrRemoveIfNotFocusable
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 _presentingFocusedItem];
    v3 = [v1 _existingView];
    v4 = [v3 _window];

    if (!v4 || !v2)
    {
      goto LABEL_20;
    }

    v5 = [v1 presentedViewController];
    v6 = [v5 activePresentationController];

    v7 = [v1 _focusSystem];
    v8 = [v7 focusedItem];

    if (v6)
    {
      if (v8)
      {
        if ([v6 _allowsFocusInPresentingViewController])
        {
          if (_UIFocusEnvironmentIsAncestorOfEnvironment(v1, v8))
          {
            v9 = [v6 presentedViewController];
            IsAncestorOfEnvironment = _UIFocusEnvironmentIsAncestorOfEnvironment(v9, v8);

            if (!IsAncestorOfEnvironment)
            {
              [v1 _setPresentingFocusedItem:v8];

              v1 = 0;
              goto LABEL_21;
            }
          }
        }
      }
    }

    v2 = v2;
    if (dyld_program_sdk_at_least())
    {
      v11 = [v1 _canRestoreFocusAfterTransitionToItem:v2];

      if (v11)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    if ([v1 restoresFocusAfterTransition])
    {
      v12 = [v1 view];
      if (_UIFocusEnvironmentIsAncestorOfEnvironment(v12, v2))
      {
        IsFocusedOrFocusable = _UIFocusItemIsFocusedOrFocusable(v2);

        if (IsFocusedOrFocusable)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

LABEL_18:
    [v1 _setPresentingFocusedItem:0];
    v2 = 0;
LABEL_19:

LABEL_20:
    v2 = v2;
    v1 = v2;
LABEL_21:
  }

  return v1;
}

- (UIFocusItem)_presentingFocusedItem
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingFocusedItem);

  return WeakRetained;
}

- (id)__potentialOverridingFocusEnvironments
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(UIViewController *)self presentedViewController];
  v5 = [v4 activePresentationController];

  if ([v5 presented])
  {
    v6 = [v5 presentedViewController];
    [v3 addObject:v6];
  }

  v7 = [(UIViewController *)self _childViewControllersEligibleForOverridingPreferredFocusEnvironments];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 _existingView];
        v14 = [v13 _window];

        if (v14)
        {
          [v3 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v3;
}

- (void)updateFocusIfNeeded
{
  v2 = [(UIViewController *)self _focusSystem];
  [v2 updateFocusIfNeeded];
}

- (NSArray)preferredFocusEnvironments
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(UIViewController *)self preferredFocusedView];
  v3 = v2;
  if (v2)
  {
    v6[0] = v2;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (UIView)preferredFocusedView
{
  v3 = [(UIViewController *)self preferredFocusedItem];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(UIViewController *)self _existingView];
  }

  v6 = v5;

  return v6;
}

- (UIView)preferredFocusedItem
{
  WeakRetained = objc_loadWeakRetained(&self->_preferredFocusedItem);

  return WeakRetained;
}

- (BOOL)_shouldIgnoreChildFocusRegions
{
  v3 = [(UIViewController *)self _focusBehavior];
  v4 = [v3 supportsViewTransparency];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(UIViewController *)self presentedViewController];

    if (v6)
    {
      v7 = [(UIViewController *)self presentedViewController];
      v8 = [v7 popoverPresentationController];
      v9 = [v8 _allowsFocusInPresentingViewController];

      v5 = v9 ^ 1;
    }

    else
    {
      v5 = 0;
    }

    v10 = [(UIViewController *)self presentingViewController];
    v11 = [v10 _presentationController];

    if (v11)
    {
      v5 |= [v11 presented] ^ 1;
    }
  }

  return v5 & 1;
}

- (UIFocusItemContainer)focusItemContainer
{
  v2 = [(UIViewController *)self _existingView];
  v3 = [v2 superview];

  return v3;
}

- (void)_endDelayingPresentation
{
  if ([(UIViewController *)self _isDelayingPresentation])
  {
    v12 = objc_getAssociatedObject(self, &unk_1ED498593);
    if (![v12 decrementRequestCount])
    {
      v3 = self;
      if (v12)
      {
        v4 = *(v12 + 6);
        if (v4)
        {
          dispatch_source_cancel(v4);
          v5 = v12;
          if ((*(v12 + 8) & 1) == 0)
          {
            v6 = [v12 delayingController];
            v7 = objc_opt_class();
            v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Finishing delayed presentation of <%s: %p>", class_getName(v7), v6];
            v9 = [v12 windowSceneIgnoringEvents];
            [v9 _endIgnoringInteractionEventsForReason:v8];

            [v12 setWindowSceneIgnoringEvents:0];
            v5 = v12;
          }

          v10 = v5[3];
          v11 = [v10 target];
          objc_setAssociatedObject(v11, &unk_1ED498592, 0, 1);

          objc_setAssociatedObject(v3, &unk_1ED498593, 0, 1);
          [v10 invoke];
        }

        else
        {
          objc_setAssociatedObject(v3, &unk_1ED498593, 0, 1);
        }
      }
    }
  }
}

- (void)_prepareForWindowDealloc
{
  v14 = *MEMORY[0x1E69E9840];
  [(UIPresentationController *)self->_presentationController _prepareForWindowDeallocRecursively:1];
  presentationController = self->_presentationController;
  self->_presentationController = 0;

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = self->_childModalViewControllers;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        [*(*(&v9 + 1) + 8 * v8++) setParentModalViewController:{0, v9}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_childModalViewControllers removeAllObjects];
}

- (void)_intelligenceCollectContentIn:(CGRect)a3 collector:(id)a4
{
  v5 = sub_18A4A3BA8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69DBBC0], v5, v7);
  v10 = a4;
  sub_18A4A3418();

  (*(v6 + 8))(v9, v5);
}

- (void)_intelligenceCollectSubelementsIn:(CGRect)a3 using:(id)a4 transformToRoot:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = _Block_copy(a5);
  v14[2] = v11;
  v12 = a4;
  v13 = self;
  UIViewController._intelligenceCollectSubelements(in:using:transformToRoot:)(v12, sub_188DE7D34, v14, x, y, width, height);
  _Block_release(v11);
}

- (id)_visualStyleOfContainingAlertController
{
  v2 = [(UIViewController *)self parentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 _visualStyle];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_nextResponderUsingTraversalStrategy:(unint64_t)a3
{
  if (a3 == 2)
  {
    v6 = [(UIViewController *)self parentViewController];
    v7 = v6;
    if (v6)
    {
      v15 = 0;
      v5 = [v6 _nextResponderUsingTargetActionStrategyFromChildViewController:self didTraverseToParentViewController:&v15];
      if (v15 == 1)
      {
        v8 = [v7 presentedViewController];
        if (v8)
        {
          v9 = v8;
          v10 = [v7 performsActionsWhilePresentingModally];

          if ((v10 & 1) == 0)
          {
            v11 = __84__UIViewController_UIResponderChainTraversal___nextResponderUsingTraversalStrategy___block_invoke(v7);

            v5 = v11;
          }
        }
      }
    }

    else
    {
      v5 = __84__UIViewController_UIResponderChainTraversal___nextResponderUsingTraversalStrategy___block_invoke(self);
    }
  }

  else if (a3)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"UIResponder+UIResponderChainTraversal.m" lineNumber:246 description:{@"Invalid call to %s with strategy: %u", "-[UIViewController(UIResponderChainTraversal) _nextResponderUsingTraversalStrategy:]", a3}];

    v5 = 0;
  }

  else
  {
    v5 = [(UIViewController *)self nextResponder];
  }

  return v5;
}

id __84__UIViewController_UIResponderChainTraversal___nextResponderUsingTraversalStrategy___block_invoke(void *a1)
{
  v1 = a1;
  v2 = [v1 presentingViewController];
  if (v2)
  {
    while (1)
    {
      v3 = v2;
      if ([v2 performsActionsWhilePresentingModally])
      {
        break;
      }

      v2 = [v3 presentingViewController];
      v1 = v3;
      if (!v2)
      {
        v1 = v3;
        v3 = 0;
        break;
      }
    }
  }

  v4 = [v1 nextResponder];

  return v4;
}

- (BOOL)_hasDeepestPresentedActionResponderOrBlock:(id)a3
{
  v4 = a3;
  if (dyld_program_sdk_at_least() && (-[UIViewController presentedViewController](self, "presentedViewController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 _hasDeepestActionResponder], v5, (v6 & 1) != 0))
  {
    v7 = 1;
  }

  else
  {
    v7 = v4[2](v4);
  }

  return v7;
}

- (id)_deepestPresentedActionResponderOrBlock:(id)a3
{
  v4 = a3;
  v5 = [(UIViewController *)self presentedViewController];
  v6 = [v5 _hasDeepestActionResponder];

  if (v6)
  {
    v7 = [(UIViewController *)self presentedViewController];
    v8 = [v7 _deepestActionResponder];
  }

  else
  {
    v8 = v4[2](v4);
  }

  return v8;
}

- (id)_nextResponderUsingTargetActionStrategyFromChildViewController:(id)a3 didTraverseToParentViewController:(BOOL *)a4
{
  if (a4)
  {
    *a4 = 1;
  }

  return [a3 nextResponder];
}

- (_UIActionSheetPresentationController)actionSheetPresentationController
{
  v2 = [(UIViewController *)self popoverPresentationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 setCanOverlapSourceViewRect:1];
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CGSize)_resolvedPreferredContentSize
{
  [(UIViewController *)self preferredContentSize];
  v5 = v4;
  v6 = v3;
  if (v4 <= 0.0 || v3 <= 0.0)
  {
    [(UIViewController *)self contentSizeForViewInPopover];
    if (v8 <= 0.0 || v8 == 1100.0 || v7 <= 0.0)
    {
      v9 = [(UIViewController *)self parentViewController];

      if (v9)
      {
        v10 = [(UIViewController *)self parentViewController];
        [v10 _resolvedPreferredContentSize];
        v5 = v11;
        v6 = v12;
      }

      else
      {
        if (v5 <= 0.0)
        {
          v5 = 320.0;
        }

        if (v6 <= 0.0)
        {
          v6 = 480.0;
        }
      }
    }

    else
    {
      v6 = v8;
      v5 = v7;
    }
  }

  v13 = v5;
  v14 = v6;
  result.height = v14;
  result.width = v13;
  return result;
}

- (id)_presentationControllerClassName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)_primitiveSetNavigationControllerContentInsetAdjustment:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = [(UIViewController *)self navigationInsetAdjustment];
  [v7 setInsetAdjustment:{top, left, bottom, right}];
}

- (void)_setNavigationControllerContentInsetAdjustment:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v24 = [(UIViewController *)self _contentOrObservableScrollViewForEdge:1];
  v8 = [(UIViewController *)self navigationInsetAdjustment];
  [v8 insetAdjustment];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v19 = v12 == left && v10 == top && v16 == right && v14 == bottom;
  if (!v19 && [v24 _compatibleContentInsetAdjustmentBehavior] == 101)
  {
    v20 = [(UIViewController *)self navigationInsetAdjustment];
    [v20 setInsetAdjustment:{top, left, bottom, right}];

    v21 = [v24 _viewControllerForAncestor];
    v22 = v21;
    if (!v21 || v21 == self)
    {
      if (v24)
      {
        _UIScrollViewAdjustForOverlayInsetsChangeIfNecessary(v24, 1, top, left, bottom, right, v10, v12, v14, v16);
        v23 = [(UIViewController *)self navigationInsetAdjustment];
        [v23 setAdjustedScrollView:v24];
      }
    }

    else
    {
      [(UIViewController *)v21 _setNavigationControllerContentInsetAdjustment:top, left, bottom, right];
    }
  }
}

- (void)_setNavigationControllerContentOffsetAdjustment:(double)a3
{
  if (self->_navigationControllerContentOffsetAdjustment != a3)
  {
    v5 = [(UIViewController *)self _contentOrObservableScrollViewForEdge:1];
    if (v5)
    {
      v6 = v5;
      [v5 contentOffset];
      [v6 setContentOffset:?];
      v5 = v6;
    }

    self->_navigationControllerContentOffsetAdjustment = a3;
  }
}

- (void)setAdditionalSafeAreaInsets:(UIEdgeInsets)additionalSafeAreaInsets
{
  v3.f64[0] = additionalSafeAreaInsets.top;
  v3.f64[1] = additionalSafeAreaInsets.left;
  v4.f64[0] = additionalSafeAreaInsets.bottom;
  v4.f64[1] = additionalSafeAreaInsets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_additionalSafeAreaInsets.top), vceqq_f64(v4, *&self->_additionalSafeAreaInsets.bottom)))) & 1) == 0)
  {
    self->_additionalSafeAreaInsets = additionalSafeAreaInsets;
    [(UIViewController *)self _updateContentOverlayInsetsForSelfAndChildren];
  }
}

- (void)_updateViewSafeAreaInsetsAndEagerlyUpdateContentScrollView:(double *)a1
{
  v37 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [a1 view];
    if ([v2 _safeAreaInsetsFrozen])
    {
LABEL_24:

      return;
    }

    [v2 setSafeAreaInsets:{a1[112], a1[113], a1[114], a1[115]}];
    v3 = a1;
    v4 = [v3 parentViewController];
    v31 = v4;
    if (!v4)
    {
      goto LABEL_13;
    }

    v5 = v4;
    v6 = [v3 navigationController];

    if (v6 != v5)
    {
      v7 = [v3 navigationController];
      v8 = [v7 _nestedTopViewController];
      v9 = [v8 navigationItem];
      v10 = [v9 _searchControllerIfAllowed];

      if (!v10)
      {
        goto LABEL_13;
      }

      v11 = (v10[279] >> 5) & 3;
      if (!v11)
      {
        v12 = dyld_program_sdk_at_least();
        v11 = 2;
        if (!v12)
        {
          v11 = 3;
        }
      }

      v13 = v11 == 2 ? v10 : v6;

      if (v5 != v13)
      {
LABEL_13:
        v14 = 0;
LABEL_14:

        if (v14)
        {
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v33;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v33 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                [(UIView *)v2 _eagerlyUpdateSafeAreaInsetsToDescendant:?];
              }

              v17 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
            }

            while (v17);
          }
        }

        goto LABEL_24;
      }
    }

    v20 = 0;
    v14 = 0;
    v21 = 1;
    while (1)
    {
      v22 = v21;
      v23 = [v3 _contentOrObservableScrollViewForEdge:*(&xmmword_18A679310 + v20)];
      v24 = v23;
      if (v23 && v14 == 0)
      {
        break;
      }

      if (v23)
      {
        goto LABEL_34;
      }

LABEL_42:

      v21 = 0;
      v20 = 1;
      if ((v22 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v14 = [MEMORY[0x1E695DF70] array];
LABEL_34:
    if (([v14 containsObject:v24] & 1) == 0)
    {
      [v14 addObject:v24];
    }

    v26 = [v24 _viewControllerForAncestor];
    v27 = v26;
    if (v26 == v3 || ([v26 navigationController], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "navigationController"), v29 = objc_claimAutoreleasedReturnValue(), v29, v28, v28 == v29))
    {
      if (v27)
      {
        v30 = [v27 automaticallyAdjustsScrollViewInsets];
      }

      else
      {
        v30 = 0;
      }

      [v24 _setApplyVerticalSafeAreaInsetsToNonscrollingContent:v30];
    }

    goto LABEL_42;
  }
}

- (void)_eagerlyUpdateSafeAreaInsetsToViewDescendant:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIViewController *)self _existingView];
  v6 = [v4 isDescendantOfView:v5];

  if (v6)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v8 = [(UIViewController *)self view];
    v9 = v4;
    v10 = v9;
    while (v10 && v10 != v8)
    {
      v11 = v10;
      [v7 insertObject:v10 atIndex:0];
      v10 = [v10 superview];
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v19 + 1) + 8 * i);
          v18 = [(UIView *)v17 __viewDelegate];
          [v18 _updateContentOverlayInsetsFromParentIfNecessary];
          [v17 _updateSafeAreaInsets];
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }
  }
}

- (void)_setContentOverlayInsets:(UIEdgeInsets)a3 andLeftMargin:(double)a4 rightMargin:(double)a5
{
  right = a3.right;
  left = a3.left;
  top = a3.top;
  bottom = a3.bottom;
  v10 = [(UIViewController *)self _existingView];
  v62 = v10;
  if (v10)
  {
    UIRoundToViewScale(v10);
    top = v11;
    UIRoundToViewScale(v62);
    left = v12;
    UIRoundToViewScale(v62);
    bottom = v13;
    UIRoundToViewScale(v62);
    v10 = v62;
    right = v14;
  }

  v15 = [v10 _isRenderedHorizontallyFlipped];
  v16 = [v62 superview];
  v17 = v15 ^ [v16 _isRenderedHorizontallyFlipped];

  if (v17)
  {
    *&v18 = left;
  }

  else
  {
    *&v18 = right;
  }

  if (v17)
  {
    v19 = right;
  }

  else
  {
    v19 = left;
  }

  v20 = *&self->_contentOverlayInsets.top;
  v21 = *&self->_contentOverlayInsets.bottom;
  v22.f64[0] = top;
  v54 = v19;
  v55 = v18;
  v22.f64[1] = v19;
  v23.f64[0] = bottom;
  *&v23.f64[1] = v18;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v22, v20), vceqq_f64(v23, v21)))) & 1) == 0 || self->_leftContentMargin != a4 || self->_rightContentMargin != a5 || ((view = self->_view) == 0 ? (v26 = 0uLL, v27 = 0uLL) : (p_safeAreaInsets = &view->_safeAreaInsets, v26 = *p_safeAreaInsets, v27 = p_safeAreaInsets[1]), (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v26, v20), vceqq_f64(v27, v21)))))))
  {
    if (a4 == -1.79769313e308)
    {
      [(UIViewController *)self _viewSafeAreaInsetsFromScene];
      v53 = fmax(v28, 0.0);
    }

    else
    {
      v53 = v54;
      v54 = a4;
    }

    if (a5 == -1.79769313e308)
    {
      [(UIViewController *)self _viewSafeAreaInsetsFromScene];
      v31 = [(UIViewController *)self ignoresParentMargins:fmax(v29];
    }

    else
    {
      v52 = v55;
      *&v55 = a5;
      v31 = [(UIViewController *)self ignoresParentMargins];
    }

    if (v62)
    {
      if (v31)
      {
        [objc_opt_class() _horizontalContentMarginForView:v62];
        *&v55 = v32;
        v54 = v32;
      }

      else
      {
        UIRoundToViewScale(v62);
        v54 = v38;
        UIRoundToViewScale(v62);
        *&v55 = v39;
      }

      v33 = top;
      v40.f64[0] = top;
      v40.f64[1] = v53;
      v34 = bottom;
      v41.f64[0] = bottom;
      v41.f64[1] = v51;
      if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentOverlayInsets.top, v40), vceqq_f64(*&self->_contentOverlayInsets.bottom, v41)))))
      {
LABEL_30:
        v57 = v33;
        v60 = v34;
        [(UIViewController *)self _setContentOverlayInsets:?];
        [v62 _setViewDelegateContentOverlayInsetsAreClean:1];
        self->_leftContentMargin = v54;
        *&self->_rightContentMargin = v55;
        [(NSLayoutConstraint *)self->_topBarInsetGuideConstraint setConstant:v57];
        [(NSLayoutConstraint *)self->_bottomBarInsetGuideConstraint setConstant:v60];
        v58 = *&self->_systemMinimumLayoutMargins.bottom;
        v61 = *&self->_systemMinimumLayoutMargins.top;
        v42 = [v62 _shouldReverseLayoutDirection];
        if (v42)
        {
          v43 = 536;
        }

        else
        {
          v43 = 528;
        }

        if (v42)
        {
          v44 = 528;
        }

        else
        {
          v44 = 536;
        }

        v45 = *(&self->super.super.isa + v44);
        v46 = *(&self->super.super.isa + v43);
        self->_systemMinimumLayoutMargins.top = 0.0;
        self->_systemMinimumLayoutMargins.leading = v46;
        self->_systemMinimumLayoutMargins.bottom = 0.0;
        self->_systemMinimumLayoutMargins.trailing = v45;
        [UIViewController _updateViewSafeAreaInsetsAndEagerlyUpdateContentScrollView:?];
        if ([(UIViewController *)self viewRespectsSystemMinimumLayoutMargins]&& (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v61, *&self->_systemMinimumLayoutMargins.top), vceqq_f64(v58, *&self->_systemMinimumLayoutMargins.bottom)))) & 1) == 0)
        {
          [v62 _updateInferredLayoutMargins];
        }

        goto LABEL_39;
      }

      v36 = [v62 window];
      [v36 _noteOverlayInsetsDidChange];
    }

    else
    {
      v33 = top;
      v34 = bottom;
      if (!v31)
      {
        goto LABEL_30;
      }

      v35 = objc_opt_class();
      v36 = [(UIViewController *)self traitCollection];
      [v35 _slimHorizontalContentMarginForTraitCollection:v36];
      *&v55 = v37;
      v54 = v37;
    }

    v33 = top;
    v34 = bottom;
    goto LABEL_30;
  }

LABEL_39:
  v47 = v62;
  if (v62)
  {
    v48 = dyld_program_sdk_at_least();
    v47 = v62;
    if ((v48 & 1) == 0)
    {
      leftContentMargin = self->_leftContentMargin;
      rightContentMargin = self->_rightContentMargin;
      if (objc_opt_respondsToSelector())
      {
        [v62 _setDefaultLayoutMargins:{0.0, leftContentMargin, 0.0, rightContentMargin}];
      }

      else
      {
        [v62 setLayoutMargins:{0.0, leftContentMargin, 0.0, rightContentMargin}];
      }

      v47 = v62;
    }
  }
}

- (void)_invalidateChildContentOverlayInsetsWithOldInsets:(__n128)a3
{
  v15 = a3;
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = [(float64x2_t *)a1 _existingView];
    [v6 _setViewDelegateContentOverlayInsetsAreClean:1];

    v7.f64[0] = a2;
    *&v7.f64[1] = v15.n128_u64[0];
    v8.f64[0] = a4;
    v8.f64[1] = a5;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v7, a1[56]), vceqq_f64(v8, a1[57])))) & 1) == 0)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = [(float64x2_t *)a1 childViewControllers];
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [*(*(&v19 + 1) + 8 * i) _existingView];
            [v14 _setViewDelegateContentOverlayInsetsAreClean:0];
          }

          v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v11);
      }
    }
  }
}

- (void)_prepareForNavigationTransition:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v5 = self->_view;
  v6 = v5;
  if (v5)
  {
    v7 = [(UIView *)v5 window];

    if (v7)
    {
      [(UIView *)v6 _updateTraitsIfNeededWithBehavior:?];
      if (v3)
      {
        [(UIViewController *)self __viewIsAppearing:1 skipWindowCheck:?];
      }

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = [(UIViewController *)self childViewControllers];
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

            v13 = *(*(&v16 + 1) + 8 * v12);
            if ([(UIViewController *)self _isNestedNavigationController])
            {
              v14 = [(UIViewController *)self topViewController];
              v15 = v14 == v13;
            }

            else
            {
              v15 = 0;
            }

            [v13 _prepareForNavigationTransition:v15];
            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }
    }
  }
}

- (void)__viewIsAppearing:(char)a3 skipWindowCheck:
{
  if (a1)
  {
    v5 = *(a1 + 376);
    if (v5 & 0x40000000000000) == 0 || (a3)
    {
      if ((v5 & 0x40000000000000) == 0)
      {
        return;
      }
    }

    else
    {
      v6 = [*(a1 + 24) window];

      if (!v6)
      {
        return;
      }

      v5 = *(a1 + 376);
    }

    *(a1 + 376) = v5 & 0xFFBFFFFFFFFFFFFFLL;
    if ((v5 & 0x4000000) == 0)
    {
      v7 = _UISetCurrentFallbackEnvironment(a1);
      v8 = *(a1 + 376);
      if (dyld_program_sdk_at_least())
      {
        *(a1 + 376) |= 0x80000000000000uLL;
      }

      [(UIViewController *)a1 _executeViewIsAppearingBlock:a2];
      [a1 viewIsAppearing:a2];
      *(a1 + 376) = *(a1 + 376) & 0xFF7FFFFFFFFFFFFFLL | (((v8 >> 55) & 1) << 55);

      _UIRestorePreviousFallbackEnvironment(v7);
    }
  }
}

- (void)_updateContentOverlayInsetsFromParentForNavigationTransitionWithFinalRectInParent:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(UIViewController *)&self->super.super.isa _parentViewController];
  v16 = v9;
  if (!v9)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:1338 description:@"Unexpected transition state"];

    v9 = 0;
  }

  top = self->_contentOverlayInsets.top;
  left = self->_contentOverlayInsets.left;
  bottom = self->_contentOverlayInsets.bottom;
  right = self->_contentOverlayInsets.right;
  if ([(UIViewController *)self __updateContentOverlayInsetsWithOurRect:v9 inBoundsOfAncestorViewController:self viaImmediateChildOfAncestor:x, y, width, height])
  {
    v14.n128_f64[0] = left;
    [(UIViewController *)self _invalidateChildContentOverlayInsetsWithOldInsets:v14, bottom, right];
  }
}

- (uint64_t)__updateContentOverlayInsetsWithOurRect:(void *)a3 inBoundsOfAncestorViewController:(CGFloat)x viaImmediateChildOfAncestor:(CGFloat)y
{
  v13 = a2;
  v14 = a3;
  if (a1)
  {
    v15 = [a1 _existingView];
    v16 = [v13 _existingView];
    v17 = [v16 window];
    v18 = [v15 window];

    if (v17 == v18)
    {
      v20 = [a1 _existingPresentationControllerImmediate:1 effective:1];
      v21 = [a1 _existingView];
      v22 = [v13 _existingView];
      if (v20)
      {
        v162[0] = 0.0;
        [v20 _baseContentInsetsWithLeftMargin:v162 rightMargin:0];
        [a1 _setContentMargin:v162[0]];
      }

      else
      {
        v23 = [a1 parentViewController];
        [v23 _contentMarginForChildViewController:a1];
        [a1 _setContentMargin:?];
      }

      if ([objc_opt_class() _directlySetsContentOverlayInsetsForChildren])
      {
        goto LABEL_11;
      }

      v24 = [v21 window];
      if (!v24)
      {
        goto LABEL_11;
      }

      v25 = v24;
      v19 = [v22 window];

      if (!v19)
      {
LABEL_12:

        goto LABEL_13;
      }

      v26 = [v21 _window];
      v27 = [v22 _window];

      if (v26 != v27)
      {
LABEL_11:
        LOBYTE(v19) = 0;
        goto LABEL_12;
      }

      v161 = 0;
      [v13 _edgeInsetsForChildViewController:v14 insetsAreAbsolute:&v161];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
      if (v161 == 1)
      {
        v162[0] = 0.0;
        v160 = 0.0;
        [v13 _marginInfoForChild:v14 leftMargin:v162 rightMargin:&v160];
        if (v162[0] == -1.79769313e308)
        {
          [a1 _viewSafeAreaInsetsFromScene];
          v38 = fmax(v37, 0.0);
        }

        else
        {
          v38 = v32;
          v32 = v162[0];
        }

        v162[0] = v32;
        if (v160 == -1.79769313e308)
        {
          [a1 _viewSafeAreaInsetsFromScene];
          v85 = fmax(v84, 0.0);
        }

        else
        {
          v85 = v36;
          v36 = v160;
        }

        v160 = v36;
        [a1 additionalSafeAreaInsets];
        [a1 _setContentOverlayInsets:fmax(v30 + v86 andLeftMargin:0.0) rightMargin:{fmax(v38 + v87, 0.0), fmax(v34 + v88, 0.0), fmax(v85 + v89, 0.0), v162[0], v160}];
        LOBYTE(v19) = 1;
        goto LABEL_12;
      }

      [a1 additionalSafeAreaInsets];
      v40 = v30 + v39;
      v42 = v32 + v41;
      v143 = v34 + v43;
      v45 = v36 + v44;
      [v22 bounds];
      v138 = v48;
      v139 = v49;
      rect.origin.x = *MEMORY[0x1E695EFF8];
      if (v46 == *MEMORY[0x1E695EFF8] && v47 == *(MEMORY[0x1E695EFF8] + 8))
      {
        rect.origin.x = v46;
      }

      else
      {
        v50 = -v46;
        v51 = -v47;
        v163.origin.x = x;
        v163.origin.y = y;
        v52 = v42;
        v53 = v45;
        v54 = v40;
        v55 = *(MEMORY[0x1E695EFF8] + 8);
        v163.size.width = width;
        v163.size.height = height;
        v164 = CGRectOffset(v163, v50, v51);
        x = v164.origin.x;
        y = v164.origin.y;
        width = v164.size.width;
        v47 = v55;
        v40 = v54;
        v45 = v53;
        v42 = v52;
        height = v164.size.height;
      }

      v140 = fmax(v40, 0.0);
      v141 = fmax(v143, 0.0);
      v142 = fmax(v42, 0.0);
      v144 = fmax(v45, 0.0);
      v56 = v47;
      if (qword_1ED4985B0 != -1)
      {
        dispatch_once(&qword_1ED4985B0, &__block_literal_global_166);
      }

      v57 = byte_1ED498594;
      *&rect.origin.y = MEMORY[0x1E69E9820];
      *&rect.size.width = 3221225472;
      *&rect.size.height = __121__UIViewController___updateContentOverlayInsetsWithOurRect_inBoundsOfAncestorViewController_viaImmediateChildOfAncestor___block_invoke;
      v146 = &unk_1E7104028;
      v147 = v20;
      v148 = a1;
      v58 = v21;
      v149 = v58;
      v59 = v13;
      v150 = v59;
      v159 = v57;
      v151 = x;
      v152 = y;
      v153 = width;
      v154 = height;
      v155 = rect.origin.x;
      v156 = v56;
      v157 = v138;
      v158 = v139;
      v137 = _Block_copy(&rect.origin.y);
      v60 = [v22 _screen];
      [v60 scale];
      v62 = -0.5 / v61;
      if (v62 == 0.0)
      {
        v63 = 1.0;
      }

      else
      {
        v63 = v62;
      }

      v165.origin.x = rect.origin.x;
      v133 = v56;
      v165.origin.y = v56;
      v165.size.width = v138;
      v165.size.height = v139;
      v166 = CGRectInset(v165, v63, v63);
      v64 = v166.origin.x;
      v65 = v166.origin.y;
      v66 = v166.size.width;
      v67 = v166.size.height;
      v68 = fmin(v141, a1[114]);
      v69 = fmin(v144, a1[115]);
      v70 = fmin(v142, a1[113]) != v142;
      if (fmin(v140, a1[112]) != v140)
      {
        v70 = 1;
      }

      if (v69 != v144)
      {
        v70 = 1;
      }

      if (v68 != v141)
      {
        v70 = 1;
      }

      v136 = v70;
      v71 = v66;
      v72 = v67;
      v193.origin.x = x;
      v193.origin.y = y;
      v193.size.width = width;
      v193.size.height = height;
      if (!CGRectIntersectsRect(v166, v193) && !v57)
      {
        if (v136)
        {
          v73 = v137;
          (*(v137 + 2))(v137, 0, v140, v142, v141, v144);
          LOBYTE(v19) = 1;
        }

        else
        {
          LOBYTE(v19) = 0;
          v73 = v137;
        }

        goto LABEL_85;
      }

      v128 = a1[112];
      v131 = a1[113];
      v124 = a1[114];
      v126 = *(a1 + 115);
      [v59 _contentOverlayInsets];
      v122 = v74;
      v123 = v75;
      v120 = v76;
      v121 = v77;
      v134 = v64;
      v167.origin.x = v64;
      v167.origin.y = v65;
      v167.size.width = v66;
      v167.size.height = v67;
      v194.origin.x = x;
      v194.origin.y = y;
      v194.size.width = width;
      v194.size.height = height;
      if (CGRectContainsRect(v167, v194))
      {
        v78 = 1;
        v79 = 1;
        v80 = v57;
        LOBYTE(v57) = 1;
        v81 = v122;
        v82 = v123;
        v83 = v131;
      }

      else
      {
        v168.origin.x = x;
        v168.origin.y = y;
        v168.size.width = width;
        v168.size.height = height;
        MinY = CGRectGetMinY(v168);
        v169.origin.x = v134;
        v169.origin.y = v65;
        v169.size.width = v66;
        v169.size.height = v67;
        if (MinY <= CGRectGetMinY(v169))
        {
          v119 = 0;
        }

        else
        {
          v170.origin.x = x;
          v170.origin.y = y;
          v170.size.width = width;
          v170.size.height = height;
          v91 = CGRectGetMinY(v170);
          v171.origin.x = v134;
          v171.origin.y = v65;
          v171.size.width = v66;
          v171.size.height = v67;
          v119 = v91 < CGRectGetMaxY(v171);
        }

        v172.origin.x = x;
        v172.origin.y = y;
        v172.size.width = width;
        v172.size.height = height;
        MinX = CGRectGetMinX(v172);
        v173.origin.x = v134;
        v173.origin.y = v65;
        v173.size.width = v66;
        v173.size.height = v67;
        if (MinX <= CGRectGetMinX(v173))
        {
          v118 = 0;
        }

        else
        {
          v174.origin.x = x;
          v174.origin.y = y;
          v174.size.width = width;
          v174.size.height = height;
          v93 = CGRectGetMinX(v174);
          v175.origin.x = v134;
          v175.origin.y = v65;
          v175.size.width = v66;
          v175.size.height = v67;
          v118 = v93 < CGRectGetMaxX(v175);
        }

        v176.origin.x = x;
        v176.origin.y = y;
        v176.size.width = width;
        v176.size.height = height;
        MaxY = CGRectGetMaxY(v176);
        v177.origin.x = v134;
        v177.origin.y = v65;
        v177.size.width = v66;
        v177.size.height = v67;
        if (MaxY <= CGRectGetMinY(v177))
        {
          v78 = 0;
        }

        else
        {
          v178.origin.x = x;
          v178.origin.y = y;
          v178.size.width = width;
          v178.size.height = height;
          v95 = CGRectGetMaxY(v178);
          v179.origin.x = v134;
          v179.origin.y = v65;
          v179.size.width = v66;
          v179.size.height = v67;
          v78 = v95 < CGRectGetMaxY(v179);
        }

        v180.origin.x = x;
        v180.origin.y = y;
        v180.size.width = width;
        v180.size.height = height;
        MaxX = CGRectGetMaxX(v180);
        v181.origin.x = v134;
        v181.origin.y = v65;
        v181.size.width = v66;
        v181.size.height = v67;
        if (MaxX <= CGRectGetMinX(v181))
        {
          v80 = v57;
        }

        else
        {
          v182.origin.x = x;
          v182.origin.y = y;
          v182.size.width = width;
          v182.size.height = height;
          v97 = CGRectGetMaxX(v182);
          v183.origin.x = v134;
          v183.origin.y = v65;
          v183.size.width = v66;
          v183.size.height = v67;
          v98 = CGRectGetMaxX(v183);
          v99 = v118;
          if (v97 >= v98)
          {
            v99 = 0;
          }

          v80 = v57;
          LOBYTE(v57) = v99 | v57;
        }

        v83 = v131;
        v81 = v122;
        v82 = v123;
        v79 = v119;
      }

      v135 = v80;
      v100 = v79 & v78 | v80;
      v101 = [v59 _independentContainedScrollViewIntermediateToDescendantViewController:a1];
      v103 = v101;
      if (v101)
      {
        v73 = v137;
        if (([v101 isDescendantOfView:v58] & 1) == 0)
        {
          v104 = [v103 _edgesPropagatingSafeAreaInsetsToSubviews];
          v105 = v124;
          v102.n128_u64[0] = v126;
          if ((v104 & 5) == 0)
          {
            v105 = v141;
          }

          v106 = v128;
          if ((v104 & 5) == 0)
          {
            v106 = v140;
          }

          if ((v104 & 0xA) == 0)
          {
            v102.n128_f64[0] = v144;
            v83 = v142;
          }

          v100 &= (v104 & 5) != 0;
          LOBYTE(v57) = v57 & ((v104 & 0xA) != 0);
LABEL_70:
          LOBYTE(v19) = v136 | v100 | v57;
          if ((v19 & 1) == 0)
          {
LABEL_84:

LABEL_85:
            goto LABEL_12;
          }

          if (v136)
          {
            v83 = v142;
            v102.n128_f64[0] = v144;
            v106 = v140;
            v105 = v141;
          }

          if (v100)
          {
            v127 = v102.n128_u64[0];
            v132 = v83;
            v107 = v81;
            v184.origin.x = x;
            v184.origin.y = y;
            v184.size.width = width;
            v184.size.height = height;
            v108 = fmax(v81, 0.0) - CGRectGetMinY(v184);
            v185.origin.x = rect.origin.x;
            v185.origin.y = v133;
            v185.size.width = v138;
            v185.size.height = v139;
            v109 = fmax(v82, 0.0) - CGRectGetMaxY(v185);
            v186.origin.x = x;
            v186.origin.y = y;
            v186.size.width = width;
            v186.size.height = height;
            v110 = v109 + CGRectGetMaxY(v186);
            if (v135)
            {
              v106 = v140 + fmax(fmin(v108, v107), 0.0);
              v105 = v141 + fmax(fmin(v110, v82), 0.0);
              v83 = v132;
              v102.n128_u64[0] = v127;
              if ((v57 & 1) == 0)
              {
                goto LABEL_83;
              }

              goto LABEL_79;
            }

            v106 = v140 + fmax(v108, 0.0);
            v105 = v141 + fmax(v110, 0.0);
            v83 = v132;
            v102.n128_u64[0] = v127;
            if (v57)
            {
              goto LABEL_81;
            }
          }

          else if (v57)
          {
            if (v135)
            {
LABEL_79:
              v125 = v105;
              v129 = v106;
              v187.origin.x = x;
              v187.origin.y = y;
              v187.size.width = width;
              v187.size.height = height;
              v111 = v142 + fmax(fmin(fmax(v120, 0.0) - CGRectGetMinX(v187), v120), 0.0);
              v188.origin.x = rect.origin.x;
              v188.origin.y = v133;
              v188.size.width = v138;
              v188.size.height = v139;
              v112 = fmax(v121, 0.0) - CGRectGetMaxX(v188);
              v189.origin.x = x;
              v189.origin.y = y;
              v189.size.width = width;
              v189.size.height = height;
              v113 = CGRectGetMaxX(v189);
              v105 = v125;
              v106 = v129;
              v114 = fmin(v112 + v113, v121);
LABEL_82:
              v83 = v111;
              v102.n128_f64[0] = v144 + fmax(v114, 0.0);
              goto LABEL_83;
            }

LABEL_81:
            v130 = v106;
            v190.origin.x = x;
            v190.origin.y = y;
            v190.size.width = width;
            v115 = v105;
            v190.size.height = height;
            v111 = v142 + fmax(fmax(v120, 0.0) - CGRectGetMinX(v190), 0.0);
            v191.origin.x = rect.origin.x;
            v191.origin.y = v133;
            v191.size.width = v138;
            v191.size.height = v139;
            v116 = fmax(v121, 0.0) - CGRectGetMaxX(v191);
            v192.origin.x = x;
            v192.origin.y = y;
            v192.size.width = width;
            v192.size.height = height;
            v117 = CGRectGetMaxX(v192);
            v105 = v115;
            v106 = v130;
            v114 = v116 + v117;
            goto LABEL_82;
          }

LABEL_83:
          v73[2](v73, v57 & 1, v106, v83, v105, v102);
          goto LABEL_84;
        }
      }

      else
      {
        v73 = v137;
      }

      v102.n128_u64[0] = v126;
      v106 = v128;
      v105 = v124;
      goto LABEL_70;
    }
  }

  LOBYTE(v19) = 0;
LABEL_13:

  return v19 & 1;
}

- (void)_setIgnoresWrapperViewForContentOverlayInsets:(BOOL)a3
{
  v3 = 0x8000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFF7FFFFFFFFFFFFLL | v3;
}

- (uint64_t)_getViewControllerToInheritInsetsFrom:(id *)a3 viaImmediateChild:
{
  if (!a1)
  {
    return 0;
  }

  v6 = a1[12];
  v7 = v6;
  if (v6)
  {
    if (a2)
    {
      v8 = v6;
      *a2 = v7;
    }

    if (a3)
    {
      v9 = a1;
      *a3 = a1;
    }

    v10 = 1;
  }

  else
  {
    v11 = [a1 _existingPresentationControllerImmediate:0 effective:1];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 presentingViewController];
      v10 = [(UIViewController *)v13 _getViewControllerToInheritInsetsFrom:a2 viaImmediateChild:a3];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (UIEdgeInsets)_customBasePresentationInsetsForView:(id)a3
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (id)_shim_contentScrollView
{
  if (_UIBarsApplyChromelessEverywhere())
  {
    goto LABEL_8;
  }

  if (qword_1ED4985A0 != -1)
  {
    dispatch_once(&qword_1ED4985A0, &__block_literal_global_155);
  }

  if (_MergedGlobals_154 == 1)
  {
LABEL_8:
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:1554 description:@"Unexpected code path for compatibility code only"];
  }

  return [(UIViewController *)self contentScrollView];
}

- (id)_contentOrObservableScrollViewInContainerForEdge:(void *)a1
{
  if (a1)
  {
    if (([a1 _isNavigationController] & 1) == 0 && (objc_msgSend(a1, "_isSplitViewController") & 1) == 0)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = NSStringFromSelector(sel__contentOrObservableScrollViewInContainerForEdge_);
      [v9 handleFailureInMethod:sel__contentOrObservableScrollViewInContainerForEdge_ object:a1 file:@"UIViewController.m" lineNumber:1583 description:{@"%@ supported only for UISplitViewController and UINavigationController at this time. self = %@", v10, a1}];
    }

    if (_UIViewControllerContainersShouldForwardContentScrollView_onceToken != -1)
    {
      dispatch_once(&_UIViewControllerContainersShouldForwardContentScrollView_onceToken, &__block_literal_global_2590);
    }

    if (_UIViewControllerContainersShouldForwardContentScrollView_shouldForward == 1)
    {
      v4 = [a1 contentScrollViewForEdge:a2];
      if (!v4)
      {
        v5 = [a1 _viewControllerForObservableScrollView];
        v6 = v5;
        if (!v5 || v5 == a1)
        {
          v7 = [(UIViewController *)a1 _resolveContentScrollViewForEdge:a2];
        }

        else
        {
          v7 = [v5 _contentOrObservableScrollViewForEdge:a2];
        }

        v4 = v7;
      }
    }

    else
    {
      v4 = [(UIViewController *)a1 _resolveContentScrollViewForEdge:a2];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_resolveContentScrollViewForEdge:(uint64_t)a1
{
  if (a2 != 1 && a2 != 4)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:sel__resolveContentScrollViewForEdge_ object:a1 file:@"UIViewController.m" lineNumber:5513 description:{@"Invalid parameter not satisfying: %@", @"edge == NSDirectionalRectEdgeTop || edge == NSDirectionalRectEdgeBottom"}];
  }

  v5 = *(a1 + 600);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = [a1 _defaultContentScrollViewForEdge:a2];
  }

  v7 = v6;
  v8 = [v6 _temporaryCoordinatingReplacement];

  if (v8)
  {
    v9 = [v7 _temporaryCoordinatingReplacement];

    v7 = v9;
  }

  v10 = [*(a1 + 608) objectForKey:&unk_1EFE30280];
  v11 = [*(a1 + 608) objectForKey:&unk_1EFE30298];
  v12 = v11;
  v14 = a2 == 1 && v10 != v7;
  v16 = a2 == 4 && v11 != v7;
  if (!v14 && !v16)
  {
    goto LABEL_40;
  }

  v17 = *(a1 + 608);
  if (v7)
  {
    if (!v17)
    {
      v18 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
      v19 = *(a1 + 608);
      *(a1 + 608) = v18;

      v17 = *(a1 + 608);
    }

    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    [v17 setObject:v7 forKey:v20];
  }

  else
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    [v17 removeObjectForKey:v21];

    if ([*(a1 + 608) count])
    {
      goto LABEL_29;
    }

    v20 = *(a1 + 608);
    *(a1 + 608) = 0;
  }

LABEL_29:
  if ([objc_opt_class() doesOverrideViewControllerMethod:sel__observableScrollViewDidChangeFrom_forViewController_edges_])
  {
    goto LABEL_40;
  }

  if (v14)
  {
    if (v12 != v7)
    {
      [v7 _addScrollViewScrollObserver:a1];
    }

    v22 = v10;
    if (v10 == v12)
    {
      goto LABEL_40;
    }

LABEL_39:
    [v22 _removeScrollViewScrollObserver:a1];
    goto LABEL_40;
  }

  if (v16)
  {
    if (v10 != v7)
    {
      [v7 _addScrollViewScrollObserver:a1];
    }

    v22 = v12;
    if (v12 != v10)
    {
      goto LABEL_39;
    }
  }

LABEL_40:

  return v7;
}

- (id)_contentOrObservableScrollViewForEdge:(unint64_t)a3
{
  if (self)
  {
    self = [(UIViewController *)self _resolveContentScrollViewForEdge:a3];
    v3 = vars8;
  }

  return self;
}

- (id)_defaultContentScrollViewForEdge:(unint64_t)a3
{
  if (_UIBarsApplyChromelessEverywhere())
  {
    goto LABEL_6;
  }

  if (qword_1ED4985A0 != -1)
  {
    dispatch_once(&qword_1ED4985A0, &__block_literal_global_155);
  }

  if (_MergedGlobals_154 == 1)
  {
LABEL_6:
    if (a3 != 1 && a3 != 4)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:1616 description:@"NSDirectionalRectEdgeTop and NSDirectionalRectEdgeBottom are the only valid parameters for this internal method"];
    }

    if (*(&self->_viewControllerFlags + 7))
    {
      v7 = [(UIViewController *)self _contentScrollView];
    }

    else
    {
      v7 = [(UIViewController *)self contentScrollViewForEdge:a3];
      if (!v7)
      {
        if ((*(&self->_viewControllerFlags + 7) & 2) != 0)
        {
          v7 = 0;
        }

        else
        {
          v7 = [(UIViewController *)self _contentScrollViewHeuristic];
        }
      }
    }
  }

  else
  {
    v7 = [(UIViewController *)self _shim_contentScrollView];
  }

  return v7;
}

- (id)_independentContainedScrollViewIntermediateToDescendantViewController:(id)a3
{
  v4 = a3;
  v5 = 1;
  v6 = [(UIViewController *)self _contentOrObservableScrollViewForEdge:1];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v5 = 4;
    v7 = [(UIViewController *)self _contentOrObservableScrollViewForEdge:4];
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  v8 = [v4 _existingView];
  if ([v8 isDescendantOfView:v7])
  {
    v9 = [v4 _contentOrObservableScrollViewForEdge:v5];

    if (v9 != v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v7 = 0;
LABEL_9:

  return v7;
}

uint64_t __121__UIViewController___updateContentOverlayInsetsWithOurRect_inBoundsOfAncestorViewController_viaImmediateChildOfAncestor___block_invoke(uint64_t a1, int a2, double a3, double a4, double a5, double a6)
{
  v33 = 0.0;
  v34 = 0.0;
  if (!a2)
  {
    v13 = *(a1 + 40);
    v14 = *(v13 + 528);
    v34 = v14;
    v15 = *(v13 + 536);
LABEL_12:
    v33 = v15;
    return [*(a1 + 40) _setContentOverlayInsets:a3 andLeftMargin:a4 rightMargin:{a5, a6, v14, v15, *&v33, *&v34}];
  }

  if (!*(a1 + 32))
  {
    [*(a1 + 56) _leftContentMargin];
    v17 = v16;
    [*(a1 + 56) _rightContentMargin];
    v19 = v18;
    v20 = *(a1 + 128);
    v21 = fmax(v17, 0.0) - CGRectGetMinX(*(a1 + 64));
    v22 = fmax(v19, 0.0);
    if (v20 == 1)
    {
      v14 = fmax(fmin(v21, v17), 0.0);
      v34 = v14;
      v23 = v22 - CGRectGetMaxX(*(a1 + 96));
      v24 = fmin(v23 + CGRectGetMaxX(*(a1 + 64)), v19);
    }

    else
    {
      v14 = fmax(v21, 0.0);
      v34 = v14;
      v31 = v22 - CGRectGetMaxX(*(a1 + 96));
      v24 = v31 + CGRectGetMaxX(*(a1 + 64));
    }

    v15 = fmax(v24, 0.0);
    goto LABEL_12;
  }

  v11 = [*(a1 + 40) _existingPresentationControllerImmediate:0 effective:1];
  v12 = v11;
  if (v11)
  {
    [v11 _baseContentInsetsWithLeftMargin:&v34 rightMargin:&v33];
  }

  else
  {
    v25 = *(a1 + 48);
    v26 = [*(a1 + 40) _window];
    [UIPresentationController _statusBarOverlapAndMarginInfoForView:v25 inWindow:v26];
    v28 = v27;
    v30 = v29;

    v33 = v30;
    v34 = v28;
  }

  v15 = v33;
  v14 = v34;
  return [*(a1 + 40) _setContentOverlayInsets:a3 andLeftMargin:a4 rightMargin:{a5, a6, v14, v15, *&v33, *&v34}];
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4
{
  *a4 = 0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (void)setViewRespectsSystemMinimumLayoutMargins:(BOOL)viewRespectsSystemMinimumLayoutMargins
{
  v3 = viewRespectsSystemMinimumLayoutMargins;
  if ([(UIViewController *)self viewRespectsSystemMinimumLayoutMargins]!= viewRespectsSystemMinimumLayoutMargins)
  {
    v5 = 0x4000000000000;
    if (!v3)
    {
      v5 = 0;
    }

    *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFBFFFFFFFFFFFFLL | v5;
    v6 = [(UIViewController *)self _existingView];
    [v6 _updateInferredLayoutMargins];
  }
}

- (void)_setContentMargin:(double)a3
{
  if ([(UIViewController *)self ignoresParentMargins])
  {
    v5 = [(UIViewController *)self _existingView];
    v6 = objc_opt_class();
    v7 = v6;
    if (v5)
    {
      [v6 _horizontalContentMarginForView:v5];
      a3 = v8;
    }

    else
    {
      v9 = [(UIViewController *)self traitCollection];
      [v7 _slimHorizontalContentMarginForTraitCollection:v9];
      a3 = v10;
    }
  }

  if (vabdd_f64(self->_contentMargin, a3) > 2.22044605e-16)
  {
    self->_contentMargin = a3;

    [(UIViewController *)self _updateChildContentMargins];
  }
}

+ (double)_horizontalContentMarginForView:(id)a3 ofWidth:(double)a4
{
  v6 = a3;
  v7 = [v6 _viewControllerForAncestor];
  [v7 _sceneSystemMinimumMargin];
  if (v8 == 0.0)
  {
    v9 = [v7 _window];
    [v9 safeAreaInsets];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [v6 traitCollection];
    [a1 _horizontalContentMarginForViewWidth:v18 safeAreaInsets:a4 traitCollection:{v11, v13, v15, v17}];
    v20 = v19;
  }

  else
  {
    v20 = v8;
  }

  return v20;
}

+ (double)_horizontalContentMarginForViewWidth:(double)a3 safeAreaInsets:(UIEdgeInsets)a4 traitCollection:(id)a5
{
  right = a4.right;
  left = a4.left;
  v9 = a5;
  v10 = [v9 _hasSplitViewControllerContextSidebarColumn];
  if (_UIScreenReferenceBoundsSizeForType(0x1BuLL) >= a3)
  {
    goto LABEL_5;
  }

  v11 = left > 0.0;
  if (right <= 0.0)
  {
    v11 = 0;
  }

  v12 = 20.0;
  if ((v11 | v10))
  {
LABEL_5:
    [a1 _slimHorizontalContentMarginForTraitCollection:v9];
    v12 = v13;
  }

  return v12;
}

+ (double)_horizontalContentMarginForView:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  [v3 bounds];
  [v4 _horizontalContentMarginForView:v3 ofWidth:v5];
  v7 = v6;

  return v7;
}

+ (double)_slimHorizontalContentMarginForTraitCollection:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v3 = +[UITraitCollection _fallbackTraitCollection];
  }

  if ([v3 userInterfaceIdiom] == 6)
  {
    v4 = 24.0;
  }

  else
  {
    v4 = 16.0;
  }

  return v4;
}

+ (double)_boundsWidthWithMinimumHorizontalContentMarginForView:(id)a3 preservingContentWidth:(double)a4
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v5 traitCollection];
  [v6 _slimHorizontalContentMarginForTraitCollection:v7];
  v9 = v8 + v8 + a4;

  [objc_opt_class() _horizontalContentMarginForView:v5 ofWidth:v9];
  v11 = v10;

  return v11 + v11 + a4;
}

- (UIEdgeInsets)_avoidanceInsets
{
  top = self->_contentOverlayInsets.top;
  bottom = self->_contentOverlayInsets.bottom;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = bottom;
  result.left = v4;
  result.top = top;
  return result;
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = UIViewController;
  [(UIViewController *)&v11 setValue:a3 forKey:v7];
  if (dyld_program_sdk_at_least() && (([v7 isEqualToString:@"topLayoutGuide"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"bottomLayoutGuide")))
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = NSStringFromSelector(a2);
    v10 = [v8 stringWithFormat:@"%@ is a readonly property. Do not use -%@ to set it. This is an application bug.", v7, v9];

    NSLog(&stru_1EFB25450.isa, v10);
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@", v10}];
  }
}

- (UIEdgeInsets)_devicePeripheryInsets
{
  v2 = [(UIViewController *)self view];
  v3 = [v2 _screen];
  [v3 _peripheryInsets];
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

- (id)safeAreaLayoutGuide
{
  v2 = [(UIViewController *)self view];
  v3 = [v2 safeAreaLayoutGuide];

  return v3;
}

- (id)topLayoutGuide
{
  if (!self->_topLayoutGuide)
  {
    v3 = [(UIViewController *)self _existingView];

    if (v3)
    {
      if (([(UIViewController *)self _useViewBasedTopAndBottomLayoutGuides]& 1) != 0)
      {
        v4 = +[_UILayoutGuide _verticalLayoutGuide];
        topLayoutGuide = self->_topLayoutGuide;
        self->_topLayoutGuide = v4;
      }

      else
      {
        v6 = +[_UILayoutSpacer _verticalLayoutSpacer];
        v7 = self->_topLayoutGuide;
        self->_topLayoutGuide = v6;

        [(UILayoutSupport *)self->_topLayoutGuide setIdentifier:@"UIVC-topLayoutGuide"];
      }

      [(UIViewController *)self _setUpLayoutGuideConstraintIfNecessaryAtTop:?];
    }

    else if ((topLayoutGuide_didLog & 1) == 0)
    {
      topLayoutGuide_didLog = 1;
      NSLog(&cfstr_SGuideNotAvail.isa, "[UIViewController topLayoutGuide]");
    }
  }

  v8 = self->_topLayoutGuide;

  return v8;
}

- (void)_setUpLayoutGuideConstraintIfNecessaryAtTop:(uint64_t)a1
{
  v30[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = 13;
    if (a2)
    {
      v4 = 12;
    }

    v5 = *(a1 + OBJC_IVAR___UIViewController__typedStorage[v4]);
    v6 = v5;
    if (*(a1 + 24))
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      goto LABEL_32;
    }

    if (a2)
    {
      v8 = 7;
    }

    else
    {
      v8 = 8;
    }

    v9 = *(a1 + OBJC_IVAR___UIViewController__typedStorage[v8]);
    if (v9)
    {
      v10 = v9;
      v11 = [v9 container];
      if (v11)
      {
        v12 = v11;
        v13 = [v10 container];
        v14 = *(a1 + 24);

        if (v13 != v14)
        {
          v28 = [MEMORY[0x1E696AAA8] currentHandler];
          [v28 handleFailureInMethod:sel__setUpLayoutGuideConstraintIfNecessaryAtTop_ object:a1 file:@"UIViewController.m" lineNumber:2766 description:@"Unexpected: The view changed out from under the guide constraint"];
        }

LABEL_31:
LABEL_32:

        return;
      }

      v15 = @"bottom";
      if (a2)
      {
        v15 = @"top";
      }

      NSLog(&cfstr_TheLayoutGuide.isa, v15);
      v16 = OBJC_IVAR___UIViewController__typedStorage[v8];
      v17 = *(a1 + v16);
      *(a1 + v16) = 0;
    }

    v18 = [(UIViewController *)a1 _useViewBasedTopAndBottomLayoutGuides];
    v19 = [v6 nsli_superitem];
    v20 = *(a1 + 24);

    if (v19 != v20)
    {
      v21 = *(a1 + 24);
      if (v18)
      {
        [v21 addSubview:v6];
      }

      else
      {
        [v21 addLayoutGuide:v6];
        [v6 _setLockedToOwningView:1];
      }
    }

    if (a2)
    {
      v22 = 3;
    }

    else
    {
      v22 = 4;
    }

    v23 = 16;
    if (a2)
    {
      v23 = 0;
    }

    v29 = v23;
    v24 = [_UILayoutSupportConstraint constraintWithItem:v6 attribute:v22 relatedBy:0 toItem:*(a1 + 24) attribute:v22 multiplier:1.0 constant:0.0];
    v10 = [_UILayoutSupportConstraint constraintWithItem:v6 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
    v25 = v18;
    v26 = *(a1 + 24);
    v30[0] = v10;
    v30[1] = v24;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    [v26 addConstraints:v27];

    [v10 setConstant:*(a1 + 896 + v29)];
    objc_storeStrong((a1 + OBJC_IVAR___UIViewController__typedStorage[v8]), v10);
    if (v25)
    {
      [*(a1 + 24) _is_layout];
    }

    goto LABEL_31;
  }
}

- (id)bottomLayoutGuide
{
  if (!self->_bottomLayoutGuide)
  {
    v3 = [(UIViewController *)self _existingView];

    if (v3)
    {
      if (([(UIViewController *)self _useViewBasedTopAndBottomLayoutGuides]& 1) != 0)
      {
        v4 = +[_UILayoutGuide _verticalLayoutGuide];
        bottomLayoutGuide = self->_bottomLayoutGuide;
        self->_bottomLayoutGuide = v4;
      }

      else
      {
        v6 = +[_UILayoutSpacer _verticalLayoutSpacer];
        v7 = self->_bottomLayoutGuide;
        self->_bottomLayoutGuide = v6;

        [(UILayoutSupport *)self->_bottomLayoutGuide setIdentifier:@"UIVC-bottomLayoutGuide"];
      }

      [(UIViewController *)self _setUpLayoutGuideConstraintIfNecessaryAtTop:?];
    }

    else if ((bottomLayoutGuide_didLog & 1) == 0)
    {
      bottomLayoutGuide_didLog = 1;
      NSLog(&cfstr_SGuideNotAvail.isa, "[UIViewController bottomLayoutGuide]");
    }
  }

  v8 = self->_bottomLayoutGuide;

  return v8;
}

+ (BOOL)doesOverrideViewControllerMethod:(SEL)a3
{
  v5 = objc_opt_class();

  return [a1 doesOverrideViewControllerMethod:a3 inBaseClass:v5];
}

+ (BOOL)doesOverridePreferredInterfaceOrientationForPresentation
{
  v3 = objc_opt_class();

  return [a1 doesOverrideViewControllerMethod:sel_preferredInterfaceOrientationForPresentation inBaseClass:v3];
}

- (BOOL)_hasPreferredInterfaceOrientationForPresentation
{
  v2 = objc_opt_class();

  return [v2 doesOverridePreferredInterfaceOrientationForPresentation];
}

- (CGSize)formSheetSize
{
  width = self->_formSheetSize.width;
  height = self->_formSheetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)_formSheetSizeForWindowWithSize:(CGSize)a3 screenSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3.height;
  v7 = a3.width;
  v9 = +[_UIPresentationControllerDefaultVisualStyleProvider sharedInstance];
  v10 = [v9 defaultSheetMetrics];
  [v10 formSheetSizeForViewController:self windowSize:v7 screenSize:{v6, width, height}];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)setFormSheetSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(UIViewController *)self _existingView];
  if (v6 && (v7 = v6, -[UIViewController _existingView](self, "_existingView"), v8 = objc_claimAutoreleasedReturnValue(), [v8 window], v24 = objc_claimAutoreleasedReturnValue(), v8, v7, v24))
  {
    v9 = [v24 screen];
    [v9 bounds];
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v14 = [(UIViewController *)self _screen];
    [v14 bounds];
    v11 = v15;
    v13 = v16;

    v24 = +[UIWindow _applicationKeyWindow];
  }

  if (dyld_program_sdk_at_least())
  {
    v17 = v13;
    v18 = v11;
    if (v24)
    {
      [v24 bounds];
      v18 = v19;
      v17 = v20;
    }

    [(UIViewController *)self _formSheetSizeForWindowWithSize:v18 screenSize:v17, v11, v13];
    height = v21;
    self->_formSheetSize.width = v22;
    v23 = v24;
    goto LABEL_14;
  }

  v23 = v24;
  if (width > 0.0 && height > 0.0 && width <= v11 && height <= v13)
  {
    self->_formSheetSize.width = width;
LABEL_14:
    self->_formSheetSize.height = height;
  }
}

+ (CGSize)defaultFormSheetSizeForScreenSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = +[_UIPresentationControllerDefaultVisualStyleProvider sharedInstance];
  v6 = [v5 defaultSheetMetrics];
  [v6 defaultFormSheetSizeForScreenSize:{width, height}];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)setContentSizeForViewInPopover:(CGSize)contentSizeForViewInPopover
{
  height = self->_contentSizeForViewInPopover.height;
  if (self->_contentSizeForViewInPopover.width != contentSizeForViewInPopover.width || height != contentSizeForViewInPopover.height)
  {
    self->_contentSizeForViewInPopover = contentSizeForViewInPopover;
    if ([(UIViewController *)self isViewLoaded])
    {
      v6 = [(UIViewController *)self _existingView];
      v7 = [_UIPopoverView popoverViewContainingView:v6];

      if (v7)
      {
        v8 = [(UIViewController *)self _popoverController];
        v9 = v8;
        if (v8)
        {
          v22 = v8;
          v10 = [v8 _embedsInView];
          v9 = v22;
          if ((v10 & 1) == 0)
          {
            v11 = [v22 contentViewController];
            v12 = [v11 presentedViewController];

            v13 = [v22 contentViewController];
            v14 = v13;
            if (v12)
            {
              v15 = [v13 presentedViewController];
              [v15 contentSizeForViewInPopover];
              v17 = v16;
              v19 = v18;
            }

            else
            {
              [v13 contentSizeForViewInPopover];
              v17 = v20;
              v19 = v21;
            }

            [v22 setPopoverContentSize:height != 1100.0 animated:{v17, v19}];
            v9 = v22;
          }
        }
      }
    }
  }
}

- (CGSize)contentSizeForViewInPopoverView
{
  width = self->_contentSizeForViewInPopover.width;
  height = self->_contentSizeForViewInPopover.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setPreferredContentSize:(CGSize)preferredContentSize
{
  p_preferredContentSize = &self->_preferredContentSize;
  width = self->_preferredContentSize.width;
  height = self->_preferredContentSize.height;
  if (width == preferredContentSize.width && height == preferredContentSize.height)
  {
    return;
  }

  v8 = height != 0.0 && width != 0.0;
  p_preferredContentSize->width = preferredContentSize.width;
  self->_preferredContentSize.height = preferredContentSize.height;
  if ([(UIViewController *)self isViewLoaded])
  {
    v9 = [(UIViewController *)self _existingView];
    v10 = [_UIPopoverView popoverViewContainingView:v9];

    if (v10)
    {
      v11 = [(UIViewController *)self _popoverController];
      v12 = v11;
      if (v11)
      {
        v30 = v11;
        v13 = [v11 _embedsInView];
        v12 = v30;
        if ((v13 & 1) == 0)
        {
          v19 = [v30 contentViewController];
          v20 = [v19 presentedViewController];

          v21 = [v30 contentViewController];
          v22 = v21;
          if (v20)
          {
            v23 = [v21 presentedViewController];
            [v23 preferredContentSize];
            v25 = v24;
            v27 = v26;
          }

          else
          {
            [v21 preferredContentSize];
            v25 = v28;
            v27 = v29;
          }

          if (v27 == 0.0 || v25 == 0.0)
          {
            v25 = p_preferredContentSize->width;
            v27 = p_preferredContentSize->height;
          }

          [v30 setPopoverContentSize:v8 animated:{v25, v27}];
          goto LABEL_24;
        }
      }
    }
  }

  v30 = [(UIViewController *)self _existingPresentationControllerImmediate:1 effective:1 includesRoot:0 prefersRoot:?];
  v14 = [v30 _childPresentationController];
  v15 = v14;
  if (!v14 || ([v14 shouldPresentInFullscreen] & 1) != 0)
  {
    v16 = v30;
    if (!v30)
    {
      v17 = [(UIViewController *)self parentViewController];
      v18 = v17;
      if (v17)
      {
        [v17 _preferredContentSizeDidChangeForChildViewController:self];
        [v18 preferredContentSizeDidChangeForChildContentContainer:self];
      }

      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (([v15 shouldRemovePresentersView] & 1) == 0)
  {
    v16 = v15;
LABEL_22:
    [v16 preferredContentSizeDidChangeForChildContentContainer:self];
  }

LABEL_23:

LABEL_24:
}

- (id)_existingPresentationControllerImmediate:(char)a3 effective:(int)a4 includesRoot:(char)a5 prefersRoot:
{
  v5 = a1;
  if (a1)
  {
    if (a2)
    {
      [a1 _parentModalViewController];
    }

    else
    {
      [a1 presentingViewController];
    }
    v10 = ;
    if (v10)
    {
      if (!a4 || ![v5 _isRootViewController] || (a5 & 1) == 0)
      {
        if (a3)
        {
          [v10 _presentationController];
        }

        else
        {
          [v10 _originalPresentationController];
        }
        v5 = ;
        goto LABEL_21;
      }

      if (!a2)
      {
        goto LABEL_20;
      }
    }

    else if (!a2 || (a4 & 1) == 0)
    {
      if (!a4)
      {
        goto LABEL_16;
      }

      goto LABEL_20;
    }

    v11 = [v5 parentViewController];

    if (v11)
    {
LABEL_16:
      v5 = 0;
LABEL_21:

      goto LABEL_22;
    }

LABEL_20:
    v12 = [v5 _window];
    v5 = [v12 _rootPresentationController];

    goto LABEL_21;
  }

LABEL_22:

  return v5;
}

- (void)_systemLayoutFittingSizeDidChangeForChildContentContainer:(id)a3 childViewController:(id)a4
{
  v7 = a4;
  [(UIViewController *)self systemLayoutFittingSizeDidChangeForChildContentContainer:a3];
  v6 = v7;
  if (v7)
  {
    [(UIViewController *)self systemLayoutFittingSizeDidChangeForChildViewController:v7];
    v6 = v7;
  }
}

- (CGSize)_systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = [(UIViewController *)self view];
  *&v10 = a4;
  *&v11 = a5;
  [v9 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v10, v11}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)_setMayForwardPresentationsToPresentedViewController:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFBFFFFFFFFLL | v3;
}

- (void)setModalInPopover:(BOOL)modalInPopover
{
  v4 = 0x4000;
  if (!modalInPopover)
  {
    v4 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFFFFFFBFFFLL | v4;
  v8 = [(UIViewController *)self _popoverController];
  if (v8)
  {
    [v8 _containedViewControllerModalStateChanged];
  }

  v5 = [(UIViewController *)self popoverPresentationController];
  v6 = [v5 presentedViewController];

  if (v6 == self)
  {
    v7 = [(UIViewController *)self popoverPresentationController];
    [v7 _containedViewControllerModalStateChanged];
  }
}

- (BOOL)isModalInPopover
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_childModalViewControllers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v10 + 1) + 8 * v7) isModalInPopover])
        {

          LOBYTE(v8) = 1;
          return v8;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return (*(&self->_viewControllerFlags + 1) >> 6) & 1;
}

- (id)_viewForContentInPopover
{
  v3 = [(UIViewController *)self childModalViewController];
  if (v3 && (v4 = v3, -[UIViewController childModalViewController](self, "childModalViewController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isModalInPresentation], v5, v4, v6))
  {
    v7 = [(UIViewController *)self childModalViewController];
    v8 = [v7 _viewForContentInPopover];
  }

  else
  {
    v8 = [(UIViewController *)self view];
  }

  return v8;
}

- (void)_didResignContentViewControllerOfPopover:(id)a3
{
  v4 = a3;
  v5 = [(UIViewController *)self _popoverController];

  if (v5 == v4)
  {

    [(UIViewController *)self _setPopoverController:0];
  }
}

- (void)_setInCustomTransition:(BOOL)a3
{
  v3 = 0x200000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFDFFFFFFFFLL | v3;
}

- (void)_setUsesSharedView:(BOOL)a3
{
  v3 = 0x800000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFF7FFFFFFFFLL | v3;
}

- (void)_setViewHostsLayoutEngine:(BOOL)a3
{
  self->_viewHostsLayoutEngine = a3;
  if (a3)
  {
    view = self->_view;
    if (view)
    {
      if ([(UIView *)view translatesAutoresizingMaskIntoConstraints])
      {
        v5 = self->_view;

        [(UIView *)v5 _setHostsLayoutEngine:1];
      }
    }
  }
}

- (UIViewController)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  v6 = nibNameOrNil;
  v7 = nibBundleOrNil;
  v14.receiver = self;
  v14.super_class = UIViewController;
  v8 = [(UIViewController *)&v14 init];
  if (v8)
  {
    v9 = [(NSString *)v6 copy];
    nibName = v8->_nibName;
    v8->_nibName = v9;

    objc_storeStrong(&v8->_nibBundle, nibBundleOrNil);
    [(UIViewController *)v8 _populateInitialTraitCollection];
    [(UIViewController *)v8 _doCommonSetup];
    v8->_edgesForExtendedLayout = 15;
    *&v8->_viewControllerFlags |= 0x2000000000uLL;
    [(UIViewController *)v8 setDefinesPresentationContext:[(UIViewController *)v8 _isPresentationContextByDefault]];
    *&v8->_viewControllerFlags |= 0x4000000000000uLL;
    v8->_modalTransitionStyle = _UIViewControllerDefaultModalTransitionStyle(v8);
    v11 = dyld_program_sdk_at_least();
    v12 = -2;
    if (!v11)
    {
      v12 = 0;
    }

    v8->_modalPresentationStyle = v12;
  }

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    CFAutorelease(v8);
  }

  return v8;
}

- (UIViewController)initWithCoder:(NSCoder *)coder
{
  v98 = *MEMORY[0x1E69E9840];
  v4 = coder;
  v96.receiver = self;
  v96.super_class = UIViewController;
  v5 = [(UIViewController *)&v96 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_74;
  }

  [(UIViewController *)v5 _populateInitialTraitCollection];
  [(NSCoder *)v4 _initializeClassSwapperWithCurrentDecodingViewControllerIfNeeded:v6];
  if ([v6 _shouldPersistViewWhenCoding])
  {
    v7 = [(NSCoder *)v4 decodeObjectForKey:@"UIView"];
    v8 = *(v6 + 24);
    *(v6 + 24) = v7;

    if (*(v6 + 24))
    {
      [objc_opt_class() setViewController:v6 forView:*(v6 + 24)];
      *(*(v6 + 24) + 88) |= 0x40000000uLL;
      *(v6 + 376) |= 0x40uLL;
    }
  }

  v9 = [(NSCoder *)v4 decodeObjectForKey:@"UITitle"];
  v10 = [v9 copy];
  v11 = *(v6 + 72);
  *(v6 + 72) = v10;

  v12 = [(NSCoder *)v4 decodeObjectForKey:@"UITabBarItem"];
  v13 = *(v6 + 32);
  *(v6 + 32) = v12;

  v14 = [(NSCoder *)v4 decodeObjectForKey:@"UINavigationItem"];
  v15 = *(v6 + 56);
  *(v6 + 56) = v14;

  *(v6 + 96) = [(NSCoder *)v4 decodeObjectForKey:@"UIParentViewController"];
  v16 = [(NSCoder *)v4 decodeBoolForKey:@"UIWantsFullScreenLayout"];
  v17 = 32;
  if (v16)
  {
    v17 = 544;
  }

  *(v6 + 376) = *(v6 + 376) & 0xFFFFFFFFFFFFFDFFLL | v17;
  if ([(NSCoder *)v4 containsValueForKey:@"UIAutoresizesArchivedViewToFullSize"])
  {
    v18 = [(NSCoder *)v4 decodeBoolForKey:@"UIAutoresizesArchivedViewToFullSize"];
    v19 = 32;
    if (!v18)
    {
      v19 = 0;
    }

    *(v6 + 376) = *(v6 + 376) & 0xFFFFFFFFFFFFFFDFLL | v19;
  }

  [(UIViewController *)v6 autoresizeArchivedView];
  v20 = [(NSCoder *)v4 decodeObjectForKey:@"UIStoryboardSegueTemplates"];
  v21 = [v20 copy];
  v22 = *(v6 + 624);
  *(v6 + 624) = v21;

  v23 = [(NSCoder *)v4 decodeObjectForKey:@"UIStoryboardPreviewSegueTemplates"];
  v24 = [v23 copy];
  v25 = *(v6 + 728);
  *(v6 + 728) = v24;

  v26 = [(NSCoder *)v4 decodeObjectForKey:@"UIStoryboardCommitSegueTemplates"];
  v27 = [v26 copy];
  v28 = *(v6 + 736);
  *(v6 + 736) = v27;

  v29 = [(NSCoder *)v4 decodeObjectForKey:@"UIStoryboardPreviewingRegistrants"];
  v30 = [v29 copy];
  v31 = *(v6 + 744);
  *(v6 + 744) = v30;

  v32 = [(NSCoder *)v4 decodeObjectForKey:@"UIExternalObjectsTableForViewLoading"];
  v33 = CFDictionaryCreateWithNonRetainedValuesFromNSDictionary(v32);
  v34 = *(v6 + 168);
  *(v6 + 168) = v33;

  v35 = [(NSCoder *)v4 decodeObjectForKey:@"UITopLevelObjectsToKeepAliveFromStoryboard"];
  v36 = [v35 copy];
  v37 = *(v6 + 176);
  *(v6 + 176) = v36;

  v38 = [(NSCoder *)v4 decodeObjectForKey:@"UINibName"];
  v39 = [v38 copy];
  v40 = *(v6 + 80);
  *(v6 + 80) = v39;

  if ([(NSCoder *)v4 containsValueForKey:@"UINibBundleIdentifier"])
  {
    v41 = MEMORY[0x1E696AAE8];
    v42 = [(NSCoder *)v4 decodeObjectForKey:@"UINibBundleIdentifier"];
    v43 = [v41 bundleWithIdentifier:v42];
    v44 = *(v6 + 88);
    *(v6 + 88) = v43;

LABEL_15:
    goto LABEL_16;
  }

  if ([*(v6 + 80) length])
  {
    v45 = UIResourceBundleForNIBBeingDecodedWithCoder(v4);
    v42 = *(v6 + 88);
    *(v6 + 88) = v45;
    goto LABEL_15;
  }

LABEL_16:
  v46 = [(NSCoder *)v4 decodeObjectForKey:@"UIToolbarItems"];
  v47 = *(v6 + 64);
  *(v6 + 64) = v46;

  v48 = [(NSCoder *)v4 decodeObjectForKey:@"UIChildViewControllerSelectors"];
  [v6 _setCustomChildViewControllerSelectorsNames:v48];

  v49 = [(NSCoder *)v4 _decodeObjectsAndTrackChildViewControllerIndexWithParent:v6 forKey:@"UIChildViewControllers"];
  if (v49)
  {
    v50 = objc_opt_new();
    v51 = *(v6 + 464);
    *(v6 + 464) = v50;

    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v52 = v49;
    v53 = [v52 countByEnumeratingWithState:&v92 objects:v97 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v93;
      do
      {
        for (i = 0; i != v54; ++i)
        {
          if (*v93 != v55)
          {
            objc_enumerationMutation(v52);
          }

          [*(v6 + 464) addObject:{*(*(&v92 + 1) + 8 * i), v92}];
        }

        v54 = [v52 countByEnumeratingWithState:&v92 objects:v97 count:16];
      }

      while (v54);
    }
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UIDefinesPresentationContext", v92])
  {
    v57 = [(NSCoder *)v4 decodeBoolForKey:@"UIDefinesPresentationContext"];
  }

  else
  {
    v57 = [v6 _isPresentationContextByDefault];
  }

  v58 = 0x20000;
  if (!v57)
  {
    v58 = 0;
  }

  *(v6 + 376) = *(v6 + 376) & 0xFFFFFFFFFFFDFFFFLL | v58;
  v59 = [(NSCoder *)v4 decodeBoolForKey:@"UIProvidesPresentationContextTransitionStyle"];
  v60 = 0x40000;
  if (!v59)
  {
    v60 = 0;
  }

  *(v6 + 376) = *(v6 + 376) & 0xFFFFFFFFFFFBFFFFLL | v60;
  v61 = [(NSCoder *)v4 containsValueForKey:@"UIRestoresFocusAfterTransition"];
  v62 = 0;
  if (v61)
  {
    v63 = [(NSCoder *)v4 decodeBoolForKey:@"UIRestoresFocusAfterTransition"];
    v62 = 0x200000000000;
    if (v63)
    {
      v62 = 0x400000000000;
    }
  }

  *(v6 + 376) = *(v6 + 376) & 0xFFFF9FFFFFFFFFFFLL | v62;
  if ([(NSCoder *)v4 containsValueForKey:@"UIModalTransitionStyle"])
  {
    v64 = [(NSCoder *)v4 decodeIntegerForKey:@"UIModalTransitionStyle"];
  }

  else
  {
    v64 = _UIViewControllerDefaultModalTransitionStyle(v6);
  }

  *(v6 + 232) = v64;
  if ([(NSCoder *)v4 containsValueForKey:@"UIModalPresentationStyle"])
  {
    v65 = [(NSCoder *)v4 decodeIntegerForKey:@"UIModalPresentationStyle"];
  }

  else if (dyld_program_sdk_at_least())
  {
    v65 = -2;
  }

  else
  {
    v65 = 0;
  }

  *(v6 + 240) = v65;
  v66 = [(NSCoder *)v4 decodeBoolForKey:@"UIHidesBottomBarWhenPushed"];
  v67 = 16;
  if (!v66)
  {
    v67 = 0;
  }

  *(v6 + 376) = *(v6 + 376) & 0xFFFFFFFFFFFFFFEFLL | v67;
  if ([(NSCoder *)v4 containsValueForKey:@"UIContentSizeForViewInPopover"])
  {
    [(NSCoder *)v4 decodeCGSizeForKey:@"UIContentSizeForViewInPopover"];
    *(v6 + 272) = v68;
    *(v6 + 280) = v69;
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UIPreferredContentSize"])
  {
    [(NSCoder *)v4 decodeCGSizeForKey:@"UIPreferredContentSize"];
    *(v6 + 832) = v70;
    *(v6 + 840) = v71;
  }

  v72 = [(NSCoder *)v4 decodeObjectForKey:@"UIRestorationIdentifier"];
  if (v72)
  {
    [v6 setRestorationIdentifier:v72];
  }

  v73 = [(NSCoder *)v4 decodeObjectForKey:@"UIStoryboardIdentifier"];
  if (v73)
  {
    objc_storeStrong((v6 + 392), v73);
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UIKeyCommands"])
  {
    v74 = [(NSCoder *)v4 decodeObjectForKey:@"UIKeyCommands"];
    v75 = *(v6 + 336);
    *(v6 + 336) = v74;
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UIAddedKeyCommands"])
  {
    v76 = [(NSCoder *)v4 decodeObjectForKey:@"UIAddedKeyCommands"];
    v77 = *(v6 + 344);
    *(v6 + 344) = v76;
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UIKeyEdgesForExtendedLayout"])
  {
    v78 = [(NSCoder *)v4 decodeIntegerForKey:@"UIKeyEdgesForExtendedLayout"];
  }

  else
  {
    v78 = 15;
  }

  *(v6 + 696) = v78;
  if ([(NSCoder *)v4 containsValueForKey:@"UIKeyExtendedLayoutIncludesOpaqueBars"])
  {
    *(v6 + 376) = *(v6 + 376) & 0xFFFFFFEFFFFFFFFFLL | (([(NSCoder *)v4 decodeIntegerForKey:@"UIKeyExtendedLayoutIncludesOpaqueBars"]& 1) << 36);
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UIKeyAutomaticallyAdjustsScrollViewInsets"])
  {
    v79 = *(v6 + 376) & 0xFFFFFFDFFFFFFFFFLL | (([(NSCoder *)v4 decodeIntegerForKey:@"UIKeyAutomaticallyAdjustsScrollViewInsets"]& 1) << 37);
  }

  else
  {
    v79 = *(v6 + 376) | 0x2000000000;
  }

  *(v6 + 376) = v79;
  if ([(NSCoder *)v4 containsValueForKey:@"UIViewControllerViewRespectsSystemMinimumLayoutMargins"])
  {
    v80 = [(NSCoder *)v4 decodeBoolForKey:@"UIViewControllerViewRespectsSystemMinimumLayoutMargins"];
    v81 = 0x4000000000000;
    if (!v80)
    {
      v81 = 0;
    }

    v82 = *(v6 + 376) & 0xFFFBFFFFFFFFFFFFLL | v81;
  }

  else
  {
    v82 = *(v6 + 376) | 0x4000000000000;
  }

  *(v6 + 376) = v82;
  v83 = [(NSCoder *)v4 decodeObjectForKey:@"UIViewControllerTopLayoutGuide"];
  v84 = *(v6 + 552);
  *(v6 + 552) = v83;

  v85 = [(NSCoder *)v4 decodeObjectForKey:@"UIViewControllerBottomLayoutGuide"];
  v86 = *(v6 + 560);
  *(v6 + 560) = v85;

  if (*(v6 + 552) || *(v6 + 560))
  {
    *(v6 + 376) |= 0x80000000000uLL;
  }

  v87 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIViewControllerInteractionActivityTrackingBaseName"];
  v88 = *(v6 + 584);
  *(v6 + 584) = v87;

  v89 = [(NSCoder *)v4 decodeObjectForKey:@"UIViewControllerObservableScrollViews"];
  v90 = *(v6 + 592);
  *(v6 + 592) = v89;

  [(UIViewController *)v6 _doCommonSetup];
LABEL_74:

  return v6;
}

- (SEL)_customSelectorToCreateChildViewControllerAtIndex:(int64_t)a3
{
  v5 = [(UIViewController *)self _customChildViewControllerSelectorsNames];
  v6 = [v5 objectAtIndex:a3];
  v7 = [MEMORY[0x1E695DFB0] null];
  if ([v6 isEqual:v7])
  {
    v8 = 0;
  }

  else
  {
    v9 = [(UIViewController *)self _customChildViewControllerSelectorsNames];
    v8 = [v9 objectAtIndex:a3];
  }

  if (v8)
  {
    v10 = NSSelectorFromString(v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_setCustomChildViewControllerSelectorsNames:(id)a3
{
  v4 = [a3 copy];
  objc_setAssociatedObject(self, &_UIViewControllerCustomChildViewControllerSelectorsNamesKey, v4, 1);
}

- (uint64_t)_doesSelfOrAncestorPassPredicate:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 parentViewController];
    if (v3[2](v3, a1))
    {
      a1 = 1;
    }

    else if (v4)
    {
      a1 = [(UIViewController *)v4 _doesSelfOrAncestorPassPredicate:v3];
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (void)_populateArchivedChildViewControllers:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_childViewControllers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [v4 addObject:{*(*(&v10 + 1) + 8 * v9++), v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)encodeWithCoder:(id)a3
{
  v37 = a3;
  if (self->_view && [(UIViewController *)self _shouldPersistViewWhenCoding])
  {
    [v37 encodeObject:self->_view forKey:@"UIView"];
  }

  title = self->_title;
  if (title)
  {
    [v37 encodeObject:title forKey:@"UITitle"];
  }

  tabBarItem = self->_tabBarItem;
  if (tabBarItem)
  {
    [v37 encodeObject:tabBarItem forKey:@"UITabBarItem"];
  }

  navigationItem = self->_navigationItem;
  if (navigationItem)
  {
    [v37 encodeObject:navigationItem forKey:@"UINavigationItem"];
  }

  externalObjectsTableForViewLoading = self->_externalObjectsTableForViewLoading;
  if (externalObjectsTableForViewLoading)
  {
    [v37 encodeObject:externalObjectsTableForViewLoading forKey:@"UIExternalObjectsTableForViewLoading"];
  }

  topLevelObjectsToKeepAliveFromStoryboard = self->_topLevelObjectsToKeepAliveFromStoryboard;
  if (topLevelObjectsToKeepAliveFromStoryboard)
  {
    [v37 encodeObject:topLevelObjectsToKeepAliveFromStoryboard forKey:@"UITopLevelObjectsToKeepAliveFromStoryboard"];
  }

  nibName = self->_nibName;
  if (nibName)
  {
    [v37 encodeObject:nibName forKey:@"UINibName"];
  }

  nibBundle = self->_nibBundle;
  if (nibBundle)
  {
    v11 = [(NSBundle *)nibBundle bundleIdentifier];
    [v37 encodeObject:v11 forKey:@"UINibBundleIdentifier"];
  }

  parentViewController = self->_parentViewController;
  if (parentViewController)
  {
    [v37 encodeConditionalObject:parentViewController forKey:@"UIParentViewController"];
  }

  viewControllerFlags = self->_viewControllerFlags;
  if ((viewControllerFlags & 0x20) == 0)
  {
    [v37 encodeBool:0 forKey:@"UIAutoresizesArchivedViewToFullSize"];
    viewControllerFlags = self->_viewControllerFlags;
  }

  if ((viewControllerFlags & 0x200) != 0)
  {
    [v37 encodeBool:1 forKey:@"UIWantsFullScreenLayout"];
  }

  if ([(NSArray *)self->_toolbarItems count])
  {
    [v37 encodeObject:self->_toolbarItems forKey:@"UIToolbarItems"];
  }

  if ([(NSMutableArray *)self->_childViewControllers count])
  {
    v14 = [(UIViewController *)self _customChildViewControllerSelectorsNames];
    v15 = [v14 count];

    if (v15)
    {
      v16 = [(UIViewController *)self _customChildViewControllerSelectorsNames];
      [v37 encodeObject:v16 forKey:@"UIChildViewControllerSelectors"];
    }

    v17 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSMutableArray count](self->_childViewControllers, "count")}];
    [(UIViewController *)self _populateArchivedChildViewControllers:v17];
    if ([v17 count])
    {
      v18 = UIArrayByKeepingObjectsInSet(self->_childViewControllers, v17);
      [v37 encodeObject:v18 forKey:@"UIChildViewControllers"];
    }
  }

  v19 = self->_viewControllerFlags;
  if ((([(UIViewController *)self _isPresentationContextByDefault]^ ((v19 & 0x20000) == 0)) & 1) == 0)
  {
    [v37 encodeBool:(*&self->_viewControllerFlags >> 17) & 1 forKey:@"UIDefinesPresentationContext"];
  }

  v20 = self->_viewControllerFlags;
  if ((v20 & 0x40000) != 0)
  {
    [v37 encodeBool:1 forKey:@"UIProvidesPresentationContextTransitionStyle"];
    v20 = self->_viewControllerFlags;
  }

  if ((v20 & 0x600000000000) != 0)
  {
    [v37 encodeBool:-[UIViewController restoresFocusAfterTransition](self forKey:{"restoresFocusAfterTransition"), @"UIRestoresFocusAfterTransition"}];
  }

  modalTransitionStyle = self->_modalTransitionStyle;
  if (modalTransitionStyle != _UIViewControllerDefaultModalTransitionStyle(self))
  {
    [v37 encodeInteger:self->_modalTransitionStyle forKey:@"UIModalTransitionStyle"];
  }

  modalPresentationStyle = self->_modalPresentationStyle;
  v23 = dyld_program_sdk_at_least();
  v24 = -2;
  if (!v23)
  {
    v24 = 0;
  }

  if (modalPresentationStyle != v24)
  {
    [v37 encodeInteger:self->_modalPresentationStyle forKey:@"UIModalPresentationStyle"];
  }

  if ((*&self->_viewControllerFlags & 0x10) != 0)
  {
    [v37 encodeBool:1 forKey:@"UIHidesBottomBarWhenPushed"];
  }

  if (self->_contentSizeForViewInPopover.width != 320.0 || self->_contentSizeForViewInPopover.height != 1100.0)
  {
    [v37 encodeCGSize:@"UIContentSizeForViewInPopover" forKey:?];
  }

  if (self->_preferredContentSize.width != *MEMORY[0x1E695F060] || self->_preferredContentSize.height != *(MEMORY[0x1E695F060] + 8))
  {
    [v37 encodeCGSize:@"UIPreferredContentSize" forKey:?];
  }

  v25 = [(UIResponder *)self restorationIdentifier];

  if (v25)
  {
    v26 = [(UIResponder *)self restorationIdentifier];
    [v37 encodeObject:v26 forKey:@"UIRestorationIdentifier"];
  }

  storyboardIdentifier = self->_storyboardIdentifier;
  if (storyboardIdentifier)
  {
    [v37 encodeObject:storyboardIdentifier forKey:@"UIStoryboardIdentifier"];
  }

  interfaceBuilderKeyCommands = self->_interfaceBuilderKeyCommands;
  if (interfaceBuilderKeyCommands)
  {
    [v37 encodeObject:interfaceBuilderKeyCommands forKey:@"UIKeyCommands"];
  }

  addedKeyCommands = self->_addedKeyCommands;
  if (addedKeyCommands)
  {
    [v37 encodeObject:addedKeyCommands forKey:@"UIAddedKeyCommands"];
  }

  edgesForExtendedLayout = self->_edgesForExtendedLayout;
  if (edgesForExtendedLayout != 15)
  {
    [v37 encodeInteger:edgesForExtendedLayout forKey:@"UIKeyEdgesForExtendedLayout"];
  }

  v31 = self->_viewControllerFlags;
  if ((v31 & 0x1000000000) != 0)
  {
    [v37 encodeInteger:1 forKey:@"UIKeyExtendedLayoutIncludesOpaqueBars"];
    v31 = self->_viewControllerFlags;
    if ((v31 & 0x2000000000) == 0)
    {
LABEL_64:
      if ((v31 & 0x4000000000000) != 0)
      {
        goto LABEL_66;
      }

      goto LABEL_65;
    }
  }

  else if ((v31 & 0x2000000000) == 0)
  {
    goto LABEL_64;
  }

  [v37 encodeInteger:1 forKey:@"UIKeyAutomaticallyAdjustsScrollViewInsets"];
  if ((*&self->_viewControllerFlags & 0x4000000000000) == 0)
  {
LABEL_65:
    [v37 encodeBool:0 forKey:@"UIViewControllerViewRespectsSystemMinimumLayoutMargins"];
  }

LABEL_66:
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    topLayoutGuide = self->_topLayoutGuide;
    if (topLayoutGuide)
    {
      [v37 encodeObject:topLayoutGuide forKey:@"UIViewControllerTopLayoutGuide"];
    }

    bottomLayoutGuide = self->_bottomLayoutGuide;
    if (bottomLayoutGuide)
    {
      [v37 encodeObject:bottomLayoutGuide forKey:@"UIViewControllerBottomLayoutGuide"];
    }
  }

  observableScrollViews = self->_observableScrollViews;
  if (observableScrollViews)
  {
    [v37 encodeObject:observableScrollViews forKey:@"UIViewControllerObservableScrollViews"];
  }

  interactionActivityTrackingBaseName = self->_interactionActivityTrackingBaseName;
  v36 = v37;
  if (interactionActivityTrackingBaseName)
  {
    [v37 encodeObject:interactionActivityTrackingBaseName forKey:@"UIViewControllerInteractionActivityTrackingBaseName"];
    v36 = v37;
  }
}

- (void)updatePropertiesIfNeeded
{
  if (self->_view)
  {
    [(UIView *)self->_view updatePropertiesIfNeeded];
  }

  else
  {
    [(UIViewController *)self _performPropertiesUpdate];
  }
}

- (void)_recordTraitUsage:(__int128 *)a3 trackedStateDiff:(unint64_t)a4 insideMethod:(const char *)a5 withInvalidationAction:
{
  if (a1)
  {
    if (!a1[53])
    {
      if (_UITraitTokenSetCount(a2))
      {
        v10 = objc_alloc_init(_UITraitChangeRegistry);
        v11 = a1[53];
        a1[53] = v10;
      }
    }

    [(_UITraitChangeRegistry *)a1[53] recordTraitUsage:a2 forTraitEnvironment:a1 insideMethod:a4 withInvalidationAction:a5];
    v12 = *a3;
    v13 = *(a3 + 2);
    _UILogStateTracking(a2, a1, &v12, a4, a5);
  }
}

- (void)_setTraitStorageList:(id)a3
{
  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xEFFFFFFFFFFFFFFFLL | ((a3 != 0) << 60);
  v3.receiver = self;
  v3.super_class = UIViewController;
  [&v3 _setTraitStorageList:?];
}

- (void)_parent:(id)a3 willTransitionToTraitCollection:(id)a4 withTransitionCoordinator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UIViewController *)self _parentTraitEnvironment];

  if (v11 != v8)
  {
    if (!_UIViewControllersInheritTraitsFromViewHierarchy())
    {
LABEL_5:
      v15 = v9;
      goto LABEL_14;
    }

    v12 = [(UIViewController *)self parentViewController];
    v13 = v12;
    if (v12 == v8)
    {
    }

    else
    {
      v14 = [(UIViewController *)self _departingParentViewController];

      if (v14 != v8)
      {
        goto LABEL_5;
      }
    }
  }

  frozenTraitCollection = self->_frozenTraitCollection;
  if (frozenTraitCollection)
  {
    v17 = frozenTraitCollection;
  }

  else
  {
    v17 = [(UIViewController *)self _traitCollectionByApplyingLocalOverridesToTraitCollection:v9];
  }

  v15 = v17;

  v18 = [(UIViewController *)self traitCollection];
  v19 = v18;
  if (v15 != v18 && ![(UITraitCollection *)v18 isEqual:v15])
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __86__UIViewController__parent_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
    v20[3] = &unk_1E70F6B40;
    v20[4] = self;
    v21 = v19;
    v22 = v15;
    v23 = v10;
    [UIViewController _performWithoutDeferringTransitions:v20];
  }

LABEL_14:
}

- (id)_traitCollectionByApplyingLocalOverridesToTraitCollection:(void *)a1
{
  if (a1)
  {
    var28[0] = MEMORY[0x1E69E9820];
    var28[1] = 3221225472;
    var28[2] = __78__UIViewController__traitCollectionByApplyingLocalOverridesToTraitCollection___block_invoke;
    var28[3] = &unk_1E7101B20;
    var28[4] = a1;
    a1 = [(UITraitCollection *)a2 _traitCollectionByModifyingTraitsCopyOnWrite:?];
    v2 = var28[6];
  }

  return a1;
}

uint64_t __86__UIViewController__parent_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke(uint64_t *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_self();
  v3 = _UIShouldLogTraitCollectionChangeForInstanceAndMethod(v2, a1[4], sel_willTransitionToTraitCollection_withTransitionCoordinator_);

  if (v3)
  {
    v5 = *(__UILogGetCategoryCachedImpl("TraitCollectionChange", &_UIInternalPreference_ViewControllersInheritTraitsFromViewHierarchy_block_invoke___s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = NSStringFromSelector(sel_willTransitionToTraitCollection_withTransitionCoordinator_);
      v8 = a1[4];
      v9 = [UITraitCollection _descriptionForChangeFromTraitCollection:a1[5] toTraitCollection:a1[6]];
      v10 = a1[5];
      v11 = a1[6];
      v12 = 138413314;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Sending -%@ to %@\n\t► trait changes: %@\n\t► current: %@\n\t► new: %@", &v12, 0x34u);
    }
  }

  return [a1[4] willTransitionToTraitCollection:a1[6] withTransitionCoordinator:a1[7]];
}

- (void)_unsafeParentWillTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIViewController *)self _parentTraitEnvironment];
  [(UIViewController *)self _parent:v8 willTransitionToTraitCollection:v7 withTransitionCoordinator:v6];
}

- (void)_window:(id)a3 willTransitionToTraitCollection:(id)a4 withTransitionCoordinator:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [(UIViewController *)self childViewControllers];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v17 + 1) + 8 * v15++) _window:v8 willTransitionToTraitCollection:v9 withTransitionCoordinator:v10];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = [(UIViewController *)self _presentationController];
  [v16 _window:v8 willTransitionToTraitCollection:v9 withTransitionCoordinator:v10];
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v60 = *MEMORY[0x1E69E9840];
  v48 = a3;
  v6 = a4;
  if (![UIApp _wantsCompactStatusBarHiding])
  {
    goto LABEL_13;
  }

  v7 = [v48 verticalSizeClass];
  v8 = [(UIViewController *)self traitCollection];
  v9 = [v8 verticalSizeClass];

  if (v7 == v9)
  {
    goto LABEL_13;
  }

  if (v6)
  {
    [v6 targetTransform];
  }

  else
  {
    memset(&v58, 0, sizeof(v58));
  }

  if (!CGAffineTransformIsIdentity(&v58) && (-[UIViewController _window](self, "_window"), v10 = objc_claimAutoreleasedReturnValue(), [v10 rootViewController], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11 == self))
  {
    v27 = [(UIViewController *)self _existingView];
    v28 = [v27 window];
    v13 = [v28 windowScene];

    if (v13)
    {
      v12 = [v13 statusBarManager];
      [v12 defaultStatusBarHeight];
      v30 = v29;
      v31 = [v13 _effectiveUISettings];
      [v31 peripheryInsets];
      v33 = v32;

      if (v30 > v33)
      {
        v14 = [v12 isStatusBarHidden];
        v15 = 1;
        goto LABEL_10;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v14 = 0;
  v15 = 0;
LABEL_10:
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __78__UIViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
  v53[3] = &unk_1E7104078;
  v56 = v15;
  v57 = v14;
  v53[4] = self;
  v54 = v12;
  v55 = v13;
  v16 = v13;
  v17 = v12;
  [v6 animateAlongsideTransition:v53 completion:0];
  if (self)
  {
    [(UIViewController *)self _invalidatePreferences:0 excluding:?];
  }

LABEL_13:
  if (self && (*&self->_viewControllerFlags & 3u) - 1 <= 1)
  {
    v18 = [(UIViewController *)self navigationItem];
    v19 = [v18 _searchControllerIfAllowed];
    if (v19)
    {
      v20 = [v18 _navigationBar];
      v21 = [v20 topItem];

      if (v21 == v18)
      {
        v22 = [v18 _hasInlineSearchBar];
        v23 = [v18 _hasInlineSearchBarForTraits:v48];
        if (v22 != v23)
        {
          v24 = v23;
          v25 = [v19 delegate];
          if (objc_opt_respondsToSelector())
          {
            if (v24)
            {
              v26 = 1;
            }

            else
            {
              v26 = 2;
            }

            [v25 searchController:v19 willChangeToSearchBarPlacement:v26];
          }

          else if (objc_opt_respondsToSelector())
          {
            if (v24)
            {
              v34 = 1;
            }

            else
            {
              v34 = 2;
            }

            [v25 _dci_searchController:v19 willChangeToSearchBarPlacement:v34];
          }
        }
      }
    }
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = [(UIViewController *)self childViewControllers];
  v35 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v50;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v50 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v49 + 1) + 8 * i);
        if (_UIViewControllersInheritTraitsFromViewHierarchy())
        {
          v40 = 0;
        }

        else
        {
          v40 = [(UIViewController *)self overrideTraitCollectionForChildViewController:v39];
        }

        v41 = [(UIViewController *)self _overrideTraitCollectionToPassDuringTraitChangeToChildViewController:v39];
        v42 = v41;
        if (v40 && v41)
        {
          *&v58.a = MEMORY[0x1E69E9820];
          *&v58.b = 3221225472;
          *&v58.c = __79__UITraitCollection__traitCollectionByApplyingOverrides_defaultValueOverrides___block_invoke;
          *&v58.d = &unk_1E710D508;
          *&v58.tx = v40;
          v58.ty = 0.0;
          v43 = [(UITraitCollection *)v41 _traitCollectionByModifyingTraitsCopyOnWrite:?];
        }

        else
        {
          if (!v41)
          {
            goto LABEL_47;
          }

          v43 = v41;
        }

        v44 = v43;

        v40 = v44;
LABEL_47:
        v45 = [objc_opt_class() _traitCollectionWithParentTraitCollection:v48 overrideTraitCollection:v40];
        [v39 _parent:self willTransitionToTraitCollection:v45 withTransitionCoordinator:v6];
      }

      v36 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v36);
  }

  v46 = [(UIViewController *)self _presentationController];
  [v46 _parent:self willTransitionToTraitCollection:v48 withTransitionCoordinator:v6];
}

void __78__UIViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    [*(a1 + 32) setNeedsStatusBarAppearanceUpdate];
    [v4 _setNeedsUserInterfaceAppearanceUpdate];
    [v4 setNeedsWhitePointAdaptivityStyleUpdate];
  }

  if (*(a1 + 56) == 1)
  {
    v5 = *(a1 + 57);
    if (v5 != [*(a1 + 40) isStatusBarHidden])
    {
      v6 = [*(a1 + 32) _existingView];
      v7 = [v6 window];

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v8 = [*(a1 + 48) _visibleWindows];
      v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v22;
        do
        {
          v12 = 0;
          do
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v21 + 1) + 8 * v12);
            if (v13 != v7)
            {
              if ([*(*(&v21 + 1) + 8 * v12) _canAffectStatusBarAppearance])
              {
                if ((v13[579] & 0x40) != 0 && ([v13 _isHostedInAnotherProcess] & 1) == 0)
                {
                  v14 = [v13 rootViewController];
                  v15 = [v14 _existingView];

                  if (v15)
                  {
                    v16 = [v13 rootViewController];
                    v17 = [v16 _existingView];
                    [v17 _setViewDelegateContentOverlayInsetsAreClean:0];

                    v18 = [v13 rootViewController];
                    v19 = [v18 presentedViewController];
                    v20 = [v19 _existingView];
                    [v20 _setViewDelegateContentOverlayInsetsAreClean:0];
                  }
                }
              }
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v10);
      }
    }
  }
}

- (void)_collectExistingTraitCollectionsForTraitTracking:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_frozenTraitCollection)
  {
    v4[2](v4);
    v4 = v5;
  }

  if (self->_lastNotifiedTraitCollection)
  {
    v4[2](v5);
    v4 = v5;
  }
}

- (id)_traitCollectionByApplyingOverridesFromParentViewControllerToTraitCollection:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3;
    v6 = [a1 parentViewController];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [a1 _departingParentViewController];
    }

    v9 = v8;

    v10 = [v9 _traitOverridesForChildViewController:a1];
    if (!v10)
    {
      goto LABEL_14;
    }

    v11 = +[UITraitCollection _emptyTraitCollection];
    v12 = v10;
    v13 = v11;
    v14 = v13;
    if (v12 == v13)
    {
    }

    else
    {
      if (v13)
      {
        v15 = [v12 isEqual:v13];

        if (v15)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }

      [(UITraitCollection *)v5 _traitCollectionByApplyingOverrides:v12 defaultValueOverrides:0];
      v5 = v14 = v5;
    }

LABEL_14:
    goto LABEL_15;
  }

  v5 = 0;
LABEL_15:

  return v5;
}

void __78__UIViewController__traitCollectionByApplyingLocalOverridesToTraitCollection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = a2;
  v5 = a3;
  v6 = *(*(a1 + 32) + 416);
  v7 = v6;
  if (v6)
  {
    [(_UITraitOverrides *)v6 _applyTransformsUsingTraitCollectionProvider:v39 mutableTraitCollectionProvider:v5];
  }

  v8 = v39[2]();
  v9 = [v8 userInterfaceStyle];

  if (_UIIsPrivateMainBundle())
  {
    v10 = [*(a1 + 32) preferredUserInterfaceStyle];
    if (v10)
    {
      v11 = v10;
      if (v9 != v10)
      {
        v12 = v5[2](v5);
        [v12 setUserInterfaceStyle:v11];

        v9 = v11;
      }
    }
  }

  v13 = [*(a1 + 32) overrideUserInterfaceStyle];
  if (v13)
  {
    v14 = v13;
    if (v9 != v13)
    {
      v15 = v5[2](v5);
      [v15 setUserInterfaceStyle:v14];
    }
  }

  v16 = [*(a1 + 32) _overrideHorizontalSizeClass];
  if (v16)
  {
    v17 = v16;
    v18 = v39[2]();
    v19 = [v18 horizontalSizeClass];

    if (v19 != v17)
    {
      v20 = v5[2](v5);
      [v20 setHorizontalSizeClass:v17];
    }
  }

  v21 = [*(a1 + 32) _existingView];
  v22 = [v21 superview];

  if (v22)
  {
    v23 = [v22 traitCollection];
    v24 = [v23 _vibrancy];

    if (v24 != -1)
    {
      v25 = v39[2]();
      v26 = [v25 _valueForNSIntegerTraitToken:0x1EFE325A8];

      if (v24 > v26)
      {
        v27 = v5[2](v5);
        [v27 _setNSIntegerValue:v24 forTraitToken:0x1EFE325A8];
      }
    }
  }

  v28 = [*(a1 + 32) _overrideUserInterfaceRenderingMode];
  if (v28)
  {
    v29 = v28;
    v30 = v39[2]();
    v31 = [v30 _valueForNSIntegerTraitToken:0x1EFE325C0];

    if (v31 != v29)
    {
      v32 = v5[2](v5);
      [v32 _setNSIntegerValue:v29 forTraitToken:0x1EFE325C0];
    }
  }

  v33 = v39[2]();
  v34 = objc_opt_self();
  v35 = [v33 objectForTrait:v34];

  if (qword_1ED498688 != -1)
  {
    dispatch_once(&qword_1ED498688, &__block_literal_global_2598);
  }

  if ((byte_1ED49859A & 1) == 0 && !v35)
  {
    v36 = [*(a1 + 32) _backdropBarGroupName];
    if (v36)
    {
      v37 = v5[2](v5);
      v38 = objc_opt_self();
      [v37 setObject:v36 forTrait:v38];
    }
  }

  if (v7)
  {
    [(_UITraitOverrides *)v7 _applyOverridesUsingTraitCollectionProvider:v39 mutableTraitCollectionProvider:v5];
  }
}

- (id)_traitCollectionForChildEnvironment:(id)a3
{
  v4 = a3;
  if ((_UIViewControllersInheritTraitsFromViewHierarchy() & 1) != 0 || (childViewControllers = self->_childViewControllers) == 0 || [(NSMutableArray *)childViewControllers indexOfObjectIdenticalTo:v4]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(UIViewController *)self traitCollection];
  }

  else
  {
    v9 = [(UIViewController *)self overrideTraitCollectionForChildViewController:v4];
    v10 = objc_opt_class();
    v11 = [(UIViewController *)self traitCollection];
    v6 = [v10 _traitCollectionWithParentTraitCollection:v11 overrideTraitCollection:v9];
  }

  if (self->_traitOverrides)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__UIViewController__traitCollectionForChildEnvironment___block_invoke;
    v12[3] = &unk_1E7101B48;
    v12[4] = self;
    v13 = v4;
    v7 = [(UITraitCollection *)v6 _traitCollectionByModifyingTraitsCopyOnWrite:v12];

    v6 = v7;
  }

  return v6;
}

+ (id)_traitCollectionWithParentTraitCollection:(id)a3 overrideTraitCollection:(id)a4
{
  v5 = a3;
  v6 = v5;
  if (v5 && a4)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __79__UITraitCollection__traitCollectionByApplyingOverrides_defaultValueOverrides___block_invoke;
    v10[3] = &unk_1E710D508;
    v10[4] = a4;
    v10[5] = 0;
    v7 = [(UITraitCollection *)v5 _traitCollectionByModifyingTraitsCopyOnWrite:v10];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

- (void)_traitCollectionDidChange:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIViewController *)self traitCollection];
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  if (v4)
  {
    [(UITraitCollection *)v4 _createTraitTokenSetForChangesFromTraitCollection:v5, v43];
  }

  else
  {
    v6 = +[UITraitCollection _emptyTraitCollection];
    [(UITraitCollection *)v6 _createTraitTokenSetForChangesFromTraitCollection:v5, v43];
  }

  if ((*(&self->_viewControllerFlags + 7) & 0x10) != 0 && _UIShouldApplyTraitStorageRecordsForTraitChanges(v43))
  {
    [self _applyTraitStorageRecordsForTraitCollection:v5];
  }

  if ([v4 verticalSizeClass] == 1 && objc_msgSend(v5, "verticalSizeClass") == 2)
  {
    v7 = [(UIViewController *)self _window];
    v8 = [v7 rootViewController];

    if (v8 == self)
    {
      goto LABEL_26;
    }

    v9 = [(UIViewController *)v8 _effectiveStatusBarHiddenViewController];
    if (v9 == self)
    {
      v10 = [(UIViewController *)v8 traitCollection];
      v11 = [v10 verticalSizeClass];

      if (v11 != 2)
      {
        goto LABEL_26;
      }

      v12 = [MEMORY[0x1E695DF70] array];
      v13 = self;
      do
      {
        v14 = v13;
        v42 = 0;
        [(UIViewController *)&v13->super.super.isa _getViewControllerToInheritInsetsFrom:0 viaImmediateChild:?];
        v13 = v42;

        if (!v13)
        {
          break;
        }

        [v12 addObject:v13];
      }

      while (v13 != v8);
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v9 = v12;
      v17 = [(UIViewController *)v9 countByEnumeratingWithState:&v38 objects:v50 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v39;
        do
        {
          v20 = 0;
          do
          {
            if (*v39 != v19)
            {
              objc_enumerationMutation(v9);
            }

            [*(*(&v38 + 1) + 8 * v20++) _updateContentOverlayInsetsFromParentIfNecessary];
          }

          while (v18 != v20);
          v18 = [(UIViewController *)v9 countByEnumeratingWithState:&v38 objects:v50 count:16];
        }

        while (v18);
      }
    }

LABEL_26:
    v21 = v4;
    v22 = v5;
    if (!self)
    {
      goto LABEL_36;
    }

    goto LABEL_27;
  }

  v15 = v4;
  v16 = v5;
LABEL_27:
  v23 = [v5 userInterfaceStyle];
  if (v23 != [v4 userInterfaceStyle] && -[UIViewController preferredStatusBarStyle](self, "preferredStatusBarStyle") == UIStatusBarStyleDefault && (-[UIView window](self->_view, "window"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "rootViewController"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "_effectiveStatusBarStyleViewController"), v26 = objc_claimAutoreleasedReturnValue(), v26, v25, v24, v26 == self) || (v27 = objc_msgSend(v5, "verticalSizeClass"), v27 != objc_msgSend(v4, "verticalSizeClass")) && objc_msgSend(UIApp, "_wantsCompactStatusBarHiding") && (-[UIView window](self->_view, "window"), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "rootViewController"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "_effectiveStatusBarHiddenViewController"), v30 = objc_claimAutoreleasedReturnValue(), v30, v29, v28, v30 == self))
  {
    if (pthread_main_np() == 1)
    {
      [(UIViewController *)self setNeedsStatusBarAppearanceUpdate];
    }

    else
    {
      *block = MEMORY[0x1E69E9820];
      *&block[8] = 3221225472;
      *&block[16] = __105__UIViewController__invalidateStatusBarAppearanceIfNeededForChangeFromTraitCollection_toTraitCollection___block_invoke;
      v46 = &unk_1E70F3590;
      *v47 = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

LABEL_36:

  if ((dyld_program_sdk_at_least() & 1) == 0 && [(UIViewController *)self _needsAutomaticContentUnavailableConfigurationUpdates])
  {
    [(UIViewController *)self setNeedsUpdateContentUnavailableConfiguration];
  }

  if (_UISolariumEnabled())
  {
    v31 = [v5 userInterfaceIdiom];
    if (v31 != [v4 userInterfaceIdiom] && (!objc_msgSend(v5, "userInterfaceIdiom") || !objc_msgSend(v4, "userInterfaceIdiom")))
    {
      [(UIViewController *)self _invalidateRelevantToolbarItems];
    }
  }

  if (v4)
  {
    [(_UITraitChangeRegistry *)self->_traitChangeRegistry traitsDidChange:v43 forTraitEnvironment:self withPreviousTraitCollection:v4];
  }

  if (*&v43[0])
  {
  }

  v32 = objc_opt_self();
  v33 = _UIShouldLogTraitCollectionChangeForInstanceAndMethod(v32, self, sel_traitCollectionDidChange_);

  if (v33)
  {
    v34 = *(__UILogGetCategoryCachedImpl("TraitCollectionChange", &_traitCollectionDidChange____s_category) + 8);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = v34;
      v36 = NSStringFromSelector(sel_traitCollectionDidChange_);
      v37 = [UITraitCollection _descriptionForChangeFromTraitCollection:v4 toTraitCollection:v5];
      *block = 138413314;
      *&block[4] = v36;
      *&block[12] = 2112;
      *&block[14] = self;
      *&block[22] = 2112;
      v46 = v37;
      *v47 = 2112;
      *&v47[2] = v4;
      v48 = 2112;
      v49 = v5;
      _os_log_impl(&dword_188A29000, v35, OS_LOG_TYPE_ERROR, "Sending -%@ to %@\n\t► trait changes: %@\n\t► previous: %@\n\t► current: %@", block, 0x34u);
    }
  }

  [(UIViewController *)self traitCollectionDidChange:v4, v38];
}

- (void)_updateTraitsIfNecessarySchedulingPropagation:(uint64_t)a1
{
  if (a1)
  {
    v4 = [a1 _parentModalViewController];
    v5 = [v4 _presentationController];
    [v5 _updateTraitsIfNecessary];

    v6 = [a1 _parentModalViewController];
    v7 = [v6 _originalPresentationController];
    [v7 _updateTraitsIfNecessary];

    v8 = [a1 _temporaryPresentationController];
    [v8 _updateTraitsIfNecessary];

    obj = [a1 traitCollection];
    v9 = *(a1 + 504);
    if (v9 != obj && ([obj isEqual:v9] & 1) == 0)
    {
      objc_storeStrong((a1 + 504), obj);
      v10 = _UISetCurrentFallbackEnvironment(a1);
      v11 = +[UITraitCollection _currentTraitCollectionIfExists];
      [UITraitCollection setCurrentTraitCollection:obj];
      [a1 _traitCollectionDidChange:v9];
      [UITraitCollection setCurrentTraitCollection:v11];
      _UIRestorePreviousFallbackEnvironment(v10);
      v12 = *(a1 + 24);
      if (v12)
      {
        _UIViewInvalidateTraitCollectionAndSchedulePropagation(v12, a2);
      }
    }
  }
}

- (void)_updateSystemAppearanceWithRecursionBlock:(void *)a3 action:
{
  v12 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = *(a1 + 112);
    if (v6)
    {
      v7 = v12[2];
    }

    else
    {
      if (!*(a1 + 96))
      {
        v8 = [a1 _window];
        v9 = [v8 _windowHostingScene];

        v10 = [UIWindow _findWindowForControllingOverallAppearanceInWindowScene:v9];
        v11 = [v10 rootViewController];

        if (v11 == a1)
        {
          v5[2](v5, v9);
        }

        goto LABEL_7;
      }

      v7 = v12[2];
    }

    v7();
LABEL_7:
  }
}

- (void)_childTraitTransformDidChange
{
  if (self)
  {
    view = self->_view;
    if (view)
    {
      _UIViewInvalidateTraitCollectionAndSchedulePropagation(view, 1, v2, v3);
    }
  }

  traitChangeRegistry = self->_traitChangeRegistry;

  [(_UITraitChangeRegistry *)traitChangeRegistry invalidateAuxiliaryChildren];
}

- (id)registerForTraitChanges:(id)a3 withHandler:(id)a4
{
  v6 = a4;
  v7 = [UITraitCollection _traitTokensIncludingPlaceholdersForTraits:a3];
  v8 = [(UIViewController *)self _registerForTraitTokenChanges:v7 withHandler:v6];

  return v8;
}

- (id)registerForTraitChanges:(id)a3 withTarget:(id)a4 action:(SEL)a5
{
  v8 = a4;
  v9 = [UITraitCollection _traitTokensIncludingPlaceholdersForTraits:a3];
  v10 = [(UIViewController *)self _registerForTraitTokenChanges:v9 withTarget:v8 action:a5];

  return v10;
}

- (id)registerForTraitChanges:(id)a3 withAction:(SEL)a4
{
  v6 = [UITraitCollection _traitTokensIncludingPlaceholdersForTraits:a3];
  v7 = [(UIViewController *)self _registerForTraitTokenChanges:v6 withTarget:self action:a4];

  return v7;
}

- (id)_registerForTraitTokenChanges:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  traitChangeRegistry = self->_traitChangeRegistry;
  if (!traitChangeRegistry)
  {
    v9 = objc_alloc_init(_UITraitChangeRegistry);
    v10 = self->_traitChangeRegistry;
    self->_traitChangeRegistry = v9;

    traitChangeRegistry = self->_traitChangeRegistry;
  }

  v11 = [(_UITraitChangeRegistry *)traitChangeRegistry registerForTraitTokenChanges:v6 withHandler:v7];

  return v11;
}

- (id)_registerForTraitTokenChanges:(id)a3 withTarget:(id)a4 action:(SEL)a5
{
  v8 = a3;
  v9 = a4;
  traitChangeRegistry = self->_traitChangeRegistry;
  if (!traitChangeRegistry)
  {
    v11 = objc_alloc_init(_UITraitChangeRegistry);
    v12 = self->_traitChangeRegistry;
    self->_traitChangeRegistry = v11;

    traitChangeRegistry = self->_traitChangeRegistry;
  }

  v13 = [(_UITraitChangeRegistry *)traitChangeRegistry registerForTraitTokenChanges:v8 withTarget:v9 action:a5 targetIsSender:v9 == self];

  return v13;
}

- (void)_registerAuxiliaryChildEnvironmentForTraitInvalidations:(id)a3
{
  v4 = a3;
  traitChangeRegistry = self->_traitChangeRegistry;
  v8 = v4;
  if (!traitChangeRegistry)
  {
    v6 = objc_alloc_init(_UITraitChangeRegistry);
    v7 = self->_traitChangeRegistry;
    self->_traitChangeRegistry = v6;

    v4 = v8;
    traitChangeRegistry = self->_traitChangeRegistry;
  }

  [(_UITraitChangeRegistry *)traitChangeRegistry registerAuxiliaryChildEnvironmentForTraitInvalidations:v4];
}

- (void)setOverrideTraitCollection:(id)a3
{
  v4 = a3;
  if (v4 || self->_traitOverrides)
  {
    v6 = v4;
    v5 = [(UIViewController *)self _traitOverrides];
    [(_UITraitOverrides *)v5 _replaceOverrideTraitCollection:v6];

    v4 = v6;
  }
}

- (id)_compatibilityTraitOverridesFromParentViewControllerCreateIfNecessary:(uint64_t)a1
{
  if (a2)
  {
    v2 = [(UIViewController *)a1 _traitOverrides];
  }

  else
  {
    v2 = *(a1 + 416);
  }

  v3 = v2;
  if (v2)
  {
    v4 = [(_UITraitOverrides *)v2 _overridesAppliedBefore];
    v5 = [(_UITraitOverrides *)v4 _overridesAppliedAfter];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_applyCompatibilityTraitOverridesForOverrideTraitCollection:(uint64_t)a1
{
  v4 = a2;
  if (_UIViewControllersInheritTraitsFromViewHierarchy())
  {
    v3 = [(UIViewController *)a1 _compatibilityTraitOverridesFromParentViewControllerCreateIfNecessary:?];
    [(_UITraitOverrides *)v3 _replaceOverrideTraitCollection:v4];
  }
}

- (void)setOverrideUserInterfaceStyle:(UIUserInterfaceStyle)overrideUserInterfaceStyle
{
  if (pthread_main_np() == 1)
  {
    if (overrideUserInterfaceStyle >= 4)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:4545 description:{@"Attempt to set invalid UIUserInterfaceStyle value to overrideUserInterfaceStyle: %ld", overrideUserInterfaceStyle}];
    }

    v6 = [(UIViewController *)self overrideUserInterfaceStyle];
    *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0x9FFFFFFFFFFFFFFFLL | ((overrideUserInterfaceStyle & 3) << 61);
    if ([(UIViewController *)self overrideUserInterfaceStyle]!= v6)
    {

      [(UIViewController *)self _updateTraitsIfNecessary];
    }
  }

  else
  {
    _UIIsPrivateMainBundle();
    if (dyld_program_sdk_at_least())
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:4537 description:@"BUG IN CLIENT OF UIKIT: Attempting to set an overrideUserInterfaceStyle from a background thread. Modifying a view controller from a background thread is not supported."];
    }

    else if (os_variant_has_internal_diagnostics())
    {
      v10 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF UIKIT: Attempting to set an overrideUserInterfaceStyle from a background thread. Modifying a view controller from a background thread is not supported. This will become an assert in a future version.", buf, 2u);
      }
    }

    else
    {
      v8 = *(__UILogGetCategoryCachedImpl("Assert", &setOverrideUserInterfaceStyle____s_category) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "BUG IN CLIENT OF UIKIT: Attempting to set an overrideUserInterfaceStyle from a background thread. Modifying a view controller from a background thread is not supported. This will become an assert in a future version.", buf, 2u);
      }
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__UIViewController_setOverrideUserInterfaceStyle___block_invoke;
    block[3] = &unk_1E70F32F0;
    block[4] = self;
    block[5] = overrideUserInterfaceStyle;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_setOverrideHorizontalSizeClass:(int64_t)a3
{
  if (a3 >= 4)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:4561 description:{@"Attempt to set invalid UIUserInterfaceSizeClass value to overrideHorizontalSizeClass: %ld", a3}];
  }

  v5 = [(UIViewController *)self _overrideHorizontalSizeClass];
  *(&self->_viewControllerFlags + 4) = *(&self->_viewControllerFlags + 4) & 0xFFFC | a3 & 3;
  if ([(UIViewController *)self _overrideHorizontalSizeClass]!= v5)
  {

    [(UIViewController *)self _updateTraitsIfNecessary];
  }
}

- (void)_setOverrideUserInterfaceRenderingMode:(int64_t)a3
{
  if (a3 >= 4)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:4578 description:{@"Attempt to set invalid _UIUserInterfaceRenderingMode value to overrideUserInterfaceRenderingMode: %ld", a3}];
  }

  v5 = [(UIViewController *)self _overrideUserInterfaceRenderingMode];
  *(&self->_viewControllerFlags + 4) = *(&self->_viewControllerFlags + 4) & 0xFFF3 | (4 * (a3 & 3));
  if ([(UIViewController *)self _overrideUserInterfaceRenderingMode]!= v5)
  {

    [(UIViewController *)self _updateTraitsIfNecessary];
  }
}

- (void)_setPresentedUserInterfaceStyleViewController:(id)a3
{
  v5 = a3;
  if (self->_presentedUserInterfaceStyleViewController != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_presentedUserInterfaceStyleViewController, a3);
    [(UIViewController *)self _setNeedsUserInterfaceAppearanceUpdate];
    v5 = v6;
  }
}

- (id)_effectiveUserInterfaceStyleViewController
{
  v3 = [(UIViewController *)self _presentedUserInterfaceStyleViewController];
  v4 = [v3 _effectiveUserInterfaceStyleViewController];

  if (!v4)
  {
    v5 = [0 _effectiveUserInterfaceStyleViewController];
    if (!v5)
    {
      v5 = self;
    }

    v4 = v5;
  }

  return v4;
}

- (double)_statusBarHeightAdjustmentForCurrentOrientation
{
  v2 = [(UIViewController *)self _existingView];
  v3 = [v2 window];

  v4 = 0.0;
  if (v3)
  {
    v5 = +[UIDevice currentDevice];
    v6 = [v5 userInterfaceIdiom];

    v7 = [v3 _windowInterfaceOrientation];
    if (!v7)
    {
      v7 = [UIApp _sceneInterfaceOrientationFromWindow:v3];
    }

    if ((v7 - 1) <= 3)
    {
      v8 = __UIStatusBarManagerForWindow(v3);
      v9 = [v8 isStatusBarHidden];

      if (!v9 || !v6 && !+[UIDevice _hasHomeButton](UIDevice, "_hasHomeButton") && !+[UIApplication _isClassic])
      {
        [UIStatusBar _viewControllerAdjustmentForOrientation:v7 inWindow:v3];
        v4 = v10;
      }
    }
  }

  return v4;
}

- (void)unloadViewForced:(BOOL)a3
{
  v3 = a3;
  if ([(UIViewController *)self isViewLoaded]&& ([(UIViewController *)self _canReloadView]|| v3))
  {
    [(UIViewController *)self viewWillUnload];
    [(UIViewController *)self setView:0];
    modalPreservedFirstResponder = self->_modalPreservedFirstResponder;
    self->_modalPreservedFirstResponder = 0;

    if ((*(&self->_viewControllerFlags + 1) & 0x10) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_searchDisplayController);
      v7 = [WeakRetained hidNavigationBar];

      [(UIViewController *)self setSearchBarHidNavBar:v7];
      [(UIViewController *)self setSearchDisplayController:0];
    }

    [(UIViewController *)self viewDidUnload];
    if ([(UIViewController *)self isViewLoaded])
    {
      v8 = objc_opt_class();
      NSLog(&cfstr_Implementation_0.isa, v8);
    }
  }
}

void __38__UIViewController_loadViewIfRequired__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &_UIInternalPreference_ViewControllersInheritTraitsFromViewHierarchy_block_invoke_4___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Attempting to load the view of a view controller while it is deallocating is not allowed and may result in undefined behavior (%@)", &v4, 0xCu);
  }
}

- (void)setView:(UIView *)view
{
  v5 = view;
  if (self->_view != v5)
  {
    v58 = v5;
    v6 = [(UIView *)v5 _cachedTraitCollectionIsValid];
    v7 = [(UIView *)&self->_view->super.super.isa __viewDelegate];

    v8 = self->_view;
    v9 = &OBJC_IVAR____UIStateMachine__state;
    if (v8)
    {
      v10 = v8->_viewDelegate;

      if (v10 == self)
      {
        [(UIView *)&self->_view->super.super.isa __setViewDelegate:?];
      }

      *&self->_view->_viewFlags &= ~0x40000000uLL;
      modalPreservedFirstResponder = self->_modalPreservedFirstResponder;
      self->_modalPreservedFirstResponder = 0;

      v12 = self->_view;
    }

    else
    {
      v12 = 0;
    }

    v13 = [(UIView *)v12 superview];
    if (v13 && (!v58 || ![(UIView *)self->_view isDescendantOfView:v58]))
    {
      if (v7 == self)
      {
        [(UIView *)self->_view removeFromSuperview];
      }

      if (v58)
      {
        [(UIView *)self->_view frame];
        [(UIView *)v58 setFrame:?];
        [v13 addSubview:v58];
      }
    }

    v14 = self->_view;
    objc_storeStrong(&self->_view, view);
    [(UIView *)self->_view _setViewDelegateContentOverlayInsetsAreClean:0];
    if (self->_view)
    {
      [objc_opt_class() setViewController:self forView:self->_view];
      *&self->_view->_viewFlags |= 0x40000000uLL;
    }

    if (v6 && (dyld_program_sdk_at_least() & 1) == 0)
    {
      v17 = self->_view;
      if (!v17)
      {
        goto LABEL_29;
      }

      _UIViewInvalidateTraitCollectionAndSchedulePropagation(v17, 1, v15, v16);
    }

    v18 = self->_view;
    if (self->_viewHostsLayoutEngine)
    {
      if (!v18)
      {
        goto LABEL_29;
      }

      v19 = [(UIView *)v18 translatesAutoresizingMaskIntoConstraints];
      v18 = self->_view;
      if (v19)
      {
        [(UIView *)v18 _setHostsLayoutEngine:1];
        v18 = self->_view;
      }
    }

    if (v18)
    {
      v20 = [(UIViewController *)self _embeddingView];
      if (v20)
      {
        v21 = v20;
        v22 = [(UIViewController *)self _embeddingView];

        if (v22 != v58)
        {
          v23 = [(UIViewController *)self _embeddingView];
          [(UIViewController *)self _embeddedViewFrame];
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v31 = v30;
          v32 = [(UIViewController *)self _embeddedDelegate];
          [(UIViewController *)self _embedContentViewInView:v23 withContentFrame:v32 delegate:v25, v27, v29, v31];

          goto LABEL_31;
        }
      }

      if (self->_view)
      {
        goto LABEL_31;
      }
    }

LABEL_29:
    v33 = [(UIViewController *)self _embeddedView];

    if (v33)
    {
      [(UIViewController *)self _setEmbeddedView:0];
      [(UIViewController *)self _setEmbeddedDelegate:0];
    }

LABEL_31:
    [(UIViewController *)self _inferLayoutGuidesFromSubviews];
    if (!self->_topBarInsetGuideConstraint && !self->_bottomBarInsetGuideConstraint)
    {
LABEL_53:
      if (self->_contentUnavailableWrapperView)
      {
        [(UIViewController *)self setNeedsUpdateContentUnavailableConfiguration];
      }

      [(UIView *)v14 _updateInferredLayoutMargins];
      [(UIView *)self->_view _updateInferredLayoutMargins];
      if (!dyld_program_sdk_at_least())
      {
        goto LABEL_61;
      }

      v47 = _UIViewSetLayerNameDescriptionEnabled();
      v48 = [(UIView *)self->_view layer];
      v49 = v48;
      if (v47)
      {
        v50 = [(UIView *)self->_view layer];
        v51 = [v50 name];
        v52 = objc_opt_class();
        v53 = NSStringFromClass(v52);
        v54 = [v51 stringByAppendingFormat:@", VC:%@", v53];
        [v49 setName:v54];
      }

      else
      {
        v55 = [v48 name];

        if (v55)
        {
LABEL_61:
          [(UIViewController *)self _setSecurityModeForViewsLayer];

          v5 = v58;
          goto LABEL_62;
        }

        v49 = [(UIView *)self->_view layer];
        v56 = MEMORY[0x1E696AEC0];
        v57 = objc_opt_class();
        v50 = NSStringFromClass(v57);
        v51 = [v56 stringWithFormat:@"VC:%@", v50];
        [v49 setName:v51];
      }

      goto LABEL_61;
    }

    v34 = [(UIViewController *)self _embeddedView];
    v35 = v34;
    if (!v34)
    {
      v35 = self->_view;
    }

    v36 = v35;

    topBarInsetGuideConstraint = self->_topBarInsetGuideConstraint;
    if (topBarInsetGuideConstraint)
    {
      v38 = [(NSLayoutConstraint *)self->_topBarInsetGuideConstraint container];
      v9 = v38;
      if (v38 != v36)
      {

LABEL_44:
        if (self->_topBarInsetGuideConstraint || self->_bottomBarInsetGuideConstraint)
        {
          v41 = [(UIViewController *)self _useViewBasedTopAndBottomLayoutGuides];
          topLayoutGuide = self->_topLayoutGuide;
          if (v41)
          {
            [(UILayoutSupport *)topLayoutGuide removeFromSuperview];
            [(UILayoutSupport *)self->_bottomLayoutGuide removeFromSuperview];
          }

          else
          {
            _removeLayoutGuide(topLayoutGuide);
            _removeLayoutGuide(self->_bottomLayoutGuide);
          }

          v43 = self->_topLayoutGuide;
          self->_topLayoutGuide = 0;

          bottomLayoutGuide = self->_bottomLayoutGuide;
          self->_bottomLayoutGuide = 0;

          v45 = self->_topBarInsetGuideConstraint;
          self->_topBarInsetGuideConstraint = 0;

          bottomBarInsetGuideConstraint = self->_bottomBarInsetGuideConstraint;
          self->_bottomBarInsetGuideConstraint = 0;

          if (dyld_program_sdk_at_least())
          {
            *&self->_viewControllerFlags &= 0xFFFFE7FFFFFFFFFFLL;
          }
        }

        goto LABEL_52;
      }

      v39 = self->_bottomBarInsetGuideConstraint;
      if (v39)
      {
LABEL_41:
        v40 = [(NSLayoutConstraint *)v39 container];

        if (topBarInsetGuideConstraint)
        {
        }

        if (v40 == v36)
        {
          goto LABEL_52;
        }

        goto LABEL_44;
      }
    }

    else
    {
      v39 = self->_bottomBarInsetGuideConstraint;
      if (v39)
      {
        goto LABEL_41;
      }
    }

LABEL_52:

    goto LABEL_53;
  }

LABEL_62:
}

- (BOOL)_shouldAttemptToPreserveInputViewsForResponder:(id)a3
{
  v4 = a3;
  if (v4 && [(UIResponder *)self _containsResponder:v4])
  {
    v5 = [v4 _window];
    v6 = [v5 screen];

    v7 = [(UIKeyboardMotionSupport *)UIScrollToDismissSupport supportForScreen:v6];
    v8 = v7;
    v9 = !v7 || ([v7 isFinishingDismissTransition] & 1) == 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_viewSubtreeDidGainScrollView:(id)a3 enclosingViewController:(id)a4
{
  v23 = a3;
  v6 = a4;
  v7 = [(UIViewController *)self _contentOrObservableScrollViewForEdge:1];

  if (self)
  {
    if (v7 == v23)
    {
      [(UIViewController *)self _navigationControllerContentInsetAdjustment];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v16 = [(UIViewController *)self navigationInsetAdjustment];
      v17 = [v16 adjustedScrollView];
      v18 = [(UIViewController *)self _contentOrObservableScrollViewForEdge:1];

      if (v17 != v18)
      {
        v19 = [(UIViewController *)self navigationInsetAdjustment];
        [v19 setInsetAdjustment:{0.0, 0.0, 0.0, 0.0}];

        [(UIViewController *)self _setNavigationControllerContentInsetAdjustment:v9, v11, v13, v15];
      }
    }
  }

  v20 = [(UIViewController *)self parentViewController];
  v21 = v20;
  if (v20)
  {
    [v20 _viewSubtreeDidGainScrollView:v23 enclosingViewController:v6];
  }

  else
  {
    v22 = [(UIViewController *)self presentingViewController];
    [v22 _viewSubtreeDidGainScrollView:v23 enclosingViewController:v6];
  }
}

- (void)_recordContentScrollView
{
  [(UIViewController *)self _clearRecordedContentScrollView];
  v3 = [(UIViewController *)self _contentOrObservableScrollViewForEdge:1];
  if (v3)
  {
    obj = v3;
    v4 = [(UIViewController *)self view];

    v3 = obj;
    if (obj != v4)
    {
      objc_storeStrong(&self->_recordedContentScrollView, obj);
      v3 = obj;
    }
  }
}

- (void)_clearRecordedContentScrollView
{
  recordedContentScrollView = self->_recordedContentScrollView;
  self->_recordedContentScrollView = 0;
}

- (void)setContentScrollView:(UIScrollView *)scrollView forEdge:(NSDirectionalRectEdge)edge
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = scrollView;
  v7 = v6;
  v8 = edge & 5;
  if ((edge & 5) != 0)
  {
    v9 = v6;
    v10 = v9;
    if (self)
    {
      if (v9 && !self->_observableScrollViews)
      {
        v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
        observableScrollViews = self->_observableScrollViews;
        self->_observableScrollViews = v11;
      }

      *v14 = MEMORY[0x1E69E9820];
      *&v14[8] = 3221225472;
      *&v14[16] = __50__UIViewController__setContentScrollView_forEdge___block_invoke;
      v15 = &unk_1E71040E0;
      v18 = v8;
      v16 = v10;
      v17 = self;
      __50__UIViewController__setContentScrollView_forEdge___block_invoke(v14, 1);
      (*&v14[16])(v14, 4);
      [(UIViewController *)self _performContentScrollViewUpdatesNotifyingObservers];
    }
  }

  else
  {
    v13 = *(__UILogGetCategoryCachedImpl("ContentScrollView", &setContentScrollView_forEdge____s_category) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v14 = 138412546;
      *&v14[4] = v7;
      *&v14[12] = 2048;
      *&v14[14] = edge;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "setting contentScrollView, %@, ignored for edge value, %ld, not containing NSDirectionalRectEdgeTop or NSDirectionalRectEdgeBottom", v14, 0x16u);
    }
  }
}

- (UIScrollView)contentScrollViewForEdge:(NSDirectionalRectEdge)edge
{
  v5 = MEMORY[0x1E695D940];
  if (edge != 1 && edge != 4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid edge argument for -contentScrollViewForEdge:. Only values of NSDirectionalRectEdgeTop or NSDirectionalRectEdgeBottom are accepted."];
  }

  if (self)
  {
    v6 = 0;
    v7 = 0;
    v16 = *v5;
    v8 = 1;
    v9 = 1;
    do
    {
      v10 = v8;
      if ((*(&xmmword_18A679310 + v6) & edge) != 0)
      {
        observableScrollViews = self->_observableScrollViews;
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
        v13 = [(NSMutableDictionary *)observableScrollViews objectForKey:v12];

        if (v9)
        {
          v14 = v13;

          v7 = v14;
        }

        else if (v7 != v13)
        {
          [MEMORY[0x1E695DF30] raise:v16 format:{@"Multiple scroll views found for edges: %ld", edge}];
        }

        v9 = 0;
      }

      v8 = 0;
      v6 = 1;
    }

    while ((v10 & 1) != 0);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __50__UIViewController__setContentScrollView_forEdge___block_invoke(void *a1, uint64_t a2)
{
  if ((a2 & ~a1[6]) == 0)
  {
    v3 = a1[4];
    v4 = *(a1[5] + 592);
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    v6 = v5;
    if (v3)
    {
      [v4 setObject:v3 forKey:v5];
    }

    else
    {
      [v4 removeObjectForKey:v5];
    }
  }
}

- (void)_setInternalContentScrollView:(id)a3
{
  v5 = a3;
  if (self->_internalContentScrollView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_internalContentScrollView, a3);
    [(UIViewController *)self _performContentScrollViewUpdatesNotifyingObservers];
    v5 = v6;
  }
}

- (void)_observeScrollView:(id)a3 temporaryCoordinatingReplacementDidChange:(id)a4
{
  if (self->_effectiveContentScrollViews)
  {
    [(UIViewController *)self _performContentScrollViewUpdatesNotifyingObservers];
  }
}

- (void)_setExistingNavigationItem:(id)a3
{
  v5 = a3;
  if (self->_navigationItem != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_navigationItem, a3);
    v5 = v6;
  }
}

- (void)_setExistingTabBarItem:(id)a3
{
  v5 = a3;
  if (self->_tabBarItem != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_tabBarItem, a3);
    v5 = v6;
  }
}

- (void)window:(id)a3 willAnimateFromContentFrame:(CGRect)a4 toContentFrame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4.size.height;
  v10 = a4.size.width;
  v11 = a4.origin.y;
  v12 = a4.origin.x;
  v15 = [(UIViewController *)self _visibleView];
  [v15 frame];
  v18.origin.x = v12;
  v18.origin.y = v11;
  v18.size.width = v10;
  v18.size.height = v9;
  if (CGRectEqualToRect(v17, v18))
  {
    [v15 setFrame:{x, y, width, height}];
  }

  v14 = [(UIViewController *)self viewControllerForRotation];
  [v14 _updateLayoutForStatusBarAndInterfaceOrientation];
}

- (void)window:(id)a3 statusBarWillChangeFromHeight:(double)a4 toHeight:(double)a5
{
  v36 = a3;
  v6 = [(UIViewController *)self _viewControllerForRotation];
  v7 = [v6 _existingView];
  if (v7)
  {
    v8 = v7;
    while (1)
    {
      v9 = v36;
      v10 = v6;
      v11 = v10;
      if (self)
      {
        break;
      }

LABEL_17:

      v6 = _nextWindowSizedViewController(v11);

      v35 = [v6 _existingView];

      v8 = v35;
      if (!v35)
      {
        goto LABEL_18;
      }
    }

    v12 = [v10 _existingView];
    v13 = [v11 _existingPresentationControllerImmediate:0 effective:1];
    v14 = [v13 containerView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = 0;
    }

    else
    {
      if (!v14 || ![v12 isDescendantOfView:v14])
      {
        goto LABEL_10;
      }

      v15 = v14;
      v14 = v12;
      v12 = v15;
    }

    v14 = v15;
LABEL_10:
    v16 = [v12 window];
    if (v16)
    {
      v17 = v16;
      v18 = [v9 screen];
      v19 = [v18 _isEmbeddedScreen];

      if (v19)
      {
        [v9 frame];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v28 = [v9 screen];
        [v28 bounds];
        v39.origin.x = v29;
        v39.origin.y = v30;
        v39.size.width = v31;
        v39.size.height = v32;
        v38.origin.x = v21;
        v38.origin.y = v23;
        v38.size.width = v25;
        v38.size.height = v27;
        v33 = CGRectEqualToRect(v38, v39);

        if (v33)
        {
          v34 = [v9 windowScene];
          [v34 _interfaceOrientation];
        }

        if (([v11 _freezeLayoutForOrientationChangeOnDismissal] & 1) == 0)
        {
          [v11 _updateLayoutForStatusBarAndInterfaceOrientation];
        }
      }
    }

    goto LABEL_17;
  }

LABEL_18:
}

- (void)_sceneSettingsSafeAreaInsetsDidChangeForWindow:(id)a3
{
  v3 = [(UIViewController *)self _viewControllerForRotation];
  v4 = [v3 _existingView];
  if (v4)
  {
    v5 = v4;
    do
    {
      [(UIViewController *)v3 _recursiveUpdateContentOverlayInsetsFromParentIfNecessary];
      if (dyld_program_sdk_at_least())
      {
        [v3 presentedViewController];
      }

      else
      {
        _nextWindowSizedViewController(v3);
      }
      v7 = ;

      v6 = [v7 _existingView];

      v5 = v6;
      v3 = v7;
    }

    while (v6);
  }

  else
  {
    v7 = v3;
  }
}

- (void)_setFreezeLayoutForOrientationChangeOnDismissal:(BOOL)a3
{
  v3 = a3;
  if ([(UIViewController *)self _allowsFreezeLayoutForOrientationChangeOnDismissal])
  {
    v5 = 0x2000000000000;
    if (!v3)
    {
      v5 = 0;
    }

    *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFDFFFFFFFFFFFFLL | v5;
  }
}

- (void)_updateControlledViewsToFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(UIViewController *)self view];
  [v7 setFrame:{x, y, width, height}];
}

- (void)setAutoresizesArchivedViewToFullSize:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFFFFFFFFDFLL | v3;
}

+ (int)_keyboardDirectionForTransition:(int)a3
{
  if (a3 > 0x12)
  {
    return 0;
  }

  if (((1 << a3) & 0x41300) == 0)
  {
    if (a3 == 1)
    {
      return 4;
    }

    if (a3 == 2)
    {
      return 5;
    }

    return 0;
  }

  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

+ (int64_t)_keyboardAnimationTypeForTransition:(int)a3
{
  v3 = 4;
  if (a3 != 2)
  {
    v3 = 1;
  }

  if (a3 == 1)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

- (void)performSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = identifier;
  v7 = sender;
  v21 = v6;
  if (!self)
  {

    goto LABEL_17;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [(UIViewController *)self storyboardSegueTemplates];
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = *v23;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v12 identifier];
        v14 = [v13 isEqualToString:v21];

        if (v14)
        {
          v9 = v12;
          goto LABEL_12;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  if (!v9)
  {
LABEL_17:
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Receiver (%@) has no segue with identifier '%@'", self, v21];
    v19 = [v16 exceptionWithName:v17 reason:v18 userInfo:0];
    v20 = v19;

    objc_exception_throw(v19);
  }

  v15 = [v9 _perform:v7];
}

+ (BOOL)_shouldUseLegacyUnwindDestinationSearch
{
  if (qword_1ED498600 != -1)
  {
    dispatch_once(&qword_1ED498600, &__block_literal_global_557);
  }

  if (!dyld_program_sdk_at_least())
  {
    return 1;
  }

  if (qword_1ED4985F0 == a1 || qword_1ED4985F8 == a1)
  {
    return 0;
  }

  v5 = [a1 superclass];
  if ([a1 doesOverrideViewControllerMethod:qword_1ED4985E0 inBaseClass:v5] && !objc_msgSend(a1, "doesOverrideViewControllerMethod:inBaseClass:", qword_1ED4985E8, v5))
  {
    return 1;
  }

  return [v5 _shouldUseLegacyUnwindDestinationSearch];
}

uint64_t __59__UIViewController__shouldUseLegacyUnwindDestinationSearch__block_invoke()
{
  qword_1ED4985E0 = sel_viewControllerForUnwindSegueAction_fromViewController_withSender_;
  qword_1ED4985E8 = sel_allowedChildViewControllersForUnwindingFromSource_;
  qword_1ED4985F0 = objc_opt_class();
  result = objc_opt_class();
  qword_1ED4985F8 = result;
  return result;
}

- (id)_destinationForUnwindingFromSource:(id)a3 visitedViewControllers:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([objc_opt_class() _shouldUseLegacyUnwindDestinationSearch])
  {
    v8 = [v6 unwindAction];
    v9 = [v6 sourceViewController];
    v10 = [v6 sender];
    v11 = [(UIViewController *)self viewControllerForUnwindSegueAction:v8 fromViewController:v9 withSender:v10];
  }

  else
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v13 = [v7 containsObject:self];
    if (has_internal_diagnostics)
    {
      if (v13)
      {
        v26 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v34 = self;
          _os_log_fault_impl(&dword_188A29000, v26, OS_LOG_TYPE_FAULT, "Should not have recursed into %@ since it was already visited", buf, 0xCu);
        }
      }
    }

    else if (v13)
    {
      v27 = *(__UILogGetCategoryCachedImpl("Assert", &_destinationForUnwindingFromSource_visitedViewControllers____s_category) + 8);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = self;
        _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_ERROR, "Should not have recursed into %@ since it was already visited", buf, 0xCu);
      }
    }

    [v7 addObject:self];
    v14 = [(UIViewController *)self childModalViewController];
    if (!v14 || ([v7 containsObject:v14] & 1) != 0 || (objc_msgSend(v14, "_destinationForUnwindingFromSource:visitedViewControllers:", v6, v7), (v11 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v15 = [(UIViewController *)self allowedChildViewControllersForUnwindingFromSource:v6, 0];
      v16 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v29;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v29 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v28 + 1) + 8 * i);
            if (([v7 containsObject:v20] & 1) == 0)
            {
              v21 = [v20 _destinationForUnwindingFromSource:v6 visitedViewControllers:v7];
              if (v21)
              {
                v11 = v21;
                goto LABEL_22;
              }
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v22 = [v6 unwindAction];
      v15 = [v6 sourceViewController];
      v23 = [v6 sender];
      if ([(UIViewController *)self _canPerformUnwindSegueAction:v22 fromViewController:v15 sender:v23])
      {
        v24 = self;
      }

      else
      {
        v24 = 0;
      }

      v11 = v24;

LABEL_22:
    }
  }

  return v11;
}

- (NSArray)allowedChildViewControllersForUnwindingFromSource:(UIStoryboardUnwindSegueSource *)source
{
  v4 = source;
  v5 = objc_opt_new();
  v6 = [(UIViewController *)self childViewControllerContainingSegueSource:v4];

  childViewControllers = self->_childViewControllers;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__UIViewController_allowedChildViewControllersForUnwindingFromSource___block_invoke;
  v13[3] = &unk_1E7102E98;
  v14 = v6;
  v8 = v5;
  v15 = v8;
  v9 = v6;
  [(NSMutableArray *)childViewControllers enumerateObjectsUsingBlock:v13];
  v10 = v15;
  v11 = v8;

  return v8;
}

uint64_t __70__UIViewController_allowedChildViewControllersForUnwindingFromSource___block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 32) != a2)
  {
    return [*(result + 40) addObject:a2];
  }

  return result;
}

- (UIViewController)viewControllerForUnwindSegueAction:(SEL)action fromViewController:(UIViewController *)fromViewController withSender:(id)sender
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = fromViewController;
  v9 = sender;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [(UIViewController *)self childViewControllers];
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v19 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v18 + 1) + 8 * v14);
      if ([v15 _canPerformUnwindSegueAction:action fromViewController:v8 sender:v9])
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v16 = v15;

    if (v16)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_9:
  }

  if ([(UIViewController *)self _canPerformUnwindSegueAction:action fromViewController:v8 sender:v9])
  {
    v16 = self;
  }

  else
  {
    v16 = 0;
  }

LABEL_14:

  return v16;
}

- (BOOL)_canPerformUnwindSegueAction:(SEL)a3 fromViewController:(id)a4 sender:(id)a5
{
  v8 = a5;
  v9 = a4;
  if ([objc_opt_class() doesOverrideViewControllerMethod:sel_canPerformUnwindSegueAction_fromViewController_sender_])
  {
    v10 = [(UIViewController *)self canPerformUnwindSegueAction:a3 fromViewController:v9 sender:v8];
  }

  else
  {
    v10 = [(UIViewController *)self canPerformUnwindSegueAction:a3 fromViewController:v9 withSender:v8];
  }

  v11 = v10;

  return v11;
}

- (BOOL)canPerformUnwindSegueAction:(SEL)action fromViewController:(UIViewController *)fromViewController sender:(id)sender
{
  if (fromViewController == self)
  {
    v5 = 0;
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
  }

  return v5 & 1;
}

- (UIStoryboardSegue)segueForUnwindingToViewController:(UIViewController *)toViewController fromViewController:(UIViewController *)fromViewController identifier:(NSString *)identifier
{
  v8 = identifier;
  v9 = fromViewController;
  v10 = toViewController;
  v11 = _UIFirstPopoverSeguePresentedControllerInUnwindingResponderChain(v9, self);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__UIViewController_segueForUnwindingToViewController_fromViewController_identifier___block_invoke;
  v15[3] = &unk_1E70F35B8;
  v16 = v11;
  v17 = self;
  v12 = v11;
  v13 = [UIStoryboardSegue segueWithIdentifier:v8 source:v9 destination:v10 performHandler:v15];

  return v13;
}

void __84__UIViewController_segueForUnwindingToViewController_fromViewController_identifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 _popoverController];
    [v3 dismissPopoverAnimated:1];
  }

  v4 = [*(a1 + 40) presentedViewController];

  if (v4)
  {
    v6 = [*(a1 + 40) presentedViewController];
    v5 = [v6 presentingViewController];
    [v5 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)setTitle:(NSString *)title
{
  v4 = title;
  if (self->_title != v4)
  {
    v11 = v4;
    v5 = [(NSString *)v4 copy];
    v6 = self->_title;
    self->_title = v5;

    v7 = [(UIViewController *)self _existingNavigationItem];
    [v7 setTitle:v11];

    if (!dyld_program_sdk_at_least() || ([(UIViewController *)self tab], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
    {
      v9 = [(UIViewController *)self _existingTabBarItem];
      [v9 setTitle:v11];
    }

    v10 = [(UIViewController *)self parentViewController];
    [v10 updateTitleForViewController:self];

    v4 = v11;
  }
}

- (void)_enumerateAncestorViewControllersUntilStop:(BOOL *)a3 usingBlock:(id)a4
{
  v8 = a4;
  v6 = [(UIViewController *)self parentViewController];
  v7 = v6;
  if (v6)
  {
    [v6 _enumerateAncestorViewControllersUntilStop:a3 usingBlock:v8];
  }

  if (!*a3)
  {
    v8[2](v8, self, a3);
  }
}

- (void)_enumerateVisibleChildControllers:(void *)a1 includePresentedChildren:(int)a2 usingBlock:(void *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a1)
  {
    v23 = 0;
    v6 = [a1 _existingView];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [a1 childViewControllers];
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (!v8)
    {
      goto LABEL_26;
    }

    v9 = v8;
    v10 = *v20;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        v13 = v12;
        if (a2)
        {
          v14 = [v12 childModalViewController];

          if (v14)
          {
            v15 = [v13 childModalViewController];
            if (v15)
            {
              v16 = v15;
              do
              {
                v17 = v16;

                v16 = [v17 childModalViewController];

                v13 = v17;
              }

              while (v16);
            }

            else
            {
              v17 = v13;
            }

            if ([v17 modalPresentationStyle] != 3 && objc_msgSend(v17, "modalPresentationStyle") != 15)
            {
              v13 = 0;
              goto LABEL_22;
            }

            v13 = v17;
          }
        }

        if (!v13)
        {
          goto LABEL_23;
        }

        v17 = [v13 _existingView];
        if ([v17 isDescendantOfView:v6] && (objc_msgSend(v17, "isHidden") & 1) == 0)
        {
          v5[2](v5, v13, &v23);
        }

LABEL_22:

LABEL_23:
        v18 = v23;

        if (v18)
        {
          goto LABEL_26;
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (!v9)
      {
LABEL_26:

        break;
      }
    }
  }
}

- (void)_removeChildViewController:(id)a3
{
  v7 = a3;
  v4 = [(UIViewController *)v7 _parentViewController];

  v5 = v7;
  if (v7 && v4 == self)
  {
    v6 = *(v7 + 192);
    *(v7 + 192) = v6 | 0x100;
    [v7 setParentViewController:0];
    v5 = v7;
    *(v7 + 192) = v7[48] & 0xFEFF | v6 & 0x100;
  }
}

- (void)_addChildViewController:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (v4 && (*(v4 + 376) & 0x80) != 0)
  {
    v5 = [v4 _existingView];
    v6 = [v5 window];

    if (v6)
    {
      [MEMORY[0x1E695DF30] raise:@"UIViewControllerHierarchyInconsistency" format:{@"adding a root view controller %@ as a child of view controller:%@", v10, self}];
    }

    v4 = v10;
    *(v10 + 47) &= ~0x80uLL;
  }

  if (!self->_childViewControllers)
  {
    v7 = objc_opt_new();
    childViewControllers = self->_childViewControllers;
    self->_childViewControllers = v7;

    v4 = v10;
  }

  if (v4)
  {
    v9 = *(v4 + 192);
    *(v4 + 192) = v9 | 0x100;
    [v10 setParentViewController:self];
    v4 = v10;
    *(v10 + 192) = *(v10 + 192) & 0xFEFF | v9 & 0x100;
  }
}

- (void)_addChildViewController:(id)a3 performHierarchyCheck:(BOOL)a4 notifyWillMove:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v20 = v8;
  if (!v6)
  {
    goto LABEL_8;
  }

  v9 = [v8 parentViewController];
  if (!v9)
  {
    v16 = [v20 _existingView];
    v17 = [v16 window];

    if (!v17)
    {
      goto LABEL_4;
    }

    v18 = [v20 _existingView];
    v19 = [v18 superview];
    v9 = [v19 _viewControllerForAncestor];

    if (v9 && v9 != self)
    {
      [MEMORY[0x1E695DF30] raise:@"UIViewControllerHierarchyInconsistency" format:{@"child view controller:%@ should have parent view controller:%@ but requested parent is:%@", v20, v9, self}];
    }
  }

LABEL_4:
  if (dyld_program_sdk_at_least())
  {
    v10 = [(UIViewController *)self presentedViewController];

    if (v20)
    {
      if (v10 == v20)
      {
        [MEMORY[0x1E695DF30] raise:@"UIViewControllerHierarchyInconsistency" format:{@"trying to add child view controller that is already presented: %@", v20}];
      }
    }
  }

LABEL_8:
  v11 = [(UIViewController *)self _window];
  v12 = [v11 screen];

  [v20 __willChangeToIdiom:objc_msgSend(v12 onScreen:{"_userInterfaceIdiom"), v12}];
  v13 = [v20 parentViewController];

  if (v13)
  {
    [v20 willMoveToParentViewController:0];
    [v20 removeFromParentViewController];
  }

  [(UIViewController *)self _addChildViewController:v20];
  [(NSMutableArray *)self->_childViewControllers addObject:v20];
  [(UIResponder *)self _didChangeDeepestActionResponder];
  if (_UISolariumEnabled() && ([UIApp _isSpringBoard] & 1) == 0 && -[NSMutableArray count](self->_childViewControllers, "count") <= 2)
  {
    [(UIViewController *)self setNeedsStatusBarAppearanceUpdate];
  }

  if (v5)
  {
    [v20 willMoveToParentViewController:self];
  }

  if (dyld_program_sdk_at_least())
  {
    v14 = [(UIViewController *)self navigationController];
    [v14 _viewControllerSubtreeDidGainViewController:self];
  }

  v15 = [(UIViewController *)self _splitViewControllerEnforcingClass:1];
  [v15 _viewControllerChildViewControllersDidChange:self];
}

- (void)removeChildViewController:(id)a3 notifyDidMove:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(NSMutableArray *)self->_childViewControllers removeObjectIdenticalTo:v6];
  [(UIViewController *)self _removeChildViewController:v6];
  [(UIResponder *)self _didChangeDeepestActionResponder];
  if (_UISolariumEnabled() && ([UIApp _isSpringBoard] & 1) == 0 && -[NSMutableArray count](self->_childViewControllers, "count") <= 1)
  {
    [(UIViewController *)self setNeedsStatusBarAppearanceUpdate];
  }

  v7 = [(UIViewController *)self _splitViewControllerEnforcingClass:1];
  [v7 _viewControllerChildViewControllersDidChange:self];

  if (v4)
  {
    [v6 didMoveToParentViewController:0];
  }

  if ((dyld_program_sdk_at_least() & 1) == 0 && [(UIViewController *)self allowsWeakReference])
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__UIViewController_removeChildViewController_notifyDidMove___block_invoke;
    v8[3] = &unk_1E70F5A28;
    objc_copyWeak(&v9, &location);
    dispatch_async(MEMORY[0x1E69E96A0], v8);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __60__UIViewController_removeChildViewController_notifyDidMove___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsUpdateOfSupportedInterfaceOrientations];
}

- (void)setParentViewController:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((*(&self->_viewControllerFlags + 4) & 0x100) == 0)
  {
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __44__UIViewController_setParentViewController___block_invoke;
    v14 = &unk_1E70F35B8;
    v15 = self;
    v6 = v4;
    v16 = v6;
    if (qword_1ED498608 != -1)
    {
      dispatch_once(&qword_1ED498608, &v11);
    }

    if (!v6)
    {
      goto LABEL_11;
    }

    v7 = objc_getAssociatedObject(v6, &unk_1ED498597);
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = [[_UIUnsafeUnretainedCleanupHelper alloc] initWithParent:v6 deallocationHandler:&__block_literal_global_582_0];
      objc_setAssociatedObject(v6, &unk_1ED498597, v8, 1);
      if (!v8)
      {
LABEL_10:

LABEL_11:
        v9 = self;
        v10 = v6;
        goto LABEL_12;
      }
    }

    [v8[3] addObject:{self, v11, v12, v13, v14, v15}];
    goto LABEL_10;
  }

  v9 = self;
  v10 = v5;
LABEL_12:
  [(UIViewController *)v9 __setParentViewController:v10];
}

- (void)__setParentViewController:(uint64_t)a1
{
  v3 = a2;
  if (a1 && *(a1 + 96) != v3)
  {
    *(a1 + 96) = v3;
    v8 = v3;
    v4 = v3;
    if (_UIViewControllersInheritTraitsFromViewHierarchy())
    {
      if (v4 && ([v4 overrideTraitCollectionForChildViewController:a1], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v6 = v5;
        [(UIViewController *)a1 _applyCompatibilityTraitOverridesForOverrideTraitCollection:v5];
      }

      else
      {
        v6 = [(UIViewController *)a1 _compatibilityTraitOverridesFromParentViewControllerCreateIfNecessary:?];
        if (v6)
        {
          v7 = +[UITraitCollection _emptyTraitCollection];
          [(_UITraitOverrides *)v6 _replaceOverrideTraitCollection:v7];
        }
      }
    }

    v3 = v8;
  }
}

void __44__UIViewController_setParentViewController___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    v2 = *(__UILogGetCategoryCachedImpl("ViewController", &_UIInternalPreference_ViewControllersInheritTraitsFromViewHierarchy_block_invoke_5___s_category) + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      v5 = 138412546;
      v6 = v3;
      v7 = 2112;
      v8 = v4;
      _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Deprecated -setParentViewController: SPI called on UIViewController, which is dangerous and causes undefined behavior. This setter does not properly establish the bidirectional parent-child relationship; use the -addChildViewController: and -removeFromParentViewController APIs to manage view controller containment. Make a symbolic breakpoint at [UIViewController setParentViewController:] to catch this in the debugger. Child: %@; Parent: %@", &v5, 0x16u);
    }
  }
}

void __44__UIViewController_setParentViewController___block_invoke_579(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        if (*(v9 + 96) == a2)
        {
          if (!os_variant_has_internal_diagnostics())
          {
LABEL_8:
            *(v9 + 96) = 0;
            goto LABEL_9;
          }

          if (os_variant_has_internal_diagnostics())
          {
            v11 = __UIFaultDebugAssertLog();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
            {
              v13 = objc_opt_class();
              v16 = NSStringFromClass(v13);
              *buf = 138412802;
              v22 = v16;
              v23 = 2048;
              v24 = a2;
              v25 = 2112;
              v26 = v9;
              _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF UIKIT: Parent view controller <%@: %p> is deallocating with one or more children still referencing it, due to use of deprecated [UIViewController setParentViewController:] SPI in client code. Please stop calling this deprecated SPI. Child with stale reference: %@", buf, 0x20u);
            }
          }

          else
          {
            v10 = *(__UILogGetCategoryCachedImpl("Assert", &_UIInternalPreference_ViewControllersInheritTraitsFromViewHierarchy_block_invoke_6___s_category) + 8);
            if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_8;
            }

            v11 = v10;
            v12 = objc_opt_class();
            v15 = NSStringFromClass(v12);
            *buf = 138412802;
            v22 = v15;
            v23 = 2048;
            v24 = a2;
            v25 = 2112;
            v26 = v9;
            _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "BUG IN CLIENT OF UIKIT: Parent view controller <%@: %p> is deallocating with one or more children still referencing it, due to use of deprecated [UIViewController setParentViewController:] SPI in client code. Please stop calling this deprecated SPI. Child with stale reference: %@", buf, 0x20u);
          }

          goto LABEL_8;
        }

LABEL_9:
        ++v8;
      }

      while (v6 != v8);
      v14 = [v4 countByEnumeratingWithState:&v17 objects:v27 count:16];
      v6 = v14;
    }

    while (v14);
  }
}

- (id)_ancestorViewController
{
  v1 = a1;
  if (a1)
  {
    v2 = a1[12];
    v3 = v2;
    if (!v2)
    {
      v3 = v1[14];
    }

    v1 = v3;
  }

  return v1;
}

- (id)_nonModalAncestorViewControllerStopAtIsPresentationContext:(BOOL)a3
{
  v3 = a3;
  parentViewController = self;
  if (!a3)
  {
    parentViewController = self->_parentViewController;
  }

  v6 = parentViewController;
  if (v6)
  {
    v7 = v6;
    while (1)
    {
      v8 = v7->_parentViewController;
      if (!v8)
      {
        break;
      }

      v9 = v8;
      if (v3)
      {
        v10 = [(UIViewController *)v7 definesPresentationContext];

        if (v10)
        {
          break;
        }
      }

      else
      {
      }

      v11 = v7->_parentViewController;

      v7 = v11;
      if (!v11)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v7 = self;
  }

  return v7;
}

- (id)_rootAncestorViewControllerInWindow:(void *)a1
{
  if (a1)
  {
    v3 = [a1 _nonModalAncestorViewController];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
      do
      {
        if (a2 && ([v5 _isRootViewController] & 1) != 0)
        {
          break;
        }

        v6 = [v5 _parentModalViewController];

        if (!v6)
        {
          break;
        }

        v7 = [v5 _parentModalViewController];

        v5 = v7;
      }

      while (v7);
    }

    else
    {
      v5 = 0;
    }

    v8 = [v5 parentViewController];
    if (v8 && (v9 = v8, v10 = dyld_program_sdk_at_least(), v9, (v10 & 1) != 0))
    {
      v11 = [v5 _rootAncestorViewController];
    }

    else
    {
      v11 = v5;
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_viewsWithDisabledInteractionGivenTransitionContext:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = self->_childViewControllers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v36;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        v12 = [v11 _existingView];
        v13 = [v12 _isInAWindow];

        if (v13)
        {
          v14 = [v11 _viewsWithDisabledInteractionGivenTransitionContext:v4];
          v15 = v8;
          v16 = v14;
          v17 = v16;
          if (v15)
          {
            [v15 addObjectsFromArray:v16];
            v17 = v15;
          }

          v8 = v17;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v18 = self->_childModalViewControllers;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v32;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v31 + 1) + 8 * j);
        v24 = [v23 _existingView];
        v25 = [v24 _isInAWindow];

        if (v25)
        {
          v26 = [v23 _viewsWithDisabledInteractionGivenTransitionContext:v4];
          v27 = v8;
          v28 = v26;
          v29 = v28;
          if (v27)
          {
            [v27 addObjectsFromArray:v28];
            v29 = v27;
          }

          v8 = v29;
        }
      }

      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v20);
  }

  return v8;
}

- (uint64_t)_isPresentingInWindow:(void *)a1
{
  v3 = a2;
  if (a1 && ([a1 presentedViewController], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    while (1)
    {
      if ([v5 isViewLoaded])
      {
        v6 = [v5 view];
        v7 = [v6 window];

        if (v7 == v3)
        {
          break;
        }
      }

      v8 = [v5 presentedViewController];

      v5 = v8;
      if (!v8)
      {
        goto LABEL_10;
      }
    }

    v8 = 1;
LABEL_10:
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_modalPresenterForPresentationController:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 _initialPresentationViewControllerForViewController:a1];
    v6 = [v5 _nonModalAncestorViewControllerStopAtIsPresentationContext:{objc_msgSend(v4, "_shouldRespectDefinesPresentationContext")}];
    if ([v4 shouldPresentInFullscreen])
    {
      v7 = v6;
      v8 = v7;
      if (v7)
      {
        v9 = [v7 _parentModalViewController];
        v10 = v8;
        if (v9)
        {
          v11 = v8;
          do
          {
            v10 = v9;

            v9 = [v10 _parentModalViewController];
            v11 = v10;
          }

          while (v9);
        }
      }

      else
      {
        v10 = 0;
      }

      v12 = [(UIViewController *)v10 _parentViewController];
      if (v12)
      {
        v13 = v12;
        v14 = [(UIViewController *)v12 _modalPresenterForPresentationController:v4];

LABEL_17:
        goto LABEL_18;
      }
    }

    v10 = [(UIViewController *)v6 _appearingOrAppearedChildModalViewController];
    while ([v6 _mayForwardPresentationsToPresentedViewController] && v10)
    {
      v15 = v6;
      v6 = v10;

      v10 = [(UIViewController *)v6 _appearingOrAppearedChildModalViewController];
    }

    v8 = v6;
    v14 = v8;
    goto LABEL_17;
  }

  v14 = 0;
LABEL_18:

  return v14;
}

- (id)_modalPresenter:(void *)a1
{
  v5 = 0;
  if (a2 <= 14)
  {
    if (a2 != 3 && a2 != 6)
    {
      goto LABEL_9;
    }

LABEL_8:
    v2 = [a1 _popoverController];
    v5 = v2 == 0;
    goto LABEL_9;
  }

  if (a2 == 18)
  {
    goto LABEL_8;
  }

  if (a2 == 15)
  {
    v6 = a1;
    goto LABEL_24;
  }

LABEL_9:
  v7 = [a1 _nonModalAncestorViewControllerStopAtIsPresentationContext:v5];
  if (a2 > 0x12)
  {
    goto LABEL_22;
  }

  if (((1 << a2) & 0x10007) == 0)
  {
    if (((1 << a2) & 0x40048) == 0)
    {
      goto LABEL_22;
    }

    if (a2 != 16)
    {
      goto LABEL_22;
    }
  }

  v8 = v7;
  if (v8)
  {
    v9 = v8;
    v10 = [v8 _parentModalViewController];
    if (v10)
    {
      do
      {
        v11 = v10;

        v10 = [v11 _parentModalViewController];
        v9 = v11;
      }

      while (v10);
    }

    else
    {
      v11 = v9;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = [(UIViewController *)v11 _parentViewController];
  if (!v12)
  {

LABEL_22:
    v6 = v7;
    goto LABEL_23;
  }

  v13 = v12;
  v6 = [(UIViewController *)v12 _modalPresenter:a2];

LABEL_23:
LABEL_24:

  return v6;
}

- (id)_ancestorViewControllerOfClass:(uint64_t)a3 allowModalParent:
{
  if (a1)
  {
    v6 = *(a1 + 96);
    v7 = v6;
    if (a3 && !v6)
    {
      v7 = *(a1 + 112);
    }

    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = [(UIViewController *)v7 _ancestorViewControllerOfClass:a2 allowModalParent:a3];
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_previousRootViewController
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 15);
    v1 = vars8;
  }

  return WeakRetained;
}

- (BOOL)_shouldOverlayTabBar
{
  if ([(NSMutableArray *)self->_childViewControllers count]!= 1)
  {
    return 0;
  }

  v3 = [(NSMutableArray *)self->_childViewControllers firstObject];
  v4 = [v3 _shouldOverlayTabBar];

  return v4;
}

- (id)_hostingSplitViewControllerForTabBar
{
  if ([(NSMutableArray *)self->_childViewControllers count]== 1)
  {
    v3 = [(NSMutableArray *)self->_childViewControllers firstObject];
    v4 = [v3 _hostingSplitViewControllerForTabBar];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setContainmentSupport:(BOOL)a3
{
  v3 = 0x80000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFFFFF7FFFFLL | v3;
}

- (BOOL)_forwardRotationMethods
{
  if ([objc_opt_class() doesOverrideViewControllerMethod:sel_shouldAutomaticallyForwardRotationMethods])
  {

    return [(UIViewController *)self shouldAutomaticallyForwardRotationMethods];
  }

  else
  {

    return [(UIViewController *)self automaticallyForwardAppearanceAndRotationMethodsToChildViewControllers];
  }
}

- (void)setInAnimatedVCTransition:(BOOL)a3
{
  v3 = 0x200000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFFFFDFFFFFLL | v3;
}

- (void)_setViewAppearState:(uint64_t)a3 isAnimating:
{
  if (!a1)
  {
    return;
  }

  if ((*(a1 + 379) & 4) != 0)
  {
    goto LABEL_65;
  }

  v6 = [a1 _existingView];
  v7 = [v6 window];
  if (v7 || ([a1 isPerformingModalTransition] & 1) != 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v34 = [a1 childModalViewController];
  if (!v34)
  {
    goto LABEL_6;
  }

  v35 = v34;
  v36 = [a1 childModalViewController];
  v37 = [v36 modalPresentationStyle];

  if (v37 != 3)
  {
LABEL_7:
    LODWORD(v58) = *(a1 + 376);
    v8 = [a1 _forwardAppearanceMethods];
    if (v8)
    {
      v9 = [a1 _existingView];
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    if (a2 != 1)
    {
      [(UIViewController *)a1 __viewIsAppearing:a3 skipWindowCheck:1];
    }

    *(a1 + 376) = *(a1 + 376) & 0xFFFFFFFFFFFFFFFCLL | a2 & 3 | 0x100000;
    v11 = _UISetCurrentFallbackEnvironment(a1);
    v12 = [a1 childModalViewController];
    if (v12)
    {
      v13 = v12;
      v14 = [a1 childModalViewController];
      if ([v14 modalPresentationStyle] == 6)
      {
        v15 = [a1 childModalViewController];
        v16 = [v15 inExplicitAppearanceTransition];

        if (v16)
        {
          goto LABEL_18;
        }

        v13 = [a1 childModalViewController];
        [(UIViewController *)v13 _setViewAppearState:a2 isAnimating:a3];
      }

      else
      {
      }
    }

LABEL_18:
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        if (*(a1 + 248))
        {
          v31 = [MEMORY[0x1E696AE30] processInfo];
          [v31 endActivity:*(a1 + 248)];

          v32 = *(a1 + 248);
          *(a1 + 248) = 0;
        }

        [a1 viewDidAppear:a3];
        v33 = [a1 _embeddedDelegate];

        if (!v33)
        {
          goto LABEL_56;
        }

        v30 = [a1 _embeddedDelegate];
        [v30 viewController:a1 viewDidAppear:a3];
      }

      else
      {
        if (a2 != 3)
        {
          goto LABEL_56;
        }

        if (a3 && [(UIViewController *)a1 _shouldTrackAppearStateChange])
        {
          v22 = [MEMORY[0x1E696AE30] processInfo];
          v23 = [a1 _effectiveInteractionActivityTrackingBaseName];
          v24 = [v23 stringByAppendingString:@"-Disappearing"];
          v25 = [v22 beginActivityWithOptions:0x200000000000 reason:v24];
          v26 = *(a1 + 248);
          *(a1 + 248) = v25;
        }

        else
        {
          v22 = *(a1 + 248);
          *(a1 + 248) = 0;
        }

        [a1 viewWillDisappear:a3];
        v45 = [a1 _ornamentDelegate];

        if (v45)
        {
          v46 = [a1 _ornamentDelegate];
          [v46 viewController:a1 viewWillDisappear:a3];
        }

        v47 = [a1 _embeddedDelegate];

        if (!v47)
        {
          goto LABEL_56;
        }

        v30 = [a1 _embeddedDelegate];
        [v30 viewController:a1 viewWillDisappear:a3];
      }
    }

    else if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_56;
      }

      if (a3 && [(UIViewController *)a1 _shouldTrackAppearStateChange])
      {
        v17 = [MEMORY[0x1E696AE30] processInfo];
        v18 = [a1 _effectiveInteractionActivityTrackingBaseName];
        v19 = [v18 stringByAppendingString:@"-Appearing"];
        v20 = [v17 beginActivityWithOptions:0x200000000000 reason:v19];
        v21 = *(a1 + 248);
        *(a1 + 248) = v20;
      }

      else
      {
        v17 = *(a1 + 248);
        *(a1 + 248) = 0;
      }

      [a1 viewWillAppear:a3];
      v38 = [a1 _ornamentDelegate];

      if (v38)
      {
        v39 = [a1 _ornamentDelegate];
        [v39 viewController:a1 viewWillAppear:a3];
      }

      v40 = [a1 _embeddedDelegate];

      if (v40)
      {
        v41 = [a1 _embeddedDelegate];
        [v41 viewController:a1 viewWillAppear:a3];
      }

      *(a1 + 376) |= 0x40000000000000uLL;
      v42 = *(a1 + 512);
      if (!v42)
      {
        goto LABEL_56;
      }

      v43 = [v42 presentedViewController];
      v44 = [v43 _hasAppeared];

      if (!v44)
      {
        goto LABEL_56;
      }

      v30 = [*(a1 + 512) containerView];
      [v30 setNeedsLayout];
    }

    else
    {
      if (*(a1 + 248))
      {
        v27 = [MEMORY[0x1E696AE30] processInfo];
        [v27 endActivity:*(a1 + 248)];

        v28 = *(a1 + 248);
        *(a1 + 248) = 0;
      }

      [a1 viewDidDisappear:a3];
      v29 = [a1 _embeddedDelegate];

      if (!v29)
      {
        goto LABEL_56;
      }

      v30 = [a1 _embeddedDelegate];
      [v30 viewController:a1 viewDidDisappear:a3];
    }

LABEL_56:
    _UIRestorePreviousFallbackEnvironment(v11);
    v48 = *(a1 + 376);
    *(a1 + 376) = v48 & 0xFFFFFFFFFFEFFFFFLL;
    if ((a2 & 0xFFFFFFFD) == 0 && (v48 & 0x8000000) != 0)
    {
      v49 = [a1 parentViewController];
      [a1 didMoveToParentViewController:v49];
    }

    if (v8)
    {
      if ([a1 childViewControllersCount])
      {
        v50 = [a1 childViewControllers];
      }

      else
      {
        v50 = 0;
      }

      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __52__UIViewController__setViewAppearState_isAnimating___block_invoke;
      v61[3] = &unk_1E7104128;
      v63 = v59 & 3;
      v64 = a2;
      v65 = a3;
      v62 = v10;
      [v50 enumerateObjectsUsingBlock:v61];
    }

LABEL_65:
    v51 = *(a1 + 24);
    if (v51)
    {
      v52 = v51[11];
      if ((v52 & 0x200000000000000) != 0)
      {
        if (a2 != 3 && a2)
        {
          if ((*(a1 + 379) & 0x80) != 0)
          {
            [v51 _setNeedsUpdateConstraints];
            *(a1 + 376) &= ~0x80000000uLL;
          }
        }

        else
        {
          if ((v52 & 0x80000000000) == 0)
          {
            v53 = [v51 _constraintsExceptingSubviewAutoresizingConstraints];
            v54 = [v53 count];

            if (v54)
            {
              *(a1 + 376) |= 0x80000000uLL;
            }
          }

          if ((dyld_program_sdk_at_least() & 1) == 0)
          {
            v55 = [a1 navigationController];
            if (([v55 needsDeferredTransition] & 1) == 0)
            {
              v56 = [v55 view];
              if (v56)
              {
                v57 = v56[11];
                if ((v57 & 0x30000000000000) == 0)
                {
                  v56[11] = v57 | 0x20000000000000;
                }
              }
            }
          }
        }
      }
    }

    return;
  }

  v60 = [a1 childModalViewController];
  [(UIViewController *)v60 _setViewAppearState:a2 isAnimating:a3];
}

void __52__UIViewController__setViewAppearState_isAnimating___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__UIViewController__setViewAppearState_isAnimating___block_invoke_2;
  v12[3] = &__block_descriptor_41_e26_v16__0__UIViewController_8l;
  v12[4] = *(a1 + 40);
  v13 = *(a1 + 48);
  v4 = _Block_copy(v12);
  v5 = [v3 _existingView];
  LODWORD(a1) = [v5 isDescendantOfView:*(a1 + 32)];

  if (a1)
  {
    v4[2](v4, v3);
  }

  else
  {
    v6 = [v3 _existingView];
    v7 = [v6 window];
    if (v7 || ([v3 isPerformingModalTransition] & 1) != 0)
    {
    }

    else
    {
      v8 = [v3 childModalViewController];
      if (v8)
      {
        v9 = v8;
        v10 = [v3 childModalViewController];
        v11 = [v10 modalPresentationStyle];

        if (v11 != 3)
        {
          goto LABEL_7;
        }

        v6 = [v3 childModalViewController];
        v4[2](v4, v6);
      }
    }
  }

LABEL_7:
}

void __52__UIViewController__setViewAppearState_isAnimating___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 _appearState];
  v4 = *(a1 + 32);
  if (v3 != v4)
  {
    if (v7)
    {
      v7[47] = v7[47] & 0xFFFFFFFFFFFFFFFCLL | v4 & 3;
      v4 = *(a1 + 32);
    }

    if ((v3 - 1) >= 2 && v4 == 1)
    {
      v5 = [v7 _existingView];
      v6 = v5;
      if (v5 && ([v5 _viewDelegateContentOverlayInsetsAreClean] & 1) == 0)
      {
        [v7 _updateContentOverlayInsetsForSelfAndChildren];
      }
    }
  }

  [(UIViewController *)v7 _setViewAppearState:*(a1 + 40) isAnimating:?];
}

- (void)viewWillAppear:(BOOL)animated
{
  if ((*&self->_viewControllerFlags & 3) != 1)
  {
    UIViewControllerAlertForAppearanceCallbackMisuse(@"-viewWillAppear:", self);
    *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFBFFFFFFFFFFFFCLL | 0x40000000000001;
  }
}

- (void)__viewWillAppear:(BOOL)a3
{
  if ((*&self->_viewControllerFlags & 3) == 1)
  {
    self->_explicitAppearanceTransitionLevel = 0;
  }

  else
  {
    v4 = a3;
    *&self->_viewControllerFlags |= 0x2000000uLL;
    [(UIViewController *)self loadViewIfRequired];
    [(UIViewController *)self _setViewAppearState:v4 isAnimating:?];
    if ([(UIViewController *)self _shouldLoadInputAccessoryViewsOnAppearance])
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x3032000000;
      v15 = __Block_byref_object_copy__59;
      v16 = __Block_byref_object_dispose__59;
      v17 = 0;
      if ([(UIResponder *)self _ownsInputAccessoryView])
      {
        objc_storeStrong(v13 + 5, self);
      }

      else
      {
        v5 = [_UIViewBlockVisitor alloc];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __63__UIViewController__loadHierarchyInputAccessoryViewIfNecessary__block_invoke;
        v11[3] = &unk_1E71041A0;
        v11[4] = self;
        v11[5] = &v12;
        v6 = [(_UIViewBlockVisitor *)v5 initWithTraversalDirection:2 visitorBlock:v11];
        v7 = [(UIViewController *)self view];
        [v7 _receiveVisitor:v6];
      }

      if (v13[5])
      {
        v8 = [(UIViewController *)self _keyboardSceneDelegate];
        v9 = v13[5];
        v10 = [MEMORY[0x1E696B098] valueWithPointer:self];
        [v8 _beginPersistingInputAccessoryViewForResponder:v9 withId:v10];
      }

      _Block_object_dispose(&v12, 8);
    }
  }
}

- (void)_performAtViewIsAppearing:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:sel__performAtViewIsAppearing_ object:a1 file:@"UIViewController.m" lineNumber:7056 description:{@"Invalid parameter not satisfying: %@", @"block != NULL"}];
    }

    v5 = _Block_copy(*(a1 + 312));
    v6 = v5;
    if (v5)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __46__UIViewController__performAtViewIsAppearing___block_invoke;
      aBlock[3] = &unk_1E7104150;
      v13 = v5;
      v14 = v4;
      v7 = _Block_copy(aBlock);
      v8 = *(a1 + 312);
      *(a1 + 312) = v7;
    }

    else
    {
      v9 = _Block_copy(v4);
      v10 = *(a1 + 312);
      *(a1 + 312) = v9;
    }
  }
}

void __46__UIViewController__performAtViewIsAppearing___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a2;
  v6(v5, v7, a3);
  (*(*(a1 + 40) + 16))();
}

- (void)_executeViewIsAppearingBlock:(uint64_t)a1
{
  if (a1)
  {
    v4 = _Block_copy(*(a1 + 312));
    if (v4)
    {
      v5 = v4;
      do
      {
        v6 = *(a1 + 312);
        *(a1 + 312) = 0;

        v5[2](v5, a1, a2);
        v7 = _Block_copy(*(a1 + 312));

        v5 = v7;
      }

      while (v7);
    }
  }
}

- (void)viewDidAppear:(BOOL)animated
{
  if ((*&self->_viewControllerFlags & 3) != 2)
  {
    v3 = animated;
    UIViewControllerAlertForAppearanceCallbackMisuse(@"-viewDidAppear:", self);
    [(UIViewController *)self __viewIsAppearing:v3 skipWindowCheck:1];
    *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFFFFFFFFFCLL | 2;
  }
}

- (void)__viewDidAppear:(BOOL)a3
{
  viewControllerFlags = self->_viewControllerFlags;
  if ((viewControllerFlags & 3) == 2)
  {
    self->_explicitAppearanceTransitionLevel = 0;
  }

  else
  {
    v5 = a3;
    if ((viewControllerFlags & 0x20000000) == 0 && self->_afterAppearance)
    {
      [(UIViewController *)self setAfterAppearanceBlock:0];
    }

    if (self->_explicitAppearanceTransitionLevel >= 1)
    {
      self->_explicitAppearanceTransitionLevel = 0;
    }

    *&self->_viewControllerFlags |= 0x2000000uLL;
    [(UIViewController *)self _setViewAppearState:v5 isAnimating:?];

    [(UIViewController *)self _setAvoidanceInsetsNeedsUpdate];
  }
}

- (void)viewWillDisappear:(BOOL)animated
{
  if ((~*&self->_viewControllerFlags & 3) != 0)
  {
    UIViewControllerAlertForAppearanceCallbackMisuse(@"-viewWillDisappear:", self);
    *&self->_viewControllerFlags |= 3uLL;
  }
}

- (void)__viewWillDisappear:(void *)a1
{
  if (a1)
  {
    if ((~*(a1 + 94) & 3) != 0)
    {
      a1[47] &= ~0x2000000uLL;
      [(UIViewController *)a1 _setViewAppearState:a2 isAnimating:?];

      [(UIViewController *)a1 _unloadHierarchyInputAccessoryViewIfNecessary];
    }

    else
    {
      a1[41] = 0;
    }
  }
}

- (void)viewDidDisappear:(BOOL)animated
{
  if ((*&self->_viewControllerFlags & 3) != 0)
  {
    UIViewControllerAlertForAppearanceCallbackMisuse(@"-viewDidDisappear:", self);
    *&self->_viewControllerFlags &= 0xFFFFFFFFFFFFFFFCLL;
  }
}

- (void)__viewDidDisappear:(void *)a1
{
  if (a1)
  {
    v3 = a1[47];
    if ((v3 & 3) != 0)
    {
      v5 = v3 & 0xFFFFFFFFFDFFFFFFLL;
      a1[47] = v5;
      if (a1[41] >= 1)
      {
        a1[41] = 0;
        v5 = a1[47];
      }

      if ((v5 & 0x20000000) == 0)
      {
        if (a1[40])
        {
          [a1 setAfterAppearanceBlock:0];
        }
      }

      [(UIViewController *)a1 _setViewAppearState:a2 isAnimating:?];
      [(UIViewController *)a1 _unloadHierarchyInputAccessoryViewIfNecessary];
      a1[47] &= ~0x8000000000uLL;
    }

    else
    {
      a1[41] = 0;
    }
  }
}

- (uint64_t)_endAppearanceTransition:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if ((*(a1 + 379) & 4) != 0)
    {
LABEL_6:
      a1 = 0;
      goto LABEL_14;
    }

    v4 = [a1 isInAnimatedVCTransition];
    v5 = *(a1 + 328);
    *(a1 + 328) = v5 - 1;
    if (v5 <= 0)
    {
      NSLog(&cfstr_UnbalancedCall.isa, a1);
      *(a1 + 328) = 0;
    }

    else if (v5 != 1 && ([a1 _forwardAppearanceMethods] & 1) != 0)
    {
      goto LABEL_6;
    }

    [a1 setInAnimatedVCTransition:0];
    if ((*(a1 + 379) & 2) != 0)
    {
      [a1 __viewDidAppear:v4];
      if (!v3)
      {
LABEL_13:
        a1 = 1;
        goto LABEL_14;
      }
    }

    else
    {
      [(UIViewController *)a1 __viewDidDisappear:v4];
      if (!v3)
      {
        goto LABEL_13;
      }
    }

    v3[2](v3);
    goto LABEL_13;
  }

LABEL_14:

  return a1;
}

- (void)setAppearanceTransitionsAreDisabled:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFFFBFFFFFFLL | v3;
}

- (void)_addDescendantsToArray:(uint64_t)a3 visibleOnly:
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    v6 = [a1 _existingView];
    v7 = v6;
    if (v6)
    {
      if (!a3 || ([v6 isHidden] & 1) == 0 && (objc_msgSend(v7, "window"), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
      {
        [v5 addObject:a1];
      }

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v9 = [a1 mutableChildViewControllers];
      v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v18;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v17 + 1) + 8 * i);
            v15 = [v14 _existingView];
            v16 = [v15 isDescendantOfView:v7];

            if (v16)
            {
              [(UIViewController *)v14 _addDescendantsToArray:v5 visibleOnly:a3];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v11);
      }
    }
  }
}

+ (void)_withDisabledAppearanceTransitions:(BOOL)a3 forDescendantsOf:(id)a4 visibleOnly:(BOOL)a5 perform:(id)a6
{
  v7 = a5;
  v8 = a3;
  v33 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a6;
  v11 = v10;
  if (!v8)
  {
    v13 = 0;
    if (!v10)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v12 addObject:v9];
  [(UIViewController *)v9 _addDescendantsToArray:v12 visibleOnly:v7];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    do
    {
      v17 = 0;
      do
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v27 + 1) + 8 * v17++) setAppearanceTransitionsAreDisabled:1];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v15);
  }

  if (v11)
  {
LABEL_12:
    v11[2](v11);
  }

LABEL_13:
  if (v8)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v18 = v13;
    v19 = [v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v24;
      do
      {
        v22 = 0;
        do
        {
          if (*v24 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v23 + 1) + 8 * v22++) setAppearanceTransitionsAreDisabled:{0, v23}];
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v20);
    }
  }
}

- (void)setAfterAppearanceBlock:(id)a3
{
  if (self->_afterAppearance != a3)
  {
    v4 = _Block_copy(a3);
    afterAppearance = self->_afterAppearance;
    self->_afterAppearance = v4;
  }
}

- (void)setNeedsDidMoveCleanup:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFFF7FFFFFFLL | v3;
}

- (void)_beginAppearanceTransitionToViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  [a3 beginAppearanceTransition:1 animated:?];

  [(UIViewController *)self beginAppearanceTransition:0 animated:v4];
}

- (void)_endAppearanceTransitionToViewController:(id)a3
{
  v4 = a3;
  [(UIViewController *)self endAppearanceTransition];
  [v4 endAppearanceTransition];
}

- (void)_updateForReselectionInContainingTabBarController
{
  if ([(NSMutableArray *)self->_childViewControllers count]== 1)
  {
    v3 = [(NSMutableArray *)self->_childViewControllers firstObject];
    [v3 _updateForReselectionInContainingTabBarController];
  }
}

- (uint64_t)_tryBecomeRootViewControllerInWindow:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 _delegateViewController];
    if (v5 || ([a1 _popoverController], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v7 = [a1 _existingView];
      v8 = [v7 superview];
      v9 = [v8 _viewControllerForAncestor];

      if (!v9)
      {
        *(a1 + 376) |= 0x80uLL;
        [v4 _setDelegateViewController:a1];
        a1 = 1;
        goto LABEL_6;
      }
    }

    a1 = 0;
  }

LABEL_6:

  return a1;
}

- (void)viewWillMoveToWindow:(id)a3
{
  v17 = a3;
  v4 = [(UIViewController *)self isPerformingModalTransition];
  v5 = v17;
  if (v4)
  {
    goto LABEL_27;
  }

  v6 = [(UIViewController *)self->_parentModalViewController presentedViewController];

  if (v6 != self)
  {
    v7 = [(UIViewController *)self parentViewController];
    if ([(UIViewController *)self _appearState])
    {
      v8 = [(UIViewController *)self _appearState]== 3;
    }

    else
    {
      v8 = 1;
    }

    if (v17)
    {
      v9 = [v7 _existingView];
      v10 = [v9 window];
      if (v10 == v17 && [(UIViewController *)v7 _didSelfOrAncestorBeginAppearanceTransition]&& !self->_explicitAppearanceTransitionLevel)
      {
        v16 = [(UIViewController *)self parentViewController];
        v11 = [v16 _appearState] == 1 && v8;
      }

      else
      {
        v11 = 0;
      }

      if (!v7)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v11 = 0;
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    if ([v7 _appearState] != 2 && objc_msgSend(v7, "isSettingAppearState") && (objc_msgSend(v7, "containmentSupport") & 1) != 0)
    {
LABEL_23:

      goto LABEL_24;
    }

LABEL_17:
    v12 = [(UIViewController *)self _popoverController];
    if (([v12 _manuallyHandlesContentViewControllerAppearanceCalls] & 1) != 0 || (*(&self->_viewControllerFlags + 3) & 4) != 0)
    {
    }

    else
    {
      v13 = v11 | ~[(UIViewController *)self _didSelfOrAncestorBeginAppearanceTransition];

      if (v13)
      {
        viewControllerFlags = self->_viewControllerFlags;
        if (v17)
        {
          [(UIViewController *)self __viewWillAppear:(viewControllerFlags >> 21) & 1];
        }

        else
        {
          [(UIViewController *)self __viewWillDisappear:?];
        }
      }
    }

    goto LABEL_23;
  }

LABEL_24:
  v5 = v17;
  if (!v17)
  {
    v15 = [(UIViewController *)self _isRootViewController];
    v5 = 0;
    if (v15)
    {
      *&self->_viewControllerFlags &= ~0x80uLL;
    }
  }

LABEL_27:
}

- (void)__willChangeToIdiom:(int64_t)a3 onScreen:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v6)
  {
    v7 = [(UIViewController *)self _window];
    v8 = [v7 screen];

    if (!v8 || [v8 _userInterfaceIdiom] != a3)
    {
      [(UIViewController *)self _willChangeToIdiom:a3 onScreen:v6];
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v9 = [(UIViewController *)self childViewControllers];
      v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v15;
        do
        {
          v13 = 0;
          do
          {
            if (*v15 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [*(*(&v14 + 1) + 8 * v13++) __willChangeToIdiom:a3 onScreen:v6];
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v11);
      }
    }
  }
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v5 = a4;
  v7 = a3;
  v8 = v7;
  v9 = v7 == 0;
  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFDFFFFFFFFFFFFFLL | ((v7 != 0) << 53);
  if (!v7)
  {
    v17 = [(UIViewController *)self _existingView];
    [v17 frame];
    self->_lastForwardedTransitionSize.width = v18;
    self->_lastForwardedTransitionSize.height = v19;

    if (!v5)
    {
      goto LABEL_68;
    }

LABEL_20:
    if ([(UIViewController *)self isPerformingModalTransition])
    {
      goto LABEL_68;
    }

    v20 = [(UIViewController *)self->_parentModalViewController presentedViewController];
    v21 = v20;
    if (v20 == self)
    {

      goto LABEL_68;
    }

    v22 = [(UIViewController *)self parentViewController];
    if (v22)
    {
      if (v8 || (-[UIViewController parentViewController](self, "parentViewController"), v66 = objc_claimAutoreleasedReturnValue(), [v66 _appearState] != 2))
      {
        v26 = [(UIViewController *)self parentViewController];
        v4 = v26;
        if (v26 && [v26 isSettingAppearState] && (objc_msgSend(v4, "containmentSupport") & 1) != 0)
        {
          v27 = 0;
          goto LABEL_43;
        }

        v23 = 1;
      }

      else
      {
        v23 = 0;
        v9 = 1;
      }
    }

    else
    {
      v9 = 0;
      v23 = 0;
    }

    v28 = [(UIViewController *)self _popoverController];
    if (([v28 _manuallyHandlesContentViewControllerAppearanceCalls] & 1) != 0 || (*(&self->_viewControllerFlags + 3) & 4) != 0)
    {

      v27 = 0;
      if (!v23)
      {
LABEL_38:
        if (v9)
        {
        }

        if ((v27 & 1) == 0)
        {
          goto LABEL_68;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v27 = [(UIViewController *)self _didSelfOrAncestorBeginAppearanceTransition]^ 1;

      if ((v23 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_43:

    if (v9)
    {
    }

    if (!v27)
    {
      goto LABEL_68;
    }

LABEL_46:
    v29 = *&self->_viewControllerFlags & 0x200000;
    v30 = +[UIApplication _isCertainCheckpointInAppLaunchReached];
    if (v8)
    {
      if (v30)
      {
        objc_initWeak(location, self);
        v31 = v74;
        v74[0] = MEMORY[0x1E69E9820];
        v74[1] = 3221225472;
        v74[2] = __64__UIViewController_viewDidMoveToWindow_shouldAppearOrDisappear___block_invoke;
        v74[3] = &unk_1E7101C60;
        objc_copyWeak(&v75, location);
        v76 = v29 >> 21;
        [(UIViewController *)self setAfterAppearanceBlock:v74];
        v32 = _Block_copy(self->_afterAppearance);
        +[UIView _currentAnimationDuration];
        if (v33 <= 0.0)
        {
          [UIApp _addAfterCACommitBlockForViewController:self];
          goto LABEL_66;
        }

        +[UIView _currentAnimationDuration];
        v35 = dispatch_time(0, (v34 * 1000000000.0));
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __64__UIViewController_viewDidMoveToWindow_shouldAppearOrDisappear___block_invoke_2;
        block[3] = &unk_1E70F37C0;
        block[4] = self;
        v73 = v32;
        dispatch_after(v35, MEMORY[0x1E69E96A0], block);
        v36 = v73;
LABEL_61:

LABEL_66:
        objc_destroyWeak(v31 + 4);
        objc_destroyWeak(location);
        goto LABEL_67;
      }

      [(UIViewController *)self __viewDidAppear:v29 != 0];
    }

    else
    {
      if (v30)
      {
        objc_initWeak(location, self);
        v31 = v69;
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __64__UIViewController_viewDidMoveToWindow_shouldAppearOrDisappear___block_invoke_3;
        v69[3] = &unk_1E7101C60;
        objc_copyWeak(&v70, location);
        v71 = v29 >> 21;
        [(UIViewController *)self setAfterAppearanceBlock:v69];
        v32 = _Block_copy(self->_afterAppearance);
        +[UIView _currentAnimationDuration];
        if (v63 <= 0.0)
        {
          [UIApp _addAfterCACommitBlockForViewController:self];
          goto LABEL_66;
        }

        +[UIView _currentAnimationDuration];
        v65 = dispatch_time(0, (v64 * 1000000000.0));
        v67[0] = MEMORY[0x1E69E9820];
        v67[1] = 3221225472;
        v67[2] = __64__UIViewController_viewDidMoveToWindow_shouldAppearOrDisappear___block_invoke_4;
        v67[3] = &unk_1E70F37C0;
        v67[4] = self;
        v68 = v32;
        dispatch_after(v65, MEMORY[0x1E69E96A0], v67);
        v36 = v68;
        goto LABEL_61;
      }

      [(UIViewController *)self __viewDidDisappear:?];
    }

LABEL_67:
    *&self->_viewControllerFlags &= ~0x200000uLL;
    goto LABEL_68;
  }

  v10 = [v7 screen];
  v11 = [v10 _userInterfaceIdiom];

  if (v11 == 3 && ![(UIViewController *)self _isInCustomTransition])
  {
    v24 = [(UIViewController *)self->_parentModalViewController presentedViewController];
    v25 = v24;
    if (v24 == self)
    {
      v37 = +[UIDevice currentDevice];
      v38 = [v37 userInterfaceIdiom];

      if ((v38 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v39 = [(UIViewController *)self _isModalSheet];
LABEL_53:
        v40 = objc_opt_class();
        v41 = [(UIViewController *)self view];
        v42 = [v40 _isViewSizeFullScreen:v41 inWindow:v8 ignoreInWindowCheck:1];

        v4 = [(UIViewController *)self parentViewController];

        if (!v4 && v39 != v42)
        {
          v43 = [(UIViewController *)self view];
          [v43 frame];
          v45 = v44;
          v47 = v46;
          v48 = [(UIViewController *)self view];
          v4 = [v48 superview];
          [v4 bounds];
          v50 = v49;
          v52 = v51;

          if (v45 != v50 || v47 != v52)
          {
            v53 = [(UIViewController *)self view];
            v54 = [v53 superview];
            [v54 bounds];
            v56 = v55;
            v58 = v57;
            v60 = v59;
            v62 = v61;
            v4 = [(UIViewController *)self view];
            [v4 setFrame:{v56, v58, v60, v62}];
          }
        }

        goto LABEL_4;
      }
    }

    else
    {
    }

    v39 = 1;
    goto LABEL_53;
  }

LABEL_4:
  if (![(UIViewController *)self _isInCustomTransition])
  {
    [(UIViewController *)self _updateLayoutForStatusBarAndInterfaceOrientation];
    v12 = [(UIViewController *)self _popoverController];

    v13 = !_UIAppUseModernRotationAndPresentationBehaviors();
    if (v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    if (!v13 && !v12)
    {
      v14 = ![(UIViewController *)self _isInPopoverPresentation];
    }

    v15 = [(UIViewController *)self _lastKnownInterfaceOrientation];
    if (v14 && (v15 - 5) <= 0xFFFFFFFFFFFFFFFBLL)
    {
      -[UIViewController setInterfaceOrientation:](self, "setInterfaceOrientation:", [v8 interfaceOrientation]);
    }
  }

  [(UIViewController *)self setNeedsFocusUpdate];
  view = self->_view;
  if (!view || ![(CALayer *)view->_layer needsLayout])
  {
    [(UIViewController *)self __viewIsAppearing:1 skipWindowCheck:?];
  }

  if (v5)
  {
    goto LABEL_20;
  }

LABEL_68:
}

void __64__UIViewController_viewDidMoveToWindow_shouldAppearOrDisappear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained __viewDidAppear:*(a1 + 40)];
}

uint64_t __64__UIViewController_viewDidMoveToWindow_shouldAppearOrDisappear___block_invoke_2(uint64_t result)
{
  if (*(*(result + 32) + 320) == *(result + 40))
  {
    return [UIApp _addAfterCACommitBlockForViewController:?];
  }

  return result;
}

void __64__UIViewController_viewDidMoveToWindow_shouldAppearOrDisappear___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(UIViewController *)WeakRetained __viewDidDisappear:?];
}

uint64_t __64__UIViewController_viewDidMoveToWindow_shouldAppearOrDisappear___block_invoke_4(uint64_t result)
{
  if (*(*(result + 32) + 320) == *(result + 40))
  {
    return [UIApp _addAfterCACommitBlockForViewController:?];
  }

  return result;
}

+ (void)removeViewControllerForView:(id)a3
{
  v4 = a3;
  v3 = [(UIView *)v4 __viewDelegate];

  if (v3)
  {
    [(UIView *)v4 __setViewDelegate:?];
  }
}

- (id)_description
{
  v3 = MEMORY[0x1E696AD60];
  if (self)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = self;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v4 stringWithFormat:@"<%@: %p>", v7, v5];
  }

  else
  {
    v8 = @"(nil)";
  }

  v9 = [v3 stringWithString:v8];

  if ([(UIViewController *)self isViewLoaded])
  {
    v10 = [(UIViewController *)self view];
    v11 = [(UIViewController *)self view];
    [v11 frame];
    v12 = NSStringFromCGRect(v15);
    [v9 appendFormat:@" view:%@ frame:%@", v10, v12];
  }

  else
  {
    [v9 appendString:@" (view not loaded)"];
  }

  if ((*&self->_viewControllerFlags & 0x80) != 0)
  {
    [v9 appendString:@" ***Root***"];
  }

  [v9 appendString:@"\n"];

  return v9;
}

- (void)_traverseViewControllerHierarchyFromLevel:(int64_t)a3 withBlock:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = self->_childViewControllers;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v6[2](v6, v12, 1, a3 + 1);
        [v12 _traverseViewControllerHierarchyFromLevel:a3 + 1 withBlock:v6];
        v6[2](v6, v12, 0, a3 + 1);
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v9);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = self->_childModalViewControllers;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v19 + 1) + 8 * j);
        v6[2](v6, v18, 1, a3 + 1);
        [v18 _traverseViewControllerHierarchyFromLevel:a3 + 1 withBlock:{v6, v19}];
        v6[2](v6, v18, 0, a3 + 1);
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }
}

+ (void)_traverseViewControllerHierarchyWithDelayedRelease:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [qword_1ED4985A8 setRepresentation];
  v5 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
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
        if (!v11 || !v11[12] && !v11[14])
        {
          if (([*(*(&v22 + 1) + 8 * i) _isRootViewController] & 1) != 0 || objc_msgSend(v11, "isViewLoaded"))
          {
            (*(v3 + 2))(v3, v11, 1, 0);
            [v11 _traverseViewControllerHierarchyFromLevel:0 withBlock:v3];
            (*(v3 + 2))(v3, v11, 0, 0);
          }

          else
          {
            [v5 addObject:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v18 + 1) + 8 * j);
        (*(v3 + 2))(v3, v17, 1, 0);
        [v17 _traverseViewControllerHierarchyFromLevel:0 withBlock:{v3, v18}];
        (*(v3 + 2))(v3, v17, 0, 0);
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }
}

- (id)_descriptionWithChildren:(int)a3
{
  v5 = [MEMORY[0x1E696AD60] string];
  if (a3 >= 1)
  {
    v6 = a3;
    do
    {
      [v5 appendString:@"    "];
      --v6;
    }

    while (v6);
  }

  v7 = [(UIViewController *)self _description];
  [v5 appendFormat:@"%@", v7];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__UIViewController__descriptionWithChildren___block_invoke;
  v10[3] = &unk_1E7104178;
  v8 = v5;
  v11 = v8;
  [(UIViewController *)self _traverseViewControllerHierarchyFromLevel:a3 + 1 withBlock:v10];

  return v8;
}

void __45__UIViewController__descriptionWithChildren___block_invoke(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v7 = a2;
  if (a3)
  {
    v15 = v7;
    if (a4 < 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = [MEMORY[0x1E696AD60] string];
      do
      {
        [v8 appendString:@"    "];
        --a4;
      }

      while (a4);
      [*(a1 + 32) appendString:v8];
      v7 = v15;
    }

    v9 = [v7 presentingViewController];
    if (v9)
    {
      v10 = [v15 parentViewController];

      if (!v10)
      {
        v11 = *(a1 + 32);
        v12 = [v9 description];
        [v11 appendFormat:@"Modally presented (presenter =%@) :\n", v12];

        if (v8)
        {
          [*(a1 + 32) appendString:v8];
        }
      }
    }

    v13 = *(a1 + 32);
    v14 = [v15 _description];
    [v13 appendString:v14];

    v7 = v15;
  }
}

+ (id)_allDescriptions
{
  v3 = [MEMORY[0x1E696AD60] string];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__UIViewController__allDescriptions__block_invoke;
  v6[3] = &unk_1E7104178;
  v4 = v3;
  v7 = v4;
  [a1 _traverseViewControllerHierarchy:v6];

  return v4;
}

void __36__UIViewController__allDescriptions__block_invoke(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v7 = a2;
  if (a3)
  {
    v15 = v7;
    if (a4 < 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = [MEMORY[0x1E696AD60] string];
      do
      {
        [v8 appendString:@"    "];
        --a4;
      }

      while (a4);
      [*(a1 + 32) appendString:v8];
      v7 = v15;
    }

    v9 = [v7 presentingViewController];
    if (v9)
    {
      v10 = [v15 parentViewController];

      if (!v10)
      {
        v11 = *(a1 + 32);
        v12 = [v9 description];
        [v11 appendFormat:@"Modally presented (presenter =%@) :\n", v12];

        if (v8)
        {
          [*(a1 + 32) appendString:v8];
        }
      }
    }

    v13 = *(a1 + 32);
    v14 = [v15 _description];
    [v13 appendString:v14];

    v7 = v15;
  }
}

- (id)_descriptionForPrintingHierarchyIncludingInsets:(uint64_t)a1
{
  if (a1)
  {
    if (a2 && (*(a1 + 376) & 3u) - 1 <= 1)
    {
      v4 = vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a1 + 928)), vceqzq_f64(*(a1 + 944)))))) & 1;
      v5 = 1;
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }

    v6 = MEMORY[0x1E696AD60];
    v7 = _UIBriefDescription(a1);
    v8 = [&unk_1EFE2BC80 objectAtIndexedSubscript:*(a1 + 376) & 3];
    if (v4)
    {
      v9 = MEMORY[0x1E696AEC0];
      v2 = NSStringFromDirectionalEdgeInsets(*(a1 + 928));
      v10 = [v9 stringWithFormat:@" minimum margins = %@, ", v2];
    }

    else
    {
      v10 = &stru_1EFB14550;
    }

    v11 = [a1 _existingView];
    v12 = v11;
    if (v11)
    {
      v13 = _UIBriefDescription(v11);
      v14 = [v13 mutableCopy];

      v15 = [v12 window];

      if (v15)
      {
        if (v5)
        {
          [v12 safeAreaInsets];
          if (v19 != 0.0 || v16 != 0.0 || v18 != 0.0 || v17 != 0.0)
          {
            [v12 safeAreaInsets];
            v20 = NSStringFromUIEdgeInsets(v24);
            [(__CFString *)v14 appendFormat:@" safeAreaInsets = %@", v20];
          }
        }
      }

      else
      {
        [(__CFString *)v14 appendString:@" not in the window"];
      }
    }

    else
    {
      v14 = @"(view not loaded)";
    }

    v21 = [v6 stringWithFormat:@"%@, state: %@, %@ view: %@", v7, v8, v10, v14];

    if (v4)
    {
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)_printHierarchy
{
  v2 = +[UIWindow _applicationKeyWindow];
  v3 = [v2 rootViewController];
  v4 = [v3 _printHierarchy];

  return v4;
}

+ (id)_safeAreaInsetsTrace
{
  v2 = +[UIWindow _applicationKeyWindow];
  v3 = [v2 rootViewController];
  v4 = [v3 _safeAreaInsetsTrace];

  return v4;
}

uint64_t __63__UIViewController__loadHierarchyInputAccessoryViewIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [(UIView *)v4 __viewDelegate];
  v6 = v5;
  if (!v5 || v5 == *(a1 + 32))
  {
    if (![v4 _ownsInputAccessoryView])
    {
      v7 = 1;
      goto LABEL_7;
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (BOOL)_canReloadView
{
  if ((*&self->_viewControllerFlags & 0x40) != 0)
  {
    return 0;
  }

  if ([objc_opt_class() doesOverrideViewControllerMethod:sel_loadView])
  {
    return 1;
  }

  v4 = [(UIViewController *)self nibName];
  v3 = v4 != 0;

  return v3;
}

- (void)applicationWantsViewsToDisappear
{
  if (self)
  {
    if ([(UIViewController *)self isViewLoaded])
    {
      v3 = [(UIViewController *)self view];
      v4 = [v3 window];
      v5 = v4 != 0;
    }

    else
    {
      v5 = 0;
    }

    if (self->_parentViewController)
    {
      WeakRetained = objc_loadWeakRetained(&self->_popoverController);
      v7 = [WeakRetained isPopoverVisible];
    }

    else
    {
      v7 = 1;
    }

    if ((v5 & v7) == 1)
    {
      [(UIViewController *)self __viewWillDisappear:?];

      [(UIViewController *)self __viewDidDisappear:?];
    }
  }
}

+ (BOOL)_isViewSizeFullScreen:(id)a3 inWindow:(id)a4 ignoreInWindowCheck:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  [v7 bounds];
  v12 = v11;
  v14 = v13;
  if (v8)
  {
    v15 = v9;
    v16 = v10;
    v17 = [v7 window];

    if (v17)
    {
      [v7 convertRect:v8 toView:{v15, v16, v12, v14}];
      [v8 convertRect:0 toWindow:?];
      v12 = v18;
      v14 = v19;
    }
  }

  v20 = [v8 windowScene];
  v21 = [v20 _coordinateSpace];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v24 = [objc_opt_self() mainScreen];
    v23 = [v24 coordinateSpace];
  }

  [v23 bounds];
  v26 = v25;
  v28 = v27;
  v29 = v14 == v27 && v12 == v25;
  if (v29 || a5)
  {
    if (v29)
    {
      v31 = 1;
      goto LABEL_19;
    }
  }

  else
  {
    v30 = [v7 window];

    if (v30)
    {
      v31 = 0;
      goto LABEL_19;
    }
  }

  v31 = v12 == v28 && v14 == v26;
LABEL_19:

  return v31;
}

- (BOOL)__knownPresentationWithoutPresentationControllerInstance
{
  parentModalViewController = self->_parentModalViewController;
  if (parentModalViewController)
  {
    LOBYTE(parentModalViewController) = [(UIViewController *)parentModalViewController __knownPresentationWithoutPresentationControllerInstance];
  }

  return parentModalViewController;
}

- (BOOL)_viewControllerUnderlapsStatusBar
{
  if ([(UIViewController *)self __knownPresentationWithoutPresentationControllerInstance])
  {
    goto LABEL_12;
  }

  v3 = [(UIViewController *)self presentingViewController];
  if (v3)
  {
    v4 = [(UIViewController *)self presentingViewController];
    v5 = [v4 _presentationController];
  }

  else
  {
    v6 = [(UIViewController *)self _parentModalViewController];
    if (!v6)
    {
      v66 = [(UIViewController *)self _temporaryPresentationController];
      if (v66)
      {
        v7 = [(UIViewController *)self presentationController];
      }

      else
      {
        v7 = 0;
      }

      v4 = 0;
      goto LABEL_7;
    }

    v4 = v6;
    v5 = [(UIViewController *)self presentationController];
  }

  v7 = v5;
LABEL_7:

  WeakRetained = objc_loadWeakRetained(&self->_popoverController);
  v9 = WeakRetained;
  if (WeakRetained && [WeakRetained _popoverControllerStyle] != 1 || v7 && !objc_msgSend(v7, "_presentationPotentiallyUnderlapsStatusBar"))
  {

    LOBYTE(v42) = 0;
    return v42;
  }

LABEL_12:
  viewControllerFlags = self->_viewControllerFlags;
  if ((viewControllerFlags & 0x8000000000) == 0)
  {
    v11 = [(UIViewController *)self _existingView];
    v12 = [v11 window];
    v13 = v12;
    if (!v12)
    {
      LOBYTE(v42) = 0;
LABEL_63:

      return v42;
    }

    v14 = 0;
    if (_UIAppStatusBarHeightForWindow(v12) == 0.0)
    {
      v15 = __UIStatusBarManagerForWindow(v13);
      v16 = [v15 isStatusBarHidden];

      if ((v16 & 1) == 0)
      {
        _UIAppStatusBarDefaultHeight();
        v14 = v17;
      }
    }

    v18 = [v13 _windowInterfaceOrientation];
    if (!v18)
    {
      v18 = [UIApp _sceneInterfaceOrientationFromWindow:v13];
    }

    v73 = 0;
    v74 = &v73;
    v75 = 0x2020000000;
    v76 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__UIViewController__viewControllerUnderlapsStatusBar__block_invoke;
    aBlock[3] = &unk_1E71041C8;
    aBlock[6] = v14;
    aBlock[4] = &v73;
    aBlock[5] = v18;
    v19 = _Block_copy(aBlock);
    if (!v11)
    {
      v27 = 0;
LABEL_56:
      v68 = self->_viewControllerFlags;
      if (*(v74 + 24))
      {
        LODWORD(v42) = (v68 >> 38) & 1;
      }

      else
      {
        LODWORD(v42) = v27;
      }

      v69 = 0x4000000000;
      if (!v42)
      {
        v69 = 0;
      }

      v67 = v69 | v68 & 0xFFFFFFBFFFFFFFFFLL;
      goto LABEL_62;
    }

    v20 = [v13 _windowHostingScene];
    v21 = [v20 _sceneSessionRoleIsCarPlayOrNonInteractiveExternal];

    if (v21)
    {
      v22 = self;
      v23 = 0;
      do
      {
        v24 = [(UIViewController *)v22 _expectedWindow];
        v25 = [(UIViewController *)v22 _existingView];

        v26 = [(UIViewController *)v22 parentViewController];

        if (!v26)
        {
          break;
        }

        v22 = v26;
        v23 = v25;
      }

      while (!v24);

      v27 = 0;
      if (!v24 || !v25)
      {
        goto LABEL_55;
      }

      [v25 transform];
      if (CGAffineTransformIsIdentity(&v71))
      {
        [v11 bounds];
        [v25 convertRect:v11 fromView:?];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;
        [v25 frame];
        v37 = v36;
        v39 = v38;
        [v11 bounds];
        v27 = v19[2](v19, v24, v29 + v37, v31 + v39, v33, v35, v40, v41);
LABEL_55:

        goto LABEL_56;
      }
    }

    else
    {
      if ([v13 _isHostedInAnotherProcess])
      {
        v43 = [(UIViewController *)self _window];
        v44 = [v43 __hostViewUnderlapsStatusBar];

        if ((v44 & 1) == 0)
        {
          LOBYTE(v42) = 0;
          v67 = *&self->_viewControllerFlags & 0xFFFFFFBFFFFFFFFFLL;
LABEL_62:
          *&self->_viewControllerFlags = v67;

          _Block_object_dispose(&v73, 8);
          goto LABEL_63;
        }
      }

      [v11 bounds];
      [v11 convertRect:0 toView:?];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;
      [v11 bounds];
      v27 = v19[2](v19, v13, v46, v48, v50, v52, v53, v54);
      v24 = [(UIViewController *)self _viewControllerForRotation];
      v55 = [v24 _existingView];
      v25 = v55;
      if (v55)
      {
        v56 = v55 == v11;
      }

      else
      {
        v56 = 1;
      }

      if (v56)
      {
        v57 = 1;
      }

      else
      {
        v57 = v27;
      }

      if (v57)
      {
        goto LABEL_55;
      }

      if (![v11 isDescendantOfView:v55])
      {
        v27 = 0;
        goto LABEL_55;
      }

      [v11 bounds];
      [v11 convertRect:v25 toView:?];
      v59 = v58;
      v61 = v60;
      v63 = v62;
      [v11 bounds];
      if (vabdd_f64(v64, v61) < 0.01 && vabdd_f64(v65, v63) < 0.01 || vabdd_f64(v64, v63) < 0.01 && vabdd_f64(v65, v61) < 0.01)
      {
        v27 = v59 < 0.0 || fabs(v59) < 0.01;
        goto LABEL_55;
      }
    }

    v27 = 0;
    *(v74 + 24) = 1;
    goto LABEL_55;
  }

  return (viewControllerFlags >> 38) & 1;
}

BOOL __53__UIViewController__viewControllerUnderlapsStatusBar__block_invoke(uint64_t a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v15 = a2;
  if ((vabdd_f64(a7, a5) >= 0.01 || vabdd_f64(a8, a6) >= 0.01) && (vabdd_f64(a7, a6) >= 0.01 || vabdd_f64(a8, a5) >= 0.01))
  {
    v26 = 0;
    *(*(*(a1 + 32) + 8) + 24) = 1;
    goto LABEL_35;
  }

  if (![objc_opt_class() _transformLayerRotationsAreEnabled])
  {
    [v15 bounds];
    v26 = 0;
    v29 = *(a1 + 40);
    if (v29 > 2)
    {
      if (v29 == 4)
      {
        v35 = *(a1 + 48);
        if (a3 >= v35)
        {
          v33 = vabdd_f64(a3, v35);
          goto LABEL_34;
        }
      }

      else
      {
        if (v29 != 3)
        {
          goto LABEL_35;
        }

        v30 = *(a1 + 48);
        if (a3 + a5 <= v27 - v30)
        {
          v31 = a3 + a5 - v27;
          goto LABEL_26;
        }
      }
    }

    else if (v29 == 1)
    {
      v34 = *(a1 + 48);
      if (a4 >= v34)
      {
        v33 = vabdd_f64(a4, v34);
        goto LABEL_34;
      }
    }

    else
    {
      if (v29 != 2)
      {
        goto LABEL_35;
      }

      v30 = *(a1 + 48);
      if (a4 + a6 <= v28 - v30)
      {
        v31 = a4 + a6 - v28;
LABEL_26:
        v33 = vabdd_f64(v31, v30);
LABEL_34:
        v26 = v33 < 0.01;
        goto LABEL_35;
      }
    }

    v26 = 1;
    goto LABEL_35;
  }

  v16 = [v15 layer];
  v17 = [v16 superlayer];
  [v16 bounds];
  v19 = v18;
  v20 = *(a1 + 40) - 3;
  [v17 bounds];
  if (v20 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = v21;
  }

  _UIAppStatusBarDefaultHeight();
  v25 = v24;
  if (![v15 _isHostedInAnotherProcess] || !v17 || v19 == v23 || vabdd_f64(v23, v19) == 0.0 - v25)
  {
    v32 = *(a1 + 48);
    v26 = a4 < v32 || vabdd_f64(a4, v32) < 0.01;
  }

  else
  {
    v26 = 0;
  }

LABEL_35:
  return v26;
}

- (void)_setShouldFreezeUnderlapsStatusBar:(BOOL)a3
{
  v3 = 0x10000000000;
  if (a3)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFEFFFFFFFFFFLL | v3;
}

- (BOOL)_shouldChildViewControllerUseFullScreenLayout:(id)a3
{
  v4 = [a3 wantsFullScreenLayout];
  LOBYTE(v5) = 0;
  if (self && v4)
  {
    v6 = self->_parentViewController;
    v7 = [(UIViewController *)self _existingView];
    v8 = [v7 window];

    if ([v8 isRotating])
    {
      v5 = (*(&self->_viewControllerFlags + 1) >> 2) & 1;
    }

    else
    {
      v5 = [(UIViewController *)self _shouldUseFullScreenLayoutInWindow:v8 parentViewController:v6];
      v9 = 1024;
      if (!v5)
      {
        v9 = 0;
      }

      *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFFFFFFFBFFLL | v9;
    }
  }

  return v5;
}

- (BOOL)_shouldUseFullScreenLayoutInWindow:(id)a3 parentViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!-[UIViewController wantsFullScreenLayout](self, "wantsFullScreenLayout") || v6 && ([v6 _windowHostingScene], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "_sceneSessionRoleIsCarPlayOrNonInteractiveExternal"), v8, (v9 & 1) != 0))
  {
    v10 = 0;
  }

  else if (v7)
  {
    v10 = [v7 _shouldChildViewControllerUseFullScreenLayout:self];
  }

  else
  {
    v11 = [(UIViewController *)self _existingView];
    if (v11)
    {
      v10 = [objc_opt_class() _isViewSizeFullScreen:v11 inWindow:v6];
    }

    else
    {
      v10 = 1;
    }
  }

  return v10;
}

- (void)setWantsFullScreenLayout:(BOOL)wantsFullScreenLayout
{
  if (((((*&self->_viewControllerFlags & 0x200) == 0) ^ wantsFullScreenLayout) & 1) == 0)
  {
    v5 = 512;
    if (!wantsFullScreenLayout)
    {
      v5 = 0;
    }

    *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFFFFFFFDFFLL | v5;
    v9 = [(UIViewController *)self _existingView];
    v6 = [v9 window];
    v7 = [v6 rootViewController];
    if (v7 == self && (v9[95] & 2) != 0)
    {
      v8 = [v9 translatesAutoresizingMaskIntoConstraints];

      if ((v8 & 1) == 0)
      {
        [v6 _setNeedsUpdateConstraints];
      }
    }

    else
    {
    }
  }
}

- (void)setExtendedLayoutIncludesOpaqueBars:(BOOL)extendedLayoutIncludesOpaqueBars
{
  v3 = 0x1000000000;
  if (!extendedLayoutIncludesOpaqueBars)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFEFFFFFFFFFLL | v3;
}

- (void)setAutomaticallyAdjustsScrollViewInsets:(BOOL)automaticallyAdjustsScrollViewInsets
{
  v3 = 0x2000000000;
  if (!automaticallyAdjustsScrollViewInsets)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFDFFFFFFFFFLL | v3;
}

- (void)setPerformingModalTransition:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFFFFFFFFF7 | v3;
}

- (BOOL)_viewControllerIgnoresClippedGlyphPathFrame
{
  if ([(UIViewController *)self isBeingDismissed])
  {
    return 1;
  }

  return [(UIViewController *)self isBeingPresented];
}

- (void)setFinishingModalTransition:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFFFFFEFFFFLL | v3;
}

- (void)setShouldForceNonAnimatedTransition:(BOOL)a3
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFEFFFFFFFFLL | v3;
}

- (void)_addChildModalViewController:(id *)a1
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    if (a1[13])
    {
LABEL_10:
      v9 = [a1 _window];
      v10 = [v9 screen];

      [v3 __willChangeToIdiom:objc_msgSend(v10 onScreen:{"_userInterfaceIdiom"), v10}];
      [a1[13] addObject:v3];
      [v3 setParentModalViewController:a1];
      [a1 _didChangeDeepestActionResponder];
      [a1 _didChangeChildModalViewControllers];

      goto LABEL_11;
    }

    _UIIsPrivateMainBundle();
    if (dyld_program_sdk_at_least())
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[UIViewController _addChildModalViewController:]"];
      [v4 handleFailureInFunction:v5 file:@"UIViewController.m" lineNumber:8389 description:@"UIViewController was not initialized before use. This is a serious bug, likely caused by accessing properties or methods on the view controller before calling a UIViewController initializer. View controller: %@", a1];
    }

    else
    {
      if (!os_variant_has_internal_diagnostics())
      {
        v6 = *(__UILogGetCategoryCachedImpl("Assert", &_addChildModalViewController____s_category) + 8);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v12 = a1;
          _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "UIViewController was not initialized before use. This is a serious bug, likely caused by accessing properties or methods on the view controller before calling a UIViewController initializer. View controller: %@Ensure you're calling a designated initializer of UIViewController. This will become an assert in a future version.", buf, 0xCu);
        }

        goto LABEL_9;
      }

      v4 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v12 = a1;
        _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "UIViewController was not initialized before use. This is a serious bug, likely caused by accessing properties or methods on the view controller before calling a UIViewController initializer. View controller: %@Ensure you're calling a designated initializer of UIViewController. This will become an assert in a future version.", buf, 0xCu);
      }
    }

LABEL_9:
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = a1[13];
    a1[13] = v7;

    goto LABEL_10;
  }

LABEL_11:
}

- (void)_removeChildModalViewController:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v6 = v3;
    v4 = [a1[13] indexOfObjectIdenticalTo:v3];
    v3 = v6;
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = v4;
      [v6 setParentModalViewController:0];
      [a1[13] removeObjectAtIndex:v5];
      [a1 _didChangeDeepestActionResponder];
      [a1 _didChangeChildModalViewControllers];
      v3 = v6;
    }
  }
}

- (void)setModalPresentationStyle:(UIModalPresentationStyle)modalPresentationStyle
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_modalPresentationStyle != modalPresentationStyle)
  {
    self->_modalPresentationStyle = modalPresentationStyle;
    if (self->_temporaryPresentationController)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v6 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          v8 = 138412290;
          v9 = self;
          _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "Setting modalPresentationStyle once presentationController has been accessed will have no effect until %@ is presented, dismissed, and presented again.", &v8, 0xCu);
        }
      }

      else
      {
        v4 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498610) + 8);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v8 = 138412290;
          v9 = self;
          _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Setting modalPresentationStyle once presentationController has been accessed will have no effect until %@ is presented, dismissed, and presented again.", &v8, 0xCu);
        }
      }
    }

    if (self->_parentModalViewController)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v7 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          v8 = 138412290;
          v9 = self;
          _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Setting modalPresentationStyle once %@ has been presented will have no effect until it is dismissed and presented again.", &v8, 0xCu);
        }
      }

      else
      {
        v5 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498618) + 8);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v8 = 138412290;
          v9 = self;
          _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Setting modalPresentationStyle once %@ has been presented will have no effect until it is dismissed and presented again.", &v8, 0xCu);
        }
      }
    }
  }
}

- (void)_setModalPresentationStyle:(int64_t)a3
{
  if ([UIApp _isSpringBoard])
  {
    self->_modalPresentationStyle = a3;
  }
}

- (int64_t)_preferredInterfaceOrientationGivenCurrentOrientation:(int64_t)a3
{
  if (!self)
  {
    return 0;
  }

  v5 = [(UIViewController *)self _window];
  v6 = [v5 _windowOwnsInterfaceOrientation];

  if (v6)
  {
    v40 = [(UIViewController *)self __supportedInterfaceOrientations];
    if ((v40 & (1 << a3)) == 0)
    {
      v7 = +[UIDevice currentDevice];
      a3 = [v7 orientation];

      v8 = [(UIViewController *)self _existingView];
      v9 = [v8 window];

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __92__UIViewController__preferredInterfaceOrientationGivenStatusBarAndDeviceOrientationAndMask___block_invoke;
      aBlock[3] = &__block_descriptor_40_e8_B16__0q8l;
      aBlock[4] = &v40;
      v10 = _Block_copy(aBlock);
      v11 = v10;
      if ((a3 - 1) > 3 || ((*(v10 + 2))(v10, a3) & 1) == 0)
      {
        v12 = [v9 windowScene];
        v13 = v11[2](v11, [v12 _interfaceOrientation]);

        if (v13)
        {
          v14 = [v9 windowScene];
          a3 = [v14 _interfaceOrientation];
        }

        else
        {
          a3 = 0;
        }
      }
    }

    v20 = [(UIViewController *)self _existingView];
    v21 = [v20 window];

    v22 = [(UIViewController *)self modalPresentationStyle]== 16 || [(UIViewController *)self modalPresentationStyle]== UIModalPresentationFormSheet || [(UIViewController *)self modalPresentationStyle]== UIModalPresentationPageSheet;
    v23 = [(UIViewController *)self presentingViewController];
    if (!v23)
    {
      goto LABEL_20;
    }

    v24 = v23;
    v25 = [(UIViewController *)self presentingViewController];
    v26 = [v25 _popoverController];
    if (v26 || !v22 && [(UIViewController *)self modalPresentationStyle]!= 17 && [(UIViewController *)self modalPresentationStyle]!= UIModalPresentationOverFullScreen)
    {

      goto LABEL_20;
    }

    if (v21)
    {
      v32 = [v21 rootViewController];
      v33 = [(UIViewController *)self _rootAncestorViewController];

      if (v32 != v33)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    v39 = [(UIViewController *)self presentingViewController];
    a3 = [v39 interfaceOrientation];

    if (v22)
    {
LABEL_38:

      return a3;
    }

LABEL_20:
    v27 = [(UIViewController *)self childModalViewController];
    if (v27 && (v28 = v27, -[UIViewController _existingView](self, "_existingView"), v29 = objc_claimAutoreleasedReturnValue(), [v29 window], v30 = objc_claimAutoreleasedReturnValue(), v30, v29, v28, !v30))
    {
      v34 = [(UIViewController *)self _lastKnownInterfaceOrientation];
      if ((v34 - 1) < 4)
      {
        a3 = v34;
      }
    }

    else if ((a3 - 1) >= 4)
    {
      v31 = [(UIViewController *)self _ignoreAppSupportedOrientations];
      if (v21)
      {
        a3 = 0;
      }

      else
      {
        a3 = v31;
      }
    }

    v35 = v40;
    v36 = [(UIViewController *)self _window];
    v37 = v36;
    if (v36)
    {
      v38 = [v36 _interfaceOrientationForSupportedOrientations:v35 preferredOrientation:a3];
    }

    else
    {
      v38 = [UIApp _fallbackInterfaceOrientationForSupportedOrientations:v35 preferredOrientation:a3 currentOrientation:0];
    }

    a3 = v38;

    goto LABEL_38;
  }

  if ((a3 - 1) >= 4)
  {
    v15 = +[UIDevice currentDevice];
    a3 = [v15 orientation];

    if ((a3 - 1) >= 4)
    {
      v16 = [(UIViewController *)self _window];
      v17 = [v16 windowScene];
      v18 = [v17 _interfaceOrientation];

      return v18;
    }
  }

  return a3;
}

- (BOOL)_isDimmingBackground
{
  if ([self->_dimmingView displayed])
  {
    return 1;
  }

  parentViewController = self->_parentViewController;

  return [(UIViewController *)parentViewController _isDimmingBackground];
}

- (void)_keyboardWillShow:(id)a3
{
  v4 = [(UIViewController *)self _visibleView];
  v5 = [v4 window];
  v6 = [objc_opt_self() mainScreen];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v44 = v11;
  v13 = v12;

  v14 = [(UIViewController *)self _keyboardSceneDelegate];
  [v14 visibleFrameInView:0];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = 0.0;
  if ([(UIViewController *)self interfaceOrientation]!= UIInterfaceOrientationPortrait)
  {
    if ([(UIViewController *)self interfaceOrientation]== UIInterfaceOrientationLandscapeLeft)
    {
      v23 = -1.57079637;
    }

    else if ([(UIViewController *)self interfaceOrientation]== UIInterfaceOrientationLandscapeRight)
    {
      v23 = 1.57079637;
    }

    else if ([(UIViewController *)self interfaceOrientation]== UIInterfaceOrientationPortraitUpsideDown)
    {
      v23 = 3.14159274;
    }

    else
    {
      v23 = 0.0;
    }
  }

  [UIScreen transformToRotateScreen:v23];
  v52.origin.x = v16;
  v52.origin.y = v18;
  v52.size.width = v20;
  v52.size.height = v22;
  v53 = CGRectApplyAffineTransform(v52, &v51);
  y = v53.origin.y;
  if ([v5 _isHostedInAnotherProcess])
  {
    [v5 bounds];
    v25 = v54.origin.y;
    MidX = CGRectGetMidX(v54);
    [v4 bounds];
    v27.f64[0] = MidX;
    v27.f64[1] = v25 + v26 * 0.5;
    v46 = v27;
  }

  else
  {
    v47 = v8 + v44 * 0.5;
    v28 = __UIStatusBarManagerForWindow(v5);
    [v28 defaultStatusBarHeightInOrientation:1];
    v30 = v29;

    [v4 bounds];
    v43 = v10 + v13 * 0.5 - v47 + v30 + CGRectGetHeight(v55) * 0.5;
    [UIScreen transformForScreenOriginRotation:v23];
    v46 = vaddq_f64(*&v51.tx, vaddq_f64(vmulq_n_f64(*&v51.a, v47), vmulq_n_f64(*&v51.c, v43)));
  }

  if ((-[UIViewController interfaceOrientation](self, "interfaceOrientation") - 3) <= 1 && (([v5 _isHostedInAnotherProcess] & 1) != 0 || y < v44))
  {
    v31 = [(UIViewController *)self presentingViewController];
    v32 = [v31 isPerformingModalTransition];

    if (v32)
    {
      v33 = [v4 superview];
      [v33 bounds];
      v35 = v34 * 0.5;
      [(UIViewController *)self formSheetSize];
      v37 = v36 * 0.5;
      v38 = __UIStatusBarManagerForWindow(v5);
      [v38 defaultStatusBarHeightInOrientation:1];
      v40 = v39;

      v41 = [v4 layer];
      [v41 setPosition:{v35, v37 + v40}];
    }

    else
    {
      if ([v5 isRotating])
      {
        v42 = 4;
      }

      else
      {
        v42 = 0;
      }

      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __38__UIViewController__keyboardWillShow___block_invoke;
      v48[3] = &unk_1E70F6848;
      v49 = v4;
      v50 = v46;
      [UIView animateWithDuration:v42 delay:v48 options:0 animations:0.3833 completion:0.0];
      v33 = v49;
    }
  }
}

void __38__UIViewController__keyboardWillShow___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) superview];
  [v2 convertPoint:0 fromView:{*(a1 + 40), *(a1 + 48)}];
  [*(a1 + 32) setCenter:?];
}

- (void)_keyboardWillHide:(id)a3
{
  v4 = [(UIViewController *)self interfaceOrientation];
  if ((v4 - 3) <= 1)
  {
    v5 = v4;
    v6 = [(UIViewController *)self _visibleView];
    v7 = [v6 window];
    if ([v7 _isHostedInAnotherProcess])
    {
      [v7 bounds];
      x = v47.origin.x;
      y = v47.origin.y;
      width = v47.size.width;
      height = v47.size.height;
      MidX = CGRectGetMidX(v47);
      v48.origin.x = x;
      v48.origin.y = y;
      v48.size.width = width;
      v48.size.height = height;
      MidY = CGRectGetMidY(v48);
    }

    else
    {
      v14 = [objc_opt_self() mainScreen];
      [v14 bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v39 = v16 + v20 * 0.5;
      v23 = __UIStatusBarManagerForWindow(v7);
      [v23 defaultStatusBarHeightInOrientation:v5];
      v25 = v24;

      v26 = [(UIViewController *)self interfaceOrientation];
      v27 = 0.0;
      if (v26 != UIInterfaceOrientationPortrait)
      {
        if ([(UIViewController *)self interfaceOrientation]== UIInterfaceOrientationLandscapeLeft)
        {
          v27 = -1.57079633;
        }

        else if ([(UIViewController *)self interfaceOrientation]== UIInterfaceOrientationLandscapeRight)
        {
          v27 = 1.57079633;
        }

        else
        {
          v28 = [(UIViewController *)self interfaceOrientation];
          v27 = 3.14159265;
          if (v28 != UIInterfaceOrientationPortraitUpsideDown)
          {
            v27 = 0.0;
          }
        }
      }

      [UIScreen transformForScreenOriginRotation:v27];
      [v7 convertPoint:0 fromView:{vaddq_f64(v46, vaddq_f64(vmulq_n_f64(v44, v39), vmulq_n_f64(v45, v18 + v22 * 0.5 + v25 * 0.5)))}];
      MidX = v29;
      MidY = v30;
    }

    v31 = [v6 superview];
    [v31 convertPoint:0 fromView:{MidX, MidY}];
    v33 = v32;
    v35 = v34;

    v36 = [v7 isRotating];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __38__UIViewController__keyboardWillHide___block_invoke;
    v40[3] = &unk_1E70F6848;
    v41 = v6;
    if (v36)
    {
      v37 = 4;
    }

    else
    {
      v37 = 0;
    }

    v42 = v33;
    v43 = v35;
    v38 = v6;
    [UIView animateWithDuration:v37 delay:v40 options:0 animations:0.3833 completion:0.0];
  }
}

- (BOOL)_isInSheetPresentation
{
  if (!self->_parentModalViewController)
  {
    goto LABEL_9;
  }

  if ([(UIViewController *)self modalPresentationStyle]== 16 || [(UIViewController *)self modalPresentationStyle]== UIModalPresentationFormSheet)
  {
    LOBYTE(parentModalViewController) = 1;
    return parentModalViewController;
  }

  parentModalViewController = [(UIViewController *)self modalPresentationStyle];
  if (parentModalViewController == 1)
  {
    return parentModalViewController;
  }

  if (self->_parentModalViewController && [(UIViewController *)self modalPresentationStyle]== UIModalPresentationCurrentContext)
  {
    parentModalViewController = self->_parentModalViewController;
  }

  else
  {
LABEL_9:
    parentModalViewController = self->_parentViewController;
    if (!parentModalViewController)
    {
      return parentModalViewController;
    }
  }

  LOBYTE(parentModalViewController) = [(UIViewController *)parentModalViewController _isInSheetPresentation];
  return parentModalViewController;
}

- (BOOL)_useSheetRotation
{
  if (self->_dropShadowView)
  {
    return 1;
  }

  if ([(UIViewController *)self modalPresentationStyle]== 16)
  {
    return 1;
  }

  return [(UIViewController *)self modalPresentationStyle]== UIModalPresentationCustom;
}

- (uint64_t)_transitionForModalTransitionStyle:(int)a3 appearing:
{
  if (result)
  {
    if (_AXSReduceMotionReduceSlideTransitionsEnabled())
    {
      return 6;
    }

    if (a2 > 10)
    {
      if (a2 <= 13)
      {
        if (a2 == 11)
        {
          v5 = a3 == 0;
          v6 = 7;
          v7 = 3;
LABEL_29:
          if (v5)
          {
            return v6;
          }

          else
          {
            return v7;
          }
        }

        if (a2 != 12)
        {
          v5 = a3 == 0;
          v6 = 12;
          v7 = 18;
          goto LABEL_29;
        }

        v10 = a3 == 0;
        v11 = 16;
        goto LABEL_33;
      }

      if (a2 != 14)
      {
        if (a2 == 15)
        {
          return 2;
        }

        if (a2 == 16)
        {
          return 1;
        }

        goto LABEL_24;
      }

      v10 = a3 == 0;
      v11 = 19;
LABEL_33:
      if (v10)
      {
        return v11 + 1;
      }

      else
      {
        return v11;
      }
    }

    if (a2 <= 1)
    {
      if (a2 == 1)
      {
        v8 = a3 == 0;
        v9 = 10;
LABEL_21:
        if (v8)
        {
          return v9;
        }

        else
        {
          return v9 + 1;
        }
      }
    }

    else
    {
      switch(a2)
      {
        case 2:
          return 6;
        case 3:
          v10 = a3 == 0;
          v11 = 13;
          goto LABEL_33;
        case 10:
          v8 = a3 == 0;
          v9 = 8;
          goto LABEL_21;
      }
    }

LABEL_24:
    v10 = a3 == 0;
    v11 = 8;
    goto LABEL_33;
  }

  return result;
}

- (void)_childViewControllerWillBePresentedFromViewControllerDelayingPresentationWithPresenter:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __107__UIViewController__childViewControllerWillBePresentedFromViewControllerDelayingPresentationWithPresenter___block_invoke;
  v6[3] = &unk_1E7104210;
  v7 = v4;
  v5 = v4;
  [UIViewController _enumerateVisibleChildControllers:1 includePresentedChildren:v6 usingBlock:?];
}

- (void)_cancelDelayedPresentation:(BOOL)a3
{
  v3 = a3;
  v5 = objc_getAssociatedObject(self, &unk_1ED498593);
  if (v5)
  {
    v20 = v5;
    v6 = [v5 invocationTarget];
    objc_setAssociatedObject(v6, &unk_1ED498592, 0, 1);
    objc_setAssociatedObject(self, &unk_1ED498593, 0, 1);
    v7 = *(v20 + 4) == 0;
    v8 = *(v20 + 6);
    if (v8)
    {
      v9 = v8;
      dispatch_source_cancel(v8);
    }

    v10 = v20;
    if ((*(v20 + 8) & 1) == 0)
    {
      v11 = [v20 delayingController];
      v12 = objc_opt_class();
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cancelling delayed presentation of <%s: %p>", class_getName(v12), v11];
      v14 = [v20 windowSceneIgnoringEvents];
      [v14 _endIgnoringInteractionEventsForReason:v13];

      [v20 setWindowSceneIgnoringEvents:0];
      v10 = v20;
    }

    v15 = *(v10 + 4);
    if (v15)
    {
      v16 = (*(v15 + 16))(v15, v3);
      v10 = v20;
      v7 = v16;
    }

    if (!v7 || !v3)
    {
      v19 = 0;
    }

    else
    {
      v18 = *(v10 + 3);
      v10 = v20;
      v19 = v18;
    }

    [v10 setPresentInvocation:0];
    [v20 setCancellationHandler:0];
    if (v19)
    {
      [v19 invoke];
    }

    v5 = v20;
  }
}

- (void)_beginDelayingPresentation:(double)a3 cancellationHandler:(id)a4
{
  v8 = a4;
  v6 = objc_getAssociatedObject(self, &unk_1ED498593);
  if (v6)
  {
    v7 = v6;
    [(_UIDelayedPresentationContext *)v6 incrementRequestCount];
  }

  else
  {
    v7 = [[_UIDelayedPresentationContext alloc] initWithTimeout:v8 cancellationHandler:a3];
    objc_setAssociatedObject(self, &unk_1ED498593, v7, 1);
  }
}

- (id)_customPresentationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 _overrideTransitioningDelegate];
  if (v11 && (v12 = v11, [v8 _overrideTransitioningDelegate], v13 = objc_claimAutoreleasedReturnValue(), NSClassFromString(&cfstr_Uialertcontrol_10.isa), isKindOfClass = objc_opt_isKindOfClass(), v13, v12, (isKindOfClass & 1) == 0) || (-[UIViewController _presentationControllerForPresentedController:presentingController:sourceController:](self, "_presentationControllerForPresentedController:presentingController:sourceController:", v8, v9, v10), (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v16 = [(UIViewController *)self transitioningDelegate];
    if (v16 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v15 = [v16 presentationControllerForPresentedViewController:v8 presentingViewController:v9 sourceViewController:v10];
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (id)_customAnimatorForPresentedController:(void *)a3 presentingController:(void *)a4 sourceController:(void *)a5 originalPresentationController:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (a1)
  {
    v12 = [a5 _preferredTransition];
    if (v12)
    {
      v13 = v12;
      [v9 setPreferredTransition:v12];
    }

    else
    {
      v13 = [v9 preferredTransition];
      if (!v13)
      {
        goto LABEL_6;
      }
    }

    v14 = [v10 traitCollection];
    v15 = [v13 _transitionControllerForViewController:v9 traits:v14 isAppearing:1];

    if (v15)
    {
LABEL_14:

      goto LABEL_15;
    }

LABEL_6:
    v16 = [a1 transitioningDelegate];
    if (v16)
    {
      if (objc_opt_respondsToSelector())
      {
        v17 = [v16 animationControllerForPresentedController:v9 presentingController:v10 sourceController:v11];
LABEL_11:
        v15 = v17;
LABEL_13:

        goto LABEL_14;
      }

      if (objc_opt_respondsToSelector())
      {
        v17 = [v16 animatorForPresentedController:v9 presentingController:v10 sourceController:v11];
        goto LABEL_11;
      }
    }

    v15 = 0;
    goto LABEL_13;
  }

  v15 = 0;
LABEL_15:

  return v15;
}

- (id)_customInteractionControllerForPresentation:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 _interactionController];
    }

    else
    {
      v5 = [a1 transitioningDelegate];
      if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v4 = [v5 interactionControllerForPresentation:v3];
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_customAnimatorForDismissedController:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 preferredTransition];
    if (v5)
    {
      v6 = [v4 traitCollection];
      v7 = [v5 _transitionControllerForViewController:v4 traits:v6 isAppearing:0];

      if (v7)
      {
        goto LABEL_12;
      }
    }

    v8 = [a1 transitioningDelegate];
    if (v8)
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [v8 animationControllerForDismissedController:v4];
LABEL_9:
        v7 = v9;
LABEL_11:

LABEL_12:
        goto LABEL_13;
      }

      if (objc_opt_respondsToSelector())
      {
        v9 = [v8 animatorForDismissedController:v4];
        goto LABEL_9;
      }
    }

    v7 = 0;
    goto LABEL_11;
  }

  v7 = 0;
LABEL_13:

  return v7;
}

- (id)_customInteractionControllerForDismissal:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 _interactionController];
    }

    else
    {
      v5 = [a1 transitioningDelegate];
      if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v4 = [v5 interactionControllerForDismissal:v3];
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)_performWithoutDeferringTransitionsAllowingAnimation:(void *)a3 actions:
{
  v6 = a3;
  objc_opt_self();
  if (dyld_program_sdk_at_least())
  {
    v4 = +[UIViewController _shouldDeferTransitions];
    objc_opt_self();
    v5 = _ShouldAnimateImmediateTransitions;
    [UIViewController _setShouldDeferTransitions:0];
    objc_opt_self();
    _ShouldAnimateImmediateTransitions = a2;
    v6[2]();
    objc_opt_self();
    _ShouldAnimateImmediateTransitions = v5;
    [UIViewController _setShouldDeferTransitions:v4];
  }

  else
  {
    v6[2]();
  }
}

+ (void)_scheduleTransition:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (_ShouldDeferTransitions == 1)
  {
    v5 = dyld_program_sdk_at_least() ^ 1;
    v6 = _UIMainBundleIdentifier();
    if (_UIUpdateCycleEnabled() && ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_DisableDelayedScheduleTransition, @"DisableDelayedScheduleTransition", _UIInternalPreferenceUpdateBool) & 1) != 0 || !byte_1ED48AC8C) && [&unk_1EFE2BC98 containsObject:v6])
    {
      v7 = dispatch_time(0, 50000000);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __40__UIViewController__scheduleTransition___block_invoke;
      v8[3] = &unk_1E7101B70;
      v10 = v5;
      v9 = v4;
      dispatch_after(v7, MEMORY[0x1E69E96A0], v8);
    }

    else
    {
      [UIApp _performAfterCATransactionCommitsWithLegacyRunloopObserverBasedTiming:v5 block:v4];
    }
  }

  else
  {
    (*(v3 + 2))(v3);
  }
}

- (void)_transitionToViewController:(id)a3 whilePerforming:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v93 = a5;
  v10 = [(UIViewController *)self view];
  v11 = [v10 window];
  v12 = [v11 rootViewController];

  v13 = [v12 view];
  v14 = [v13 window];
  v15 = [v14 snapshotViewAfterScreenUpdates:0];

  v16 = [(UIViewController *)self _existingPresentationControllerImmediate:1 effective:1];
  v94 = v16;
  if (v16)
  {
    [v16 presentedView];
  }

  else
  {
    [(UIViewController *)self view];
  }
  v17 = ;
  v18 = [v17 snapshotViewAfterScreenUpdates:0];

  v95 = v12;
  v19 = [v12 view];
  v20 = [v19 window];

  [v20 addSubview:v15];
  v21 = [(UIViewController *)self view];
  [v21 frame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [(UIViewController *)self view];
  v31 = [v30 superview];
  [v20 convertRect:v31 fromView:{v23, v25, v27, v29}];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  [v18 setFrame:{v33, v35, v37, v39}];
  [v15 addSubview:v18];
  [v20 addSubview:v18];
  v109[0] = MEMORY[0x1E69E9820];
  v109[1] = 3221225472;
  v109[2] = __75__UIViewController__transitionToViewController_whilePerforming_completion___block_invoke;
  v109[3] = &unk_1E70F0F78;
  v92 = v9;
  v110 = v92;
  [UIView performWithoutAnimation:v109];
  v40 = [v8 parentViewController];
  v41 = [v40 view];

  if (v41)
  {
    v42 = v41;
  }

  else
  {
    v42 = [v8 view];
  }

  v43 = v42;
  v44 = [v8 view];
  [v44 bounds];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = [v8 view];
  [v43 convertRect:v53 fromView:{v46, v48, v50, v52}];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;

  v62 = [v43 resizableSnapshotViewFromRect:1 afterScreenUpdates:v55 withCapInsets:{v57, v59, v61, 0.0, 0.0, 0.0, 0.0}];
  [v62 setFrame:{v33, v35, v37, v39}];
  [v20 addSubview:v62];
  v63 = [v8 view];
  [v63 frame];
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v72 = [v8 view];
  v73 = [v72 superview];
  [v20 convertRect:v73 fromView:{v65, v67, v69, v71}];
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v81 = v80;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = v91;
  aBlock[2] = __75__UIViewController__transitionToViewController_whilePerforming_completion___block_invoke_3;
  aBlock[3] = &unk_1E70FFF08;
  v82 = v18;
  v102 = v82;
  v105 = v75;
  v106 = v77;
  v107 = v79;
  v108 = v81;
  v83 = v62;
  v103 = v83;
  v84 = v15;
  v104 = v84;
  v85 = _Block_copy(aBlock);
  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = v91;
  v96[2] = __75__UIViewController__transitionToViewController_whilePerforming_completion___block_invoke_4;
  v96[3] = &unk_1E71042A8;
  v86 = v84;
  v97 = v86;
  v87 = v82;
  v98 = v87;
  v88 = v83;
  v99 = v88;
  v89 = v93;
  v100 = v89;
  v90 = _Block_copy(v96);
  if (_AXSReduceMotionEnabled())
  {
    [UIView animateKeyframesWithDuration:0 delay:v85 options:v90 animations:0.2 completion:0.0];
  }

  else
  {
    [UIView _animateUsingDefaultDampedSpringWithDelay:0 initialSpringVelocity:v85 options:v90 animations:0.0 completion:60.0];
  }
}

void __75__UIViewController__transitionToViewController_whilePerforming_completion___block_invoke(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __75__UIViewController__transitionToViewController_whilePerforming_completion___block_invoke_2;
  v1[3] = &unk_1E70F0F78;
  v2 = *(a1 + 32);
  [UIViewController _performWithoutDeferringTransitions:v1];
}

uint64_t __75__UIViewController__transitionToViewController_whilePerforming_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  [*(a1 + 40) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 48);

  return [v2 setAlpha:0.0];
}

uint64_t __75__UIViewController__transitionToViewController_whilePerforming_completion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) removeFromSuperview];
  [*(a1 + 48) removeFromSuperview];
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_transitionToNavigationViewController:(id)a3 withWrapper:(id)a4
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v47 = a4;
  v42 = self;
  v46 = [(UIViewController *)self _existingPresentationControllerImmediate:1 effective:1];
  v7 = [v46 _viewsParticipatingInNavigationControllerTransition];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v60;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v60 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v59 + 1) + 8 * i);
        v64[0] = @"view";
        v64[1] = @"frame";
        v65[0] = v13;
        v14 = MEMORY[0x1E696B098];
        v15 = [v6 view];
        [v13 frame];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v24 = [v13 superview];
        [v15 convertRect:v24 fromView:{v17, v19, v21, v23}];
        v25 = [v14 valueWithCGRect:?];
        v65[1] = v25;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:2];
        [v8 addObject:v26];
      }

      v10 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
    }

    while (v10);
  }

  v45 = [v46 _animatorForContainmentTransition];
  v27 = [[_UISimpleTransitioningDelegate alloc] initWithAnimator:v45];
  [(_UISimpleTransitioningDelegate *)v27 _setSuppressCrossFadeNavigationBarAnimation:1];
  v28 = [v6 delegate];
  [v6 setDelegate:v27];
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __70__UIViewController__transitionToNavigationViewController_withWrapper___block_invoke;
  v58[3] = &unk_1E70F3590;
  v58[4] = v42;
  [UIViewController _performWithoutDeferringTransitions:v58];
  v44 = v27;
  if (v47)
  {
    v29 = v47[2]();
  }

  else
  {
    v29 = v42;
  }

  v43 = v29;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v30 = v8;
  v31 = [v30 countByEnumeratingWithState:&v54 objects:v63 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v55;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v55 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v54 + 1) + 8 * j);
        v36 = [v35 objectForKeyedSubscript:@"view"];
        v37 = [v35 objectForKeyedSubscript:@"frame"];
        [v37 CGRectValue];
        [v36 setFrame:?];

        v38 = [v6 view];
        v39 = [v35 objectForKeyedSubscript:@"view"];
        [v38 addSubview:v39];
      }

      v32 = [v30 countByEnumeratingWithState:&v54 objects:v63 count:16];
    }

    while (v32);
  }

  [v6 pushViewController:v43 animated:1];
  v40 = objc_opt_self();
  v41 = [v6 transitionCoordinator];
  if (v41)
  {
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __70__UIViewController__transitionToNavigationViewController_withWrapper___block_invoke_2;
    v49[3] = &unk_1E7102EE0;
    v50 = v6;
    v51 = v28;
    v52 = v44;
    v53 = v30;
    [v41 animateAlongsideTransition:0 completion:v49];
  }
}

void __70__UIViewController__transitionToNavigationViewController_withWrapper___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  v2 = objc_opt_self();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 56);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v9 + 1) + 8 * v7) objectForKeyedSubscript:{@"view", v9}];
        [v8 removeFromSuperview];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_presentViewController:(id)a3 modalSourceViewController:(id)a4 presentationController:(id)a5 animationController:(id)a6 interactionController:(id)a7 handoffData:(id)a8 completion:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  if (![(UIViewController *)self _shouldPresentViewController:v15 withPresentationController:v17])
  {
    goto LABEL_40;
  }

  v67 = v20;
  v68 = v19;
  v22 = objc_opt_class();
  if (v22 == objc_opt_class())
  {
    v23 = [v18 transition];
    v24 = v23 != 0;
  }

  else
  {
    v23 = 0;
    v24 = 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = self;
  }

  else
  {
    v25 = [(UIViewController *)self _splitViewControllerEnforcingClass:1];
  }

  v64 = v25;
  [(UIViewController *)v25 _descendantWillPresentViewController:v15 modalSourceViewController:v16 presentationController:v17 animated:v24];
  v26 = [[UIViewControllerAction alloc] initWithViewController:v15 name:@"PresentModal" transition:v23];
  currentAction = self->_currentAction;
  self->_currentAction = v26;

  v28 = [(UIViewController *)self currentAction];
  v30 = v28;
  if (v28)
  {
    objc_setProperty_nonatomic_copy(v28, v29, v21, 24);
  }

  [v15 _setModalSourceViewController:v16];
  v31 = [(UIViewController *)self view];
  v32 = [_UIEditMenuSceneComponent sceneComponentForView:v31];
  [v32 dismissCurrentMenu];

  v33 = 8;
  if (v24)
  {
    v33 = 2097160;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFFFFDFFFFFLL | v33;
  v34 = [(UIViewController *)self view];
  obj = [v34 firstResponder];

  [(UIViewController *)&self->super.super.isa _addChildModalViewController:v15];
  [v15 _presentingViewControllerWillChange:self];
  objc_getClass("UIActivityViewController");
  LODWORD(v34) = objc_opt_isKindOfClass();
  objc_opt_class();
  v35 = v34 & (objc_opt_isKindOfClass() ^ 1);
  v20 = v67;
  v63 = v35;
  if ([v17 _shouldPreserveFirstResponder] & 1) != 0 || (v35)
  {
    v36 = [(UIViewController *)self view];
    v37 = [v36 firstResponder];
    modalPreservedFirstResponder = self->_modalPreservedFirstResponder;
    self->_modalPreservedFirstResponder = v37;

    v19 = v68;
    if (!self->_modalPreservedFirstResponder)
    {
      objc_storeStrong(&self->_modalPreservedFirstResponder, obj);
    }
  }

  else
  {
    v19 = v68;
  }

  v39 = off_1E70EA000;
  if (self->_modalPreservedFirstResponder)
  {
    v60 = v21;
    v62 = v16;
    v40 = [(UIViewController *)self _keyboardSceneDelegate];
    v41 = [(UIViewController *)self view];
    v42 = [v41 window];
    v43 = [v40 responder];
    v44 = [v43 _responderWindow];
    v61 = v18;
    if (v42 == v44)
    {
      v46 = 1;
    }

    else
    {
      v45 = [v40 responder];
      if (v45)
      {
        v46 = [v17 _preserveResponderAcrossWindows];
      }

      else
      {
        v46 = 0;
      }

      v39 = off_1E70EA000;
    }

    v47 = [v40 responder];
    if ([v47 _shouldRestorationInputViewsOnlyWhenKeepingFirstResponder])
    {
      v48 = v39;
      v49 = [v17 _shouldKeepCurrentFirstResponder];

      v50 = v49 & v46;
      v39 = v48;
      v16 = v62;
      v20 = v67;
      v21 = v60;
      if (v50 != 1)
      {
        goto LABEL_34;
      }
    }

    else
    {

      v16 = v62;
      v20 = v67;
      v21 = v60;
      if ((v46 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    if (([v17 _shouldKeepCurrentFirstResponder] | v63))
    {
      v51 = [MEMORY[0x1E696B098] valueWithPointer:self];
      [v40 _preserveInputViewsWithId:v51 animated:{-[__objc2_class areAnimationsEnabled](v39[431], "areAnimationsEnabled")}];
    }

    else
    {
      if (dyld_program_sdk_at_least() && !dyld_program_sdk_at_least())
      {
        goto LABEL_34;
      }

      v51 = [MEMORY[0x1E696B098] valueWithPointer:self];
      [v40 _preserveInputViewsWithId:v51];
    }

LABEL_34:
    v18 = v61;
    v19 = v68;
  }

  [(UIViewController *)self _setPresentationController:v17];
  [v15 _presentingViewControllerIsChanging:self];
  v52 = [v17 presentingViewController];

  if (v52 != self)
  {
    v58 = [MEMORY[0x1E696AAA8] currentHandler];
    v59 = [v17 presentingViewController];
    [v58 handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:9464 description:{@"Attempt to present %@, which has a presentingViewController of %@, expected %@", v17, v59, self}];

    v39 = off_1E70EA000;
  }

  v53 = [(UIViewController *)self _window];
  v54 = [(__objc2_class *)v39[431] areAnimationsEnabled];
  v55 = v18;
  [v17 _presentWithAnimationController:v18 inWindow:v53 interactionController:v19 animated:v54 handoffData:v20];

  v56 = [(UIViewController *)self transitionCoordinator];
  [(UIViewController *)self _setPresentedStatusBarViewController:v15];
  [(UIViewController *)self _setPresentedUserInterfaceStyleViewController:v15];
  if (v56)
  {
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __157__UIViewController__presentViewController_modalSourceViewController_presentationController_animationController_interactionController_handoffData_completion___block_invoke;
    v69[3] = &unk_1E70F3B98;
    v69[4] = self;
    [v56 animateAlongsideTransition:0 completion:v69];
  }

  v57 = [v17 _parentPresentationController];
  [v57 _containedViewControllerModalStateChanged];

  v18 = v55;
LABEL_40:
}

uint64_t __157__UIViewController__presentViewController_modalSourceViewController_presentationController_animationController_interactionController_handoffData_completion___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if (result)
  {
    [*(a1 + 32) _setPresentedStatusBarViewController:0];
    v4 = *(a1 + 32);

    return [v4 _setPresentedUserInterfaceStyleViewController:0];
  }

  return result;
}

- (id)_adaptedPresentationControllerForTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_originalPresentationController)
  {
    v8 = [(UIViewController *)self presentedViewController];
    if ([v8 isBeingDismissed] & 1) != 0 || (v9 = objc_msgSend(v6, "horizontalSizeClass"), v10 = objc_msgSend(v6, "verticalSizeClass"), v11 = self->_originalPresentationController, -[UIViewController traitCollection](self, "traitCollection"), v12 = objc_claimAutoreleasedReturnValue(), LODWORD(v11) = -[UIPresentationController _shouldAdaptFromTraitCollection:toTraitCollection:](v11, "_shouldAdaptFromTraitCollection:toTraitCollection:", v12, v6), v12, !v11) || (-[UIViewController traitCollection](self, "traitCollection"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v8, "_shouldAbortAdaptationFromTraitCollection:toTraitCollection:withTransitionCoordinator:", v13, v6, v7), v13, (v14))
    {
      v15 = 0;
    }

    else
    {
      v17 = [(UIPresentationController *)self->_originalPresentationController _presentationControllerForTraitCollection:v6];
      v18 = [(UIViewController *)self _presentationController];
      if (v17 == v18)
      {
        v15 = 0;
      }

      else
      {
        [(UIViewController *)self _setPresentedStatusBarViewController:0];
        [(UIViewController *)self _setPresentedUserInterfaceStyleViewController:0];
        [(UIPresentationController *)v17 _setAdaptiveTransitionCoordinator:v7];
        v19 = [v7 _mainContext];
        [(UIPresentationController *)v17 _setAdaptiveTransitionContext:v19];

        originalPresentationController = self->_originalPresentationController;
        if (v17 == originalPresentationController)
        {
          v21 = [(UIPresentationController *)originalPresentationController presentedViewController];
          v24 = self->_originalPresentationController;
          v23 = -1;
        }

        else
        {
          v21 = [(UIPresentationController *)originalPresentationController _presentedViewControllerForPresentationController:v17 traitCollection:v6];
          v22 = self->_originalPresentationController;
          v23 = [(UIPresentationController *)v17 presentationStyle];
          v24 = v22;
        }

        [(UIPresentationController *)v24 _sendDelegateWillPresentWithAdaptiveStyle:v23 transitionCoordinator:v7];
        [(UIPresentationController *)v17 _setPresentedViewController:v21];
        v25 = [(UIPresentationController *)v18 presentingViewController];
        [(UIPresentationController *)v17 _setPresentingViewController:v25];

        [(UIPresentationController *)v18 _transitionToPresentationController:v17 withTransitionCoordinator:v7];
        if (v21 != v8)
        {
          [v21 _replaceViewControllerInPresentationHierarchy:v8];
        }

        [(UIViewController *)self _setPresentationController:v17];
        [(UIViewController *)self _setPresentationSizeClassPair:v9, v10];
        [(UIViewController *)self _setPresentedStatusBarViewController:v21];
        [(UIViewController *)self _setPresentedUserInterfaceStyleViewController:v21];
        v15 = v17;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_replaceViewControllerInPresentationHierarchy:(id)a3
{
  v12 = a3;
  v4 = [v12 parentModalViewController];
  [(UIViewController *)v4 _removeChildModalViewController:v12];
  [(UIViewController *)v4 _addChildModalViewController:?];
  v5 = [v12 _existingPresentationControllerImmediate:1 effective:1];
  v6 = [v5 _childPresentationController];

  if (v6)
  {
    v7 = [v12 _presentationController];
    [(UIViewController *)self _setPresentationController:v7];

    [v12 _setPresentationController:0];
    v8 = [v12 _originalPresentationController];
    [(UIViewController *)self _setOriginalPresentationController:v8];

    [v12 _setOriginalPresentationController:0];
    v9 = [v12 _presentationSizeClassPair];
    [(UIViewController *)self _setPresentationSizeClassPair:v9, v10];
    [v6 _setPresentingViewController:self];
    v11 = [v6 presentedViewController];
    [(UIViewController *)v12 _removeChildModalViewController:v11];
    [(UIViewController *)&self->super.super.isa _addChildModalViewController:v11];
  }
}

- (void)presentViewController:(id)a3 withTransition:(int)a4 completion:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = a5;
  if (!_UIAppUseModernRotationAndPresentationBehaviors())
  {
    v11 = v8;
    v194[0] = v11;
    v193 = v6;
    v12 = v9;
    if (!self)
    {
LABEL_177:

      goto LABEL_178;
    }

    v192 = sel__windowControllerBasedPresentViewController_withTransition_completion_;
    if ([(UIViewController *)self _isWaitingForDelayedPresentation])
    {
      v13 = objc_getAssociatedObject(self, &unk_1ED498592);
      NSLog(&cfstr_AttemptToPrese_0.isa, v11, self, v13);

      goto LABEL_177;
    }

    if (dyld_program_sdk_at_least() & 1) != 0 || (+[UIDevice currentDevice](UIDevice, "currentDevice"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 userInterfaceIdiom], v14, (v15 & 0xFFFFFFFFFFFFFFFBLL) == 1) || (objc_msgSend(UIApp, "_isSpringBoard") & 1) != 0 || (+[UIApplication displayIdentifier](UIApplication, "displayIdentifier"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(@"com.apple.facetime", "isEqualToString:", v16), v16, (v17))
    {
      if (!dyld_program_sdk_at_least())
      {
        goto LABEL_19;
      }

      v18 = +[UIDevice currentDevice];
      v19 = [v18 userInterfaceIdiom];

      if ((v19 & 0xFFFFFFFFFFFFFFFBLL) == 1 || [v11 modalPresentationStyle] != 16 && objc_msgSend(v11, "modalPresentationStyle") != 2 && objc_msgSend(v11, "modalPresentationStyle") != 1)
      {
        goto LABEL_19;
      }
    }

    else if ([v11 modalPresentationStyle] == 17 || objc_msgSend(v11, "modalPresentationStyle") == 4)
    {
      goto LABEL_19;
    }

    [v11 setModalPresentationStyle:0];
LABEL_19:
    v20 = 0x1E696A000uLL;
    if (v11)
    {
      v21 = 0;
    }

    else
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Application tried to present a nil modal view controller on target %@.", self];
    }

    v170 = self->_parentViewController;
    v22 = [(UIViewController *)v170 presentedViewController];
    if (v22)
    {
      v23 = v22;
      v24 = [(UIViewController *)self modalTransitionStyle];

      if (v24 == UIModalTransitionStylePartialCurl)
      {
        v20 = 0x1E696A000uLL;
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Application tried to present a nested modal view controller while curled %@.", self];

        v21 = v25;
      }

      else
      {
        v20 = 0x1E696A000;
      }
    }

    v26 = [(UIViewController *)self _popoverController];
    if (v26 || [v11 modalPresentationStyle] || (-[UIViewController presentedViewController](v170, "presentedViewController"), v26 = objc_claimAutoreleasedReturnValue(), v26 == self) && -[UIViewController modalPresentationStyle](self, "modalPresentationStyle"))
    {
      v27 = [v11 modalTransitionStyle];

      if (v27 != 3)
      {
        v20 = 0x1E696A000;
        goto LABEL_32;
      }

      v20 = 0x1E696A000uLL;
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Application tried to present UIModalTransitionStylePartialCurl to or from non-fullscreen view controller %@.", self];
      v21 = v26 = v21;
    }

LABEL_32:
    if ([v11 modalPresentationStyle] == 3)
    {
      v28 = [(UIViewController *)self _popoverController];
      if (v28)
      {
        v29 = v28;
        v30 = [v11 modalTransitionStyle];

        if (v30)
        {
          v20 = 0x1E696A000uLL;
          v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Application tried to present inside popover with transition style other than UIModalTransitionStyleCoverVertical %@.", self];

          v21 = v31;
        }

        else
        {
          v20 = 0x1E696A000uLL;
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!dyld_program_sdk_at_least())
      {
        v32 = @"Application tried to present a split view controller %@.";
        goto LABEL_47;
      }

      if ([v11 modalPresentationStyle] && objc_msgSend(v11, "modalPresentationStyle") != 17 && objc_msgSend(v11, "modalPresentationStyle") != 4)
      {
        v32 = @"Application tried to present a split view controller with a modal presentation style other than full screen or custom %@.";
LABEL_47:
        v33 = [*(v20 + 3776) stringWithFormat:v32, self];

        v21 = v33;
      }
    }

    v34 = [v11 parentViewController];
    if (v34 || ([v11 _parentModalViewController], (v34 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v60 = [v11 _popoverController];

      if (!v60)
      {
LABEL_52:
        if (v21)
        {
          v151 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v21 userInfo:0];
          objc_exception_throw(v151);
        }

        if ([v11 _isDelayingPresentation])
        {
          [v11 __viewControllerWillBePresented:1];
          v184 = MEMORY[0x1E69E9820];
          v185 = 3221225472;
          v186 = __90__UIViewController__windowControllerBasedPresentViewController_withTransition_completion___block_invoke;
          v187 = &unk_1E7104210;
          v188 = self;
          [UIViewController _enumerateVisibleChildControllers:1 includePresentedChildren:&v184 usingBlock:?];
          v174 = self;
          v36 = MEMORY[0x1E695DF50];
          v37 = [(UIViewController *)self methodSignatureForSelector:sel__windowControllerBasedPresentViewController_withTransition_completion_];
          v38 = [v36 invocationWithMethodSignature:v37];

          [v38 setArgument:&v174 atIndex:0];
          [v38 setTarget:self];
          [v38 setArgument:&v192 atIndex:1];
          [v38 setArgument:v194 atIndex:2];
          [v38 setArgument:&v193 atIndex:3];
          newValue[0] = _Block_copy(v12);
          [v38 setArgument:newValue atIndex:4];
          [v38 retainArguments];
          v39 = objc_getAssociatedObject(v194[0], &unk_1ED498593);
          v40 = [(UIViewController *)self _window];
          v41 = [v40 windowScene];
          [v39 setWindowSceneIgnoringEvents:v41];

          [v39 setPresentInvocation:v38];
          objc_setAssociatedObject(self, &unk_1ED498592, v194[0], 1);
          [(_UIDelayedPresentationContext *)v39 beginDelayedPresentation];

LABEL_176:
          goto LABEL_177;
        }

        v168 = v6;
        v42 = v12;
        v43 = v9;
        [v11 __viewControllerWillBePresented:0];
        v44 = [(UIViewController *)self view];
        v45 = [_UIEditMenuSceneComponent sceneComponentForView:v44];
        [v45 dismissCurrentMenu];

        v46 = [v11 modalPresentationStyle];
        v47 = [(UIViewController *)self _modalPresenter:v46];
        v48 = v47;
        if (v47 == v11)
        {
          v152 = MEMORY[0x1E695DF30];
          v153 = *MEMORY[0x1E695D940];
          v154 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Application tried to present modal view controller on itself. Presenting controller is %@.", v47];
          v155 = [v152 exceptionWithName:v153 reason:v154 userInfo:0];
          v156 = v155;

          objc_exception_throw(v155);
        }

        v49 = [v47 view];
        v50 = [v49 superview];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        v52 = [v48 definesPresentationContext];
        if (v46 == 3)
        {
          v53 = v52;
        }

        else
        {
          v53 = 0;
        }

        v158 = isKindOfClass;
        v164 = v46;
        v162 = v53 & (isKindOfClass ^ 1);
        if (v168)
        {
          if ((v53 & (isKindOfClass ^ 1)) != 0)
          {
            v54 = [v48 providesPresentationContextTransitionStyle];
            if (v54)
            {
              v55 = v48;
            }

            else
            {
              v55 = v11;
            }
          }

          else
          {
            v54 = 0;
            v55 = v11;
          }

          v9 = v43;
          v57 = v55;
          v58 = [(UIViewController *)v57 _customAnimatorForPresentedController:v11 presentingController:v48 sourceController:self originalPresentationController:0];
          if (v58)
          {
            v56 = v58;
            v166 = [(UIViewController *)v57 _customInteractionControllerForPresentation:v58];

            v160 = 0;
            v59 = 1;
LABEL_76:
            v157 = v59;
            goto LABEL_77;
          }

          if (v54)
          {
            v168 = -[UIViewController _transitionForModalTransitionStyle:appearing:](self, [v48 modalTransitionStyle], 1);
          }

          v193 = v168;
          v56 = [[UIViewControllerBuiltinTransitionViewAnimator alloc] initWithTransition:v168];

          v59 = 0;
          v166 = 0;
          if (v164 != 4 || !v168)
          {
            v160 = v168 == 0;
            goto LABEL_76;
          }

          NSLog(&cfstr_WarningUimodal.isa, self, v11);
          v160 = 0;
          v164 = 0;
          v166 = 0;
          v157 = 0;
        }

        else
        {
          v168 = 0;
          v56 = 0;
          v166 = 0;
          v157 = 0;
          v160 = 1;
          v9 = v43;
        }

LABEL_77:
        [v11 _setModalSourceViewController:self];
        v61 = [v48 childModalViewController];
        v167 = v42;
        if (v61 || v48[19])
        {
          v62 = 1;
        }

        else
        {
          v100 = [v48 view];
          v101 = [v100 superview];
          v62 = v101 == 0;
        }

        v63 = v168;

        v64 = [v48 view];
        v65 = [v64 window];

        if (!v65 || v62)
        {
          if (v48[19])
          {
            NSLog(&cfstr_WarningAttempt.isa, v11, v48);
          }

          else
          {
            v72 = [v48 view];
            v73 = [v72 superview];

            if (v73)
            {
              v74 = [v48 childModalViewController];
              NSLog(&cfstr_WarningAttempt_1.isa, v11, v48, v74);
            }

            else
            {
              NSLog(&cfstr_WarningAttempt_0.isa, v11, v48);
            }
          }

          v12 = v167;
LABEL_175:

          goto LABEL_176;
        }

        v159 = v56;
        v169 = v8;
        v66 = [v48 _rootAncestorViewController];
        v67 = [v48 _existingView];
        v68 = [v67 window];
        v69 = [v68 rootViewController];
        v70 = v69;
        if (v66 == v69)
        {
        }

        else
        {
          v71 = [v48 _ancestorViewControllerIsInPopover];

          if (v71)
          {
            goto LABEL_92;
          }

          v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Presenting view controllers on detached view controllers is discouraged %@.", v48];
          NSLog(&stru_1EFB25450.isa, v66);
        }

LABEL_92:
        v75 = [[UIViewControllerAction alloc] initWithViewController:v11 name:@"PresentModal" transition:v63];
        v76 = v48[19];
        v48[19] = v75;

        v77 = [v48 currentAction];
        newValue[0] = MEMORY[0x1E69E9820];
        newValue[1] = 3221225472;
        newValue[2] = __90__UIViewController__windowControllerBasedPresentViewController_withTransition_completion___block_invoke_2;
        newValue[3] = &unk_1E70F3608;
        v191 = v167;
        if (v77)
        {
          objc_setProperty_nonatomic_copy(v77, v78, newValue, 24);
        }

        v79 = 2097160;
        if (v160)
        {
          v79 = 8;
        }

        v48[47] = (v48[47] & 0xFFFFFFFFFFDFFFFFLL | v79);
        v80 = [v48 view];
        v81 = [v80 firstResponder];

        [(UIViewController *)v48 _addChildModalViewController:v11];
        [v11 _presentingViewControllerWillChange:v48];
        v82 = [v48 view];
        v83 = [v82 firstResponder];
        v84 = v48[16];
        v48[16] = v83;

        if (!v48[16])
        {
          objc_storeStrong(v48 + 16, v81);
        }

        v161 = v81;
        v85 = [v48 view];
        v86 = [v85 window];
        v87 = [(UIViewController *)self _keyboardSceneDelegate];
        v88 = [v87 responder];
        v89 = [v88 _window];

        if (v86 == v89)
        {
          v90 = [(UIViewController *)self _keyboardSceneDelegate];
          v91 = [MEMORY[0x1E696B098] valueWithPointer:v48];
          [v90 _preserveInputViewsWithId:v91 animated:1];
        }

        v8 = v169;
        if (v164 == 15 || v164 == 3) && (v158)
        {
          v92 = 0;
        }

        else if (v164 == 15)
        {
          v92 = 3;
        }

        else
        {
          v92 = v164;
        }

        if (v162)
        {
          [v11 setDefinesPresentationContext:1];
        }

        if (v92 == 16 || v92 == 2)
        {
          v93 = [MEMORY[0x1E696AD88] defaultCenter];
          v94 = [v48 childModalViewController];
          v95 = [v48 _screen];
          [v93 addObserver:v94 selector:sel__keyboardWillShow_ name:@"UIKeyboardPrivateWillShowNotification" object:v95];

          v96 = [v48 childModalViewController];
          v97 = [v48 _screen];
          [v93 addObserver:v96 selector:sel__keyboardWillHide_ name:@"UIKeyboardPrivateWillHideNotification" object:v97];

          v8 = v169;
        }

        if ([v11 _isModalSheet])
        {
          v98 = [v11 view];
          v99 = v98;
          if (v92 == 16)
          {
            [v98 setAutoresizingMask:45];
          }

          else
          {
            v102 = objc_alloc_init(UIDropShadowView);
            [(UIDropShadowView *)v102 setContentView:v99];
            if (v92 == 2)
            {
              v103 = 45;
            }

            else
            {
              v103 = 21;
            }

            [(UIView *)v102 setAutoresizingMask:v103];
            [v11 setDropShadowView:v102];
          }
        }

        v104 = [v48 view];
        v105 = [v104 window];

        v165 = [v48 _popoverController];
        v106 = [v48 modalPresentationStyle];
        v163 = v105;
        if ((v92 - 1) >= 2)
        {
          if (v92 == 4)
          {
LABEL_139:
            v121 = [v48 view];
            v122 = [v121 superview];

            v123 = [UITransitionView alloc];
            [v122 bounds];
            v124 = [(UITransitionView *)v123 initWithFrame:?];
            v125 = v48[61];
            v48[61] = v124;

            v126 = v48[61];
            v127 = [v48 view];
            [v122 insertSubview:v126 aboveSubview:v127];

            v105 = v163;
            v128 = v48[61];
            v129 = [v48 view];
            [v128 addSubview:v129];

            v8 = v169;
LABEL_140:
            v130 = +[UIDevice currentDevice];
            v131 = [v130 userInterfaceIdiom];

            if (v92 == 3 && (v131 & 0xFFFFFFFFFFFFFFFBLL) == 1 && v106 != 16 && (v106 - 3) <= 0xFFFFFFFFFFFFFFFDLL && v165)
            {
              if (v11)
              {
                v11[47] = (v11[47] & 0xFFFFFFFFFFFFDFFFLL | (((v11[47] >> 14) & 1) << 13));
                [v11 setModalInPresentation:1];
              }

              [v165 _modalTransition:v63 fromViewController:v48 toViewController:v11 target:v48 didFinish:1];
              v132 = v63 == 13;
            }

            else
            {
              v133 = [UIWindowController windowControllerForWindow:v105];
              [v133 setPresenting:1];
              if (v159)
              {
                v134 = v157;
              }

              else
              {
                v134 = 1;
              }

              if ((v134 & 1) == 0)
              {
                [(UIViewControllerBuiltinTransitionViewAnimator *)v159 setDelegate:v133];
              }

              [v133 _setTransitionController:v159];
              [v133 _setInteractionController:v166];
              v184 = MEMORY[0x1E69E9820];
              v185 = 3221225472;
              v186 = __90__UIViewController__windowControllerBasedPresentViewController_withTransition_completion___block_invoke_3;
              v187 = &unk_1E70F35B8;
              v188 = v48;
              v189 = v11;
              [v133 _transition:v63 fromViewController:v188 toViewController:v189 target:v188 didFinish:1 animation:&v184];

              v132 = 0;
            }

            if (!_UIAppUseModernRotationAndPresentationBehaviors() && (([v11 _isModalSheet] & 1) != 0 || v92 == 17 || v92 == 4))
            {
              v135 = [v48 view];
              v136 = [v135 window];
              [v136 _addRotationViewController:v11];
            }

            v56 = v159;
            if ([v11 _isModalSheet])
            {
              v137 = [v11 view];
              [v137 setTintAdjustmentMode:1];

              v138 = [v48 transitionCoordinator];

              v139 = [v48 presentingViewController];

              if (v138)
              {
                v140 = v132;
                v141 = [v48 transitionCoordinator];
                v142 = [v48 view];
                v180[0] = MEMORY[0x1E69E9820];
                v180[1] = 3221225472;
                if (v139)
                {
                  v181 = __90__UIViewController__windowControllerBasedPresentViewController_withTransition_completion___block_invoke_6;
                  v182 = &unk_1E70F3B98;
                  v143 = v48;
                  v183 = v143;
                  v174 = MEMORY[0x1E69E9820];
                  v175 = 3221225472;
                  v144 = __90__UIViewController__windowControllerBasedPresentViewController_withTransition_completion___block_invoke_7;
                }

                else
                {
                  v181 = __90__UIViewController__windowControllerBasedPresentViewController_withTransition_completion___block_invoke_4;
                  v182 = &unk_1E70F3B98;
                  v143 = v48;
                  v183 = v143;
                  v174 = MEMORY[0x1E69E9820];
                  v175 = 3221225472;
                  v144 = __90__UIViewController__windowControllerBasedPresentViewController_withTransition_completion___block_invoke_5;
                }

                v176 = v144;
                v177 = &unk_1E70F4990;
                v178 = v143;
                v179 = v11;
                [v141 animateAlongsideTransitionInView:v142 animation:v180 completion:&v174];

                v146 = v183;
                v56 = v159;
                v132 = v140;
              }

              else
              {
                v145 = [v48 view];
                v146 = v145;
                if (v139)
                {
                  [v145 setTintAdjustmentMode:0];
                }

                else
                {
                  v150 = [v145 window];
                  [v150 _beginOcclusion:v48];
                }
              }

              v105 = v163;
            }

            if (v132)
            {
              v173 = 40.0;
              v147 = [v11 view];
              [v147 bounds];
              _UIViewCurlUpTransitionToTime(&v173, v148, v149);

              [(UIViewController *)v11 _addCurlUpTapGestureRecognizerWithRevealedHeight:v173];
            }

            v12 = v167;
            if (v92 == 16 || v92 == 2)
            {
              if ([v11 disablesAutomaticKeyboardDismissal])
              {
                [v11 _beginPinningInputViews];
              }
            }

            goto LABEL_175;
          }

          if (v92 != 16)
          {
            goto LABEL_140;
          }
        }

        if (([v48[14] _isDimmingBackground] & 1) == 0 && (objc_msgSend(v11, "_useCustomDimmingView") & 1) == 0)
        {
          v107 = [UIDimmingView alloc];
          [v105 bounds];
          v108 = [(UIDimmingView *)v107 initWithFrame:?];
          v109 = v48[17];
          v48[17] = v108;

          [v48[17] setAutoresizingMask:18];
          [v48[17] setIgnoresTouches:1];
          v110 = [v11 _backgroundColorForModalFormSheet];
          [v48[17] setDimmingColor:v110];

          [v48[17] setSuppressesBackdrops:1];
          if (v92 == 3)
          {
            [v48 view];
            v112 = v111 = v105;
            v113 = [v112 superview];

            if (v113 == v111)
            {
              v115 = v112;
              v114 = v163;
            }

            else
            {
              v114 = v163;
              do
              {
                v115 = [v112 superview];

                v116 = [v115 superview];

                v112 = v115;
              }

              while (v116 != v163);
            }

            [v114 insertSubview:v48[17] belowSubview:v115];

            v105 = v114;
          }

          else
          {
            [v105 addSubview:v48[17]];
          }

          [objc_opt_class() durationForTransition:v63];
          v118 = v117;
          v119 = v48[17];
          v120 = 0.0;
          if (v63 == 6)
          {
            v120 = v117 * UIAnimationDragCoefficient();
          }

          [v119 display:1 withAnimationDuration:v118 afterDelay:v120];
          v8 = v169;
        }

        if (v92 != 4)
        {
          goto LABEL_140;
        }

        goto LABEL_139;
      }
    }

    v35 = [*(v20 + 3776) stringWithFormat:@"Application tried to present modally an active controller %@.", self];

    v21 = v35;
    goto LABEL_52;
  }

  v10 = [[UIViewControllerBuiltinTransitionViewAnimator alloc] initWithTransition:v6];
  v171[0] = MEMORY[0x1E69E9820];
  v171[1] = 3221225472;
  v171[2] = __68__UIViewController_presentViewController_withTransition_completion___block_invoke;
  v171[3] = &unk_1E70F3608;
  v172 = v9;
  [(UIViewController *)self _presentViewController:v8 withAnimationController:v10 completion:v171];

LABEL_178:
}

uint64_t __68__UIViewController_presentViewController_withTransition_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_presentViewController:(id)a3 withAnimationController:(id)a4 completion:(id)a5
{
  v140 = *MEMORY[0x1E69E9840];
  v132 = a2;
  v9 = a3;
  location = v9;
  v130 = a4;
  v10 = a5;
  v11 = [(UIViewController *)self _focusSystem];
  v12 = [v11 focusedItem];

  if (v12)
  {
    [(UIViewController *)self _rememberPresentingFocusedItem:v12];
  }

  v13 = +[_UIStatistics previewInteractionTapCount];
  [v13 incrementValueBy:1];

  v14 = +[_UIStatistics previewInteractionTapCount];
  [v14 setSampleRate:0.0];

  [v9 _viewControllerPresentationDidInitiate];
  v15 = [v9 modalPresentationStyle];
  if (os_variant_has_internal_diagnostics())
  {
    if (v15 == -2)
    {
      v93 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        *&buf[4] = -2;
        _os_log_fault_impl(&dword_188A29000, v93, OS_LOG_TYPE_FAULT, "Effective modal presentation style should never return automatic! It returned %lu.", buf, 0xCu);
      }
    }
  }

  else if (v15 == -2)
  {
    v94 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498620) + 8);
    if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = -2;
      _os_log_impl(&dword_188A29000, v94, OS_LOG_TYPE_ERROR, "Effective modal presentation style should never return automatic! It returned %lu.", buf, 0xCu);
    }
  }

  if ([(UIViewController *)self _isWaitingForDelayedPresentation])
  {
    v16 = objc_getAssociatedObject(self, &unk_1ED498592);
    NSLog(&cfstr_AttemptToPrese_0.isa, v9, self, v16);
    goto LABEL_108;
  }

  if (_UIAppUseModernRotationAndPresentationBehaviors() || (+[UIDevice currentDevice](UIDevice, "currentDevice"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 userInterfaceIdiom], v17, (v18 & 0xFFFFFFFFFFFFFFFBLL) == 1))
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      v19 = [objc_opt_self() mainScreen];
      v20 = [v19 _wantsWideContentMargins];

      if ((v20 & 1) == 0)
      {
        v21 = +[UIDevice currentDevice];
        v22 = [v21 userInterfaceIdiom];

        if ((v22 & 0xFFFFFFFFFFFFFFFBLL) != 1)
        {
          v23 = [(UIViewController *)self traitCollection];
          v24 = v23;
          if (v15 <= 0x10 && ((1 << v15) & 0x10006) != 0 && [v23 horizontalSizeClass] == 1)
          {
            [v9 setModalPresentationStyle:0];
          }
        }
      }
    }
  }

  else if (v15 <= 0x10 && ((1 << v15) & 0x10006) != 0)
  {
    [v9 setModalPresentationStyle:0];
  }

  if (!v9)
  {
    v98 = MEMORY[0x1E695DF30];
    v99 = *MEMORY[0x1E695D940];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Application tried to present a nil modal view controller on target %@.", self];
    goto LABEL_130;
  }

  v16 = self->_parentViewController;
  v25 = [(UIViewController *)v16 presentedViewController];
  if (v25)
  {
    v26 = v25;
    v27 = [(UIViewController *)self modalTransitionStyle];

    if (v27 == UIModalTransitionStylePartialCurl)
    {
      v98 = MEMORY[0x1E695DF30];
      v99 = *MEMORY[0x1E695D940];
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Application tried to present a nested modal view controller while curled %@.", self];
      goto LABEL_130;
    }
  }

  v28 = [(UIViewController *)self _popoverController];
  if (v28 || v15 || ([(UIViewController *)v16 presentedViewController], v28 = objc_claimAutoreleasedReturnValue(), v28 == self) && [(UIViewController *)self modalPresentationStyle])
  {
    v29 = [v9 modalTransitionStyle];

    if (v29 == 3)
    {
      v98 = MEMORY[0x1E695DF30];
      v99 = *MEMORY[0x1E695D940];
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Application tried to present UIModalTransitionStylePartialCurl to or from non-fullscreen view controller %@.", self];
      goto LABEL_130;
    }
  }

  else
  {
  }

  if (!dyld_program_sdk_at_least() || (-[UIViewController popoverPresentationController:](v9, 0), (v30 = objc_claimAutoreleasedReturnValue()) == 0) || (v31 = v30, v32 = [v30 _isShimmingPopoverControllerPresentation], v31, !v32))
  {
    v33 = [v9 parentViewController];

    if (v33)
    {
      v100 = MEMORY[0x1E695DF30];
      v101 = *MEMORY[0x1E695D940];
      v102 = MEMORY[0x1E696AEC0];
      v103 = [v9 parentViewController];
      [v102 stringWithFormat:@"Application tried to present modally a view controller %@ that has a parent view controller %@.", v9, v103];
      v104 = LABEL_125:;
      v105 = [v100 exceptionWithName:v101 reason:v104 userInfo:0];
      v106 = v105;

      goto LABEL_131;
    }

    [v9 _popoverController];
    if (objc_claimAutoreleasedReturnValue())
    {
      v98 = MEMORY[0x1E695DF30];
      v99 = *MEMORY[0x1E695D940];
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Application tried to present modally a view controller %@ that is presented with deprecated UIPopoverController.", v9];
      goto LABEL_130;
    }

    if ([v9 _isDelayingPresentation])
    {
      [v9 __viewControllerWillBePresented:1];
      v126[0] = MEMORY[0x1E69E9820];
      v126[1] = 3221225472;
      v126[2] = __78__UIViewController__presentViewController_withAnimationController_completion___block_invoke_732;
      v126[3] = &unk_1E7104210;
      v126[4] = self;
      [UIViewController _enumerateVisibleChildControllers:v9 includePresentedChildren:1 usingBlock:v126];
      *buf = self;
      v34 = MEMORY[0x1E695DF50];
      v35 = [(UIViewController *)self methodSignatureForSelector:a2];
      v36 = [v34 invocationWithMethodSignature:v35];

      [v36 setArgument:buf atIndex:0];
      [v36 setTarget:self];
      [v36 setArgument:&v132 atIndex:1];
      [v36 setArgument:&location atIndex:2];
      [v36 setArgument:&v130 atIndex:3];
      v125 = _Block_copy(v10);
      [v36 setArgument:&v125 atIndex:4];
      [v36 retainArguments];
      v37 = objc_getAssociatedObject(location, &unk_1ED498593);
      v38 = [(UIViewController *)self _window];
      v39 = [v38 windowScene];
      [v37 setWindowSceneIgnoringEvents:v39];

      [v37 setPresentInvocation:v36];
      objc_setAssociatedObject(self, &unk_1ED498592, location, 1);
      [(_UIDelayedPresentationContext *)v37 beginDelayedPresentation];

      goto LABEL_108;
    }

    [v9 __viewControllerWillBePresented:0];
    v40 = [v9 _temporaryPresentationController];
    v41 = v40;
    if (v40)
    {
      v42 = v40;
      [v9 _setTemporaryPresentationController:0];
LABEL_48:
      v45 = [(UIViewController *)self _modalPresenterForPresentationController:v42];
      if ([(UIPresentationController *)v42 _shouldConvertToScene])
      {
        [location _setTemporaryPresentationController:v42];
        [(UIPresentationController *)v42 _convertToSceneFromPresentingViewController:v45];
LABEL_107:

        goto LABEL_108;
      }

      v122 = v41;
      [(UIPresentationController *)v42 _setSourceViewController:self];
      v123 = v45;
      [(UIPresentationController *)v42 _setPresentingViewController:v45];
      v46 = [(UIPresentationController *)v42 __sizeClassPair];
      v48 = v47;
      v49 = [(UIPresentationController *)v42 presentingViewController];
      v50 = [v49 traitCollection];
      v124[0] = MEMORY[0x1E69E9820];
      v124[1] = 3221225472;
      v124[2] = __78__UIViewController__presentViewController_withAnimationController_completion___block_invoke_2;
      v124[3] = &__block_descriptor_48_e27_v16__0___UIMutableTraits__8l;
      v113 = v48;
      v114 = v46;
      v124[4] = v46;
      v124[5] = v48;
      v51 = [v50 traitCollectionByModifyingTraits:v124];

      v120 = v51;
      v52 = [(UIPresentationController *)v42 _presentationControllerForTraitCollection:v51];
      if (v52 == v42 || ([(UIPresentationController *)v42 traitCollection], v53 = objc_claimAutoreleasedReturnValue(), [(UIPresentationController *)v42 _presentedViewControllerForPresentationController:v52 traitCollection:v53], v54 = objc_claimAutoreleasedReturnValue(), v53, !v54))
      {
        v119 = 0;
      }

      else
      {
        [(UIPresentationController *)v52 _setPresentedViewController:v54];
        v119 = v54;
        objc_storeStrong(&location, v54);
      }

      v45 = v123;
      v121 = v52;
      v117 = location;
      if (location != v123)
      {
        objc_opt_self();
        if ((fluidPresentationTransitionsEnabled & 1) == 0)
        {
          v55 = [(UIViewController *)v123 currentAction];

          if (v55)
          {
            v56 = *(__UILogGetCategoryCachedImpl("Presentation", &qword_1ED498630) + 8);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              *&buf[4] = v117;
              v134 = 2112;
              v135 = v123;
              v136 = 2112;
              v137 = self;
              v57 = "Attempt to present %@ on %@ (from %@) while a presentation is in progress.";
LABEL_64:
              _os_log_impl(&dword_188A29000, v56, OS_LOG_TYPE_ERROR, v57, buf, 0x20u);
              goto LABEL_106;
            }

            goto LABEL_106;
          }
        }

        v58 = [(UIViewController *)v123 view];
        v59 = [v58 window];

        if (!v59)
        {
          v56 = *(__UILogGetCategoryCachedImpl("Presentation", &qword_1ED498638) + 8);
          v45 = v123;
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            *&buf[4] = v117;
            v134 = 2112;
            v135 = v123;
            v136 = 2112;
            v137 = self;
            v57 = "Attempt to present %@ on %@ (from %@) whose view is not in the window hierarchy.";
            goto LABEL_64;
          }

LABEL_106:

          v41 = v122;
          goto LABEL_107;
        }

        objc_opt_self();
        v45 = v123;
        if (fluidPresentationTransitionsEnabled)
        {
          [(UIViewController *)v123 _appearingOrAppearedChildModalViewController];
        }

        else
        {
          [(UIViewController *)v123 childModalViewController];
        }
        v60 = ;

        if (v60)
        {
          v61 = *(__UILogGetCategoryCachedImpl("Presentation", &qword_1ED498640) + 8);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            v62 = v61;
            v63 = [(UIViewController *)v123 childModalViewController];
            *buf = 138413058;
            *&buf[4] = v117;
            v134 = 2112;
            v135 = v123;
            v136 = 2112;
            v137 = self;
            v138 = 2112;
            v139 = v63;
            _os_log_impl(&dword_188A29000, v62, OS_LOG_TYPE_ERROR, "Attempt to present %@ on %@ (from %@) which is already presenting %@.", buf, 0x2Au);
          }

          goto LABEL_106;
        }

        v64 = [(UIViewController *)self _rootAncestorViewController];
        v65 = [(UIViewController *)self _existingView];
        v66 = [v65 window];
        v67 = [v66 rootViewController];
        v68 = v67;
        if (v64 == v67)
        {
        }

        else
        {
          v111 = [(UIViewController *)self _ancestorViewControllerIsInPopover];

          if (!v111)
          {
            if (os_variant_has_internal_diagnostics())
            {
              v97 = __UIFaultDebugAssertLog();
              if (os_log_type_enabled(v97, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412802;
                *&buf[4] = v117;
                v134 = 2112;
                v135 = self;
                v136 = 2112;
                v137 = self;
                _os_log_fault_impl(&dword_188A29000, v97, OS_LOG_TYPE_FAULT, "Presenting view controller %@ from detached view controller %@ is not supported, and may result in incorrect safe area insets and a corrupt root presentation. Make sure %@ is in the view controller hierarchy before presenting from it. Will become a hard exception in a future release.", buf, 0x20u);
              }
            }

            else
            {
              v69 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498648) + 8);
              if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                *&buf[4] = v117;
                v134 = 2112;
                v135 = self;
                v136 = 2112;
                v137 = self;
                _os_log_impl(&dword_188A29000, v69, OS_LOG_TYPE_ERROR, "Presenting view controller %@ from detached view controller %@ is not supported, and may result in incorrect safe area insets and a corrupt root presentation. Make sure %@ is in the view controller hierarchy before presenting from it. Will become a hard exception in a future release.", buf, 0x20u);
              }
            }
          }
        }

        v70 = [(UIViewController *)v123 _presentationController];
        v71 = [v70 _transitionContext];

        v72 = [v71 _animator];
        v112 = v72;
        if (objc_opt_respondsToSelector())
        {
          v73 = v117;
          if ([v72 shouldPreemptWithContext:v71])
          {
            v110 = [v72 preemptWithContext:v71];
          }

          else
          {
            v110 = 0;
          }
        }

        else
        {
          v110 = 0;
          v73 = v117;
        }

        v74 = [v73 _parentModalViewController];

        if (!v74)
        {
          [(UIViewController *)v123 _setOriginalPresentationController:v42];
          [(UIViewController *)v123 _setPresentationSizeClassPair:v114, v113];
          v75 = [(UIViewController *)v123 view];
          v76 = [v75 superview];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          v77 = ![(UIViewController *)v123 definesPresentationContext];
          if (v15 == 3)
          {
            v78 = v77;
          }

          else
          {
            v78 = 1;
          }

          v79 = location;
          v80 = [location _overrideTransitioningDelegate];
          if (!v80)
          {
            if (+[UIViewController _shouldAnimateTransitions])
            {
              goto LABEL_88;
            }

            v81 = [(UIViewController *)v79 _defaultAnimationController];
            v80 = v130;
            v130 = v81;
          }

LABEL_88:
          v82 = v130;
          if (!v130)
          {
            if ([(UIPresentationController *)v121 _forcesPreferredAnimationControllers])
            {
              v82 = [(UIPresentationController *)v121 _preferredAnimationControllerForPresentation];
              v130 = v82;
            }

            else
            {
              v82 = 0;
            }
          }

          v118 = v71;
          if ((v78 | isKindOfClass))
          {
            v83 = 0;
            v84 = v79;
          }

          else
          {
            v83 = [(UIViewController *)v123 providesPresentationContextTransitionStyle];
            if (v83)
            {
              v84 = v123;
            }

            else
            {
              v84 = v79;
            }
          }

          v85 = v84;
          v116 = v85;
          if (!v82)
          {
            v90 = v85;
            v82 = [(UIViewController *)v85 _customAnimatorForPresentedController:v79 presentingController:v123 sourceController:self originalPresentationController:v42];
            v91 = v130;
            v130 = v82;

            if (v82)
            {
              v86 = [(UIViewController *)v90 _customInteractionControllerForPresentation:v82];
              if (v86)
              {
                goto LABEL_99;
              }
            }

            else
            {
              v82 = [(UIPresentationController *)v121 _preferredAnimationControllerForPresentation];
              v130 = v82;
              if (!v82)
              {
                if (v83)
                {
                  v92 = v123;
                }

                else
                {
                  v92 = location;
                }

                v82 = -[UIViewControllerBuiltinTransitionViewAnimator initWithTransition:]([UIViewControllerBuiltinTransitionViewAnimator alloc], "initWithTransition:", -[UIViewController _transitionForModalTransitionStyle:appearing:](self, [v92 modalTransitionStyle], 1));
                v130 = v82;
              }
            }
          }

          v86 = [(UIPresentationController *)v121 _preferredInteractionControllerForPresentation:v82];
          v82 = v130;
LABEL_99:
          [(UIViewController *)self _preparePresentationControllerForPresenting:v121];
          [(UIViewController *)v123 _presentViewController:location modalSourceViewController:self presentationController:v121 animationController:v82 interactionController:v86 handoffData:v110 completion:v10];
          v87 = [(UIPresentationController *)v121 presentingViewController];
          v88 = [v87 _transitionCoordinator];

          if (v121 == v42)
          {
            v89 = -1;
          }

          else
          {
            v89 = [(UIPresentationController *)v121 presentationStyle];
          }

          [(UIPresentationController *)v42 _sendDelegateWillPresentWithAdaptiveStyle:v89 transitionCoordinator:v88];

          v45 = v123;
          goto LABEL_106;
        }

        v100 = MEMORY[0x1E695DF30];
        v101 = *MEMORY[0x1E695D940];
        v109 = MEMORY[0x1E696AEC0];
        v103 = [v73 _parentModalViewController];
        [v109 stringWithFormat:@"Application tried to present modally a view controller %@ that is already being presented by %@.", v73, v103];
        goto LABEL_125;
      }

      v98 = MEMORY[0x1E695DF30];
      v99 = *MEMORY[0x1E695D940];
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Application tried to present modal view controller on itself. Presenting controller is %@.", v123];
      v107 = LABEL_130:;
      v105 = [v98 exceptionWithName:v99 reason:v107 userInfo:0];
      v108 = v105;

LABEL_131:
      objc_exception_throw(v105);
    }

    if (v15 == 4 || [v9 _requiresCustomPresentationController])
    {
      v42 = [v9 _customPresentationControllerForPresentedController:v9 presentingController:0 sourceController:self];
      if (v42)
      {
        goto LABEL_48;
      }

      v42 = [[UIPresentationController alloc] initWithPresentedViewController:v9 presentingViewController:0];
    }

    else
    {
      v43 = +[_UIPresentationControllerDefaultVisualStyleProvider sharedInstance];
      v44 = [(UIViewController *)self traitCollection];
      v42 = [v43 presentationControllerForPresentedViewController:v9 inIdiom:{objc_msgSend(v44, "userInterfaceIdiom")}];

      v41 = 0;
    }

    if (!v42)
    {
      [MEMORY[0x1E696AAA8] currentHandler];
      v96 = v95 = v41;
      [v96 handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:9806 description:@"The specified modal presentation style doesn't have a corresponding presentation controller."];

      v41 = v95;
      v42 = 0;
    }

    goto LABEL_48;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__UIViewController__presentViewController_withAnimationController_completion___block_invoke;
  block[3] = &unk_1E70F35B8;
  v128 = v9;
  v129 = self;
  if (qword_1ED498628 != -1)
  {
    dispatch_once(&qword_1ED498628, block);
  }

LABEL_108:
}

- (void)popoverPresentationController:(void *)a1
{
  v2 = a1;
  if (a1)
  {
    v4 = [a1 presentingViewController];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 _originalPresentationController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v8 = [v5 _originalPresentationController];
LABEL_15:
        v2 = v8;
LABEL_17:

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (!v2[98])
      {
        v9 = [v2 modalPresentationStyle];
        if (v9 == 100 || v9 == 7)
        {
          if ([v2 _requiresCustomPresentationController])
          {
            v10 = [v2 _customPresentationControllerForPresentedController:v2 presentingController:0 sourceController:v2];
          }

          else
          {
            [v2 modalPresentationStyle];
            v10 = [objc_alloc(objc_opt_class()) initWithPresentedViewController:v2 presentingViewController:0];
          }

          v11 = v10;
          [v2 _setTemporaryPresentationController:v10];
        }
      }

      v12 = [v2 _temporaryPresentationController];
      objc_opt_class();
      v13 = objc_opt_isKindOfClass();

      if (v13)
      {
        v8 = [v2 _temporaryPresentationController];
        goto LABEL_15;
      }
    }

    v2 = 0;
    goto LABEL_17;
  }

LABEL_18:

  return v2;
}

void __78__UIViewController__presentViewController_withAnimationController_completion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &_UIInternalPreference_ViewControllersInheritTraitsFromViewHierarchy_block_invoke_7___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Application tried to represent an active popover presentation %@ from %@.", &v5, 0x16u);
  }
}

void __78__UIViewController__presentViewController_withAnimationController_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setHorizontalSizeClass:v3];
  [v4 setVerticalSizeClass:*(a1 + 40)];
}

uint64_t __90__UIViewController__windowControllerBasedPresentViewController_withTransition_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __90__UIViewController__windowControllerBasedPresentViewController_withTransition_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _setPresentedStatusBarViewController:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _setPresentedUserInterfaceStyleViewController:v3];
}

void __90__UIViewController__windowControllerBasedPresentViewController_withTransition_completion___block_invoke_4(uint64_t a1)
{
  v3 = [*(a1 + 32) view];
  v2 = [v3 window];
  [v2 _beginOcclusion:*(a1 + 32)];
}

void __90__UIViewController__windowControllerBasedPresentViewController_withTransition_completion___block_invoke_5(uint64_t a1, void *a2)
{
  if ([a2 isCancelled])
  {
    v3 = [*(a1 + 32) view];
    v4 = [v3 window];
    [v4 _endOcclusion:*(a1 + 32)];

    v5 = [*(a1 + 40) view];
    [v5 setTintAdjustmentMode:0];
  }
}

void __90__UIViewController__windowControllerBasedPresentViewController_withTransition_completion___block_invoke_6(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setTintAdjustmentMode:0];
}

void __90__UIViewController__windowControllerBasedPresentViewController_withTransition_completion___block_invoke_7(uint64_t a1, void *a2)
{
  if ([a2 isCancelled])
  {
    v3 = [*(a1 + 32) view];
    [v3 setTintAdjustmentMode:1];

    v4 = [*(a1 + 40) view];
    [v4 setTintAdjustmentMode:0];
  }
}

- (void)_addCurlUpTapGestureRecognizerWithRevealedHeight:(void *)a1
{
  if (a1)
  {
    if ([a1 isViewLoaded])
    {
      v4 = [a1 view];
      v10 = [v4 gestureRecognizers];

      v5 = 0;
      while (v5 < [(_UIDismissCurlUpTapGestureRecognizer *)v10 count])
      {
        v6 = [(_UIDismissCurlUpTapGestureRecognizer *)v10 objectAtIndex:v5];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        ++v5;
        if (isKindOfClass)
        {
          goto LABEL_9;
        }
      }
    }

    v10 = [(UITapGestureRecognizer *)[_UIDismissCurlUpTapGestureRecognizer alloc] initWithTarget:a1 action:sel__handleTapToDismissModalCurl_];
    *&v8 = a2;
    [(_UIDismissCurlUpTapGestureRecognizer *)v10 _setCurlUpDY:v8];
    v9 = [a1 view];
    [v9 addGestureRecognizer:v10];

LABEL_9:
  }
}

- (void)_presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__UIViewController__presentViewController_animated_completion___block_invoke;
  aBlock[3] = &unk_1E70F3798;
  v22 = v6;
  v10 = v8;
  v19 = v10;
  v20 = self;
  v11 = v9;
  v21 = v11;
  v12 = _Block_copy(aBlock);
  v13 = [(UIViewController *)self _willPreemptRunningPresentationTransition];
  v14 = _UISetCurrentFallbackEnvironment(self);
  if (v13)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __63__UIViewController__presentViewController_animated_completion___block_invoke_3;
    v15[3] = &unk_1E70FD0C8;
    v15[4] = self;
    v16 = v12;
    v17 = v6;
    [UIView _performWithFluidPresentationTransitionsEnabled:v15];
  }

  else
  {
    [(UIViewController *)&self->super.super.isa _performCoordinatedPresentOrDismiss:v12 animated:v6];
  }

  _UIRestorePreviousFallbackEnvironment(v14);
}

void __63__UIViewController__presentViewController_animated_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) != 1 || (v2 = *(a1 + 32)) != 0 && (*(v2 + 380) & 1) != 0 || !+[UIViewController _shouldAnimateTransitions])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63__UIViewController__presentViewController_animated_completion___block_invoke_2;
    v7[3] = &unk_1E70FCE28;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v8 = v3;
    v9 = v4;
    v10 = v5;
    [UIView performWithoutAnimation:v7];
  }

  else
  {
    [*(a1 + 40) _presentViewController:*(a1 + 32) withAnimationController:0 completion:*(a1 + 48)];
  }

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"_UIInternalViewControllerPresentationWillBeginNotification" object:*(a1 + 32)];
}

void __63__UIViewController__presentViewController_animated_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _defaultAnimationController];
  [*(a1 + 40) _presentViewController:*(a1 + 32) withAnimationController:v2 completion:*(a1 + 48)];
}

- (void)_performCoordinatedPresentOrDismiss:(uint64_t)a3 animated:
{
  v5 = a2;
  v6 = v5;
  if (a1 && v5)
  {
    v7 = [a1 _transitionCoordinator];
    if (v7)
    {
      v8 = v7;
      if (![a1[64] _requiresDeferralToCoordinateWithNavigationTransitionAnimated:a3])
      {
        v9 = [v8 presentationStyle];
        if (dyld_program_sdk_at_least() && v9 == -1)
        {
          [UIViewController _performWithoutDeferringTransitionsAllowingAnimation:a3 actions:v6];
LABEL_19:

          goto LABEL_20;
        }

        if ((a3 & 1) == 0 && v9 == -1)
        {
          [UIViewController _performWithoutDeferringTransitions:v6];
          goto LABEL_19;
        }

LABEL_16:
        objc_opt_self();
        if (fluidPresentationTransitionsEnabled == 1)
        {
          v6[2](v6);
        }

        else
        {
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __65__UIViewController__performCoordinatedPresentOrDismiss_animated___block_invoke;
          v14[3] = &unk_1E70F3770;
          v15 = v6;
          [v8 animateAlongsideTransition:0 completion:v14];
        }

        goto LABEL_19;
      }

LABEL_15:
      dyld_program_sdk_at_least();
      goto LABEL_16;
    }

    v10 = [a1 presentedViewController];
    if (v10)
    {
      v11 = [a1 presentedViewController];
      v12 = [v11 presentingViewController];
    }

    else
    {
      v12 = [a1 presentingViewController];
    }

    v13 = [v12 _presentationController];
    v8 = [v13 _adaptiveTransitionCoordinator];

    if (v8)
    {
      goto LABEL_15;
    }

    if (a3 & 1) != 0 || (dyld_program_sdk_at_least())
    {
      v6[2](v6);
    }

    else
    {
      [UIViewController _performWithoutDeferringTransitions:v6];
    }
  }

LABEL_20:
}

- (void)presentViewController:(UIViewController *)viewControllerToPresent animated:(BOOL)flag completion:(void *)completion
{
  v6 = flag;
  v8 = viewControllerToPresent;
  v9 = completion;
  if (_UIAppUseModernRotationAndPresentationBehaviors())
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __62__UIViewController_presentViewController_animated_completion___block_invoke_2;
    v14[3] = &unk_1E70F3608;
    v10 = &v15;
    v15 = v9;
    v11 = v9;
    [(UIViewController *)self _presentViewController:v8 animated:v6 completion:v14];
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__UIViewController_presentViewController_animated_completion___block_invoke;
    aBlock[3] = &unk_1E70F3798;
    v19 = v6;
    v10 = v17;
    v17[0] = v8;
    v17[1] = self;
    v18 = v9;
    v12 = v9;
    v13 = _Block_copy(aBlock);
    [(UIViewController *)&self->super.super.isa _performCoordinatedPresentOrDismiss:v13 animated:v6];
  }
}

uint64_t __62__UIViewController_presentViewController_animated_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1 && (v2 = *(a1 + 32)) != 0 && (v2[380] & 1) == 0)
  {
    v3 = -[UIViewController _transitionForModalTransitionStyle:appearing:](*(a1 + 40), [v2 modalTransitionStyle], 1);
  }

  else
  {
    v3 = 0;
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);

  return [v4 presentViewController:v5 withTransition:v3 completion:v6];
}

uint64_t __62__UIViewController_presentViewController_animated_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_windowControllerTransitionDidCancel
{
  v3 = [(UIViewController *)self childModalViewController];
  [(UIViewController *)&self->super.super.isa _removeChildModalViewController:v3];
}

- (void)dismissViewControllerWithTransition:(int)a3 completion:(id)a4
{
  v4 = *&a3;
  v66 = *MEMORY[0x1E69E9840];
  v6 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__UIViewController_dismissViewControllerWithTransition_completion___block_invoke;
  aBlock[3] = &unk_1E70F0F78;
  v7 = v6;
  v63 = v7;
  v8 = _Block_copy(aBlock);
  objc_opt_self();
  if (fluidPresentationTransitionsEnabled)
  {
    if (!self)
    {
      v9 = 0;
      v10 = 1;
      goto LABEL_23;
    }

LABEL_8:
    v12 = objc_getAssociatedObject(self, &unk_1ED498593);
    v13 = v12;
    if (v12 && [v12 requestCount])
    {
      v9 = self;
      goto LABEL_15;
    }

    v14 = objc_getAssociatedObject(self, &unk_1ED498592);
    v9 = v14;
    if (v14)
    {
      v15 = objc_getAssociatedObject(v14, &unk_1ED498593);

      if (v15 && [v15 requestCount])
      {
        v13 = v15;
LABEL_15:

        [(UIViewController *)v9 _cancelDelayedPresentation:0];
        if (v9 == self)
        {
          v16 = *(__UILogGetCategoryCachedImpl("Presentation", &qword_1ED498658) + 8);
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
LABEL_19:
            v8[2](v8);
LABEL_104:

            goto LABEL_105;
          }

          *buf = 138412290;
          v65 = self;
          v17 = "Not dismissing %@ because our presentation was delayed, and we were never presented.";
LABEL_18:
          _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);
          goto LABEL_19;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v15 = v13;
    }

    v9 = 0;
LABEL_22:
    v10 = 0;
LABEL_23:
    if (_UIAppUseModernRotationAndPresentationBehaviors())
    {
      v18 = [(UIViewController *)self _presentationController];
      v19 = [v18 _presentingOrPresented];

      if ((v19 & 1) == 0)
      {
        v28 = [(UIViewController *)self _viewControllerForDismissal];
        v29 = v28;
        if (v28)
        {
          [v28 dismissViewControllerWithTransition:v4 completion:v7];
        }

        else
        {
          v49 = [(UIViewController *)self _temporaryPresentationController];

          if (v49)
          {
            v50 = [(UIViewController *)self _temporaryPresentationController];
            [v50 _closeScene];
            [(UIViewController *)self _setTemporaryPresentationController:0];
          }

          v8[2](v8);
        }

        goto LABEL_104;
      }

      objc_opt_self();
      if (fluidPresentationTransitionsEnabled != 1 || ((currentAction = self->_currentAction) == 0 ? (name = 0) : (name = currentAction->_name), ![(NSString *)name isEqualToString:@"DismissModal"]))
      {
        v61 = v8;
        v30 = [(UIViewController *)self childModalViewController];
        v31 = [(UIViewController *)v30 presentedViewController];
        if (v31)
        {
          v32 = v31;
          do
          {
            if (v30 == v32)
            {
              [MEMORY[0x1E695DF30] raise:@"UIViewControllerHierarchyInconsistency" format:{@"presentedViewController for controller is itself on dismiss for: %@", v30}];
            }

            v33 = v32;

            v32 = [(UIViewController *)v33 presentedViewController];

            v30 = v33;
          }

          while (v32);
        }

        else
        {
          v33 = v30;
        }

        v51 = [(UIViewController *)v33 presentingViewController];
        v52 = [(UIViewController *)self _presentationController];
        v53 = [v52 _childPresentationController];

        if (v53 && ([v53 shouldPresentInFullscreen] & 1) == 0)
        {
          v54 = [(UIViewController *)self _presentationController];
          [v54 _coverWithSnapshot];
        }

        if (!v51 || v51 == self)
        {
          v56 = v33;
        }

        else
        {
          do
          {
            v55 = [(UIViewController *)v51 _presentationController];
            if (([v55 dismissing] & 1) == 0)
            {
              [(UIViewController *)v51 _dismissViewControllerWithTransition:v4 from:v33 completion:0];
            }

            v56 = v51;

            v51 = [(UIViewController *)v56 presentingViewController];

            if (!v51)
            {
              break;
            }

            v33 = v56;
          }

          while (v51 != self);
        }

        if (v4)
        {
          v8 = v61;
          if ([(UIViewController *)self definesPresentationContext]&& [(UIViewController *)self providesPresentationContextTransitionStyle])
          {
            LODWORD(v4) = [(UIViewController *)self _transitionForModalTransitionStyle:0 appearing:?];
          }
        }

        else
        {
          v8 = v61;
        }

        if ((*&v56->_viewControllerFlags & 0x100000000) != 0)
        {
          v57 = 0;
        }

        else
        {
          v57 = v4;
        }

        [(UIViewController *)self _dismissViewControllerWithTransition:v57 from:v56 completion:v7];

        goto LABEL_104;
      }

      v16 = *(__UILogGetCategoryCachedImpl("Presentation", &qword_1ED498660) + 8);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 138412290;
      v65 = self;
      v17 = "Warning: Attempt to dismiss from view controller %@ while a dismiss is in proress!";
      goto LABEL_18;
    }

    [UIApp _deactivateReachability];
    v22 = v7;
    if (v10)
    {
LABEL_78:

      goto LABEL_104;
    }

    v23 = [(UIViewController *)self childModalViewController];
    if (!v23)
    {
      v34 = [(UIViewController *)self presentedViewController];
      v35 = v34;
      if (!v34 || ([(UIViewController *)v34 presentingViewController], (v36 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v36 = [(UIViewController *)self presentingViewController];
      }

      [(UIViewController *)v36 dismissViewControllerWithTransition:v4 completion:v22];
      goto LABEL_77;
    }

    v24 = v23;
    v58 = v22;
    v60 = v8;
    v25 = [(UIViewController *)v23 presentedViewController];
    if (v25)
    {
      v26 = v25;
      do
      {
        if (v24 == v26)
        {
          [MEMORY[0x1E695DF30] raise:@"UIViewControllerHierarchyInconsistency" format:{@"presentedViewController for controller is itself on dismiss for: %@", v24}];
        }

        v27 = v26;

        [(UIViewController *)v27 _presentingViewControllerWillChange:0];
        v26 = [(UIViewController *)v27 presentedViewController];

        v24 = v27;
      }

      while (v26);
    }

    else
    {
      v27 = v24;
    }

    v59 = v7;
    [(UIViewController *)v27 _presentingViewControllerWillChange:0];
    v36 = [(UIViewController *)v27 presentingViewController];
    v37 = [(UIViewController *)v27 modalPresentationStyle];
    v38 = [(UIViewController *)v27 view];
    v39 = [v38 window];

    if (v36 == self)
    {
      v35 = 0;
      if (v4)
      {
LABEL_68:
        v7 = v59;
        v8 = v60;
        if ([(UIViewController *)self definesPresentationContext]&& [(UIViewController *)self providesPresentationContextTransitionStyle])
        {
          LODWORD(v4) = [(UIViewController *)self _transitionForModalTransitionStyle:0 appearing:?];
        }

        goto LABEL_73;
      }
    }

    else
    {
      v35 = 0;
      v40 = v36;
      do
      {
        v41 = [(UIViewController *)v40 view];
        v42 = [v41 window];

        if (v42)
        {
          [(UIViewController *)v40 _dismissViewControllerWithTransition:0 from:v27 completion:0];
          v40 = v40;

          v36 = [(UIViewController *)v40 presentingViewController];
          v27 = v40;
        }

        else
        {
          [(UIViewController *)v40 _presentingViewControllerWillChange:0];
          v43 = [(UIViewController *)v40 presentingViewController];

          if (v37 == 3)
          {
            [(UIViewController *)v27 setModalPresentationStyle:[(UIViewController *)v40 modalPresentationStyle]];
          }

          if (v40)
          {
            v44 = [(UIViewController *)v40 childModalViewController];
            [v44 _setModalSourceViewController:0];
            [v44 _setSegueResponsibleForModalPresentation:0];
            v45 = [(UIViewController *)v40 childModalViewController];
            [(UIViewController *)&v40->super.super.isa _removeChildModalViewController:v45];

            *&v40->_viewControllerFlags &= 0xFFFFFFFFFFDFFFF7;
            v46 = v40->_currentAction;
            v40->_currentAction = 0;
          }

          if ([(UIViewController *)v40 _isModalSheet]|| [(UIViewController *)v40 modalPresentationStyle]== UIModalPresentationOverFullScreen || [(UIViewController *)v40 modalPresentationStyle]== 17 || [(UIViewController *)v40 modalPresentationStyle]== UIModalPresentationCustom)
          {
            [v39 _removeRotationViewController:v40];
          }

          v47 = [v43 childModalViewController];
          [(UIViewController *)v43 _removeChildModalViewController:v47];

          [(UIViewController *)v43 _addChildModalViewController:v27];
          [(UIViewController *)v40 _presentingViewControllerDidChange:0];
          v35 = v43;
          v36 = v35;
        }

        v40 = v36;
      }

      while (v36 != self);
      if (v4)
      {
        goto LABEL_68;
      }
    }

    v7 = v59;
    v8 = v60;
LABEL_73:
    if ((*&v27->_viewControllerFlags & 0x100000000) != 0)
    {
      v48 = 0;
    }

    else
    {
      v48 = v4;
    }

    [(UIViewController *)self _dismissViewControllerWithTransition:v48 from:v27 completion:v58];

    v22 = v58;
LABEL_77:

    goto LABEL_78;
  }

  if (!self->_currentAction)
  {
    goto LABEL_8;
  }

  v11 = *(__UILogGetCategoryCachedImpl("Presentation", &qword_1ED498650) + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v65 = self;
    _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "Warning: Attempt to dismiss from view controller %@ while a presentation or dismiss is in progress!", buf, 0xCu);
  }

  v8[2](v8);
LABEL_105:
}

uint64_t __67__UIViewController_dismissViewControllerWithTransition_completion___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    result = dyld_program_sdk_at_least();
    if (result)
    {
      v2 = *(*(v1 + 32) + 16);

      return v2();
    }
  }

  return result;
}

- (void)_dismissViewControllerWithTransition:(int)a3 from:(id)a4 completion:(id)a5
{
  v6 = *&a3;
  v114 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (!_UIAppUseModernRotationAndPresentationBehaviors())
  {
    v15 = v8;
    v16 = v9;
    if (!self)
    {
      goto LABEL_111;
    }

    v17 = [(UIViewController *)v15 modalPresentationStyle];
    v18 = [(UIViewController *)v15 _isModalSheet];
    if (!v15)
    {
      goto LABEL_111;
    }

    v103 = v8;
    v19 = v18;
    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    v21 = [(UIViewController *)self _screen];
    [v20 removeObserver:v15 name:@"UIKeyboardPrivateWillShowNotification" object:v21];

    v22 = [(UIViewController *)self _screen];
    v101 = v20;
    [v20 removeObserver:v15 name:@"UIKeyboardPrivateWillHideNotification" object:v22];

    v97 = v19;
    if (v19 || v17 == 17 || v17 == 4)
    {
      v23 = [(UIViewController *)v15 view];
      v24 = [v23 window];
      [v24 _removeRotationViewController:v15];
    }

    v25 = [(UIViewController *)v15 view];
    v26 = [v25 superview];
    v100 = v25;
    v27 = [v25 window];
    v28 = [UIWindowController windowControllerForWindow:v27];
    v29 = [v28 transitionView];

    if (v26 == v29)
    {
      NSLog(&cfstr_AttemptToDismi_1.isa, self, v15);
      v8 = v103;
LABEL_110:

LABEL_111:
      goto LABEL_112;
    }

    if ((v17 == 16 || v17 == 2) && [(UIViewController *)v15 disablesAutomaticKeyboardDismissal])
    {
      [(UIResponder *)v15 _endPinningInputViews];
    }

    v30 = [(UIViewController *)self definesPresentationContext];
    if (!v6)
    {
      v96 = 0;
      v99 = 0;
      v55 = 0;
      v56 = 0;
LABEL_83:
      v98 = v55;
      v76 = [[UIViewControllerAction alloc] initWithViewController:v15 name:@"DismissModal" transition:v6];
      currentAction = self->_currentAction;
      self->_currentAction = v76;

      v78 = [(UIViewController *)self currentAction];
      *&newValue.a = MEMORY[0x1E69E9820];
      *&newValue.b = 3221225472;
      *&newValue.c = __94__UIViewController__windowControllerBasedDismissViewControllerWithTransition_from_completion___block_invoke;
      *&newValue.d = &unk_1E70F3608;
      *&newValue.tx = v16;
      if (v78)
      {
        objc_setProperty_nonatomic_copy(v78, v79, &newValue, 24);
      }

      v80 = 8;
      if (v56)
      {
        v80 = 2097160;
      }

      *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFFFFDFFFFFLL | v80;
      [objc_opt_class() durationForTransition:v6];
      if (v6 == 6)
      {
        v81 = 0.0;
      }

      [self->_dimmingView display:0 withAnimationDuration:v81 afterDelay:?];
      dimmingView = self->_dimmingView;
      self->_dimmingView = 0;

      v83 = [(UIViewController *)v15 view];
      v84 = [v83 window];
      v85 = [UIWindowController windowControllerForWindow:v84];

      v86 = [(UIViewController *)self _popoverController];
      v87 = +[UIDevice currentDevice];
      v88 = [v87 userInterfaceIdiom];

      if (v17 != 3 || (v88 & 0xFFFFFFFFFFFFFFFBLL) != 1 || [(UIViewController *)self modalPresentationStyle]== 16 || [(UIViewController *)self modalPresentationStyle]== UIModalPresentationFormSheet || [(UIViewController *)self modalPresentationStyle]== UIModalPresentationPageSheet || !v86)
      {
        *&buf.a = MEMORY[0x1E69E9820];
        *&buf.b = 3221225472;
        *&buf.c = __94__UIViewController__windowControllerBasedDismissViewControllerWithTransition_from_completion___block_invoke_2;
        *&buf.d = &unk_1E70F5AF0;
        v113 = v97;
        *&buf.tx = self;
        v89 = v15;
        *&buf.ty = v89;
        v90 = _Block_copy(&buf);
        if (v85)
        {
          if (v98)
          {
            v91 = v96;
          }

          else
          {
            v91 = 1;
          }

          if ((v91 & 1) == 0)
          {
            [(UIViewControllerBuiltinTransitionViewAnimator *)v98 setDelegate:v85];
          }

          [v85 _setTransitionController:v98];
          [v85 _setInteractionController:v99];
          *&v110.a = MEMORY[0x1E69E9820];
          *&v110.b = 3221225472;
          *&v110.c = __94__UIViewController__windowControllerBasedDismissViewControllerWithTransition_from_completion___block_invoke_7;
          *&v110.d = &unk_1E70F3590;
          *&v110.tx = self;
          [v85 _transition:v6 fromViewController:v89 toViewController:self target:self didFinish:2 animation:&v110];
          v90[2](v90);
          v8 = v103;
        }

        else
        {
          [(UIViewController *)self _didFinishDismissTransition];
          v8 = v103;
        }
      }

      else
      {
        [v86 _modalTransition:v6 fromViewController:v15 toViewController:self target:self didFinish:2];
        [(UIViewController *)v15 setModalInPresentation:(*&v15->_viewControllerFlags >> 13) & 1];
        *&v15->_viewControllerFlags &= ~0x2000uLL;
        v8 = v103;
      }

      v15->_lastKnownInterfaceOrientation = 0;
      if (!v6)
      {
        v92 = [(UIViewController *)self view];
        [v92 _clearAnimationFilters];
      }

      if (self->_modalPreservedFirstResponder)
      {
        if ([(UIResponder *)self _containsResponder:?]&& [(UIResponder *)self->_modalPreservedFirstResponder _canBecomeFirstResponderWhenPossible])
        {
          v93 = [(UIViewController *)self _keyboardSceneDelegate];
          v94 = [MEMORY[0x1E696B098] valueWithPointer:self];
          [v93 _restoreInputViewsWithId:v94 animated:1];

          [(UIResponder *)self->_modalPreservedFirstResponder _clearBecomeFirstResponderWhenCapable];
        }

        modalPreservedFirstResponder = self->_modalPreservedFirstResponder;
        self->_modalPreservedFirstResponder = 0;
      }

      goto LABEL_110;
    }

    if (v6 != 9 || (v17 == 3 ? (v31 = v30) : (v31 = 0), v31 && [(UIViewController *)self providesPresentationContextTransitionStyle]))
    {
      v32 = v16;
      v33 = v9;
      v34 = 1;
      v35 = self;
    }

    else
    {
      v32 = v16;
      v33 = v9;
      v34 = 0;
      v35 = v15;
    }

    v57 = v35;
    v58 = [(UIViewController *)v57 _customAnimatorForDismissedController:v15];
    v96 = v58 != 0;
    if (v58)
    {
      v55 = v58;
      v99 = [(UIViewController *)v57 _customInteractionControllerForDismissal:v58];

      v56 = v6 != 0;
    }

    else
    {
      if ((v34 & 1) == 0)
      {
        v6 = [(UIViewController *)self _transitionForModalTransitionStyle:0 appearing:?];
      }

      v55 = [[UIViewControllerBuiltinTransitionViewAnimator alloc] initWithTransition:v6];

      v99 = 0;
      v56 = v6 != 0;
      if (v17 == 4)
      {
        v9 = v33;
        if (v6)
        {
          NSLog(&cfstr_WarningUimodal_0.isa, v15, self);
          v17 = 0;
          v96 = 0;
          v99 = 0;
          v56 = 1;
          goto LABEL_82;
        }

LABEL_61:
        v16 = v32;
        if (v17 != 1 || v6 != 12)
        {
          goto LABEL_83;
        }

        if (UIKeyboardAutomaticIsOffScreen())
        {
          v17 = 1;
          v6 = 12;
          v56 = 1;
          goto LABEL_83;
        }

        memset(&buf, 0, sizeof(buf));
        v60 = [(UIViewController *)self _lastKnownInterfaceOrientation];
        v61 = 0.0;
        if (v60 != 1)
        {
          if ([(UIViewController *)self _lastKnownInterfaceOrientation]== 4)
          {
            v61 = -1.57079633;
          }

          else if ([(UIViewController *)self _lastKnownInterfaceOrientation]== 3)
          {
            v61 = 1.57079633;
          }

          else
          {
            v62 = [(UIViewController *)self _lastKnownInterfaceOrientation];
            v61 = 3.14159265;
            if (v62 != 2)
            {
              v61 = 0.0;
            }
          }
        }

        [UIScreen transformToRotateScreen:v61];
        v63 = [(UIViewController *)v15 _visibleView];
        [v63 frame];
        newValue = buf;
        v116 = CGRectApplyAffineTransform(v115, &newValue);
        x = v116.origin.x;
        y = v116.origin.y;
        width = v116.size.width;
        height = v116.size.height;

        [UIKeyboard sizeForInterfaceOrientation:[(UIViewController *)self _lastKnownInterfaceOrientation]];
        v69 = height - (v68 + -10.0);
        v70 = +[UIView areAnimationsEnabled];
        [UIView setAnimationsEnabled:0];
        v110 = buf;
        CGAffineTransformInvert(&newValue, &v110);
        v117.origin.x = x;
        v117.origin.y = y;
        v117.size.width = width;
        v117.size.height = v69;
        v118 = CGRectApplyAffineTransform(v117, &newValue);
        v71 = v118.origin.x;
        v72 = v118.origin.y;
        v73 = v118.size.width;
        v74 = v118.size.height;
        v75 = [(UIViewController *)v15 _visibleView];
        [v75 setFrame:{v71, v72, v73, v74}];

        [UIView setAnimationsEnabled:v70];
        v17 = 1;
        v6 = 12;
        v56 = 1;
LABEL_82:
        v16 = v32;
        goto LABEL_83;
      }
    }

    v9 = v33;
    goto LABEL_61;
  }

  v10 = [(UIViewController *)self _presentationController];

  if (v10)
  {
    v11 = [(UIViewController *)self _presentationController];
    v12 = [v11 _transitionContext];

    v13 = [v12 _animator];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v13 shouldPreemptWithContext:v12])
    {
      v14 = [v13 preemptWithContext:v12];
    }

    else
    {
      v14 = 0;
    }

    [(UIViewController *)v8 _presentingViewControllerWillChange:0];
    v104 = v8;
    v36 = [(UIViewController *)v8 _overrideTransitioningDelegate];
    if (v36)
    {
    }

    else if (!v6 || !+[UIViewController _shouldAnimateTransitions])
    {
      v40 = [[UIViewControllerBuiltinTransitionViewAnimator alloc] initWithTransition:0];
      if (v40)
      {
LABEL_36:
        v102 = v12;
        if ([(UIViewController *)self definesPresentationContext])
        {
          v42 = [(UIViewController *)self _presentationController];
          v43 = [v42 _shouldRespectDefinesPresentationContext];

          v44 = v6 == 0;
          if (v6)
          {
            v45 = v6 != 9;
          }

          else
          {
            v45 = 0;
          }

          if (!v45 && v43)
          {
            v45 = [(UIViewController *)self providesPresentationContextTransitionStyle];
          }
        }

        else
        {
          v44 = v6 == 0;
          if (v6)
          {
            v45 = v6 != 9;
          }

          else
          {
            v45 = 0;
          }
        }

        if (v45)
        {
          v46 = self;
        }

        else
        {
          v46 = v104;
        }

        v47 = v46;
        v48 = v47;
        if (!v40)
        {
          v54 = [(UIViewController *)v47 _customAnimatorForDismissedController:v104];
          if (v54)
          {
            v40 = v54;
            v50 = [(UIViewController *)v48 _customInteractionControllerForDismissal:v54];
            if (v50)
            {
              goto LABEL_51;
            }
          }

          else
          {
            v59 = [(UIViewController *)self _presentationController];
            v40 = [v59 _preferredAnimationControllerForDismissal];

            if (!v40)
            {
              if (!v44 && !v45)
              {
                v6 = [(UIViewController *)self _transitionForModalTransitionStyle:0 appearing:?];
              }

              v40 = [[UIViewControllerBuiltinTransitionViewAnimator alloc] initWithTransition:v6];
            }
          }
        }

        v49 = [(UIViewController *)self _presentationController];
        v50 = [v49 _preferredInteractionControllerForDismissal:v40];

LABEL_51:
        v105[0] = MEMORY[0x1E69E9820];
        v105[1] = 3221225472;
        v105[2] = __73__UIViewController__dismissViewControllerWithTransition_from_completion___block_invoke;
        v105[3] = &unk_1E7103108;
        v105[4] = self;
        v106 = v40;
        v107 = v50;
        v108 = v14;
        v109 = v9;
        v51 = v14;
        v52 = v50;
        v53 = v40;
        [UIView _conditionallyPerformWithoutAnimation:v6 == 0 layout:v105];

        v8 = v104;
        goto LABEL_112;
      }
    }

    v37 = [(UIViewController *)self _presentationController];
    v38 = [v37 _forcesPreferredAnimationControllers];

    if (v38)
    {
      v39 = [(UIViewController *)self _presentationController];
      v40 = [v39 _preferredAnimationControllerForDismissal];
    }

    else
    {
      v40 = 0;
    }

    goto LABEL_36;
  }

  v41 = *(__UILogGetCategoryCachedImpl("Presentation", &_dismissViewControllerWithTransition_from_completion____s_category) + 8);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.a) = 138412290;
    *(&buf.a + 4) = self;
    _os_log_impl(&dword_188A29000, v41, OS_LOG_TYPE_DEFAULT, "Cannot dismiss %@ because there is no _presentationController.", &buf, 0xCu);
  }

LABEL_112:
}

void __73__UIViewController__dismissViewControllerWithTransition_from_completion___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 40);
  v6 = v2;
  v7 = v3;
  v29 = v4;
  if (v1)
  {
    v8 = objc_opt_class();
    if (v8 == objc_opt_class())
    {
      v9 = [v5 transition];
      v10 = v9 != 0;
    }

    else
    {
      v9 = 0;
      v10 = 1;
    }

    v11 = [v1 _presentationController];
    v12 = [v11 presentedViewController];
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v14 = v1[19];
    v15 = v7;
    if (has_internal_diagnostics)
    {
      if (v14)
      {
        v27 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v12;
          _os_log_fault_impl(&dword_188A29000, v27, OS_LOG_TYPE_FAULT, "Failed to complete already running transition on %@.", &buf, 0xCu);
        }
      }
    }

    else if (v14)
    {
      v28 = *(__UILogGetCategoryCachedImpl("Assert", &_dismissViewControllerWithAnimationController_interactionController_handoffData_completion____s_category) + 8);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v12;
        _os_log_impl(&dword_188A29000, v28, OS_LOG_TYPE_ERROR, "Failed to complete already running transition on %@.", &buf, 0xCu);
      }
    }

    v16 = [[UIViewControllerAction alloc] initWithViewController:v12 name:@"DismissModal" transition:v9];
    v17 = v1[19];
    v1[19] = v16;

    v18 = [v1 currentAction];
    newValue[0] = MEMORY[0x1E69E9820];
    newValue[1] = 3221225472;
    newValue[2] = __111__UIViewController__dismissViewControllerWithAnimationController_interactionController_handoffData_completion___block_invoke;
    newValue[3] = &unk_1E70F3608;
    v34 = v29;
    if (v18)
    {
      objc_setProperty_nonatomic_copy(v18, v19, newValue, 24);
    }

    v20 = 8;
    if (v10)
    {
      v20 = 2097160;
    }

    v1[47] = v1[47] & 0xFFFFFFFFFFDFFFFFLL | v20;
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v36 = __111__UIViewController__dismissViewControllerWithAnimationController_interactionController_handoffData_completion___block_invoke_2;
    v37 = &unk_1E71042D0;
    v21 = v11;
    v38 = v21;
    v39 = v1;
    v43 = sel__dismissViewControllerWithAnimationController_interactionController_handoffData_completion_;
    v40 = v5;
    v41 = v6;
    v7 = v15;
    v42 = v15;
    [UIView _conditionallyPerformWithoutAnimation:!v10 layout:&buf];
    v22 = [v1 _tabBarControllerEnforcingClass:1];
    [v22 _viewControllerDidBeginDismissal:v1];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __111__UIViewController__dismissViewControllerWithAnimationController_interactionController_handoffData_completion___block_invoke_3;
    aBlock[3] = &unk_1E70F4990;
    v23 = v12;
    v31 = v23;
    v32 = v1;
    v24 = _Block_copy(aBlock);
    v25 = [v1 _definiteTransitionCoordinator];
    v24[2](v24, v25);
    if ((dyld_program_sdk_at_least() & 1) != 0 || [objc_opt_class() instancesRespondToSelector:sel_notifyWhenInteractionChangesUsingBlock_])
    {
      [v25 notifyWhenInteractionChangesUsingBlock:v24];
    }

    if (v23)
    {
      v23[32] = 0;
    }

    if (!v9)
    {
      v26 = [v1 view];
      [v26 _clearAnimationFilters];
    }
  }
}

uint64_t __111__UIViewController__dismissViewControllerWithAnimationController_interactionController_handoffData_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __111__UIViewController__dismissViewControllerWithAnimationController_interactionController_handoffData_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  v3 = *(a1 + 40);

  if (v2 != v3)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = *(a1 + 72);
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = [v13 presentingViewController];
    [v10 handleFailureInMethod:v11 object:v12 file:@"UIViewController.m" lineNumber:10952 description:{@"Attempt to dismiss %@, which has a presentingViewController of %@, expected %@", v13, v14, *(a1 + 40)}];
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = +[UIView areAnimationsEnabled];
  v8 = *(a1 + 64);

  return [v4 _dismissWithAnimationController:v5 interactionController:v6 animated:v7 handoffData:v8];
}

void __111__UIViewController__dismissViewControllerWithAnimationController_interactionController_handoffData_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  if (([v6 isCancelled] & 1) != 0 || objc_msgSend(v6, "isInteractive"))
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 40);
  v5 = v3;
  [v4 _setPresentedStatusBarViewController:v5 shouldJoinAnimationsInProgress:dyld_program_sdk_at_least() ^ 1];
  [*(a1 + 40) _setPresentedUserInterfaceStyleViewController:v5];
}

- (void)_restoreInputViewsForPresentation
{
  if (!self->_modalPreservedFirstResponder)
  {
    return;
  }

  v3 = [(UIViewController *)self _keyboardSceneDelegate];
  v4 = [MEMORY[0x1E696B098] valueWithPointer:self];
  [v3 _restoreInputAccessoryViewOverrideWithId:v4];

  if ([(UIResponder *)self _containsResponder:self->_modalPreservedFirstResponder])
  {
    v5 = +[UIView areAnimationsEnabled];
    v6 = [(UIViewController *)self presentedViewController];
    objc_getClass("UIActivityViewController");
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 _existingPresentationControllerImmediate:1 effective:0];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_7:

        goto LABEL_8;
      }

      v8 = [v6 _existingPresentationControllerImmediate:1 effective:1];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v7 = [(UIViewController *)self _keyboardSceneDelegate];
        [v7 popAnimationStyle];
        goto LABEL_7;
      }
    }

LABEL_8:
    v10 = [(UIViewController *)self _keyboardSceneDelegate];
    v11 = [MEMORY[0x1E696B098] valueWithPointer:self];
    [v10 _restoreInputViewsWithId:v11 animated:v5];

    [(UIResponder *)self->_modalPreservedFirstResponder _clearBecomeFirstResponderWhenCapable];
  }

  modalPreservedFirstResponder = self->_modalPreservedFirstResponder;
  self->_modalPreservedFirstResponder = 0;
}

uint64_t __94__UIViewController__windowControllerBasedDismissViewControllerWithTransition_from_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __94__UIViewController__windowControllerBasedDismissViewControllerWithTransition_from_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) transitionCoordinator];

    v3 = [*(a1 + 32) presentingViewController];

    v4 = *(a1 + 32);
    if (v2)
    {
      v5 = [v4 transitionCoordinator];
      v6 = [*(a1 + 32) view];
      if (v3)
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __94__UIViewController__windowControllerBasedDismissViewControllerWithTransition_from_completion___block_invoke_5;
        v16[3] = &unk_1E70F3B98;
        v7 = *(a1 + 40);
        v17 = *(a1 + 32);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __94__UIViewController__windowControllerBasedDismissViewControllerWithTransition_from_completion___block_invoke_6;
        v14[3] = &unk_1E70F4990;
        v14[4] = v17;
        v15 = v7;
        [v5 animateAlongsideTransitionInView:v6 animation:v16 completion:v14];

        v8 = v15;
      }

      else
      {
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __94__UIViewController__windowControllerBasedDismissViewControllerWithTransition_from_completion___block_invoke_3;
        v20[3] = &unk_1E70F3B98;
        v11 = *(a1 + 40);
        v21 = *(a1 + 32);
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __94__UIViewController__windowControllerBasedDismissViewControllerWithTransition_from_completion___block_invoke_4;
        v18[3] = &unk_1E70F4990;
        v18[4] = v21;
        v19 = v11;
        [v5 animateAlongsideTransitionInView:v6 animation:v20 completion:v18];

        v8 = v19;
      }
    }

    else
    {
      v9 = [v4 view];
      v10 = v9;
      if (v3)
      {
        [v9 setTintAdjustmentMode:1];
      }

      else
      {
        v12 = [v9 window];
        [v12 _endOcclusion:*(a1 + 32)];
      }

      v13 = [*(a1 + 40) view];
      [v13 setTintAdjustmentMode:0];
    }
  }
}

void __94__UIViewController__windowControllerBasedDismissViewControllerWithTransition_from_completion___block_invoke_3(uint64_t a1)
{
  v3 = [*(a1 + 32) view];
  v2 = [v3 window];
  [v2 _endOcclusion:*(a1 + 32)];
}

void __94__UIViewController__windowControllerBasedDismissViewControllerWithTransition_from_completion___block_invoke_4(uint64_t a1, void *a2)
{
  if ([a2 isCancelled])
  {
    v4 = [*(a1 + 32) view];
    v3 = [v4 window];
    [v3 _beginOcclusion:*(a1 + 32)];
  }

  else
  {
    v4 = [*(a1 + 40) view];
    [v4 setTintAdjustmentMode:0];
  }
}

void __94__UIViewController__windowControllerBasedDismissViewControllerWithTransition_from_completion___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setTintAdjustmentMode:1];
}

void __94__UIViewController__windowControllerBasedDismissViewControllerWithTransition_from_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = [a2 isCancelled];
  v4 = 40;
  if (v3)
  {
    v4 = 32;
  }

  v5 = [*(a1 + v4) view];
  [v5 setTintAdjustmentMode:0];
}

uint64_t __94__UIViewController__windowControllerBasedDismissViewControllerWithTransition_from_completion___block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) _setPresentedStatusBarViewController:0];
  v2 = *(a1 + 32);

  return [v2 _setPresentedUserInterfaceStyleViewController:0];
}

- (void)dismissModalViewControllerAnimated:(BOOL)animated
{
  if (animated)
  {
    v3 = 9;
  }

  else
  {
    v3 = 0;
  }

  [(UIViewController *)self dismissViewControllerWithTransition:v3 completion:0];
}

- (void)dismissViewControllerAnimated:(BOOL)flag completion:(void *)completion
{
  v4 = flag;
  v6 = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__UIViewController_dismissViewControllerAnimated_completion___block_invoke;
  aBlock[3] = &unk_1E70FD0C8;
  aBlock[4] = self;
  v14 = v4;
  v7 = v6;
  v13 = v7;
  v8 = _Block_copy(aBlock);
  if ([(UIViewController *)self _willPreemptRunningTransitionForDismissal])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__UIViewController_dismissViewControllerAnimated_completion___block_invoke_2;
    v9[3] = &unk_1E70FD0C8;
    v9[4] = self;
    v10 = v8;
    v11 = v4;
    [UIView _performWithFluidPresentationTransitionsEnabled:v9];
  }

  else
  {
    [(UIViewController *)&self->super.super.isa _performCoordinatedPresentOrDismiss:v8 animated:v4];
  }
}

uint64_t __61__UIViewController_dismissViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v1 = 9;
  }

  else
  {
    v1 = 0;
  }

  return [*(a1 + 32) dismissViewControllerWithTransition:v1 completion:*(a1 + 40)];
}

void __61__UIViewController_dismissViewControllerAnimated_completion___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__UIViewController_dismissViewControllerAnimated_completion___block_invoke_3;
  v3[3] = &unk_1E70FD0C8;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 48);
  [UIViewController _performWithoutDeferringTransitionsAllowingAnimation:v3 actions:?];
}

- (void)_didCancelPresentTransition:(id)a3
{
  v8 = a3;
  if ([v8 _isPresentation] && !_UIAppUseModernRotationAndPresentationBehaviors())
  {
    v4 = [v8 fromViewController];
    v5 = [v4 customTransitioningView];
    v6 = [v5 superview];
    v7 = [v4 view];
    [v6 insertSubview:v7 aboveSubview:v5];

    [v5 removeFromSuperview];
  }

  [(UIViewController *)self _restoreInputViewsForPresentation];
  *&self->_viewControllerFlags &= 0xFFFFFFFFFFDFFFF7;
  [(UIViewController *)self _cleanupPresentation];
}

- (void)_legacyModalPresentTransitionDidComplete
{
  if ((*(&self->_viewControllerFlags + 1) & 1) == 0)
  {
    v3 = [(UIViewController *)self currentAction];
    if (v3)
    {
      v4 = v3[4] != 0;
    }

    else
    {
      v4 = 0;
    }

    [(UIViewController *)self viewDidDisappear:v4];
    v5 = [(UIViewController *)self childModalViewController];
    [v5 viewDidAppear:v4];
  }

  [(UIViewController *)self _didFinishPresentTransition];
}

- (void)_didFinishDismissTransition
{
  v13 = [(UIViewController *)self childModalViewController];
  if (!_UIAppUseModernRotationAndPresentationBehaviors() && [v13 _isModalSheet])
  {
    v3 = [v13 dropShadowView];
    if (v3)
    {
      [v13 setDropShadowView:0];
    }
  }

  v4 = [(UIViewController *)self customTransitioningView];
  if (v4)
  {
    v5 = v4;
    v6 = _UIAppUseModernRotationAndPresentationBehaviors();

    if (!v6)
    {
      v7 = [(UIViewController *)self customTransitioningView];
      v8 = [v7 superview];

      v9 = [(UIViewController *)self view];
      v10 = [(UIViewController *)self customTransitioningView];
      [v8 insertSubview:v9 aboveSubview:v10];

      v11 = [(UIViewController *)self customTransitioningView];
      [v11 removeFromSuperview];

      [(UIViewController *)self setCustomTransitioningView:0];
    }
  }

  [v13 _setModalSourceViewController:0];
  [v13 _setSegueResponsibleForModalPresentation:0];
  *&self->_viewControllerFlags &= 0xFFFFFFFFFFDFFFF7;
  [(UIViewController *)self _cleanupPresentation];
  v12 = [(UIViewController *)self _popoverController];
  [v12 _containedViewControllerModalStateChanged];
}

- (void)_cleanupPresentation
{
  v5 = [(UIViewController *)self childModalViewController];
  [(UIViewController *)&self->super.super.isa _removeChildModalViewController:v5];
  currentAction = self->_currentAction;
  self->_currentAction = 0;

  v4 = [(UIViewController *)self _rootAncestorViewController];
  [v4 setNeedsUpdateOfSupportedInterfaceOrientations];

  [(UIViewController *)self _setPresentationController:0];
  [(UIViewController *)self _setOriginalPresentationController:0];
}

- (void)_didCancelDismissTransition:(id)a3
{
  *&self->_viewControllerFlags &= 0xFFFFFFFFFFDFFFF7;
  currentAction = self->_currentAction;
  self->_currentAction = 0;
}

- (void)_setPresentationController:(id)a3
{
  v5 = a3;
  if (self->_presentationController != v5)
  {
    v10 = v5;
    objc_storeStrong(&self->_presentationController, a3);
    v6 = [(UIViewController *)self childModalViewController];
    v7 = v6;
    if (self->_presentationController)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v9 = [v6 view];
      _UIViewTopDownSubtreeTraversal(v9, &__block_literal_global_815, 0);
    }

    v5 = v10;
  }
}

- (void)_setTemporaryPresentationController:(id)a3
{
  v5 = a3;
  temporaryPresentationController = self->_temporaryPresentationController;
  v7 = v5;
  if (temporaryPresentationController != v5)
  {
    if (temporaryPresentationController)
    {
      [(UIPresentationController *)temporaryPresentationController _setPresentedViewControllerStoredWeakly:0];
    }

    objc_storeStrong(&self->_temporaryPresentationController, a3);
    if (self->_temporaryPresentationController && dyld_program_sdk_at_least())
    {
      [(UIPresentationController *)self->_temporaryPresentationController _setPresentedViewControllerStoredWeakly:1];
    }
  }
}

- (void)_clearCachedPopoverContentSize
{
  v2 = [(UIViewController *)self popoverPresentationController:?];
  [v2 _clearCachedPopoverContentSize];
}

- (BOOL)_isInContextOfPresentationControllerOfClass:(Class)a3 effective:(BOOL)a4
{
  v5 = [(UIViewController *)self presentingViewController];
  if (v5)
  {
    v6 = v5;
    while (1)
    {
      if (a4)
      {
        [v6 _presentationController];
      }

      else
      {
        [v6 _originalPresentationController];
      }
      v7 = ;
      LOBYTE(v8) = objc_opt_isKindOfClass();
      if ((v8 & 1) != 0 || [v7 shouldPresentInFullscreen])
      {
        break;
      }

      v8 = [v6 presentingViewController];

      v6 = v8;
      if (!v8)
      {
        return v8 & 1;
      }
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

- (void)setDefinesPresentationContext:(BOOL)definesPresentationContext
{
  v3 = 0x20000;
  if (!definesPresentationContext)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFFFFFDFFFFLL | v3;
}

- (void)setProvidesPresentationContextTransitionStyle:(BOOL)providesPresentationContextTransitionStyle
{
  v3 = 0x40000;
  if (!providesPresentationContextTransitionStyle)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFFFFFBFFFFLL | v3;
}

+ (id)_viewControllerForFullScreenPresentationFromView:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"UIViewController.m" lineNumber:11557 description:{@"Invalid parameter not satisfying: %@", @"view"}];
  }

  v6 = [v5 _viewControllerForAncestor];
  v7 = [v6 _popoverController];
  v8 = [v7 contentViewController];

  v9 = [v5 _window];
  v10 = v9;
  if (v8 || ([v9 rootViewController], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = [v8 presentedViewController];
    if (v11)
    {
      v12 = v11;
      do
      {
        v13 = v12;

        v12 = [v13 presentedViewController];

        v8 = v13;
      }

      while (v12);
    }

    else
    {
      v13 = v8;
    }

    v14 = [v13 _existingView];
    v15 = [v14 window];

    if (v15 == v10)
    {
      v8 = v13;
    }

    else
    {
      NSLog(&cfstr_SWindowIsNotEq.isa, v5, v13);
      v8 = 0;
    }
  }

  return v8;
}

- (void)_handleTapToDismissModalCurl:(id)a3
{
  v6 = a3;
  if ([v6 state] == 3)
  {
    v4 = [(UIViewController *)self presentingViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];

    v5 = [v6 view];
    [v5 removeGestureRecognizer:v6];
  }
}

- (void)_showViewController:(id)a3 withAction:(SEL)a4 sender:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = [(UIViewController *)self targetViewControllerForAction:a4 sender:v8];
  if (v9)
  {
    v10 = v9;
    if (v8)
    {
      self = v8;
    }

    if (dyld_program_sdk_at_least())
    {
      [v10 a4];
    }

    else
    {
      [v10 performSelector:a4 withObject:v12 withObject:self];
    }
  }

  else
  {
    v11 = [(UIViewController *)self view];
    v10 = [UIViewController _viewControllerForFullScreenPresentationFromView:v11];

    if (!v10)
    {
      goto LABEL_10;
    }

    [v10 presentViewController:v12 animated:+[UIView areAnimationsEnabled](UIView completion:{"areAnimationsEnabled"), 0}];
  }

LABEL_10:
}

- (UIViewController)targetViewControllerForAction:(SEL)action sender:(id)sender
{
  v6 = sender;
  if (-[UIViewController canPerformAction:withSender:](self, "canPerformAction:withSender:", action, v6) && [objc_opt_class() doesOverrideViewControllerMethod:action])
  {
    v7 = self;
  }

  else
  {
    v8 = [(UIViewController *)self _nextViewController];
    v7 = [v8 targetViewControllerForAction:action sender:v6];
  }

  return v7;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v47 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    [v7 targetTransform];
  }

  else
  {
    memset(&v45, 0, sizeof(v45));
  }

  IsIdentity = CGAffineTransformIsIdentity(&v45);
  v38 = v8;
  if (!IsIdentity)
  {
    v10 = [(UIViewController *)self _existingView];
    v11 = [v10 window];
    if (v11)
    {
      v12 = v11;
      v13 = [objc_opt_class() _shouldSendLegacyMethodsFromViewWillTransitionToSize];

      if (!v13)
      {
        goto LABEL_12;
      }

      [v8 transitionDuration];
      v15 = v14;
      v16 = [v8 containerView];
      v17 = [v16 window];
      v18 = v17;
      if (v17)
      {
        v10 = v17;
      }

      else
      {
        v19 = [(UIViewController *)self _existingView];
        v10 = [v19 window];

        v8 = v38;
      }

      v20 = [v10 _toWindowOrientation];
      v21 = [v10 _fromWindowOrientation];
      [(UIViewController *)self willRotateToInterfaceOrientation:v20 duration:v15];
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __71__UIViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
      v44[3] = &unk_1E7103BF8;
      v44[4] = self;
      v44[5] = v20;
      *&v44[6] = v15;
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __71__UIViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
      v43[3] = &unk_1E71042F8;
      v43[4] = self;
      v43[5] = v21;
      [v8 animateAlongsideTransition:v44 completion:v43];
    }
  }

LABEL_12:
  if ([objc_opt_class() _shouldForwardViewWillTransitionToSize])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v22 = [(UIViewController *)self _childViewControllersToSendViewWillTransitionToSize];
    v23 = [v22 countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v40;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v40 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v39 + 1) + 8 * i);
          if ((*(v27 + 382) & 0x20) != 0)
          {
            v30 = [*(*(&v39 + 1) + 8 * i) _existingView];
            [v30 frame];
            v29 = v31;
            v28 = v32;

            v8 = v38;
          }

          else
          {
            v29 = *(v27 + 440);
            v28 = *(v27 + 448);
          }

          [(UIViewController *)self sizeForChildContentContainer:v27 withParentContainerSize:width, height];
          v35 = v29 == v33;
          if (v28 != v34)
          {
            v35 = 0;
          }

          if (!IsIdentity || !v35)
          {
            v36 = v33;
            v37 = v34;
            [v27 viewWillTransitionToSize:v8 withTransitionCoordinator:?];
            *(v27 + 440) = v36;
            *(v27 + 448) = v37;
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v24);
    }

    [(UIViewController *)self _sendViewWillTransitionToSizeToPresentationController:v8 withTransitionCoordinator:width, height];
  }
}

- (void)_sendViewWillTransitionToSizeToPresentationController:(double)a3 withTransitionCoordinator:(double)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (a1)
  {
    v8 = [a1 _presentationController];
    v9 = v8;
    if (v8)
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __100__UIViewController__sendViewWillTransitionToSizeToPresentationController_withTransitionCoordinator___block_invoke;
      v31[3] = &unk_1E7103E40;
      v31[4] = a1;
      v32 = v8;
      v34 = a3;
      v35 = a4;
      v33 = v7;
      [UIViewController _performWithoutDeferringTransitions:v31];
    }

    v26 = v9;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = [a1 childViewControllers];
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      do
      {
        v14 = 0;
        do
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v27 + 1) + 8 * v14);
          if (([objc_opt_class() _shouldForwardViewWillTransitionToSize] & 1) == 0)
          {
            if ((*(v15 + 382) & 0x20) != 0)
            {
              v18 = [v15 _existingView];
              [v18 frame];
              v16 = v19;
              v17 = v20;
            }

            else
            {
              v16 = *(v15 + 440);
              v17 = *(v15 + 448);
            }

            [a1 sizeForChildContentContainer:v15 withParentContainerSize:{a3, a4}];
            v23 = v22;
            v24 = v21;
            if (v16 != v22 || v17 != v21)
            {
              goto LABEL_22;
            }

            if (v7)
            {
              [v7 targetTransform];
            }

            else
            {
              memset(&v36, 0, sizeof(v36));
            }

            if (!CGAffineTransformIsIdentity(&v36))
            {
LABEL_22:
              [(UIViewController *)v15 _sendViewWillTransitionToSizeToPresentationController:v7 withTransitionCoordinator:v23, v24];
              *(v15 + 440) = v23;
              *(v15 + 448) = v24;
            }
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v27 objects:v37 count:16];
      }

      while (v12);
    }
  }
}

uint64_t __100__UIViewController__sendViewWillTransitionToSizeToPresentationController_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _shouldFreezeUnderlapsStatusBar];
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 376);
    *(v3 + 376) = v4 | 0x8000000000;
    v5 = v4 & 0x8000000000;
  }

  else
  {
    v5 = 0;
  }

  result = [*(a1 + 40) viewWillTransitionToSize:*(a1 + 48) withTransitionCoordinator:{*(a1 + 56), *(a1 + 64)}];
  if (v2)
  {
    *(*(a1 + 32) + 376) = *(*(a1 + 32) + 376) & 0xFFFFFF7FFFFFFFFFLL | v5;
  }

  return result;
}

- (id)registerForPreviewingWithDelegate:(id)delegate sourceView:(UIView *)sourceView
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = delegate;
  v7 = sourceView;
  previewSourceViews = self->_previewSourceViews;
  if (!previewSourceViews)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = self->_previewSourceViews;
    self->_previewSourceViews = v9;

    previewSourceViews = self->_previewSourceViews;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = previewSourceViews;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        v17 = [v16 sourceView];

        if (v17 == v7)
        {
          v18 = v16;

          goto LABEL_13;
        }
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v18 = _UIPreviewingContextForViewController(self, v7);
  [v18 setDelegate:v6];
  [(NSMutableArray *)self->_previewSourceViews addObject:v18];
LABEL_13:

  return v18;
}

- (void)unregisterPreviewing:(id)a3
{
  v4 = a3;
  [v4 unregister];
  [(NSMutableArray *)self->_previewSourceViews removeObject:v4];
}

- (void)unregisterPreviewSourceView:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_previewSourceViews;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      v11 = [v10 sourceView];

      if (v11 == v4)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v12 = v10;

    if (!v12)
    {
      goto LABEL_13;
    }

    [(UIViewController *)self unregisterPreviewing:v12];
    v5 = v12;
  }

LABEL_12:

LABEL_13:
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (sel__prepareForTapGesture_ == a3)
  {
    return [(NSMutableArray *)self->_previewSourceViews count]!= 0;
  }

  v5.receiver = self;
  v5.super_class = UIViewController;
  return [UIResponder canPerformAction:sel_canPerformAction_withSender_ withSender:?];
}

+ (void)_sendPrepareForTapGesture:(uint64_t)a1
{
  v6 = a2;
  objc_opt_self();
  v2 = [v6 _viewControllerForAncestor];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    do
    {
      if ([v4 canPerformAction:sel__prepareForTapGesture_ withSender:v6])
      {
        break;
      }

      v5 = [v4 _nextViewController];

      v4 = v5;
    }

    while (v5);
  }

  else
  {
    v4 = 0;
  }

  [v4 _prepareForTapGesture:v6];
}

- (void)_prepareForTapGesture:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_previewSourceViews;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) sourceView];
        v11 = [v4 isDescendantOfView:v10];

        if (v11)
        {
          v12 = +[_UIStatistics previewInteractionTapCount];
          [v12 setSampleRate:1.0];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (NSArray)previewActionItems
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [(UIViewController *)self previewMenuItems];
  if ([v2 count])
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = v2;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          v10 = [v9 _subitems];
          if (v10 && (v11 = v10, [v9 _subitems], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, v11, v13))
          {
            v14 = [UIPreviewActionGroup _actionGroupWithPreviewMenuItemWithSubactions:v9];
          }

          else
          {
            v14 = [UIPreviewAction _actionWithPreviewMenuItem:v9];
          }

          v15 = v14;
          if (v14)
          {
            [v3 addObject:v14];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v6);
    }

    v16 = [MEMORY[0x1E695DEC8] arrayWithArray:v3];

    v2 = v18;
  }

  else
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  return v16;
}

- (id)previewMenuItems
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(UIViewController *)self previewActions];
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

        v9 = [UIPreviewMenuItem itemWithViewControllerPreviewAction:*(*(&v12 + 1) + 8 * i)];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x1E695DEC8] arrayWithArray:v3];

  return v10;
}

- (uint64_t)_presentedViewControllerStateIsValidForSourcingSupportedOrientations:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    if (_UIAppUseModernRotationAndPresentationBehaviors())
    {
      v4 = [a1 _presentationController];
      v5 = v4;
      if (v4 && ([v4 presentedViewController], v6 = objc_claimAutoreleasedReturnValue(), v6, v6 == v3) && ((objc_msgSend(v3, "transitionCoordinator"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isCancelled"), v7, !objc_msgSend(v5, "presenting")) || (v8 & 1) == 0))
      {
        v9 = [v5 dismissing] ^ 1 | v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v10 = [a1 currentAction];
      v5 = v10;
      if (v10 && *(v10 + 8) == @"DismissModal")
      {
        WeakRetained = objc_loadWeakRetained((v10 + 40));
        v9 = WeakRetained != v3;
      }

      else
      {
        v9 = 1;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (id)_windowForAutorotationBelowWindow:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    [v3 level];
    v6 = v5;
    v7 = [a1 _window];
    v8 = [v7 _windowHostingScene];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__UIViewController__windowForAutorotationBelowWindow___block_invoke;
    v10[3] = &unk_1E7104320;
    v11 = v4;
    v12 = v6;
    a1 = [v8 _topVisibleWindowPassingTest:v10];
  }

  return a1;
}

uint64_t __54__UIViewController__windowForAutorotationBelowWindow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) && ([v3 level], v5 > *(a1 + 40)))
  {
    v6 = 0;
  }

  else
  {
    v6 = [v4 _shouldControlAutorotation];
  }

  return v6;
}

- (id)_primaryViewControllerForAutorotationBelowWindow:(void *)a1
{
  if (a1)
  {
    v2 = [(UIViewController *)a1 _windowForAutorotationBelowWindow:a2];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 rootViewController];
      v5 = [v4 _viewControllerForSupportedInterfaceOrientationsWithDismissCheck:1];

      v6 = [v5 _existingPresentationControllerImmediate:0 effective:0];
      v7 = [v6 _shouldKeepCurrentFirstResponder];

      if ((v7 & 1) == 0)
      {
        v8 = [v5 presentingViewController];
        v9 = v8;
        if (v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = v5;
        }

        v11 = v10;

        v5 = v11;
      }
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

  return v5;
}

- (id)_viewControllerForRotationWithDismissCheck:(void *)a1
{
  v2 = a1;
  if (a1)
  {
    v4 = [a1 _existingView];
    v5 = [v4 window];

    if (v5)
    {
      v2 = v2;
    }

    else
    {
      v6 = [v2 presentedViewController];
      if (a2 && ([(UIViewController *)v2 _presentedViewControllerStateIsValidForSourcingSupportedOrientations:v6]& 1) == 0)
      {
        v7 = [(UIViewController *)v2 _nearestFullScreenAncestorViewController];
      }

      else if (v6)
      {
        v7 = [(UIViewController *)v6 _viewControllerForRotationWithDismissCheck:a2];
      }

      else
      {
        v7 = v2;
      }

      v2 = v7;
    }
  }

  return v2;
}

- (id)_viewControllersForRotationCallbacks
{
  parentViewController = self->_parentViewController;
  if (parentViewController)
  {
    v4 = [(UIViewController *)parentViewController _viewControllersForRotationCallbacks];
  }

  else
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = self;
    v6 = [(UIViewController *)v5 presentedViewController];
    if (v6)
    {
      v7 = v6;
      do
      {
        v8 = v7;

        v7 = [(UIViewController *)v8 presentedViewController];

        v5 = v8;
      }

      while (v7);
    }

    else
    {
      v8 = v5;
    }

    v9 = [(UIViewController *)v8 modalPresentationStyle];
    [v4 addObject:v8];
    if (v9)
    {
      v10 = [(UIViewController *)v8 presentingViewController];
      v11 = [v10 modalPresentationStyle];
      if (v10)
      {
        while (1)
        {
          v12 = v9;
          v9 = v11;
          v13 = [v10 _existingView];
          v14 = [v13 window];

          if (v14)
          {
            if (v9 != v12 || (v12 - 1) >= 2)
            {
              [v4 addObject:v10];
              if (!v9)
              {
                break;
              }
            }
          }

          v15 = [v10 presentingViewController];

          v11 = [v15 modalPresentationStyle];
          v10 = v15;
          if (!v15)
          {
            goto LABEL_17;
          }
        }
      }
    }

LABEL_17:
  }

  return v4;
}

- (id)_viewControllerForSupportedInterfaceOrientationsWithDismissCheck:(BOOL)a3
{
  parentViewController = self->_parentViewController;
  if (parentViewController)
  {
    v5 = [(UIViewController *)parentViewController _viewControllerForSupportedInterfaceOrientations];
LABEL_3:
    v6 = v5;
    goto LABEL_35;
  }

  v7 = a3;
  v8 = [(UIViewController *)self _existingView];
  v9 = [v8 window];

  if (!v9)
  {
    if (v7 && ([(UIViewController *)self childModalViewController], v13 = objc_claimAutoreleasedReturnValue(), v14 = [(UIViewController *)self _presentedViewControllerStateIsValidForSourcingSupportedOrientations:v13], v13, (v14 & 1) == 0))
    {
      v5 = [(UIViewController *)self _nearestFullScreenAncestorViewController];
    }

    else
    {
      v15 = [(UIViewController *)self childModalViewController];

      if (v15)
      {
        v10 = [(UIViewController *)self childModalViewController];
        v6 = [v10 _viewControllerForSupportedInterfaceOrientationsWithDismissCheck:v7];
        goto LABEL_34;
      }

      v5 = self;
    }

    goto LABEL_3;
  }

  v6 = self;
  v10 = [(UIViewController *)v6 presentedViewController];
  if (!v10)
  {
    goto LABEL_34;
  }

  v11 = v6;
  while (!v7 || [(UIViewController *)v11 _presentedViewControllerStateIsValidForSourcingSupportedOrientations:v10])
  {
    v12 = v10;

    v10 = [(UIViewController *)v12 presentedViewController];

    v11 = v12;
    if (!v10)
    {
      goto LABEL_16;
    }
  }

  v12 = v11;
LABEL_16:
  if (v12 == v6)
  {
LABEL_32:
    v6 = v12;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = v12;
    v17 = [(UIViewController *)v16 modalPresentationStyle];
    v18 = dyld_program_sdk_at_least();
    if (v17 == 4)
    {
      LOBYTE(v19) = 1;
    }

    else
    {
      v19 = (v17 < 0x12) & (0x20021u >> v17);
    }

    v20 = v18 ? v19 : (v17 < 0x12) & (0x20021u >> v17);
    v21 = dyld_program_sdk_at_least();
    if (v20 & 1) != 0 || (v21)
    {
      break;
    }

    v22 = [(UIViewController *)v16 _existingPresentationControllerImmediate:1 effective:0];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 presentationStyle];

      if (v24 == 20)
      {
        goto LABEL_33;
      }
    }

    else
    {
    }

LABEL_31:
    v12 = [(UIViewController *)v16 presentingViewController];

    if (v12 == v6)
    {
      goto LABEL_32;
    }
  }

  if ((v20 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_33:
  v6 = v16;
LABEL_34:

LABEL_35:

  return v6;
}

- (void)_beginDisablingInterfaceAutorotation
{
  v3 = [(UIViewController *)self view];
  v2 = [v3 window];
  [v2 beginDisablingInterfaceAutorotation];
}

- (void)_endDisablingInterfaceAutorotation
{
  v3 = [(UIViewController *)self view];
  v2 = [v3 window];
  [v2 endDisablingInterfaceAutorotation];
}

- (BOOL)_isInterfaceAutorotationDisabled
{
  v2 = [(UIViewController *)self view];
  v3 = [v2 window];
  v4 = [v3 isInterfaceAutorotationDisabled];

  return v4;
}

- (void)_updateInterfaceOrientationAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIViewController *)self _window];
  v6 = [v5 windowScene];
  v7 = [(UIScene *)v6 _systemShellOwnsInterfaceOrientation];

  if (v7)
  {
    if (v3)
    {

      [(UIViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __56__UIViewController__updateInterfaceOrientationAnimated___block_invoke;
      v11[3] = &unk_1E70F3590;
      v11[4] = self;
      [UIView performWithoutAnimation:v11];
    }
  }

  else
  {
    v8 = [(UIViewController *)self _preferredInterfaceOrientationGivenCurrentOrientation:[(UIViewController *)self interfaceOrientation]];
    v10 = [(UIViewController *)self view];
    v9 = [v10 window];
    [v9 _updateToInterfaceOrientation:v8 animated:v3];
  }
}

- (void)_setAllowsAutorotation:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFFFFFFF7FFLL | v3;
}

+ (void)attemptRotationToDeviceOrientation
{
  v16 = *MEMORY[0x1E69E9840];
  if (pthread_main_np() == 1)
  {
    v2 = [objc_opt_self() mainScreen];
    v3 = [UIWindow allWindowsIncludingInternalWindows:0 onlyVisibleWindows:1 forScreen:v2];

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
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

          [*(*(&v10 + 1) + 8 * v8++) _updateInterfaceOrientationFromDeviceOrientationIfRotationEnabled:{1, v10}];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v9 = *(__UILogGetCategoryCachedImpl("Orientation", &attemptRotationToDeviceOrientation___s_category) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "BUG IN CLIENT OF UIKIT: +[UIViewController attemptRotationToDeviceOrientation] should not be called on a background thread.", buf, 2u);
    }

    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_841);
  }
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
  v2 = [(UIViewController *)self _window];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 _windowInterfaceOrientation];
    if (v4 == UIInterfaceOrientationUnknown)
    {
      v4 = [UIApp _sceneInterfaceOrientationFromWindow:v3];
    }
  }

  else
  {
    v4 = UIInterfaceOrientationPortrait;
  }

  return v4;
}

- (uint64_t)_preferredInterfaceOrientationForPresentationInWindow:(uint64_t)a3 fromInterfaceOrientation:
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (!a1)
  {
    a3 = 0;
    goto LABEL_16;
  }

  if ([v5 _windowCanDynamicallySpecifySupportedInterfaceOrientations])
  {
    if ([a1 _hasPreferredInterfaceOrientationForPresentation] && _UIViewControllerIsBeingPresentedOrDismissesFullscreen(a1))
    {
      v7 = [a1 preferredInterfaceOrientationForPresentation];
      v8 = [a1 supportedInterfaceOrientations];
      if (v7 > 4 || (v9 = v8, (v8 | qword_18A6798F0[v7]) == 0xFFFFFFFFFFFFFFFFLL))
      {
        a3 = v7;
        goto LABEL_16;
      }

      v10 = *(__UILogGetCategoryCachedImpl("Orientation", &_preferredInterfaceOrientationForPresentationInWindow_fromInterfaceOrientation____s_category) + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
        v12 = _UIInterfaceOrientationDebugDescription(v7);
        v13 = _UIInterfaceOrientationMaskDebugDescription(v9);
        v19 = 138412546;
        v20 = v12;
        v21 = 2112;
        v22 = v13;
        _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "preferredInterfaceOrientationForPresentation '%@' must match a supported interface orientation: '%@'!", &v19, 0x16u);
      }
    }

    if (([v6 isInterfaceAutorotationDisabled] & 1) == 0)
    {
      if ([a1 shouldAutorotate])
      {
        v14 = [UIApp _hasApplicationCalledLaunchDelegate];
        v15 = [v6 windowScene];
        a3 = [v15 _interfaceOrientation];

        v16 = +[UIDevice currentDevice];
        v17 = [v16 orientation];

        if ((v17 - 1) <= 3 && (!v14 || ([a1 _isModalSheet] & 1) == 0))
        {
          a3 = v17;
        }
      }
    }

    a3 = [a1 _preferredInterfaceOrientationGivenCurrentOrientation:a3];
  }

LABEL_16:

  return a3;
}

+ (BOOL)_allViewControllersInArray:(id)a3 allowAutorotationToInterfaceOrientation:(int64_t)a4 predicate:(id)a5
{
  v7 = a3;
  v8 = a5;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __97__UIViewController__allViewControllersInArray_allowAutorotationToInterfaceOrientation_predicate___block_invoke;
  v11[3] = &unk_1E7104348;
  v9 = v8;
  v13 = &v15;
  v14 = a4;
  v12 = v9;
  [v7 enumerateObjectsUsingBlock:v11];
  LOBYTE(a4) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return a4;
}

uint64_t __97__UIViewController__allViewControllersInArray_allowAutorotationToInterfaceOrientation_predicate___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if ((result & 1) == 0)
  {
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return result;
}

- (BOOL)__withSupportedInterfaceOrientation:(void *)a3 apply:
{
  v5 = a3;
  if (a1)
  {
    v6 = _UIInterfaceOrientationMaskContainsOrientation([a1 __supportedInterfaceOrientations], a2);
    if (v5)
    {
      v5[2](v5, v6);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isSupportedInterfaceOrientation:(int64_t)a3
{
  if (![objc_opt_class() _doesOverrideLegacyShouldAutorotateMethod])
  {
    return a3 == 1;
  }

  return [(UIViewController *)self shouldAutorotateToInterfaceOrientation:a3];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
  if ([objc_opt_class() _doesOverrideLegacyShouldAutorotateMethod])
  {
    LOBYTE(v5) = toInterfaceOrientation == UIInterfaceOrientationPortrait;
  }

  else
  {
    v5 = [(UIViewController *)self _allowsAutorotation];
    if (v5)
    {

      LOBYTE(v5) = [(UIViewController *)self _isSupportedInterfaceOrientation:toInterfaceOrientation];
    }
  }

  return v5;
}

- (id)rotatingHeaderViewForWindow:(id)a3
{
  v3 = [(UIViewController *)self viewControllerForRotation];
  v4 = [v3 rotatingHeaderView];

  return v4;
}

- (UIView)rotatingHeaderView
{
  v2 = [(UIViewController *)self searchDisplayController];
  v3 = [v2 searchBar];

  return v3;
}

- (id)rotatingFooterViewForWindow:(id)a3
{
  v3 = [(UIViewController *)self viewControllerForRotation];
  v4 = [v3 rotatingFooterView];

  return v4;
}

- (void)_setInterfaceOrientationOnModalRecursively:(void *)a1
{
  if (a1)
  {
    [a1 setInterfaceOrientation:a2];
    v4 = [a1 view];
    v5 = [v4 window];
    v6 = [a1 childModalViewController];
    v7 = [v6 view];
    v8 = [v7 window];

    if (v5 == v8)
    {
      v9 = [a1 childModalViewController];
      [(UIViewController *)v9 _setInterfaceOrientationOnModalRecursively:a2];
    }
  }
}

- (void)setInterfaceOrientation:(int64_t)a3
{
  if ((a3 - 1) <= 3)
  {
    v5[6] = v3;
    v5[7] = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __44__UIViewController_setInterfaceOrientation___block_invoke;
    v5[3] = &unk_1E70F9B38;
    v5[4] = self;
    v5[5] = a3;
    [(UIViewController *)self __withSupportedInterfaceOrientation:a3 apply:v5];
  }
}

uint64_t __44__UIViewController_setInterfaceOrientation___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = *(result + 32);
    if (v2)
    {
      *(v2 + 256) = *(result + 40);
    }
  }

  return result;
}

- (void)_updateLastKnownInterfaceOrientationOnPresentionStack:(uint64_t)a1
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = [a1 _window];
    v5 = [v4 _windowOwnsInterfaceOrientation];

    if (v5)
    {
      if (([a1 _isPresentedFormSheet] & 1) == 0 && objc_msgSend(a1, "shouldAutorotate"))
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __74__UIViewController__updateLastKnownInterfaceOrientationOnPresentionStack___block_invoke;
        v15[3] = &unk_1E70F9B38;
        v15[4] = a1;
        v15[5] = a2;
        [(UIViewController *)a1 __withSupportedInterfaceOrientation:a2 apply:v15];
      }
    }

    else
    {
      *(a1 + 256) = a2;
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = *(a1 + 104);
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
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

          [(UIViewController *)*(*(&v11 + 1) + 8 * v10++) _updateLastKnownInterfaceOrientationOnPresentionStack:a2];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

uint64_t __74__UIViewController__updateLastKnownInterfaceOrientationOnPresentionStack___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = *(result + 32);
    if (v2)
    {
      *(v2 + 256) = *(result + 40);
    }
  }

  return result;
}

- (BOOL)_isViewControllerInWindowHierarchy
{
  v2 = [(UIViewController *)self _existingView];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 window];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGPoint)_centerForOrientation:(int64_t)a3
{
  v4 = [(UIViewController *)self _window];
  if (!v4)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v27 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v27, OS_LOG_TYPE_FAULT, "self.window should be non-nil", buf, 2u);
      }
    }

    else
    {
      v26 = *(__UILogGetCategoryCachedImpl("Assert", &_centerForOrientation____s_category) + 8);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *v28 = 0;
        _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "self.window should be non-nil", v28, 2u);
      }
    }
  }

  v5 = _UIAppStatusBarHeightForWindow(v4);
  if ([UIApp _appAdoptsUISceneLifecycle])
  {
    [v4 _referenceFrameFromSceneUsingScreenBounds:v5 != 0.0];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    if (v4)
    {
      v14 = [UIApp _sceneInterfaceOrientationFromWindow:v4];
    }

    else
    {
      v14 = 0;
    }

    v15 = v5 != 0.0;
    v16 = [(UIViewController *)self _screen];
    v17 = __UIStatusBarManagerForWindow(v4);
    [v17 defaultStatusBarHeightInOrientation:1];
    v19 = v18;

    [v16 _applicationFrameForInterfaceOrientation:v14 usingStatusbarHeight:v15 ignoreStatusBar:v19];
    v7 = v20;
    v9 = v21;
    v11 = v22;
    v13 = v23;
  }

  v24 = v7 + v11 * 0.5;
  v25 = v9 + v13 * 0.5;
  result.y = v25;
  result.x = v24;
  return result;
}

- (CGRect)_boundsForOrientation:(int64_t)a3
{
  v5 = [(UIViewController *)self _window];
  if (!v5)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v32 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v32, OS_LOG_TYPE_FAULT, "self.window should be non-nil", buf, 2u);
      }
    }

    else
    {
      v31 = *(__UILogGetCategoryCachedImpl("Assert", &_boundsForOrientation____s_category) + 8);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v33[0] = 0;
        _os_log_impl(&dword_188A29000, v31, OS_LOG_TYPE_ERROR, "self.window should be non-nil", v33, 2u);
      }
    }
  }

  v6 = [(UIViewController *)self view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  v11 = _UIAppStatusBarHeightForWindow(v5);
  if ([UIApp _appAdoptsUISceneLifecycle])
  {
    [v5 _referenceFrameFromSceneUsingScreenBounds:v11 != 0.0];
    v13 = v12;
    v15 = v14;
  }

  else
  {
    if (v5)
    {
      v16 = [UIApp _sceneInterfaceOrientationFromWindow:v5];
    }

    else
    {
      v16 = 0;
    }

    v17 = v11 != 0.0;
    v18 = [(UIViewController *)self _screen];
    v19 = __UIStatusBarManagerForWindow(v5);
    [v19 defaultStatusBarHeightInOrientation:1];
    v21 = v20;

    [v18 _applicationFrameForInterfaceOrientation:v16 usingStatusbarHeight:v17 ignoreStatusBar:v21];
    v13 = v22;
    v15 = v23;
  }

  v24 = _UIAppUseModernRotationAndPresentationBehaviors();
  if ((a3 - 3) >= 2)
  {
    v25 = v15;
  }

  else
  {
    v25 = v13;
  }

  if ((a3 - 3) >= 2)
  {
    v26 = v13;
  }

  else
  {
    v26 = v15;
  }

  if (!v24)
  {
    v15 = v25;
    v13 = v26;
  }

  v27 = v8;
  v28 = v10;
  v29 = v13;
  v30 = v15;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (void)setInWillRotateCallback:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFFFFFF7FFFLL | v3;
}

- (void)_willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4 forwardToChildControllers:(BOOL)a5 skipSelf:(BOOL)a6
{
  if ([(UIViewController *)self _shouldFreezeUnderlapsStatusBar])
  {
    *&self->_viewControllerFlags |= 0x8000000000uLL;
  }

  if (!a6)
  {
    [(UIViewController *)self setInWillRotateCallback:1];
    [(UIViewController *)self willRotateToInterfaceOrientation:a3 duration:a4];
  }

  v11 = self;
  if ([(UIViewController *)v11 childViewControllersCount]&& ([(UIViewController *)v11 _existingView], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    v14 = [(UIViewController *)v11 _existingView];
    v15 = [v14 isHidden];

    if ((v15 & 1) == 0)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __98__UIViewController__willRotateToInterfaceOrientation_duration_forwardToChildControllers_skipSelf___block_invoke;
      v16[3] = &__block_descriptor_49_e30_v24__0__UIViewController_8_B16l;
      v16[4] = a3;
      *&v16[5] = a4;
      v17 = a5;
      [UIViewController _enumerateVisibleChildControllers:v11 includePresentedChildren:1 usingBlock:v16];
    }
  }

  else
  {
  }

  if (!a6)
  {
    [(UIViewController *)v11 setInWillRotateCallback:0];
  }
}

void __98__UIViewController__willRotateToInterfaceOrientation_duration_forwardToChildControllers_skipSelf___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [v5 _willRotateToInterfaceOrientation:v3 duration:objc_msgSend(v5 forwardToChildControllers:"_forwardRotationMethods") skipSelf:{(*(a1 + 48) & 1) == 0, v4}];
}

- (void)_willRotateToInterfaceOrientation
{
  if (a1)
  {
    if ([a1 _shouldFreezeUnderlapsStatusBar])
    {
      a1[47] |= 0x8000000000uLL;
    }

    v6 = a1;
    if ([v6 childViewControllersCount] && (objc_msgSend(v6, "_existingView"), (v2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v3 = v2;
      v4 = [v6 _existingView];
      v5 = [v4 isHidden];

      if ((v5 & 1) == 0)
      {

        [UIViewController _enumerateVisibleChildControllers:v6 includePresentedChildren:0 usingBlock:&__block_literal_global_872];
      }
    }

    else
    {
    }
  }
}

- (void)window:(id)a3 willRotateToInterfaceOrientation:(int64_t)a4 duration:(double)a5 newSize:(CGSize)a6
{
  [UIApp setIgnoresInteractionEvents:{1, a4, a5, a6.width, a6.height}];

  [(UIViewController *)self _willRotateToInterfaceOrientation];
}

- (void)window:(id)a3 willRotateToInterfaceOrientation:(int64_t)a4 duration:(double)a5
{
  v8 = a3;
  [UIApp setIgnoresInteractionEvents:1];
  if (a5 > 0.0 && ([v8 isUsingOnePartRotationAnimation] & 1) == 0)
  {
    v9 = [(UIViewController *)self rotatingFooterViewForWindow:v8];
    v10 = [v9 superview];
    savedFooterSuperview = self->_savedFooterSuperview;
    self->_savedFooterSuperview = 0;

    if (v10 != v8)
    {
      objc_storeStrong(&self->_savedFooterSuperview, v10);
      [v9 center];
      [v8 convertPoint:v10 fromView:?];
      [v9 setCenter:?];
      v12 = [(UIViewController *)self rotatingContentViewForWindow:v8];
      v13 = v12;
      if (v12)
      {
        [v12 transform];
      }

      else
      {
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
      }

      v23 = v26;
      v24 = v27;
      v25 = v28;
      [v9 setTransform:&v23];

      [v8 addSubview:v9];
    }

    v14 = [(UIViewController *)self rotatingHeaderViewForWindow:v8];
    v15 = [v14 superview];
    savedHeaderSuperview = self->_savedHeaderSuperview;
    self->_savedHeaderSuperview = 0;

    if (v15 != v8)
    {
      objc_storeStrong(&self->_savedHeaderSuperview, v15);
      [v14 center];
      [v8 convertPoint:v15 fromView:?];
      [v14 setCenter:?];
      v17 = [(UIViewController *)self rotatingContentViewForWindow:v8];
      v18 = v17;
      if (v17)
      {
        [v17 transform];
      }

      else
      {
        v21 = 0u;
        v22 = 0u;
        v20 = 0u;
      }

      v23 = v20;
      v24 = v21;
      v25 = v22;
      [v14 setTransform:{&v23, v20, v21, v22}];

      [v8 addSubview:v14];
    }
  }

  v19 = [(UIViewController *)self viewControllerForRotation];
  [v19 _willRotateToInterfaceOrientation:a4 duration:objc_msgSend(v19 forwardToChildControllers:"_forwardRotationMethods") skipSelf:{0, a5}];
}

- (BOOL)shouldWindowUseOnePartInterfaceRotationAnimation:(id)a3
{
  v3 = [(UIViewController *)self viewControllerForRotation];
  v4 = [v3 _shouldUseOnePartRotation];

  return v4;
}

- (BOOL)_shouldUseOnePartRotation
{
  v2 = [objc_opt_class() doesOverrideViewControllerMethod:sel_willAnimateRotationToInterfaceOrientation_duration_];
  if ([objc_opt_class() doesOverrideViewControllerMethod:sel_willAnimateFirstHalfOfRotationToInterfaceOrientation_duration_])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [objc_opt_class() doesOverrideViewControllerMethod:sel_willAnimateSecondHalfOfRotationFromInterfaceOrientation_duration_] ^ 1;
  }

  return v3 | v2;
}

- (void)getRotationContentSettings:(id *)a3 forWindow:(id)a4
{
  v5 = [(UIViewController *)self _viewControllerForRotation:a3];
  [v5 _getRotationContentSettings:a3];
}

- (void)window:(id)a3 resizeFromOrientation:(int64_t)a4
{
  v6 = a3;
  v7 = 0.0;
  v8 = 0.0;
  if ([v6 interfaceOrientation] != 1)
  {
    if ([v6 interfaceOrientation] == 4)
    {
      v8 = -1.5708;
    }

    else if ([v6 interfaceOrientation] == 3)
    {
      v8 = 1.5708;
    }

    else if ([v6 interfaceOrientation] == 2)
    {
      v8 = 3.1416;
    }

    else
    {
      v8 = 0.0;
    }
  }

  if (a4 != 1)
  {
    switch(a4)
    {
      case 3:
        v7 = 1.5708;
        break;
      case 4:
        v7 = -1.5708;
        break;
      case 2:
        v7 = 3.1416;
        break;
      default:
        v7 = 0.0;
        break;
    }
  }

  v9 = [(UIViewController *)self rotatingContentViewForWindow:v6];
  v10 = [v9 autoresizingMask];
  v11 = [(UIViewController *)self _screen];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = -v7;
  [UIScreen transformForScreenOriginRotation:v20];
  v48.origin.x = v13;
  v48.origin.y = v15;
  v48.size.width = v17;
  v48.size.height = v19;
  v49 = CGRectApplyAffineTransform(v48, &v47);
  width = v49.size.width;
  height = v49.size.height;
  [UIScreen transformForScreenOriginRotation:-v8, v49.origin.y];
  v50.origin.x = v13;
  v50.origin.y = v15;
  v50.size.width = v17;
  v50.size.height = v19;
  v51 = CGRectApplyAffineTransform(v50, &v47);
  v23 = v51.size.width;
  v24 = v51.size.height;
  [v9 center];
  v26 = v25;
  v28 = v27;
  [UIScreen transformForScreenOriginRotation:v20];
  v29 = v47.tx + v26 * v47.a + v28 * v47.c;
  v30 = v47.ty + v26 * v47.b + v28 * v47.d;
  *&v29 = v29;
  v46 = *&v29;
  [v9 bounds];
  v32 = v31;
  v34 = v33;
  v45 = v34;
  v35 = width;
  v36 = v23;
  adjustOffsetAndDimension(&v46, &v45, v10 & 7, v35, v36);
  v37 = v30;
  v38 = v32;
  v43 = v38;
  v44 = v37;
  v39 = height;
  v40 = v24;
  adjustOffsetAndDimension(&v44, &v43, (v10 >> 3) & 7, v39, v40);
  v42 = v46;
  v41 = v44;
  [UIScreen transformForScreenOriginRotation:v8];
  [v9 setCenter:{vaddq_f64(*&v47.tx, vaddq_f64(vmulq_n_f64(*&v47.a, v42), vmulq_n_f64(*&v47.c, v41)))}];
  [v9 setBounds:{0.0, 0.0, v45, v43}];
}

- (void)_willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4 forwardToChildControllers:(BOOL)a5 skipSelf:(BOOL)a6
{
  if (!a6)
  {
    [(UIViewController *)self willAnimateRotationToInterfaceOrientation:a3 duration:a4];
  }

  v14 = self;
  if ([(UIViewController *)v14 childViewControllersCount]&& ([(UIViewController *)v14 _existingView], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    v12 = [(UIViewController *)v14 _existingView];
    v13 = [v12 isHidden];

    if ((v13 & 1) == 0)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __107__UIViewController__willAnimateRotationToInterfaceOrientation_duration_forwardToChildControllers_skipSelf___block_invoke;
      v15[3] = &__block_descriptor_49_e30_v24__0__UIViewController_8_B16l;
      v15[4] = a3;
      *&v15[5] = a4;
      v16 = a5;
      [UIViewController _enumerateVisibleChildControllers:v14 includePresentedChildren:1 usingBlock:v15];
    }
  }

  else
  {
  }
}

void __107__UIViewController__willAnimateRotationToInterfaceOrientation_duration_forwardToChildControllers_skipSelf___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [v5 _willAnimateRotationToInterfaceOrientation:v3 duration:objc_msgSend(v5 forwardToChildControllers:"_forwardRotationMethods") skipSelf:{(*(a1 + 48) & 1) == 0, v4}];
}

- (void)window:(id)a3 willAnimateRotationToInterfaceOrientation:(int64_t)a4 duration:(double)a5 newSize:(CGSize)a6
{
  if (self)
  {
    self->_lastKnownInterfaceOrientation = a4;
  }

  v8 = a3;
  [(UIViewController *)self _updateLastKnownInterfaceOrientationOnPresentionStack:a4];
  v9 = [(UIViewController *)self rotatingContentViewForWindow:v8];
  memset(v19, 0, sizeof(v19));
  [(UIViewController *)self getRotationContentSettings:v19 forWindow:v8];

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __86__UIViewController_window_willAnimateRotationToInterfaceOrientation_duration_newSize___block_invoke;
  v17 = &unk_1E70F3590;
  v10 = v9;
  v18 = v10;
  v11 = _Block_copy(&v14);
  if ([UIView _isInAnimationBlockWithAnimationsEnabled:v14]&& (LOBYTE(v19[0]) != 1 || BYTE3(v19[0]) == 1))
  {
    if (BYTE4(v19[0]))
    {
      v12 = 2048;
    }

    else
    {
      v12 = 0;
    }

    if (dyld_program_sdk_at_least())
    {
      v13 = v12 | 4;
    }

    else
    {
      v13 = v12;
    }

    [UIView animateWithDuration:v13 delay:v11 options:0 animations:0.0 completion:0.0];
  }

  else
  {
    [UIView performWithoutAnimation:v11];
  }
}

void __86__UIViewController_window_willAnimateRotationToInterfaceOrientation_duration_newSize___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) layer];
  [v1 layoutIfNeeded];
}

- (void)window:(id)a3 willAnimateRotationToInterfaceOrientation:(int64_t)a4 duration:(double)a5
{
  v8 = a3;
  dropShadowView = self->_dropShadowView;
  if (dropShadowView)
  {
    [dropShadowView bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v11 = *MEMORY[0x1E695F058];
    v13 = *(MEMORY[0x1E695F058] + 8);
    v15 = *(MEMORY[0x1E695F058] + 16);
    v17 = *(MEMORY[0x1E695F058] + 24);
  }

  v18 = [(UIViewController *)self _lastKnownInterfaceOrientation];
  self->_lastKnownInterfaceOrientation = a4;
  v19 = [(UIViewController *)self rotatingContentViewForWindow:v8];
  v20 = [(UIViewController *)self viewControllerForRotation];
  if (![v20 _useSheetRotation])
  {

    goto LABEL_8;
  }

  viewControllerFlags = self->_viewControllerFlags;

  if ((viewControllerFlags & 0x80) != 0)
  {
LABEL_8:
    if (v19 && (v19[95] & 2) != 0 && ([v19 translatesAutoresizingMaskIntoConstraints] & 1) == 0)
    {
      [v8 _setNeedsUpdateConstraints];
    }

    else
    {
      [(UIViewController *)self _centerForOrientation:a4];
      [v19 setCenter:?];
      [(UIViewController *)self _boundsForOrientation:a4];
      [v19 setBounds:?];
    }

    goto LABEL_12;
  }

  [(UIViewController *)self window:v8 resizeFromOrientation:v18];
LABEL_12:
  memset(v35, 0, sizeof(v35));
  [(UIViewController *)self getRotationContentSettings:v35 forWindow:v8];
  v22 = +[UIView areAnimationsEnabled];
  v23 = (LOBYTE(v35[0]) != 1 || BYTE3(v35[0]) == 1) && v22;
  [UIView setAnimationsEnabled:v23];
  v24 = [v19 layer];
  [v24 layoutIfNeeded];

  [UIView setAnimationsEnabled:v22];
  v25 = [(UIViewController *)self viewControllerForRotation];
  [v25 _willAnimateRotationToInterfaceOrientation:a4 duration:objc_msgSend(v25 forwardToChildControllers:"_forwardRotationMethods") skipSelf:{0, a5}];
  v26 = self->_dropShadowView;
  if (v26)
  {
    [v26 bounds];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
  }

  else
  {
    v28 = *MEMORY[0x1E695F058];
    v30 = *(MEMORY[0x1E695F058] + 8);
    v32 = *(MEMORY[0x1E695F058] + 16);
    v34 = *(MEMORY[0x1E695F058] + 24);
  }

  [v26 willBeginRotationWithOriginalBounds:v11 newBounds:{v13, v15, v17, v28, v30, v32, v34}];
}

- (void)window:(id)a3 setupWithInterfaceOrientation:(int64_t)a4
{
  v11 = a3;
  if (!_UIAppUseModernRotationAndPresentationBehaviors())
  {
    v6 = [(UIViewController *)self _lastKnownInterfaceOrientation];
    if (self)
    {
      self->_lastKnownInterfaceOrientation = a4;
    }

    v7 = [(UIViewController *)self viewControllerForRotation];
    if ([v7 _useSheetRotation])
    {
      viewControllerFlags = self->_viewControllerFlags;

      if ((viewControllerFlags & 0x80) == 0)
      {
        [(UIViewController *)self window:v11 resizeFromOrientation:v6];
        goto LABEL_9;
      }
    }

    else
    {
    }

    v9 = [(UIViewController *)self rotatingContentViewForWindow:v11];
    [(UIViewController *)self _centerForOrientation:a4];
    [v9 setCenter:?];
    [(UIViewController *)self _boundsForOrientation:a4];
    [v9 setBounds:?];
    v10 = [v9 layer];
    [v10 layoutIfNeeded];
  }

LABEL_9:
}

- (void)window:(id)a3 willAnimateFirstHalfOfRotationToInterfaceOrientation:(int64_t)a4 duration:(double)a5
{
  if (a5 > 0.0)
  {
    v8 = [(UIViewController *)self rotatingContentViewForWindow:a3];
    [v8 center];
    v10 = v9;
    v12 = v11;
    [(UIViewController *)self _centerForOrientation:a4];
    [v8 setCenter:{v10 + (v13 - v10) * 0.5, v12 + (v14 - v12) * 0.5}];
    [v8 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    [(UIViewController *)self _boundsForOrientation:a4];
    [v8 setBounds:{v16 + (v23 - v16) * 0.5, v18 + (v24 - v18) * 0.5, v20 + (v25 - v20) * 0.5, v22 + (v26 - v22) * 0.5}];
    [v8 layoutIfNeeded];
  }

  v27 = [(UIViewController *)self viewControllerForRotation];
  [v27 willAnimateFirstHalfOfRotationToInterfaceOrientation:a4 duration:a5];
}

- (void)window:(id)a3 didAnimateFirstHalfOfRotationToInterfaceOrientation:(int64_t)a4
{
  v5 = [(UIViewController *)self viewControllerForRotation];
  [v5 didAnimateFirstHalfOfRotationToInterfaceOrientation:a4];
}

- (void)window:(id)a3 willAnimateSecondHalfOfRotationFromInterfaceOrientation:(int64_t)a4 duration:(double)a5
{
  v8 = a3;
  v9 = [v8 interfaceOrientation];
  [(UIViewController *)self _setInterfaceOrientationOnModalRecursively:v9];
  v11 = [(UIViewController *)self rotatingContentViewForWindow:v8];

  [(UIViewController *)self _centerForOrientation:v9];
  [v11 setCenter:?];
  [(UIViewController *)self _boundsForOrientation:v9];
  [v11 setBounds:?];
  [v11 layoutIfNeeded];
  v10 = [(UIViewController *)self viewControllerForRotation];
  [v10 willAnimateSecondHalfOfRotationFromInterfaceOrientation:a4 duration:a5];
}

- (void)_didRotateFromInterfaceOrientation:(int64_t)a3 forwardToChildControllers:(BOOL)a4 skipSelf:(BOOL)a5
{
  *&self->_viewControllerFlags &= ~0x8000000000uLL;
  if (!a5)
  {
    [(UIViewController *)self didRotateFromInterfaceOrientation:a3];
  }

  v12 = self;
  if ([(UIViewController *)v12 childViewControllersCount]&& ([(UIViewController *)v12 _existingView], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v10 = [(UIViewController *)v12 _existingView];
    v11 = [v10 isHidden];

    if ((v11 & 1) == 0)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __90__UIViewController__didRotateFromInterfaceOrientation_forwardToChildControllers_skipSelf___block_invoke;
      v13[3] = &__block_descriptor_41_e30_v24__0__UIViewController_8_B16l;
      v13[4] = a3;
      v14 = a4;
      [UIViewController _enumerateVisibleChildControllers:v12 includePresentedChildren:1 usingBlock:v13];
    }
  }

  else
  {
  }
}

void __90__UIViewController__didRotateFromInterfaceOrientation_forwardToChildControllers_skipSelf___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 _didRotateFromInterfaceOrientation:v3 forwardToChildControllers:objc_msgSend(v4 skipSelf:{"_forwardRotationMethods"), (*(a1 + 40) & 1) == 0}];
}

- (void)_didRotateFromInterfaceOrientation
{
  if (a1)
  {
    a1[47] &= ~0x8000000000uLL;
    v5 = a1;
    if ([v5 childViewControllersCount] && (objc_msgSend(v5, "_existingView"), (v1 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v2 = v1;
      v3 = [v5 _existingView];
      v4 = [v3 isHidden];

      if ((v4 & 1) == 0)
      {

        [UIViewController _enumerateVisibleChildControllers:v5 includePresentedChildren:0 usingBlock:&__block_literal_global_881];
      }
    }

    else
    {
    }
  }
}

- (void)window:(id)a3 didRotateFromInterfaceOrientation:(int64_t)a4 oldSize:(CGSize)a5
{
  v6 = [(UIViewController *)self view:a3];
  [v6 setNeedsDisplay];

  [UIApp setIgnoresInteractionEvents:0];

  [(UIViewController *)self _didRotateFromInterfaceOrientation];
}

- (void)window:(id)a3 didRotateFromInterfaceOrientation:(int64_t)a4
{
  v6 = a3;
  [self->_dropShadowView didFinishRotation];
  v7 = [(UIViewController *)self rotatingFooterViewForWindow:v6];
  v8 = [v7 superview];
  v9 = v8;
  savedFooterSuperview = self->_savedFooterSuperview;
  if (savedFooterSuperview)
  {
    v11 = v8 == savedFooterSuperview;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    [v7 center];
    [v9 convertPoint:self->_savedFooterSuperview toView:?];
    [v7 setCenter:?];
    if (v9)
    {
      [v9 transform];
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
      v27 = 0u;
    }

    v24 = v27;
    v25 = v28;
    v26 = v29;
    [v7 setTransform:&v24];
    [(UIView *)self->_savedFooterSuperview addSubview:v7];
    v12 = self->_savedFooterSuperview;
    self->_savedFooterSuperview = 0;

    [v7 layoutIfNeeded];
  }

  v13 = [(UIViewController *)self rotatingHeaderViewForWindow:v6];
  v14 = [v13 superview];
  v15 = v14;
  savedHeaderSuperview = self->_savedHeaderSuperview;
  if (savedHeaderSuperview)
  {
    v17 = v14 == savedHeaderSuperview;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    [v13 center];
    [v15 convertPoint:self->_savedHeaderSuperview toView:?];
    [v13 setCenter:?];
    if (v15)
    {
      [v15 transform];
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
    }

    v24 = v21;
    v25 = v22;
    v26 = v23;
    [v13 setTransform:{&v24, v21, v22, v23}];
    [(UIView *)self->_savedHeaderSuperview addSubview:v13];
    v18 = self->_savedHeaderSuperview;
    self->_savedHeaderSuperview = 0;

    [v13 layoutIfNeeded];
  }

  v19 = [(UIViewController *)self view];
  [v19 setNeedsDisplay];

  [UIApp setIgnoresInteractionEvents:0];
  v20 = [(UIViewController *)self viewControllerForRotation];
  [v20 _didRotateFromInterfaceOrientation:a4 forwardToChildControllers:objc_msgSend(v20 skipSelf:{"_forwardRotationMethods"), 0}];
}

- (void)_willBeginCounterRotationForPresentation
{
  *(&self->_viewControllerFlags + 4) |= 0x40u;
  if ([(UIViewController *)self _handlesCounterRotationForPresentation])
  {
    v3 = [(UIViewController *)self traitCollection];
    frozenTraitCollection = self->_frozenTraitCollection;
    self->_frozenTraitCollection = v3;
  }
}

- (void)_didEndCounterRotationForPresentation
{
  *(&self->_viewControllerFlags + 4) &= ~0x40u;
  if ([(UIViewController *)self _handlesCounterRotationForPresentation])
  {
    v3 = [(UIViewController *)self traitCollection];
    v4 = [(UIViewController *)self _parentTraitEnvironment];
    v5 = [v4 _traitCollectionForChildEnvironment:self];
    v6 = [(UIViewController *)self _traitCollectionByApplyingOverridesFromParentViewControllerToTraitCollection:v5];

    v7 = [(UIViewController *)self _traitCollectionByApplyingLocalOverridesToTraitCollection:v6];

    if (v7 != v3 && ([v3 isEqual:v7] & 1) == 0)
    {
      v8 = objc_alloc_init(_UIViewControllerNullAnimationTransitionCoordinator);
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __57__UIViewController__didEndCounterRotationForPresentation__block_invoke;
      v14 = &unk_1E70F6B40;
      v15 = self;
      v16 = v3;
      v17 = v7;
      v18 = v8;
      v9 = v8;
      [UIViewController _performWithoutDeferringTransitions:&v11];
      [(_UIViewControllerNullAnimationTransitionCoordinator *)v9 _runAlongsideAnimations:v11];
      [(_UIViewControllerNullAnimationTransitionCoordinator *)v9 _runAlongsideCompletionsAfterCommit];
    }

    frozenTraitCollection = self->_frozenTraitCollection;
    self->_frozenTraitCollection = 0;

    [(UIViewController *)self _updateTraitsIfNecessary];
  }
}

uint64_t __57__UIViewController__didEndCounterRotationForPresentation__block_invoke(uint64_t *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_self();
  v3 = _UIShouldLogTraitCollectionChangeForInstanceAndMethod(v2, a1[4], sel_willTransitionToTraitCollection_withTransitionCoordinator_);

  if (v3)
  {
    v5 = *(__UILogGetCategoryCachedImpl("TraitCollectionChange", &_UIInternalPreference_ViewControllersInheritTraitsFromViewHierarchy_block_invoke_8___s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = NSStringFromSelector(sel_willTransitionToTraitCollection_withTransitionCoordinator_);
      v8 = a1[4];
      v9 = [UITraitCollection _descriptionForChangeFromTraitCollection:a1[5] toTraitCollection:a1[6]];
      v10 = a1[5];
      v11 = a1[6];
      v12 = 138413314;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Sending -%@ to %@\n\t► trait changes: %@\n\t► current: %@\n\t► new: %@", &v12, 0x34u);
    }
  }

  return [a1[4] willTransitionToTraitCollection:a1[6] withTransitionCoordinator:a1[7]];
}

- (void)_invalidatePreferences:(__int16)a3 excluding:
{
  if (a1)
  {
    if ((a2 & 1) != 0 && (a3 & 1) == 0)
    {
      [a1 setNeedsStatusBarAppearanceUpdate];
    }

    if ((a2 & 2) != 0 && (a3 & 2) == 0)
    {
      [a1 _setNeedsUserInterfaceAppearanceUpdate];
    }

    if ((a2 & 4) != 0 && (a3 & 4) == 0)
    {
      [a1 setNeedsWhitePointAdaptivityStyleUpdate];
    }

    if ((a2 & 8) != 0 && (a3 & 8) == 0)
    {
      [a1 setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
    }

    if ((a2 & 0x10) != 0 && (a3 & 0x10) == 0)
    {
      [a1 setNeedsUpdateOfHomeIndicatorAutoHidden];
    }

    if ((a2 & 0x20) != 0 && (a3 & 0x20) == 0)
    {
      [a1 setNeedsUpdateOfPrefersPointerLocked];
    }

    if ((a2 & 0x40) != 0 && (a3 & 0x40) == 0)
    {
      [a1 _setNeedsUpdateOfMultitaskingDragExclusionRects];
    }

    if ((a2 & 0x80) != 0 && (a3 & 0x80) == 0)
    {
      [a1 setNeedsUpdateOfSupportedInterfaceOrientations];
    }

    if ((a2 & 0x200) != 0 && (a3 & 0x200) == 0)
    {
      v6 = [a1 _existingView];
      v7 = [v6 window];

      v8 = [v7 _eventRoutingScene];
      v9 = [v8 _existingPhysicalButtonInteractionArbiter];

      if (v9)
      {
        [(_UIPhysicalButtonInteractionArbiter *)v9 _setNeedsResolutionOfPhysicalButtonConfigurationsInWindow:v7 forReason:1uLL];
      }
    }

    if ((a2 & 0x800) != 0 && (a3 & 0x800) == 0)
    {

      [a1 setNeedsUpdateOfPrefersInterfaceOrientationLocked];
    }
  }
}

- (void)setContentUnavailableConfiguration:(id)contentUnavailableConfiguration
{
  v4 = contentUnavailableConfiguration;
  v5 = [(UIViewController *)self contentUnavailableConfigurationState];
  v6 = [v4 updatedConfigurationForState:v5];

  [(UIViewController *)self _applyContentUnavailableConfiguration:v6];
}

- (void)_applyContentUnavailableConfiguration:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 _contentUnavailableWrapperView];
    v5 = v4;
    if (v3 && !v4)
    {
      v5 = [[_UIContentUnavailableWrapperView alloc] initWithViewController:a1];
      [a1 set_contentUnavailableWrapperView:v5];
    }

    if (v5)
    {
      v6 = [(UIView *)v5 superview];
      v7 = [a1 view];

      if (v6 != v7)
      {
        v8 = [a1 view];
        v9 = v8;
        if (v8)
        {
          [(UIView *)v8 _backing_addPrivateSubview:v5 positioned:-1 relativeTo:0];
        }
      }
    }

    v10 = [(_UIContentUnavailableWrapperView *)v5 configuration];
    v11 = v3;
    v12 = v11;
    if (v10 != v11)
    {
      if (v3 && v10)
      {
        v13 = [v10 isEqual:v11];

        if (v13)
        {
          goto LABEL_21;
        }
      }

      else
      {
      }

      [(_UIContentUnavailableWrapperView *)v5 setConfiguration:v12];
      if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
      {
        objc_initWeak(&location, a1);
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __58__UIViewController__applyContentUnavailableConfiguration___block_invoke;
        v15[3] = &unk_1E71043D0;
        objc_copyWeak(&v18, &location);
        v16 = v5;
        v17 = v10;
        [UIView _addCompletionWithPosition:v15];

        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }

      else
      {
        v14 = [(_UIContentUnavailableWrapperView *)v5 configuration];

        if (!v14)
        {
          [(UIView *)v5 removeFromSuperview];
          [a1 set_contentUnavailableWrapperView:0];
        }
      }

      goto LABEL_21;
    }

LABEL_21:
  }
}

void __58__UIViewController__applyContentUnavailableConfiguration___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v6 = [WeakRetained _contentUnavailableWrapperView];
    v7 = *(a1 + 32);

    WeakRetained = v9;
    if (v6 == v7)
    {
      if (a3)
      {
        [*(a1 + 32) setConfiguration:*(a1 + 40)];
      }

      v8 = [*(a1 + 32) configuration];

      WeakRetained = v9;
      if (!v8)
      {
        [*(a1 + 32) removeFromSuperview];
        [v9 set_contentUnavailableWrapperView:0];
        WeakRetained = v9;
      }
    }
  }
}

- (void)_setNeedsStatusBarAppearanceUpdateWithAnimationParameters:(id)a3
{
  v4 = a3;
  v5 = _CurrentStatusBarAppearanceUpdateAnimationParameters;
  v6 = _CurrentStatusBarAppearanceUpdateAnimationParameters;
  _CurrentStatusBarAppearanceUpdateAnimationParameters = v4;
  v8 = v4;

  [(UIViewController *)self setNeedsStatusBarAppearanceUpdate];
  v7 = _CurrentStatusBarAppearanceUpdateAnimationParameters;
  _CurrentStatusBarAppearanceUpdateAnimationParameters = v5;
}

- (void)_setPresentedStatusBarViewController:(id)a3 shouldJoinAnimationsInProgress:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (self->_presentedStatusBarViewController != v7)
  {
    objc_storeStrong(&self->_presentedStatusBarViewController, a3);
    if (!v4 || (-[UIViewController _definiteTransitionCoordinator](self, "_definiteTransitionCoordinator"), v8 = objc_claimAutoreleasedReturnValue(), v10[4] = self, v11[0] = MEMORY[0x1E69E9820], v11[1] = 3221225472, v11[2] = __88__UIViewController__setPresentedStatusBarViewController_shouldJoinAnimationsInProgress___block_invoke, v11[3] = &unk_1E70F3B98, v11[4] = self, v10[0] = MEMORY[0x1E69E9820], v10[1] = 3221225472, v10[2] = __88__UIViewController__setPresentedStatusBarViewController_shouldJoinAnimationsInProgress___block_invoke_2, v10[3] = &unk_1E70F3B98, v9 = [v8 animateAlongsideTransition:v11 completion:v10], v8, (v9 & 1) == 0))
    {
      [(UIViewController *)self setNeedsStatusBarAppearanceUpdate];
      [(UIViewController *)self _setNeedsUserInterfaceAppearanceUpdate];
      [(UIViewController *)self setNeedsWhitePointAdaptivityStyleUpdate];
    }

    [(UIViewController *)self _invalidatePreferences:0 excluding:?];
  }
}

uint64_t __88__UIViewController__setPresentedStatusBarViewController_shouldJoinAnimationsInProgress___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    [*(result + 32) setNeedsStatusBarAppearanceUpdate];
    [v1 _setNeedsUserInterfaceAppearanceUpdate];

    return [v1 setNeedsWhitePointAdaptivityStyleUpdate];
  }

  return result;
}

uint64_t __88__UIViewController__setPresentedStatusBarViewController_shouldJoinAnimationsInProgress___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if (result)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      [v4 setNeedsStatusBarAppearanceUpdate];
      [v4 _setNeedsUserInterfaceAppearanceUpdate];

      return [v4 setNeedsWhitePointAdaptivityStyleUpdate];
    }
  }

  return result;
}

- (BOOL)sendClientToHostAction:(id)a3
{
  v4 = a3;
  v5 = [(UIViewController *)self _window];
  v6 = [v5 windowScene];
  v7 = [v6 _FBSScene];

  if (v7)
  {
    v8 = [MEMORY[0x1E695DFD8] setWithObject:v4];
    [v7 sendActions:v8];
    v9 = 1;
  }

  else
  {
    v10 = [v5 rootViewController];
    v8 = v10;
    if (v10 == self)
    {
      v9 = 0;
    }

    else
    {
      v9 = [(UIViewController *)v10 sendClientToHostAction:v4];
    }
  }

  return v9;
}

- (id)_effectivePointerLockViewController
{
  v3 = [(UIViewController *)self _window];
  v4 = [v3 _windowHostingScene];
  IsAvailableForScene = _UIPointerLockStateIsAvailableForScene(v4);

  if (IsAvailableForScene)
  {
    v6 = [(UIViewController *)self _presentedStatusBarViewController];
    v7 = [v6 _effectivePointerLockViewController];

    if (!v7)
    {
      v8 = [(UIViewController *)self childViewControllerForPointerLock];
      v7 = [v8 _effectivePointerLockViewController];

      if (!v7)
      {
        v7 = self;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __56__UIViewController_setNeedsUpdateOfPrefersPointerLocked__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v2 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [v5 pointerLockState];
    [v4 _preferredPointerLockStatusUpdated];
  }
}

void __67__UIViewController__setNeedsUpdateOfMultitaskingDragExclusionRects__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 _systemAppearanceManager];
  [v2 updateMultitaskingDragExclusionRects];
}

- (id)_effectiveViewControllerForMultitaskingDragExclusionRects
{
  v3 = [(UIViewController *)self _presentedStatusBarViewController];
  v4 = [v3 _effectiveViewControllerForMultitaskingDragExclusionRects];

  if (!v4)
  {
    v5 = [(UIViewController *)self _childViewControllerForMultitaskingDragExclusionRects];
    v4 = [v5 _effectiveViewControllerForMultitaskingDragExclusionRects];

    if (!v4)
    {
      v4 = self;
    }
  }

  return v4;
}

- (void)setNeedsUpdateOfPrefersInterfaceOrientationLocked
{
  v2 = [(UIViewController *)self _existingView];
  v6 = [v2 window];

  v3 = [v6 windowScene];
  v4 = [v3 _FBSScene];
  v5 = [v4 ui_orientationClientSceneComponent];

  [v5 evaluateInterfaceOrientationLockPreferenceIfNeeded];
}

- (void)_setSearchDisplayController:(int)a3 retain:
{
  v5 = a2;
  if (!a1)
  {
    goto LABEL_17;
  }

  obj = v5;
  WeakRetained = objc_loadWeakRetained((a1 + 216));

  v5 = obj;
  v7 = *(a1 + 376);
  if (WeakRetained == obj)
  {
    if ((v7 & 0x1000) != 0 || !a3)
    {
      if (v7 & 0x1000) == 0 || (a3)
      {
        goto LABEL_14;
      }

      v10 = *(a1 + 224);
      *(a1 + 224) = 0;
    }

    else
    {
      v11 = objc_loadWeakRetained((a1 + 216));
      v10 = *(a1 + 224);
      *(a1 + 224) = v11;
    }
  }

  else
  {
    if ((v7 & 0x1000) != 0)
    {
      v8 = *(a1 + 224);
      *(a1 + 224) = 0;
    }

    objc_storeWeak((a1 + 216), obj);
    v5 = obj;
    if (!a3)
    {
      goto LABEL_14;
    }

    v9 = obj;
    v10 = *(a1 + 224);
    *(a1 + 224) = v9;
  }

  v5 = obj;
LABEL_14:
  v12 = 4096;
  if (!a3)
  {
    v12 = 0;
  }

  *(a1 + 376) = *(a1 + 376) & 0xFFFFFFFFFFFFEFFFLL | v12;
LABEL_17:
}

- (BOOL)searchBarHidNavBar
{
  v2 = [(UIViewController *)self navigationController];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 searchBarHidNavBar];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSearchBarHidNavBar:(BOOL)a3
{
  v3 = a3;
  v4 = [(UIViewController *)self navigationController];
  if (v4)
  {
    v5 = v4;
    [v4 setSearchBarHidNavBar:v3];
    v4 = v5;
  }
}

- (BOOL)isMovingToParentViewController
{
  if ((*&self->_viewControllerFlags & 0x80000000100000) == 0 || (*&self->_viewControllerFlags & 0x1000000) == 0)
  {
    return 0;
  }

  if (!dyld_program_sdk_at_least())
  {
    return (*&self->_viewControllerFlags & 3u) - 1 < 2;
  }

  v6 = [(UIViewController *)self presentedViewController];

  if (!v6)
  {
    return (*&self->_viewControllerFlags & 3u) - 1 < 2;
  }

  result = 0;
  *&self->_viewControllerFlags &= ~0x1000000uLL;
  return result;
}

- (BOOL)isMovingFromParentViewController
{
  if ((*&self->_viewControllerFlags & 0x80000000100000) == 0 || (*&self->_viewControllerFlags & 0x1000000) == 0)
  {
    return 0;
  }

  if (!dyld_program_sdk_at_least())
  {
    return (*&self->_viewControllerFlags & 3u) - 3 < 0xFFFFFFFE;
  }

  v6 = [(UIViewController *)self presentedViewController];

  if (!v6)
  {
    return (*&self->_viewControllerFlags & 3u) - 3 < 0xFFFFFFFE;
  }

  result = 0;
  *&self->_viewControllerFlags &= ~0x1000000uLL;
  return result;
}

- (id)keyCommands
{
  interfaceBuilderKeyCommands = self->_interfaceBuilderKeyCommands;
  addedKeyCommands = self->_addedKeyCommands;
  if (interfaceBuilderKeyCommands)
  {
    if (addedKeyCommands)
    {
      v5 = [(NSArray *)interfaceBuilderKeyCommands arrayByAddingObjectsFromArray:?];
    }

    else
    {
      v5 = interfaceBuilderKeyCommands;
    }
  }

  else
  {
    v5 = addedKeyCommands;
  }

  return v5;
}

- (id)_keyboardShortcutMenuLeaves
{
  v3 = [(UIViewController *)self keyCommands];
  v4 = v3;
  interfaceBuilderKeyCommands = self->_interfaceBuilderKeyCommands;
  if (interfaceBuilderKeyCommands)
  {
    if (v3)
    {
      v6 = [(NSArray *)v3 lastObject];
      v7 = [(NSArray *)self->_interfaceBuilderKeyCommands lastObject];

      if (v6 != v7)
      {
        v8 = [(NSArray *)self->_interfaceBuilderKeyCommands arrayByAddingObjectsFromArray:v4];

        v4 = v8;
      }
    }

    else
    {
      v4 = interfaceBuilderKeyCommands;
    }
  }

  return v4;
}

- (int64_t)_horizontalSizeClass
{
  v2 = [(UIViewController *)self traitCollection];
  v3 = [v2 horizontalSizeClass];

  return v3;
}

- (int64_t)_verticalSizeClass
{
  v2 = [(UIViewController *)self traitCollection];
  v3 = [v2 verticalSizeClass];

  return v3;
}

- (BOOL)_isMemberOfViewControllerHierarchy:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    i = 1;
  }

  else
  {
    v5 = [(UIViewController *)self parentViewController];
    v6 = v5;
    for (i = v5 != 0; v6 != v4 && v6; i = v6 != 0)
    {
      v8 = v6;
      v6 = [(UIViewController *)v6 parentViewController];
    }
  }

  return i;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)__sizeClassPair
{
  v2 = [(UIViewController *)self traitCollection];
  v3 = [v2 horizontalSizeClass];
  v4 = [v2 verticalSizeClass];

  v5 = v3;
  v6 = v4;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- (BOOL)restoresFocusAfterTransition
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = (*&self->_viewControllerFlags >> 45) & 3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v11 = __48__UIViewController_restoresFocusAfterTransition__block_invoke;
  v12 = &unk_1E70F3CB0;
  v13 = self;
  v4 = v10;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v6 = 1;
    }

    else
    {
      if (os_variant_has_internal_diagnostics())
      {
        v9 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          *buf = 134217984;
          v15 = 3;
          _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Unexpectedly trying to update contentOverlayInsets directly from superview for UIViewController subclass that overrides -_setContentOverlayInsets. self = %@", buf, 0xCu);
        }
      }

      else
      {
        v7 = *(__UILogGetCategoryCachedImpl("Assert", &_UITriStateToBool___s_category_0) + 8);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v15 = 3;
          _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Found an invalid tri state of %tu. This is an indication of corrupted memory.", buf, 0xCu);
        }
      }

      v6 = v11(v4);
    }
  }

  else if (v3)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(UIViewController *)self _focusBehavior];
    v6 = [v5 viewControllerPresentationRestoresLastFocusedItem];
  }

  return v6;
}

uint64_t __48__UIViewController_restoresFocusAfterTransition__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _focusBehavior];
  v2 = [v1 viewControllerPresentationRestoresLastFocusedItem];

  return v2;
}

- (void)setRestoresFocusAfterTransition:(BOOL)restoresFocusAfterTransition
{
  v3 = 0x200000000000;
  if (restoresFocusAfterTransition)
  {
    v3 = 0x400000000000;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFF9FFFFFFFFFFFLL | v3;
}

- (BOOL)_canRestoreFocusAfterTransitionToItem:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:14635 description:{@"Invalid parameter not satisfying: %@", @"item"}];
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__UIViewController__canRestoreFocusAfterTransitionToItem___block_invoke;
  v9[3] = &unk_1E71043F8;
  v9[4] = self;
  v9[5] = &v14;
  v9[6] = &v10;
  _UIFocusEnvironmentEnumerateAncestorEnvironments(v5, v9);
  if (*(v15 + 24) == 1 && *(v11 + 24) == 1)
  {
    IsFocusedOrFocusable = _UIFocusItemIsFocusedOrFocusable(v5);
  }

  else
  {
    IsFocusedOrFocusable = 0;
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  return IsFocusedOrFocusable;
}

void __58__UIViewController__canRestoreFocusAfterTransitionToItem___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![v6 restoresFocusAfterTransition] || _IsKindOfUIView(v6) && ((objc_msgSend(v6, "isHidden") & 1) != 0 || (objc_msgSend(v6, "alpha"), v5 == 0.0)))
  {
    *(*(a1[5] + 8) + 24) = 0;
    *a3 = 1;
  }

  if (a1[4] == v6)
  {
    *(*(a1[6] + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (void)setFocusGroupIdentifier:(NSString *)focusGroupIdentifier
{
  v3 = 0x1000000000000;
  if (!focusGroupIdentifier)
  {
    v3 = 0x800000000000;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFE7FFFFFFFFFFFLL | v3;
  objc_setAssociatedObject(self, &FocusGroupIdentifierKey, focusGroupIdentifier, 1);
}

- (NSString)focusGroupIdentifier
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = (*&self->_viewControllerFlags >> 47) & 3;
  if (((*&self->_viewControllerFlags >> 47) & 3) > 1)
  {
    if (v3 == 2)
    {
      v4 = objc_getAssociatedObject(self, &FocusGroupIdentifierKey);
      goto LABEL_10;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v8 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v9 = (*&self->_viewControllerFlags >> 47) & 3;
        v10 = 67109120;
        v11 = v9;
        _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "Unknown case for _viewControllerFlags.hasFocusGroupIdentifier (%d).", &v10, 8u);
      }
    }

    else
    {
      v5 = *(__UILogGetCategoryCachedImpl("Assert", &focusGroupIdentifier___s_category) + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = (*&self->_viewControllerFlags >> 47) & 3;
        v10 = 67109120;
        v11 = v6;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Unknown case for _viewControllerFlags.hasFocusGroupIdentifier (%d).", &v10, 8u);
      }
    }
  }

  else if (!v3)
  {
    v4 = [(UIViewController *)self _systemDefaultFocusGroupIdentifier];
    goto LABEL_10;
  }

  v4 = 0;
LABEL_10:

  return v4;
}

- (void)setPreferredFocusedItem:(id)a3
{
  objc_storeWeak(&self->_preferredFocusedItem, a3);

  [(UIViewController *)self setNeedsFocusUpdate];
}

- (void)_didUpdateFocusInContext:(id)a3
{
  v10 = a3;
  v5 = [(UIViewController *)self view];
  v6 = [v10 nextFocusedItem];
  if (_UIFocusEnvironmentIsAncestorOfEnvironment(v5, v6))
  {
    v7 = [(UIViewController *)self _presentationController];

    if (!v7)
    {
      [(UIViewController *)self _rememberPresentingFocusedItem:0];
    }
  }

  else
  {
  }

  v8 = [_UIFocusAnimationCoordinatorManager animationCoordinatorForContext:v10];
  if (!v8)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:14870 description:@"Received call to _didUpdateFocusInContext: outside of a focus update."];
  }

  [(UIViewController *)self didUpdateFocusInContext:v10 withAnimationCoordinator:v8];
}

- (void)_setNeedsNonDeferredFocusUpdate
{
  v4 = [[_UIFocusUpdateRequest alloc] initWithEnvironment:self];
  [(_UIFocusUpdateRequest *)v4 setAllowsDeferral:0];
  v3 = [(UIViewController *)self _focusSystem];
  [v3 _requestFocusUpdate:v4];
}

- (void)_setPreferredTransition:(id)a3
{
  objc_storeStrong(&self->_spiTransition, a3);
  v5 = a3;
  v6 = [(_UIViewControllerTransition *)self->_spiTransition _apiTransition];

  [(UIViewController *)self setPreferredTransition:v6];
}

- (void)setPreferredTransition:(id)a3
{
  v5 = a3;
  preferredTransition = self->_preferredTransition;
  if (preferredTransition != v5)
  {
    v7 = v5;
    [(UIViewControllerTransition *)preferredTransition _wasAssignedToViewController:0];
    objc_storeStrong(&self->_preferredTransition, a3);
    [(UIViewControllerTransition *)self->_preferredTransition _wasAssignedToViewController:self];
    v5 = v7;
  }
}

- (UIView)_showcaseView
{
  NSClassFromString(&cfstr_Qlpreviewcontr.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = [(UIViewController *)self childViewControllers];
    v4 = [v3 firstObject];
    v5 = [v4 childViewControllers];
    v6 = [v5 firstObject];
    v7 = [v6 view];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_wrapsNavigationController:(id *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(UIViewController *)self _isNavigationController])
  {
    v5 = self;
  }

  else
  {
    v6 = [(UIViewController *)self childViewControllers];
    v5 = [v6 count];

    if (v5)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v7 = [(UIViewController *)self childViewControllers];
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = *v15;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v14 + 1) + 8 * i);
            if ([v11 _isNavigationController])
            {
              v5 = v11;
              LOBYTE(v8) = 1;
              goto LABEL_17;
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      v5 = 0;
LABEL_17:

      if (a3)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }
  }

  LOBYTE(v8) = 0;
  if (a3)
  {
LABEL_14:
    v12 = v5;
    *a3 = v5;
  }

LABEL_15:

  return v8;
}

- (BOOL)_wrapsSplitViewController:(id *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(UIViewController *)self _isSplitViewController])
  {
    v5 = self;
  }

  else
  {
    v6 = [(UIViewController *)self childViewControllers];
    v5 = [v6 count];

    if (v5)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v7 = [(UIViewController *)self childViewControllers];
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = *v15;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v14 + 1) + 8 * i);
            if ([v11 _isSplitViewController])
            {
              v5 = v11;
              LOBYTE(v8) = 1;
              goto LABEL_17;
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      v5 = 0;
LABEL_17:

      if (a3)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }
  }

  LOBYTE(v8) = 0;
  if (a3)
  {
LABEL_14:
    v12 = v5;
    *a3 = v5;
  }

LABEL_15:

  return v8;
}

- (CGRect)_embeddedViewFrame
{
  x = self->__embeddedViewFrame.origin.x;
  y = self->__embeddedViewFrame.origin.y;
  width = self->__embeddedViewFrame.size.width;
  height = self->__embeddedViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)_presentationSizeClassPair
{
  p_presentationSizeClassPair = &self->_presentationSizeClassPair;
  width = self->_presentationSizeClassPair.width;
  height = p_presentationSizeClassPair->height;
  result.var1 = height;
  result.var0 = width;
  return result;
}

- (BOOL)performsActionsWhilePresentingModally
{
  if (qword_1ED498678 != -1)
  {
    dispatch_once(&qword_1ED498678, &__block_literal_global_2302);
  }

  return byte_1ED498598;
}

void __76__UIViewController_UIPerformsActions__performsActionsWhilePresentingModally__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 infoDictionary];
  v4 = [v1 objectForKey:@"UIViewControllerPerformsActionsWhilePresentingModally"];

  v2 = v4;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v4 BOOLValue];
    }

    else
    {
      v3 = 1;
    }

    v2 = v4;
  }

  else
  {
    v3 = 1;
  }

  byte_1ED498598 = v3;
}

- (void)_uip_setTabElement:(id)a3
{
  v16 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_tab);

  if (WeakRetained)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:15069 description:@"Cannot use UITabElement SPI if the view controller already has a tab owner."];
  }

  tabElement = self->_tabElement;
  v8 = v16;
  if (tabElement != v16)
  {
    v9 = tabElement;
    if (v16)
    {
      v10 = [(_UITabElement *)v16 _viewController];

      if (v10 != self)
      {
        v11 = [(_UITabElement *)v16 _viewController];
        [v11 _uip_setTabElement:0];
      }

      [(_UITabElement *)v16 _setViewController:self];
    }

    objc_storeStrong(&self->_tabElement, a3);
    v12 = [(UITab *)v16 _overrideTabBarItem];

    if (v12)
    {
      v13 = [(UITab *)v16 _overrideTabBarItem];
      [(UIViewController *)self setTabBarItem:v13];
    }

    v14 = [(UIViewController *)self parentViewController];
    [v14 updateTabBarItemForViewController:self];

    if (v9)
    {
      [(_UITabElement *)v9 _setViewController:0];
    }

    v8 = v16;
  }
}

- (id)_fallbackTabElementCreateIfNeeded:(BOOL)a3
{
  v3 = a3;
  v5 = objc_getAssociatedObject(self, &_UIViewControllerFallbackTabElement);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = !v3;
  }

  if (!v6)
  {
    v5 = [[_UITabBarItemBridgedElement alloc] initWithViewController:self];
    objc_setAssociatedObject(self, &_UIViewControllerFallbackTabElement, v5, 1);
  }

  return v5;
}

- (void)_attachTab:(id *)a1
{
  obj = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 5);

    v4 = obj;
    if (obj && WeakRetained)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:sel__attachTab_ object:a1 file:@"UIViewController.m" lineNumber:15131 description:@"Cannot reuse the same view controller for multiple UITab instances"];

      v4 = obj;
    }

    objc_storeWeak(a1 + 5, v4);
    v5 = [obj _overrideTabBarItem];

    if (v5)
    {
      v6 = [obj _overrideTabBarItem];
      [a1 setTabBarItem:v6];
    }
  }
}

- (void)setTabBarItem:(UITabBarItem *)tabBarItem
{
  v5 = tabBarItem;
  if (self->_tabBarItem != v5)
  {
    v12 = v5;
    objc_storeStrong(&self->_tabBarItem, tabBarItem);
    if (dyld_program_sdk_at_least() && ([(UIViewController *)self tab], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      v7 = [(UIViewController *)self tab];
    }

    else
    {
      v8 = [(UIViewController *)self _uip_tabElement];

      if (!v8)
      {
        v11 = [(UIViewController *)self _fallbackTabElementCreateIfNeeded:0];
        v9 = v11;
        if (v11)
        {
          [v11 _reloadTabBarItem];
        }

        goto LABEL_8;
      }

      v7 = [(UIViewController *)self _uip_tabElement];
    }

    v9 = v7;
    [v7 _updateLinkedTabBarItem];
LABEL_8:

    v10 = [(UIViewController *)self parentViewController];
    [v10 updateTabBarItemForViewController:self];

    v5 = v12;
  }
}

- (BOOL)_tvTabBarShouldAutohide
{
  v3 = [(UIViewController *)self tabBarController];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [(UIViewController *)self tabBarController];
  v6 = [v5 tabBar];

  if (!v6)
  {
    return 0;
  }

  v7 = [(UIViewController *)self tabBarController];
  v8 = [v7 tabBar];
  v9 = [v8 _displayStyle] == 0;

  return v9;
}

- (id)_tabBarControllerEnforcingClass:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  v6 = [(UIViewController *)self tabBarController];
  if (!v6)
  {
    dyld_program_sdk_at_least();
    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (dyld_program_sdk_at_least())
  {
    if (isKindOfClass)
    {
      goto LABEL_7;
    }

    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:15325 description:{@"-tabBarController must return an instance of a UITabBarController subclass. %@ returned %@, which is not a kind of UITabBarController.", self, v6}];
  }

  else
  {
    if (isKindOfClass)
    {
      goto LABEL_7;
    }

    v10 = *(__UILogGetCategoryCachedImpl("Assert", &_tabBarControllerEnforcingClass____s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v12 = self;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "-tabBarController must return an instance of a UITabBarController subclass. %@ returned %@, which is not a kind of UITabBarController.", buf, 0x16u);
    }
  }

  if (v3)
  {

    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (id)_splitViewControllerEnforcingClass:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  v6 = [(UIViewController *)self splitViewController];
  if (!v6)
  {
    dyld_program_sdk_at_least();
    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (dyld_program_sdk_at_least())
  {
    if (isKindOfClass)
    {
      goto LABEL_7;
    }

    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:15337 description:{@"-splitViewController must return an instance of a UISplitViewController subclass. %@ returned %@, which is not a kind of UISplitViewController.", self, v6}];
  }

  else
  {
    if (isKindOfClass)
    {
      goto LABEL_7;
    }

    v10 = *(__UILogGetCategoryCachedImpl("Assert", &_splitViewControllerEnforcingClass____s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v12 = self;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "-splitViewController must return an instance of a UISplitViewController subclass. %@ returned %@, which is not a kind of UISplitViewController.", buf, 0x16u);
    }
  }

  if (v3)
  {

    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  if (((((*&self->_viewControllerFlags & 4) == 0) ^ editing) & 1) == 0)
  {
    v5 = 4;
    if (!editing)
    {
      v5 = 0;
    }

    *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFFFFFFFFFBLL | v5;
    v6 = _UISolariumEnabled();
    viewControllerFlags = self->_viewControllerFlags;
    if (v6)
    {
      [(UIBarButtonItem *)self->_editButtonItem _setSystemItem:~(viewControllerFlags >> 1) & 2];
      editButtonItem = self->_editButtonItem;

      [(UIBarButtonItem *)editButtonItem _updateView];
    }

    else
    {
      v9 = [UIBarButtonItem alloc];
      if ((viewControllerFlags & 4) != 0)
      {
        v10 = _UINSLocalizedStringWithDefaultValue(@"Done", @"Done");
        v11 = v9;
        v12 = v10;
        v13 = 2;
      }

      else
      {
        v10 = _UINSLocalizedStringWithDefaultValue(@"Edit", @"Edit");
        v11 = v9;
        v12 = v10;
        v13 = 0;
      }

      v14 = [(UIBarButtonItem *)v11 initWithTitle:v12 style:v13 target:0 action:0];

      [(UIBarButtonItem *)self->_editButtonItem _setItemVariation:v14];
    }
  }
}

- (void)_toggleEditing:(id)a3
{
  v4 = [(UIViewController *)self isEditing]^ 1;

  [(UIViewController *)self setEditing:v4 animated:1];
}

- (void)setHidesBottomBarWhenPushed:(BOOL)hidesBottomBarWhenPushed
{
  v3 = 16;
  if (!hidesBottomBarWhenPushed)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFFFFFFFFEFLL | v3;
}

- (void)_setSuppressesBottomBar:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFFEFFFFFFFLL | v3;
}

- (double)_topBarHeight
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [(UIViewController *)self view];
  v4 = [v3 subviews];

  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  v6 = 0.0;
  if (v5)
  {
    v7 = v5;
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 frame];
          v12 = v11;
          [(UIViewController *)self _statusBarHeightForCurrentInterfaceOrientation];
          if (v12 == v13)
          {
            [v10 frame];
            v15 = v14;
            [(UIViewController *)self _statusBarHeightForCurrentInterfaceOrientation];
            v6 = v16 + v15;
            goto LABEL_12;
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v6;
}

- (void)setToolbarItems:(NSArray *)toolbarItems
{
  v4 = toolbarItems;
  [(UIViewController *)self setToolbarItems:v4 animated:_UIBarsAnimatingSystemChanges()];
}

- (void)setToolbarItems:(NSArray *)toolbarItems animated:(BOOL)animated
{
  v4 = animated;
  v7 = toolbarItems;
  if (self->_toolbarItems != v7)
  {
    v9 = v7;
    objc_storeStrong(&self->_toolbarItems, toolbarItems);
    [(UIViewController *)self _invalidateRelevantToolbarItems];
    v8 = [(UIViewController *)self parentViewController];
    [v8 _updateToolbarItemsFromViewController:self animated:v4];

    v7 = v9;
  }
}

- (void)_updateToolbarItemsFromViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UIViewController *)self parentViewController];
  [v7 _updateToolbarItemsFromViewController:v6 animated:v4];
}

- (void)transitionFromViewController:(UIViewController *)fromViewController toViewController:(UIViewController *)toViewController duration:(NSTimeInterval)duration options:(UIViewAnimationOptions)options animations:(void *)animations completion:(void *)completion
{
  v36 = fromViewController;
  v14 = toViewController;
  v15 = completion;
  v16 = animations;
  v17 = [(UIViewController *)self _forwardAppearanceMethods];
  v18 = 0x1E695D000;
  v19 = MEMORY[0x1E695D940];
  if (!v17)
  {
    v20 = MEMORY[0x1E696AEC0];
    v21 = objc_opt_self();
    v22 = NSStringFromClass(v21);
    v23 = NSStringFromSelector(a2);
    v24 = [v20 stringWithFormat:@"-[%@ %@]", v22, v23];

    v19 = MEMORY[0x1E695D940];
    v18 = 0x1E695D000uLL;

    [MEMORY[0x1E695DF30] raise:*v19 format:{@"Parent view controller is using legacy containment in call to %@", v24}];
  }

  v25 = [(UIViewController *)v14 parentViewController];
  v26 = v25;
  if (v25 == self)
  {
    v27 = [(UIViewController *)v36 parentViewController];

    if (v27 == self)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v28 = MEMORY[0x1E696AEC0];
  v29 = objc_opt_self();
  v30 = NSStringFromClass(v29);
  v31 = NSStringFromSelector(a2);
  v32 = [v28 stringWithFormat:@"-[%@ %@]", v30, v31];

  [*(v18 + 3888) raise:*v19 format:{@"Children view controllers %@ and %@ must have a common parent view controller when calling %@", v36, v14, v32}];
LABEL_7:
  v33 = [(UIViewController *)v36 view];
  v34 = [(UIViewController *)v14 view];
  [(UIView *)duration _transitionFromView:v33 toView:v34 duration:options options:v16 animations:v15 completion:?];
}

- (BOOL)_hackFor11408026_beginAppearanceTransition:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  explicitAppearanceTransitionLevel = self->_explicitAppearanceTransitionLevel;
  self->_explicitAppearanceTransitionLevel = explicitAppearanceTransitionLevel + 1;
  if (explicitAppearanceTransitionLevel >= 1)
  {
    if ((((*(&self->_viewControllerFlags + 3) & 2) == 0) ^ a3))
    {
      return 0;
    }

    self->_explicitAppearanceTransitionLevel = 1;
  }

  viewControllerFlags = self->_viewControllerFlags;
  if ((viewControllerFlags & 0x4000000) != 0)
  {
    return 0;
  }

  v9 = 0x2000000;
  if (!a3)
  {
    v9 = 0;
  }

  *&self->_viewControllerFlags = viewControllerFlags & 0xFFFFFFFFF9FFFFFFLL | v9;
  [(UIViewController *)self setInAnimatedVCTransition:a4];
  if (v5)
  {
    [(UIViewController *)self __viewWillAppear:v4];
  }

  else
  {
    [(UIViewController *)self __viewWillDisappear:v4];
  }

  return 1;
}

- (void)beginAppearanceTransition:(BOOL)isAppearing animated:(BOOL)animated
{
  if ((*(&self->_viewControllerFlags + 3) & 4) == 0)
  {
    v4 = animated;
    v5 = isAppearing;
    explicitAppearanceTransitionLevel = self->_explicitAppearanceTransitionLevel;
    self->_explicitAppearanceTransitionLevel = explicitAppearanceTransitionLevel + 1;
    viewControllerFlags = self->_viewControllerFlags;
    if (explicitAppearanceTransitionLevel >= 1)
    {
      if ((((*&self->_viewControllerFlags & 0x2000000) == 0) ^ isAppearing))
      {
        return;
      }

      self->_explicitAppearanceTransitionLevel = 1;
      viewControllerFlags = self->_viewControllerFlags;
    }

    v9 = 0x2000000;
    if (!isAppearing)
    {
      v9 = 0;
    }

    *&self->_viewControllerFlags = viewControllerFlags & 0xFFFFFFFFFDFFFFFFLL | v9;
    [(UIViewController *)self setInAnimatedVCTransition:animated];
    if (v5)
    {

      [(UIViewController *)self __viewWillAppear:v4];
    }

    else
    {

      [(UIViewController *)self __viewWillDisappear:v4];
    }
  }
}

- (void)cancelBeginAppearanceTransition
{
  v3 = [(UIViewController *)self isInAnimatedVCTransition];
  self->_explicitAppearanceTransitionLevel = 0;
  *&self->_viewControllerFlags &= ~0x2000000uLL;
  [(UIViewController *)self setAfterAppearanceBlock:0];
  [(UIViewController *)self setInAnimatedVCTransition:0];
  if ((*&self->_viewControllerFlags & 3) == 3)
  {
    [(UIViewController *)self __viewWillAppear:v3];

    [(UIViewController *)self __viewDidAppear:v3];
  }

  else if ((*&self->_viewControllerFlags & 3) == 1)
  {
    [(UIViewController *)self __viewWillDisappear:v3];

    [(UIViewController *)self __viewDidDisappear:v3];
  }
}

- (void)setOverrideTraitCollection:(UITraitCollection *)collection forChildViewController:(UIViewController *)childViewController
{
  v15 = collection;
  v6 = childViewController;
  if (v6)
  {
    v7 = objc_alloc_init(_UIViewControllerNullAnimationTransitionCoordinator);
    v8 = [(UIViewController *)self _existingView];
    [(_UIViewControllerNullAnimationTransitionCoordinator *)v7 setContainerView:v8];

    if ((_UIViewControllersInheritTraitsFromViewHierarchy() & 1) == 0)
    {
      v9 = objc_opt_class();
      v10 = [(UIViewController *)self traitCollection];
      v11 = [v9 _traitCollectionWithParentTraitCollection:v10 overrideTraitCollection:v15];

      [(UIViewController *)v6 _parent:self willTransitionToTraitCollection:v11 withTransitionCoordinator:v7];
    }

    overrideTraitCollectionsForChildren = self->_overrideTraitCollectionsForChildren;
    if (!overrideTraitCollectionsForChildren)
    {
      v13 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
      v14 = self->_overrideTraitCollectionsForChildren;
      self->_overrideTraitCollectionsForChildren = v13;

      overrideTraitCollectionsForChildren = self->_overrideTraitCollectionsForChildren;
    }

    if (v15)
    {
      [(NSMapTable *)overrideTraitCollectionsForChildren setObject:v15 forKey:v6];
    }

    else
    {
      [(NSMapTable *)overrideTraitCollectionsForChildren removeObjectForKey:v6];
    }

    [(UIViewController *)v6 _applyCompatibilityTraitOverridesForOverrideTraitCollection:v15];
    [(UIViewController *)v6 _updateTraitsIfNecessary];
    [(_UIViewControllerNullAnimationTransitionCoordinator *)v7 _runAlongsideAnimations];
    [(_UIViewControllerNullAnimationTransitionCoordinator *)v7 _runAlongsideCompletionsAfterCommit];
  }
}

- (void)willMoveToParentViewController:(UIViewController *)parent
{
  if (![(UIViewController *)self appearanceTransitionsAreDisabled])
  {
    *&self->_viewControllerFlags |= 0x1000000uLL;
  }

  v4 = [(UIViewController *)self _existingView];
  [v4 _setViewDelegateContentOverlayInsetsAreClean:0];
}

- (void)didMoveToParentViewController:(UIViewController *)parent
{
  v7 = parent;
  if (v7)
  {
    v4 = [(UIViewController *)self preferredTransition];
    [v4 _didMoveToParentViewController:v7];

    if ([(UIViewController *)self _appearState]== 1)
    {
LABEL_3:
      v5 = *&self->_viewControllerFlags | 0x8000000;
      goto LABEL_6;
    }
  }

  else
  {
    [(UIResponder *)self _clearOverrideNextResponder];
    v6 = [(UIViewController *)self preferredTransition];
    [v6 _didMoveToParentViewController:0];

    if ([(UIViewController *)self _appearState]== 3)
    {
      goto LABEL_3;
    }
  }

  v5 = *&self->_viewControllerFlags & 0xFFFFFFFFF6FFFFFFLL;
LABEL_6:
  *&self->_viewControllerFlags = v5;
}

- (void)_presentingViewControllerWillChange:(id)a3
{
  viewControllerFlags = self->_viewControllerFlags;
  v4 = viewControllerFlags & 0xFFFFFFFFFF3FFFFFLL | 0x400000;
  v5 = viewControllerFlags | 0xC00000;
  if (!a3)
  {
    v5 = v4;
  }

  *&self->_viewControllerFlags = v5;
}

- (void)setStoryboardIdentifier:(id)a3
{
  v5 = a3;
  if (self->_storyboardIdentifier != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_storyboardIdentifier, a3);
    v5 = v6;
  }
}

- (id)restorationClass
{
  v2 = [(UIViewController *)self _restorationClassName];
  v3 = v2;
  if (v2)
  {
    v4 = NSClassFromString(v2);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)setRestorationClass:(id)restorationClass
{
  v4 = NSStringFromClass(restorationClass);
  objc_setAssociatedObject(self, &kViewControllerRestorationClassKey, v4, 1);
}

- (void)encodeRestorableStateWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v18.receiver = self;
  v18.super_class = UIViewController;
  [(UIResponder *)&v18 encodeRestorableStateWithCoder:v4];
  v5 = [(UIViewController *)self childModalViewController];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 _restorationIdentifierPath];
    v8 = [v6 _existingPresentationControllerImmediate:1 effective:1];
    v9 = v8;
    if (v7 && v8 && [v8 _shouldSavePresentedViewControllerForStateRestoration])
    {
      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SPresentedView.isa, "[UIViewController(StateRestoration) encodeRestorableStateWithCoder:]", v7, v6);
      }

      v10 = [v6 presentationController];
      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SPresentationc.isa, "[UIViewController(StateRestoration) encodeRestorableStateWithCoder:]", v10);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([v10 delegate], v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v11, (isKindOfClass))
      {
        if (_UIStateRestorationDebugLogEnabled())
        {
          NSLog(&cfstr_SPresentationI.isa, "[UIViewController(StateRestoration) encodeRestorableStateWithCoder:]");
        }
      }

      else
      {
        [(NSCoder *)v4 encodeObject:v6 forKey:@"kPresentedViewControllerKey"];
      }
    }

    else
    {
      v13 = [v6 _existingView];
      v14 = [v13 window];

      if (v14)
      {
        if (_UIStateRestorationDebugLogEnabled())
        {
          NSLog(&cfstr_SPresentedView_0.isa, "[UIViewController(StateRestoration) encodeRestorableStateWithCoder:]", v6);
        }

        [UIApp ignoreSnapshotOnNextApplicationLaunch];
      }
    }
  }

  v15 = [(UIViewController *)self storyboard];
  if (v15)
  {
    v16 = [[_UIStoryboardProxy alloc] initWithStoryboard:v15];
    [(NSCoder *)v4 encodeObject:v16 forKey:@"UIStateRestorationViewControllerStoryboard"];
    v17 = [(UIViewController *)self storyboardIdentifier];
    if (v17)
    {
      [(NSCoder *)v4 encodeObject:v17 forKey:@"UIStateRestorationViewControllerStoryboardIdentifier"];
    }
  }
}

- (void)_presentViewControllerForStateRestoration:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_popoverController);
  if (WeakRetained)
  {
    v8 = 1;
  }

  else
  {
    v8 = [v6 _isDelayingPresentation];
  }

  v9 = v8 | v4;

  if (v9)
  {
    [(UIViewController *)self presentViewController:v6 animated:1 completion:0];
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __89__UIViewController_StateRestoration___presentViewControllerForStateRestoration_animated___block_invoke;
    v10[3] = &unk_1E70F35B8;
    v10[4] = self;
    v11 = v6;
    [UIViewController _performWithoutDeferringTransitions:v10];
  }
}

void __89__UIViewController_StateRestoration___presentViewControllerForStateRestoration_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) presentViewController:*(a1 + 40) animated:0 completion:0];
  v4 = [*(a1 + 32) _window];
  v2 = [v4 windowScene];
  v3 = [v2 statusBarManager];
  [v3 updateStatusBarAppearance];
}

- (id)_decodeRestorableStateAndReturnContinuationWithCoder:(id)a3
{
  v4 = a3;
  [(UIResponder *)self decodeRestorableStateWithCoder:v4];
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kPresentedViewControllerKey"];

  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SDecodedPresen.isa, "[UIViewController(StateRestoration) _decodeRestorableStateAndReturnContinuationWithCoder:]", v5);
  }

  if (v5)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __91__UIViewController_StateRestoration___decodeRestorableStateAndReturnContinuationWithCoder___block_invoke;
    aBlock[3] = &unk_1E70F35B8;
    v10 = v5;
    v11 = self;
    v6 = _Block_copy(aBlock);
    v7 = _Block_copy(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __91__UIViewController_StateRestoration___decodeRestorableStateAndReturnContinuationWithCoder___block_invoke(uint64_t a1)
{
  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SCompletionFor.isa, "[UIViewController(StateRestoration) _decodeRestorableStateAndReturnContinuationWithCoder:]_block_invoke", *(a1 + 32));
  }

  v2 = [*(a1 + 40) _existingView];
  if (v2 && (v3 = v2, [*(a1 + 40) _existingView], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "window"), v5 = objc_claimAutoreleasedReturnValue(), v4, v3, v5))
  {
    v6 = [v5 isHidden];
    v7 = [v5 traitCollection];
    v8 = [UIApp _sceneInterfaceOrientationFromWindow:v5];
    if ([v7 horizontalSizeClass] == 2 && (v8 - 5) >= 0xFFFFFFFFFFFFFFFELL)
    {
      if ([*(a1 + 32) modalPresentationStyle] != 3 && !((objc_msgSend(*(a1 + 32), "modalPresentationStyle") == 6) | v6 & 1))
      {
        goto LABEL_16;
      }
    }

    else if ((v6 & 1) == 0)
    {
LABEL_16:
      if ([*(a1 + 32) modalPresentationStyle] == 3 || objc_msgSend(*(a1 + 32), "modalPresentationStyle") == 6)
      {
        [v5 setNeedsLayout];
        [v5 layoutIfNeeded];
      }

      [*(a1 + 40) _presentViewControllerForStateRestoration:*(a1 + 32) animated:0];
      goto LABEL_14;
    }
  }

  else
  {
    v7 = [0 traitCollection];
    [v7 horizontalSizeClass];
    v5 = 0;
  }

  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SWarningStateR.isa, "[UIViewController(StateRestoration) _decodeRestorableStateAndReturnContinuationWithCoder:]_block_invoke", *(a1 + 40), *(a1 + 32));
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__UIViewController_StateRestoration___decodeRestorableStateAndReturnContinuationWithCoder___block_invoke_2;
  block[3] = &unk_1E70F35B8;
  v10 = *(a1 + 32);
  v9 = v10.i64[0];
  v12 = vextq_s8(v10, v10, 8uLL);
  dispatch_async(MEMORY[0x1E69E96A0], block);

LABEL_14:
}

void __91__UIViewController_StateRestoration___decodeRestorableStateAndReturnContinuationWithCoder___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) transitionCoordinator];

  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 transitionCoordinator];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __91__UIViewController_StateRestoration___decodeRestorableStateAndReturnContinuationWithCoder___block_invoke_3;
    v7[3] = &unk_1E70F4990;
    v5 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v5;
    [v4 animateAlongsideTransition:0 completion:v7];
  }

  else
  {
    v6 = *(a1 + 40);

    [v3 _presentViewControllerForStateRestoration:v6 animated:1];
  }
}

- (void)setUserActivity:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = UIViewController;
  [(UIResponder *)&v14 setUserActivity:v4];
  if (v4)
  {
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __58__UIViewController_ActivityContinuation__setUserActivity___block_invoke;
    v11 = &unk_1E70F4990;
    v12 = self;
    v13 = v4;
    v5 = _Block_copy(&v8);
    v6 = [(UIViewController *)self transitionCoordinator:v8];

    if (v6)
    {
      v7 = [(UIViewController *)self transitionCoordinator];
      [v7 animateAlongsideTransition:0 completion:v5];
    }

    else
    {
      v5[2](v5, 0);
    }
  }
}

void __58__UIViewController_ActivityContinuation__setUserActivity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _existingView];
  v3 = [v2 window];

  if (v3)
  {
    if (_UIStateRestorationDebugLogEnabled())
    {
      v4 = *(a1 + 40);
      v5 = [v4 title];
      NSLog(&cfstr_SCallingBecome.isa, "[UIViewController(ActivityContinuation) setUserActivity:]_block_invoke", v4, v5);
    }

    v6 = *(a1 + 40);

    [v6 becomeCurrent];
  }
}

- (void)_unembedContentViewSettingDelegate:(id)a3
{
  v4 = a3;
  [(UIViewController *)self _setEmbeddingView:0];
  [(UIViewController *)self _setEmbeddedDelegate:v4];

  v5 = [(UIViewController *)self _embeddedView];

  if (v5)
  {
    v16 = [(UIViewController *)self view];
    [v16 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(UIViewController *)self _embeddedView];
    [v14 setFrame:{v7, v9, v11, v13}];

    v15 = [(UIViewController *)self _embeddedView];
    [(UIViewController *)self setView:v15];

    [(UIViewController *)self _setEmbeddedView:0];
  }
}

- (void)_embedContentViewInView:(id)a3 withContentFrame:(CGRect)a4 delegate:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v22 = a3;
  v11 = a5;
  [(UIViewController *)self _setEmbeddedDelegate:v11];
  [(UIViewController *)self _setEmbeddedViewFrame:x, y, width, height];
  if ([(UIViewController *)self isViewLoaded])
  {
    if (v22)
    {
      v12 = [(UIViewController *)self _embeddedView];
      if (v12)
      {
        [(UIViewController *)self _embeddedView];
      }

      else
      {
        [(UIViewController *)self view];
      }
      v13 = ;

      v14 = [(UIViewController *)self view];
      [v14 frame];
      [v22 setFrame:?];

      v15 = [(UIViewController *)self view];
      v16 = [v15 superview];
      v17 = [(UIViewController *)self view];
      [v16 insertSubview:v22 belowSubview:v17];

      [v22 addSubview:v13];
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      if (CGRectIsEmpty(v24))
      {
        [v22 frame];
        x = v18;
        y = v19;
        width = v20;
        height = v21;
      }

      [v13 setFrame:{x, y, width, height}];
      [(UIViewController *)self _setEmbeddedView:v13];
      [(UIViewController *)self setView:v22];
      [(UIViewController *)self _setEmbeddingView:0];
    }

    else
    {
      [(UIViewController *)self _unembedContentViewSettingDelegate:v11];
    }
  }

  else
  {
    [(UIViewController *)self _setEmbeddedView:0];
    [(UIViewController *)self _setEmbeddingView:v22];
  }
}

- (void)_setOverrideTransitioningDelegate:(id)a3
{
  v6 = a3;
  v5 = [(UIViewController *)self _overrideTransitioningDelegate];

  if (v5 != v6)
  {
    objc_storeStrong(&self->_overrideTransitioningDelegate, a3);
    [(UIViewController *)self _setTemporaryPresentationController:0];
  }
}

- (void)setTransitioningDelegate:(id)transitioningDelegate
{
  obj = transitioningDelegate;
  dyld_program_sdk_at_least();
  objc_storeWeak(&self->_transitioningDelegate, obj);
}

- (int64_t)_rotatingFromInterfaceOrientation
{
  v2 = [(UIViewController *)self _existingView];
  v3 = [v2 window];

  if (v3)
  {
    v4 = [v3 _fromWindowOrientation];
    if (v4 == [v3 _toWindowOrientation])
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_rotatingToInterfaceOrientation
{
  v2 = [(UIViewController *)self _existingView];
  v3 = [v2 window];

  if (v3)
  {
    v4 = [v3 _fromWindowOrientation];
    v5 = [v3 _toWindowOrientation];
    if (v4 == v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_window:(id)a3 viewWillTransitionToSize:(CGSize)a4 withTransitionCoordinator:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    [v10 targetTransform];
  }

  else
  {
    memset(&v44, 0, sizeof(v44));
  }

  if (CGAffineTransformIsIdentity(&v44))
  {
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __104__UIViewController_AdaptiveSizing_Internal___window_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v40[3] = &unk_1E70F9780;
    v40[4] = self;
    v42 = width;
    v43 = height;
    v41 = v11;
    [UIViewController _performWithoutDeferringTransitions:v40];
  }

  else
  {
    [v11 transitionDuration];
    v13 = v12;
    v14 = [v9 _toWindowOrientation];
    v15 = [v9 _fromWindowOrientation];
    v16 = [[UIClientRotationContext alloc] initWithClient:self toOrientation:v14 duration:v9 andWindow:v13];
    v17 = [(UIViewController *)self view];
    [v17 frame];
    v19 = v18;
    v21 = v20;

    [(UIViewController *)self window:v9 willRotateToInterfaceOrientation:v14 duration:v13 newSize:width, height];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __104__UIViewController_AdaptiveSizing_Internal___window_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
    v33[3] = &unk_1E7104448;
    v33[4] = self;
    v34 = v9;
    v36 = v14;
    v37 = v13;
    v38 = width;
    v39 = height;
    v35 = v16;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __104__UIViewController_AdaptiveSizing_Internal___window_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3;
    v27[3] = &unk_1E7104470;
    v27[4] = self;
    v29 = v35;
    v30 = v15;
    v31 = v19;
    v32 = v21;
    v28 = v34;
    v22 = v35;
    [v11 animateAlongsideTransition:v33 completion:v27];
    [(UIViewController *)self setInWillRotateCallback:1];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __104__UIViewController_AdaptiveSizing_Internal___window_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_4;
    v23[3] = &unk_1E70F9780;
    v23[4] = self;
    v25 = width;
    v26 = height;
    v24 = v11;
    [UIViewController _performWithoutDeferringTransitions:v23];
    [(UIClientRotationContext *)v22 setupRotationOrderingKeyboardInAfterRotation:0];
    [(UIViewController *)self setInWillRotateCallback:0];
  }

  if (([objc_opt_class() _shouldForwardViewWillTransitionToSize] & 1) == 0)
  {
    [(UIViewController *)self _sendViewWillTransitionToSizeToPresentationController:v11 withTransitionCoordinator:width, height];
  }
}

uint64_t __104__UIViewController_AdaptiveSizing_Internal___window_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) window:*(a1 + 40) willAnimateRotationToInterfaceOrientation:*(a1 + 56) duration:*(a1 + 64) newSize:{*(a1 + 72), *(a1 + 80)}];
  v2 = *(a1 + 48);

  return [v2 rotateSnapshots];
}

uint64_t __104__UIViewController_AdaptiveSizing_Internal___window_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) window:*(a1 + 40) didRotateFromInterfaceOrientation:*(a1 + 56) oldSize:{*(a1 + 64), *(a1 + 72)}];
  v2 = *(a1 + 48);

  return [v2 finishFullRotateUsingOnePartAnimation:1];
}

- (void)addKeyCommand:(UIKeyCommand *)keyCommand
{
  v10[1] = *MEMORY[0x1E69E9840];
  addedKeyCommands = self->_addedKeyCommands;
  if (addedKeyCommands)
  {
    v6 = [(NSArray *)addedKeyCommands arrayByAddingObject:keyCommand];
  }

  else
  {
    v10[0] = keyCommand;
    v7 = MEMORY[0x1E695DEC8];
    v8 = keyCommand;
    v6 = [v7 arrayWithObjects:v10 count:1];
  }

  v9 = self->_addedKeyCommands;
  self->_addedKeyCommands = v6;
}

- (void)removeKeyCommand:(UIKeyCommand *)keyCommand
{
  v10 = keyCommand;
  addedKeyCommands = self->_addedKeyCommands;
  if (addedKeyCommands)
  {
    v5 = [(NSArray *)addedKeyCommands count];
    v6 = [(NSArray *)self->_addedKeyCommands ui_arrayByRemovingLastObjectEqualTo:v10];
    if ([(NSArray *)v6 count]< v5)
    {
      v7 = self->_addedKeyCommands;
      self->_addedKeyCommands = v6;
      goto LABEL_8;
    }
  }

  interfaceBuilderKeyCommands = self->_interfaceBuilderKeyCommands;
  if (!interfaceBuilderKeyCommands)
  {
    goto LABEL_9;
  }

  v9 = [(NSArray *)interfaceBuilderKeyCommands count];
  v7 = [(NSArray *)self->_interfaceBuilderKeyCommands ui_arrayByRemovingLastObjectEqualTo:v10];
  if ([v7 count] < v9)
  {
    objc_storeStrong(&self->_interfaceBuilderKeyCommands, v7);
  }

LABEL_8:

LABEL_9:
}

- (void)_showAccessibilityHUDItem:(id)a3
{
  v28 = a3;
  accessibilityHUD = self->_accessibilityHUD;
  if (accessibilityHUD)
  {
    v5 = [(UIAccessibilityHUDView *)accessibilityHUD item];
    v6 = [v28 isEqual:v5];

    v7 = v28;
    if (v6)
    {
      goto LABEL_10;
    }

    [(UIAccessibilityHUDView *)self->_accessibilityHUD setItem:v28];
    v8 = +[UIAccessibilityHUDPositionManager sharedInstance];
    v9 = self->_accessibilityHUD;
    v10 = [(UIViewController *)self view];
    [v8 adjustViewPropertiesForHUD:v9 withReferenceView:v10];
  }

  else
  {
    v11 = [[UIAccessibilityHUDView alloc] initWithHUDItem:v28];
    v12 = self->_accessibilityHUD;
    self->_accessibilityHUD = v11;

    v13 = [(UIViewController *)self view];
    v8 = [v13 window];

    v14 = [(UIViewController *)self view];
    v15 = [v14 window];
    v16 = [v15 _isHostedInAnotherProcess];

    if ((v16 & 1) == 0)
    {
      v17 = +[UIAccessibilityHUDWindow sharedWindow];

      if (!v17)
      {
        v18 = [(UIViewController *)self view];
        v19 = [v18 window];
        v20 = [v19 windowScene];
        [UIAccessibilityHUDWindow createSharedWindowWithScene:v20];
      }

      v21 = +[UIAccessibilityHUDWindow sharedWindow];

      v8 = v21;
    }

    [v8 setHidden:0];
    [v8 addSubview:self->_accessibilityHUD];
    v22 = +[UIAccessibilityHUDPositionManager sharedInstance];
    v23 = self->_accessibilityHUD;
    v24 = [(UIViewController *)self view];
    [v22 adjustViewPropertiesForHUD:v23 withReferenceView:v24];

    v25 = +[UIAccessibilityHUDPositionManager sharedInstance];
    v26 = self->_accessibilityHUD;
    v27 = [(UIViewController *)self view];
    [v25 beginManagingPositionOfHUD:v26 withReferenceView:v27];

    [(UIAccessibilityHUDView *)self->_accessibilityHUD showAnimated:1 completion:0];
  }

  v7 = v28;
LABEL_10:
}

- (void)_dismissAccessibilityHUD
{
  v3 = [(UIView *)self->_accessibilityHUD window];
  v4 = self->_accessibilityHUD;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __62__UIViewController_AccessibilityHUD___dismissAccessibilityHUD__block_invoke;
  v11 = &unk_1E70F35B8;
  v12 = v4;
  v13 = v3;
  v5 = v3;
  v6 = v4;
  [(UIAccessibilityHUDView *)v6 dismissAnimated:1 completion:&v8];
  accessibilityHUD = self->_accessibilityHUD;
  self->_accessibilityHUD = 0;

  [UIAccessibilityHUDWindow removeSharedWindow:v8];
}

void __62__UIViewController_AccessibilityHUD___dismissAccessibilityHUD__block_invoke(uint64_t a1)
{
  v2 = +[UIAccessibilityHUDPositionManager sharedInstance];
  [v2 stopManagingPositionOfHUD:*(a1 + 32)];

  [*(a1 + 32) removeFromSuperview];
  v3 = *(a1 + 40);
  v4 = +[UIAccessibilityHUDWindow sharedWindow];

  if (v3 == v4)
  {
    v5 = *(a1 + 40);

    [v5 setHidden:1];
  }
}

- (id)_orientationDebugDescriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x1E698E680];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  [v6 setActiveMultilinePrefix:v5];

  v7 = [v6 activeMultilinePrefix];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __97__UIViewController_OrientationDebugging___orientationDebugDescriptionBuilderWithMultilinePrefix___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v8 = v6;
  v12 = v8;
  v13 = self;
  [v8 appendBodySectionWithName:0 multilinePrefix:v7 block:v11];

  v9 = v8;
  return v8;
}

id __97__UIViewController_OrientationDebugging___orientationDebugDescriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"_ignoreAppSupportedOrientations") ifEqualTo:{@"ignoresAppSupportedOrientations", 1}];
  v3 = [*(a1 + 32) ui_appendInterfaceOrientationMask:objc_msgSend(*(a1 + 40) withName:{"supportedInterfaceOrientations"), @"providedSupportedOrientations"}];
  v4 = [*(a1 + 32) ui_appendInterfaceOrientationMask:objc_msgSend(*(a1 + 40) withName:{"__supportedInterfaceOrientations"), @"resolvedSupportedOrientations"}];
  IsBeingPresentedOrDismissesFullscreen = _UIViewControllerIsBeingPresentedOrDismissesFullscreen(*(a1 + 40));
  result = [*(a1 + 32) appendBool:IsBeingPresentedOrDismissesFullscreen withName:@"canPreferOrientation"];
  if (IsBeingPresentedOrDismissesFullscreen)
  {
    return [*(a1 + 32) ui_appendInterfaceOrientation:objc_msgSend(*(a1 + 40) withName:"preferredInterfaceOrientationForPresentation") skipIfUnknown:{@"preferred", 1}];
  }

  return result;
}

- (id)_orientationDebugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(UIViewController *)self _orientationDebugDescriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (void)beginRequestWithExtensionContext:(id)a3
{
  v4 = [a3 _UUID];
  [(UIViewController *)self _setExtensionContextUUID:v4];
}

- (id)_safeWindowForAutorotationBelowWindow:(id)a3
{
  v5 = [(UIViewController *)self _windowForAutorotationBelowWindow:a3];
  v6 = [v5 __autorotationSanityCheckObjectFromSource:self selector:a2];

  return v6;
}

- (id)_safeViewControllerForRotationWithDismissCheck:(BOOL)a3
{
  v5 = [(UIViewController *)self _viewControllerForRotationWithDismissCheck:a3];
  v6 = [v5 __autorotationSanityCheckObjectFromSource:self selector:a2];

  return v6;
}

- (id)_safePrimaryViewControllerForAutorotationBelowWindow:(id)a3
{
  v5 = [(UIViewController *)self _primaryViewControllerForAutorotationBelowWindow:a3];
  v6 = [v5 __autorotationSanityCheckObjectFromSource:self selector:a2];

  return v6;
}

- (id)_safeViewControllerForSupportedInterfaceOrientationsWithDismissCheck:(BOOL)a3
{
  v5 = [(UIViewController *)self _viewControllerForSupportedInterfaceOrientationsWithDismissCheck:a3];
  v6 = [v5 __autorotationSanityCheckObjectFromSource:self selector:a2];

  return v6;
}

- (id)_timelinesForDateInterval:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(UIViewController *)self performSelector:sel_puic_timelinesForDateInterval_ withObject:v4];
  }

  else
  {
    v6 = [MEMORY[0x1E698E508] emptyTimelineWithIdentifier:@"UIAlwaysOnFallbackTimelineIdentifier"];
    v8[0] = v6;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  return v5;
}

- (void)_timelinesForDateInterval:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = [(UIViewController *)self _timelinesForDateInterval:a3];
  (*(a4 + 2))(v7, v8);
}

- (void)_updateWithFrameSpecifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  [(UIViewController *)self _updateWithFrameSpecifier:a3];
  v6[2]();
}

- (void)_updateWithFrameSpecifier:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(UIViewController *)self performSelector:sel_puic_updateWithFrameSpecifier_ withObject:v4];
  }
}

- (void)_willEnterAlwaysOn
{
  v2 = [(UIViewController *)self _childViewControllersForAlwaysOnTimelines];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_315];
}

- (void)_didEnterAlwaysOn
{
  v2 = [(UIViewController *)self _childViewControllersForAlwaysOnTimelines];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_45_1];
}

- (void)_didExitAlwaysOn
{
  v2 = [(UIViewController *)self _childViewControllersForAlwaysOnTimelines];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_49_3];
}

- (id)_nextViewControllerForUnwindSegueSearch
{
  v3 = [(UIViewController *)self _sourceViewControllerIfPresentedViaPopoverSegue];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(UIViewController *)self _modalSourceViewController];
    v7 = v6;
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v8 = [(UIViewController *)self parentModalViewController];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = [(UIViewController *)self parentViewController];
      }

      v5 = v10;
    }
  }

  return v5;
}

- (id)_hostedWindowScene
{
  v2 = [(UIViewController *)self view];
  v3 = [v2 _window];
  v4 = [v3 _windowHostingScene];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_supportedInterfaceOrientationsDidChange
{
  v2 = [(UIViewController *)self _rootAncestorViewController];
  [v2 setNeedsUpdateOfSupportedInterfaceOrientations];
}

- (id)_remoteViewControllerProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(UIViewController *)self _remoteViewControllerProxy];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (int)_hostProcessIdentifier
{
  v2 = objc_getAssociatedObject(self, &__hostProcessIdentifierKey);
  v3 = [v2 intValue];

  return v3;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)_hostAuditToken
{
  *retstr->var0 = 0u;
  *&retstr->var0[4] = 0u;
  v5 = objc_getAssociatedObject(self, &__hostAuditTokenKey);
  if (!strcmp([v5 objCType], "{?=[8I]}"))
  {
    [v5 getValue:retstr];
  }

  return result;
}

- (id)invalidate
{
  v2 = [_UIAsyncInvocation invocationWithBlock:&__block_literal_global_670];
  v3 = [v2 invoke];

  return v3;
}

- (void)_setHostProcessIdentifier:(int)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*&a3];
  objc_setAssociatedObject(self, &__hostProcessIdentifierKey, v4, 0x301);
}

- (void)_setHostAuditToken:(id *)a3
{
  v4 = [MEMORY[0x1E696B098] valueWithBytes:a3 objCType:"{?=[8I]}"];
  objc_setAssociatedObject(self, &__hostAuditTokenKey, v4, 0x301);
}

+ (id)XPCInterface
{
  if (qword_1ED4A29A8 != -1)
  {
    dispatch_once(&qword_1ED4A29A8, &__block_literal_global_26_7);
  }

  [qword_1ED4A29A0 lock];
  v3 = objc_getAssociatedObject(a1, &_MergedGlobals_1369);
  if (!v3)
  {
    v4 = [a1 _exportedInterface];
    v5 = [a1 _remoteViewControllerInterface];
    v3 = [_UIViewServiceViewControllerDeputyXPCInterface interfaceWithExportedInterface:v4 remoteViewControllerInterface:v5];

    objc_setAssociatedObject(a1, &_MergedGlobals_1369, v3, 0x301);
  }

  [qword_1ED4A29A0 unlock];

  return v3;
}

void __54__UIViewController_ViewService_Internal__XPCInterface__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD10]);
  v1 = qword_1ED4A29A0;
  qword_1ED4A29A0 = v0;
}

@end