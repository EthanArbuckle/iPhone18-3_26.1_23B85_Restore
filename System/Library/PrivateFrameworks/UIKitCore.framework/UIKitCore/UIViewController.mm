@interface UIViewController
+ (BOOL)_allViewControllersInArray:(id)array allowAutorotationToInterfaceOrientation:(int64_t)orientation predicate:(id)predicate;
+ (BOOL)_isViewSizeFullScreen:(id)screen inWindow:(id)window ignoreInWindowCheck:(BOOL)check;
+ (BOOL)_shouldAnimateTransitions;
+ (BOOL)_shouldUseLegacyUnwindDestinationSearch;
+ (BOOL)doesOverridePreferredInterfaceOrientationForPresentation;
+ (BOOL)doesOverrideViewControllerMethod:(SEL)method;
+ (CGSize)defaultFormSheetSize;
+ (CGSize)defaultFormSheetSizeForScreenSize:(CGSize)size;
+ (double)_boundsWidthWithMinimumHorizontalContentMarginForView:(id)view preservingContentWidth:(double)width;
+ (double)_horizontalContentMarginForView:(id)view;
+ (double)_horizontalContentMarginForView:(id)view ofWidth:(double)width;
+ (double)_horizontalContentMarginForViewWidth:(double)width safeAreaInsets:(UIEdgeInsets)insets traitCollection:(id)collection;
+ (double)_slimHorizontalContentMarginForTraitCollection:(id)collection;
+ (id)XPCInterface;
+ (id)_allDescriptions;
+ (id)_printHierarchy;
+ (id)_safeAreaInsetsTrace;
+ (id)_traitCollectionWithParentTraitCollection:(id)collection overrideTraitCollection:(id)traitCollection;
+ (id)_viewControllerForFullScreenPresentationFromView:(id)view;
+ (id)_whitelistOfSubclassableViewControllersMarkedSafe;
+ (int)_keyboardDirectionForTransition:(int)transition;
+ (int64_t)_keyboardAnimationTypeForTransition:(int)transition;
+ (void)_performWithoutDeferringTransitionsAllowingAnimation:(void *)animation actions:;
+ (void)_scheduleTransition:(id)transition;
+ (void)_sendPrepareForTapGesture:(uint64_t)gesture;
+ (void)_traverseViewControllerHierarchyWithDelayedRelease:(id)release;
+ (void)_withDisabledAppearanceTransitions:(BOOL)transitions forDescendantsOf:(id)of visibleOnly:(BOOL)only perform:(id)perform;
+ (void)attemptRotationToDeviceOrientation;
+ (void)initialize;
+ (void)removeViewControllerForView:(id)view;
- ($0AC6E346AE4835514AAA8AC86D8F4844)__sizeClassPair;
- ($0AC6E346AE4835514AAA8AC86D8F4844)_presentationSizeClassPair;
- ($115C4C562B26FF47E01F9F4EA65B5887)_hostAuditToken;
- (BOOL)__knownPresentationWithoutPresentationControllerInstance;
- (BOOL)__withSupportedInterfaceOrientation:(void *)orientation apply:;
- (BOOL)_allowsSkippingLayout;
- (BOOL)_ancestorViewControllerIsInPopover;
- (BOOL)_canBecomeFirstResponder;
- (BOOL)_canPerformUnwindSegueAction:(SEL)action fromViewController:(id)controller sender:(id)sender;
- (BOOL)_canReloadView;
- (BOOL)_canRestoreFocusAfterTransitionToItem:(id)item;
- (BOOL)_canShowWhileLocked;
- (BOOL)_containsFirstResponder;
- (BOOL)_forwardAppearanceMethods;
- (BOOL)_forwardRotationMethods;
- (BOOL)_freezeLayoutForOrientationChangeOnDismissal;
- (BOOL)_hackFor11408026_beginAppearanceTransition:(BOOL)transition animated:(BOOL)animated;
- (BOOL)_hasDeepestActionResponder;
- (BOOL)_hasDeepestPresentedActionResponderOrBlock:(id)block;
- (BOOL)_hasPreferredInterfaceOrientationForPresentation;
- (BOOL)_isDelayingPresentation;
- (BOOL)_isDetachedFromWindowRootViewControllerHierarchy;
- (BOOL)_isDimmingBackground;
- (BOOL)_isInContextOfPresentationControllerOfClass:(Class)class effective:(BOOL)effective;
- (BOOL)_isInPopoverPresentation;
- (BOOL)_isInSheetPresentation;
- (BOOL)_isInViewControllerThatHandlesKeyboardAvoidance;
- (BOOL)_isInterfaceAutorotationDisabled;
- (BOOL)_isMemberOfViewControllerHierarchy:(id)hierarchy;
- (BOOL)_isPresentedFormSheet;
- (BOOL)_isSupportedInterfaceOrientation:(int64_t)orientation;
- (BOOL)_isViewControllerInWindowHierarchy;
- (BOOL)_navControllerIsLayingOutTopViewController;
- (BOOL)_shouldAttemptToPreserveInputViewsForResponder:(id)responder;
- (BOOL)_shouldChildViewControllerUseFullScreenLayout:(id)layout;
- (BOOL)_shouldIgnoreChildFocusRegions;
- (BOOL)_shouldOverlayTabBar;
- (BOOL)_shouldTrackAppearStateChange;
- (BOOL)_shouldUseFullScreenLayoutInWindow:(id)window parentViewController:(id)controller;
- (BOOL)_shouldUseOnePartRotation;
- (BOOL)_tvTabBarShouldAutohide;
- (BOOL)_useSheetRotation;
- (BOOL)_viewControllerIgnoresClippedGlyphPathFrame;
- (BOOL)_viewControllerUnderlapsStatusBar;
- (BOOL)_willPreemptRunningPresentationTransition;
- (BOOL)_willPreemptRunningTransitionForDismissal;
- (BOOL)_wrapsNavigationController:(id *)controller;
- (BOOL)_wrapsSplitViewController:(id *)controller;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
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
- (BOOL)sendClientToHostAction:(id)action;
- (BOOL)shouldAutorotate;
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation;
- (BOOL)shouldWindowUseOnePartInterfaceRotationAnimation:(id)animation;
- (CGPoint)_centerForOrientation:(int64_t)orientation;
- (CGRect)_boundsForOrientation:(int64_t)orientation;
- (CGRect)_defaultInitialViewFrame;
- (CGRect)_embeddedViewFrame;
- (CGRect)_viewFrameInWindowForContentOverlayInsetsCalculation;
- (CGSize)_formSheetSizeForWindowWithSize:(CGSize)size screenSize:(CGSize)screenSize;
- (CGSize)_resolvedPreferredContentSize;
- (CGSize)_systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
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
- (SEL)_customSelectorToCreateChildViewControllerAtIndex:(int64_t)index;
- (UIBarButtonItem)editButtonItem;
- (UIContentUnavailableConfigurationState)_bridgedContentUnavailableConfigurationState;
- (UIEdgeInsets)_avoidanceInsets;
- (UIEdgeInsets)_contentOverlayInsets;
- (UIEdgeInsets)_customBasePresentationInsetsForView:(id)view;
- (UIEdgeInsets)_devicePeripheryInsets;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute;
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
- (id)_adaptedPresentationControllerForTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
- (id)_ancestorViewController;
- (id)_ancestorViewControllerOfClass:(uint64_t)class allowModalParent:;
- (id)_appearanceContainer;
- (id)_childViewControllerForAlwaysOnTimelines;
- (id)_childViewControllersForAlwaysOnTimelines;
- (id)_compatibilityTraitOverridesFromParentViewControllerCreateIfNecessary:(uint64_t)necessary;
- (id)_completionBlock;
- (id)_containingTabBarController;
- (id)_contentOrObservableScrollViewForEdge:(unint64_t)edge;
- (id)_contentOrObservableScrollViewInContainerForEdge:(void *)edge;
- (id)_contentScrollView;
- (id)_contentUnavailableConfiguration;
- (id)_contentUnavailableConfigurationState;
- (id)_customAnimatorForDismissedController:(void *)controller;
- (id)_customAnimatorForPresentedController:(void *)controller presentingController:(void *)presentingController sourceController:(void *)sourceController originalPresentationController:;
- (id)_customInteractionControllerForDismissal:(void *)dismissal;
- (id)_customInteractionControllerForPresentation:(void *)presentation;
- (id)_customPresentationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)_decodeRestorableStateAndReturnContinuationWithCoder:(id)coder;
- (id)_deepestActionResponder;
- (id)_deepestPresentedActionResponderOrBlock:(id)block;
- (id)_defaultAnimationController;
- (id)_defaultContentScrollViewForEdge:(unint64_t)edge;
- (id)_definiteTransitionCoordinator;
- (id)_description;
- (id)_descriptionForPrintingHierarchyIncludingInsets:(uint64_t)insets;
- (id)_descriptionWithChildren:(int)children;
- (id)_destinationForUnwindingFromSource:(id)source visitedViewControllers:(id)controllers;
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
- (id)_existingPresentationControllerImmediate:(char)immediate effective:(int)effective includesRoot:(char)root prefersRoot:;
- (id)_fallbackTabElementCreateIfNeeded:(BOOL)needed;
- (id)_firstResponder;
- (id)_hostedWindowScene;
- (id)_hostingNavigationBar;
- (id)_hostingSplitViewControllerForTabBar;
- (id)_independentContainedScrollViewIntermediateToDescendantViewController:(id)controller;
- (id)_keyboardSceneDelegate;
- (id)_keyboardShortcutMenuLeaves;
- (id)_modalPresenter:(void *)presenter;
- (id)_modalPresenterForPresentationController:(uint64_t)controller;
- (id)_modalPreservedFirstResponder;
- (id)_nearestFullScreenAncestorViewController;
- (id)_nextResponderUsingTargetActionStrategyFromChildViewController:(id)controller didTraverseToParentViewController:(BOOL *)viewController;
- (id)_nextResponderUsingTraversalStrategy:(unint64_t)strategy;
- (id)_nextViewController;
- (id)_nextViewControllerForUnwindSegueSearch;
- (id)_nonModalAncestorViewControllerStopAtIsPresentationContext:(BOOL)context;
- (id)_nonPresentationAppearanceContainer;
- (id)_orientationDebugDescriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)_orientationDebugDescriptionWithMultilinePrefix:(id)prefix;
- (id)_overridingPreferredFocusEnvironment;
- (id)_parentContentContainer;
- (id)_parentTraitEnvironment;
- (id)_parentViewController;
- (id)_popoverController;
- (id)_presentationControllerClassName;
- (id)_previousRootViewController;
- (id)_primaryViewControllerForAutorotationBelowWindow:(void *)window;
- (id)_registerForTraitTokenChanges:(id)changes withHandler:(id)handler;
- (id)_registerForTraitTokenChanges:(id)changes withTarget:(id)target action:(SEL)action;
- (id)_remoteViewControllerProxyWithErrorHandler:(id)handler;
- (id)_resolveContentScrollViewForEdge:(uint64_t)edge;
- (id)_retrievePresentingFocusedItemOrRemoveIfNotFocusable;
- (id)_rootAncestorViewControllerInWindow:(void *)window;
- (id)_safePrimaryViewControllerForAutorotationBelowWindow:(id)window;
- (id)_safeViewControllerForRotationWithDismissCheck:(BOOL)check;
- (id)_safeViewControllerForSupportedInterfaceOrientationsWithDismissCheck:(BOOL)check;
- (id)_safeWindowForAutorotationBelowWindow:(id)window;
- (id)_screen;
- (id)_shim_contentScrollView;
- (id)_splitViewControllerEnforcingClass:(BOOL)class;
- (id)_tabBarControllerEnforcingClass:(BOOL)class;
- (id)_timelinesForDateInterval:(id)interval;
- (id)_traitCollectionByApplyingLocalOverridesToTraitCollection:(void *)collection;
- (id)_traitCollectionByApplyingOverridesFromParentViewControllerToTraitCollection:(void *)collection;
- (id)_traitCollectionForChildEnvironment:(id)environment;
- (id)_transitionCoordinator;
- (id)_userActionDescription;
- (id)_viewControllerForDismissal;
- (id)_viewControllerForObservableScrollView;
- (id)_viewControllerForRotation;
- (id)_viewControllerForRotationWithDismissCheck:(void *)check;
- (id)_viewControllerForSupportedInterfaceOrientations;
- (id)_viewControllerForSupportedInterfaceOrientationsWithDismissCheck:(BOOL)check;
- (id)_viewControllersForRotationCallbacks;
- (id)_viewControllersWhoseOrientationsMustCoincide;
- (id)_viewForContentInPopover;
- (id)_viewsWithDisabledInteractionGivenTransitionContext:(id)context;
- (id)_visibleView;
- (id)_visualStyleOfContainingAlertController;
- (id)_windowForAutorotationBelowWindow:(void *)window;
- (id)_zoomTransitionController;
- (id)afterAppearanceBlock;
- (id)bottomLayoutGuide;
- (id)invalidate;
- (id)keyCommands;
- (id)nextResponder;
- (id)previewMenuItems;
- (id)registerForPreviewingWithDelegate:(id)delegate sourceView:(UIView *)sourceView;
- (id)registerForTraitChanges:(id)changes withAction:(SEL)action;
- (id)registerForTraitChanges:(id)changes withHandler:(id)handler;
- (id)registerForTraitChanges:(id)changes withTarget:(id)target action:(SEL)action;
- (id)restorationClass;
- (id)rotatingFooterViewForWindow:(id)window;
- (id)rotatingHeaderViewForWindow:(id)window;
- (id)safeAreaLayoutGuide;
- (id)storyboardIdentifier;
- (id)topLayoutGuide;
- (id)transitioningDelegate;
- (id)viewControllerForRotation;
- (int)_hostProcessIdentifier;
- (int)_preferredStatusBarVisibility;
- (int64_t)_horizontalSizeClass;
- (int64_t)_lastKnownInterfaceOrientation;
- (int64_t)_preferredInterfaceOrientationGivenCurrentOrientation:(int64_t)orientation;
- (int64_t)_preferredWhitePointAdaptivityStyle;
- (int64_t)_rotatingFromInterfaceOrientation;
- (int64_t)_rotatingToInterfaceOrientation;
- (int64_t)_verticalSizeClass;
- (uint64_t)__updateContentOverlayInsetsWithOurRect:(void *)rect inBoundsOfAncestorViewController:(CGFloat)x viaImmediateChildOfAncestor:(CGFloat)y;
- (uint64_t)_defaultSupportedInterfaceOrientations;
- (uint64_t)_defaultViewControllerStatusBarVisibilityBehavior;
- (uint64_t)_didSelfOrAncestorBeginAppearanceTransition;
- (uint64_t)_doesSelfOrAncestorPassPredicate:(uint64_t)predicate;
- (uint64_t)_endAppearanceTransition:(uint64_t)transition;
- (uint64_t)_getViewControllerToInheritInsetsFrom:(id *)from viaImmediateChild:;
- (uint64_t)_isDeallocInitiated;
- (uint64_t)_isPresentingInWindow:(void *)window;
- (uint64_t)_needsAutomaticContentUnavailableConfigurationUpdates;
- (uint64_t)_preferredInterfaceOrientationForPresentationInWindow:(uint64_t)window fromInterfaceOrientation:;
- (uint64_t)_presentedViewControllerStateIsValidForSourcingSupportedOrientations:(void *)orientations;
- (uint64_t)_shouldRequestViewControllerForObservableScrollViewFromPresentedViewController;
- (uint64_t)_shouldSkipContentOverlayInsetsUpdate;
- (uint64_t)_transitionForModalTransitionStyle:(int)style appearing:;
- (uint64_t)_tryBecomeRootViewControllerInWindow:(uint64_t)window;
- (uint64_t)_useViewBasedTopAndBottomLayoutGuides;
- (unint64_t)__supportedInterfaceOrientations;
- (void)__setParentViewController:(uint64_t)controller;
- (void)__viewDidAppear:(BOOL)appear;
- (void)__viewDidDisappear:(void *)disappear;
- (void)__viewIsAppearing:(char)appearing skipWindowCheck:;
- (void)__viewWillAppear:(BOOL)appear;
- (void)__viewWillDisappear:(void *)disappear;
- (void)__willChangeToIdiom:(int64_t)idiom onScreen:(id)screen;
- (void)_addChildModalViewController:(id *)controller;
- (void)_addChildViewController:(id)controller;
- (void)_addChildViewController:(id)controller performHierarchyCheck:(BOOL)check notifyWillMove:(BOOL)move;
- (void)_addCurlUpTapGestureRecognizerWithRevealedHeight:(void *)height;
- (void)_addDescendantsToArray:(uint64_t)array visibleOnly:;
- (void)_applyCompatibilityTraitOverridesForOverrideTraitCollection:(uint64_t)collection;
- (void)_applyContentUnavailableConfiguration:(void *)configuration;
- (void)_attachTab:(id *)tab;
- (void)_beginAppearanceTransitionToViewController:(id)controller animated:(BOOL)animated;
- (void)_beginDelayingPresentation:(double)presentation cancellationHandler:(id)handler;
- (void)_beginDisablingInterfaceAutorotation;
- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)state;
- (void)_cancelDelayedPresentation:(BOOL)presentation;
- (void)_childTraitTransformDidChange;
- (void)_childViewControllerWillBePresentedFromViewControllerDelayingPresentationWithPresenter:(id)presenter;
- (void)_cleanupPresentation;
- (void)_clearCachedPopoverContentSize;
- (void)_clearRecordedContentScrollView;
- (void)_collectExistingTraitCollectionsForTraitTracking:(id)tracking;
- (void)_didCancelDismissTransition:(id)transition;
- (void)_didCancelPresentTransition:(id)transition;
- (void)_didEndCounterRotationForPresentation;
- (void)_didEnterAlwaysOn;
- (void)_didExitAlwaysOn;
- (void)_didFinishDismissTransition;
- (void)_didFinishPresentTransition;
- (void)_didResignContentViewControllerOfPopover:(id)popover;
- (void)_didRotateFromInterfaceOrientation;
- (void)_didRotateFromInterfaceOrientation:(int64_t)orientation forwardToChildControllers:(BOOL)controllers skipSelf:(BOOL)self;
- (void)_didUpdateFocusInContext:(id)context;
- (void)_dismissAccessibilityHUD;
- (void)_dismissViewControllerWithTransition:(int)transition from:(id)from completion:(id)completion;
- (void)_doCommonSetup;
- (void)_eagerlyUpdateSafeAreaInsetsToViewDescendant:(id)descendant;
- (void)_embedContentViewInView:(id)view withContentFrame:(CGRect)frame delegate:(id)delegate;
- (void)_endAppearanceTransitionToViewController:(id)controller;
- (void)_endDelayingPresentation;
- (void)_endDisablingInterfaceAutorotation;
- (void)_enumerateAncestorViewControllersUntilStop:(BOOL *)stop usingBlock:(id)block;
- (void)_enumerateVisibleChildControllers:(void *)controllers includePresentedChildren:(int)children usingBlock:(void *)block;
- (void)_executeAfterAppearanceBlock;
- (void)_executeContentUnavailableConfigurationUpdate;
- (void)_executeViewIsAppearingBlock:(uint64_t)block;
- (void)_handleTapToDismissModalCurl:(id)curl;
- (void)_inferLayoutGuidesFromSubviews;
- (void)_intelligenceCollectContentIn:(CGRect)in collector:(id)collector;
- (void)_intelligenceCollectSubelementsIn:(CGRect)in using:(id)using transformToRoot:(id)root;
- (void)_invalidateChildContentOverlayInsetsWithOldInsets:(__n128)insets;
- (void)_invalidatePreferences:(__int16)preferences excluding:;
- (void)_invalidateRelevantToolbarItems;
- (void)_isWaitingForDelayedPresentation;
- (void)_keyboardWillHide:(id)hide;
- (void)_keyboardWillShow:(id)show;
- (void)_legacyModalPresentTransitionDidComplete;
- (void)_objc_initiateDealloc;
- (void)_observeScrollView:(id)view temporaryCoordinatingReplacementDidChange:(id)change;
- (void)_parent:(id)_parent willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
- (void)_performAtViewIsAppearing:(uint64_t)appearing;
- (void)_performContentScrollViewUpdatesNotifyingObservers;
- (void)_performContentUnavailableConfigurationStateUpdate;
- (void)_performCoordinatedPresentOrDismiss:(uint64_t)dismiss animated:;
- (void)_performPropertiesUpdate;
- (void)_populateArchivedChildViewControllers:(id)controllers;
- (void)_populateInitialTraitCollection;
- (void)_prepareForNavigationTransition:(BOOL)transition;
- (void)_prepareForTapGesture:(id)gesture;
- (void)_prepareForWindowDealloc;
- (void)_presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)_presentViewController:(id)controller modalSourceViewController:(id)viewController presentationController:(id)presentationController animationController:(id)animationController interactionController:(id)interactionController handoffData:(id)data completion:(id)completion;
- (void)_presentViewController:(id)controller withAnimationController:(id)animationController completion:(id)completion;
- (void)_presentViewControllerForStateRestoration:(id)restoration animated:(BOOL)animated;
- (void)_presentingViewControllerWillChange:(id)change;
- (void)_primitiveSetNavigationControllerContentInsetAdjustment:(UIEdgeInsets)adjustment;
- (void)_recordContentScrollView;
- (void)_recordTraitUsage:(__int128 *)usage trackedStateDiff:(unint64_t)diff insideMethod:(const char *)method withInvalidationAction:;
- (void)_recursiveUpdateContentOverlayInsetsFromParentIfNecessary;
- (void)_registerAuxiliaryChildEnvironmentForTraitInvalidations:(id)invalidations;
- (void)_removeChildModalViewController:(id *)controller;
- (void)_removeChildViewController:(id)controller;
- (void)_replaceViewControllerInPresentationHierarchy:(id)hierarchy;
- (void)_restoreInputViewsForPresentation;
- (void)_sceneSettingsSafeAreaInsetsDidChangeForWindow:(id)window;
- (void)_sendViewDidLoadWithAppearanceProxyObjectTaggingEnabled;
- (void)_sendViewWillTransitionToSizeToPresentationController:(double)controller withTransitionCoordinator:(double)coordinator;
- (void)_setAllowsAutorotation:(BOOL)autorotation;
- (void)_setAvoidanceInsetsNeedsUpdate;
- (void)_setContentMargin:(double)margin;
- (void)_setContentOverlayInsets:(UIEdgeInsets)insets andLeftMargin:(double)margin rightMargin:(double)rightMargin;
- (void)_setCustomChildViewControllerSelectorsNames:(id)names;
- (void)_setExistingNavigationItem:(id)item;
- (void)_setExistingTabBarItem:(id)item;
- (void)_setFreezeLayoutForOrientationChangeOnDismissal:(BOOL)dismissal;
- (void)_setHostAuditToken:(id *)token;
- (void)_setHostProcessIdentifier:(int)identifier;
- (void)_setIgnoresWrapperViewForContentOverlayInsets:(BOOL)insets;
- (void)_setInCustomTransition:(BOOL)transition;
- (void)_setInterfaceOrientationOnModalRecursively:(void *)recursively;
- (void)_setInternalContentScrollView:(id)view;
- (void)_setMayForwardPresentationsToPresentedViewController:(BOOL)controller;
- (void)_setModalPresentationStyle:(int64_t)style;
- (void)_setNavigationControllerContentInsetAdjustment:(UIEdgeInsets)adjustment;
- (void)_setNavigationControllerContentOffsetAdjustment:(double)adjustment;
- (void)_setNeedsNonDeferredFocusUpdate;
- (void)_setNeedsStatusBarAppearanceUpdateWithAnimationParameters:(id)parameters;
- (void)_setNeedsUpdateContentUnavailableConfiguration;
- (void)_setNeedsUpdateOfMultitaskingDragExclusionRects;
- (void)_setOverrideHorizontalSizeClass:(int64_t)class;
- (void)_setOverrideTransitioningDelegate:(id)delegate;
- (void)_setOverrideUserInterfaceRenderingMode:(int64_t)mode;
- (void)_setPreferredTransition:(id)transition;
- (void)_setPresentationController:(id)controller;
- (void)_setPresentedStatusBarViewController:(id)controller shouldJoinAnimationsInProgress:(BOOL)progress;
- (void)_setPresentedUserInterfaceStyleViewController:(id)controller;
- (void)_setSearchDisplayController:(int)controller retain:;
- (void)_setSecurityModeForViewsLayer;
- (void)_setShouldFreezeUnderlapsStatusBar:(BOOL)bar;
- (void)_setSuppressesBottomBar:(BOOL)bar;
- (void)_setTemporaryPresentationController:(id)controller;
- (void)_setTraitStorageList:(id)list;
- (void)_setUpLayoutGuideConstraintIfNecessaryAtTop:(uint64_t)top;
- (void)_setUsesSharedView:(BOOL)view;
- (void)_setViewAppearState:(uint64_t)state isAnimating:;
- (void)_setViewHostsLayoutEngine:(BOOL)engine;
- (void)_showAccessibilityHUDItem:(id)item;
- (void)_showViewController:(id)controller withAction:(SEL)action sender:(id)sender;
- (void)_supportedInterfaceOrientationsDidChange;
- (void)_systemLayoutFittingSizeDidChangeForChildContentContainer:(id)container childViewController:(id)controller;
- (void)_timelinesForDateInterval:(id)interval completion:(id)completion;
- (void)_toggleEditing:(id)editing;
- (void)_traitCollectionDidChange:(id)change;
- (void)_traitOverrides;
- (void)_transitionToNavigationViewController:(id)controller withWrapper:(id)wrapper;
- (void)_transitionToViewController:(id)controller whilePerforming:(id)performing completion:(id)completion;
- (void)_traverseViewControllerHierarchyFromLevel:(int64_t)level withBlock:(id)block;
- (void)_uip_setTabElement:(id)element;
- (void)_unembedContentViewSettingDelegate:(id)delegate;
- (void)_unloadHierarchyInputAccessoryViewIfNecessary;
- (void)_unsafeParentWillTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
- (void)_updateChildContentMargins;
- (void)_updateContentOverlayInsetsForSelfAndChildren;
- (void)_updateContentOverlayInsetsFromParentForNavigationTransitionWithFinalRectInParent:(CGRect)parent;
- (void)_updateContentOverlayInsetsFromParentIfNecessary;
- (void)_updateContentUnavailableConfigurationWithObservationTracking;
- (void)_updateControlledViewsToFrame:(CGRect)frame;
- (void)_updateForReselectionInContainingTabBarController;
- (void)_updateInterfaceOrientationAnimated:(BOOL)animated;
- (void)_updateLastKnownInterfaceOrientationOnPresentionStack:(uint64_t)stack;
- (void)_updateLayoutForStatusBarAndInterfaceOrientation;
- (void)_updatePropertiesWithObservationTracking;
- (void)_updateSystemAppearanceWithRecursionBlock:(void *)block action:;
- (void)_updateTabBarLayout;
- (void)_updateToolbarItemsFromViewController:(id)controller animated:(BOOL)animated;
- (void)_updateTraitsIfNecessarySchedulingPropagation:(uint64_t)propagation;
- (void)_updateViewConstraintsWithObservationTracking;
- (void)_updateViewSafeAreaInsetsAndEagerlyUpdateContentScrollView:(double *)view;
- (void)_updateWithFrameSpecifier:(id)specifier;
- (void)_updateWithFrameSpecifier:(id)specifier completion:(id)completion;
- (void)_viewDidLayoutSubviewsWithObservationTracking;
- (void)_viewSubtreeDidGainScrollView:(id)view enclosingViewController:(id)controller;
- (void)_viewWillLayoutSubviewsWithObservationTracking;
- (void)_willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration forwardToChildControllers:(BOOL)controllers skipSelf:(BOOL)self;
- (void)_willBeginCounterRotationForPresentation;
- (void)_willEnterAlwaysOn;
- (void)_willExitAlwaysOn;
- (void)_willRotateToInterfaceOrientation;
- (void)_willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration forwardToChildControllers:(BOOL)controllers skipSelf:(BOOL)self;
- (void)_window:(id)_window viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)_window:(id)_window willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
- (void)_windowControllerTransitionDidCancel;
- (void)addKeyCommand:(UIKeyCommand *)keyCommand;
- (void)applicationDidResume;
- (void)applicationWantsViewsToDisappear;
- (void)autoresizeArchivedView;
- (void)awakeFromNib;
- (void)beginAppearanceTransition:(BOOL)isAppearing animated:(BOOL)animated;
- (void)beginRequestWithExtensionContext:(id)context;
- (void)cancelBeginAppearanceTransition;
- (void)dealloc;
- (void)didMoveToParentViewController:(UIViewController *)parent;
- (void)dismissModalViewControllerAnimated:(BOOL)animated;
- (void)dismissViewControllerAnimated:(BOOL)flag completion:(void *)completion;
- (void)dismissViewControllerWithTransition:(int)transition completion:(id)completion;
- (void)encodeRestorableStateWithCoder:(NSCoder *)coder;
- (void)encodeWithCoder:(id)coder;
- (void)getRotationContentSettings:(id *)settings forWindow:(id)window;
- (void)loadView;
- (void)loadViewIfRequired;
- (void)performSegueWithIdentifier:(NSString *)identifier sender:(id)sender;
- (void)popoverPresentationController:(void *)controller;
- (void)presentViewController:(UIViewController *)viewControllerToPresent animated:(BOOL)flag completion:(void *)completion;
- (void)presentViewController:(id)controller withTransition:(int)transition completion:(id)completion;
- (void)removeChildViewController:(id)controller notifyDidMove:(BOOL)move;
- (void)removeFromParentViewController;
- (void)removeKeyCommand:(UIKeyCommand *)keyCommand;
- (void)setAdditionalSafeAreaInsets:(UIEdgeInsets)additionalSafeAreaInsets;
- (void)setAfterAppearanceBlock:(id)block;
- (void)setAppearanceTransitionsAreDisabled:(BOOL)disabled;
- (void)setAutomaticallyAdjustsScrollViewInsets:(BOOL)automaticallyAdjustsScrollViewInsets;
- (void)setAutoresizesArchivedViewToFullSize:(BOOL)size;
- (void)setContainmentSupport:(BOOL)support;
- (void)setContentScrollView:(UIScrollView *)scrollView forEdge:(NSDirectionalRectEdge)edge;
- (void)setContentSizeForViewInPopover:(CGSize)contentSizeForViewInPopover;
- (void)setContentUnavailableConfiguration:(id)contentUnavailableConfiguration;
- (void)setDefinesPresentationContext:(BOOL)definesPresentationContext;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setExtendedLayoutIncludesOpaqueBars:(BOOL)extendedLayoutIncludesOpaqueBars;
- (void)setFinishingModalTransition:(BOOL)transition;
- (void)setFocusGroupIdentifier:(NSString *)focusGroupIdentifier;
- (void)setFormSheetSize:(CGSize)size;
- (void)setHidesBottomBarWhenPushed:(BOOL)hidesBottomBarWhenPushed;
- (void)setInAnimatedVCTransition:(BOOL)transition;
- (void)setInWillRotateCallback:(BOOL)callback;
- (void)setInterfaceOrientation:(int64_t)orientation;
- (void)setModalInPopover:(BOOL)modalInPopover;
- (void)setModalPresentationStyle:(UIModalPresentationStyle)modalPresentationStyle;
- (void)setNeedsDidMoveCleanup:(BOOL)cleanup;
- (void)setNeedsFocusUpdate;
- (void)setNeedsUpdateOfPrefersInterfaceOrientationLocked;
- (void)setNeedsUpdateOfPrefersPointerLocked;
- (void)setNeedsUpdateOfSupportedInterfaceOrientations;
- (void)setNeedsUserInterfaceAppearanceUpdate;
- (void)setOverrideTraitCollection:(UITraitCollection *)collection forChildViewController:(UIViewController *)childViewController;
- (void)setOverrideTraitCollection:(id)collection;
- (void)setOverrideUserInterfaceStyle:(UIUserInterfaceStyle)overrideUserInterfaceStyle;
- (void)setParentViewController:(id)controller;
- (void)setPerformingModalTransition:(BOOL)transition;
- (void)setPreferredContentSize:(CGSize)preferredContentSize;
- (void)setPreferredFocusedItem:(id)item;
- (void)setPreferredTransition:(id)transition;
- (void)setProvidesPresentationContextTransitionStyle:(BOOL)providesPresentationContextTransitionStyle;
- (void)setRestorationClass:(id)restorationClass;
- (void)setRestoresFocusAfterTransition:(BOOL)restoresFocusAfterTransition;
- (void)setSearchBarHidNavBar:(BOOL)bar;
- (void)setShouldForceNonAnimatedTransition:(BOOL)transition;
- (void)setStoryboardIdentifier:(id)identifier;
- (void)setTabBarItem:(UITabBarItem *)tabBarItem;
- (void)setTitle:(NSString *)title;
- (void)setToolbarItems:(NSArray *)toolbarItems;
- (void)setToolbarItems:(NSArray *)toolbarItems animated:(BOOL)animated;
- (void)setTransitioningDelegate:(id)transitioningDelegate;
- (void)setUserActivity:(id)activity;
- (void)setValue:(id)value forKey:(id)key;
- (void)setView:(UIView *)view;
- (void)setViewRespectsSystemMinimumLayoutMargins:(BOOL)viewRespectsSystemMinimumLayoutMargins;
- (void)setWantsFullScreenLayout:(BOOL)wantsFullScreenLayout;
- (void)transitionFromViewController:(UIViewController *)fromViewController toViewController:(UIViewController *)toViewController duration:(NSTimeInterval)duration options:(UIViewAnimationOptions)options animations:(void *)animations completion:(void *)completion;
- (void)unloadViewForced:(BOOL)forced;
- (void)unregisterPreviewSourceView:(id)view;
- (void)unregisterPreviewing:(id)previewing;
- (void)updateFocusIfNeeded;
- (void)updatePropertiesIfNeeded;
- (void)updateTraitsIfNeeded;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)animated;
- (void)viewDidDisappear:(BOOL)animated;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)animated;
- (void)viewWillDisappear:(BOOL)animated;
- (void)viewWillMoveToWindow:(id)window;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willMoveToParentViewController:(UIViewController *)parent;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
- (void)window:(id)window didAnimateFirstHalfOfRotationToInterfaceOrientation:(int64_t)orientation;
- (void)window:(id)window didRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)window:(id)window didRotateFromInterfaceOrientation:(int64_t)orientation oldSize:(CGSize)size;
- (void)window:(id)window resizeFromOrientation:(int64_t)orientation;
- (void)window:(id)window setupWithInterfaceOrientation:(int64_t)orientation;
- (void)window:(id)window statusBarWillChangeFromHeight:(double)height toHeight:(double)toHeight;
- (void)window:(id)window willAnimateFirstHalfOfRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)window:(id)window willAnimateFromContentFrame:(CGRect)frame toContentFrame:(CGRect)contentFrame;
- (void)window:(id)window willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)window:(id)window willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration newSize:(CGSize)size;
- (void)window:(id)window willAnimateSecondHalfOfRotationFromInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)window:(id)window willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)window:(id)window willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration newSize:(CGSize)size;
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
      _window = [(UIViewController *)self _window];
      screen = [_window screen];

      if (screen && [(UIViewController *)self isViewLoaded])
      {
        v10 = [(UIViewController *)self _contentOrObservableScrollViewForEdge:1];
        [v10 _willChangeToIdiom:objc_msgSend(screen onScreen:{"_userInterfaceIdiom"), screen}];
        v11 = [(UIViewController *)self _contentOrObservableScrollViewForEdge:4];
        if (v11 != v10)
        {
          [v11 _willChangeToIdiom:objc_msgSend(screen onScreen:{"_userInterfaceIdiom"), screen}];
        }
      }

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      storyboardSegueTemplates = [(UIViewController *)self storyboardSegueTemplates];
      v13 = [storyboardSegueTemplates countByEnumeratingWithState:&v45 objects:v51 count:16];
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
              objc_enumerationMutation(storyboardSegueTemplates);
            }

            v17 = *(*(&v45 + 1) + 8 * i);
            if ([v17 performOnViewLoad])
            {
              v18 = [v17 perform:self];
            }
          }

          v14 = [storyboardSegueTemplates countByEnumeratingWithState:&v45 objects:v51 count:16];
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
      searchDisplayController = [(UIViewController *)self searchDisplayController];
      if (!searchDisplayController)
      {
        goto LABEL_47;
      }

      navigationBar2 = searchDisplayController;
      searchDisplayController2 = [(UIViewController *)self searchDisplayController];
      if ([searchDisplayController2 displaysSearchBarInNavigationBar])
      {
        navigationController = [(UIViewController *)self navigationController];
        navigationBar = [navigationController navigationBar];
        topItem = [navigationBar topItem];
        searchDisplayController3 = [(UIViewController *)self searchDisplayController];
        navigationItem = [searchDisplayController3 navigationItem];

        if (topItem == navigationItem)
        {
LABEL_47:

          return;
        }

        navigationController2 = [(UIViewController *)self navigationController];
        navigationBar2 = [navigationController2 navigationBar];

        items = [navigationBar2 items];
        v36 = [items indexOfObject:self->_navigationItem];

        if (v36 == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_46:

          goto LABEL_47;
        }

        [navigationBar2 setLocked:0];
        items2 = [navigationBar2 items];
        searchDisplayController2 = [items2 mutableCopy];

        v38 = [searchDisplayController2 indexOfObject:self->_navigationItem];
        searchDisplayController4 = [(UIViewController *)self searchDisplayController];
        navigationItem2 = [searchDisplayController4 navigationItem];
        [searchDisplayController2 replaceObjectAtIndex:v38 withObject:navigationItem2];

        [navigationBar2 setItems:searchDisplayController2 animated:0];
        [navigationBar2 setLocked:1];
        [navigationBar2 setNeedsDisplay];
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
  if (!-[UIViewController isViewLoaded](self, "isViewLoaded") || (-[UIViewController view](self, "view"), v3 = objc_claimAutoreleasedReturnValue(), [v3 _firstResponder], _firstResponder = objc_claimAutoreleasedReturnValue(), v3, !_firstResponder))
  {
    v6.receiver = self;
    v6.super_class = UIViewController;
    _firstResponder = [(UIResponder *)&v6 _firstResponder];
  }

  return _firstResponder;
}

- (id)nextResponder
{
  v3 = _UIResponderCrossSceneResponderChainEnabled();
  _nextResponderOverride = [(UIResponder *)self _nextResponderOverride];
  v5 = _nextResponderOverride;
  if (v3)
  {
    if (!_nextResponderOverride)
    {
      _existingView = [(UIViewController *)self _existingView];
      _window = [(UIViewController *)self _window];
      window3 = _window;
      if (self->_nextResponderIgnoresWindowIfRootVC || ([_window rootViewController], v9 = objc_claimAutoreleasedReturnValue(), v9, v9 != self))
      {
        parentModalViewController = [(UIViewController *)self parentModalViewController];
        if (parentModalViewController && ![(UIViewController *)self isBeingDismissed])
        {
          v12 = parentModalViewController;
        }

        else
        {
          _window2 = [_existingView _window];

          if (_window2)
          {
            [_existingView superview];
          }

          else
          {
            [(UIViewController *)self parentViewController];
          }
          v12 = ;
        }

        superview = v12;

        goto LABEL_53;
      }

      superview2 = window3;
LABEL_51:
      superview = superview2;
      goto LABEL_53;
    }

LABEL_11:
    superview = _nextResponderOverride;
    goto LABEL_54;
  }

  if (_nextResponderOverride)
  {
    goto LABEL_11;
  }

  parentModalViewController = self->_parentModalViewController;
  childModalViewController = [(UIViewController *)self childModalViewController];
  if (childModalViewController)
  {
    _popoverController = [(UIViewController *)self _popoverController];
    if (dyld_program_sdk_at_least())
    {
      v17 = 1;
    }

    else
    {
      contentViewController = [_popoverController contentViewController];
      v17 = contentViewController != self;
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
    _existingView = 0;
    window3 = 0;
LABEL_27:
    if (v17)
    {
      _existingView2 = [childModalViewController _existingView];
      v23 = _existingView2;
      if (!window3 || ([_existingView2 isDescendantOfView:_existingView] & 1) == 0)
      {
        v40 = v23;
        selfCopy = self;
        childModalViewController2 = [(UIViewController *)selfCopy childModalViewController];
        if (childModalViewController2)
        {
          childModalViewController3 = childModalViewController2;
          v27 = 0;
          v28 = 0;
          v29 = selfCopy;
          do
          {
            _existingView3 = [childModalViewController3 _existingView];
            window = [_existingView3 window];

            if (window)
            {
              v32 = childModalViewController3;

              v28 = v32;
            }

            selfCopy = childModalViewController3;

            childModalViewController3 = [(UIViewController *)selfCopy childModalViewController];

            v27 = window;
            v29 = selfCopy;
          }

          while (childModalViewController3);
        }

        else
        {
          v28 = 0;
          window = 0;
        }

        if (v28)
        {
          v34 = v28;
        }

        else
        {
          v34 = selfCopy;
        }

        v35 = v34;

        _existingView4 = [(UIViewController *)v35 _existingView];
        window2 = [_existingView4 window];

        if (window2)
        {
          view = [(UIViewController *)v35 view];
          superview = [view superview];

          goto LABEL_53;
        }

        v23 = v40;
      }
    }

    if (![(UIViewController *)self isViewLoaded])
    {
      superview = 0;
      goto LABEL_53;
    }

    superview2 = [(UIView *)self->_view superview];
    goto LABEL_51;
  }

  _existingView = [(UIViewController *)self _existingView];
  window3 = [_existingView window];
  if (!parentModalViewController)
  {
    goto LABEL_27;
  }

  _existingView5 = [(UIViewController *)parentModalViewController _existingView];
  window4 = [_existingView5 window];
  if (window4 && ([_existingView isDescendantOfView:_existingView5] & 1) != 0)
  {

    goto LABEL_27;
  }

  superview = parentModalViewController;

LABEL_53:
LABEL_54:

  return superview;
}

- (UIViewController)childModalViewController
{
  _appearingOrAppearedChildModalViewController = [(UIViewController *)self _appearingOrAppearedChildModalViewController];
  v4 = _appearingOrAppearedChildModalViewController;
  if (_appearingOrAppearedChildModalViewController)
  {
    lastObject = _appearingOrAppearedChildModalViewController;
  }

  else
  {
    lastObject = [(NSMutableArray *)self->_childModalViewControllers lastObject];
  }

  v6 = lastObject;

  return v6;
}

- (_DWORD)_appearingOrAppearedChildModalViewController
{
  v12 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v1 = *(self + 104);
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
    v3 = *(self + 504);
    *(self + 504) = v2;
  }
}

- (void)_doCommonSetup
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = *(self + 104);
  *(self + 104) = v2;

  if (([objc_opt_class() doesOverrideViewControllerMethod:sel_systemLayoutFittingSizeDidChangeForChildContentContainer_] & 1) != 0 || objc_msgSend(objc_opt_class(), "doesOverrideViewControllerMethod:", sel_systemLayoutFittingSizeDidChangeForChildViewController_))
  {
    *(self + 376) |= 0x20000000000uLL;
  }

  if ([objc_opt_class() doesOverrideViewControllerMethod:sel_contentScrollView])
  {
    *(self + 376) |= 0x100000000000000uLL;
  }

  if ([objc_opt_class() doesOverrideViewControllerMethod:sel__setContentOverlayInsets_])
  {
    *(self + 376) |= 0x10000000000000uLL;
  }

  v4 = [objc_opt_class() doesOverrideViewControllerMethod:sel_contentScrollViewForEdge_];
  v5 = (self + 376);
  v6 = *(self + 376);
  if (v4)
  {
    v6 = *v5 | 0x200000000000000;
  }

  *v5 = v6 & 0x9FFFFFFFFFFFFFFFLL;
  *(self + 384) &= 0xFFFCu;
  *(self + 384) &= 0xFFF3u;
  [self _setAllowsAutorotation:1];
  [objc_opt_class() defaultFormSheetSize];
  [self _setFormSheetSize:?];
  *(self + 376) |= 0x80000uLL;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  if (pthread_main_np() == 1 && ([UIApp _isHandlingMemoryWarning] & 1) == 0)
  {
    [qword_1ED4985A8 addObject:self];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__UIViewController__doCommonSetup__block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  if (qword_1ED4985D0 != -1)
  {
    dispatch_once(&qword_1ED4985D0, &__block_literal_global_294);
  }

  [defaultCenter addObserver:self selector:sel_applicationWillSuspend name:@"UIApplicationSuspendedNotification" object:UIApp];
  [defaultCenter addObserver:self selector:sel_applicationDidResume name:@"UIApplicationResumedNotification" object:UIApp];
  [defaultCenter addObserver:self selector:sel_applicationWantsViewsToDisappear name:@"UIApplicationWantsViewsToDisappearNotification" object:UIApp];
  [defaultCenter addObserver:self selector:sel_accessibilityLargeTextDidChange name:@"UIAccessibilityLargeTextChangedNotification" object:UIApp];
  [(UIViewController *)self _inferLayoutGuidesFromSubviews];
  [(UIViewController *)self _setUpLayoutGuideConstraintIfNecessaryAtTop:?];
  [(UIViewController *)self _setUpLayoutGuideConstraintIfNecessaryAtTop:?];
  *(self + 376) &= 0xFFFFFF3FFFFFFFFFLL;
  *(self + 384) &= ~0x20u;
  if ([(UIViewController *)self _needsAutomaticContentUnavailableConfigurationUpdates])
  {
    *(self + 384) |= 0x10u;
  }
}

+ (CGSize)defaultFormSheetSize
{
  v2 = +[_UIPresentationControllerDefaultVisualStyleProvider sharedInstance];
  defaultSheetMetrics = [v2 defaultSheetMetrics];
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen bounds];
  [defaultSheetMetrics defaultFormSheetSizeForScreenSize:{v5, v6}];
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
  if (self)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [*(self + 24) layoutGuides];
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
          identifier = [v8 identifier];
          v10 = [identifier isEqualToString:@"_UIViewControllerTop"];
          v11 = &OBJC_IVAR___UIViewController__topLayoutGuide;
          if ((v10 & 1) != 0 || (v12 = [identifier isEqualToString:@"_UIViewControllerBottom"], v11 = &OBJC_IVAR___UIViewController__bottomLayoutGuide, v12))
          {
            v13 = *v11;
            v14 = v8;
            v8 = *(self + v13);
            *(self + v13) = v14;
          }

          else
          {
            v14 = 0;
          }

          _constraintsToRemoveAtRuntime = [v14 _constraintsToRemoveAtRuntime];
          if ([_constraintsToRemoveAtRuntime count])
          {
            [MEMORY[0x1E69977A0] deactivateConstraints:_constraintsToRemoveAtRuntime];
            [v14 _setConstraintsToRemoveAtRuntime:0];
          }
        }

        v3 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v3);
    }

    if (!*(self + 552) && !*(self + 560))
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      obja = [*(self + 24) subviews];
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
              _archivedIdentifier = [v21 _archivedIdentifier];
              v23 = [_archivedIdentifier isEqualToString:@"_UIViewControllerTop"];

              v24 = &OBJC_IVAR___UIViewController__topLayoutGuide;
              if ((v23 & 1) != 0 || ([v21 _archivedIdentifier], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isEqualToString:", @"_UIViewControllerBottom"), v25, v24 = &OBJC_IVAR___UIViewController__bottomLayoutGuide, v26))
              {
                objc_storeStrong((self + *v24), v20);
                *(self + 376) |= 0x80000000000uLL;
                _constraintsToRemoveAtRuntime2 = [v21 _constraintsToRemoveAtRuntime];

                if (_constraintsToRemoveAtRuntime2)
                {
                  v28 = *(self + 24);
                  _constraintsToRemoveAtRuntime3 = [v21 _constraintsToRemoveAtRuntime];
                  [v28 removeConstraints:_constraintsToRemoveAtRuntime3];

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
  childModalViewController = [(UIViewController *)self childModalViewController];
  if (!childModalViewController)
  {
    childModalViewController = [(UIViewController *)self->_parentViewController presentedViewController];
  }

  return childModalViewController;
}

- (UIWindow)_window
{
  if ([(UIViewController *)self isViewLoaded])
  {
    view = [(UIViewController *)self view];
    WeakRetained = [view window];

    if (WeakRetained)
    {
      goto LABEL_14;
    }
  }

  v5 = [(UIViewController *)self _rootAncestorViewControllerInWindow:?];
  if ([(UIViewController *)v5 isViewLoaded])
  {
    view2 = [(UIViewController *)v5 view];
    WeakRetained = [view2 window];

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
  _popoverController = [(UIViewController *)self _popoverController];
  v4 = _popoverController;
  if (_popoverController)
  {
    _splitParentController = [_popoverController _splitParentController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }
  }

  v6 = objc_opt_class();
  _splitParentController = [(UIViewController *)self _ancestorViewControllerOfClass:v6 allowModalParent:0];
LABEL_5:

  return _splitParentController;
}

- (id)_popoverController
{
  WeakRetained = objc_loadWeakRetained(&self->_popoverController);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    _popoverController = WeakRetained;
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
      _popoverController = 0;
      goto LABEL_6;
    }

LABEL_5:
    _popoverController = [(UIViewController *)v7 _popoverController];
LABEL_6:

    goto LABEL_7;
  }

  _popoverController = 0;
LABEL_7:

  return _popoverController;
}

- (void)loadView
{
  nibName = [(UIViewController *)self nibName];
  if (nibName && (v4 = nibName, [(UIViewController *)self nibBundle], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    nibName2 = [(UIViewController *)self nibName];
    nibBundle = [(UIViewController *)self nibBundle];
    v27 = nibName2;
    v8 = nibBundle;
    if (self)
    {
      storyboard = [(UIViewController *)self storyboard];
      if (storyboard && (v10 = storyboard, -[UIViewController storyboard](self, "storyboard"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 containsNibNamed:v27], v11, v10, v12))
      {
        storyboard2 = [(UIViewController *)self storyboard];
        v14 = [storyboard2 nibForStoryboardNibNamed:v27];
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
      nibBundle = [(UIViewController *)self nibBundle];
      v7 = v5;
      v8 = nibBundle;
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
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    [(UIViewController *)self setNibBundle:mainBundle];

    nibBundle = self->_nibBundle;
  }

  return nibBundle;
}

- (CGRect)_defaultInitialViewFrame
{
  _window = [(UIViewController *)self _window];
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    _windowHostingScene = [_window _windowHostingScene];
    if (_windowHostingScene)
    {
      _defaultUISceneOrMainScreenPlaceholderIfExists = _windowHostingScene;
    }

    else
    {
      _defaultUISceneOrMainScreenPlaceholderIfExists = [UIApp _defaultUISceneOrMainScreenPlaceholderIfExists];
      if (!_defaultUISceneOrMainScreenPlaceholderIfExists)
      {
        goto LABEL_13;
      }
    }

    if ([_defaultUISceneOrMainScreenPlaceholderIfExists _hostsWindows])
    {
      _coordinateSpace = [_defaultUISceneOrMainScreenPlaceholderIfExists _coordinateSpace];
      [_coordinateSpace bounds];
      if (_window)
      {
        v18 = _window;
      }

      else
      {
        v18 = _coordinateSpace;
      }

      [_coordinateSpace convertRect:v18 toCoordinateSpace:?];
LABEL_17:
      v4 = v19;
      v6 = v20;
      v8 = v21;
      v10 = v22;

      goto LABEL_18;
    }

LABEL_13:
    if (_window)
    {
      [_window screen];
    }

    else
    {
      [objc_opt_self() mainScreen];
    }
    _coordinateSpace = ;
    [_coordinateSpace bounds];
    goto LABEL_17;
  }

  if (!_window)
  {
    _defaultUISceneOrMainScreenPlaceholderIfExists = [objc_opt_self() mainScreen];
    [_defaultUISceneOrMainScreenPlaceholderIfExists bounds];
    v4 = v13;
    v6 = v14;
    v8 = v15;
    v10 = v16;
LABEL_18:

    goto LABEL_19;
  }

  [_window bounds];
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

  viewIfLoaded = [(UIViewController *)self viewIfLoaded];
  _isRenderedHorizontallyFlipped = [viewIfLoaded _isRenderedHorizontallyFlipped];

  if (_isRenderedHorizontallyFlipped)
  {
    v13 = v5;
  }

  else
  {
    v13 = v3;
  }

  if (_isRenderedHorizontallyFlipped)
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

      superview = [(UIView *)self->_view superview];
      if (!superview)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel___updateContentOverlayInsetsDirectlyFromSuperview object:self file:@"UIViewController.m" lineNumber:1672 description:{@"Can't update contentOverlayInsets directly from superview because _view.superview is unexpectedly nil. self = %@, _view = %@", self, self->_view}];
      }

      view = self->_view;
      [(UIView *)view frame];
      [(UIView *)view _safeAreaInsetsForFrame:superview inSuperview:1 ignoreViewController:?];
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
      v65 = view ^ [superview _isRenderedHorizontallyFlipped];
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
        window = [(UIView *)self->_view window];
        [window _noteOverlayInsetsDidChange];
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

        view = [(UIViewController *)self view];
        if ([view _ignoresLayerTransformForSafeAreaInsets])
        {
          [view _frameIgnoringLayerTransform];
        }

        else
        {
          [view frame];
        }

        v39 = v15;
        v40 = v16;
        v41 = v17;
        v42 = v18;
        if ((*(&self->_viewControllerFlags + 6) & 8) == 0)
        {
          view2 = [v12 view];
          superview2 = [view superview];
          [view2 convertRect:superview2 fromView:{v39, v40, v41, v42}];
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
      superview = v19;
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
        _existingView = [(UIViewController *)self _existingView];
        _window = [(UIViewController *)self _window];
        v22 = _UIPresentationControllerBaseContentInsetsForControllersAndViewInWindow(0, self, _existingView, _window, buf, &v84);
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
  selfCopy = self;
  if (self)
  {
    v2 = [self _existingPresentationControllerImmediate:0 effective:1 includesRoot:1];
    v3 = 0;
    if (([objc_opt_class() _wantsContentOverlayInsetsUpdatesWhileDismissing] & 1) == 0)
    {
      v3 = [v2 _wantsContentOverlayInsetsUpdatesWhileDismissing] ^ 1;
    }

    _appearState = [selfCopy _appearState];
    if (!_appearState || _appearState == 3 && (v3 & 1) != 0 || ([selfCopy _transitioningOutWithoutDisappearing] & 1) != 0)
    {
      selfCopy = 1;
LABEL_22:

      return selfCopy;
    }

    _existingView = [selfCopy _existingView];
    v6 = _existingView;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    if (_existingView)
    {
      [_existingView transform];
    }

    if (_UIViewDirtiesDelegateContentInsetsForGeometryChange())
    {
      v7 = [selfCopy _existingPresentationControllerImmediate:0 effective:1];
      if (v7 || ([selfCopy presentedViewController], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
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
          selfCopy = 0;
LABEL_21:

          goto LABEL_22;
        }
      }
    }

    if (v6)
    {
      selfCopy = 1;
      if (*(&v10 + 1) != *(MEMORY[0x1E695EFD0] + 8) || *&v11 != *(MEMORY[0x1E695EFD0] + 16) || fabs(*&v10) != *MEMORY[0x1E695EFD0] || fabs(*(&v11 + 1)) != *(MEMORY[0x1E695EFD0] + 24))
      {
        goto LABEL_21;
      }
    }

    goto LABEL_20;
  }

  return selfCopy;
}

- (UIViewController)presentingViewController
{
  v3 = self->_parentModalViewController;
  v4 = v3;
  if (v3)
  {
    presentingViewController = v3;
  }

  else
  {
    presentingViewController = [(UIViewController *)self->_parentViewController presentingViewController];
  }

  v6 = presentingViewController;

  return v6;
}

- (void)_setSecurityModeForViewsLayer
{
  layer = [(UIView *)self->_view layer];
  if ([UIApp _supportedOnLockScreen])
  {
    _canShowWhileLocked = [(UIViewController *)self _canShowWhileLocked];
    v4 = MEMORY[0x1E6979E60];
    if (!_canShowWhileLocked)
    {
      v4 = MEMORY[0x1E6979E58];
    }
  }

  else
  {
    v4 = MEMORY[0x1E6979E58];
  }

  [layer setSecurityMode:*v4];
}

- (_BYTE)_contentScrollViewHeuristic
{
  v46 = *MEMORY[0x1E69E9840];
  if (self)
  {
    _existingView = [self _existingView];
    if (_existingView)
    {
      v3 = *(self + 304);
      if (v3 && ([v3 isDescendantOfView:_existingView] & 1) == 0)
      {
        [self _clearRecordedContentScrollView];
      }

      _layoutEngine = *(self + 304);
      if (_layoutEngine)
      {
        goto LABEL_48;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        _layoutEngine = _existingView;
LABEL_48:

        goto LABEL_49;
      }

      navigationController = [self navigationController];
      navigationBar = [navigationController navigationBar];
      barStyle = [navigationBar barStyle];
      _screen = [_existingView _screen];
      if (_UIBarStyleWithTintColorIsTranslucentOnScreen(barStyle, 0, _screen))
      {

LABEL_12:
        v12 = _existingView;
        while (2)
        {
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            subviews = [v12 subviews];
            v14 = [subviews count];

            if (v14)
            {
              if ([v12 _canHostViewControllerContentScrollView])
              {
                subviews2 = [v12 subviews];

                v43 = 0u;
                v44 = 0u;
                v41 = 0u;
                v42 = 0u;
                v16 = subviews2;
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
                    if (![(UIViewController *)self _useViewBasedTopAndBottomLayoutGuides]|| v21 != *(self + 552) && v21 != *(self + 560))
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
          _layoutEngine = v12;
        }

        else
        {
          _layoutEngine = 0;
        }

        goto LABEL_48;
      }

      navigationController2 = [self navigationController];
      navigationBar2 = [navigationController2 navigationBar];
      barStyle2 = [navigationBar2 barStyle];

      if (barStyle2 == 4)
      {
        goto LABEL_12;
      }

      if ((_existingView[95] & 4) != 0)
      {
        subviews3 = [_existingView subviews];
        v23 = [subviews3 count];

        if (v23 == 1)
        {
          subviews4 = [_existingView subviews];
          v25 = [subviews4 objectAtIndexedSubscript:0];

          if (v25[94] & 0x10) != 0 && (objc_opt_isKindOfClass())
          {
            _layoutEngine = [_existingView _layoutEngine];

            if (_layoutEngine)
            {
              [(UIView *)_existingView _updateConstraintsAtEngineLevelIfNeededWithViewForVariableChangeNotifications:_existingView];
              [v25 _nsis_origin];
              v27 = v26;
              v29 = v28;
              [v25 _nsis_bounds];
              v31 = v30;
              v33 = v32;
              [_existingView _nsis_bounds];
              if (v35 == v33 && v34 == v31 && v29 == *(MEMORY[0x1E695EFF8] + 8) && v27 == *MEMORY[0x1E695EFF8])
              {
                v39 = v25;
              }

              else
              {
                v39 = 0;
              }

              _layoutEngine = v39;
            }
          }

          else
          {
            _layoutEngine = 0;
          }

          goto LABEL_48;
        }
      }
    }

    _layoutEngine = 0;
    goto LABEL_48;
  }

  _layoutEngine = 0;
LABEL_49:

  return _layoutEngine;
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
  _parentTraitEnvironment = [(UIViewController *)self _parentTraitEnvironment];
  v8 = _parentTraitEnvironment;
  if (_parentTraitEnvironment)
  {
    v9 = [_parentTraitEnvironment _traitCollectionForChildEnvironment:self];
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

    _existingView = [(UIViewController *)self _existingView];
    v6 = _existingView;
    if (!_existingView || ([_existingView window], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {

      goto LABEL_13;
    }
  }

  parentViewController = [(UIViewController *)self parentViewController];
  if (parentViewController || ([(UIViewController *)self _departingParentViewController], (parentViewController = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = parentViewController;
    goto LABEL_25;
  }

LABEL_13:
  v10 = [(UIViewController *)self _existingPresentationControllerImmediate:1 effective:1 includesRoot:1];
  presentedViewController = [v10 presentedViewController];

  if (presentedViewController == self)
  {
    _window = v10;
LABEL_23:
    v9 = _window;
    goto LABEL_24;
  }

  superview = [(UIView *)self->_view superview];
  if (superview)
  {
    superview2 = superview;
    while (([superview2 _canBeParentTraitEnvironment] & 1) == 0)
    {
      superview2 = [superview2 superview];
      if (!superview2)
      {
        goto LABEL_18;
      }
    }

    _window = superview2;
    goto LABEL_23;
  }

LABEL_18:
  if ((v4 & 1) == 0)
  {
    _window = [(UIViewController *)self _window];
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

  _window = [(UIViewController *)self _window];
  rootViewController = [_window rootViewController];

  if (rootViewController == self)
  {
    return 0;
  }

  v5 = [(UIViewController *)self _existingPresentationControllerImmediate:1 effective:1];

  return v5 == 0;
}

- (void)_setAvoidanceInsetsNeedsUpdate
{
  _existingView = [(UIViewController *)self _existingView];
  window = [_existingView window];
  [window _noteOverlayInsetsDidChange];
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
  navigationInsetAdjustment = [(UIViewController *)self navigationInsetAdjustment];
  [navigationInsetAdjustment insetAdjustment];
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
  _existingView = [(UIViewController *)self _existingView];

  if (!_existingView)
  {
    return;
  }

  _window = [(UIViewController *)self _window];
  _existingView2 = [(UIViewController *)self _existingView];
  [_existingView2 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  if ([_window _isHostedInAnotherProcess])
  {
    [_window frame];
  }

  else
  {
    if (![UIApp _appAdoptsUISceneLifecycle])
    {
      _screen = [(UIViewController *)self _screen];
      windowScene = [_window windowScene];
      _interfaceOrientation = [windowScene _interfaceOrientation];
      v25 = __UIStatusBarManagerForWindow(_window);
      [v25 defaultStatusBarHeightInOrientation:1];
      v27 = v26;

      [_screen _applicationFrameForInterfaceOrientation:_interfaceOrientation usingStatusbarHeight:1 ignoreStatusBar:v27];
      v18 = v28;
      v19 = v29;
      v20 = v30;
      v21 = v31;

      goto LABEL_8;
    }

    [_window _referenceFrameFromSceneUsingScreenBounds:1];
  }

  v18 = v14;
  v19 = v15;
  v20 = v16;
  v21 = v17;
LABEL_8:
  if ([objc_opt_class() _directlySetsContentOverlayInsetsForChildren])
  {
    _viewControllerUnderlapsStatusBar = [(UIViewController *)self _viewControllerUnderlapsStatusBar];
    v33 = 0.0;
    if (_viewControllerUnderlapsStatusBar)
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
    mutableChildViewControllers = [(UIViewController *)self mutableChildViewControllers];
    v41 = [mutableChildViewControllers countByEnumeratingWithState:&v53 objects:v57 count:16];
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
            objc_enumerationMutation(mutableChildViewControllers);
          }

          v45 = *(*(&v53 + 1) + 8 * i);
          _existingView3 = [v45 _existingView];

          if (_existingView3)
          {
            if ((dyld_program_sdk_at_least() & 1) != 0 || ([v45 _existingView], v47 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v47, "frame"), v64.origin.x = v48, v64.origin.y = v49, v64.size.width = v50, v64.size.height = v51, v61.origin.x = v7, v61.origin.y = v9, v61.size.width = v11, v61.size.height = v13, v52 = CGRectEqualToRect(v61, v64), v47, v52))
            {
              [v45 _updateLayoutForStatusBarAndInterfaceOrientation];
            }
          }
        }

        v42 = [mutableChildViewControllers countByEnumeratingWithState:&v53 objects:v57 count:16];
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
    presentingViewController = [(UIViewController *)self presentingViewController];
    if (presentingViewController)
    {
      v6 = presentingViewController;
      *(&self->_viewControllerFlags + 4) |= 0x20u;
      supportedInterfaceOrientations = [presentingViewController supportedInterfaceOrientations];
      *(p_viewControllerFlags + 4) &= ~0x20u;

      return supportedInterfaceOrientations;
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
  presentingViewController = [(UIViewController *)self presentingViewController];
  _presentationController = [presentingViewController _presentationController];
  modalPresentationStyle = [(UIViewController *)self modalPresentationStyle];
  if (presentingViewController)
  {
    v6 = modalPresentationStyle;
    v7 = [_presentationController state] == 1 || objc_msgSend(_presentationController, "state") == 2;
    if (v6 == 17 || v6 == UIModalPresentationOverFullScreen || v6 == UIModalPresentationFullScreen && ([presentingViewController _existingView], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "window"), v10 = objc_claimAutoreleasedReturnValue(), v11 = v10 == 0 || v7, v10, v9, !v11))
    {
      array = [MEMORY[0x1E695DF70] arrayWithObject:self];
    }

    else
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    v13 = array;
    v8 = _viewControllersWhoseOrientationsMustCoincide(self, array);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setNeedsFocusUpdate
{
  _focusSystem = [(UIViewController *)self _focusSystem];
  [_focusSystem requestFocusUpdateToEnvironment:self];
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
  _popoverController = [(UIViewController *)self _popoverController];

  if (_popoverController)
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
  _window = [(UIViewController *)self _window];
  _windowCanDynamicallySpecifySupportedInterfaceOrientations = [_window _windowCanDynamicallySpecifySupportedInterfaceOrientations];

  if ([(UIViewController *)self _ignoreAppSupportedOrientations])
  {
    v6 = 30;
  }

  else
  {
    v7 = UIApp;
    _window2 = [(UIViewController *)self _window];
    v9 = [v7 _supportedInterfaceOrientationsForWindow:_window2];
    if (v9)
    {
      v6 = v9;
    }

    else
    {
      v6 = 30;
    }
  }

  presentingViewController = [(UIViewController *)self presentingViewController];
  _originalPresentationController = [presentingViewController _originalPresentationController];
  presentingViewController2 = [(UIViewController *)self presentingViewController];
  _presentationController = [presentingViewController2 _presentationController];

  presentingViewController3 = [(UIViewController *)self presentingViewController];
  v15 = presentingViewController3;
  if (presentingViewController3 == 0 || v3 || _originalPresentationController == _presentationController)
  {
    v23 = (presentingViewController3 == 0) ^ (presentingViewController3 == 0 || v3);

    if (v23)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v16 = _windowCanDynamicallySpecifySupportedInterfaceOrientations;
    presentingViewController4 = [(UIViewController *)self presentingViewController];
    if (presentingViewController4)
    {
      v18 = presentingViewController4;
      _window3 = [presentingViewController4 _window];
      traitCollection = [_window3 traitCollection];
      _traitCollectionWhenRotated = [_window3 _traitCollectionWhenRotated];
      v22 = [v18[97] _shouldAdaptFromTraitCollection:traitCollection toTraitCollection:_traitCollectionWhenRotated];

      _windowCanDynamicallySpecifySupportedInterfaceOrientations = v16;
      if ((v22 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_17:
      selfCopy = [(UIViewController *)self presentingViewController];
      goto LABEL_20;
    }
  }

LABEL_19:
  selfCopy = self;
LABEL_20:
  v25 = selfCopy;
  supportedInterfaceOrientations = [(UIViewController *)selfCopy supportedInterfaceOrientations];
  if (![(UIViewController *)v25 _overrideInterfaceOrientationMechanics])
  {
    _viewControllersWhoseOrientationsMustCoincide = [(UIViewController *)v25 _viewControllersWhoseOrientationsMustCoincide];
    v28 = _viewControllersWhoseOrientationsMustCoincide;
    if (_viewControllersWhoseOrientationsMustCoincide)
    {
      v37 = _windowCanDynamicallySpecifySupportedInterfaceOrientations;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v29 = [_viewControllersWhoseOrientationsMustCoincide countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v39;
        v32 = supportedInterfaceOrientations;
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
        v32 = supportedInterfaceOrientations;
      }

      if (v32)
      {
        supportedInterfaceOrientations = v32;
      }

      _windowCanDynamicallySpecifySupportedInterfaceOrientations = v37;
    }
  }

  v34 = supportedInterfaceOrientations != 0;
  v35 = supportedInterfaceOrientations & v6;
  if (v35)
  {
    v34 = 0;
  }

  if (!v3 && (_windowCanDynamicallySpecifySupportedInterfaceOrientations & v34 & 1) != 0 && -[UIViewController shouldAutorotate](self, "shouldAutorotate") && ([UIApp _isSpringBoard] & 1) == 0)
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
      preferredTransition = [(UIViewController *)self preferredTransition];
      v5 = preferredTransition;
      if (!preferredTransition || (modalPresentationStyle = [preferredTransition _preferredModalPresentationStyle], modalPresentationStyle == UIModalPresentationAutomatic))
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
      userInterfaceIdiom = [v2 userInterfaceIdiom];

      if (userInterfaceIdiom)
      {
        v4 = +[UIDevice currentDevice];
        userInterfaceIdiom2 = [v4 userInterfaceIdiom];

        if (userInterfaceIdiom2 == 1)
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
  selfCopy = self;
  sub_188A6E828();
}

- (_UITypedStorage)_typedStorage
{
  if (self)
  {
    v2 = *(self + 496);
    if (!v2)
    {
      v2 = objc_alloc_init(_UITypedStorage);
      objc_storeStrong((self + 496), v2);
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
  if (self)
  {
    if (_UIObservationTrackingEnabled())
    {
      [self _updatePropertiesWithObservationTracking];
    }

    else
    {
      [(UIViewController *)self _executeUpdateProperties];
    }

    [(UIViewController *)self _performContentUnavailableConfigurationStateUpdate];
  }
}

- (void)_updatePropertiesWithObservationTracking
{
  selfCopy = self;
  sub_188A70EFC();
}

- (double)_executeUpdateProperties
{
  if (self)
  {
    memset(__src, 0, 368);
    _UIBeginTrackingTraitUsage(self, self[3], __src);
    [self _updateProperties];
    [self updateProperties];
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
    v9 = [self methodForSelector:sel_updateProperties];
    *&v13[0] = v3;
    *(&v13[0] + 1) = v4;
    *&v13[1] = v5;
    [(UIViewController *)self _recordTraitUsage:v13 trackedStateDiff:v9 insideMethod:sel_setNeedsUpdateProperties withInvalidationAction:?];
    v10 = self[3];
    v11 = [self methodForSelector:sel_updateProperties];
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
  if (self)
  {
    v2 = self[192];
    if ((v2 & 0x10) != 0)
    {
      self[192] = v2 & 0xFFEF;
      if (_UIObservationTrackingEnabled())
      {

        [self _updateContentUnavailableConfigurationWithObservationTracking];
      }

      else
      {

        [(UIViewController *)self _executeContentUnavailableConfigurationUpdate];
      }
    }
  }
}

- (void)_viewWillLayoutSubviewsWithObservationTracking
{
  selfCopy = self;
  sub_188A7167C();
}

- (id)_parentContentContainer
{
  _parentModalViewController = [(UIViewController *)self _parentModalViewController];
  _presentationController = [_parentModalViewController _presentationController];
  v5 = _presentationController;
  if (_presentationController)
  {
    parentViewController = _presentationController;
  }

  else
  {
    parentViewController = [(UIViewController *)self parentViewController];
  }

  v7 = parentViewController;

  return v7;
}

- (void)_viewDidLayoutSubviewsWithObservationTracking
{
  selfCopy = self;
  sub_188A720FC();
}

- (id)_effectiveWhitePointAdaptivityStyleViewController
{
  _presentedStatusBarViewController = [(UIViewController *)self _presentedStatusBarViewController];
  selfCopy = [_presentedStatusBarViewController _effectiveWhitePointAdaptivityStyleViewController];

  if (!selfCopy)
  {
    childViewControllerForWhitePointAdaptivityStyle = [(UIViewController *)self childViewControllerForWhitePointAdaptivityStyle];
    selfCopy = [childViewControllerForWhitePointAdaptivityStyle _effectiveWhitePointAdaptivityStyleViewController];

    if (!selfCopy)
    {
      selfCopy = self;
    }
  }

  return selfCopy;
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
  _window = [(UIViewController *)self _window];
  v4 = [v2 _normativeWhitePointAdaptivityStyleForWindow:_window];

  return v4;
}

- (id)_effectiveHomeIndicatorAutoHiddenViewController
{
  _presentedStatusBarViewController = [(UIViewController *)self _presentedStatusBarViewController];
  selfCopy = [_presentedStatusBarViewController _effectiveHomeIndicatorAutoHiddenViewController];

  if (!selfCopy)
  {
    childViewControllerForHomeIndicatorAutoHidden = [(UIViewController *)self childViewControllerForHomeIndicatorAutoHidden];
    selfCopy = [childViewControllerForHomeIndicatorAutoHidden _effectiveHomeIndicatorAutoHiddenViewController];

    if (!selfCopy)
    {
      selfCopy = self;
    }
  }

  return selfCopy;
}

- (void)setNeedsUpdateOfPrefersPointerLocked
{
  _window = [(UIViewController *)self _window];
  _windowHostingScene = [_window _windowHostingScene];
  IsAvailableForScene = _UIPointerLockStateIsAvailableForScene(_windowHostingScene);

  if (IsAvailableForScene)
  {

    [(UIViewController *)self _updateSystemAppearanceWithRecursionBlock:&__block_literal_global_919_0 action:?];
  }
}

- (void)_setNeedsUpdateOfMultitaskingDragExclusionRects
{
  _window = [(UIViewController *)self _window];
  screen = [_window screen];
  _userInterfaceIdiom = [screen _userInterfaceIdiom];

  if (_userInterfaceIdiom == 1)
  {

    [(UIViewController *)self _updateSystemAppearanceWithRecursionBlock:&__block_literal_global_923 action:?];
  }
}

- (id)_effectiveScreenEdgesDeferringSystemGesturesViewController
{
  _presentedStatusBarViewController = [(UIViewController *)self _presentedStatusBarViewController];
  selfCopy = [_presentedStatusBarViewController _effectiveScreenEdgesDeferringSystemGesturesViewController];

  if (!selfCopy)
  {
    childViewControllerForScreenEdgesDeferringSystemGestures = [(UIViewController *)self childViewControllerForScreenEdgesDeferringSystemGestures];
    selfCopy = [childViewControllerForScreenEdgesDeferringSystemGestures _effectiveScreenEdgesDeferringSystemGesturesViewController];

    if (!selfCopy)
    {
      selfCopy = self;
    }
  }

  return selfCopy;
}

- (id)_effectiveInterfaceOrientationLockViewController
{
  _presentedStatusBarViewController = [(UIViewController *)self _presentedStatusBarViewController];
  selfCopy = [_presentedStatusBarViewController _effectiveInterfaceOrientationLockViewController];

  if (!selfCopy)
  {
    childViewControllerForInterfaceOrientationLock = [(UIViewController *)self childViewControllerForInterfaceOrientationLock];
    selfCopy = [childViewControllerForInterfaceOrientationLock _effectiveInterfaceOrientationLockViewController];

    if (!selfCopy)
    {
      selfCopy = self;
    }
  }

  return selfCopy;
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
  if (objc_opt_class() == self)
  {
    _class_setCustomDeallocInitiation();
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = qword_1ED4985A8;
    qword_1ED4985A8 = weakObjectsHashTable;
  }

  else
  {
    v3 = objc_opt_self();
    [v3 instanceMethodForSelector:sel_traitCollection];
    v4 = dyld_image_header_containing_address();
    [self instanceMethodForSelector:sel_traitCollection];
    v5 = dyld_image_header_containing_address();

    if (v4 != v5)
    {
      v8 = *(__UILogGetCategoryCachedImpl("TraitCollection", &qword_1ED4985C8) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = v8;
        v10 = NSStringFromClass(self);
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
  _presentedStatusBarViewController = [(UIViewController *)self _presentedStatusBarViewController];
  _effectiveStatusBarHiddenViewController = [_presentedStatusBarViewController _effectiveStatusBarHiddenViewController];

  if (_effectiveStatusBarHiddenViewController)
  {
    v5 = _effectiveStatusBarHiddenViewController;
    selfCopy = v5;
  }

  else
  {
    v7 = [(UIViewController *)self _existingPresentationControllerImmediate:0 effective:1 includesRoot:1];
    v8 = v7;
    if (!v7 || ([v7 _shouldPresentedViewControllerControlStatusBarAppearance] & 1) != 0 || (objc_msgSend(v8, "presentedViewController"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "modalPresentationCapturesStatusBarAppearance"), v9, v10))
    {
      childViewControllerForStatusBarHidden = [(UIViewController *)self childViewControllerForStatusBarHidden];
      _effectiveStatusBarHiddenViewController2 = [childViewControllerForStatusBarHidden _effectiveStatusBarHiddenViewController];

      if (_effectiveStatusBarHiddenViewController2)
      {
        v5 = _effectiveStatusBarHiddenViewController2;
        selfCopy = v5;
      }

      else
      {
        selfCopy = self;
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
      selfCopy = 0;
    }
  }

  return selfCopy;
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
  _window = [(UIViewController *)self _window];
  _windowHostingScene = [_window _windowHostingScene];
  [_windowHostingScene _systemMinimumMargin];
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
  parentViewController = [(UIViewController *)self parentViewController];

  if (parentViewController)
  {
    parentViewController2 = [(UIViewController *)self parentViewController];
    v12 = v9[2](v9, parentViewController2);

    if (v12)
    {
      selfCopy = v12;
LABEL_27:
      v5 = selfCopy;
      v6 = selfCopy;
      goto LABEL_28;
    }
  }

  presentingViewController = [(UIViewController *)self presentingViewController];

  if (!presentingViewController)
  {
    if (_UIAppUseModernRotationAndPresentationBehaviors())
    {
LABEL_13:
      self = 0;
LABEL_26:
      selfCopy = self;
      goto LABEL_27;
    }

    _existingView = [(UIViewController *)self _existingView];
    window = [_existingView window];

    if (!window)
    {
      presentedViewController = [(UIViewController *)self presentedViewController];

      if (presentedViewController)
      {
        presentedViewController2 = [(UIViewController *)self presentedViewController];
      }

      else
      {
        presentingViewController2 = [(UIViewController *)self presentingViewController];

        if (!presentingViewController2)
        {
          goto LABEL_13;
        }

        presentedViewController2 = [(UIViewController *)self presentingViewController];
      }

      v21 = presentedViewController2;
      _existingView2 = [presentedViewController2 _existingView];
      window = [_existingView2 window];

      if (!window)
      {
        goto LABEL_13;
      }
    }

    v23 = [UIWindowController windowControllerForWindow:window];
    v24 = v23;
    if (self)
    {
      _transitionController = [v23 _transitionController];
      if (_transitionController)
      {
        v26 = [_UIViewControllerTransitionContext _associatedTransitionContextForAnimationController:_transitionController];
        self = [v26 _transitionCoordinator];
      }

      else
      {
        self = 0;
      }
    }

    goto LABEL_26;
  }

  presentingViewController3 = [(UIViewController *)self presentingViewController];
  v6 = v9[2](v9, presentingViewController3);

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
  if (!self)
  {
    return 0;
  }

  _presentationController = [self _presentationController];
  v2 = _presentationController;
  if (!_presentationController || ([_presentationController dismissing] & 1) != 0 || (objc_msgSend(v2, "dismissed") & 1) != 0)
  {
    _presentedViewControllerProvidesContentScrollView = 0;
  }

  else
  {
    _presentedViewControllerProvidesContentScrollView = [v2 _presentedViewControllerProvidesContentScrollView];
  }

  return _presentedViewControllerProvidesContentScrollView;
}

- (UINavigationItem)_navigationItemCreatingDefaultIfNotSet
{
  navigationItem = self->_navigationItem;
  if (!navigationItem)
  {
    title = [(UIViewController *)self title];
    if (title)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = [UIViewController instanceMethodForSelector:sel_title];
        v7 = [(UIViewController *)self methodForSelector:sel_title];
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v9 = objc_opt_class();
        v10 = objc_opt_class();
        if (v6 == v7)
        {
          [currentHandler handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:15369 description:{@"ViewController class %@ returned a value of class %@ from -title, that is not a subclass of NSString. This is likely a memory error.", v9, v10, v14}];
        }

        else
        {
          [currentHandler handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:15367 description:{@"ViewController class %@ overrode -title and returned a value of class %@, that is not a subclass of NSString. This is an illegal override. overrideImplementation=%p", v9, v10, v7}];
        }
      }
    }

    v11 = [[UINavigationItem alloc] initWithTitle:title];
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
  searchDisplayController = [(UIViewController *)self searchDisplayController];
  if (searchDisplayController && (v4 = searchDisplayController, -[UIViewController searchDisplayController](self, "searchDisplayController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 displaysSearchBarInNavigationBar], v5, v4, v6))
  {
    searchDisplayController2 = [(UIViewController *)self searchDisplayController];
    navigationItem = [searchDisplayController2 navigationItem];
  }

  else
  {
    navigationItem = [(UIViewController *)self _navigationItemCreatingDefaultIfNotSet];
  }

  return navigationItem;
}

- (void)setNeedsUpdateOfSupportedInterfaceOrientations
{
  _window = [(UIViewController *)self _window];
  [_window _updateOrientationPreferencesAnimated:{+[UIView areAnimationsEnabled](UIView, "areAnimationsEnabled")}];
}

- (id)_containingTabBarController
{
  if (self)
  {
    selfCopy = self;
    v3 = objc_opt_class();
    self = [(UIViewController *)selfCopy _ancestorViewControllerOfClass:v3 allowModalParent:0];
    v1 = vars8;
  }

  return self;
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
  _allowsFreezeLayoutForOrientationChangeOnDismissal = [(UIViewController *)self _allowsFreezeLayoutForOrientationChangeOnDismissal];
  if (_allowsFreezeLayoutForOrientationChangeOnDismissal)
  {
    return (*(&self->_viewControllerFlags + 6) >> 1) & 1;
  }

  return _allowsFreezeLayoutForOrientationChangeOnDismissal;
}

- (uint64_t)_defaultViewControllerStatusBarVisibilityBehavior
{
  selfCopy = self;
  if (self)
  {
    if ([UIApp _wantsCompactStatusBarHiding])
    {
      traitCollection = [selfCopy traitCollection];
      if ([traitCollection verticalSizeClass] == 1)
      {
        selfCopy = 1;
      }

      else
      {
        selfCopy = 2;
      }
    }

    else
    {
      return 2;
    }
  }

  return selfCopy;
}

- (id)_viewControllerForRotation
{
  v3 = _UIAppUseModernRotationAndPresentationBehaviors();

  return [(UIViewController *)self _viewControllerForRotationWithDismissCheck:v3];
}

- (id)_effectiveStatusBarStyleViewController
{
  _presentedStatusBarViewController = [(UIViewController *)self _presentedStatusBarViewController];
  _effectiveStatusBarStyleViewController = [_presentedStatusBarViewController _effectiveStatusBarStyleViewController];

  if (_effectiveStatusBarStyleViewController)
  {
    v5 = _effectiveStatusBarStyleViewController;
    selfCopy = v5;
  }

  else
  {
    v7 = [(UIViewController *)self _existingPresentationControllerImmediate:0 effective:1 includesRoot:1];
    v8 = v7;
    if (!v7 || ([v7 _shouldPresentedViewControllerControlStatusBarAppearance] & 1) != 0 || (objc_msgSend(v8, "presentedViewController"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "modalPresentationCapturesStatusBarAppearance"), v9, v10))
    {
      childViewControllerForStatusBarStyle = [(UIViewController *)self childViewControllerForStatusBarStyle];
      _effectiveStatusBarStyleViewController2 = [childViewControllerForStatusBarStyle _effectiveStatusBarStyleViewController];

      if (_effectiveStatusBarStyleViewController2)
      {
        v5 = _effectiveStatusBarStyleViewController2;
        selfCopy = v5;
      }

      else
      {
        selfCopy = self;
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (CGRect)_viewFrameInWindowForContentOverlayInsetsCalculation
{
  _existingView = [(UIViewController *)self _existingView];
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v54 = _existingView;
  window = [_existingView window];
  if (!window)
  {
    goto LABEL_24;
  }

  selfCopy = self;
  if (!selfCopy)
  {
    goto LABEL_24;
  }

  v10 = selfCopy;
  v11 = 0;
  v12 = selfCopy;
  do
  {
    v13 = [(UIViewController *)v12 _existingPresentationControllerImmediate:0 effective:1 includesRoot:1];
    _viewToIgnoreLayerTransformForViewFrameInWindowContentOverlayInsetsCalculation = [v13 _viewToIgnoreLayerTransformForViewFrameInWindowContentOverlayInsetsCalculation];
    containerView = [v13 containerView];
    v16 = containerView;
    if (containerView)
    {
      v17 = containerView;
    }

    else
    {
      v17 = window;
    }

    if (_viewToIgnoreLayerTransformForViewFrameInWindowContentOverlayInsetsCalculation)
    {
      v17 = _viewToIgnoreLayerTransformForViewFrameInWindowContentOverlayInsetsCalculation;
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
      if (!_viewToIgnoreLayerTransformForViewFrameInWindowContentOverlayInsetsCalculation)
      {
        goto LABEL_18;
      }

LABEL_17:
      [_viewToIgnoreLayerTransformForViewFrameInWindowContentOverlayInsetsCalculation _frameIgnoringLayerTransform];
      v35 = v4 + v34;
      v37 = v5 + v36;
      superview = [_viewToIgnoreLayerTransformForViewFrameInWindowContentOverlayInsetsCalculation superview];
      [superview convertRect:v16 toView:{v35, v37, v6, v7}];
      v4 = v39;
      v5 = v40;
      v6 = v41;
      v7 = v42;

      goto LABEL_18;
    }

    superview2 = [v54 superview];
    v53Superview = [superview2 superview];
    [v54 frame];
    [v53Superview convertRect:v18 toView:?];
    v4 = v26;
    v5 = v27;
    v6 = v28;
    v7 = v29;

    if (_viewToIgnoreLayerTransformForViewFrameInWindowContentOverlayInsetsCalculation)
    {
      goto LABEL_17;
    }

LABEL_18:
    if ([v13 _isPresentedInFullScreen])
    {
      presentingViewController = 0;
    }

    else
    {
      presentingViewController = [(UIViewController *)v12 presentingViewController];
    }

    v44 = v16;
    v12 = presentingViewController;
    v11 = v44;
  }

  while (presentingViewController);
  if (v16)
  {
    [v44 convertRect:window toView:{v4, v5, v6, v7}];
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
  _existingView = [(UIViewController *)self _existingView];
  window = [_existingView window];
  [window _managedSafeAreaInsets];
  if ((*(&self->_viewControllerFlags + 4) & 0x40) != 0)
  {
    _lastKnownInterfaceOrientation = [(UIViewController *)self _lastKnownInterfaceOrientation];
    if (!_lastKnownInterfaceOrientation)
    {
      _lastKnownInterfaceOrientation = [window interfaceOrientation];
    }

    windowScene = [window windowScene];
    [windowScene _safeAreaInsetsForInterfaceOrientation:_lastKnownInterfaceOrientation];
    v9 = v41;
    v10 = v42;
    v11 = v43;
    v12 = v44;

    if (window)
    {
      goto LABEL_3;
    }

LABEL_13:
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen overscanCompensationInsets];
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
  if (!window)
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
  [window bounds];
  x = v67.origin.x;
  y = v67.origin.y;
  width = v67.size.width;
  height = v67.size.height;
  CGRectGetMinY(v67);
  UIRoundToViewScale(_existingView);
  v63 = v25;
  v54 = width;
  v55 = x;
  v68.origin.x = x;
  v26 = y;
  v68.origin.y = y;
  v68.size.width = width;
  v68.size.height = height;
  CGRectGetMaxY(v68);
  UIRoundToViewScale(_existingView);
  v28 = v27;
  v69.origin.x = v14;
  v69.origin.y = v16;
  v69.size.width = v18;
  v69.size.height = v20;
  CGRectGetMinY(v69);
  UIRoundToViewScale(_existingView);
  v30 = v29;
  v65 = v18;
  v70.origin.x = v14;
  v58 = v16;
  v70.origin.y = v16;
  v70.size.width = v18;
  rect = v20;
  v70.size.height = v20;
  CGRectGetMaxY(v70);
  UIRoundToViewScale(_existingView);
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
    _responderWindow = [(UIResponder *)self _responderWindow];
    _isHostedInAnotherProcess = [_responderWindow _isHostedInAnotherProcess];

    if (!_isHostedInAnotherProcess)
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
  if (self)
  {
    [self _updateContentOverlayInsetsFromParentIfNecessary];
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    mutableChildViewControllers = [self mutableChildViewControllers];
    v3 = [mutableChildViewControllers countByEnumeratingWithState:&v7 objects:v11 count:16];
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
            objc_enumerationMutation(mutableChildViewControllers);
          }

          [(UIViewController *)*(*(&v7 + 1) + 8 * v6++) _recursiveUpdateContentOverlayInsetsFromParentIfNecessary];
        }

        while (v4 != v6);
        v4 = [mutableChildViewControllers countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }
  }
}

- (id)viewControllerForRotation
{
  if (self)
  {
    selfCopy = self;
    v2 = objc_autoreleasePoolPush();
    _window = [selfCopy _window];
    _rotationViewControllers = [_window _rotationViewControllers];

    if (([selfCopy isPerformingModalTransition] & 1) == 0)
    {
      childModalViewController = [selfCopy childModalViewController];
      if (childModalViewController)
      {
        v6 = childModalViewController;
        childModalViewController2 = [selfCopy childModalViewController];
        v8 = [_rotationViewControllers containsObject:childModalViewController2];

        if ((v8 & 1) == 0)
        {
          childModalViewController3 = [selfCopy childModalViewController];
          viewControllerForRotation = [UIViewController viewControllerForRotation];

          selfCopy = viewControllerForRotation;
        }
      }
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_visibleView
{
  viewControllerForRotation = [(UIViewController *)self viewControllerForRotation];
  dropShadowView = [viewControllerForRotation dropShadowView];
  if (dropShadowView)
  {
    [viewControllerForRotation dropShadowView];
  }

  else
  {
    [viewControllerForRotation view];
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
  if (self)
  {
    self = self[12];
    v1 = vars8;
  }

  return self;
}

- (uint64_t)_didSelfOrAncestorBeginAppearanceTransition
{
  if (!self)
  {
    return 0;
  }

  if (self[41] > 0)
  {
    return 1;
  }

  parentViewController = [self parentViewController];
  v3 = parentViewController;
  if (parentViewController)
  {
    _didSelfOrAncestorBeginAppearanceTransition = [(UIViewController *)parentViewController _didSelfOrAncestorBeginAppearanceTransition];
  }

  else
  {
    _didSelfOrAncestorBeginAppearanceTransition = 0;
  }

  return _didSelfOrAncestorBeginAppearanceTransition;
}

- (id)_keyboardSceneDelegate
{
  if (self)
  {
    _window = [self _window];
    windowScene = [_window windowScene];
    keyboardSceneDelegate = [windowScene keyboardSceneDelegate];

    if (!keyboardSceneDelegate)
    {
      keyboardSceneDelegate = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    }
  }

  else
  {
    keyboardSceneDelegate = 0;
  }

  return keyboardSceneDelegate;
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
  selfCopy = self;
  if (self)
  {
    if (_UISolariumEnabled() && ([UIApp _isSpringBoard] & 1) == 0 && -[NSMutableArray count](selfCopy->_childViewControllers, "count") == 1 && -[UIViewController preferredStatusBarStyle](selfCopy, "preferredStatusBarStyle") == UIStatusBarStyleDefault)
    {
      firstObject = [(NSMutableArray *)selfCopy->_childViewControllers firstObject];
      childViewControllerForStatusBarStyle = [firstObject childViewControllerForStatusBarStyle];
      v5 = childViewControllerForStatusBarStyle;
      if (childViewControllerForStatusBarStyle)
      {
        firstObject2 = childViewControllerForStatusBarStyle;
      }

      else
      {
        firstObject2 = [(NSMutableArray *)selfCopy->_childViewControllers firstObject];
      }

      selfCopy = firstObject2;

      if ((objc_opt_respondsToSelector() & 1) != 0 && ([(UIViewController *)selfCopy _hasInProcessStatusBarLumaTracking]& 1) != 0)
      {
        goto LABEL_13;
      }
    }

    selfCopy = 0;
  }

LABEL_13:

  return selfCopy;
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
  _existingView = [(UIViewController *)self _existingView];
  window = [_existingView window];

  v4 = 0.0;
  if (window && ([UIApp _sceneInterfaceOrientationFromWindow:window] - 1) <= 3)
  {
    v5 = __UIStatusBarManagerForWindow(window);
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
    title = [(UIViewController *)self title];
    v6 = [(UITabBarItem *)v4 initWithTitle:title image:0 tag:0];
    v7 = self->_tabBarItem;
    self->_tabBarItem = v6;

    tabBarItem = self->_tabBarItem;
  }

  return tabBarItem;
}

- (UITab)_resolvedTab
{
  _uip_tabElement = [(UIViewController *)self _uip_tabElement];
  v4 = _uip_tabElement;
  if (_uip_tabElement)
  {
    v5 = _uip_tabElement;
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
  selfCopy = self;
  if (self)
  {
    presentingViewController = [self presentingViewController];
    if (presentingViewController)
    {
      if ([selfCopy modalPresentationStyle])
      {
        _nearestFullScreenAncestorViewController = [(UIViewController *)presentingViewController _nearestFullScreenAncestorViewController];
      }

      else
      {
        _nearestFullScreenAncestorViewController = selfCopy;
      }

      selfCopy = _nearestFullScreenAncestorViewController;
    }

    else
    {
      v4 = selfCopy;
      _parentViewController = [(UIViewController *)v4 _parentViewController];

      if (_parentViewController)
      {
        do
        {
          selfCopy = [(UIViewController *)v4 _parentViewController];

          _parentViewController2 = [(UIViewController *)selfCopy _parentViewController];

          v4 = selfCopy;
        }

        while (_parentViewController2);
      }

      else
      {
        selfCopy = v4;
      }
    }
  }

  return selfCopy;
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v49 = objc_opt_class();
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:3313 description:{@"Application circumvented Objective-C runtime dealloc initiation for <%s> object.", class_getName(v49)}];
  }

  v4 = objc_autoreleasePoolPush();
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v76[0] = @"UIApplicationSuspendedNotification";
  v76[1] = @"UIApplicationResumedNotification";
  v76[2] = @"UIApplicationWantsViewsToDisappearNotification";
  v76[3] = @"UIAccessibilityLargeTextChangedNotification";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:4];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v6 names:?];

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

  _useViewBasedTopAndBottomLayoutGuides = [(UIViewController *)self _useViewBasedTopAndBottomLayoutGuides];
  topLayoutGuide = self->_topLayoutGuide;
  if (_useViewBasedTopAndBottomLayoutGuides)
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
  __viewDelegate = [(UIView *)&self->_view->super.super.isa __viewDelegate];

  if (__viewDelegate == self)
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
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            v26 = objc_opt_class();
            v50 = NSStringFromClass(v26);
            [currentHandler2 handleFailureInMethod:v52 object:self file:@"UIViewController.m" lineNumber:3367 description:{@"Child VC has a different parent VC than self <%@: %p>: %@, parent: %@", v50, self, v25, *(v25 + 96)}];
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
    presentedViewController = [(UIViewController *)self presentedViewController];
    selfCopy = [presentedViewController _viewControllerForObservableScrollView];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (void)_traitOverrides
{
  if (self)
  {
    selfCopy = self;
    v3 = self[52];
    if (!v3)
    {
      v4 = [[_UITraitOverrides alloc] initWithDelegate:self];
      v5 = selfCopy[52];
      selfCopy[52] = v4;

      v3 = selfCopy[52];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (id)_effectiveControllersForAlwaysOnTimelines
{
  v12[1] = *MEMORY[0x1E69E9840];
  presentedViewController = [(UIViewController *)self presentedViewController];
  _effectiveControllersForAlwaysOnTimelines = [presentedViewController _effectiveControllersForAlwaysOnTimelines];

  if (!_effectiveControllersForAlwaysOnTimelines)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([-[UIViewController performSelector:](self performSelector:{sel_puic_childViewControllerForAlwaysOnTimelines), "_effectiveControllersForAlwaysOnTimelines"}], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      _childViewControllersForAlwaysOnTimelines = [(UIViewController *)self _childViewControllersForAlwaysOnTimelines];
      array = [MEMORY[0x1E695DF70] array];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __85__UIViewController__UIAlwaysOnEnvironment___effectiveControllersForAlwaysOnTimelines__block_invoke;
      v10[3] = &unk_1E70F5BE0;
      v8 = array;
      v11 = v8;
      [_childViewControllersForAlwaysOnTimelines enumerateObjectsUsingBlock:v10];
      if ([v8 count])
      {
        _effectiveControllersForAlwaysOnTimelines = [v8 copy];
      }

      else
      {
        _effectiveControllersForAlwaysOnTimelines = 0;
      }

      if (_effectiveControllersForAlwaysOnTimelines)
      {
        goto LABEL_10;
      }

      v12[0] = self;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    }

    _effectiveControllersForAlwaysOnTimelines = v5;
  }

LABEL_10:

  return _effectiveControllersForAlwaysOnTimelines;
}

- (id)_childViewControllersForAlwaysOnTimelines
{
  v6[1] = *MEMORY[0x1E69E9840];
  _childViewControllerForAlwaysOnTimelines = [(UIViewController *)self _childViewControllerForAlwaysOnTimelines];
  v3 = _childViewControllerForAlwaysOnTimelines;
  if (_childViewControllerForAlwaysOnTimelines)
  {
    v6[0] = _childViewControllerForAlwaysOnTimelines;
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
  if (!self)
  {
    return;
  }

  v23 = [*(self + 608) objectForKey:&unk_1EFE30280];
  v2 = [*(self + 608) objectForKey:&unk_1EFE30298];
  v3 = [(UIViewController *)self _resolveContentScrollViewForEdge:?];
  v4 = [(UIViewController *)self _resolveContentScrollViewForEdge:?];
  presentingViewController = [self presentingViewController];
  navigationController = [presentingViewController navigationController];
  _outermostNavigationController = [navigationController _outermostNavigationController];
  v8 = _outermostNavigationController;
  if (_outermostNavigationController)
  {
    _outermostNavigationController2 = _outermostNavigationController;
  }

  else
  {
    navigationController2 = [self navigationController];
    _outermostNavigationController2 = [navigationController2 _outermostNavigationController];
  }

  presentingViewController2 = [0 presentingViewController];
  _containingTabBarController = [(UIViewController *)presentingViewController2 _containingTabBarController];
  v13 = _containingTabBarController;
  if (_containingTabBarController)
  {
    v14 = _containingTabBarController;
  }

  else
  {
    v22 = v4;
    _containingTabBarController2 = [(UIViewController *)_outermostNavigationController2 _containingTabBarController];
    v16 = _containingTabBarController2;
    if (_containingTabBarController2)
    {
      v14 = _containingTabBarController2;
    }

    else
    {
      _containingTabBarController3 = [(UIViewController *)presentingViewController _containingTabBarController];
      v18 = _containingTabBarController3;
      if (_containingTabBarController3)
      {
        _containingTabBarController4 = _containingTabBarController3;
      }

      else
      {
        _containingTabBarController4 = [(UIViewController *)self _containingTabBarController];
      }

      v14 = _containingTabBarController4;
    }

    v4 = v22;
  }

  if (v23 != v3 && v2 != v4)
  {
    if (v23 == v2)
    {
      [_outermostNavigationController2 _observableScrollViewDidChangeFrom:? forViewController:? edges:?];
      v20 = v14;
      goto LABEL_23;
    }

    [_outermostNavigationController2 _observableScrollViewDidChangeFrom:? forViewController:? edges:?];
    goto LABEL_21;
  }

  if (v23 != v3)
  {
    v20 = _outermostNavigationController2;
LABEL_23:
    [v20 _observableScrollViewDidChangeFrom:v22 forViewController:? edges:?];
    goto LABEL_24;
  }

  if (v2 != v4)
  {
LABEL_21:
    [_outermostNavigationController2 _observableScrollViewDidChangeFrom:v2 forViewController:self edges:{4, v22}];
    v20 = v14;
    goto LABEL_23;
  }

LABEL_24:
  if ((*(self + 376) & 3u) - 1 <= 1)
  {
    [UIViewController _updateViewSafeAreaInsetsAndEagerlyUpdateContentScrollView:self];
  }

  v21 = *(self + 616);
  if (v21)
  {
    [v21 reconfigureContentScrollView];
  }
}

- (BOOL)_ancestorViewControllerIsInPopover
{
  _rootAncestorViewController = [(UIViewController *)self _rootAncestorViewController];
  _popoverController = [_rootAncestorViewController _popoverController];
  v4 = _popoverController != 0;

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
  navigationController = [(UIViewController *)self navigationController];
  _isLayingOutTopViewController = [navigationController _isLayingOutTopViewController];

  return _isLayingOutTopViewController;
}

- (_UIFocusPlatformBehavior)_focusBehavior
{
  _focusSystem = [(UIViewController *)self _focusSystem];
  behavior = [_focusSystem behavior];

  return behavior;
}

- (BOOL)_containsFirstResponder
{
  if ([(UIResponder *)self isFirstResponder]|| [(UIView *)self->_view _isAncestorOfFirstResponder])
  {
    return 1;
  }

  titleView = [(UINavigationItem *)self->_navigationItem titleView];
  _isAncestorOfFirstResponder = [titleView _isAncestorOfFirstResponder];

  return _isAncestorOfFirstResponder;
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
  if ([self autoresizesArchivedViewToFullSize] && objc_msgSend(self, "isViewLoaded"))
  {
    _existingView = [self _existingView];
    [self _defaultInitialViewFrame];
    [_existingView setFrame:?];
  }
}

- (UISheetPresentationController)sheetPresentationController
{
  presentingViewController = [(UIViewController *)self presentingViewController];
  v4 = presentingViewController;
  if (presentingViewController)
  {
    _originalPresentationController = [presentingViewController _originalPresentationController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      _originalPresentationController2 = [v4 _originalPresentationController];
LABEL_17:
      v15 = _originalPresentationController2;
      goto LABEL_19;
    }
  }

  else
  {
    modalPresentationStyle = [(UIViewController *)self modalPresentationStyle];
    if (self->_temporaryPresentationController)
    {
      v9 = 1;
    }

    else
    {
      v9 = modalPresentationStyle > 0x10;
    }

    if (!v9 && ((1 << modalPresentationStyle) & 0x10006) != 0)
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

    _temporaryPresentationController = [(UIViewController *)self _temporaryPresentationController];
    objc_opt_class();
    v14 = objc_opt_isKindOfClass();

    if (v14)
    {
      _originalPresentationController2 = [(UIViewController *)self _temporaryPresentationController];
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

  _popoverController = [(UIViewController *)self _popoverController];

  if (!_popoverController)
  {
    selfCopy = self;
    v6 = selfCopy->_parentViewController;
    if (v6)
    {
      v7 = v6;
      do
      {
        p_isa = v7;

        v7 = p_isa[12];
        selfCopy = p_isa;
      }

      while (v7);
    }

    else
    {
      p_isa = &selfCopy->super.super.isa;
    }

    _existingView = [p_isa _existingView];
    window = [_existingView window];

    rootViewController = [window rootViewController];
    _rootAncestorViewController = [p_isa _rootAncestorViewController];

    if (rootViewController == _rootAncestorViewController)
    {
      _lastKnownInterfaceOrientation = [p_isa _lastKnownInterfaceOrientation];
      if (!window)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (window && [window _windowInterfaceOrientation])
      {
        _lastKnownInterfaceOrientation = [window _windowInterfaceOrientation];
      }

      else
      {
        _defaultUISceneOrMainScreenPlaceholderIfExists = [UIApp _defaultUISceneOrMainScreenPlaceholderIfExists];
        _lastKnownInterfaceOrientation = [_defaultUISceneOrMainScreenPlaceholderIfExists _interfaceOrientation];
      }

      if (_lastKnownInterfaceOrientation <= UIInterfaceOrientationPortrait)
      {
        _lastKnownInterfaceOrientation = UIInterfaceOrientationPortrait;
      }

      if (!window)
      {
        goto LABEL_20;
      }
    }

    _lastKnownInterfaceOrientation2 = [p_isa _lastKnownInterfaceOrientation];
    windowScene = [window windowScene];
    _interfaceOrientation = [windowScene _interfaceOrientation];

    if (_lastKnownInterfaceOrientation2 == _interfaceOrientation)
    {
LABEL_21:

      return _lastKnownInterfaceOrientation;
    }

LABEL_20:
    _lastKnownInterfaceOrientation = [p_isa _preferredInterfaceOrientationGivenCurrentOrientation:_lastKnownInterfaceOrientation];
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

  parentViewController = [self parentViewController];
  v4 = parentViewController;
  if (parentViewController && ([parentViewController isSettingAppearState] & 1) != 0)
  {
    v2 = 0;
  }

  else
  {
    _effectiveInteractionActivityTrackingBaseName = [self _effectiveInteractionActivityTrackingBaseName];
    v2 = _effectiveInteractionActivityTrackingBaseName != 0;
  }

  return v2;
}

- (NSString)_effectiveInteractionActivityTrackingBaseName
{
  interactionActivityTrackingBaseName = [(UIViewController *)self interactionActivityTrackingBaseName];
  if (!interactionActivityTrackingBaseName)
  {
    if (([(UIViewController *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
    {
      v6 = objc_opt_class();
      nibName2 = NSStringFromClass(v6);
      goto LABEL_6;
    }

    nibName = [(UIViewController *)self nibName];

    if (nibName)
    {
      nibName2 = [(UIViewController *)self nibName];
LABEL_6:
      interactionActivityTrackingBaseName = nibName2;
      goto LABEL_7;
    }

    view = [(UIViewController *)self view];
    interactionActivityTrackingBaseName = [view accessibilityIdentifier];
  }

LABEL_7:

  return interactionActivityTrackingBaseName;
}

- (id)_effectiveExclusiveCollectionPhysicalButtonConfigurationViewController
{
  _presentedStatusBarViewController = [(UIViewController *)self _presentedStatusBarViewController];
  _existingView = [_presentedStatusBarViewController _existingView];
  if (_existingView)
  {
    v5 = _presentedStatusBarViewController;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 _existingPresentationControllerImmediate:0 effective:1];
    presentationStyle = [v7 presentationStyle];
    if (presentationStyle == 7 || presentationStyle == 20)
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

  selfCopy = [v11 _effectiveExclusiveCollectionPhysicalButtonConfigurationViewController];
  _existingView2 = [(UIViewController *)selfCopy _existingView];
  if (_existingView2)
  {
    v14 = selfCopy;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (!v15)
  {
    _childViewControllerForExclusiveCollectionPhysicalButtonConfigurations = [(UIViewController *)self _childViewControllerForExclusiveCollectionPhysicalButtonConfigurations];
    selfCopy = [_childViewControllerForExclusiveCollectionPhysicalButtonConfigurations _effectiveExclusiveCollectionPhysicalButtonConfigurationViewController];

    _existingView3 = [(UIViewController *)selfCopy _existingView];
    v18 = _existingView3 ? selfCopy : 0;
    v19 = v18;

    if (!v19)
    {
      selfCopy = self;
    }
  }

  return selfCopy;
}

- (NSArray)_relevantToolbarItems
{
  selfCopy = self;
  v44 = *MEMORY[0x1E69E9840];
  relevantToolbarItems = self->_relevantToolbarItems;
  if (relevantToolbarItems)
  {
    goto LABEL_39;
  }

  if (!_UISolariumEnabled())
  {
    v26 = [(NSArray *)selfCopy->_toolbarItems copy];
    v27 = selfCopy->_relevantToolbarItems;
    selfCopy->_relevantToolbarItems = v26;

    goto LABEL_35;
  }

  _existingNavigationItem = [(UIViewController *)selfCopy _existingNavigationItem];
  traitCollection = [(UIViewController *)selfCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    goto LABEL_4;
  }

  if (!_existingNavigationItem)
  {
    v7 = 0;
    goto LABEL_5;
  }

  if (![_existingNavigationItem searchBarPlacementAllowsToolbarIntegration])
  {
LABEL_4:
    v7 = 1;
  }

  else
  {
    _searchControllerIfAllowed = [_existingNavigationItem _searchControllerIfAllowed];
    v7 = _searchControllerIfAllowed == 0;
  }

LABEL_5:
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = selfCopy->_toolbarItems;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (!v9)
  {

    goto LABEL_33;
  }

  v10 = v9;
  v32 = selfCopy;
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

        _vendingNavigationItem = [v14 _vendingNavigationItem];
        if (_vendingNavigationItem)
        {
          v16 = _vendingNavigationItem;
          _vendingNavigationItem2 = [v14 _vendingNavigationItem];

          if (_existingNavigationItem != _vendingNavigationItem2)
          {
            if (os_variant_has_internal_diagnostics())
            {
              v21 = __UIFaultDebugAssertLog();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
              {
                _vendingNavigationItem3 = [v14 _vendingNavigationItem];
                *buf = 138412802;
                v38 = v32;
                v39 = 2112;
                v40 = _existingNavigationItem;
                v41 = 2112;
                v42 = _vendingNavigationItem3;
                _os_log_fault_impl(&dword_188A29000, v21, OS_LOG_TYPE_FAULT, "Ignoring searchBarPlacementBarButtonItem because its vending navigation item does not match the view controller's. view controller: %@; vc's navigationItem = %@; vending navigation item %@", buf, 0x20u);
              }
            }

            else
            {
              v18 = *(__UILogGetCategoryCachedImpl("Assert", &_relevantToolbarItems___s_category) + 8);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                v19 = v18;
                _vendingNavigationItem4 = [v14 _vendingNavigationItem];
                *buf = 138412802;
                v38 = v32;
                v39 = 2112;
                v40 = _existingNavigationItem;
                v41 = 2112;
                v42 = _vendingNavigationItem4;
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

  selfCopy = v32;
  if (v11)
  {
    v24 = [(NSArray *)v11 copy];
    v25 = v32->_relevantToolbarItems;
    v32->_relevantToolbarItems = v24;

    goto LABEL_34;
  }

LABEL_33:
  v29 = [(NSArray *)selfCopy->_toolbarItems copy];
  v11 = selfCopy->_relevantToolbarItems;
  selfCopy->_relevantToolbarItems = v29;
LABEL_34:

LABEL_35:
  if (selfCopy->_relevantToolbarItems)
  {
    v30 = selfCopy->_relevantToolbarItems;
  }

  else
  {
    v30 = MEMORY[0x1E695E0F0];
  }

  objc_storeStrong(&selfCopy->_relevantToolbarItems, v30);
  relevantToolbarItems = selfCopy->_relevantToolbarItems;
LABEL_39:

  return relevantToolbarItems;
}

- (id)_viewControllerForDismissal
{
  if (self)
  {
    _presentationController = [self _presentationController];
    _presentingOrPresented = [_presentationController _presentingOrPresented];

    if (_presentingOrPresented)
    {
      selfCopy = self;
    }

    else
    {
      presentedViewController = [self presentedViewController];
      v6 = [presentedViewController _existingPresentationControllerImmediate:1 effective:1];
      _presentingOrPresented2 = [v6 _presentingOrPresented];

      if (!_presentingOrPresented2 || ([presentedViewController presentingViewController], (selfCopy = objc_claimAutoreleasedReturnValue()) == 0))
      {
        selfCopy = [self presentingViewController];
      }
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)_willPreemptRunningTransitionForDismissal
{
  _viewControllerForDismissal = [(UIViewController *)self _viewControllerForDismissal];
  presentedViewController = [_viewControllerForDismissal presentedViewController];
  isBeingDismissed = [presentedViewController isBeingDismissed];

  if (isBeingDismissed)
  {
    prefersPreemptionEnabledForPresentations = 0;
  }

  else
  {
    _presentationController = [_viewControllerForDismissal _presentationController];
    _transitionContext = [_presentationController _transitionContext];

    _animator = [_transitionContext _animator];
    if (objc_opt_respondsToSelector())
    {
      prefersPreemptionEnabledForPresentations = [_animator prefersPreemptionEnabledForPresentations];
    }

    else
    {
      prefersPreemptionEnabledForPresentations = 0;
    }
  }

  return prefersPreemptionEnabledForPresentations;
}

- (id)_hostingNavigationBar
{
  if ([(NSMutableArray *)self->_childViewControllers count]== 1)
  {
    firstObject = [(NSMutableArray *)self->_childViewControllers firstObject];
    _hostingNavigationBar = [firstObject _hostingNavigationBar];
  }

  else
  {
    _hostingNavigationBar = 0;
  }

  return _hostingNavigationBar;
}

- (BOOL)_isInViewControllerThatHandlesKeyboardAvoidance
{
  v3 = [(UIViewController *)self _existingPresentationControllerImmediate:0 effective:1];
  _popoverController = [(UIViewController *)self _popoverController];
  if (_popoverController)
  {
  }

  else if (([v3 _handlesKeyboardAvoidance] & 1) == 0)
  {
    _multiColumnViewController = [(UIViewController *)self _multiColumnViewController];

    v5 = _multiColumnViewController != 0;
    goto LABEL_5;
  }

  v5 = 1;
LABEL_5:

  return v5;
}

- (id)_nonPresentationAppearanceContainer
{
  _existingView = [(UIViewController *)self _existingView];
  superview = [_existingView superview];

  if (dyld_program_sdk_at_least() && !superview)
  {
    superview = [(UIViewController *)self _window];
  }

  return superview;
}

- (id)_contentScrollView
{
  if ((~*&self->_viewControllerFlags & 0x900000000000000) == 0)
  {
    goto LABEL_2;
  }

  contentScrollView = [(UIViewController *)self contentScrollView];
  v2 = contentScrollView;
  viewControllerFlags = self->_viewControllerFlags;
  if ((viewControllerFlags & 0x100000000000000) != 0 && (viewControllerFlags & 0x400000000000000) == 0)
  {
    if (contentScrollView)
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
  _parentModalViewController = [(UIViewController *)self _parentModalViewController];
  _presentationController = [_parentModalViewController _presentationController];

  if (_presentationController)
  {
    _parentModalViewController2 = [(UIViewController *)self _parentModalViewController];
    _presentationController2 = [_parentModalViewController2 _presentationController];
  }

  else
  {
    _presentationController2 = [(UIViewController *)self _nonPresentationAppearanceContainer];
  }

  return _presentationController2;
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
    view = [(UIViewController *)self view];
    window = [view window];

    if (!window)
    {
      goto LABEL_8;
    }
  }

  else
  {
    window = [(UIViewController *)self _window];
    if (!window)
    {
LABEL_8:
      v7 = (*(&self->_viewControllerFlags + 1) >> 3) & 1;
      goto LABEL_9;
    }
  }

  screen = [window screen];
  mainScreen = [objc_opt_self() mainScreen];

  if (screen == mainScreen)
  {
    goto LABEL_8;
  }

  LOBYTE(v7) = 0;
LABEL_9:

  return v7;
}

- (UIContentUnavailableConfigurationState)_bridgedContentUnavailableConfigurationState
{
  selfCopy = self;
  _contentUnavailableConfigurationState = [(UIViewController *)selfCopy _contentUnavailableConfigurationState];
  sub_188C36830(_contentUnavailableConfigurationState, v9);

  v4 = v9[0];
  v8 = v9[4];
  sub_188C36CC8();
  v6 = v5;

  return v6;
}

- (id)_contentUnavailableConfigurationState
{
  v3 = [UIContentUnavailableConfigurationState alloc];
  traitCollection = [(UIViewController *)self traitCollection];
  v5 = [(UIContentUnavailableConfigurationState *)v3 initWithTraitCollection:traitCollection];

  navigationItem = [(UIViewController *)self navigationItem];
  searchController = [navigationItem searchController];
  searchBar = [searchController searchBar];
  text = [searchBar text];
  [(UIContentUnavailableConfigurationState *)v5 setSearchText:text];

  return v5;
}

- (UIMultiColumnViewController)_multiColumnViewController
{
  v3 = objc_opt_class();

  return [(UIViewController *)self _ancestorViewControllerOfClass:v3 allowModalParent:0];
}

- (void)_unloadHierarchyInputAccessoryViewIfNecessary
{
  if (self)
  {
    _keyboardSceneDelegate = [(UIViewController *)self _keyboardSceneDelegate];
    v2 = [MEMORY[0x1E696B098] valueWithPointer:self];
    [_keyboardSceneDelegate _endPersistingInputAccessoryViewWithId:v2];
  }
}

- (id)_definiteTransitionCoordinator
{
  transitionCoordinator = [(UIViewController *)self transitionCoordinator];
  if (!transitionCoordinator)
  {
    v4 = [_UIViewControllerImmediateAnimationTransitionCoordinator alloc];
    _existingView = [(UIViewController *)self _existingView];
    transitionCoordinator = [(_UIViewControllerImmediateAnimationTransitionCoordinator *)v4 initWithContainerView:_existingView];
  }

  return transitionCoordinator;
}

- (void)_executeAfterAppearanceBlock
{
  if (self->_afterAppearance)
  {
    *&self->_viewControllerFlags |= 0x20000000uLL;
    afterAppearanceBlock = [(UIViewController *)self afterAppearanceBlock];
    afterAppearanceBlock[2]();

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
  contentUnavailableConfiguration = [(UIViewController *)self contentUnavailableConfiguration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = contentUnavailableConfiguration;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIPresentationController)presentationController
{
  _parentModalViewController = [(UIViewController *)self _parentModalViewController];

  if (_parentModalViewController)
  {
    _parentModalViewController2 = [(UIViewController *)self _parentModalViewController];
    _originalPresentationController = [_parentModalViewController2 _originalPresentationController];
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

    _originalPresentationController = [(UIViewController *)self _temporaryPresentationController];
  }

  return _originalPresentationController;
}

- (id)_defaultAnimationController
{
  v2 = [[UIViewControllerBuiltinTransitionViewAnimator alloc] initWithTransition:0];

  return v2;
}

- (BOOL)_willPreemptRunningPresentationTransition
{
  v2 = [(UIViewController *)self _nonModalAncestorViewControllerStopAtIsPresentationContext:0];
  _presentationController = [v2 _presentationController];
  _transitionContext = [_presentationController _transitionContext];

  _animator = [_transitionContext _animator];
  prefersPreemptionEnabledForPresentations = 0;
  if (objc_opt_respondsToSelector())
  {
    prefersPreemptionEnabledForPresentations = [_animator prefersPreemptionEnabledForPresentations];
  }

  return prefersPreemptionEnabledForPresentations;
}

- (void)_isWaitingForDelayedPresentation
{
  if (result)
  {
    v1 = objc_getAssociatedObject(result, &unk_1ED498592);
    _isDelayingPresentation = [v1 _isDelayingPresentation];

    return _isDelayingPresentation;
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
  if ([self _shouldDeferTransitions])
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
  _overrideTransitioningDelegate = [(UIViewController *)self _overrideTransitioningDelegate];
  v4 = _overrideTransitioningDelegate;
  if (_overrideTransitioningDelegate)
  {
    WeakRetained = _overrideTransitioningDelegate;
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
  presentedViewController = [(UIViewController *)self presentedViewController];
  if (presentedViewController)
  {
    currentAction = self->_currentAction;
    if (currentAction)
    {
      if (currentAction->_transition == 13)
      {
        curlUpRevealedHeight = currentAction->_curlUpRevealedHeight;
        v12 = curlUpRevealedHeight;
        v5 = presentedViewController;
        if (curlUpRevealedHeight == 0.0)
        {
          view = [presentedViewController view];
          [view bounds];
          _UIViewCurlUpTransitionToTime(&v12, v7, v8);

          v5 = presentedViewController;
          curlUpRevealedHeight = v12;
        }

        [(UIViewController *)v5 _addCurlUpTapGestureRecognizerWithRevealedHeight:?];
      }
    }
  }

  *&self->_viewControllerFlags &= ~0x200000uLL;
  v9 = self->_currentAction;
  self->_currentAction = 0;

  _rootAncestorViewController = [(UIViewController *)self _rootAncestorViewController];
  [_rootAncestorViewController setNeedsUpdateOfSupportedInterfaceOrientations];
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
    currentAction = [(UIViewController *)self currentAction];
    v3 = currentAction;
    if (currentAction)
    {
      v4 = *(currentAction + 24);
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
  if (self)
  {
    self = self[16];
    v1 = vars8;
  }

  return self;
}

- (BOOL)prefersStatusBarHidden
{
  if ([objc_opt_class() doesOverrideViewControllerMethod:sel__preferredStatusBarVisibility])
  {
    _preferredStatusBarVisibility = [(UIViewController *)self _preferredStatusBarVisibility];
  }

  else
  {
    _preferredStatusBarVisibility = [(UIViewController *)self _defaultViewControllerStatusBarVisibilityBehavior];
  }

  return _preferredStatusBarVisibility == 1;
}

- (id)_activityContinuationSuitableToBecomeCurrent
{
  v21 = *MEMORY[0x1E69E9840];
  childModalViewController = [(UIViewController *)self childModalViewController];
  v4 = childModalViewController;
  if (!childModalViewController || ([childModalViewController _activityContinuationSuitableToBecomeCurrent], (userActivity = objc_claimAutoreleasedReturnValue()) == 0))
  {
    _additionalViewControllersToCheckForUserActivity = [(UIViewController *)self _additionalViewControllersToCheckForUserActivity];
    v7 = _additionalViewControllersToCheckForUserActivity;
    if (_additionalViewControllersToCheckForUserActivity && [_additionalViewControllersToCheckForUserActivity count])
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

            _activityContinuationSuitableToBecomeCurrent = [*(*(&v16 + 1) + 8 * i) _activityContinuationSuitableToBecomeCurrent];
            if (_activityContinuationSuitableToBecomeCurrent)
            {
              userActivity = _activityContinuationSuitableToBecomeCurrent;

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

    _existingView = [(UIViewController *)self _existingView];
    window = [_existingView window];

    if (window)
    {
      userActivity = [(UIResponder *)self userActivity];
    }

    else
    {
      userActivity = 0;
    }
  }

LABEL_18:

  return userActivity;
}

- (id)_userActionDescription
{
  if (self)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    _addUserActionDescription(self, dictionary);
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

- (void)_updateContentUnavailableConfigurationWithObservationTracking
{
  selfCopy = self;
  sub_188CC96E4();
}

- (void)_executeContentUnavailableConfigurationUpdate
{
  if (self)
  {
    contentUnavailableConfigurationState = [self contentUnavailableConfigurationState];
    memset(__src, 0, sizeof(__src));
    _UIBeginTrackingTraitUsage(self, 0, __src);
    contentUnavailableConfiguration = [self contentUnavailableConfiguration];
    v4 = [contentUnavailableConfiguration updatedConfigurationForState:contentUnavailableConfigurationState];

    [(UIViewController *)self _applyContentUnavailableConfiguration:v4];
    [self updateContentUnavailableConfigurationUsingState:contentUnavailableConfigurationState];
    [self _updateContentUnavailableConfigurationUsingState:contentUnavailableConfigurationState];
    [self _bridgedUpdateContentUnavailableConfigurationUsingState:contentUnavailableConfigurationState];
    memcpy(v10, __src, sizeof(v10));
    TraitCollectionTSD = GetTraitCollectionTSD();
    memcpy(__dst, TraitCollectionTSD + 16, sizeof(__dst));
    memcpy(TraitCollectionTSD + 16, v10, 0x170uLL);
    v6 = __dst[22] & ~*&__src[11];
    v7 = *&__src[11] & ~__dst[22];
    v8 = __dst[22] & *&__src[11];
    v9 = [self methodForSelector:sel_updateContentUnavailableConfigurationUsingState_];
    *&v10[0] = v6;
    *(&v10[0] + 1) = v7;
    *&v10[1] = v8;
    [(UIViewController *)self _recordTraitUsage:v10 trackedStateDiff:v9 insideMethod:sel_setNeedsUpdateContentUnavailableConfiguration withInvalidationAction:?];
    _UITraitUsageTrackingResultDestroy(__dst);
  }
}

- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)state
{
  sub_188C36830(state, v5);
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
  _extensionContextUUID = [(UIViewController *)self _extensionContextUUID];
  selfCopy = self;
  v5 = _extensionContextUUID == 0;
  if (!selfCopy || _extensionContextUUID)
  {
    goto LABEL_20;
  }

  do
  {
    v6 = selfCopy->_parentViewController;
    v7 = v6;
    if (v6)
    {
      _parentModalViewController = selfCopy;
      selfCopy = v6;
      goto LABEL_13;
    }

    _parentModalViewController = [(UIViewController *)selfCopy _parentModalViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = _parentModalViewController;
      localViewController = [(UIViewController *)v9 localViewController];
LABEL_11:
      v14 = localViewController;

      selfCopy = v9;
      v9 = v14;
      goto LABEL_12;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v12 = _parentModalViewController;
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

      localViewController = isa;
      goto LABEL_11;
    }

LABEL_12:

    selfCopy = v9;
LABEL_13:

    _extensionContextUUID2 = [(UIViewController *)selfCopy _extensionContextUUID];
    v5 = _extensionContextUUID2 == 0;
    if (_extensionContextUUID2)
    {
      v16 = 1;
    }

    else
    {
      v16 = selfCopy == 0;
    }
  }

  while (!v16);
  _extensionContextUUID = _extensionContextUUID2;
LABEL_20:
  if (v5)
  {
    v17 = 0;
  }

  else
  {
    _sharedExtensionContextVendor = [MEMORY[0x1E696B0F8] _sharedExtensionContextVendor];
    v17 = [_sharedExtensionContextVendor _extensionContextForUUID:_extensionContextUUID];
  }

  return v17;
}

- (void)_willExitAlwaysOn
{
  _childViewControllersForAlwaysOnTimelines = [(UIViewController *)self _childViewControllersForAlwaysOnTimelines];
  [_childViewControllersForAlwaysOnTimelines enumerateObjectsUsingBlock:&__block_literal_global_47_2];
}

- (UIFocusEnvironment)parentFocusEnvironment
{
  _existingView = [(UIViewController *)self _existingView];
  superview = [_existingView superview];

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

  if (!superview)
  {
    parentViewController = [(UIViewController *)self parentViewController];
    _existingView2 = [parentViewController _existingView];
    v7 = _existingView2;
    v8 = _existingView2 ? _existingView2 : parentViewController;
    superview = v8;

    if (!superview)
    {
      presentingViewController = [(UIViewController *)self presentingViewController];
      _existingView3 = [presentingViewController _existingView];
      v11 = _existingView3;
      if (_existingView3)
      {
        v12 = _existingView3;
      }

      else
      {
        v12 = presentingViewController;
      }

      superview = v12;
    }
  }

LABEL_13:

  return superview;
}

- (id)_nextViewController
{
  _parentViewController = [(UIViewController *)&self->super.super.isa _parentViewController];
  if (!_parentViewController)
  {
    _popoverController = [(UIViewController *)self _popoverController];
    _parentViewController = [_popoverController _managingSplitViewController];
  }

  return _parentViewController;
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
    _retrievePresentingFocusedItemOrRemoveIfNotFocusable = [(UIViewController *)self _retrievePresentingFocusedItemOrRemoveIfNotFocusable];
    v6 = v11[5];
    v11[5] = _retrievePresentingFocusedItemOrRemoveIfNotFocusable;

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
  selfCopy = self;
  if (self)
  {
    _presentingFocusedItem = [self _presentingFocusedItem];
    _existingView = [selfCopy _existingView];
    _window = [_existingView _window];

    if (!_window || !_presentingFocusedItem)
    {
      goto LABEL_20;
    }

    presentedViewController = [selfCopy presentedViewController];
    activePresentationController = [presentedViewController activePresentationController];

    _focusSystem = [selfCopy _focusSystem];
    focusedItem = [_focusSystem focusedItem];

    if (activePresentationController)
    {
      if (focusedItem)
      {
        if ([activePresentationController _allowsFocusInPresentingViewController])
        {
          if (_UIFocusEnvironmentIsAncestorOfEnvironment(selfCopy, focusedItem))
          {
            presentedViewController2 = [activePresentationController presentedViewController];
            IsAncestorOfEnvironment = _UIFocusEnvironmentIsAncestorOfEnvironment(presentedViewController2, focusedItem);

            if (!IsAncestorOfEnvironment)
            {
              [selfCopy _setPresentingFocusedItem:focusedItem];

              selfCopy = 0;
              goto LABEL_21;
            }
          }
        }
      }
    }

    _presentingFocusedItem = _presentingFocusedItem;
    if (dyld_program_sdk_at_least())
    {
      v11 = [selfCopy _canRestoreFocusAfterTransitionToItem:_presentingFocusedItem];

      if (v11)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    if ([selfCopy restoresFocusAfterTransition])
    {
      view = [selfCopy view];
      if (_UIFocusEnvironmentIsAncestorOfEnvironment(view, _presentingFocusedItem))
      {
        IsFocusedOrFocusable = _UIFocusItemIsFocusedOrFocusable(_presentingFocusedItem);

        if (IsFocusedOrFocusable)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

LABEL_18:
    [selfCopy _setPresentingFocusedItem:0];
    _presentingFocusedItem = 0;
LABEL_19:

LABEL_20:
    _presentingFocusedItem = _presentingFocusedItem;
    selfCopy = _presentingFocusedItem;
LABEL_21:
  }

  return selfCopy;
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
  presentedViewController = [(UIViewController *)self presentedViewController];
  activePresentationController = [presentedViewController activePresentationController];

  if ([activePresentationController presented])
  {
    presentedViewController2 = [activePresentationController presentedViewController];
    [v3 addObject:presentedViewController2];
  }

  _childViewControllersEligibleForOverridingPreferredFocusEnvironments = [(UIViewController *)self _childViewControllersEligibleForOverridingPreferredFocusEnvironments];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [_childViewControllersEligibleForOverridingPreferredFocusEnvironments countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(_childViewControllersEligibleForOverridingPreferredFocusEnvironments);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        _existingView = [v12 _existingView];
        _window = [_existingView _window];

        if (_window)
        {
          [v3 addObject:v12];
        }
      }

      v9 = [_childViewControllersEligibleForOverridingPreferredFocusEnvironments countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v3;
}

- (void)updateFocusIfNeeded
{
  _focusSystem = [(UIViewController *)self _focusSystem];
  [_focusSystem updateFocusIfNeeded];
}

- (NSArray)preferredFocusEnvironments
{
  v6[1] = *MEMORY[0x1E69E9840];
  preferredFocusedView = [(UIViewController *)self preferredFocusedView];
  v3 = preferredFocusedView;
  if (preferredFocusedView)
  {
    v6[0] = preferredFocusedView;
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
  preferredFocusedItem = [(UIViewController *)self preferredFocusedItem];
  v4 = preferredFocusedItem;
  if (preferredFocusedItem)
  {
    _existingView = preferredFocusedItem;
  }

  else
  {
    _existingView = [(UIViewController *)self _existingView];
  }

  v6 = _existingView;

  return v6;
}

- (UIView)preferredFocusedItem
{
  WeakRetained = objc_loadWeakRetained(&self->_preferredFocusedItem);

  return WeakRetained;
}

- (BOOL)_shouldIgnoreChildFocusRegions
{
  _focusBehavior = [(UIViewController *)self _focusBehavior];
  supportsViewTransparency = [_focusBehavior supportsViewTransparency];

  if (supportsViewTransparency)
  {
    v5 = 0;
  }

  else
  {
    presentedViewController = [(UIViewController *)self presentedViewController];

    if (presentedViewController)
    {
      presentedViewController2 = [(UIViewController *)self presentedViewController];
      popoverPresentationController = [presentedViewController2 popoverPresentationController];
      _allowsFocusInPresentingViewController = [popoverPresentationController _allowsFocusInPresentingViewController];

      v5 = _allowsFocusInPresentingViewController ^ 1;
    }

    else
    {
      v5 = 0;
    }

    presentingViewController = [(UIViewController *)self presentingViewController];
    _presentationController = [presentingViewController _presentationController];

    if (_presentationController)
    {
      v5 |= [_presentationController presented] ^ 1;
    }
  }

  return v5 & 1;
}

- (UIFocusItemContainer)focusItemContainer
{
  _existingView = [(UIViewController *)self _existingView];
  superview = [_existingView superview];

  return superview;
}

- (void)_endDelayingPresentation
{
  if ([(UIViewController *)self _isDelayingPresentation])
  {
    v12 = objc_getAssociatedObject(self, &unk_1ED498593);
    if (![v12 decrementRequestCount])
    {
      selfCopy = self;
      if (v12)
      {
        v4 = *(v12 + 6);
        if (v4)
        {
          dispatch_source_cancel(v4);
          v5 = v12;
          if ((*(v12 + 8) & 1) == 0)
          {
            delayingController = [v12 delayingController];
            v7 = objc_opt_class();
            v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Finishing delayed presentation of <%s: %p>", class_getName(v7), delayingController];
            windowSceneIgnoringEvents = [v12 windowSceneIgnoringEvents];
            [windowSceneIgnoringEvents _endIgnoringInteractionEventsForReason:v8];

            [v12 setWindowSceneIgnoringEvents:0];
            v5 = v12;
          }

          v10 = v5[3];
          target = [v10 target];
          objc_setAssociatedObject(target, &unk_1ED498592, 0, 1);

          objc_setAssociatedObject(selfCopy, &unk_1ED498593, 0, 1);
          [v10 invoke];
        }

        else
        {
          objc_setAssociatedObject(selfCopy, &unk_1ED498593, 0, 1);
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

- (void)_intelligenceCollectContentIn:(CGRect)in collector:(id)collector
{
  v5 = sub_18A4A3BA8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69DBBC0], v5, v7);
  collectorCopy = collector;
  sub_18A4A3418();

  (*(v6 + 8))(v9, v5);
}

- (void)_intelligenceCollectSubelementsIn:(CGRect)in using:(id)using transformToRoot:(id)root
{
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  v11 = _Block_copy(root);
  v14[2] = v11;
  usingCopy = using;
  selfCopy = self;
  UIViewController._intelligenceCollectSubelements(in:using:transformToRoot:)(usingCopy, sub_188DE7D34, v14, x, y, width, height);
  _Block_release(v11);
}

- (id)_visualStyleOfContainingAlertController
{
  parentViewController = [(UIViewController *)self parentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _visualStyle = [parentViewController _visualStyle];
  }

  else
  {
    _visualStyle = 0;
  }

  return _visualStyle;
}

- (id)_nextResponderUsingTraversalStrategy:(unint64_t)strategy
{
  if (strategy == 2)
  {
    parentViewController = [(UIViewController *)self parentViewController];
    v7 = parentViewController;
    if (parentViewController)
    {
      v15 = 0;
      nextResponder = [parentViewController _nextResponderUsingTargetActionStrategyFromChildViewController:self didTraverseToParentViewController:&v15];
      if (v15 == 1)
      {
        presentedViewController = [v7 presentedViewController];
        if (presentedViewController)
        {
          v9 = presentedViewController;
          performsActionsWhilePresentingModally = [v7 performsActionsWhilePresentingModally];

          if ((performsActionsWhilePresentingModally & 1) == 0)
          {
            v11 = __84__UIViewController_UIResponderChainTraversal___nextResponderUsingTraversalStrategy___block_invoke(v7);

            nextResponder = v11;
          }
        }
      }
    }

    else
    {
      nextResponder = __84__UIViewController_UIResponderChainTraversal___nextResponderUsingTraversalStrategy___block_invoke(self);
    }
  }

  else if (strategy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIResponder+UIResponderChainTraversal.m" lineNumber:246 description:{@"Invalid call to %s with strategy: %u", "-[UIViewController(UIResponderChainTraversal) _nextResponderUsingTraversalStrategy:]", strategy}];

    nextResponder = 0;
  }

  else
  {
    nextResponder = [(UIViewController *)self nextResponder];
  }

  return nextResponder;
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

- (BOOL)_hasDeepestPresentedActionResponderOrBlock:(id)block
{
  blockCopy = block;
  if (dyld_program_sdk_at_least() && (-[UIViewController presentedViewController](self, "presentedViewController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 _hasDeepestActionResponder], v5, (v6 & 1) != 0))
  {
    v7 = 1;
  }

  else
  {
    v7 = blockCopy[2](blockCopy);
  }

  return v7;
}

- (id)_deepestPresentedActionResponderOrBlock:(id)block
{
  blockCopy = block;
  presentedViewController = [(UIViewController *)self presentedViewController];
  _hasDeepestActionResponder = [presentedViewController _hasDeepestActionResponder];

  if (_hasDeepestActionResponder)
  {
    presentedViewController2 = [(UIViewController *)self presentedViewController];
    _deepestActionResponder = [presentedViewController2 _deepestActionResponder];
  }

  else
  {
    _deepestActionResponder = blockCopy[2](blockCopy);
  }

  return _deepestActionResponder;
}

- (id)_nextResponderUsingTargetActionStrategyFromChildViewController:(id)controller didTraverseToParentViewController:(BOOL *)viewController
{
  if (viewController)
  {
    *viewController = 1;
  }

  return [controller nextResponder];
}

- (_UIActionSheetPresentationController)actionSheetPresentationController
{
  popoverPresentationController = [(UIViewController *)self popoverPresentationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [popoverPresentationController setCanOverlapSourceViewRect:1];
    v3 = popoverPresentationController;
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
      parentViewController = [(UIViewController *)self parentViewController];

      if (parentViewController)
      {
        parentViewController2 = [(UIViewController *)self parentViewController];
        [parentViewController2 _resolvedPreferredContentSize];
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

- (void)_primitiveSetNavigationControllerContentInsetAdjustment:(UIEdgeInsets)adjustment
{
  right = adjustment.right;
  bottom = adjustment.bottom;
  left = adjustment.left;
  top = adjustment.top;
  navigationInsetAdjustment = [(UIViewController *)self navigationInsetAdjustment];
  [navigationInsetAdjustment setInsetAdjustment:{top, left, bottom, right}];
}

- (void)_setNavigationControllerContentInsetAdjustment:(UIEdgeInsets)adjustment
{
  right = adjustment.right;
  bottom = adjustment.bottom;
  left = adjustment.left;
  top = adjustment.top;
  v24 = [(UIViewController *)self _contentOrObservableScrollViewForEdge:1];
  navigationInsetAdjustment = [(UIViewController *)self navigationInsetAdjustment];
  [navigationInsetAdjustment insetAdjustment];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v19 = v12 == left && v10 == top && v16 == right && v14 == bottom;
  if (!v19 && [v24 _compatibleContentInsetAdjustmentBehavior] == 101)
  {
    navigationInsetAdjustment2 = [(UIViewController *)self navigationInsetAdjustment];
    [navigationInsetAdjustment2 setInsetAdjustment:{top, left, bottom, right}];

    _viewControllerForAncestor = [v24 _viewControllerForAncestor];
    v22 = _viewControllerForAncestor;
    if (!_viewControllerForAncestor || _viewControllerForAncestor == self)
    {
      if (v24)
      {
        _UIScrollViewAdjustForOverlayInsetsChangeIfNecessary(v24, 1, top, left, bottom, right, v10, v12, v14, v16);
        navigationInsetAdjustment3 = [(UIViewController *)self navigationInsetAdjustment];
        [navigationInsetAdjustment3 setAdjustedScrollView:v24];
      }
    }

    else
    {
      [(UIViewController *)_viewControllerForAncestor _setNavigationControllerContentInsetAdjustment:top, left, bottom, right];
    }
  }
}

- (void)_setNavigationControllerContentOffsetAdjustment:(double)adjustment
{
  if (self->_navigationControllerContentOffsetAdjustment != adjustment)
  {
    v5 = [(UIViewController *)self _contentOrObservableScrollViewForEdge:1];
    if (v5)
    {
      v6 = v5;
      [v5 contentOffset];
      [v6 setContentOffset:?];
      v5 = v6;
    }

    self->_navigationControllerContentOffsetAdjustment = adjustment;
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

- (void)_updateViewSafeAreaInsetsAndEagerlyUpdateContentScrollView:(double *)view
{
  v37 = *MEMORY[0x1E69E9840];
  if (view)
  {
    view = [view view];
    if ([view _safeAreaInsetsFrozen])
    {
LABEL_24:

      return;
    }

    [view setSafeAreaInsets:{view[112], view[113], view[114], view[115]}];
    viewCopy = view;
    parentViewController = [viewCopy parentViewController];
    v31 = parentViewController;
    if (!parentViewController)
    {
      goto LABEL_13;
    }

    v5 = parentViewController;
    navigationController = [viewCopy navigationController];

    if (navigationController != v5)
    {
      navigationController2 = [viewCopy navigationController];
      _nestedTopViewController = [navigationController2 _nestedTopViewController];
      navigationItem = [_nestedTopViewController navigationItem];
      _searchControllerIfAllowed = [navigationItem _searchControllerIfAllowed];

      if (!_searchControllerIfAllowed)
      {
        goto LABEL_13;
      }

      v11 = (_searchControllerIfAllowed[279] >> 5) & 3;
      if (!v11)
      {
        v12 = dyld_program_sdk_at_least();
        v11 = 2;
        if (!v12)
        {
          v11 = 3;
        }
      }

      v13 = v11 == 2 ? _searchControllerIfAllowed : navigationController;

      if (v5 != v13)
      {
LABEL_13:
        array = 0;
LABEL_14:

        if (array)
        {
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v15 = array;
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

                [(UIView *)view _eagerlyUpdateSafeAreaInsetsToDescendant:?];
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
    array = 0;
    v21 = 1;
    while (1)
    {
      v22 = v21;
      v23 = [viewCopy _contentOrObservableScrollViewForEdge:*(&xmmword_18A679310 + v20)];
      v24 = v23;
      if (v23 && array == 0)
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

    array = [MEMORY[0x1E695DF70] array];
LABEL_34:
    if (([array containsObject:v24] & 1) == 0)
    {
      [array addObject:v24];
    }

    _viewControllerForAncestor = [v24 _viewControllerForAncestor];
    v27 = _viewControllerForAncestor;
    if (_viewControllerForAncestor == viewCopy || ([_viewControllerForAncestor navigationController], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(viewCopy, "navigationController"), v29 = objc_claimAutoreleasedReturnValue(), v29, v28, v28 == v29))
    {
      if (v27)
      {
        automaticallyAdjustsScrollViewInsets = [v27 automaticallyAdjustsScrollViewInsets];
      }

      else
      {
        automaticallyAdjustsScrollViewInsets = 0;
      }

      [v24 _setApplyVerticalSafeAreaInsetsToNonscrollingContent:automaticallyAdjustsScrollViewInsets];
    }

    goto LABEL_42;
  }
}

- (void)_eagerlyUpdateSafeAreaInsetsToViewDescendant:(id)descendant
{
  v24 = *MEMORY[0x1E69E9840];
  descendantCopy = descendant;
  _existingView = [(UIViewController *)self _existingView];
  v6 = [descendantCopy isDescendantOfView:_existingView];

  if (v6)
  {
    array = [MEMORY[0x1E695DF70] array];
    view = [(UIViewController *)self view];
    v9 = descendantCopy;
    superview = v9;
    while (superview && superview != view)
    {
      v11 = superview;
      [array insertObject:superview atIndex:0];
      superview = [superview superview];
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = array;
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
          __viewDelegate = [(UIView *)v17 __viewDelegate];
          [__viewDelegate _updateContentOverlayInsetsFromParentIfNecessary];
          [v17 _updateSafeAreaInsets];
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }
  }
}

- (void)_setContentOverlayInsets:(UIEdgeInsets)insets andLeftMargin:(double)margin rightMargin:(double)rightMargin
{
  right = insets.right;
  left = insets.left;
  top = insets.top;
  bottom = insets.bottom;
  _existingView = [(UIViewController *)self _existingView];
  v62 = _existingView;
  if (_existingView)
  {
    UIRoundToViewScale(_existingView);
    top = v11;
    UIRoundToViewScale(v62);
    left = v12;
    UIRoundToViewScale(v62);
    bottom = v13;
    UIRoundToViewScale(v62);
    _existingView = v62;
    right = v14;
  }

  _isRenderedHorizontallyFlipped = [_existingView _isRenderedHorizontallyFlipped];
  superview = [v62 superview];
  v17 = _isRenderedHorizontallyFlipped ^ [superview _isRenderedHorizontallyFlipped];

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
  marginCopy = v19;
  v55 = v18;
  v22.f64[1] = v19;
  v23.f64[0] = bottom;
  *&v23.f64[1] = v18;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v22, v20), vceqq_f64(v23, v21)))) & 1) == 0 || self->_leftContentMargin != margin || self->_rightContentMargin != rightMargin || ((view = self->_view) == 0 ? (v26 = 0uLL, v27 = 0uLL) : (p_safeAreaInsets = &view->_safeAreaInsets, v26 = *p_safeAreaInsets, v27 = p_safeAreaInsets[1]), (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v26, v20), vceqq_f64(v27, v21)))))))
  {
    if (margin == -1.79769313e308)
    {
      [(UIViewController *)self _viewSafeAreaInsetsFromScene];
      v53 = fmax(v28, 0.0);
    }

    else
    {
      v53 = marginCopy;
      marginCopy = margin;
    }

    if (rightMargin == -1.79769313e308)
    {
      [(UIViewController *)self _viewSafeAreaInsetsFromScene];
      ignoresParentMargins = [(UIViewController *)self ignoresParentMargins:fmax(v29];
    }

    else
    {
      v52 = v55;
      *&v55 = rightMargin;
      ignoresParentMargins = [(UIViewController *)self ignoresParentMargins];
    }

    if (v62)
    {
      if (ignoresParentMargins)
      {
        [objc_opt_class() _horizontalContentMarginForView:v62];
        *&v55 = v32;
        marginCopy = v32;
      }

      else
      {
        UIRoundToViewScale(v62);
        marginCopy = v38;
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
        self->_leftContentMargin = marginCopy;
        *&self->_rightContentMargin = v55;
        [(NSLayoutConstraint *)self->_topBarInsetGuideConstraint setConstant:v57];
        [(NSLayoutConstraint *)self->_bottomBarInsetGuideConstraint setConstant:v60];
        v58 = *&self->_systemMinimumLayoutMargins.bottom;
        v61 = *&self->_systemMinimumLayoutMargins.top;
        _shouldReverseLayoutDirection = [v62 _shouldReverseLayoutDirection];
        if (_shouldReverseLayoutDirection)
        {
          v43 = 536;
        }

        else
        {
          v43 = 528;
        }

        if (_shouldReverseLayoutDirection)
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

      window = [v62 window];
      [window _noteOverlayInsetsDidChange];
    }

    else
    {
      v33 = top;
      v34 = bottom;
      if (!ignoresParentMargins)
      {
        goto LABEL_30;
      }

      v35 = objc_opt_class();
      window = [(UIViewController *)self traitCollection];
      [v35 _slimHorizontalContentMarginForTraitCollection:window];
      *&v55 = v37;
      marginCopy = v37;
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

- (void)_invalidateChildContentOverlayInsetsWithOldInsets:(__n128)insets
{
  insetsCopy = insets;
  v24 = *MEMORY[0x1E69E9840];
  if (self)
  {
    _existingView = [(float64x2_t *)self _existingView];
    [_existingView _setViewDelegateContentOverlayInsetsAreClean:1];

    v7.f64[0] = a2;
    *&v7.f64[1] = insetsCopy.n128_u64[0];
    v8.f64[0] = a4;
    v8.f64[1] = a5;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v7, self[56]), vceqq_f64(v8, self[57])))) & 1) == 0)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      childViewControllers = [(float64x2_t *)self childViewControllers];
      v10 = [childViewControllers countByEnumeratingWithState:&v19 objects:v23 count:16];
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
              objc_enumerationMutation(childViewControllers);
            }

            _existingView2 = [*(*(&v19 + 1) + 8 * i) _existingView];
            [_existingView2 _setViewDelegateContentOverlayInsetsAreClean:0];
          }

          v11 = [childViewControllers countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v11);
      }
    }
  }
}

- (void)_prepareForNavigationTransition:(BOOL)transition
{
  transitionCopy = transition;
  v21 = *MEMORY[0x1E69E9840];
  v5 = self->_view;
  v6 = v5;
  if (v5)
  {
    window = [(UIView *)v5 window];

    if (window)
    {
      [(UIView *)v6 _updateTraitsIfNeededWithBehavior:?];
      if (transitionCopy)
      {
        [(UIViewController *)self __viewIsAppearing:1 skipWindowCheck:?];
      }

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      childViewControllers = [(UIViewController *)self childViewControllers];
      v9 = [childViewControllers countByEnumeratingWithState:&v16 objects:v20 count:16];
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
              objc_enumerationMutation(childViewControllers);
            }

            v13 = *(*(&v16 + 1) + 8 * v12);
            if ([(UIViewController *)self _isNestedNavigationController])
            {
              topViewController = [(UIViewController *)self topViewController];
              v15 = topViewController == v13;
            }

            else
            {
              v15 = 0;
            }

            [v13 _prepareForNavigationTransition:v15];
            ++v12;
          }

          while (v10 != v12);
          v10 = [childViewControllers countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }
    }
  }
}

- (void)__viewIsAppearing:(char)appearing skipWindowCheck:
{
  if (self)
  {
    v5 = *(self + 376);
    if (v5 & 0x40000000000000) == 0 || (appearing)
    {
      if ((v5 & 0x40000000000000) == 0)
      {
        return;
      }
    }

    else
    {
      window = [*(self + 24) window];

      if (!window)
      {
        return;
      }

      v5 = *(self + 376);
    }

    *(self + 376) = v5 & 0xFFBFFFFFFFFFFFFFLL;
    if ((v5 & 0x4000000) == 0)
    {
      v7 = _UISetCurrentFallbackEnvironment(self);
      v8 = *(self + 376);
      if (dyld_program_sdk_at_least())
      {
        *(self + 376) |= 0x80000000000000uLL;
      }

      [(UIViewController *)self _executeViewIsAppearingBlock:a2];
      [self viewIsAppearing:a2];
      *(self + 376) = *(self + 376) & 0xFF7FFFFFFFFFFFFFLL | (((v8 >> 55) & 1) << 55);

      _UIRestorePreviousFallbackEnvironment(v7);
    }
  }
}

- (void)_updateContentOverlayInsetsFromParentForNavigationTransitionWithFinalRectInParent:(CGRect)parent
{
  height = parent.size.height;
  width = parent.size.width;
  y = parent.origin.y;
  x = parent.origin.x;
  _parentViewController = [(UIViewController *)&self->super.super.isa _parentViewController];
  v16 = _parentViewController;
  if (!_parentViewController)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:1338 description:@"Unexpected transition state"];

    _parentViewController = 0;
  }

  top = self->_contentOverlayInsets.top;
  left = self->_contentOverlayInsets.left;
  bottom = self->_contentOverlayInsets.bottom;
  right = self->_contentOverlayInsets.right;
  if ([(UIViewController *)self __updateContentOverlayInsetsWithOurRect:_parentViewController inBoundsOfAncestorViewController:self viaImmediateChildOfAncestor:x, y, width, height])
  {
    v14.n128_f64[0] = left;
    [(UIViewController *)self _invalidateChildContentOverlayInsetsWithOldInsets:v14, bottom, right];
  }
}

- (uint64_t)__updateContentOverlayInsetsWithOurRect:(void *)rect inBoundsOfAncestorViewController:(CGFloat)x viaImmediateChildOfAncestor:(CGFloat)y
{
  v13 = a2;
  rectCopy = rect;
  if (self)
  {
    _existingView = [self _existingView];
    _existingView2 = [v13 _existingView];
    window = [_existingView2 window];
    window2 = [_existingView window];

    if (window == window2)
    {
      v20 = [self _existingPresentationControllerImmediate:1 effective:1];
      _existingView3 = [self _existingView];
      _existingView4 = [v13 _existingView];
      if (v20)
      {
        v162[0] = 0.0;
        [v20 _baseContentInsetsWithLeftMargin:v162 rightMargin:0];
        [self _setContentMargin:v162[0]];
      }

      else
      {
        parentViewController = [self parentViewController];
        [parentViewController _contentMarginForChildViewController:self];
        [self _setContentMargin:?];
      }

      if ([objc_opt_class() _directlySetsContentOverlayInsetsForChildren])
      {
        goto LABEL_11;
      }

      window3 = [_existingView3 window];
      if (!window3)
      {
        goto LABEL_11;
      }

      v25 = window3;
      window4 = [_existingView4 window];

      if (!window4)
      {
LABEL_12:

        goto LABEL_13;
      }

      _window = [_existingView3 _window];
      _window2 = [_existingView4 _window];

      if (_window != _window2)
      {
LABEL_11:
        LOBYTE(window4) = 0;
        goto LABEL_12;
      }

      v161 = 0;
      [v13 _edgeInsetsForChildViewController:rectCopy insetsAreAbsolute:&v161];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
      if (v161 == 1)
      {
        v162[0] = 0.0;
        v160 = 0.0;
        [v13 _marginInfoForChild:rectCopy leftMargin:v162 rightMargin:&v160];
        if (v162[0] == -1.79769313e308)
        {
          [self _viewSafeAreaInsetsFromScene];
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
          [self _viewSafeAreaInsetsFromScene];
          v85 = fmax(v84, 0.0);
        }

        else
        {
          v85 = v36;
          v36 = v160;
        }

        v160 = v36;
        [self additionalSafeAreaInsets];
        [self _setContentOverlayInsets:fmax(v30 + v86 andLeftMargin:0.0) rightMargin:{fmax(v38 + v87, 0.0), fmax(v34 + v88, 0.0), fmax(v85 + v89, 0.0), v162[0], v160}];
        LOBYTE(window4) = 1;
        goto LABEL_12;
      }

      [self additionalSafeAreaInsets];
      v40 = v30 + v39;
      v42 = v32 + v41;
      v143 = v34 + v43;
      v45 = v36 + v44;
      [_existingView4 bounds];
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
      selfCopy = self;
      v58 = _existingView3;
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
      _screen = [_existingView4 _screen];
      [_screen scale];
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
      v68 = fmin(v141, self[114]);
      v69 = fmin(v144, self[115]);
      v70 = fmin(v142, self[113]) != v142;
      if (fmin(v140, self[112]) != v140)
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
          LOBYTE(window4) = 1;
        }

        else
        {
          LOBYTE(window4) = 0;
          v73 = v137;
        }

        goto LABEL_85;
      }

      v128 = self[112];
      v131 = self[113];
      v124 = self[114];
      v126 = *(self + 115);
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
      v101 = [v59 _independentContainedScrollViewIntermediateToDescendantViewController:self];
      v103 = v101;
      if (v101)
      {
        v73 = v137;
        if (([v101 isDescendantOfView:v58] & 1) == 0)
        {
          _edgesPropagatingSafeAreaInsetsToSubviews = [v103 _edgesPropagatingSafeAreaInsetsToSubviews];
          v105 = v124;
          v102.n128_u64[0] = v126;
          if ((_edgesPropagatingSafeAreaInsetsToSubviews & 5) == 0)
          {
            v105 = v141;
          }

          v106 = v128;
          if ((_edgesPropagatingSafeAreaInsetsToSubviews & 5) == 0)
          {
            v106 = v140;
          }

          if ((_edgesPropagatingSafeAreaInsetsToSubviews & 0xA) == 0)
          {
            v102.n128_f64[0] = v144;
            v83 = v142;
          }

          v100 &= (_edgesPropagatingSafeAreaInsetsToSubviews & 5) != 0;
          LOBYTE(v57) = v57 & ((_edgesPropagatingSafeAreaInsetsToSubviews & 0xA) != 0);
LABEL_70:
          LOBYTE(window4) = v136 | v100 | v57;
          if ((window4 & 1) == 0)
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

  LOBYTE(window4) = 0;
LABEL_13:

  return window4 & 1;
}

- (void)_setIgnoresWrapperViewForContentOverlayInsets:(BOOL)insets
{
  v3 = 0x8000000000000;
  if (!insets)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFF7FFFFFFFFFFFFLL | v3;
}

- (uint64_t)_getViewControllerToInheritInsetsFrom:(id *)from viaImmediateChild:
{
  if (!self)
  {
    return 0;
  }

  v6 = self[12];
  v7 = v6;
  if (v6)
  {
    if (a2)
    {
      v8 = v6;
      *a2 = v7;
    }

    if (from)
    {
      selfCopy = self;
      *from = self;
    }

    v10 = 1;
  }

  else
  {
    v11 = [self _existingPresentationControllerImmediate:0 effective:1];
    if (v11)
    {
      v12 = v11;
      presentingViewController = [v11 presentingViewController];
      v10 = [(UIViewController *)presentingViewController _getViewControllerToInheritInsetsFrom:a2 viaImmediateChild:from];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (UIEdgeInsets)_customBasePresentationInsetsForView:(id)view
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:1554 description:@"Unexpected code path for compatibility code only"];
  }

  return [(UIViewController *)self contentScrollView];
}

- (id)_contentOrObservableScrollViewInContainerForEdge:(void *)edge
{
  if (edge)
  {
    if (([edge _isNavigationController] & 1) == 0 && (objc_msgSend(edge, "_isSplitViewController") & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = NSStringFromSelector(sel__contentOrObservableScrollViewInContainerForEdge_);
      [currentHandler handleFailureInMethod:sel__contentOrObservableScrollViewInContainerForEdge_ object:edge file:@"UIViewController.m" lineNumber:1583 description:{@"%@ supported only for UISplitViewController and UINavigationController at this time. self = %@", v10, edge}];
    }

    if (_UIViewControllerContainersShouldForwardContentScrollView_onceToken != -1)
    {
      dispatch_once(&_UIViewControllerContainersShouldForwardContentScrollView_onceToken, &__block_literal_global_2590);
    }

    if (_UIViewControllerContainersShouldForwardContentScrollView_shouldForward == 1)
    {
      v4 = [edge contentScrollViewForEdge:a2];
      if (!v4)
      {
        _viewControllerForObservableScrollView = [edge _viewControllerForObservableScrollView];
        v6 = _viewControllerForObservableScrollView;
        if (!_viewControllerForObservableScrollView || _viewControllerForObservableScrollView == edge)
        {
          v7 = [(UIViewController *)edge _resolveContentScrollViewForEdge:a2];
        }

        else
        {
          v7 = [_viewControllerForObservableScrollView _contentOrObservableScrollViewForEdge:a2];
        }

        v4 = v7;
      }
    }

    else
    {
      v4 = [(UIViewController *)edge _resolveContentScrollViewForEdge:a2];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_resolveContentScrollViewForEdge:(uint64_t)edge
{
  if (a2 != 1 && a2 != 4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__resolveContentScrollViewForEdge_ object:edge file:@"UIViewController.m" lineNumber:5513 description:{@"Invalid parameter not satisfying: %@", @"edge == NSDirectionalRectEdgeTop || edge == NSDirectionalRectEdgeBottom"}];
  }

  v5 = *(edge + 600);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = [edge _defaultContentScrollViewForEdge:a2];
  }

  v7 = v6;
  _temporaryCoordinatingReplacement = [v6 _temporaryCoordinatingReplacement];

  if (_temporaryCoordinatingReplacement)
  {
    _temporaryCoordinatingReplacement2 = [v7 _temporaryCoordinatingReplacement];

    v7 = _temporaryCoordinatingReplacement2;
  }

  v10 = [*(edge + 608) objectForKey:&unk_1EFE30280];
  v11 = [*(edge + 608) objectForKey:&unk_1EFE30298];
  v12 = v11;
  v14 = a2 == 1 && v10 != v7;
  v16 = a2 == 4 && v11 != v7;
  if (!v14 && !v16)
  {
    goto LABEL_40;
  }

  v17 = *(edge + 608);
  if (v7)
  {
    if (!v17)
    {
      strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
      v19 = *(edge + 608);
      *(edge + 608) = strongToWeakObjectsMapTable;

      v17 = *(edge + 608);
    }

    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    [v17 setObject:v7 forKey:v20];
  }

  else
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    [v17 removeObjectForKey:v21];

    if ([*(edge + 608) count])
    {
      goto LABEL_29;
    }

    v20 = *(edge + 608);
    *(edge + 608) = 0;
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
      [v7 _addScrollViewScrollObserver:edge];
    }

    v22 = v10;
    if (v10 == v12)
    {
      goto LABEL_40;
    }

LABEL_39:
    [v22 _removeScrollViewScrollObserver:edge];
    goto LABEL_40;
  }

  if (v16)
  {
    if (v10 != v7)
    {
      [v7 _addScrollViewScrollObserver:edge];
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

- (id)_contentOrObservableScrollViewForEdge:(unint64_t)edge
{
  if (self)
  {
    self = [(UIViewController *)self _resolveContentScrollViewForEdge:edge];
    v3 = vars8;
  }

  return self;
}

- (id)_defaultContentScrollViewForEdge:(unint64_t)edge
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
    if (edge != 1 && edge != 4)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:1616 description:@"NSDirectionalRectEdgeTop and NSDirectionalRectEdgeBottom are the only valid parameters for this internal method"];
    }

    if (*(&self->_viewControllerFlags + 7))
    {
      _contentScrollView = [(UIViewController *)self _contentScrollView];
    }

    else
    {
      _contentScrollView = [(UIViewController *)self contentScrollViewForEdge:edge];
      if (!_contentScrollView)
      {
        if ((*(&self->_viewControllerFlags + 7) & 2) != 0)
        {
          _contentScrollView = 0;
        }

        else
        {
          _contentScrollView = [(UIViewController *)self _contentScrollViewHeuristic];
        }
      }
    }
  }

  else
  {
    _contentScrollView = [(UIViewController *)self _shim_contentScrollView];
  }

  return _contentScrollView;
}

- (id)_independentContainedScrollViewIntermediateToDescendantViewController:(id)controller
{
  controllerCopy = controller;
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

  _existingView = [controllerCopy _existingView];
  if ([_existingView isDescendantOfView:v7])
  {
    v9 = [controllerCopy _contentOrObservableScrollViewForEdge:v5];

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

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute
{
  *absolute = 0;
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
    _existingView = [(UIViewController *)self _existingView];
    [_existingView _updateInferredLayoutMargins];
  }
}

- (void)_setContentMargin:(double)margin
{
  if ([(UIViewController *)self ignoresParentMargins])
  {
    _existingView = [(UIViewController *)self _existingView];
    v6 = objc_opt_class();
    v7 = v6;
    if (_existingView)
    {
      [v6 _horizontalContentMarginForView:_existingView];
      margin = v8;
    }

    else
    {
      traitCollection = [(UIViewController *)self traitCollection];
      [v7 _slimHorizontalContentMarginForTraitCollection:traitCollection];
      margin = v10;
    }
  }

  if (vabdd_f64(self->_contentMargin, margin) > 2.22044605e-16)
  {
    self->_contentMargin = margin;

    [(UIViewController *)self _updateChildContentMargins];
  }
}

+ (double)_horizontalContentMarginForView:(id)view ofWidth:(double)width
{
  viewCopy = view;
  _viewControllerForAncestor = [viewCopy _viewControllerForAncestor];
  [_viewControllerForAncestor _sceneSystemMinimumMargin];
  if (v8 == 0.0)
  {
    _window = [_viewControllerForAncestor _window];
    [_window safeAreaInsets];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    traitCollection = [viewCopy traitCollection];
    [self _horizontalContentMarginForViewWidth:traitCollection safeAreaInsets:width traitCollection:{v11, v13, v15, v17}];
    v20 = v19;
  }

  else
  {
    v20 = v8;
  }

  return v20;
}

+ (double)_horizontalContentMarginForViewWidth:(double)width safeAreaInsets:(UIEdgeInsets)insets traitCollection:(id)collection
{
  right = insets.right;
  left = insets.left;
  collectionCopy = collection;
  _hasSplitViewControllerContextSidebarColumn = [collectionCopy _hasSplitViewControllerContextSidebarColumn];
  if (_UIScreenReferenceBoundsSizeForType(0x1BuLL) >= width)
  {
    goto LABEL_5;
  }

  v11 = left > 0.0;
  if (right <= 0.0)
  {
    v11 = 0;
  }

  v12 = 20.0;
  if ((v11 | _hasSplitViewControllerContextSidebarColumn))
  {
LABEL_5:
    [self _slimHorizontalContentMarginForTraitCollection:collectionCopy];
    v12 = v13;
  }

  return v12;
}

+ (double)_horizontalContentMarginForView:(id)view
{
  viewCopy = view;
  v4 = objc_opt_class();
  [viewCopy bounds];
  [v4 _horizontalContentMarginForView:viewCopy ofWidth:v5];
  v7 = v6;

  return v7;
}

+ (double)_slimHorizontalContentMarginForTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (!collectionCopy)
  {
    collectionCopy = +[UITraitCollection _fallbackTraitCollection];
  }

  if ([collectionCopy userInterfaceIdiom] == 6)
  {
    v4 = 24.0;
  }

  else
  {
    v4 = 16.0;
  }

  return v4;
}

+ (double)_boundsWidthWithMinimumHorizontalContentMarginForView:(id)view preservingContentWidth:(double)width
{
  viewCopy = view;
  v6 = objc_opt_class();
  traitCollection = [viewCopy traitCollection];
  [v6 _slimHorizontalContentMarginForTraitCollection:traitCollection];
  v9 = v8 + v8 + width;

  [objc_opt_class() _horizontalContentMarginForView:viewCopy ofWidth:v9];
  v11 = v10;

  return v11 + v11 + width;
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

- (void)setValue:(id)value forKey:(id)key
{
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = UIViewController;
  [(UIViewController *)&v11 setValue:value forKey:keyCopy];
  if (dyld_program_sdk_at_least() && (([keyCopy isEqualToString:@"topLayoutGuide"] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"bottomLayoutGuide")))
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = NSStringFromSelector(a2);
    v10 = [v8 stringWithFormat:@"%@ is a readonly property. Do not use -%@ to set it. This is an application bug.", keyCopy, v9];

    NSLog(&stru_1EFB25450.isa, v10);
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@", v10}];
  }
}

- (UIEdgeInsets)_devicePeripheryInsets
{
  view = [(UIViewController *)self view];
  _screen = [view _screen];
  [_screen _peripheryInsets];
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
  view = [(UIViewController *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];

  return safeAreaLayoutGuide;
}

- (id)topLayoutGuide
{
  if (!self->_topLayoutGuide)
  {
    _existingView = [(UIViewController *)self _existingView];

    if (_existingView)
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

- (void)_setUpLayoutGuideConstraintIfNecessaryAtTop:(uint64_t)top
{
  v30[2] = *MEMORY[0x1E69E9840];
  if (top)
  {
    v4 = 13;
    if (a2)
    {
      v4 = 12;
    }

    v5 = *(top + OBJC_IVAR___UIViewController__typedStorage[v4]);
    v6 = v5;
    if (*(top + 24))
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

    v9 = *(top + OBJC_IVAR___UIViewController__typedStorage[v8]);
    if (v9)
    {
      v10 = v9;
      container = [v9 container];
      if (container)
      {
        v12 = container;
        container2 = [v10 container];
        v14 = *(top + 24);

        if (container2 != v14)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:sel__setUpLayoutGuideConstraintIfNecessaryAtTop_ object:top file:@"UIViewController.m" lineNumber:2766 description:@"Unexpected: The view changed out from under the guide constraint"];
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
      v17 = *(top + v16);
      *(top + v16) = 0;
    }

    _useViewBasedTopAndBottomLayoutGuides = [(UIViewController *)top _useViewBasedTopAndBottomLayoutGuides];
    nsli_superitem = [v6 nsli_superitem];
    v20 = *(top + 24);

    if (nsli_superitem != v20)
    {
      v21 = *(top + 24);
      if (_useViewBasedTopAndBottomLayoutGuides)
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
    v24 = [_UILayoutSupportConstraint constraintWithItem:v6 attribute:v22 relatedBy:0 toItem:*(top + 24) attribute:v22 multiplier:1.0 constant:0.0];
    v10 = [_UILayoutSupportConstraint constraintWithItem:v6 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
    v25 = _useViewBasedTopAndBottomLayoutGuides;
    v26 = *(top + 24);
    v30[0] = v10;
    v30[1] = v24;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    [v26 addConstraints:v27];

    [v10 setConstant:*(top + 896 + v29)];
    objc_storeStrong((top + OBJC_IVAR___UIViewController__typedStorage[v8]), v10);
    if (v25)
    {
      [*(top + 24) _is_layout];
    }

    goto LABEL_31;
  }
}

- (id)bottomLayoutGuide
{
  if (!self->_bottomLayoutGuide)
  {
    _existingView = [(UIViewController *)self _existingView];

    if (_existingView)
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

+ (BOOL)doesOverrideViewControllerMethod:(SEL)method
{
  v5 = objc_opt_class();

  return [self doesOverrideViewControllerMethod:method inBaseClass:v5];
}

+ (BOOL)doesOverridePreferredInterfaceOrientationForPresentation
{
  v3 = objc_opt_class();

  return [self doesOverrideViewControllerMethod:sel_preferredInterfaceOrientationForPresentation inBaseClass:v3];
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

- (CGSize)_formSheetSizeForWindowWithSize:(CGSize)size screenSize:(CGSize)screenSize
{
  height = screenSize.height;
  width = screenSize.width;
  v6 = size.height;
  v7 = size.width;
  v9 = +[_UIPresentationControllerDefaultVisualStyleProvider sharedInstance];
  defaultSheetMetrics = [v9 defaultSheetMetrics];
  [defaultSheetMetrics formSheetSizeForViewController:self windowSize:v7 screenSize:{v6, width, height}];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)setFormSheetSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  _existingView = [(UIViewController *)self _existingView];
  if (_existingView && (v7 = _existingView, -[UIViewController _existingView](self, "_existingView"), v8 = objc_claimAutoreleasedReturnValue(), [v8 window], v24 = objc_claimAutoreleasedReturnValue(), v8, v7, v24))
  {
    screen = [v24 screen];
    [screen bounds];
    v11 = v10;
    v13 = v12;
  }

  else
  {
    _screen = [(UIViewController *)self _screen];
    [_screen bounds];
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

+ (CGSize)defaultFormSheetSizeForScreenSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = +[_UIPresentationControllerDefaultVisualStyleProvider sharedInstance];
  defaultSheetMetrics = [v5 defaultSheetMetrics];
  [defaultSheetMetrics defaultFormSheetSizeForScreenSize:{width, height}];
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
      _existingView = [(UIViewController *)self _existingView];
      v7 = [_UIPopoverView popoverViewContainingView:_existingView];

      if (v7)
      {
        _popoverController = [(UIViewController *)self _popoverController];
        v9 = _popoverController;
        if (_popoverController)
        {
          v22 = _popoverController;
          _embedsInView = [_popoverController _embedsInView];
          v9 = v22;
          if ((_embedsInView & 1) == 0)
          {
            contentViewController = [v22 contentViewController];
            presentedViewController = [contentViewController presentedViewController];

            contentViewController2 = [v22 contentViewController];
            v14 = contentViewController2;
            if (presentedViewController)
            {
              presentedViewController2 = [contentViewController2 presentedViewController];
              [presentedViewController2 contentSizeForViewInPopover];
              v17 = v16;
              v19 = v18;
            }

            else
            {
              [contentViewController2 contentSizeForViewInPopover];
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
    _existingView = [(UIViewController *)self _existingView];
    v10 = [_UIPopoverView popoverViewContainingView:_existingView];

    if (v10)
    {
      _popoverController = [(UIViewController *)self _popoverController];
      v12 = _popoverController;
      if (_popoverController)
      {
        v30 = _popoverController;
        _embedsInView = [_popoverController _embedsInView];
        v12 = v30;
        if ((_embedsInView & 1) == 0)
        {
          contentViewController = [v30 contentViewController];
          presentedViewController = [contentViewController presentedViewController];

          contentViewController2 = [v30 contentViewController];
          v22 = contentViewController2;
          if (presentedViewController)
          {
            presentedViewController2 = [contentViewController2 presentedViewController];
            [presentedViewController2 preferredContentSize];
            v25 = v24;
            v27 = v26;
          }

          else
          {
            [contentViewController2 preferredContentSize];
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
  _childPresentationController = [v30 _childPresentationController];
  v15 = _childPresentationController;
  if (!_childPresentationController || ([_childPresentationController shouldPresentInFullscreen] & 1) != 0)
  {
    v16 = v30;
    if (!v30)
    {
      parentViewController = [(UIViewController *)self parentViewController];
      v18 = parentViewController;
      if (parentViewController)
      {
        [parentViewController _preferredContentSizeDidChangeForChildViewController:self];
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

- (id)_existingPresentationControllerImmediate:(char)immediate effective:(int)effective includesRoot:(char)root prefersRoot:
{
  selfCopy = self;
  if (self)
  {
    if (a2)
    {
      [self _parentModalViewController];
    }

    else
    {
      [self presentingViewController];
    }
    v10 = ;
    if (v10)
    {
      if (!effective || ![selfCopy _isRootViewController] || (root & 1) == 0)
      {
        if (immediate)
        {
          [v10 _presentationController];
        }

        else
        {
          [v10 _originalPresentationController];
        }
        selfCopy = ;
        goto LABEL_21;
      }

      if (!a2)
      {
        goto LABEL_20;
      }
    }

    else if (!a2 || (effective & 1) == 0)
    {
      if (!effective)
      {
        goto LABEL_16;
      }

      goto LABEL_20;
    }

    parentViewController = [selfCopy parentViewController];

    if (parentViewController)
    {
LABEL_16:
      selfCopy = 0;
LABEL_21:

      goto LABEL_22;
    }

LABEL_20:
    _window = [selfCopy _window];
    selfCopy = [_window _rootPresentationController];

    goto LABEL_21;
  }

LABEL_22:

  return selfCopy;
}

- (void)_systemLayoutFittingSizeDidChangeForChildContentContainer:(id)container childViewController:(id)controller
{
  controllerCopy = controller;
  [(UIViewController *)self systemLayoutFittingSizeDidChangeForChildContentContainer:container];
  v6 = controllerCopy;
  if (controllerCopy)
  {
    [(UIViewController *)self systemLayoutFittingSizeDidChangeForChildViewController:controllerCopy];
    v6 = controllerCopy;
  }
}

- (CGSize)_systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  view = [(UIViewController *)self view];
  *&v10 = priority;
  *&v11 = fittingPriority;
  [view systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v10, v11}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)_setMayForwardPresentationsToPresentedViewController:(BOOL)controller
{
  v3 = 0x400000000;
  if (!controller)
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
  _popoverController = [(UIViewController *)self _popoverController];
  if (_popoverController)
  {
    [_popoverController _containedViewControllerModalStateChanged];
  }

  popoverPresentationController = [(UIViewController *)self popoverPresentationController];
  presentedViewController = [popoverPresentationController presentedViewController];

  if (presentedViewController == self)
  {
    popoverPresentationController2 = [(UIViewController *)self popoverPresentationController];
    [popoverPresentationController2 _containedViewControllerModalStateChanged];
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
  childModalViewController = [(UIViewController *)self childModalViewController];
  if (childModalViewController && (v4 = childModalViewController, -[UIViewController childModalViewController](self, "childModalViewController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isModalInPresentation], v5, v4, v6))
  {
    childModalViewController2 = [(UIViewController *)self childModalViewController];
    _viewForContentInPopover = [childModalViewController2 _viewForContentInPopover];
  }

  else
  {
    _viewForContentInPopover = [(UIViewController *)self view];
  }

  return _viewForContentInPopover;
}

- (void)_didResignContentViewControllerOfPopover:(id)popover
{
  popoverCopy = popover;
  _popoverController = [(UIViewController *)self _popoverController];

  if (_popoverController == popoverCopy)
  {

    [(UIViewController *)self _setPopoverController:0];
  }
}

- (void)_setInCustomTransition:(BOOL)transition
{
  v3 = 0x200000000;
  if (!transition)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFDFFFFFFFFLL | v3;
}

- (void)_setUsesSharedView:(BOOL)view
{
  v3 = 0x800000000;
  if (!view)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFF7FFFFFFFFLL | v3;
}

- (void)_setViewHostsLayoutEngine:(BOOL)engine
{
  self->_viewHostsLayoutEngine = engine;
  if (engine)
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
    _isPresentationContextByDefault = [(NSCoder *)v4 decodeBoolForKey:@"UIDefinesPresentationContext"];
  }

  else
  {
    _isPresentationContextByDefault = [v6 _isPresentationContextByDefault];
  }

  v58 = 0x20000;
  if (!_isPresentationContextByDefault)
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

- (SEL)_customSelectorToCreateChildViewControllerAtIndex:(int64_t)index
{
  _customChildViewControllerSelectorsNames = [(UIViewController *)self _customChildViewControllerSelectorsNames];
  v6 = [_customChildViewControllerSelectorsNames objectAtIndex:index];
  null = [MEMORY[0x1E695DFB0] null];
  if ([v6 isEqual:null])
  {
    v8 = 0;
  }

  else
  {
    _customChildViewControllerSelectorsNames2 = [(UIViewController *)self _customChildViewControllerSelectorsNames];
    v8 = [_customChildViewControllerSelectorsNames2 objectAtIndex:index];
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

- (void)_setCustomChildViewControllerSelectorsNames:(id)names
{
  v4 = [names copy];
  objc_setAssociatedObject(self, &_UIViewControllerCustomChildViewControllerSelectorsNamesKey, v4, 1);
}

- (uint64_t)_doesSelfOrAncestorPassPredicate:(uint64_t)predicate
{
  v3 = a2;
  if (predicate)
  {
    parentViewController = [predicate parentViewController];
    if (v3[2](v3, predicate))
    {
      predicate = 1;
    }

    else if (parentViewController)
    {
      predicate = [(UIViewController *)parentViewController _doesSelfOrAncestorPassPredicate:v3];
    }

    else
    {
      predicate = 0;
    }
  }

  return predicate;
}

- (void)_populateArchivedChildViewControllers:(id)controllers
{
  v15 = *MEMORY[0x1E69E9840];
  controllersCopy = controllers;
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

        [controllersCopy addObject:{*(*(&v10 + 1) + 8 * v9++), v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self->_view && [(UIViewController *)self _shouldPersistViewWhenCoding])
  {
    [coderCopy encodeObject:self->_view forKey:@"UIView"];
  }

  title = self->_title;
  if (title)
  {
    [coderCopy encodeObject:title forKey:@"UITitle"];
  }

  tabBarItem = self->_tabBarItem;
  if (tabBarItem)
  {
    [coderCopy encodeObject:tabBarItem forKey:@"UITabBarItem"];
  }

  navigationItem = self->_navigationItem;
  if (navigationItem)
  {
    [coderCopy encodeObject:navigationItem forKey:@"UINavigationItem"];
  }

  externalObjectsTableForViewLoading = self->_externalObjectsTableForViewLoading;
  if (externalObjectsTableForViewLoading)
  {
    [coderCopy encodeObject:externalObjectsTableForViewLoading forKey:@"UIExternalObjectsTableForViewLoading"];
  }

  topLevelObjectsToKeepAliveFromStoryboard = self->_topLevelObjectsToKeepAliveFromStoryboard;
  if (topLevelObjectsToKeepAliveFromStoryboard)
  {
    [coderCopy encodeObject:topLevelObjectsToKeepAliveFromStoryboard forKey:@"UITopLevelObjectsToKeepAliveFromStoryboard"];
  }

  nibName = self->_nibName;
  if (nibName)
  {
    [coderCopy encodeObject:nibName forKey:@"UINibName"];
  }

  nibBundle = self->_nibBundle;
  if (nibBundle)
  {
    bundleIdentifier = [(NSBundle *)nibBundle bundleIdentifier];
    [coderCopy encodeObject:bundleIdentifier forKey:@"UINibBundleIdentifier"];
  }

  parentViewController = self->_parentViewController;
  if (parentViewController)
  {
    [coderCopy encodeConditionalObject:parentViewController forKey:@"UIParentViewController"];
  }

  viewControllerFlags = self->_viewControllerFlags;
  if ((viewControllerFlags & 0x20) == 0)
  {
    [coderCopy encodeBool:0 forKey:@"UIAutoresizesArchivedViewToFullSize"];
    viewControllerFlags = self->_viewControllerFlags;
  }

  if ((viewControllerFlags & 0x200) != 0)
  {
    [coderCopy encodeBool:1 forKey:@"UIWantsFullScreenLayout"];
  }

  if ([(NSArray *)self->_toolbarItems count])
  {
    [coderCopy encodeObject:self->_toolbarItems forKey:@"UIToolbarItems"];
  }

  if ([(NSMutableArray *)self->_childViewControllers count])
  {
    _customChildViewControllerSelectorsNames = [(UIViewController *)self _customChildViewControllerSelectorsNames];
    v15 = [_customChildViewControllerSelectorsNames count];

    if (v15)
    {
      _customChildViewControllerSelectorsNames2 = [(UIViewController *)self _customChildViewControllerSelectorsNames];
      [coderCopy encodeObject:_customChildViewControllerSelectorsNames2 forKey:@"UIChildViewControllerSelectors"];
    }

    v17 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSMutableArray count](self->_childViewControllers, "count")}];
    [(UIViewController *)self _populateArchivedChildViewControllers:v17];
    if ([v17 count])
    {
      v18 = UIArrayByKeepingObjectsInSet(self->_childViewControllers, v17);
      [coderCopy encodeObject:v18 forKey:@"UIChildViewControllers"];
    }
  }

  v19 = self->_viewControllerFlags;
  if ((([(UIViewController *)self _isPresentationContextByDefault]^ ((v19 & 0x20000) == 0)) & 1) == 0)
  {
    [coderCopy encodeBool:(*&self->_viewControllerFlags >> 17) & 1 forKey:@"UIDefinesPresentationContext"];
  }

  v20 = self->_viewControllerFlags;
  if ((v20 & 0x40000) != 0)
  {
    [coderCopy encodeBool:1 forKey:@"UIProvidesPresentationContextTransitionStyle"];
    v20 = self->_viewControllerFlags;
  }

  if ((v20 & 0x600000000000) != 0)
  {
    [coderCopy encodeBool:-[UIViewController restoresFocusAfterTransition](self forKey:{"restoresFocusAfterTransition"), @"UIRestoresFocusAfterTransition"}];
  }

  modalTransitionStyle = self->_modalTransitionStyle;
  if (modalTransitionStyle != _UIViewControllerDefaultModalTransitionStyle(self))
  {
    [coderCopy encodeInteger:self->_modalTransitionStyle forKey:@"UIModalTransitionStyle"];
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
    [coderCopy encodeInteger:self->_modalPresentationStyle forKey:@"UIModalPresentationStyle"];
  }

  if ((*&self->_viewControllerFlags & 0x10) != 0)
  {
    [coderCopy encodeBool:1 forKey:@"UIHidesBottomBarWhenPushed"];
  }

  if (self->_contentSizeForViewInPopover.width != 320.0 || self->_contentSizeForViewInPopover.height != 1100.0)
  {
    [coderCopy encodeCGSize:@"UIContentSizeForViewInPopover" forKey:?];
  }

  if (self->_preferredContentSize.width != *MEMORY[0x1E695F060] || self->_preferredContentSize.height != *(MEMORY[0x1E695F060] + 8))
  {
    [coderCopy encodeCGSize:@"UIPreferredContentSize" forKey:?];
  }

  restorationIdentifier = [(UIResponder *)self restorationIdentifier];

  if (restorationIdentifier)
  {
    restorationIdentifier2 = [(UIResponder *)self restorationIdentifier];
    [coderCopy encodeObject:restorationIdentifier2 forKey:@"UIRestorationIdentifier"];
  }

  storyboardIdentifier = self->_storyboardIdentifier;
  if (storyboardIdentifier)
  {
    [coderCopy encodeObject:storyboardIdentifier forKey:@"UIStoryboardIdentifier"];
  }

  interfaceBuilderKeyCommands = self->_interfaceBuilderKeyCommands;
  if (interfaceBuilderKeyCommands)
  {
    [coderCopy encodeObject:interfaceBuilderKeyCommands forKey:@"UIKeyCommands"];
  }

  addedKeyCommands = self->_addedKeyCommands;
  if (addedKeyCommands)
  {
    [coderCopy encodeObject:addedKeyCommands forKey:@"UIAddedKeyCommands"];
  }

  edgesForExtendedLayout = self->_edgesForExtendedLayout;
  if (edgesForExtendedLayout != 15)
  {
    [coderCopy encodeInteger:edgesForExtendedLayout forKey:@"UIKeyEdgesForExtendedLayout"];
  }

  v31 = self->_viewControllerFlags;
  if ((v31 & 0x1000000000) != 0)
  {
    [coderCopy encodeInteger:1 forKey:@"UIKeyExtendedLayoutIncludesOpaqueBars"];
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

  [coderCopy encodeInteger:1 forKey:@"UIKeyAutomaticallyAdjustsScrollViewInsets"];
  if ((*&self->_viewControllerFlags & 0x4000000000000) == 0)
  {
LABEL_65:
    [coderCopy encodeBool:0 forKey:@"UIViewControllerViewRespectsSystemMinimumLayoutMargins"];
  }

LABEL_66:
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    topLayoutGuide = self->_topLayoutGuide;
    if (topLayoutGuide)
    {
      [coderCopy encodeObject:topLayoutGuide forKey:@"UIViewControllerTopLayoutGuide"];
    }

    bottomLayoutGuide = self->_bottomLayoutGuide;
    if (bottomLayoutGuide)
    {
      [coderCopy encodeObject:bottomLayoutGuide forKey:@"UIViewControllerBottomLayoutGuide"];
    }
  }

  observableScrollViews = self->_observableScrollViews;
  if (observableScrollViews)
  {
    [coderCopy encodeObject:observableScrollViews forKey:@"UIViewControllerObservableScrollViews"];
  }

  interactionActivityTrackingBaseName = self->_interactionActivityTrackingBaseName;
  v36 = coderCopy;
  if (interactionActivityTrackingBaseName)
  {
    [coderCopy encodeObject:interactionActivityTrackingBaseName forKey:@"UIViewControllerInteractionActivityTrackingBaseName"];
    v36 = coderCopy;
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

- (void)_recordTraitUsage:(__int128 *)usage trackedStateDiff:(unint64_t)diff insideMethod:(const char *)method withInvalidationAction:
{
  if (self)
  {
    if (!self[53])
    {
      if (_UITraitTokenSetCount(a2))
      {
        v10 = objc_alloc_init(_UITraitChangeRegistry);
        v11 = self[53];
        self[53] = v10;
      }
    }

    [(_UITraitChangeRegistry *)self[53] recordTraitUsage:a2 forTraitEnvironment:self insideMethod:diff withInvalidationAction:method];
    v12 = *usage;
    v13 = *(usage + 2);
    _UILogStateTracking(a2, self, &v12, diff, method);
  }
}

- (void)_setTraitStorageList:(id)list
{
  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xEFFFFFFFFFFFFFFFLL | ((list != 0) << 60);
  v3.receiver = self;
  v3.super_class = UIViewController;
  [&v3 _setTraitStorageList:?];
}

- (void)_parent:(id)_parent willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  _parentCopy = _parent;
  collectionCopy = collection;
  coordinatorCopy = coordinator;
  _parentTraitEnvironment = [(UIViewController *)self _parentTraitEnvironment];

  if (_parentTraitEnvironment != _parentCopy)
  {
    if (!_UIViewControllersInheritTraitsFromViewHierarchy())
    {
LABEL_5:
      v15 = collectionCopy;
      goto LABEL_14;
    }

    parentViewController = [(UIViewController *)self parentViewController];
    v13 = parentViewController;
    if (parentViewController == _parentCopy)
    {
    }

    else
    {
      _departingParentViewController = [(UIViewController *)self _departingParentViewController];

      if (_departingParentViewController != _parentCopy)
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
    v17 = [(UIViewController *)self _traitCollectionByApplyingLocalOverridesToTraitCollection:collectionCopy];
  }

  v15 = v17;

  traitCollection = [(UIViewController *)self traitCollection];
  v19 = traitCollection;
  if (v15 != traitCollection && ![(UITraitCollection *)traitCollection isEqual:v15])
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __86__UIViewController__parent_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
    v20[3] = &unk_1E70F6B40;
    v20[4] = self;
    v21 = v19;
    v22 = v15;
    v23 = coordinatorCopy;
    [UIViewController _performWithoutDeferringTransitions:v20];
  }

LABEL_14:
}

- (id)_traitCollectionByApplyingLocalOverridesToTraitCollection:(void *)collection
{
  if (collection)
  {
    var28[0] = MEMORY[0x1E69E9820];
    var28[1] = 3221225472;
    var28[2] = __78__UIViewController__traitCollectionByApplyingLocalOverridesToTraitCollection___block_invoke;
    var28[3] = &unk_1E7101B20;
    var28[4] = collection;
    collection = [(UITraitCollection *)a2 _traitCollectionByModifyingTraitsCopyOnWrite:?];
    v2 = var28[6];
  }

  return collection;
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

- (void)_unsafeParentWillTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  collectionCopy = collection;
  _parentTraitEnvironment = [(UIViewController *)self _parentTraitEnvironment];
  [(UIViewController *)self _parent:_parentTraitEnvironment willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
}

- (void)_window:(id)_window willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v22 = *MEMORY[0x1E69E9840];
  _windowCopy = _window;
  collectionCopy = collection;
  coordinatorCopy = coordinator;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  childViewControllers = [(UIViewController *)self childViewControllers];
  v12 = [childViewControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        [*(*(&v17 + 1) + 8 * v15++) _window:_windowCopy willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
      }

      while (v13 != v15);
      v13 = [childViewControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  _presentationController = [(UIViewController *)self _presentationController];
  [_presentationController _window:_windowCopy willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v60 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  coordinatorCopy = coordinator;
  if (![UIApp _wantsCompactStatusBarHiding])
  {
    goto LABEL_13;
  }

  verticalSizeClass = [collectionCopy verticalSizeClass];
  traitCollection = [(UIViewController *)self traitCollection];
  verticalSizeClass2 = [traitCollection verticalSizeClass];

  if (verticalSizeClass == verticalSizeClass2)
  {
    goto LABEL_13;
  }

  if (coordinatorCopy)
  {
    [coordinatorCopy targetTransform];
  }

  else
  {
    memset(&v58, 0, sizeof(v58));
  }

  if (!CGAffineTransformIsIdentity(&v58) && (-[UIViewController _window](self, "_window"), v10 = objc_claimAutoreleasedReturnValue(), [v10 rootViewController], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11 == self))
  {
    _existingView = [(UIViewController *)self _existingView];
    window = [_existingView window];
    windowScene = [window windowScene];

    if (windowScene)
    {
      statusBarManager = [windowScene statusBarManager];
      [statusBarManager defaultStatusBarHeight];
      v30 = v29;
      _effectiveUISettings = [windowScene _effectiveUISettings];
      [_effectiveUISettings peripheryInsets];
      v33 = v32;

      if (v30 > v33)
      {
        isStatusBarHidden = [statusBarManager isStatusBarHidden];
        v15 = 1;
        goto LABEL_10;
      }
    }

    else
    {
      statusBarManager = 0;
    }
  }

  else
  {
    statusBarManager = 0;
    windowScene = 0;
  }

  isStatusBarHidden = 0;
  v15 = 0;
LABEL_10:
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __78__UIViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
  v53[3] = &unk_1E7104078;
  v56 = v15;
  v57 = isStatusBarHidden;
  v53[4] = self;
  v54 = statusBarManager;
  v55 = windowScene;
  v16 = windowScene;
  v17 = statusBarManager;
  [coordinatorCopy animateAlongsideTransition:v53 completion:0];
  if (self)
  {
    [(UIViewController *)self _invalidatePreferences:0 excluding:?];
  }

LABEL_13:
  if (self && (*&self->_viewControllerFlags & 3u) - 1 <= 1)
  {
    navigationItem = [(UIViewController *)self navigationItem];
    _searchControllerIfAllowed = [navigationItem _searchControllerIfAllowed];
    if (_searchControllerIfAllowed)
    {
      _navigationBar = [navigationItem _navigationBar];
      topItem = [_navigationBar topItem];

      if (topItem == navigationItem)
      {
        _hasInlineSearchBar = [navigationItem _hasInlineSearchBar];
        v23 = [navigationItem _hasInlineSearchBarForTraits:collectionCopy];
        if (_hasInlineSearchBar != v23)
        {
          v24 = v23;
          delegate = [_searchControllerIfAllowed delegate];
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

            [delegate searchController:_searchControllerIfAllowed willChangeToSearchBarPlacement:v26];
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

            [delegate _dci_searchController:_searchControllerIfAllowed willChangeToSearchBarPlacement:v34];
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
        v45 = [objc_opt_class() _traitCollectionWithParentTraitCollection:collectionCopy overrideTraitCollection:v40];
        [v39 _parent:self willTransitionToTraitCollection:v45 withTransitionCoordinator:coordinatorCopy];
      }

      v36 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v36);
  }

  _presentationController = [(UIViewController *)self _presentationController];
  [_presentationController _parent:self willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
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

- (void)_collectExistingTraitCollectionsForTraitTracking:(id)tracking
{
  trackingCopy = tracking;
  v5 = trackingCopy;
  if (self->_frozenTraitCollection)
  {
    trackingCopy[2](trackingCopy);
    trackingCopy = v5;
  }

  if (self->_lastNotifiedTraitCollection)
  {
    trackingCopy[2](v5);
    trackingCopy = v5;
  }
}

- (id)_traitCollectionByApplyingOverridesFromParentViewControllerToTraitCollection:(void *)collection
{
  v3 = a2;
  v4 = v3;
  if (collection)
  {
    v5 = v3;
    parentViewController = [collection parentViewController];
    v7 = parentViewController;
    if (parentViewController)
    {
      _departingParentViewController = parentViewController;
    }

    else
    {
      _departingParentViewController = [collection _departingParentViewController];
    }

    v9 = _departingParentViewController;

    v10 = [v9 _traitOverridesForChildViewController:collection];
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

- (id)_traitCollectionForChildEnvironment:(id)environment
{
  environmentCopy = environment;
  if ((_UIViewControllersInheritTraitsFromViewHierarchy() & 1) != 0 || (childViewControllers = self->_childViewControllers) == 0 || [(NSMutableArray *)childViewControllers indexOfObjectIdenticalTo:environmentCopy]== 0x7FFFFFFFFFFFFFFFLL)
  {
    traitCollection = [(UIViewController *)self traitCollection];
  }

  else
  {
    v9 = [(UIViewController *)self overrideTraitCollectionForChildViewController:environmentCopy];
    v10 = objc_opt_class();
    traitCollection2 = [(UIViewController *)self traitCollection];
    traitCollection = [v10 _traitCollectionWithParentTraitCollection:traitCollection2 overrideTraitCollection:v9];
  }

  if (self->_traitOverrides)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__UIViewController__traitCollectionForChildEnvironment___block_invoke;
    v12[3] = &unk_1E7101B48;
    v12[4] = self;
    v13 = environmentCopy;
    v7 = [(UITraitCollection *)traitCollection _traitCollectionByModifyingTraitsCopyOnWrite:v12];

    traitCollection = v7;
  }

  return traitCollection;
}

+ (id)_traitCollectionWithParentTraitCollection:(id)collection overrideTraitCollection:(id)traitCollection
{
  collectionCopy = collection;
  v6 = collectionCopy;
  if (collectionCopy && traitCollection)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __79__UITraitCollection__traitCollectionByApplyingOverrides_defaultValueOverrides___block_invoke;
    v10[3] = &unk_1E710D508;
    v10[4] = traitCollection;
    v10[5] = 0;
    v7 = [(UITraitCollection *)collectionCopy _traitCollectionByModifyingTraitsCopyOnWrite:v10];
  }

  else
  {
    v7 = collectionCopy;
  }

  v8 = v7;

  return v8;
}

- (void)_traitCollectionDidChange:(id)change
{
  v51 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  traitCollection = [(UIViewController *)self traitCollection];
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  if (changeCopy)
  {
    [(UITraitCollection *)changeCopy _createTraitTokenSetForChangesFromTraitCollection:traitCollection, v43];
  }

  else
  {
    v6 = +[UITraitCollection _emptyTraitCollection];
    [(UITraitCollection *)v6 _createTraitTokenSetForChangesFromTraitCollection:traitCollection, v43];
  }

  if ((*(&self->_viewControllerFlags + 7) & 0x10) != 0 && _UIShouldApplyTraitStorageRecordsForTraitChanges(v43))
  {
    [self _applyTraitStorageRecordsForTraitCollection:traitCollection];
  }

  if ([changeCopy verticalSizeClass] == 1 && objc_msgSend(traitCollection, "verticalSizeClass") == 2)
  {
    _window = [(UIViewController *)self _window];
    rootViewController = [_window rootViewController];

    if (rootViewController == self)
    {
      goto LABEL_26;
    }

    _effectiveStatusBarHiddenViewController = [(UIViewController *)rootViewController _effectiveStatusBarHiddenViewController];
    if (_effectiveStatusBarHiddenViewController == self)
    {
      traitCollection2 = [(UIViewController *)rootViewController traitCollection];
      verticalSizeClass = [traitCollection2 verticalSizeClass];

      if (verticalSizeClass != 2)
      {
        goto LABEL_26;
      }

      array = [MEMORY[0x1E695DF70] array];
      selfCopy = self;
      do
      {
        v14 = selfCopy;
        v42 = 0;
        [(UIViewController *)&selfCopy->super.super.isa _getViewControllerToInheritInsetsFrom:0 viaImmediateChild:?];
        selfCopy = v42;

        if (!selfCopy)
        {
          break;
        }

        [array addObject:selfCopy];
      }

      while (selfCopy != rootViewController);
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      _effectiveStatusBarHiddenViewController = array;
      v17 = [(UIViewController *)_effectiveStatusBarHiddenViewController countByEnumeratingWithState:&v38 objects:v50 count:16];
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
              objc_enumerationMutation(_effectiveStatusBarHiddenViewController);
            }

            [*(*(&v38 + 1) + 8 * v20++) _updateContentOverlayInsetsFromParentIfNecessary];
          }

          while (v18 != v20);
          v18 = [(UIViewController *)_effectiveStatusBarHiddenViewController countByEnumeratingWithState:&v38 objects:v50 count:16];
        }

        while (v18);
      }
    }

LABEL_26:
    v21 = changeCopy;
    v22 = traitCollection;
    if (!self)
    {
      goto LABEL_36;
    }

    goto LABEL_27;
  }

  v15 = changeCopy;
  v16 = traitCollection;
LABEL_27:
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  if (userInterfaceStyle != [changeCopy userInterfaceStyle] && -[UIViewController preferredStatusBarStyle](self, "preferredStatusBarStyle") == UIStatusBarStyleDefault && (-[UIView window](self->_view, "window"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "rootViewController"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "_effectiveStatusBarStyleViewController"), v26 = objc_claimAutoreleasedReturnValue(), v26, v25, v24, v26 == self) || (v27 = objc_msgSend(traitCollection, "verticalSizeClass"), v27 != objc_msgSend(changeCopy, "verticalSizeClass")) && objc_msgSend(UIApp, "_wantsCompactStatusBarHiding") && (-[UIView window](self->_view, "window"), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "rootViewController"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "_effectiveStatusBarHiddenViewController"), v30 = objc_claimAutoreleasedReturnValue(), v30, v29, v28, v30 == self))
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
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];
    if (userInterfaceIdiom != [changeCopy userInterfaceIdiom] && (!objc_msgSend(traitCollection, "userInterfaceIdiom") || !objc_msgSend(changeCopy, "userInterfaceIdiom")))
    {
      [(UIViewController *)self _invalidateRelevantToolbarItems];
    }
  }

  if (changeCopy)
  {
    [(_UITraitChangeRegistry *)self->_traitChangeRegistry traitsDidChange:v43 forTraitEnvironment:self withPreviousTraitCollection:changeCopy];
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
      v37 = [UITraitCollection _descriptionForChangeFromTraitCollection:changeCopy toTraitCollection:traitCollection];
      *block = 138413314;
      *&block[4] = v36;
      *&block[12] = 2112;
      *&block[14] = self;
      *&block[22] = 2112;
      v46 = v37;
      *v47 = 2112;
      *&v47[2] = changeCopy;
      v48 = 2112;
      v49 = traitCollection;
      _os_log_impl(&dword_188A29000, v35, OS_LOG_TYPE_ERROR, "Sending -%@ to %@\n\t► trait changes: %@\n\t► previous: %@\n\t► current: %@", block, 0x34u);
    }
  }

  [(UIViewController *)self traitCollectionDidChange:changeCopy, v38];
}

- (void)_updateTraitsIfNecessarySchedulingPropagation:(uint64_t)propagation
{
  if (propagation)
  {
    _parentModalViewController = [propagation _parentModalViewController];
    _presentationController = [_parentModalViewController _presentationController];
    [_presentationController _updateTraitsIfNecessary];

    _parentModalViewController2 = [propagation _parentModalViewController];
    _originalPresentationController = [_parentModalViewController2 _originalPresentationController];
    [_originalPresentationController _updateTraitsIfNecessary];

    _temporaryPresentationController = [propagation _temporaryPresentationController];
    [_temporaryPresentationController _updateTraitsIfNecessary];

    obj = [propagation traitCollection];
    v9 = *(propagation + 504);
    if (v9 != obj && ([obj isEqual:v9] & 1) == 0)
    {
      objc_storeStrong((propagation + 504), obj);
      v10 = _UISetCurrentFallbackEnvironment(propagation);
      v11 = +[UITraitCollection _currentTraitCollectionIfExists];
      [UITraitCollection setCurrentTraitCollection:obj];
      [propagation _traitCollectionDidChange:v9];
      [UITraitCollection setCurrentTraitCollection:v11];
      _UIRestorePreviousFallbackEnvironment(v10);
      v12 = *(propagation + 24);
      if (v12)
      {
        _UIViewInvalidateTraitCollectionAndSchedulePropagation(v12, a2);
      }
    }
  }
}

- (void)_updateSystemAppearanceWithRecursionBlock:(void *)block action:
{
  v12 = a2;
  blockCopy = block;
  if (self)
  {
    v6 = *(self + 112);
    if (v6)
    {
      v7 = v12[2];
    }

    else
    {
      if (!*(self + 96))
      {
        _window = [self _window];
        _windowHostingScene = [_window _windowHostingScene];

        v10 = [UIWindow _findWindowForControllingOverallAppearanceInWindowScene:_windowHostingScene];
        rootViewController = [v10 rootViewController];

        if (rootViewController == self)
        {
          blockCopy[2](blockCopy, _windowHostingScene);
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

- (id)registerForTraitChanges:(id)changes withHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [UITraitCollection _traitTokensIncludingPlaceholdersForTraits:changes];
  v8 = [(UIViewController *)self _registerForTraitTokenChanges:v7 withHandler:handlerCopy];

  return v8;
}

- (id)registerForTraitChanges:(id)changes withTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v9 = [UITraitCollection _traitTokensIncludingPlaceholdersForTraits:changes];
  v10 = [(UIViewController *)self _registerForTraitTokenChanges:v9 withTarget:targetCopy action:action];

  return v10;
}

- (id)registerForTraitChanges:(id)changes withAction:(SEL)action
{
  v6 = [UITraitCollection _traitTokensIncludingPlaceholdersForTraits:changes];
  v7 = [(UIViewController *)self _registerForTraitTokenChanges:v6 withTarget:self action:action];

  return v7;
}

- (id)_registerForTraitTokenChanges:(id)changes withHandler:(id)handler
{
  changesCopy = changes;
  handlerCopy = handler;
  traitChangeRegistry = self->_traitChangeRegistry;
  if (!traitChangeRegistry)
  {
    v9 = objc_alloc_init(_UITraitChangeRegistry);
    v10 = self->_traitChangeRegistry;
    self->_traitChangeRegistry = v9;

    traitChangeRegistry = self->_traitChangeRegistry;
  }

  v11 = [(_UITraitChangeRegistry *)traitChangeRegistry registerForTraitTokenChanges:changesCopy withHandler:handlerCopy];

  return v11;
}

- (id)_registerForTraitTokenChanges:(id)changes withTarget:(id)target action:(SEL)action
{
  changesCopy = changes;
  targetCopy = target;
  traitChangeRegistry = self->_traitChangeRegistry;
  if (!traitChangeRegistry)
  {
    v11 = objc_alloc_init(_UITraitChangeRegistry);
    v12 = self->_traitChangeRegistry;
    self->_traitChangeRegistry = v11;

    traitChangeRegistry = self->_traitChangeRegistry;
  }

  v13 = [(_UITraitChangeRegistry *)traitChangeRegistry registerForTraitTokenChanges:changesCopy withTarget:targetCopy action:action targetIsSender:targetCopy == self];

  return v13;
}

- (void)_registerAuxiliaryChildEnvironmentForTraitInvalidations:(id)invalidations
{
  invalidationsCopy = invalidations;
  traitChangeRegistry = self->_traitChangeRegistry;
  v8 = invalidationsCopy;
  if (!traitChangeRegistry)
  {
    v6 = objc_alloc_init(_UITraitChangeRegistry);
    v7 = self->_traitChangeRegistry;
    self->_traitChangeRegistry = v6;

    invalidationsCopy = v8;
    traitChangeRegistry = self->_traitChangeRegistry;
  }

  [(_UITraitChangeRegistry *)traitChangeRegistry registerAuxiliaryChildEnvironmentForTraitInvalidations:invalidationsCopy];
}

- (void)setOverrideTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (collectionCopy || self->_traitOverrides)
  {
    v6 = collectionCopy;
    _traitOverrides = [(UIViewController *)self _traitOverrides];
    [(_UITraitOverrides *)_traitOverrides _replaceOverrideTraitCollection:v6];

    collectionCopy = v6;
  }
}

- (id)_compatibilityTraitOverridesFromParentViewControllerCreateIfNecessary:(uint64_t)necessary
{
  if (a2)
  {
    _traitOverrides = [(UIViewController *)necessary _traitOverrides];
  }

  else
  {
    _traitOverrides = *(necessary + 416);
  }

  v3 = _traitOverrides;
  if (_traitOverrides)
  {
    _overridesAppliedBefore = [(_UITraitOverrides *)_traitOverrides _overridesAppliedBefore];
    _overridesAppliedAfter = [(_UITraitOverrides *)_overridesAppliedBefore _overridesAppliedAfter];
  }

  else
  {
    _overridesAppliedAfter = 0;
  }

  return _overridesAppliedAfter;
}

- (void)_applyCompatibilityTraitOverridesForOverrideTraitCollection:(uint64_t)collection
{
  v4 = a2;
  if (_UIViewControllersInheritTraitsFromViewHierarchy())
  {
    v3 = [(UIViewController *)collection _compatibilityTraitOverridesFromParentViewControllerCreateIfNecessary:?];
    [(_UITraitOverrides *)v3 _replaceOverrideTraitCollection:v4];
  }
}

- (void)setOverrideUserInterfaceStyle:(UIUserInterfaceStyle)overrideUserInterfaceStyle
{
  if (pthread_main_np() == 1)
  {
    if (overrideUserInterfaceStyle >= 4)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:4545 description:{@"Attempt to set invalid UIUserInterfaceStyle value to overrideUserInterfaceStyle: %ld", overrideUserInterfaceStyle}];
    }

    overrideUserInterfaceStyle = [(UIViewController *)self overrideUserInterfaceStyle];
    *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0x9FFFFFFFFFFFFFFFLL | ((overrideUserInterfaceStyle & 3) << 61);
    if ([(UIViewController *)self overrideUserInterfaceStyle]!= overrideUserInterfaceStyle)
    {

      [(UIViewController *)self _updateTraitsIfNecessary];
    }
  }

  else
  {
    _UIIsPrivateMainBundle();
    if (dyld_program_sdk_at_least())
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:4537 description:@"BUG IN CLIENT OF UIKIT: Attempting to set an overrideUserInterfaceStyle from a background thread. Modifying a view controller from a background thread is not supported."];
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

- (void)_setOverrideHorizontalSizeClass:(int64_t)class
{
  if (class >= 4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:4561 description:{@"Attempt to set invalid UIUserInterfaceSizeClass value to overrideHorizontalSizeClass: %ld", class}];
  }

  _overrideHorizontalSizeClass = [(UIViewController *)self _overrideHorizontalSizeClass];
  *(&self->_viewControllerFlags + 4) = *(&self->_viewControllerFlags + 4) & 0xFFFC | class & 3;
  if ([(UIViewController *)self _overrideHorizontalSizeClass]!= _overrideHorizontalSizeClass)
  {

    [(UIViewController *)self _updateTraitsIfNecessary];
  }
}

- (void)_setOverrideUserInterfaceRenderingMode:(int64_t)mode
{
  if (mode >= 4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:4578 description:{@"Attempt to set invalid _UIUserInterfaceRenderingMode value to overrideUserInterfaceRenderingMode: %ld", mode}];
  }

  _overrideUserInterfaceRenderingMode = [(UIViewController *)self _overrideUserInterfaceRenderingMode];
  *(&self->_viewControllerFlags + 4) = *(&self->_viewControllerFlags + 4) & 0xFFF3 | (4 * (mode & 3));
  if ([(UIViewController *)self _overrideUserInterfaceRenderingMode]!= _overrideUserInterfaceRenderingMode)
  {

    [(UIViewController *)self _updateTraitsIfNecessary];
  }
}

- (void)_setPresentedUserInterfaceStyleViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_presentedUserInterfaceStyleViewController != controllerCopy)
  {
    v6 = controllerCopy;
    objc_storeStrong(&self->_presentedUserInterfaceStyleViewController, controller);
    [(UIViewController *)self _setNeedsUserInterfaceAppearanceUpdate];
    controllerCopy = v6;
  }
}

- (id)_effectiveUserInterfaceStyleViewController
{
  _presentedUserInterfaceStyleViewController = [(UIViewController *)self _presentedUserInterfaceStyleViewController];
  _effectiveUserInterfaceStyleViewController = [_presentedUserInterfaceStyleViewController _effectiveUserInterfaceStyleViewController];

  if (!_effectiveUserInterfaceStyleViewController)
  {
    selfCopy = [0 _effectiveUserInterfaceStyleViewController];
    if (!selfCopy)
    {
      selfCopy = self;
    }

    _effectiveUserInterfaceStyleViewController = selfCopy;
  }

  return _effectiveUserInterfaceStyleViewController;
}

- (double)_statusBarHeightAdjustmentForCurrentOrientation
{
  _existingView = [(UIViewController *)self _existingView];
  window = [_existingView window];

  v4 = 0.0;
  if (window)
  {
    v5 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v5 userInterfaceIdiom];

    _windowInterfaceOrientation = [window _windowInterfaceOrientation];
    if (!_windowInterfaceOrientation)
    {
      _windowInterfaceOrientation = [UIApp _sceneInterfaceOrientationFromWindow:window];
    }

    if ((_windowInterfaceOrientation - 1) <= 3)
    {
      v8 = __UIStatusBarManagerForWindow(window);
      isStatusBarHidden = [v8 isStatusBarHidden];

      if (!isStatusBarHidden || !userInterfaceIdiom && !+[UIDevice _hasHomeButton](UIDevice, "_hasHomeButton") && !+[UIApplication _isClassic])
      {
        [UIStatusBar _viewControllerAdjustmentForOrientation:_windowInterfaceOrientation inWindow:window];
        v4 = v10;
      }
    }
  }

  return v4;
}

- (void)unloadViewForced:(BOOL)forced
{
  forcedCopy = forced;
  if ([(UIViewController *)self isViewLoaded]&& ([(UIViewController *)self _canReloadView]|| forcedCopy))
  {
    [(UIViewController *)self viewWillUnload];
    [(UIViewController *)self setView:0];
    modalPreservedFirstResponder = self->_modalPreservedFirstResponder;
    self->_modalPreservedFirstResponder = 0;

    if ((*(&self->_viewControllerFlags + 1) & 0x10) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_searchDisplayController);
      hidNavigationBar = [WeakRetained hidNavigationBar];

      [(UIViewController *)self setSearchBarHidNavBar:hidNavigationBar];
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
    _cachedTraitCollectionIsValid = [(UIView *)v5 _cachedTraitCollectionIsValid];
    __viewDelegate = [(UIView *)&self->_view->super.super.isa __viewDelegate];

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

    superview = [(UIView *)v12 superview];
    if (superview && (!v58 || ![(UIView *)self->_view isDescendantOfView:v58]))
    {
      if (__viewDelegate == self)
      {
        [(UIView *)self->_view removeFromSuperview];
      }

      if (v58)
      {
        [(UIView *)self->_view frame];
        [(UIView *)v58 setFrame:?];
        [superview addSubview:v58];
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

    if (_cachedTraitCollectionIsValid && (dyld_program_sdk_at_least() & 1) == 0)
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

      translatesAutoresizingMaskIntoConstraints = [(UIView *)v18 translatesAutoresizingMaskIntoConstraints];
      v18 = self->_view;
      if (translatesAutoresizingMaskIntoConstraints)
      {
        [(UIView *)v18 _setHostsLayoutEngine:1];
        v18 = self->_view;
      }
    }

    if (v18)
    {
      _embeddingView = [(UIViewController *)self _embeddingView];
      if (_embeddingView)
      {
        v21 = _embeddingView;
        _embeddingView2 = [(UIViewController *)self _embeddingView];

        if (_embeddingView2 != v58)
        {
          _embeddingView3 = [(UIViewController *)self _embeddingView];
          [(UIViewController *)self _embeddedViewFrame];
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v31 = v30;
          _embeddedDelegate = [(UIViewController *)self _embeddedDelegate];
          [(UIViewController *)self _embedContentViewInView:_embeddingView3 withContentFrame:_embeddedDelegate delegate:v25, v27, v29, v31];

          goto LABEL_31;
        }
      }

      if (self->_view)
      {
        goto LABEL_31;
      }
    }

LABEL_29:
    _embeddedView = [(UIViewController *)self _embeddedView];

    if (_embeddedView)
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
      layer = [(UIView *)self->_view layer];
      layer3 = layer;
      if (v47)
      {
        layer2 = [(UIView *)self->_view layer];
        name = [layer2 name];
        v52 = objc_opt_class();
        v53 = NSStringFromClass(v52);
        v54 = [name stringByAppendingFormat:@", VC:%@", v53];
        [layer3 setName:v54];
      }

      else
      {
        name2 = [layer name];

        if (name2)
        {
LABEL_61:
          [(UIViewController *)self _setSecurityModeForViewsLayer];

          v5 = v58;
          goto LABEL_62;
        }

        layer3 = [(UIView *)self->_view layer];
        v56 = MEMORY[0x1E696AEC0];
        v57 = objc_opt_class();
        layer2 = NSStringFromClass(v57);
        name = [v56 stringWithFormat:@"VC:%@", layer2];
        [layer3 setName:name];
      }

      goto LABEL_61;
    }

    _embeddedView2 = [(UIViewController *)self _embeddedView];
    v35 = _embeddedView2;
    if (!_embeddedView2)
    {
      v35 = self->_view;
    }

    v36 = v35;

    topBarInsetGuideConstraint = self->_topBarInsetGuideConstraint;
    if (topBarInsetGuideConstraint)
    {
      container = [(NSLayoutConstraint *)self->_topBarInsetGuideConstraint container];
      v9 = container;
      if (container != v36)
      {

LABEL_44:
        if (self->_topBarInsetGuideConstraint || self->_bottomBarInsetGuideConstraint)
        {
          _useViewBasedTopAndBottomLayoutGuides = [(UIViewController *)self _useViewBasedTopAndBottomLayoutGuides];
          topLayoutGuide = self->_topLayoutGuide;
          if (_useViewBasedTopAndBottomLayoutGuides)
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
        container2 = [(NSLayoutConstraint *)v39 container];

        if (topBarInsetGuideConstraint)
        {
        }

        if (container2 == v36)
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

- (BOOL)_shouldAttemptToPreserveInputViewsForResponder:(id)responder
{
  responderCopy = responder;
  if (responderCopy && [(UIResponder *)self _containsResponder:responderCopy])
  {
    _window = [responderCopy _window];
    screen = [_window screen];

    v7 = [(UIKeyboardMotionSupport *)UIScrollToDismissSupport supportForScreen:screen];
    v8 = v7;
    v9 = !v7 || ([v7 isFinishingDismissTransition] & 1) == 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_viewSubtreeDidGainScrollView:(id)view enclosingViewController:(id)controller
{
  viewCopy = view;
  controllerCopy = controller;
  v7 = [(UIViewController *)self _contentOrObservableScrollViewForEdge:1];

  if (self)
  {
    if (v7 == viewCopy)
    {
      [(UIViewController *)self _navigationControllerContentInsetAdjustment];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      navigationInsetAdjustment = [(UIViewController *)self navigationInsetAdjustment];
      adjustedScrollView = [navigationInsetAdjustment adjustedScrollView];
      v18 = [(UIViewController *)self _contentOrObservableScrollViewForEdge:1];

      if (adjustedScrollView != v18)
      {
        navigationInsetAdjustment2 = [(UIViewController *)self navigationInsetAdjustment];
        [navigationInsetAdjustment2 setInsetAdjustment:{0.0, 0.0, 0.0, 0.0}];

        [(UIViewController *)self _setNavigationControllerContentInsetAdjustment:v9, v11, v13, v15];
      }
    }
  }

  parentViewController = [(UIViewController *)self parentViewController];
  v21 = parentViewController;
  if (parentViewController)
  {
    [parentViewController _viewSubtreeDidGainScrollView:viewCopy enclosingViewController:controllerCopy];
  }

  else
  {
    presentingViewController = [(UIViewController *)self presentingViewController];
    [presentingViewController _viewSubtreeDidGainScrollView:viewCopy enclosingViewController:controllerCopy];
  }
}

- (void)_recordContentScrollView
{
  [(UIViewController *)self _clearRecordedContentScrollView];
  v3 = [(UIViewController *)self _contentOrObservableScrollViewForEdge:1];
  if (v3)
  {
    obj = v3;
    view = [(UIViewController *)self view];

    v3 = obj;
    if (obj != view)
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
      selfCopy = self;
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

- (void)_setInternalContentScrollView:(id)view
{
  viewCopy = view;
  if (self->_internalContentScrollView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_internalContentScrollView, view);
    [(UIViewController *)self _performContentScrollViewUpdatesNotifyingObservers];
    viewCopy = v6;
  }
}

- (void)_observeScrollView:(id)view temporaryCoordinatingReplacementDidChange:(id)change
{
  if (self->_effectiveContentScrollViews)
  {
    [(UIViewController *)self _performContentScrollViewUpdatesNotifyingObservers];
  }
}

- (void)_setExistingNavigationItem:(id)item
{
  itemCopy = item;
  if (self->_navigationItem != itemCopy)
  {
    v6 = itemCopy;
    objc_storeStrong(&self->_navigationItem, item);
    itemCopy = v6;
  }
}

- (void)_setExistingTabBarItem:(id)item
{
  itemCopy = item;
  if (self->_tabBarItem != itemCopy)
  {
    v6 = itemCopy;
    objc_storeStrong(&self->_tabBarItem, item);
    itemCopy = v6;
  }
}

- (void)window:(id)window willAnimateFromContentFrame:(CGRect)frame toContentFrame:(CGRect)contentFrame
{
  height = contentFrame.size.height;
  width = contentFrame.size.width;
  y = contentFrame.origin.y;
  x = contentFrame.origin.x;
  v9 = frame.size.height;
  v10 = frame.size.width;
  v11 = frame.origin.y;
  v12 = frame.origin.x;
  _visibleView = [(UIViewController *)self _visibleView];
  [_visibleView frame];
  v18.origin.x = v12;
  v18.origin.y = v11;
  v18.size.width = v10;
  v18.size.height = v9;
  if (CGRectEqualToRect(v17, v18))
  {
    [_visibleView setFrame:{x, y, width, height}];
  }

  viewControllerForRotation = [(UIViewController *)self viewControllerForRotation];
  [viewControllerForRotation _updateLayoutForStatusBarAndInterfaceOrientation];
}

- (void)window:(id)window statusBarWillChangeFromHeight:(double)height toHeight:(double)toHeight
{
  windowCopy = window;
  _viewControllerForRotation = [(UIViewController *)self _viewControllerForRotation];
  _existingView = [_viewControllerForRotation _existingView];
  if (_existingView)
  {
    v8 = _existingView;
    while (1)
    {
      v9 = windowCopy;
      v10 = _viewControllerForRotation;
      v11 = v10;
      if (self)
      {
        break;
      }

LABEL_17:

      _viewControllerForRotation = _nextWindowSizedViewController(v11);

      _existingView2 = [_viewControllerForRotation _existingView];

      v8 = _existingView2;
      if (!_existingView2)
      {
        goto LABEL_18;
      }
    }

    _existingView3 = [v10 _existingView];
    v13 = [v11 _existingPresentationControllerImmediate:0 effective:1];
    containerView = [v13 containerView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = 0;
    }

    else
    {
      if (!containerView || ![_existingView3 isDescendantOfView:containerView])
      {
        goto LABEL_10;
      }

      v15 = containerView;
      containerView = _existingView3;
      _existingView3 = v15;
    }

    containerView = v15;
LABEL_10:
    window = [_existingView3 window];
    if (window)
    {
      v17 = window;
      screen = [v9 screen];
      _isEmbeddedScreen = [screen _isEmbeddedScreen];

      if (_isEmbeddedScreen)
      {
        [v9 frame];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        screen2 = [v9 screen];
        [screen2 bounds];
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
          windowScene = [v9 windowScene];
          [windowScene _interfaceOrientation];
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

- (void)_sceneSettingsSafeAreaInsetsDidChangeForWindow:(id)window
{
  _viewControllerForRotation = [(UIViewController *)self _viewControllerForRotation];
  _existingView = [_viewControllerForRotation _existingView];
  if (_existingView)
  {
    v5 = _existingView;
    do
    {
      [(UIViewController *)_viewControllerForRotation _recursiveUpdateContentOverlayInsetsFromParentIfNecessary];
      if (dyld_program_sdk_at_least())
      {
        [_viewControllerForRotation presentedViewController];
      }

      else
      {
        _nextWindowSizedViewController(_viewControllerForRotation);
      }
      v7 = ;

      _existingView2 = [v7 _existingView];

      v5 = _existingView2;
      _viewControllerForRotation = v7;
    }

    while (_existingView2);
  }

  else
  {
    v7 = _viewControllerForRotation;
  }
}

- (void)_setFreezeLayoutForOrientationChangeOnDismissal:(BOOL)dismissal
{
  dismissalCopy = dismissal;
  if ([(UIViewController *)self _allowsFreezeLayoutForOrientationChangeOnDismissal])
  {
    v5 = 0x2000000000000;
    if (!dismissalCopy)
    {
      v5 = 0;
    }

    *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFDFFFFFFFFFFFFLL | v5;
  }
}

- (void)_updateControlledViewsToFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  view = [(UIViewController *)self view];
  [view setFrame:{x, y, width, height}];
}

- (void)setAutoresizesArchivedViewToFullSize:(BOOL)size
{
  v3 = 32;
  if (!size)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFFFFFFFFDFLL | v3;
}

+ (int)_keyboardDirectionForTransition:(int)transition
{
  if (transition > 0x12)
  {
    return 0;
  }

  if (((1 << transition) & 0x41300) == 0)
  {
    if (transition == 1)
    {
      return 4;
    }

    if (transition == 2)
    {
      return 5;
    }

    return 0;
  }

  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

+ (int64_t)_keyboardAnimationTypeForTransition:(int)transition
{
  v3 = 4;
  if (transition != 2)
  {
    v3 = 1;
  }

  if (transition == 1)
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
  storyboardSegueTemplates = [(UIViewController *)self storyboardSegueTemplates];
  v9 = [storyboardSegueTemplates countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = *v23;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(storyboardSegueTemplates);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        identifier = [v12 identifier];
        v14 = [identifier isEqualToString:v21];

        if (v14)
        {
          v9 = v12;
          goto LABEL_12;
        }
      }

      v9 = [storyboardSegueTemplates countByEnumeratingWithState:&v22 objects:v26 count:16];
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

  if (qword_1ED4985F0 == self || qword_1ED4985F8 == self)
  {
    return 0;
  }

  v5 = [self superclass];
  if ([self doesOverrideViewControllerMethod:qword_1ED4985E0 inBaseClass:v5] && !objc_msgSend(self, "doesOverrideViewControllerMethod:inBaseClass:", qword_1ED4985E8, v5))
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

- (id)_destinationForUnwindingFromSource:(id)source visitedViewControllers:(id)controllers
{
  v35 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  controllersCopy = controllers;
  if ([objc_opt_class() _shouldUseLegacyUnwindDestinationSearch])
  {
    unwindAction = [sourceCopy unwindAction];
    sourceViewController = [sourceCopy sourceViewController];
    sender = [sourceCopy sender];
    v11 = [(UIViewController *)self viewControllerForUnwindSegueAction:unwindAction fromViewController:sourceViewController withSender:sender];
  }

  else
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v13 = [controllersCopy containsObject:self];
    if (has_internal_diagnostics)
    {
      if (v13)
      {
        v26 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          selfCopy2 = self;
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
        selfCopy2 = self;
        _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_ERROR, "Should not have recursed into %@ since it was already visited", buf, 0xCu);
      }
    }

    [controllersCopy addObject:self];
    childModalViewController = [(UIViewController *)self childModalViewController];
    if (!childModalViewController || ([controllersCopy containsObject:childModalViewController] & 1) != 0 || (objc_msgSend(childModalViewController, "_destinationForUnwindingFromSource:visitedViewControllers:", sourceCopy, controllersCopy), (v11 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      sourceViewController2 = [(UIViewController *)self allowedChildViewControllersForUnwindingFromSource:sourceCopy, 0];
      v16 = [sourceViewController2 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
              objc_enumerationMutation(sourceViewController2);
            }

            v20 = *(*(&v28 + 1) + 8 * i);
            if (([controllersCopy containsObject:v20] & 1) == 0)
            {
              v21 = [v20 _destinationForUnwindingFromSource:sourceCopy visitedViewControllers:controllersCopy];
              if (v21)
              {
                v11 = v21;
                goto LABEL_22;
              }
            }
          }

          v17 = [sourceViewController2 countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      unwindAction2 = [sourceCopy unwindAction];
      sourceViewController2 = [sourceCopy sourceViewController];
      sender2 = [sourceCopy sender];
      if ([(UIViewController *)self _canPerformUnwindSegueAction:unwindAction2 fromViewController:sourceViewController2 sender:sender2])
      {
        selfCopy3 = self;
      }

      else
      {
        selfCopy3 = 0;
      }

      v11 = selfCopy3;

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
  childViewControllers = [(UIViewController *)self childViewControllers];
  v11 = [childViewControllers countByEnumeratingWithState:&v18 objects:v22 count:16];
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
        objc_enumerationMutation(childViewControllers);
      }

      v15 = *(*(&v18 + 1) + 8 * v14);
      if ([v15 _canPerformUnwindSegueAction:action fromViewController:v8 sender:v9])
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [childViewControllers countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    selfCopy = v15;

    if (selfCopy)
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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

LABEL_14:

  return selfCopy;
}

- (BOOL)_canPerformUnwindSegueAction:(SEL)action fromViewController:(id)controller sender:(id)sender
{
  senderCopy = sender;
  controllerCopy = controller;
  if ([objc_opt_class() doesOverrideViewControllerMethod:sel_canPerformUnwindSegueAction_fromViewController_sender_])
  {
    v10 = [(UIViewController *)self canPerformUnwindSegueAction:action fromViewController:controllerCopy sender:senderCopy];
  }

  else
  {
    v10 = [(UIViewController *)self canPerformUnwindSegueAction:action fromViewController:controllerCopy withSender:senderCopy];
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
  selfCopy = self;
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

    _existingNavigationItem = [(UIViewController *)self _existingNavigationItem];
    [_existingNavigationItem setTitle:v11];

    if (!dyld_program_sdk_at_least() || ([(UIViewController *)self tab], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
    {
      _existingTabBarItem = [(UIViewController *)self _existingTabBarItem];
      [_existingTabBarItem setTitle:v11];
    }

    parentViewController = [(UIViewController *)self parentViewController];
    [parentViewController updateTitleForViewController:self];

    v4 = v11;
  }
}

- (void)_enumerateAncestorViewControllersUntilStop:(BOOL *)stop usingBlock:(id)block
{
  blockCopy = block;
  parentViewController = [(UIViewController *)self parentViewController];
  v7 = parentViewController;
  if (parentViewController)
  {
    [parentViewController _enumerateAncestorViewControllersUntilStop:stop usingBlock:blockCopy];
  }

  if (!*stop)
  {
    blockCopy[2](blockCopy, self, stop);
  }
}

- (void)_enumerateVisibleChildControllers:(void *)controllers includePresentedChildren:(int)children usingBlock:(void *)block
{
  v25 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (controllers)
  {
    v23 = 0;
    _existingView = [controllers _existingView];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    childViewControllers = [controllers childViewControllers];
    v8 = [childViewControllers countByEnumeratingWithState:&v19 objects:v24 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        v13 = v12;
        if (children)
        {
          childModalViewController = [v12 childModalViewController];

          if (childModalViewController)
          {
            childModalViewController2 = [v13 childModalViewController];
            if (childModalViewController2)
            {
              childModalViewController3 = childModalViewController2;
              do
              {
                _existingView2 = childModalViewController3;

                childModalViewController3 = [_existingView2 childModalViewController];

                v13 = _existingView2;
              }

              while (childModalViewController3);
            }

            else
            {
              _existingView2 = v13;
            }

            if ([_existingView2 modalPresentationStyle] != 3 && objc_msgSend(_existingView2, "modalPresentationStyle") != 15)
            {
              v13 = 0;
              goto LABEL_22;
            }

            v13 = _existingView2;
          }
        }

        if (!v13)
        {
          goto LABEL_23;
        }

        _existingView2 = [v13 _existingView];
        if ([_existingView2 isDescendantOfView:_existingView] && (objc_msgSend(_existingView2, "isHidden") & 1) == 0)
        {
          blockCopy[2](blockCopy, v13, &v23);
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
      v9 = [childViewControllers countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (!v9)
      {
LABEL_26:

        break;
      }
    }
  }
}

- (void)_removeChildViewController:(id)controller
{
  controllerCopy = controller;
  _parentViewController = [(UIViewController *)controllerCopy _parentViewController];

  v5 = controllerCopy;
  if (controllerCopy && _parentViewController == self)
  {
    v6 = *(controllerCopy + 192);
    *(controllerCopy + 192) = v6 | 0x100;
    [controllerCopy setParentViewController:0];
    v5 = controllerCopy;
    *(controllerCopy + 192) = controllerCopy[48] & 0xFEFF | v6 & 0x100;
  }
}

- (void)_addChildViewController:(id)controller
{
  controllerCopy = controller;
  v10 = controllerCopy;
  if (controllerCopy && (*(controllerCopy + 376) & 0x80) != 0)
  {
    _existingView = [controllerCopy _existingView];
    window = [_existingView window];

    if (window)
    {
      [MEMORY[0x1E695DF30] raise:@"UIViewControllerHierarchyInconsistency" format:{@"adding a root view controller %@ as a child of view controller:%@", v10, self}];
    }

    controllerCopy = v10;
    *(v10 + 47) &= ~0x80uLL;
  }

  if (!self->_childViewControllers)
  {
    v7 = objc_opt_new();
    childViewControllers = self->_childViewControllers;
    self->_childViewControllers = v7;

    controllerCopy = v10;
  }

  if (controllerCopy)
  {
    v9 = *(controllerCopy + 192);
    *(controllerCopy + 192) = v9 | 0x100;
    [v10 setParentViewController:self];
    controllerCopy = v10;
    *(v10 + 192) = *(v10 + 192) & 0xFEFF | v9 & 0x100;
  }
}

- (void)_addChildViewController:(id)controller performHierarchyCheck:(BOOL)check notifyWillMove:(BOOL)move
{
  moveCopy = move;
  checkCopy = check;
  controllerCopy = controller;
  v20 = controllerCopy;
  if (!checkCopy)
  {
    goto LABEL_8;
  }

  parentViewController = [controllerCopy parentViewController];
  if (!parentViewController)
  {
    _existingView = [v20 _existingView];
    window = [_existingView window];

    if (!window)
    {
      goto LABEL_4;
    }

    _existingView2 = [v20 _existingView];
    superview = [_existingView2 superview];
    parentViewController = [superview _viewControllerForAncestor];

    if (parentViewController && parentViewController != self)
    {
      [MEMORY[0x1E695DF30] raise:@"UIViewControllerHierarchyInconsistency" format:{@"child view controller:%@ should have parent view controller:%@ but requested parent is:%@", v20, parentViewController, self}];
    }
  }

LABEL_4:
  if (dyld_program_sdk_at_least())
  {
    presentedViewController = [(UIViewController *)self presentedViewController];

    if (v20)
    {
      if (presentedViewController == v20)
      {
        [MEMORY[0x1E695DF30] raise:@"UIViewControllerHierarchyInconsistency" format:{@"trying to add child view controller that is already presented: %@", v20}];
      }
    }
  }

LABEL_8:
  _window = [(UIViewController *)self _window];
  screen = [_window screen];

  [v20 __willChangeToIdiom:objc_msgSend(screen onScreen:{"_userInterfaceIdiom"), screen}];
  parentViewController2 = [v20 parentViewController];

  if (parentViewController2)
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

  if (moveCopy)
  {
    [v20 willMoveToParentViewController:self];
  }

  if (dyld_program_sdk_at_least())
  {
    navigationController = [(UIViewController *)self navigationController];
    [navigationController _viewControllerSubtreeDidGainViewController:self];
  }

  v15 = [(UIViewController *)self _splitViewControllerEnforcingClass:1];
  [v15 _viewControllerChildViewControllersDidChange:self];
}

- (void)removeChildViewController:(id)controller notifyDidMove:(BOOL)move
{
  moveCopy = move;
  controllerCopy = controller;
  [(NSMutableArray *)self->_childViewControllers removeObjectIdenticalTo:controllerCopy];
  [(UIViewController *)self _removeChildViewController:controllerCopy];
  [(UIResponder *)self _didChangeDeepestActionResponder];
  if (_UISolariumEnabled() && ([UIApp _isSpringBoard] & 1) == 0 && -[NSMutableArray count](self->_childViewControllers, "count") <= 1)
  {
    [(UIViewController *)self setNeedsStatusBarAppearanceUpdate];
  }

  v7 = [(UIViewController *)self _splitViewControllerEnforcingClass:1];
  [v7 _viewControllerChildViewControllersDidChange:self];

  if (moveCopy)
  {
    [controllerCopy didMoveToParentViewController:0];
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

- (void)setParentViewController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  if ((*(&self->_viewControllerFlags + 4) & 0x100) == 0)
  {
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __44__UIViewController_setParentViewController___block_invoke;
    v14 = &unk_1E70F35B8;
    selfCopy = self;
    v6 = controllerCopy;
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
        selfCopy3 = self;
        v10 = v6;
        goto LABEL_12;
      }
    }

    [v8[3] addObject:{self, v11, v12, v13, v14, selfCopy}];
    goto LABEL_10;
  }

  selfCopy3 = self;
  v10 = v5;
LABEL_12:
  [(UIViewController *)selfCopy3 __setParentViewController:v10];
}

- (void)__setParentViewController:(uint64_t)controller
{
  v3 = a2;
  if (controller && *(controller + 96) != v3)
  {
    *(controller + 96) = v3;
    v8 = v3;
    v4 = v3;
    if (_UIViewControllersInheritTraitsFromViewHierarchy())
    {
      if (v4 && ([v4 overrideTraitCollectionForChildViewController:controller], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v6 = v5;
        [(UIViewController *)controller _applyCompatibilityTraitOverridesForOverrideTraitCollection:v5];
      }

      else
      {
        v6 = [(UIViewController *)controller _compatibilityTraitOverridesFromParentViewControllerCreateIfNecessary:?];
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
  selfCopy = self;
  if (self)
  {
    v2 = self[12];
    v3 = v2;
    if (!v2)
    {
      v3 = selfCopy[14];
    }

    selfCopy = v3;
  }

  return selfCopy;
}

- (id)_nonModalAncestorViewControllerStopAtIsPresentationContext:(BOOL)context
{
  contextCopy = context;
  parentViewController = self;
  if (!context)
  {
    parentViewController = self->_parentViewController;
  }

  v6 = parentViewController;
  if (v6)
  {
    selfCopy = v6;
    while (1)
    {
      v8 = selfCopy->_parentViewController;
      if (!v8)
      {
        break;
      }

      v9 = v8;
      if (contextCopy)
      {
        definesPresentationContext = [(UIViewController *)selfCopy definesPresentationContext];

        if (definesPresentationContext)
        {
          break;
        }
      }

      else
      {
      }

      v11 = selfCopy->_parentViewController;

      selfCopy = v11;
      if (!v11)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    selfCopy = self;
  }

  return selfCopy;
}

- (id)_rootAncestorViewControllerInWindow:(void *)window
{
  if (window)
  {
    _nonModalAncestorViewController = [window _nonModalAncestorViewController];
    v4 = _nonModalAncestorViewController;
    if (_nonModalAncestorViewController)
    {
      v5 = _nonModalAncestorViewController;
      do
      {
        if (a2 && ([v5 _isRootViewController] & 1) != 0)
        {
          break;
        }

        _parentModalViewController = [v5 _parentModalViewController];

        if (!_parentModalViewController)
        {
          break;
        }

        _parentModalViewController2 = [v5 _parentModalViewController];

        v5 = _parentModalViewController2;
      }

      while (_parentModalViewController2);
    }

    else
    {
      v5 = 0;
    }

    parentViewController = [v5 parentViewController];
    if (parentViewController && (v9 = parentViewController, v10 = dyld_program_sdk_at_least(), v9, (v10 & 1) != 0))
    {
      _rootAncestorViewController = [v5 _rootAncestorViewController];
    }

    else
    {
      _rootAncestorViewController = v5;
    }

    v12 = _rootAncestorViewController;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_viewsWithDisabledInteractionGivenTransitionContext:(id)context
{
  v41 = *MEMORY[0x1E69E9840];
  contextCopy = context;
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
        _existingView = [v11 _existingView];
        _isInAWindow = [_existingView _isInAWindow];

        if (_isInAWindow)
        {
          v14 = [v11 _viewsWithDisabledInteractionGivenTransitionContext:contextCopy];
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
        _existingView2 = [v23 _existingView];
        _isInAWindow2 = [_existingView2 _isInAWindow];

        if (_isInAWindow2)
        {
          v26 = [v23 _viewsWithDisabledInteractionGivenTransitionContext:contextCopy];
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

- (uint64_t)_isPresentingInWindow:(void *)window
{
  v3 = a2;
  if (window && ([window presentedViewController], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    while (1)
    {
      if ([v5 isViewLoaded])
      {
        view = [v5 view];
        window = [view window];

        if (window == v3)
        {
          break;
        }
      }

      presentedViewController = [v5 presentedViewController];

      v5 = presentedViewController;
      if (!presentedViewController)
      {
        goto LABEL_10;
      }
    }

    presentedViewController = 1;
LABEL_10:
  }

  else
  {
    presentedViewController = 0;
  }

  return presentedViewController;
}

- (id)_modalPresenterForPresentationController:(uint64_t)controller
{
  v3 = a2;
  v4 = v3;
  if (controller)
  {
    v5 = [v3 _initialPresentationViewControllerForViewController:controller];
    v6 = [v5 _nonModalAncestorViewControllerStopAtIsPresentationContext:{objc_msgSend(v4, "_shouldRespectDefinesPresentationContext")}];
    if ([v4 shouldPresentInFullscreen])
    {
      v7 = v6;
      v8 = v7;
      if (v7)
      {
        _parentModalViewController = [v7 _parentModalViewController];
        _appearingOrAppearedChildModalViewController = v8;
        if (_parentModalViewController)
        {
          v11 = v8;
          do
          {
            _appearingOrAppearedChildModalViewController = _parentModalViewController;

            _parentModalViewController = [_appearingOrAppearedChildModalViewController _parentModalViewController];
            v11 = _appearingOrAppearedChildModalViewController;
          }

          while (_parentModalViewController);
        }
      }

      else
      {
        _appearingOrAppearedChildModalViewController = 0;
      }

      _parentViewController = [(UIViewController *)_appearingOrAppearedChildModalViewController _parentViewController];
      if (_parentViewController)
      {
        v13 = _parentViewController;
        v14 = [(UIViewController *)_parentViewController _modalPresenterForPresentationController:v4];

LABEL_17:
        goto LABEL_18;
      }
    }

    _appearingOrAppearedChildModalViewController = [(UIViewController *)v6 _appearingOrAppearedChildModalViewController];
    while ([v6 _mayForwardPresentationsToPresentedViewController] && _appearingOrAppearedChildModalViewController)
    {
      v15 = v6;
      v6 = _appearingOrAppearedChildModalViewController;

      _appearingOrAppearedChildModalViewController = [(UIViewController *)v6 _appearingOrAppearedChildModalViewController];
    }

    v8 = v6;
    v14 = v8;
    goto LABEL_17;
  }

  v14 = 0;
LABEL_18:

  return v14;
}

- (id)_modalPresenter:(void *)presenter
{
  v5 = 0;
  if (a2 <= 14)
  {
    if (a2 != 3 && a2 != 6)
    {
      goto LABEL_9;
    }

LABEL_8:
    _popoverController = [presenter _popoverController];
    v5 = _popoverController == 0;
    goto LABEL_9;
  }

  if (a2 == 18)
  {
    goto LABEL_8;
  }

  if (a2 == 15)
  {
    presenterCopy = presenter;
    goto LABEL_24;
  }

LABEL_9:
  v7 = [presenter _nonModalAncestorViewControllerStopAtIsPresentationContext:v5];
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
    _parentModalViewController = [v8 _parentModalViewController];
    if (_parentModalViewController)
    {
      do
      {
        v11 = _parentModalViewController;

        _parentModalViewController = [v11 _parentModalViewController];
        v9 = v11;
      }

      while (_parentModalViewController);
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

  _parentViewController = [(UIViewController *)v11 _parentViewController];
  if (!_parentViewController)
  {

LABEL_22:
    presenterCopy = v7;
    goto LABEL_23;
  }

  v13 = _parentViewController;
  presenterCopy = [(UIViewController *)_parentViewController _modalPresenter:a2];

LABEL_23:
LABEL_24:

  return presenterCopy;
}

- (id)_ancestorViewControllerOfClass:(uint64_t)class allowModalParent:
{
  if (self)
  {
    v6 = *(self + 96);
    v7 = v6;
    if (class && !v6)
    {
      v7 = *(self + 112);
    }

    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = [(UIViewController *)v7 _ancestorViewControllerOfClass:a2 allowModalParent:class];
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

  firstObject = [(NSMutableArray *)self->_childViewControllers firstObject];
  _shouldOverlayTabBar = [firstObject _shouldOverlayTabBar];

  return _shouldOverlayTabBar;
}

- (id)_hostingSplitViewControllerForTabBar
{
  if ([(NSMutableArray *)self->_childViewControllers count]== 1)
  {
    firstObject = [(NSMutableArray *)self->_childViewControllers firstObject];
    _hostingSplitViewControllerForTabBar = [firstObject _hostingSplitViewControllerForTabBar];
  }

  else
  {
    _hostingSplitViewControllerForTabBar = 0;
  }

  return _hostingSplitViewControllerForTabBar;
}

- (void)setContainmentSupport:(BOOL)support
{
  v3 = 0x80000;
  if (!support)
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

- (void)setInAnimatedVCTransition:(BOOL)transition
{
  v3 = 0x200000;
  if (!transition)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFFFFDFFFFFLL | v3;
}

- (void)_setViewAppearState:(uint64_t)state isAnimating:
{
  if (!self)
  {
    return;
  }

  if ((*(self + 379) & 4) != 0)
  {
    goto LABEL_65;
  }

  _existingView = [self _existingView];
  window = [_existingView window];
  if (window || ([self isPerformingModalTransition] & 1) != 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  childModalViewController = [self childModalViewController];
  if (!childModalViewController)
  {
    goto LABEL_6;
  }

  v35 = childModalViewController;
  childModalViewController2 = [self childModalViewController];
  modalPresentationStyle = [childModalViewController2 modalPresentationStyle];

  if (modalPresentationStyle != 3)
  {
LABEL_7:
    LODWORD(v58) = *(self + 376);
    _forwardAppearanceMethods = [self _forwardAppearanceMethods];
    if (_forwardAppearanceMethods)
    {
      _existingView2 = [self _existingView];
    }

    else
    {
      _existingView2 = 0;
    }

    v10 = _existingView2;
    if (a2 != 1)
    {
      [(UIViewController *)self __viewIsAppearing:state skipWindowCheck:1];
    }

    *(self + 376) = *(self + 376) & 0xFFFFFFFFFFFFFFFCLL | a2 & 3 | 0x100000;
    v11 = _UISetCurrentFallbackEnvironment(self);
    childModalViewController3 = [self childModalViewController];
    if (childModalViewController3)
    {
      childModalViewController6 = childModalViewController3;
      childModalViewController4 = [self childModalViewController];
      if ([childModalViewController4 modalPresentationStyle] == 6)
      {
        childModalViewController5 = [self childModalViewController];
        inExplicitAppearanceTransition = [childModalViewController5 inExplicitAppearanceTransition];

        if (inExplicitAppearanceTransition)
        {
          goto LABEL_18;
        }

        childModalViewController6 = [self childModalViewController];
        [(UIViewController *)childModalViewController6 _setViewAppearState:a2 isAnimating:state];
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
        if (*(self + 248))
        {
          processInfo = [MEMORY[0x1E696AE30] processInfo];
          [processInfo endActivity:*(self + 248)];

          v32 = *(self + 248);
          *(self + 248) = 0;
        }

        [self viewDidAppear:state];
        _embeddedDelegate = [self _embeddedDelegate];

        if (!_embeddedDelegate)
        {
          goto LABEL_56;
        }

        _embeddedDelegate2 = [self _embeddedDelegate];
        [_embeddedDelegate2 viewController:self viewDidAppear:state];
      }

      else
      {
        if (a2 != 3)
        {
          goto LABEL_56;
        }

        if (state && [(UIViewController *)self _shouldTrackAppearStateChange])
        {
          processInfo2 = [MEMORY[0x1E696AE30] processInfo];
          _effectiveInteractionActivityTrackingBaseName = [self _effectiveInteractionActivityTrackingBaseName];
          v24 = [_effectiveInteractionActivityTrackingBaseName stringByAppendingString:@"-Disappearing"];
          v25 = [processInfo2 beginActivityWithOptions:0x200000000000 reason:v24];
          v26 = *(self + 248);
          *(self + 248) = v25;
        }

        else
        {
          processInfo2 = *(self + 248);
          *(self + 248) = 0;
        }

        [self viewWillDisappear:state];
        _ornamentDelegate = [self _ornamentDelegate];

        if (_ornamentDelegate)
        {
          _ornamentDelegate2 = [self _ornamentDelegate];
          [_ornamentDelegate2 viewController:self viewWillDisappear:state];
        }

        _embeddedDelegate3 = [self _embeddedDelegate];

        if (!_embeddedDelegate3)
        {
          goto LABEL_56;
        }

        _embeddedDelegate2 = [self _embeddedDelegate];
        [_embeddedDelegate2 viewController:self viewWillDisappear:state];
      }
    }

    else if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_56;
      }

      if (state && [(UIViewController *)self _shouldTrackAppearStateChange])
      {
        processInfo3 = [MEMORY[0x1E696AE30] processInfo];
        _effectiveInteractionActivityTrackingBaseName2 = [self _effectiveInteractionActivityTrackingBaseName];
        v19 = [_effectiveInteractionActivityTrackingBaseName2 stringByAppendingString:@"-Appearing"];
        v20 = [processInfo3 beginActivityWithOptions:0x200000000000 reason:v19];
        v21 = *(self + 248);
        *(self + 248) = v20;
      }

      else
      {
        processInfo3 = *(self + 248);
        *(self + 248) = 0;
      }

      [self viewWillAppear:state];
      _ornamentDelegate3 = [self _ornamentDelegate];

      if (_ornamentDelegate3)
      {
        _ornamentDelegate4 = [self _ornamentDelegate];
        [_ornamentDelegate4 viewController:self viewWillAppear:state];
      }

      _embeddedDelegate4 = [self _embeddedDelegate];

      if (_embeddedDelegate4)
      {
        _embeddedDelegate5 = [self _embeddedDelegate];
        [_embeddedDelegate5 viewController:self viewWillAppear:state];
      }

      *(self + 376) |= 0x40000000000000uLL;
      v42 = *(self + 512);
      if (!v42)
      {
        goto LABEL_56;
      }

      presentedViewController = [v42 presentedViewController];
      _hasAppeared = [presentedViewController _hasAppeared];

      if (!_hasAppeared)
      {
        goto LABEL_56;
      }

      _embeddedDelegate2 = [*(self + 512) containerView];
      [_embeddedDelegate2 setNeedsLayout];
    }

    else
    {
      if (*(self + 248))
      {
        processInfo4 = [MEMORY[0x1E696AE30] processInfo];
        [processInfo4 endActivity:*(self + 248)];

        v28 = *(self + 248);
        *(self + 248) = 0;
      }

      [self viewDidDisappear:state];
      _embeddedDelegate6 = [self _embeddedDelegate];

      if (!_embeddedDelegate6)
      {
        goto LABEL_56;
      }

      _embeddedDelegate2 = [self _embeddedDelegate];
      [_embeddedDelegate2 viewController:self viewDidDisappear:state];
    }

LABEL_56:
    _UIRestorePreviousFallbackEnvironment(v11);
    v48 = *(self + 376);
    *(self + 376) = v48 & 0xFFFFFFFFFFEFFFFFLL;
    if ((a2 & 0xFFFFFFFD) == 0 && (v48 & 0x8000000) != 0)
    {
      parentViewController = [self parentViewController];
      [self didMoveToParentViewController:parentViewController];
    }

    if (_forwardAppearanceMethods)
    {
      if ([self childViewControllersCount])
      {
        childViewControllers = [self childViewControllers];
      }

      else
      {
        childViewControllers = 0;
      }

      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __52__UIViewController__setViewAppearState_isAnimating___block_invoke;
      v61[3] = &unk_1E7104128;
      v63 = v59 & 3;
      v64 = a2;
      stateCopy = state;
      v62 = v10;
      [childViewControllers enumerateObjectsUsingBlock:v61];
    }

LABEL_65:
    v51 = *(self + 24);
    if (v51)
    {
      v52 = v51[11];
      if ((v52 & 0x200000000000000) != 0)
      {
        if (a2 != 3 && a2)
        {
          if ((*(self + 379) & 0x80) != 0)
          {
            [v51 _setNeedsUpdateConstraints];
            *(self + 376) &= ~0x80000000uLL;
          }
        }

        else
        {
          if ((v52 & 0x80000000000) == 0)
          {
            _constraintsExceptingSubviewAutoresizingConstraints = [v51 _constraintsExceptingSubviewAutoresizingConstraints];
            v54 = [_constraintsExceptingSubviewAutoresizingConstraints count];

            if (v54)
            {
              *(self + 376) |= 0x80000000uLL;
            }
          }

          if ((dyld_program_sdk_at_least() & 1) == 0)
          {
            navigationController = [self navigationController];
            if (([navigationController needsDeferredTransition] & 1) == 0)
            {
              view = [navigationController view];
              if (view)
              {
                v57 = view[11];
                if ((v57 & 0x30000000000000) == 0)
                {
                  view[11] = v57 | 0x20000000000000;
                }
              }
            }
          }
        }
      }
    }

    return;
  }

  childModalViewController7 = [self childModalViewController];
  [(UIViewController *)childModalViewController7 _setViewAppearState:a2 isAnimating:state];
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

- (void)__viewWillAppear:(BOOL)appear
{
  if ((*&self->_viewControllerFlags & 3) == 1)
  {
    self->_explicitAppearanceTransitionLevel = 0;
  }

  else
  {
    appearCopy = appear;
    *&self->_viewControllerFlags |= 0x2000000uLL;
    [(UIViewController *)self loadViewIfRequired];
    [(UIViewController *)self _setViewAppearState:appearCopy isAnimating:?];
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
        view = [(UIViewController *)self view];
        [view _receiveVisitor:v6];
      }

      if (v13[5])
      {
        _keyboardSceneDelegate = [(UIViewController *)self _keyboardSceneDelegate];
        v9 = v13[5];
        v10 = [MEMORY[0x1E696B098] valueWithPointer:self];
        [_keyboardSceneDelegate _beginPersistingInputAccessoryViewForResponder:v9 withId:v10];
      }

      _Block_object_dispose(&v12, 8);
    }
  }
}

- (void)_performAtViewIsAppearing:(uint64_t)appearing
{
  v3 = a2;
  v4 = v3;
  if (appearing)
  {
    if (!v3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__performAtViewIsAppearing_ object:appearing file:@"UIViewController.m" lineNumber:7056 description:{@"Invalid parameter not satisfying: %@", @"block != NULL"}];
    }

    v5 = _Block_copy(*(appearing + 312));
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
      v8 = *(appearing + 312);
      *(appearing + 312) = v7;
    }

    else
    {
      v9 = _Block_copy(v4);
      v10 = *(appearing + 312);
      *(appearing + 312) = v9;
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

- (void)_executeViewIsAppearingBlock:(uint64_t)block
{
  if (block)
  {
    v4 = _Block_copy(*(block + 312));
    if (v4)
    {
      v5 = v4;
      do
      {
        v6 = *(block + 312);
        *(block + 312) = 0;

        v5[2](v5, block, a2);
        v7 = _Block_copy(*(block + 312));

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

- (void)__viewDidAppear:(BOOL)appear
{
  viewControllerFlags = self->_viewControllerFlags;
  if ((viewControllerFlags & 3) == 2)
  {
    self->_explicitAppearanceTransitionLevel = 0;
  }

  else
  {
    appearCopy = appear;
    if ((viewControllerFlags & 0x20000000) == 0 && self->_afterAppearance)
    {
      [(UIViewController *)self setAfterAppearanceBlock:0];
    }

    if (self->_explicitAppearanceTransitionLevel >= 1)
    {
      self->_explicitAppearanceTransitionLevel = 0;
    }

    *&self->_viewControllerFlags |= 0x2000000uLL;
    [(UIViewController *)self _setViewAppearState:appearCopy isAnimating:?];

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

- (void)__viewWillDisappear:(void *)disappear
{
  if (disappear)
  {
    if ((~*(disappear + 94) & 3) != 0)
    {
      disappear[47] &= ~0x2000000uLL;
      [(UIViewController *)disappear _setViewAppearState:a2 isAnimating:?];

      [(UIViewController *)disappear _unloadHierarchyInputAccessoryViewIfNecessary];
    }

    else
    {
      disappear[41] = 0;
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

- (void)__viewDidDisappear:(void *)disappear
{
  if (disappear)
  {
    v3 = disappear[47];
    if ((v3 & 3) != 0)
    {
      v5 = v3 & 0xFFFFFFFFFDFFFFFFLL;
      disappear[47] = v5;
      if (disappear[41] >= 1)
      {
        disappear[41] = 0;
        v5 = disappear[47];
      }

      if ((v5 & 0x20000000) == 0)
      {
        if (disappear[40])
        {
          [disappear setAfterAppearanceBlock:0];
        }
      }

      [(UIViewController *)disappear _setViewAppearState:a2 isAnimating:?];
      [(UIViewController *)disappear _unloadHierarchyInputAccessoryViewIfNecessary];
      disappear[47] &= ~0x8000000000uLL;
    }

    else
    {
      disappear[41] = 0;
    }
  }
}

- (uint64_t)_endAppearanceTransition:(uint64_t)transition
{
  v3 = a2;
  if (transition)
  {
    if ((*(transition + 379) & 4) != 0)
    {
LABEL_6:
      transition = 0;
      goto LABEL_14;
    }

    isInAnimatedVCTransition = [transition isInAnimatedVCTransition];
    v5 = *(transition + 328);
    *(transition + 328) = v5 - 1;
    if (v5 <= 0)
    {
      NSLog(&cfstr_UnbalancedCall.isa, transition);
      *(transition + 328) = 0;
    }

    else if (v5 != 1 && ([transition _forwardAppearanceMethods] & 1) != 0)
    {
      goto LABEL_6;
    }

    [transition setInAnimatedVCTransition:0];
    if ((*(transition + 379) & 2) != 0)
    {
      [transition __viewDidAppear:isInAnimatedVCTransition];
      if (!v3)
      {
LABEL_13:
        transition = 1;
        goto LABEL_14;
      }
    }

    else
    {
      [(UIViewController *)transition __viewDidDisappear:isInAnimatedVCTransition];
      if (!v3)
      {
        goto LABEL_13;
      }
    }

    v3[2](v3);
    goto LABEL_13;
  }

LABEL_14:

  return transition;
}

- (void)setAppearanceTransitionsAreDisabled:(BOOL)disabled
{
  v3 = 0x4000000;
  if (!disabled)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFFFBFFFFFFLL | v3;
}

- (void)_addDescendantsToArray:(uint64_t)array visibleOnly:
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (self)
  {
    _existingView = [self _existingView];
    v7 = _existingView;
    if (_existingView)
    {
      if (!array || ([_existingView isHidden] & 1) == 0 && (objc_msgSend(v7, "window"), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
      {
        [v5 addObject:self];
      }

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      mutableChildViewControllers = [self mutableChildViewControllers];
      v10 = [mutableChildViewControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
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
              objc_enumerationMutation(mutableChildViewControllers);
            }

            v14 = *(*(&v17 + 1) + 8 * i);
            _existingView2 = [v14 _existingView];
            v16 = [_existingView2 isDescendantOfView:v7];

            if (v16)
            {
              [(UIViewController *)v14 _addDescendantsToArray:v5 visibleOnly:array];
            }
          }

          v11 = [mutableChildViewControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v11);
      }
    }
  }
}

+ (void)_withDisabledAppearanceTransitions:(BOOL)transitions forDescendantsOf:(id)of visibleOnly:(BOOL)only perform:(id)perform
{
  onlyCopy = only;
  transitionsCopy = transitions;
  v33 = *MEMORY[0x1E69E9840];
  ofCopy = of;
  performCopy = perform;
  v11 = performCopy;
  if (!transitionsCopy)
  {
    v13 = 0;
    if (!performCopy)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v12 addObject:ofCopy];
  [(UIViewController *)ofCopy _addDescendantsToArray:v12 visibleOnly:onlyCopy];
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
  if (transitionsCopy)
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

- (void)setAfterAppearanceBlock:(id)block
{
  if (self->_afterAppearance != block)
  {
    v4 = _Block_copy(block);
    afterAppearance = self->_afterAppearance;
    self->_afterAppearance = v4;
  }
}

- (void)setNeedsDidMoveCleanup:(BOOL)cleanup
{
  v3 = 0x8000000;
  if (!cleanup)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFFF7FFFFFFLL | v3;
}

- (void)_beginAppearanceTransitionToViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  [controller beginAppearanceTransition:1 animated:?];

  [(UIViewController *)self beginAppearanceTransition:0 animated:animatedCopy];
}

- (void)_endAppearanceTransitionToViewController:(id)controller
{
  controllerCopy = controller;
  [(UIViewController *)self endAppearanceTransition];
  [controllerCopy endAppearanceTransition];
}

- (void)_updateForReselectionInContainingTabBarController
{
  if ([(NSMutableArray *)self->_childViewControllers count]== 1)
  {
    firstObject = [(NSMutableArray *)self->_childViewControllers firstObject];
    [firstObject _updateForReselectionInContainingTabBarController];
  }
}

- (uint64_t)_tryBecomeRootViewControllerInWindow:(uint64_t)window
{
  v3 = a2;
  v4 = v3;
  if (window)
  {
    _delegateViewController = [v3 _delegateViewController];
    if (_delegateViewController || ([window _popoverController], (_delegateViewController = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      _existingView = [window _existingView];
      superview = [_existingView superview];
      _viewControllerForAncestor = [superview _viewControllerForAncestor];

      if (!_viewControllerForAncestor)
      {
        *(window + 376) |= 0x80uLL;
        [v4 _setDelegateViewController:window];
        window = 1;
        goto LABEL_6;
      }
    }

    window = 0;
  }

LABEL_6:

  return window;
}

- (void)viewWillMoveToWindow:(id)window
{
  windowCopy = window;
  isPerformingModalTransition = [(UIViewController *)self isPerformingModalTransition];
  v5 = windowCopy;
  if (isPerformingModalTransition)
  {
    goto LABEL_27;
  }

  presentedViewController = [(UIViewController *)self->_parentModalViewController presentedViewController];

  if (presentedViewController != self)
  {
    parentViewController = [(UIViewController *)self parentViewController];
    if ([(UIViewController *)self _appearState])
    {
      v8 = [(UIViewController *)self _appearState]== 3;
    }

    else
    {
      v8 = 1;
    }

    if (windowCopy)
    {
      _existingView = [parentViewController _existingView];
      window = [_existingView window];
      if (window == windowCopy && [(UIViewController *)parentViewController _didSelfOrAncestorBeginAppearanceTransition]&& !self->_explicitAppearanceTransitionLevel)
      {
        parentViewController2 = [(UIViewController *)self parentViewController];
        v11 = [parentViewController2 _appearState] == 1 && v8;
      }

      else
      {
        v11 = 0;
      }

      if (!parentViewController)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v11 = 0;
      if (!parentViewController)
      {
        goto LABEL_17;
      }
    }

    if ([parentViewController _appearState] != 2 && objc_msgSend(parentViewController, "isSettingAppearState") && (objc_msgSend(parentViewController, "containmentSupport") & 1) != 0)
    {
LABEL_23:

      goto LABEL_24;
    }

LABEL_17:
    _popoverController = [(UIViewController *)self _popoverController];
    if (([_popoverController _manuallyHandlesContentViewControllerAppearanceCalls] & 1) != 0 || (*(&self->_viewControllerFlags + 3) & 4) != 0)
    {
    }

    else
    {
      v13 = v11 | ~[(UIViewController *)self _didSelfOrAncestorBeginAppearanceTransition];

      if (v13)
      {
        viewControllerFlags = self->_viewControllerFlags;
        if (windowCopy)
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
  v5 = windowCopy;
  if (!windowCopy)
  {
    _isRootViewController = [(UIViewController *)self _isRootViewController];
    v5 = 0;
    if (_isRootViewController)
    {
      *&self->_viewControllerFlags &= ~0x80uLL;
    }
  }

LABEL_27:
}

- (void)__willChangeToIdiom:(int64_t)idiom onScreen:(id)screen
{
  v19 = *MEMORY[0x1E69E9840];
  screenCopy = screen;
  if (screenCopy)
  {
    _window = [(UIViewController *)self _window];
    screen = [_window screen];

    if (!screen || [screen _userInterfaceIdiom] != idiom)
    {
      [(UIViewController *)self _willChangeToIdiom:idiom onScreen:screenCopy];
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      childViewControllers = [(UIViewController *)self childViewControllers];
      v10 = [childViewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
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
              objc_enumerationMutation(childViewControllers);
            }

            [*(*(&v14 + 1) + 8 * v13++) __willChangeToIdiom:idiom onScreen:screenCopy];
          }

          while (v11 != v13);
          v11 = [childViewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v11);
      }
    }
  }
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  windowCopy = window;
  v8 = windowCopy;
  v9 = windowCopy == 0;
  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFDFFFFFFFFFFFFFLL | ((windowCopy != 0) << 53);
  if (!windowCopy)
  {
    _existingView = [(UIViewController *)self _existingView];
    [_existingView frame];
    self->_lastForwardedTransitionSize.width = v18;
    self->_lastForwardedTransitionSize.height = v19;

    if (!disappearCopy)
    {
      goto LABEL_68;
    }

LABEL_20:
    if ([(UIViewController *)self isPerformingModalTransition])
    {
      goto LABEL_68;
    }

    presentedViewController = [(UIViewController *)self->_parentModalViewController presentedViewController];
    v21 = presentedViewController;
    if (presentedViewController == self)
    {

      goto LABEL_68;
    }

    parentViewController = [(UIViewController *)self parentViewController];
    if (parentViewController)
    {
      if (v8 || (-[UIViewController parentViewController](self, "parentViewController"), v66 = objc_claimAutoreleasedReturnValue(), [v66 _appearState] != 2))
      {
        parentViewController2 = [(UIViewController *)self parentViewController];
        parentViewController3 = parentViewController2;
        if (parentViewController2 && [parentViewController2 isSettingAppearState] && (objc_msgSend(parentViewController3, "containmentSupport") & 1) != 0)
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

    _popoverController = [(UIViewController *)self _popoverController];
    if (([_popoverController _manuallyHandlesContentViewControllerAppearanceCalls] & 1) != 0 || (*(&self->_viewControllerFlags + 3) & 4) != 0)
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

  screen = [windowCopy screen];
  _userInterfaceIdiom = [screen _userInterfaceIdiom];

  if (_userInterfaceIdiom == 3 && ![(UIViewController *)self _isInCustomTransition])
  {
    presentedViewController2 = [(UIViewController *)self->_parentModalViewController presentedViewController];
    v25 = presentedViewController2;
    if (presentedViewController2 == self)
    {
      v37 = +[UIDevice currentDevice];
      userInterfaceIdiom = [v37 userInterfaceIdiom];

      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        _isModalSheet = [(UIViewController *)self _isModalSheet];
LABEL_53:
        v40 = objc_opt_class();
        view = [(UIViewController *)self view];
        v42 = [v40 _isViewSizeFullScreen:view inWindow:v8 ignoreInWindowCheck:1];

        parentViewController3 = [(UIViewController *)self parentViewController];

        if (!parentViewController3 && _isModalSheet != v42)
        {
          view2 = [(UIViewController *)self view];
          [view2 frame];
          v45 = v44;
          v47 = v46;
          view3 = [(UIViewController *)self view];
          parentViewController3 = [view3 superview];
          [parentViewController3 bounds];
          v50 = v49;
          v52 = v51;

          if (v45 != v50 || v47 != v52)
          {
            view4 = [(UIViewController *)self view];
            superview = [view4 superview];
            [superview bounds];
            v56 = v55;
            v58 = v57;
            v60 = v59;
            v62 = v61;
            parentViewController3 = [(UIViewController *)self view];
            [parentViewController3 setFrame:{v56, v58, v60, v62}];
          }
        }

        goto LABEL_4;
      }
    }

    else
    {
    }

    _isModalSheet = 1;
    goto LABEL_53;
  }

LABEL_4:
  if (![(UIViewController *)self _isInCustomTransition])
  {
    [(UIViewController *)self _updateLayoutForStatusBarAndInterfaceOrientation];
    _popoverController2 = [(UIViewController *)self _popoverController];

    v13 = !_UIAppUseModernRotationAndPresentationBehaviors();
    if (_popoverController2)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    if (!v13 && !_popoverController2)
    {
      v14 = ![(UIViewController *)self _isInPopoverPresentation];
    }

    _lastKnownInterfaceOrientation = [(UIViewController *)self _lastKnownInterfaceOrientation];
    if (v14 && (_lastKnownInterfaceOrientation - 5) <= 0xFFFFFFFFFFFFFFFBLL)
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

  if (disappearCopy)
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

+ (void)removeViewControllerForView:(id)view
{
  viewCopy = view;
  __viewDelegate = [(UIView *)viewCopy __viewDelegate];

  if (__viewDelegate)
  {
    [(UIView *)viewCopy __setViewDelegate:?];
  }
}

- (id)_description
{
  v3 = MEMORY[0x1E696AD60];
  if (self)
  {
    v4 = MEMORY[0x1E696AEC0];
    selfCopy = self;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    selfCopy = [v4 stringWithFormat:@"<%@: %p>", v7, selfCopy];
  }

  else
  {
    selfCopy = @"(nil)";
  }

  v9 = [v3 stringWithString:selfCopy];

  if ([(UIViewController *)self isViewLoaded])
  {
    view = [(UIViewController *)self view];
    view2 = [(UIViewController *)self view];
    [view2 frame];
    v12 = NSStringFromCGRect(v15);
    [v9 appendFormat:@" view:%@ frame:%@", view, v12];
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

- (void)_traverseViewControllerHierarchyFromLevel:(int64_t)level withBlock:(id)block
{
  v29 = *MEMORY[0x1E69E9840];
  blockCopy = block;
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
        blockCopy[2](blockCopy, v12, 1, level + 1);
        [v12 _traverseViewControllerHierarchyFromLevel:level + 1 withBlock:blockCopy];
        blockCopy[2](blockCopy, v12, 0, level + 1);
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
        blockCopy[2](blockCopy, v18, 1, level + 1);
        [v18 _traverseViewControllerHierarchyFromLevel:level + 1 withBlock:{blockCopy, v19}];
        blockCopy[2](blockCopy, v18, 0, level + 1);
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }
}

+ (void)_traverseViewControllerHierarchyWithDelayedRelease:(id)release
{
  v28 = *MEMORY[0x1E69E9840];
  releaseCopy = release;
  setRepresentation = [qword_1ED4985A8 setRepresentation];
  v5 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = setRepresentation;
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
            (*(releaseCopy + 2))(releaseCopy, v11, 1, 0);
            [v11 _traverseViewControllerHierarchyFromLevel:0 withBlock:releaseCopy];
            (*(releaseCopy + 2))(releaseCopy, v11, 0, 0);
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
        (*(releaseCopy + 2))(releaseCopy, v17, 1, 0);
        [v17 _traverseViewControllerHierarchyFromLevel:0 withBlock:{releaseCopy, v18}];
        (*(releaseCopy + 2))(releaseCopy, v17, 0, 0);
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }
}

- (id)_descriptionWithChildren:(int)children
{
  string = [MEMORY[0x1E696AD60] string];
  if (children >= 1)
  {
    childrenCopy = children;
    do
    {
      [string appendString:@"    "];
      --childrenCopy;
    }

    while (childrenCopy);
  }

  _description = [(UIViewController *)self _description];
  [string appendFormat:@"%@", _description];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__UIViewController__descriptionWithChildren___block_invoke;
  v10[3] = &unk_1E7104178;
  v8 = string;
  v11 = v8;
  [(UIViewController *)self _traverseViewControllerHierarchyFromLevel:children + 1 withBlock:v10];

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
  string = [MEMORY[0x1E696AD60] string];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__UIViewController__allDescriptions__block_invoke;
  v6[3] = &unk_1E7104178;
  v4 = string;
  v7 = v4;
  [self _traverseViewControllerHierarchy:v6];

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

- (id)_descriptionForPrintingHierarchyIncludingInsets:(uint64_t)insets
{
  if (insets)
  {
    if (a2 && (*(insets + 376) & 3u) - 1 <= 1)
    {
      v4 = vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(insets + 928)), vceqzq_f64(*(insets + 944)))))) & 1;
      v5 = 1;
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }

    v6 = MEMORY[0x1E696AD60];
    v7 = _UIBriefDescription(insets);
    v8 = [&unk_1EFE2BC80 objectAtIndexedSubscript:*(insets + 376) & 3];
    if (v4)
    {
      v9 = MEMORY[0x1E696AEC0];
      v2 = NSStringFromDirectionalEdgeInsets(*(insets + 928));
      v10 = [v9 stringWithFormat:@" minimum margins = %@, ", v2];
    }

    else
    {
      v10 = &stru_1EFB14550;
    }

    _existingView = [insets _existingView];
    v12 = _existingView;
    if (_existingView)
    {
      v13 = _UIBriefDescription(_existingView);
      v14 = [v13 mutableCopy];

      window = [v12 window];

      if (window)
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
  rootViewController = [v2 rootViewController];
  _printHierarchy = [rootViewController _printHierarchy];

  return _printHierarchy;
}

+ (id)_safeAreaInsetsTrace
{
  v2 = +[UIWindow _applicationKeyWindow];
  rootViewController = [v2 rootViewController];
  _safeAreaInsetsTrace = [rootViewController _safeAreaInsetsTrace];

  return _safeAreaInsetsTrace;
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

  nibName = [(UIViewController *)self nibName];
  v3 = nibName != 0;

  return v3;
}

- (void)applicationWantsViewsToDisappear
{
  if (self)
  {
    if ([(UIViewController *)self isViewLoaded])
    {
      view = [(UIViewController *)self view];
      window = [view window];
      v5 = window != 0;
    }

    else
    {
      v5 = 0;
    }

    if (self->_parentViewController)
    {
      WeakRetained = objc_loadWeakRetained(&self->_popoverController);
      isPopoverVisible = [WeakRetained isPopoverVisible];
    }

    else
    {
      isPopoverVisible = 1;
    }

    if ((v5 & isPopoverVisible) == 1)
    {
      [(UIViewController *)self __viewWillDisappear:?];

      [(UIViewController *)self __viewDidDisappear:?];
    }
  }
}

+ (BOOL)_isViewSizeFullScreen:(id)screen inWindow:(id)window ignoreInWindowCheck:(BOOL)check
{
  screenCopy = screen;
  windowCopy = window;
  [screenCopy bounds];
  v12 = v11;
  v14 = v13;
  if (windowCopy)
  {
    v15 = v9;
    v16 = v10;
    window = [screenCopy window];

    if (window)
    {
      [screenCopy convertRect:windowCopy toView:{v15, v16, v12, v14}];
      [windowCopy convertRect:0 toWindow:?];
      v12 = v18;
      v14 = v19;
    }
  }

  windowScene = [windowCopy windowScene];
  _coordinateSpace = [windowScene _coordinateSpace];
  v22 = _coordinateSpace;
  if (_coordinateSpace)
  {
    coordinateSpace = _coordinateSpace;
  }

  else
  {
    mainScreen = [objc_opt_self() mainScreen];
    coordinateSpace = [mainScreen coordinateSpace];
  }

  [coordinateSpace bounds];
  v26 = v25;
  v28 = v27;
  v29 = v14 == v27 && v12 == v25;
  if (v29 || check)
  {
    if (v29)
    {
      v31 = 1;
      goto LABEL_19;
    }
  }

  else
  {
    window2 = [screenCopy window];

    if (window2)
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

  presentingViewController = [(UIViewController *)self presentingViewController];
  if (presentingViewController)
  {
    presentingViewController2 = [(UIViewController *)self presentingViewController];
    _presentationController = [presentingViewController2 _presentationController];
  }

  else
  {
    _parentModalViewController = [(UIViewController *)self _parentModalViewController];
    if (!_parentModalViewController)
    {
      _temporaryPresentationController = [(UIViewController *)self _temporaryPresentationController];
      if (_temporaryPresentationController)
      {
        presentationController = [(UIViewController *)self presentationController];
      }

      else
      {
        presentationController = 0;
      }

      presentingViewController2 = 0;
      goto LABEL_7;
    }

    presentingViewController2 = _parentModalViewController;
    _presentationController = [(UIViewController *)self presentationController];
  }

  presentationController = _presentationController;
LABEL_7:

  WeakRetained = objc_loadWeakRetained(&self->_popoverController);
  v9 = WeakRetained;
  if (WeakRetained && [WeakRetained _popoverControllerStyle] != 1 || presentationController && !objc_msgSend(presentationController, "_presentationPotentiallyUnderlapsStatusBar"))
  {

    LOBYTE(v42) = 0;
    return v42;
  }

LABEL_12:
  viewControllerFlags = self->_viewControllerFlags;
  if ((viewControllerFlags & 0x8000000000) == 0)
  {
    _existingView = [(UIViewController *)self _existingView];
    window = [_existingView window];
    v13 = window;
    if (!window)
    {
      LOBYTE(v42) = 0;
LABEL_63:

      return v42;
    }

    v14 = 0;
    if (_UIAppStatusBarHeightForWindow(window) == 0.0)
    {
      v15 = __UIStatusBarManagerForWindow(v13);
      isStatusBarHidden = [v15 isStatusBarHidden];

      if ((isStatusBarHidden & 1) == 0)
      {
        _UIAppStatusBarDefaultHeight();
        v14 = v17;
      }
    }

    _windowInterfaceOrientation = [v13 _windowInterfaceOrientation];
    if (!_windowInterfaceOrientation)
    {
      _windowInterfaceOrientation = [UIApp _sceneInterfaceOrientationFromWindow:v13];
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
    aBlock[5] = _windowInterfaceOrientation;
    v19 = _Block_copy(aBlock);
    if (!_existingView)
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

    _windowHostingScene = [v13 _windowHostingScene];
    _sceneSessionRoleIsCarPlayOrNonInteractiveExternal = [_windowHostingScene _sceneSessionRoleIsCarPlayOrNonInteractiveExternal];

    if (_sceneSessionRoleIsCarPlayOrNonInteractiveExternal)
    {
      selfCopy = self;
      v23 = 0;
      do
      {
        _expectedWindow = [(UIViewController *)selfCopy _expectedWindow];
        _existingView2 = [(UIViewController *)selfCopy _existingView];

        parentViewController = [(UIViewController *)selfCopy parentViewController];

        if (!parentViewController)
        {
          break;
        }

        selfCopy = parentViewController;
        v23 = _existingView2;
      }

      while (!_expectedWindow);

      v27 = 0;
      if (!_expectedWindow || !_existingView2)
      {
        goto LABEL_55;
      }

      [_existingView2 transform];
      if (CGAffineTransformIsIdentity(&v71))
      {
        [_existingView bounds];
        [_existingView2 convertRect:_existingView fromView:?];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;
        [_existingView2 frame];
        v37 = v36;
        v39 = v38;
        [_existingView bounds];
        v27 = v19[2](v19, _expectedWindow, v29 + v37, v31 + v39, v33, v35, v40, v41);
LABEL_55:

        goto LABEL_56;
      }
    }

    else
    {
      if ([v13 _isHostedInAnotherProcess])
      {
        _window = [(UIViewController *)self _window];
        __hostViewUnderlapsStatusBar = [_window __hostViewUnderlapsStatusBar];

        if ((__hostViewUnderlapsStatusBar & 1) == 0)
        {
          LOBYTE(v42) = 0;
          v67 = *&self->_viewControllerFlags & 0xFFFFFFBFFFFFFFFFLL;
LABEL_62:
          *&self->_viewControllerFlags = v67;

          _Block_object_dispose(&v73, 8);
          goto LABEL_63;
        }
      }

      [_existingView bounds];
      [_existingView convertRect:0 toView:?];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;
      [_existingView bounds];
      v27 = v19[2](v19, v13, v46, v48, v50, v52, v53, v54);
      _expectedWindow = [(UIViewController *)self _viewControllerForRotation];
      _existingView3 = [_expectedWindow _existingView];
      _existingView2 = _existingView3;
      if (_existingView3)
      {
        v56 = _existingView3 == _existingView;
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

      if (![_existingView isDescendantOfView:_existingView3])
      {
        v27 = 0;
        goto LABEL_55;
      }

      [_existingView bounds];
      [_existingView convertRect:_existingView2 toView:?];
      v59 = v58;
      v61 = v60;
      v63 = v62;
      [_existingView bounds];
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

- (void)_setShouldFreezeUnderlapsStatusBar:(BOOL)bar
{
  v3 = 0x10000000000;
  if (bar)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFEFFFFFFFFFFLL | v3;
}

- (BOOL)_shouldChildViewControllerUseFullScreenLayout:(id)layout
{
  wantsFullScreenLayout = [layout wantsFullScreenLayout];
  LOBYTE(v5) = 0;
  if (self && wantsFullScreenLayout)
  {
    v6 = self->_parentViewController;
    _existingView = [(UIViewController *)self _existingView];
    window = [_existingView window];

    if ([window isRotating])
    {
      v5 = (*(&self->_viewControllerFlags + 1) >> 2) & 1;
    }

    else
    {
      v5 = [(UIViewController *)self _shouldUseFullScreenLayoutInWindow:window parentViewController:v6];
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

- (BOOL)_shouldUseFullScreenLayoutInWindow:(id)window parentViewController:(id)controller
{
  windowCopy = window;
  controllerCopy = controller;
  if (!-[UIViewController wantsFullScreenLayout](self, "wantsFullScreenLayout") || windowCopy && ([windowCopy _windowHostingScene], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "_sceneSessionRoleIsCarPlayOrNonInteractiveExternal"), v8, (v9 & 1) != 0))
  {
    v10 = 0;
  }

  else if (controllerCopy)
  {
    v10 = [controllerCopy _shouldChildViewControllerUseFullScreenLayout:self];
  }

  else
  {
    _existingView = [(UIViewController *)self _existingView];
    if (_existingView)
    {
      v10 = [objc_opt_class() _isViewSizeFullScreen:_existingView inWindow:windowCopy];
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
    _existingView = [(UIViewController *)self _existingView];
    window = [_existingView window];
    rootViewController = [window rootViewController];
    if (rootViewController == self && (_existingView[95] & 2) != 0)
    {
      translatesAutoresizingMaskIntoConstraints = [_existingView translatesAutoresizingMaskIntoConstraints];

      if ((translatesAutoresizingMaskIntoConstraints & 1) == 0)
      {
        [window _setNeedsUpdateConstraints];
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

- (void)setPerformingModalTransition:(BOOL)transition
{
  v3 = 8;
  if (!transition)
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

- (void)setFinishingModalTransition:(BOOL)transition
{
  v3 = 0x10000;
  if (!transition)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFFFFFEFFFFLL | v3;
}

- (void)setShouldForceNonAnimatedTransition:(BOOL)transition
{
  v3 = 0x100000000;
  if (!transition)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFEFFFFFFFFLL | v3;
}

- (void)_addChildModalViewController:(id *)controller
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (controller)
  {
    if (controller[13])
    {
LABEL_10:
      _window = [controller _window];
      screen = [_window screen];

      [v3 __willChangeToIdiom:objc_msgSend(screen onScreen:{"_userInterfaceIdiom"), screen}];
      [controller[13] addObject:v3];
      [v3 setParentModalViewController:controller];
      [controller _didChangeDeepestActionResponder];
      [controller _didChangeChildModalViewControllers];

      goto LABEL_11;
    }

    _UIIsPrivateMainBundle();
    if (dyld_program_sdk_at_least())
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[UIViewController _addChildModalViewController:]"];
      [currentHandler handleFailureInFunction:v5 file:@"UIViewController.m" lineNumber:8389 description:@"UIViewController was not initialized before use. This is a serious bug, likely caused by accessing properties or methods on the view controller before calling a UIViewController initializer. View controller: %@", controller];
    }

    else
    {
      if (!os_variant_has_internal_diagnostics())
      {
        v6 = *(__UILogGetCategoryCachedImpl("Assert", &_addChildModalViewController____s_category) + 8);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          controllerCopy2 = controller;
          _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "UIViewController was not initialized before use. This is a serious bug, likely caused by accessing properties or methods on the view controller before calling a UIViewController initializer. View controller: %@Ensure you're calling a designated initializer of UIViewController. This will become an assert in a future version.", buf, 0xCu);
        }

        goto LABEL_9;
      }

      currentHandler = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(currentHandler, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        controllerCopy2 = controller;
        _os_log_fault_impl(&dword_188A29000, currentHandler, OS_LOG_TYPE_FAULT, "UIViewController was not initialized before use. This is a serious bug, likely caused by accessing properties or methods on the view controller before calling a UIViewController initializer. View controller: %@Ensure you're calling a designated initializer of UIViewController. This will become an assert in a future version.", buf, 0xCu);
      }
    }

LABEL_9:
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = controller[13];
    controller[13] = v7;

    goto LABEL_10;
  }

LABEL_11:
}

- (void)_removeChildModalViewController:(id *)controller
{
  v3 = a2;
  if (controller)
  {
    v6 = v3;
    v4 = [controller[13] indexOfObjectIdenticalTo:v3];
    v3 = v6;
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = v4;
      [v6 setParentModalViewController:0];
      [controller[13] removeObjectAtIndex:v5];
      [controller _didChangeDeepestActionResponder];
      [controller _didChangeChildModalViewControllers];
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
          selfCopy4 = self;
          _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "Setting modalPresentationStyle once presentationController has been accessed will have no effect until %@ is presented, dismissed, and presented again.", &v8, 0xCu);
        }
      }

      else
      {
        v4 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498610) + 8);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v8 = 138412290;
          selfCopy4 = self;
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
          selfCopy4 = self;
          _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Setting modalPresentationStyle once %@ has been presented will have no effect until it is dismissed and presented again.", &v8, 0xCu);
        }
      }

      else
      {
        v5 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498618) + 8);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v8 = 138412290;
          selfCopy4 = self;
          _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Setting modalPresentationStyle once %@ has been presented will have no effect until it is dismissed and presented again.", &v8, 0xCu);
        }
      }
    }
  }
}

- (void)_setModalPresentationStyle:(int64_t)style
{
  if ([UIApp _isSpringBoard])
  {
    self->_modalPresentationStyle = style;
  }
}

- (int64_t)_preferredInterfaceOrientationGivenCurrentOrientation:(int64_t)orientation
{
  if (!self)
  {
    return 0;
  }

  _window = [(UIViewController *)self _window];
  _windowOwnsInterfaceOrientation = [_window _windowOwnsInterfaceOrientation];

  if (_windowOwnsInterfaceOrientation)
  {
    __supportedInterfaceOrientations = [(UIViewController *)self __supportedInterfaceOrientations];
    if ((__supportedInterfaceOrientations & (1 << orientation)) == 0)
    {
      v7 = +[UIDevice currentDevice];
      orientation = [v7 orientation];

      _existingView = [(UIViewController *)self _existingView];
      window = [_existingView window];

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __92__UIViewController__preferredInterfaceOrientationGivenStatusBarAndDeviceOrientationAndMask___block_invoke;
      aBlock[3] = &__block_descriptor_40_e8_B16__0q8l;
      aBlock[4] = &__supportedInterfaceOrientations;
      v10 = _Block_copy(aBlock);
      v11 = v10;
      if ((orientation - 1) > 3 || ((*(v10 + 2))(v10, orientation) & 1) == 0)
      {
        windowScene = [window windowScene];
        v13 = v11[2](v11, [windowScene _interfaceOrientation]);

        if (v13)
        {
          windowScene2 = [window windowScene];
          orientation = [windowScene2 _interfaceOrientation];
        }

        else
        {
          orientation = 0;
        }
      }
    }

    _existingView2 = [(UIViewController *)self _existingView];
    window2 = [_existingView2 window];

    v22 = [(UIViewController *)self modalPresentationStyle]== 16 || [(UIViewController *)self modalPresentationStyle]== UIModalPresentationFormSheet || [(UIViewController *)self modalPresentationStyle]== UIModalPresentationPageSheet;
    presentingViewController = [(UIViewController *)self presentingViewController];
    if (!presentingViewController)
    {
      goto LABEL_20;
    }

    v24 = presentingViewController;
    presentingViewController2 = [(UIViewController *)self presentingViewController];
    _popoverController = [presentingViewController2 _popoverController];
    if (_popoverController || !v22 && [(UIViewController *)self modalPresentationStyle]!= 17 && [(UIViewController *)self modalPresentationStyle]!= UIModalPresentationOverFullScreen)
    {

      goto LABEL_20;
    }

    if (window2)
    {
      rootViewController = [window2 rootViewController];
      _rootAncestorViewController = [(UIViewController *)self _rootAncestorViewController];

      if (rootViewController != _rootAncestorViewController)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    presentingViewController3 = [(UIViewController *)self presentingViewController];
    orientation = [presentingViewController3 interfaceOrientation];

    if (v22)
    {
LABEL_38:

      return orientation;
    }

LABEL_20:
    childModalViewController = [(UIViewController *)self childModalViewController];
    if (childModalViewController && (v28 = childModalViewController, -[UIViewController _existingView](self, "_existingView"), v29 = objc_claimAutoreleasedReturnValue(), [v29 window], v30 = objc_claimAutoreleasedReturnValue(), v30, v29, v28, !v30))
    {
      _lastKnownInterfaceOrientation = [(UIViewController *)self _lastKnownInterfaceOrientation];
      if ((_lastKnownInterfaceOrientation - 1) < 4)
      {
        orientation = _lastKnownInterfaceOrientation;
      }
    }

    else if ((orientation - 1) >= 4)
    {
      _ignoreAppSupportedOrientations = [(UIViewController *)self _ignoreAppSupportedOrientations];
      if (window2)
      {
        orientation = 0;
      }

      else
      {
        orientation = _ignoreAppSupportedOrientations;
      }
    }

    v35 = __supportedInterfaceOrientations;
    _window2 = [(UIViewController *)self _window];
    v37 = _window2;
    if (_window2)
    {
      v38 = [_window2 _interfaceOrientationForSupportedOrientations:v35 preferredOrientation:orientation];
    }

    else
    {
      v38 = [UIApp _fallbackInterfaceOrientationForSupportedOrientations:v35 preferredOrientation:orientation currentOrientation:0];
    }

    orientation = v38;

    goto LABEL_38;
  }

  if ((orientation - 1) >= 4)
  {
    v15 = +[UIDevice currentDevice];
    orientation = [v15 orientation];

    if ((orientation - 1) >= 4)
    {
      _window3 = [(UIViewController *)self _window];
      windowScene3 = [_window3 windowScene];
      _interfaceOrientation = [windowScene3 _interfaceOrientation];

      return _interfaceOrientation;
    }
  }

  return orientation;
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

- (void)_keyboardWillShow:(id)show
{
  _visibleView = [(UIViewController *)self _visibleView];
  window = [_visibleView window];
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen bounds];
  v8 = v7;
  v10 = v9;
  v44 = v11;
  v13 = v12;

  _keyboardSceneDelegate = [(UIViewController *)self _keyboardSceneDelegate];
  [_keyboardSceneDelegate visibleFrameInView:0];
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
  if ([window _isHostedInAnotherProcess])
  {
    [window bounds];
    v25 = v54.origin.y;
    MidX = CGRectGetMidX(v54);
    [_visibleView bounds];
    v27.f64[0] = MidX;
    v27.f64[1] = v25 + v26 * 0.5;
    v46 = v27;
  }

  else
  {
    v47 = v8 + v44 * 0.5;
    v28 = __UIStatusBarManagerForWindow(window);
    [v28 defaultStatusBarHeightInOrientation:1];
    v30 = v29;

    [_visibleView bounds];
    v43 = v10 + v13 * 0.5 - v47 + v30 + CGRectGetHeight(v55) * 0.5;
    [UIScreen transformForScreenOriginRotation:v23];
    v46 = vaddq_f64(*&v51.tx, vaddq_f64(vmulq_n_f64(*&v51.a, v47), vmulq_n_f64(*&v51.c, v43)));
  }

  if ((-[UIViewController interfaceOrientation](self, "interfaceOrientation") - 3) <= 1 && (([window _isHostedInAnotherProcess] & 1) != 0 || y < v44))
  {
    presentingViewController = [(UIViewController *)self presentingViewController];
    isPerformingModalTransition = [presentingViewController isPerformingModalTransition];

    if (isPerformingModalTransition)
    {
      superview = [_visibleView superview];
      [superview bounds];
      v35 = v34 * 0.5;
      [(UIViewController *)self formSheetSize];
      v37 = v36 * 0.5;
      v38 = __UIStatusBarManagerForWindow(window);
      [v38 defaultStatusBarHeightInOrientation:1];
      v40 = v39;

      layer = [_visibleView layer];
      [layer setPosition:{v35, v37 + v40}];
    }

    else
    {
      if ([window isRotating])
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
      v49 = _visibleView;
      v50 = v46;
      [UIView animateWithDuration:v42 delay:v48 options:0 animations:0.3833 completion:0.0];
      superview = v49;
    }
  }
}

void __38__UIViewController__keyboardWillShow___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) superview];
  [v2 convertPoint:0 fromView:{*(a1 + 40), *(a1 + 48)}];
  [*(a1 + 32) setCenter:?];
}

- (void)_keyboardWillHide:(id)hide
{
  interfaceOrientation = [(UIViewController *)self interfaceOrientation];
  if ((interfaceOrientation - 3) <= 1)
  {
    v5 = interfaceOrientation;
    _visibleView = [(UIViewController *)self _visibleView];
    window = [_visibleView window];
    if ([window _isHostedInAnotherProcess])
    {
      [window bounds];
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
      mainScreen = [objc_opt_self() mainScreen];
      [mainScreen bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v39 = v16 + v20 * 0.5;
      v23 = __UIStatusBarManagerForWindow(window);
      [v23 defaultStatusBarHeightInOrientation:v5];
      v25 = v24;

      interfaceOrientation2 = [(UIViewController *)self interfaceOrientation];
      v27 = 0.0;
      if (interfaceOrientation2 != UIInterfaceOrientationPortrait)
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
          interfaceOrientation3 = [(UIViewController *)self interfaceOrientation];
          v27 = 3.14159265;
          if (interfaceOrientation3 != UIInterfaceOrientationPortraitUpsideDown)
          {
            v27 = 0.0;
          }
        }
      }

      [UIScreen transformForScreenOriginRotation:v27];
      [window convertPoint:0 fromView:{vaddq_f64(v46, vaddq_f64(vmulq_n_f64(v44, v39), vmulq_n_f64(v45, v18 + v22 * 0.5 + v25 * 0.5)))}];
      MidX = v29;
      MidY = v30;
    }

    superview = [_visibleView superview];
    [superview convertPoint:0 fromView:{MidX, MidY}];
    v33 = v32;
    v35 = v34;

    isRotating = [window isRotating];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __38__UIViewController__keyboardWillHide___block_invoke;
    v40[3] = &unk_1E70F6848;
    v41 = _visibleView;
    if (isRotating)
    {
      v37 = 4;
    }

    else
    {
      v37 = 0;
    }

    v42 = v33;
    v43 = v35;
    v38 = _visibleView;
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

- (uint64_t)_transitionForModalTransitionStyle:(int)style appearing:
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
          v5 = style == 0;
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
          v5 = style == 0;
          v6 = 12;
          v7 = 18;
          goto LABEL_29;
        }

        v10 = style == 0;
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

      v10 = style == 0;
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
        v8 = style == 0;
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
          v10 = style == 0;
          v11 = 13;
          goto LABEL_33;
        case 10:
          v8 = style == 0;
          v9 = 8;
          goto LABEL_21;
      }
    }

LABEL_24:
    v10 = style == 0;
    v11 = 8;
    goto LABEL_33;
  }

  return result;
}

- (void)_childViewControllerWillBePresentedFromViewControllerDelayingPresentationWithPresenter:(id)presenter
{
  presenterCopy = presenter;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __107__UIViewController__childViewControllerWillBePresentedFromViewControllerDelayingPresentationWithPresenter___block_invoke;
  v6[3] = &unk_1E7104210;
  v7 = presenterCopy;
  v5 = presenterCopy;
  [UIViewController _enumerateVisibleChildControllers:1 includePresentedChildren:v6 usingBlock:?];
}

- (void)_cancelDelayedPresentation:(BOOL)presentation
{
  presentationCopy = presentation;
  v5 = objc_getAssociatedObject(self, &unk_1ED498593);
  if (v5)
  {
    v20 = v5;
    invocationTarget = [v5 invocationTarget];
    objc_setAssociatedObject(invocationTarget, &unk_1ED498592, 0, 1);
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
      delayingController = [v20 delayingController];
      v12 = objc_opt_class();
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cancelling delayed presentation of <%s: %p>", class_getName(v12), delayingController];
      windowSceneIgnoringEvents = [v20 windowSceneIgnoringEvents];
      [windowSceneIgnoringEvents _endIgnoringInteractionEventsForReason:v13];

      [v20 setWindowSceneIgnoringEvents:0];
      v10 = v20;
    }

    v15 = *(v10 + 4);
    if (v15)
    {
      v16 = (*(v15 + 16))(v15, presentationCopy);
      v10 = v20;
      v7 = v16;
    }

    if (!v7 || !presentationCopy)
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

- (void)_beginDelayingPresentation:(double)presentation cancellationHandler:(id)handler
{
  handlerCopy = handler;
  v6 = objc_getAssociatedObject(self, &unk_1ED498593);
  if (v6)
  {
    v7 = v6;
    [(_UIDelayedPresentationContext *)v6 incrementRequestCount];
  }

  else
  {
    v7 = [[_UIDelayedPresentationContext alloc] initWithTimeout:handlerCopy cancellationHandler:presentation];
    objc_setAssociatedObject(self, &unk_1ED498593, v7, 1);
  }
}

- (id)_customPresentationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  sourceControllerCopy = sourceController;
  _overrideTransitioningDelegate = [controllerCopy _overrideTransitioningDelegate];
  if (_overrideTransitioningDelegate && (v12 = _overrideTransitioningDelegate, [controllerCopy _overrideTransitioningDelegate], v13 = objc_claimAutoreleasedReturnValue(), NSClassFromString(&cfstr_Uialertcontrol_10.isa), isKindOfClass = objc_opt_isKindOfClass(), v13, v12, (isKindOfClass & 1) == 0) || (-[UIViewController _presentationControllerForPresentedController:presentingController:sourceController:](self, "_presentationControllerForPresentedController:presentingController:sourceController:", controllerCopy, presentingControllerCopy, sourceControllerCopy), (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    transitioningDelegate = [(UIViewController *)self transitioningDelegate];
    if (transitioningDelegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v15 = [transitioningDelegate presentationControllerForPresentedViewController:controllerCopy presentingViewController:presentingControllerCopy sourceViewController:sourceControllerCopy];
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (id)_customAnimatorForPresentedController:(void *)controller presentingController:(void *)presentingController sourceController:(void *)sourceController originalPresentationController:
{
  v9 = a2;
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  if (self)
  {
    _preferredTransition = [sourceController _preferredTransition];
    if (_preferredTransition)
    {
      preferredTransition = _preferredTransition;
      [v9 setPreferredTransition:_preferredTransition];
    }

    else
    {
      preferredTransition = [v9 preferredTransition];
      if (!preferredTransition)
      {
        goto LABEL_6;
      }
    }

    traitCollection = [controllerCopy traitCollection];
    v15 = [preferredTransition _transitionControllerForViewController:v9 traits:traitCollection isAppearing:1];

    if (v15)
    {
LABEL_14:

      goto LABEL_15;
    }

LABEL_6:
    transitioningDelegate = [self transitioningDelegate];
    if (transitioningDelegate)
    {
      if (objc_opt_respondsToSelector())
      {
        v17 = [transitioningDelegate animationControllerForPresentedController:v9 presentingController:controllerCopy sourceController:presentingControllerCopy];
LABEL_11:
        v15 = v17;
LABEL_13:

        goto LABEL_14;
      }

      if (objc_opt_respondsToSelector())
      {
        v17 = [transitioningDelegate animatorForPresentedController:v9 presentingController:controllerCopy sourceController:presentingControllerCopy];
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

- (id)_customInteractionControllerForPresentation:(void *)presentation
{
  v3 = a2;
  if (presentation)
  {
    if (objc_opt_respondsToSelector())
    {
      _interactionController = [v3 _interactionController];
    }

    else
    {
      transitioningDelegate = [presentation transitioningDelegate];
      if (transitioningDelegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        _interactionController = [transitioningDelegate interactionControllerForPresentation:v3];
      }

      else
      {
        _interactionController = 0;
      }
    }
  }

  else
  {
    _interactionController = 0;
  }

  return _interactionController;
}

- (id)_customAnimatorForDismissedController:(void *)controller
{
  v3 = a2;
  v4 = v3;
  if (controller)
  {
    preferredTransition = [v3 preferredTransition];
    if (preferredTransition)
    {
      traitCollection = [v4 traitCollection];
      v7 = [preferredTransition _transitionControllerForViewController:v4 traits:traitCollection isAppearing:0];

      if (v7)
      {
        goto LABEL_12;
      }
    }

    transitioningDelegate = [controller transitioningDelegate];
    if (transitioningDelegate)
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [transitioningDelegate animationControllerForDismissedController:v4];
LABEL_9:
        v7 = v9;
LABEL_11:

LABEL_12:
        goto LABEL_13;
      }

      if (objc_opt_respondsToSelector())
      {
        v9 = [transitioningDelegate animatorForDismissedController:v4];
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

- (id)_customInteractionControllerForDismissal:(void *)dismissal
{
  v3 = a2;
  if (dismissal)
  {
    if (objc_opt_respondsToSelector())
    {
      _interactionController = [v3 _interactionController];
    }

    else
    {
      transitioningDelegate = [dismissal transitioningDelegate];
      if (transitioningDelegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        _interactionController = [transitioningDelegate interactionControllerForDismissal:v3];
      }

      else
      {
        _interactionController = 0;
      }
    }
  }

  else
  {
    _interactionController = 0;
  }

  return _interactionController;
}

+ (void)_performWithoutDeferringTransitionsAllowingAnimation:(void *)animation actions:
{
  animationCopy = animation;
  objc_opt_self();
  if (dyld_program_sdk_at_least())
  {
    v4 = +[UIViewController _shouldDeferTransitions];
    objc_opt_self();
    v5 = _ShouldAnimateImmediateTransitions;
    [UIViewController _setShouldDeferTransitions:0];
    objc_opt_self();
    _ShouldAnimateImmediateTransitions = a2;
    animationCopy[2]();
    objc_opt_self();
    _ShouldAnimateImmediateTransitions = v5;
    [UIViewController _setShouldDeferTransitions:v4];
  }

  else
  {
    animationCopy[2]();
  }
}

+ (void)_scheduleTransition:(id)transition
{
  transitionCopy = transition;
  v4 = transitionCopy;
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
    (*(transitionCopy + 2))(transitionCopy);
  }
}

- (void)_transitionToViewController:(id)controller whilePerforming:(id)performing completion:(id)completion
{
  controllerCopy = controller;
  performingCopy = performing;
  completionCopy = completion;
  view = [(UIViewController *)self view];
  window = [view window];
  rootViewController = [window rootViewController];

  view2 = [rootViewController view];
  window2 = [view2 window];
  v15 = [window2 snapshotViewAfterScreenUpdates:0];

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

  v95 = rootViewController;
  view3 = [rootViewController view];
  window3 = [view3 window];

  [window3 addSubview:v15];
  view4 = [(UIViewController *)self view];
  [view4 frame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  view5 = [(UIViewController *)self view];
  superview = [view5 superview];
  [window3 convertRect:superview fromView:{v23, v25, v27, v29}];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  [v18 setFrame:{v33, v35, v37, v39}];
  [v15 addSubview:v18];
  [window3 addSubview:v18];
  v109[0] = MEMORY[0x1E69E9820];
  v109[1] = 3221225472;
  v109[2] = __75__UIViewController__transitionToViewController_whilePerforming_completion___block_invoke;
  v109[3] = &unk_1E70F0F78;
  v92 = performingCopy;
  v110 = v92;
  [UIView performWithoutAnimation:v109];
  parentViewController = [controllerCopy parentViewController];
  view6 = [parentViewController view];

  if (view6)
  {
    view7 = view6;
  }

  else
  {
    view7 = [controllerCopy view];
  }

  v43 = view7;
  view8 = [controllerCopy view];
  [view8 bounds];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  view9 = [controllerCopy view];
  [v43 convertRect:view9 fromView:{v46, v48, v50, v52}];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;

  v62 = [v43 resizableSnapshotViewFromRect:1 afterScreenUpdates:v55 withCapInsets:{v57, v59, v61, 0.0, 0.0, 0.0, 0.0}];
  [v62 setFrame:{v33, v35, v37, v39}];
  [window3 addSubview:v62];
  view10 = [controllerCopy view];
  [view10 frame];
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  view11 = [controllerCopy view];
  superview2 = [view11 superview];
  [window3 convertRect:superview2 fromView:{v65, v67, v69, v71}];
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
  v89 = completionCopy;
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

- (void)_transitionToNavigationViewController:(id)controller withWrapper:(id)wrapper
{
  v67 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  wrapperCopy = wrapper;
  selfCopy = self;
  v46 = [(UIViewController *)self _existingPresentationControllerImmediate:1 effective:1];
  _viewsParticipatingInNavigationControllerTransition = [v46 _viewsParticipatingInNavigationControllerTransition];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(_viewsParticipatingInNavigationControllerTransition, "count")}];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = _viewsParticipatingInNavigationControllerTransition;
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
        view = [controllerCopy view];
        [v13 frame];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        superview = [v13 superview];
        [view convertRect:superview fromView:{v17, v19, v21, v23}];
        v25 = [v14 valueWithCGRect:?];
        v65[1] = v25;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:2];
        [v8 addObject:v26];
      }

      v10 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
    }

    while (v10);
  }

  _animatorForContainmentTransition = [v46 _animatorForContainmentTransition];
  v27 = [[_UISimpleTransitioningDelegate alloc] initWithAnimator:_animatorForContainmentTransition];
  [(_UISimpleTransitioningDelegate *)v27 _setSuppressCrossFadeNavigationBarAnimation:1];
  delegate = [controllerCopy delegate];
  [controllerCopy setDelegate:v27];
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __70__UIViewController__transitionToNavigationViewController_withWrapper___block_invoke;
  v58[3] = &unk_1E70F3590;
  v58[4] = selfCopy;
  [UIViewController _performWithoutDeferringTransitions:v58];
  v44 = v27;
  if (wrapperCopy)
  {
    v29 = wrapperCopy[2]();
  }

  else
  {
    v29 = selfCopy;
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

        view2 = [controllerCopy view];
        v39 = [v35 objectForKeyedSubscript:@"view"];
        [view2 addSubview:v39];
      }

      v32 = [v30 countByEnumeratingWithState:&v54 objects:v63 count:16];
    }

    while (v32);
  }

  [controllerCopy pushViewController:v43 animated:1];
  v40 = objc_opt_self();
  transitionCoordinator = [controllerCopy transitionCoordinator];
  if (transitionCoordinator)
  {
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __70__UIViewController__transitionToNavigationViewController_withWrapper___block_invoke_2;
    v49[3] = &unk_1E7102EE0;
    v50 = controllerCopy;
    v51 = delegate;
    v52 = v44;
    v53 = v30;
    [transitionCoordinator animateAlongsideTransition:0 completion:v49];
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

- (void)_presentViewController:(id)controller modalSourceViewController:(id)viewController presentationController:(id)presentationController animationController:(id)animationController interactionController:(id)interactionController handoffData:(id)data completion:(id)completion
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  presentationControllerCopy = presentationController;
  animationControllerCopy = animationController;
  interactionControllerCopy = interactionController;
  dataCopy = data;
  completionCopy = completion;
  if (![(UIViewController *)self _shouldPresentViewController:controllerCopy withPresentationController:presentationControllerCopy])
  {
    goto LABEL_40;
  }

  v67 = dataCopy;
  v68 = interactionControllerCopy;
  v22 = objc_opt_class();
  if (v22 == objc_opt_class())
  {
    transition = [animationControllerCopy transition];
    v24 = transition != 0;
  }

  else
  {
    transition = 0;
    v24 = 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(UIViewController *)self _splitViewControllerEnforcingClass:1];
  }

  v64 = selfCopy;
  [(UIViewController *)selfCopy _descendantWillPresentViewController:controllerCopy modalSourceViewController:viewControllerCopy presentationController:presentationControllerCopy animated:v24];
  v26 = [[UIViewControllerAction alloc] initWithViewController:controllerCopy name:@"PresentModal" transition:transition];
  currentAction = self->_currentAction;
  self->_currentAction = v26;

  currentAction = [(UIViewController *)self currentAction];
  v30 = currentAction;
  if (currentAction)
  {
    objc_setProperty_nonatomic_copy(currentAction, v29, completionCopy, 24);
  }

  [controllerCopy _setModalSourceViewController:viewControllerCopy];
  view = [(UIViewController *)self view];
  v32 = [_UIEditMenuSceneComponent sceneComponentForView:view];
  [v32 dismissCurrentMenu];

  v33 = 8;
  if (v24)
  {
    v33 = 2097160;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFFFFDFFFFFLL | v33;
  view2 = [(UIViewController *)self view];
  obj = [view2 firstResponder];

  [(UIViewController *)&self->super.super.isa _addChildModalViewController:controllerCopy];
  [controllerCopy _presentingViewControllerWillChange:self];
  objc_getClass("UIActivityViewController");
  LODWORD(view2) = objc_opt_isKindOfClass();
  objc_opt_class();
  v35 = view2 & (objc_opt_isKindOfClass() ^ 1);
  dataCopy = v67;
  v63 = v35;
  if ([presentationControllerCopy _shouldPreserveFirstResponder] & 1) != 0 || (v35)
  {
    view3 = [(UIViewController *)self view];
    firstResponder = [view3 firstResponder];
    modalPreservedFirstResponder = self->_modalPreservedFirstResponder;
    self->_modalPreservedFirstResponder = firstResponder;

    interactionControllerCopy = v68;
    if (!self->_modalPreservedFirstResponder)
    {
      objc_storeStrong(&self->_modalPreservedFirstResponder, obj);
    }
  }

  else
  {
    interactionControllerCopy = v68;
  }

  v39 = off_1E70EA000;
  if (self->_modalPreservedFirstResponder)
  {
    v60 = completionCopy;
    v62 = viewControllerCopy;
    _keyboardSceneDelegate = [(UIViewController *)self _keyboardSceneDelegate];
    view4 = [(UIViewController *)self view];
    window = [view4 window];
    responder = [_keyboardSceneDelegate responder];
    _responderWindow = [responder _responderWindow];
    v61 = animationControllerCopy;
    if (window == _responderWindow)
    {
      _preserveResponderAcrossWindows = 1;
    }

    else
    {
      responder2 = [_keyboardSceneDelegate responder];
      if (responder2)
      {
        _preserveResponderAcrossWindows = [presentationControllerCopy _preserveResponderAcrossWindows];
      }

      else
      {
        _preserveResponderAcrossWindows = 0;
      }

      v39 = off_1E70EA000;
    }

    responder3 = [_keyboardSceneDelegate responder];
    if ([responder3 _shouldRestorationInputViewsOnlyWhenKeepingFirstResponder])
    {
      v48 = v39;
      _shouldKeepCurrentFirstResponder = [presentationControllerCopy _shouldKeepCurrentFirstResponder];

      v50 = _shouldKeepCurrentFirstResponder & _preserveResponderAcrossWindows;
      v39 = v48;
      viewControllerCopy = v62;
      dataCopy = v67;
      completionCopy = v60;
      if (v50 != 1)
      {
        goto LABEL_34;
      }
    }

    else
    {

      viewControllerCopy = v62;
      dataCopy = v67;
      completionCopy = v60;
      if ((_preserveResponderAcrossWindows & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    if (([presentationControllerCopy _shouldKeepCurrentFirstResponder] | v63))
    {
      v51 = [MEMORY[0x1E696B098] valueWithPointer:self];
      [_keyboardSceneDelegate _preserveInputViewsWithId:v51 animated:{-[__objc2_class areAnimationsEnabled](v39[431], "areAnimationsEnabled")}];
    }

    else
    {
      if (dyld_program_sdk_at_least() && !dyld_program_sdk_at_least())
      {
        goto LABEL_34;
      }

      v51 = [MEMORY[0x1E696B098] valueWithPointer:self];
      [_keyboardSceneDelegate _preserveInputViewsWithId:v51];
    }

LABEL_34:
    animationControllerCopy = v61;
    interactionControllerCopy = v68;
  }

  [(UIViewController *)self _setPresentationController:presentationControllerCopy];
  [controllerCopy _presentingViewControllerIsChanging:self];
  presentingViewController = [presentationControllerCopy presentingViewController];

  if (presentingViewController != self)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    presentingViewController2 = [presentationControllerCopy presentingViewController];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:9464 description:{@"Attempt to present %@, which has a presentingViewController of %@, expected %@", presentationControllerCopy, presentingViewController2, self}];

    v39 = off_1E70EA000;
  }

  _window = [(UIViewController *)self _window];
  areAnimationsEnabled = [(__objc2_class *)v39[431] areAnimationsEnabled];
  v55 = animationControllerCopy;
  [presentationControllerCopy _presentWithAnimationController:animationControllerCopy inWindow:_window interactionController:interactionControllerCopy animated:areAnimationsEnabled handoffData:dataCopy];

  transitionCoordinator = [(UIViewController *)self transitionCoordinator];
  [(UIViewController *)self _setPresentedStatusBarViewController:controllerCopy];
  [(UIViewController *)self _setPresentedUserInterfaceStyleViewController:controllerCopy];
  if (transitionCoordinator)
  {
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __157__UIViewController__presentViewController_modalSourceViewController_presentationController_animationController_interactionController_handoffData_completion___block_invoke;
    v69[3] = &unk_1E70F3B98;
    v69[4] = self;
    [transitionCoordinator animateAlongsideTransition:0 completion:v69];
  }

  _parentPresentationController = [presentationControllerCopy _parentPresentationController];
  [_parentPresentationController _containedViewControllerModalStateChanged];

  animationControllerCopy = v55;
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

- (id)_adaptedPresentationControllerForTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  coordinatorCopy = coordinator;
  if (self->_originalPresentationController)
  {
    presentedViewController = [(UIViewController *)self presentedViewController];
    if ([presentedViewController isBeingDismissed] & 1) != 0 || (v9 = objc_msgSend(collectionCopy, "horizontalSizeClass"), v10 = objc_msgSend(collectionCopy, "verticalSizeClass"), v11 = self->_originalPresentationController, -[UIViewController traitCollection](self, "traitCollection"), v12 = objc_claimAutoreleasedReturnValue(), LODWORD(v11) = -[UIPresentationController _shouldAdaptFromTraitCollection:toTraitCollection:](v11, "_shouldAdaptFromTraitCollection:toTraitCollection:", v12, collectionCopy), v12, !v11) || (-[UIViewController traitCollection](self, "traitCollection"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(presentedViewController, "_shouldAbortAdaptationFromTraitCollection:toTraitCollection:withTransitionCoordinator:", v13, collectionCopy, coordinatorCopy), v13, (v14))
    {
      v15 = 0;
    }

    else
    {
      v17 = [(UIPresentationController *)self->_originalPresentationController _presentationControllerForTraitCollection:collectionCopy];
      _presentationController = [(UIViewController *)self _presentationController];
      if (v17 == _presentationController)
      {
        v15 = 0;
      }

      else
      {
        [(UIViewController *)self _setPresentedStatusBarViewController:0];
        [(UIViewController *)self _setPresentedUserInterfaceStyleViewController:0];
        [(UIPresentationController *)v17 _setAdaptiveTransitionCoordinator:coordinatorCopy];
        _mainContext = [coordinatorCopy _mainContext];
        [(UIPresentationController *)v17 _setAdaptiveTransitionContext:_mainContext];

        originalPresentationController = self->_originalPresentationController;
        if (v17 == originalPresentationController)
        {
          presentedViewController2 = [(UIPresentationController *)originalPresentationController presentedViewController];
          v24 = self->_originalPresentationController;
          presentationStyle = -1;
        }

        else
        {
          presentedViewController2 = [(UIPresentationController *)originalPresentationController _presentedViewControllerForPresentationController:v17 traitCollection:collectionCopy];
          v22 = self->_originalPresentationController;
          presentationStyle = [(UIPresentationController *)v17 presentationStyle];
          v24 = v22;
        }

        [(UIPresentationController *)v24 _sendDelegateWillPresentWithAdaptiveStyle:presentationStyle transitionCoordinator:coordinatorCopy];
        [(UIPresentationController *)v17 _setPresentedViewController:presentedViewController2];
        presentingViewController = [(UIPresentationController *)_presentationController presentingViewController];
        [(UIPresentationController *)v17 _setPresentingViewController:presentingViewController];

        [(UIPresentationController *)_presentationController _transitionToPresentationController:v17 withTransitionCoordinator:coordinatorCopy];
        if (presentedViewController2 != presentedViewController)
        {
          [presentedViewController2 _replaceViewControllerInPresentationHierarchy:presentedViewController];
        }

        [(UIViewController *)self _setPresentationController:v17];
        [(UIViewController *)self _setPresentationSizeClassPair:v9, v10];
        [(UIViewController *)self _setPresentedStatusBarViewController:presentedViewController2];
        [(UIViewController *)self _setPresentedUserInterfaceStyleViewController:presentedViewController2];
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

- (void)_replaceViewControllerInPresentationHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  parentModalViewController = [hierarchyCopy parentModalViewController];
  [(UIViewController *)parentModalViewController _removeChildModalViewController:hierarchyCopy];
  [(UIViewController *)parentModalViewController _addChildModalViewController:?];
  v5 = [hierarchyCopy _existingPresentationControllerImmediate:1 effective:1];
  _childPresentationController = [v5 _childPresentationController];

  if (_childPresentationController)
  {
    _presentationController = [hierarchyCopy _presentationController];
    [(UIViewController *)self _setPresentationController:_presentationController];

    [hierarchyCopy _setPresentationController:0];
    _originalPresentationController = [hierarchyCopy _originalPresentationController];
    [(UIViewController *)self _setOriginalPresentationController:_originalPresentationController];

    [hierarchyCopy _setOriginalPresentationController:0];
    _presentationSizeClassPair = [hierarchyCopy _presentationSizeClassPair];
    [(UIViewController *)self _setPresentationSizeClassPair:_presentationSizeClassPair, v10];
    [_childPresentationController _setPresentingViewController:self];
    presentedViewController = [_childPresentationController presentedViewController];
    [(UIViewController *)hierarchyCopy _removeChildModalViewController:presentedViewController];
    [(UIViewController *)&self->super.super.isa _addChildModalViewController:presentedViewController];
  }
}

- (void)presentViewController:(id)controller withTransition:(int)transition completion:(id)completion
{
  v6 = *&transition;
  controllerCopy = controller;
  completionCopy = completion;
  if (!_UIAppUseModernRotationAndPresentationBehaviors())
  {
    v11 = controllerCopy;
    v194[0] = v11;
    v193 = v6;
    v12 = completionCopy;
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
      userInterfaceIdiom = [v18 userInterfaceIdiom];

      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 || [v11 modalPresentationStyle] != 16 && objc_msgSend(v11, "modalPresentationStyle") != 2 && objc_msgSend(v11, "modalPresentationStyle") != 1)
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
    presentedViewController = [(UIViewController *)v170 presentedViewController];
    if (presentedViewController)
    {
      v23 = presentedViewController;
      modalTransitionStyle = [(UIViewController *)self modalTransitionStyle];

      if (modalTransitionStyle == UIModalTransitionStylePartialCurl)
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

    _popoverController = [(UIViewController *)self _popoverController];
    if (_popoverController || [v11 modalPresentationStyle] || (-[UIViewController presentedViewController](v170, "presentedViewController"), _popoverController = objc_claimAutoreleasedReturnValue(), _popoverController == self) && -[UIViewController modalPresentationStyle](self, "modalPresentationStyle"))
    {
      modalTransitionStyle2 = [v11 modalTransitionStyle];

      if (modalTransitionStyle2 != 3)
      {
        v20 = 0x1E696A000;
        goto LABEL_32;
      }

      v20 = 0x1E696A000uLL;
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Application tried to present UIModalTransitionStylePartialCurl to or from non-fullscreen view controller %@.", self];
      v21 = _popoverController = v21;
    }

LABEL_32:
    if ([v11 modalPresentationStyle] == 3)
    {
      _popoverController2 = [(UIViewController *)self _popoverController];
      if (_popoverController2)
      {
        v29 = _popoverController2;
        modalTransitionStyle3 = [v11 modalTransitionStyle];

        if (modalTransitionStyle3)
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

    parentViewController = [v11 parentViewController];
    if (parentViewController || ([v11 _parentModalViewController], (parentViewController = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      _popoverController3 = [v11 _popoverController];

      if (!_popoverController3)
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
          selfCopy = self;
          [UIViewController _enumerateVisibleChildControllers:1 includePresentedChildren:&v184 usingBlock:?];
          selfCopy2 = self;
          v36 = MEMORY[0x1E695DF50];
          v37 = [(UIViewController *)self methodSignatureForSelector:sel__windowControllerBasedPresentViewController_withTransition_completion_];
          v38 = [v36 invocationWithMethodSignature:v37];

          [v38 setArgument:&selfCopy2 atIndex:0];
          [v38 setTarget:self];
          [v38 setArgument:&v192 atIndex:1];
          [v38 setArgument:v194 atIndex:2];
          [v38 setArgument:&v193 atIndex:3];
          newValue[0] = _Block_copy(v12);
          [v38 setArgument:newValue atIndex:4];
          [v38 retainArguments];
          v39 = objc_getAssociatedObject(v194[0], &unk_1ED498593);
          _window = [(UIViewController *)self _window];
          windowScene = [_window windowScene];
          [v39 setWindowSceneIgnoringEvents:windowScene];

          [v39 setPresentInvocation:v38];
          objc_setAssociatedObject(self, &unk_1ED498592, v194[0], 1);
          [(_UIDelayedPresentationContext *)v39 beginDelayedPresentation];

LABEL_176:
          goto LABEL_177;
        }

        v168 = v6;
        v42 = v12;
        v43 = completionCopy;
        [v11 __viewControllerWillBePresented:0];
        view = [(UIViewController *)self view];
        v45 = [_UIEditMenuSceneComponent sceneComponentForView:view];
        [v45 dismissCurrentMenu];

        modalPresentationStyle = [v11 modalPresentationStyle];
        v47 = [(UIViewController *)self _modalPresenter:modalPresentationStyle];
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

        view2 = [v47 view];
        superview = [view2 superview];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        definesPresentationContext = [v48 definesPresentationContext];
        if (modalPresentationStyle == 3)
        {
          v53 = definesPresentationContext;
        }

        else
        {
          v53 = 0;
        }

        v158 = isKindOfClass;
        v164 = modalPresentationStyle;
        v162 = v53 & (isKindOfClass ^ 1);
        if (v168)
        {
          if ((v53 & (isKindOfClass ^ 1)) != 0)
          {
            providesPresentationContextTransitionStyle = [v48 providesPresentationContextTransitionStyle];
            if (providesPresentationContextTransitionStyle)
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
            providesPresentationContextTransitionStyle = 0;
            v55 = v11;
          }

          completionCopy = v43;
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

          if (providesPresentationContextTransitionStyle)
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
          completionCopy = v43;
        }

LABEL_77:
        [v11 _setModalSourceViewController:self];
        childModalViewController = [v48 childModalViewController];
        v167 = v42;
        if (childModalViewController || v48[19])
        {
          v62 = 1;
        }

        else
        {
          view3 = [v48 view];
          superview2 = [view3 superview];
          v62 = superview2 == 0;
        }

        v63 = v168;

        view4 = [v48 view];
        window = [view4 window];

        if (!window || v62)
        {
          if (v48[19])
          {
            NSLog(&cfstr_WarningAttempt.isa, v11, v48);
          }

          else
          {
            view5 = [v48 view];
            superview3 = [view5 superview];

            if (superview3)
            {
              childModalViewController2 = [v48 childModalViewController];
              NSLog(&cfstr_WarningAttempt_1.isa, v11, v48, childModalViewController2);
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
        v169 = controllerCopy;
        _rootAncestorViewController = [v48 _rootAncestorViewController];
        _existingView = [v48 _existingView];
        window2 = [_existingView window];
        rootViewController = [window2 rootViewController];
        v70 = rootViewController;
        if (_rootAncestorViewController == rootViewController)
        {
        }

        else
        {
          _ancestorViewControllerIsInPopover = [v48 _ancestorViewControllerIsInPopover];

          if (_ancestorViewControllerIsInPopover)
          {
            goto LABEL_92;
          }

          _rootAncestorViewController = [MEMORY[0x1E696AEC0] stringWithFormat:@"Presenting view controllers on detached view controllers is discouraged %@.", v48];
          NSLog(&stru_1EFB25450.isa, _rootAncestorViewController);
        }

LABEL_92:
        v75 = [[UIViewControllerAction alloc] initWithViewController:v11 name:@"PresentModal" transition:v63];
        v76 = v48[19];
        v48[19] = v75;

        currentAction = [v48 currentAction];
        newValue[0] = MEMORY[0x1E69E9820];
        newValue[1] = 3221225472;
        newValue[2] = __90__UIViewController__windowControllerBasedPresentViewController_withTransition_completion___block_invoke_2;
        newValue[3] = &unk_1E70F3608;
        v191 = v167;
        if (currentAction)
        {
          objc_setProperty_nonatomic_copy(currentAction, v78, newValue, 24);
        }

        v79 = 2097160;
        if (v160)
        {
          v79 = 8;
        }

        v48[47] = (v48[47] & 0xFFFFFFFFFFDFFFFFLL | v79);
        view6 = [v48 view];
        firstResponder = [view6 firstResponder];

        [(UIViewController *)v48 _addChildModalViewController:v11];
        [v11 _presentingViewControllerWillChange:v48];
        view7 = [v48 view];
        firstResponder2 = [view7 firstResponder];
        v84 = v48[16];
        v48[16] = firstResponder2;

        if (!v48[16])
        {
          objc_storeStrong(v48 + 16, firstResponder);
        }

        v161 = firstResponder;
        view8 = [v48 view];
        window3 = [view8 window];
        _keyboardSceneDelegate = [(UIViewController *)self _keyboardSceneDelegate];
        responder = [_keyboardSceneDelegate responder];
        _window2 = [responder _window];

        if (window3 == _window2)
        {
          _keyboardSceneDelegate2 = [(UIViewController *)self _keyboardSceneDelegate];
          v91 = [MEMORY[0x1E696B098] valueWithPointer:v48];
          [_keyboardSceneDelegate2 _preserveInputViewsWithId:v91 animated:1];
        }

        controllerCopy = v169;
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
          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          childModalViewController3 = [v48 childModalViewController];
          _screen = [v48 _screen];
          [defaultCenter addObserver:childModalViewController3 selector:sel__keyboardWillShow_ name:@"UIKeyboardPrivateWillShowNotification" object:_screen];

          childModalViewController4 = [v48 childModalViewController];
          _screen2 = [v48 _screen];
          [defaultCenter addObserver:childModalViewController4 selector:sel__keyboardWillHide_ name:@"UIKeyboardPrivateWillHideNotification" object:_screen2];

          controllerCopy = v169;
        }

        if ([v11 _isModalSheet])
        {
          view9 = [v11 view];
          v99 = view9;
          if (v92 == 16)
          {
            [view9 setAutoresizingMask:45];
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

        view10 = [v48 view];
        window4 = [view10 window];

        _popoverController4 = [v48 _popoverController];
        modalPresentationStyle2 = [v48 modalPresentationStyle];
        v163 = window4;
        if ((v92 - 1) >= 2)
        {
          if (v92 == 4)
          {
LABEL_139:
            view11 = [v48 view];
            superview4 = [view11 superview];

            v123 = [UITransitionView alloc];
            [superview4 bounds];
            v124 = [(UITransitionView *)v123 initWithFrame:?];
            v125 = v48[61];
            v48[61] = v124;

            v126 = v48[61];
            view12 = [v48 view];
            [superview4 insertSubview:v126 aboveSubview:view12];

            window4 = v163;
            v128 = v48[61];
            view13 = [v48 view];
            [v128 addSubview:view13];

            controllerCopy = v169;
LABEL_140:
            v130 = +[UIDevice currentDevice];
            userInterfaceIdiom2 = [v130 userInterfaceIdiom];

            if (v92 == 3 && (userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1 && modalPresentationStyle2 != 16 && (modalPresentationStyle2 - 3) <= 0xFFFFFFFFFFFFFFFDLL && _popoverController4)
            {
              if (v11)
              {
                v11[47] = (v11[47] & 0xFFFFFFFFFFFFDFFFLL | (((v11[47] >> 14) & 1) << 13));
                [v11 setModalInPresentation:1];
              }

              [_popoverController4 _modalTransition:v63 fromViewController:v48 toViewController:v11 target:v48 didFinish:1];
              v132 = v63 == 13;
            }

            else
            {
              v133 = [UIWindowController windowControllerForWindow:window4];
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
              selfCopy = v48;
              v189 = v11;
              [v133 _transition:v63 fromViewController:selfCopy toViewController:v189 target:selfCopy didFinish:1 animation:&v184];

              v132 = 0;
            }

            if (!_UIAppUseModernRotationAndPresentationBehaviors() && (([v11 _isModalSheet] & 1) != 0 || v92 == 17 || v92 == 4))
            {
              view14 = [v48 view];
              window5 = [view14 window];
              [window5 _addRotationViewController:v11];
            }

            v56 = v159;
            if ([v11 _isModalSheet])
            {
              view15 = [v11 view];
              [view15 setTintAdjustmentMode:1];

              transitionCoordinator = [v48 transitionCoordinator];

              presentingViewController = [v48 presentingViewController];

              if (transitionCoordinator)
              {
                v140 = v132;
                transitionCoordinator2 = [v48 transitionCoordinator];
                view16 = [v48 view];
                v180[0] = MEMORY[0x1E69E9820];
                v180[1] = 3221225472;
                if (presentingViewController)
                {
                  v181 = __90__UIViewController__windowControllerBasedPresentViewController_withTransition_completion___block_invoke_6;
                  v182 = &unk_1E70F3B98;
                  v143 = v48;
                  v183 = v143;
                  selfCopy2 = MEMORY[0x1E69E9820];
                  v175 = 3221225472;
                  v144 = __90__UIViewController__windowControllerBasedPresentViewController_withTransition_completion___block_invoke_7;
                }

                else
                {
                  v181 = __90__UIViewController__windowControllerBasedPresentViewController_withTransition_completion___block_invoke_4;
                  v182 = &unk_1E70F3B98;
                  v143 = v48;
                  v183 = v143;
                  selfCopy2 = MEMORY[0x1E69E9820];
                  v175 = 3221225472;
                  v144 = __90__UIViewController__windowControllerBasedPresentViewController_withTransition_completion___block_invoke_5;
                }

                v176 = v144;
                v177 = &unk_1E70F4990;
                v178 = v143;
                v179 = v11;
                [transitionCoordinator2 animateAlongsideTransitionInView:view16 animation:v180 completion:&selfCopy2];

                v146 = v183;
                v56 = v159;
                v132 = v140;
              }

              else
              {
                view17 = [v48 view];
                v146 = view17;
                if (presentingViewController)
                {
                  [view17 setTintAdjustmentMode:0];
                }

                else
                {
                  window6 = [view17 window];
                  [window6 _beginOcclusion:v48];
                }
              }

              window4 = v163;
            }

            if (v132)
            {
              v173 = 40.0;
              view18 = [v11 view];
              [view18 bounds];
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
          [window4 bounds];
          v108 = [(UIDimmingView *)v107 initWithFrame:?];
          v109 = v48[17];
          v48[17] = v108;

          [v48[17] setAutoresizingMask:18];
          [v48[17] setIgnoresTouches:1];
          _backgroundColorForModalFormSheet = [v11 _backgroundColorForModalFormSheet];
          [v48[17] setDimmingColor:_backgroundColorForModalFormSheet];

          [v48[17] setSuppressesBackdrops:1];
          if (v92 == 3)
          {
            [v48 view];
            v112 = v111 = window4;
            superview5 = [v112 superview];

            if (superview5 == v111)
            {
              superview6 = v112;
              v114 = v163;
            }

            else
            {
              v114 = v163;
              do
              {
                superview6 = [v112 superview];

                v115Superview = [superview6 superview];

                v112 = superview6;
              }

              while (v115Superview != v163);
            }

            [v114 insertSubview:v48[17] belowSubview:superview6];

            window4 = v114;
          }

          else
          {
            [window4 addSubview:v48[17]];
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
          controllerCopy = v169;
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
  v172 = completionCopy;
  [(UIViewController *)self _presentViewController:controllerCopy withAnimationController:v10 completion:v171];

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

- (void)_presentViewController:(id)controller withAnimationController:(id)animationController completion:(id)completion
{
  v140 = *MEMORY[0x1E69E9840];
  v132 = a2;
  controllerCopy = controller;
  location = controllerCopy;
  animationControllerCopy = animationController;
  completionCopy = completion;
  _focusSystem = [(UIViewController *)self _focusSystem];
  focusedItem = [_focusSystem focusedItem];

  if (focusedItem)
  {
    [(UIViewController *)self _rememberPresentingFocusedItem:focusedItem];
  }

  v13 = +[_UIStatistics previewInteractionTapCount];
  [v13 incrementValueBy:1];

  v14 = +[_UIStatistics previewInteractionTapCount];
  [v14 setSampleRate:0.0];

  [controllerCopy _viewControllerPresentationDidInitiate];
  modalPresentationStyle = [controllerCopy modalPresentationStyle];
  if (os_variant_has_internal_diagnostics())
  {
    if (modalPresentationStyle == -2)
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

  else if (modalPresentationStyle == -2)
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
    NSLog(&cfstr_AttemptToPrese_0.isa, controllerCopy, self, v16);
    goto LABEL_108;
  }

  if (_UIAppUseModernRotationAndPresentationBehaviors() || (+[UIDevice currentDevice](UIDevice, "currentDevice"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 userInterfaceIdiom], v17, (v18 & 0xFFFFFFFFFFFFFFFBLL) == 1))
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      mainScreen = [objc_opt_self() mainScreen];
      _wantsWideContentMargins = [mainScreen _wantsWideContentMargins];

      if ((_wantsWideContentMargins & 1) == 0)
      {
        v21 = +[UIDevice currentDevice];
        userInterfaceIdiom = [v21 userInterfaceIdiom];

        if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
        {
          traitCollection = [(UIViewController *)self traitCollection];
          v24 = traitCollection;
          if (modalPresentationStyle <= 0x10 && ((1 << modalPresentationStyle) & 0x10006) != 0 && [traitCollection horizontalSizeClass] == 1)
          {
            [controllerCopy setModalPresentationStyle:0];
          }
        }
      }
    }
  }

  else if (modalPresentationStyle <= 0x10 && ((1 << modalPresentationStyle) & 0x10006) != 0)
  {
    [controllerCopy setModalPresentationStyle:0];
  }

  if (!controllerCopy)
  {
    v98 = MEMORY[0x1E695DF30];
    v99 = *MEMORY[0x1E695D940];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Application tried to present a nil modal view controller on target %@.", self];
    goto LABEL_130;
  }

  v16 = self->_parentViewController;
  presentedViewController = [(UIViewController *)v16 presentedViewController];
  if (presentedViewController)
  {
    v26 = presentedViewController;
    modalTransitionStyle = [(UIViewController *)self modalTransitionStyle];

    if (modalTransitionStyle == UIModalTransitionStylePartialCurl)
    {
      v98 = MEMORY[0x1E695DF30];
      v99 = *MEMORY[0x1E695D940];
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Application tried to present a nested modal view controller while curled %@.", self];
      goto LABEL_130;
    }
  }

  _popoverController = [(UIViewController *)self _popoverController];
  if (_popoverController || modalPresentationStyle || ([(UIViewController *)v16 presentedViewController], _popoverController = objc_claimAutoreleasedReturnValue(), _popoverController == self) && [(UIViewController *)self modalPresentationStyle])
  {
    modalTransitionStyle2 = [controllerCopy modalTransitionStyle];

    if (modalTransitionStyle2 == 3)
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

  if (!dyld_program_sdk_at_least() || (-[UIViewController popoverPresentationController:](controllerCopy, 0), (v30 = objc_claimAutoreleasedReturnValue()) == 0) || (v31 = v30, v32 = [v30 _isShimmingPopoverControllerPresentation], v31, !v32))
  {
    parentViewController = [controllerCopy parentViewController];

    if (parentViewController)
    {
      v100 = MEMORY[0x1E695DF30];
      v101 = *MEMORY[0x1E695D940];
      v102 = MEMORY[0x1E696AEC0];
      parentViewController2 = [controllerCopy parentViewController];
      [v102 stringWithFormat:@"Application tried to present modally a view controller %@ that has a parent view controller %@.", controllerCopy, parentViewController2];
      v104 = LABEL_125:;
      v105 = [v100 exceptionWithName:v101 reason:v104 userInfo:0];
      v106 = v105;

      goto LABEL_131;
    }

    [controllerCopy _popoverController];
    if (objc_claimAutoreleasedReturnValue())
    {
      v98 = MEMORY[0x1E695DF30];
      v99 = *MEMORY[0x1E695D940];
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Application tried to present modally a view controller %@ that is presented with deprecated UIPopoverController.", controllerCopy];
      goto LABEL_130;
    }

    if ([controllerCopy _isDelayingPresentation])
    {
      [controllerCopy __viewControllerWillBePresented:1];
      v126[0] = MEMORY[0x1E69E9820];
      v126[1] = 3221225472;
      v126[2] = __78__UIViewController__presentViewController_withAnimationController_completion___block_invoke_732;
      v126[3] = &unk_1E7104210;
      v126[4] = self;
      [UIViewController _enumerateVisibleChildControllers:controllerCopy includePresentedChildren:1 usingBlock:v126];
      *buf = self;
      v34 = MEMORY[0x1E695DF50];
      v35 = [(UIViewController *)self methodSignatureForSelector:a2];
      v36 = [v34 invocationWithMethodSignature:v35];

      [v36 setArgument:buf atIndex:0];
      [v36 setTarget:self];
      [v36 setArgument:&v132 atIndex:1];
      [v36 setArgument:&location atIndex:2];
      [v36 setArgument:&animationControllerCopy atIndex:3];
      v125 = _Block_copy(completionCopy);
      [v36 setArgument:&v125 atIndex:4];
      [v36 retainArguments];
      v37 = objc_getAssociatedObject(location, &unk_1ED498593);
      _window = [(UIViewController *)self _window];
      windowScene = [_window windowScene];
      [v37 setWindowSceneIgnoringEvents:windowScene];

      [v37 setPresentInvocation:v36];
      objc_setAssociatedObject(self, &unk_1ED498592, location, 1);
      [(_UIDelayedPresentationContext *)v37 beginDelayedPresentation];

      goto LABEL_108;
    }

    [controllerCopy __viewControllerWillBePresented:0];
    _temporaryPresentationController = [controllerCopy _temporaryPresentationController];
    v41 = _temporaryPresentationController;
    if (_temporaryPresentationController)
    {
      v42 = _temporaryPresentationController;
      [controllerCopy _setTemporaryPresentationController:0];
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
      __sizeClassPair = [(UIPresentationController *)v42 __sizeClassPair];
      v48 = v47;
      presentingViewController = [(UIPresentationController *)v42 presentingViewController];
      traitCollection2 = [presentingViewController traitCollection];
      v124[0] = MEMORY[0x1E69E9820];
      v124[1] = 3221225472;
      v124[2] = __78__UIViewController__presentViewController_withAnimationController_completion___block_invoke_2;
      v124[3] = &__block_descriptor_48_e27_v16__0___UIMutableTraits__8l;
      v113 = v48;
      v114 = __sizeClassPair;
      v124[4] = __sizeClassPair;
      v124[5] = v48;
      v51 = [traitCollection2 traitCollectionByModifyingTraits:v124];

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
          currentAction = [(UIViewController *)v123 currentAction];

          if (currentAction)
          {
            v56 = *(__UILogGetCategoryCachedImpl("Presentation", &qword_1ED498630) + 8);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              *&buf[4] = v117;
              v134 = 2112;
              selfCopy6 = v123;
              v136 = 2112;
              selfCopy7 = self;
              v57 = "Attempt to present %@ on %@ (from %@) while a presentation is in progress.";
LABEL_64:
              _os_log_impl(&dword_188A29000, v56, OS_LOG_TYPE_ERROR, v57, buf, 0x20u);
              goto LABEL_106;
            }

            goto LABEL_106;
          }
        }

        view = [(UIViewController *)v123 view];
        window = [view window];

        if (!window)
        {
          v56 = *(__UILogGetCategoryCachedImpl("Presentation", &qword_1ED498638) + 8);
          v45 = v123;
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            *&buf[4] = v117;
            v134 = 2112;
            selfCopy6 = v123;
            v136 = 2112;
            selfCopy7 = self;
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
            childModalViewController = [(UIViewController *)v123 childModalViewController];
            *buf = 138413058;
            *&buf[4] = v117;
            v134 = 2112;
            selfCopy6 = v123;
            v136 = 2112;
            selfCopy7 = self;
            v138 = 2112;
            v139 = childModalViewController;
            _os_log_impl(&dword_188A29000, v62, OS_LOG_TYPE_ERROR, "Attempt to present %@ on %@ (from %@) which is already presenting %@.", buf, 0x2Au);
          }

          goto LABEL_106;
        }

        _rootAncestorViewController = [(UIViewController *)self _rootAncestorViewController];
        _existingView = [(UIViewController *)self _existingView];
        window2 = [_existingView window];
        rootViewController = [window2 rootViewController];
        v68 = rootViewController;
        if (_rootAncestorViewController == rootViewController)
        {
        }

        else
        {
          _ancestorViewControllerIsInPopover = [(UIViewController *)self _ancestorViewControllerIsInPopover];

          if (!_ancestorViewControllerIsInPopover)
          {
            if (os_variant_has_internal_diagnostics())
            {
              v97 = __UIFaultDebugAssertLog();
              if (os_log_type_enabled(v97, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412802;
                *&buf[4] = v117;
                v134 = 2112;
                selfCopy6 = self;
                v136 = 2112;
                selfCopy7 = self;
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
                selfCopy6 = self;
                v136 = 2112;
                selfCopy7 = self;
                _os_log_impl(&dword_188A29000, v69, OS_LOG_TYPE_ERROR, "Presenting view controller %@ from detached view controller %@ is not supported, and may result in incorrect safe area insets and a corrupt root presentation. Make sure %@ is in the view controller hierarchy before presenting from it. Will become a hard exception in a future release.", buf, 0x20u);
              }
            }
          }
        }

        _presentationController = [(UIViewController *)v123 _presentationController];
        _transitionContext = [_presentationController _transitionContext];

        _animator = [_transitionContext _animator];
        v112 = _animator;
        if (objc_opt_respondsToSelector())
        {
          v73 = v117;
          if ([_animator shouldPreemptWithContext:_transitionContext])
          {
            v110 = [_animator preemptWithContext:_transitionContext];
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

        _parentModalViewController = [v73 _parentModalViewController];

        if (!_parentModalViewController)
        {
          [(UIViewController *)v123 _setOriginalPresentationController:v42];
          [(UIViewController *)v123 _setPresentationSizeClassPair:v114, v113];
          view2 = [(UIViewController *)v123 view];
          superview = [view2 superview];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          v77 = ![(UIViewController *)v123 definesPresentationContext];
          if (modalPresentationStyle == 3)
          {
            v78 = v77;
          }

          else
          {
            v78 = 1;
          }

          v79 = location;
          _overrideTransitioningDelegate = [location _overrideTransitioningDelegate];
          if (!_overrideTransitioningDelegate)
          {
            if (+[UIViewController _shouldAnimateTransitions])
            {
              goto LABEL_88;
            }

            _defaultAnimationController = [(UIViewController *)v79 _defaultAnimationController];
            _overrideTransitioningDelegate = animationControllerCopy;
            animationControllerCopy = _defaultAnimationController;
          }

LABEL_88:
          _preferredAnimationControllerForPresentation = animationControllerCopy;
          if (!animationControllerCopy)
          {
            if ([(UIPresentationController *)v121 _forcesPreferredAnimationControllers])
            {
              _preferredAnimationControllerForPresentation = [(UIPresentationController *)v121 _preferredAnimationControllerForPresentation];
              animationControllerCopy = _preferredAnimationControllerForPresentation;
            }

            else
            {
              _preferredAnimationControllerForPresentation = 0;
            }
          }

          v118 = _transitionContext;
          if ((v78 | isKindOfClass))
          {
            providesPresentationContextTransitionStyle = 0;
            v84 = v79;
          }

          else
          {
            providesPresentationContextTransitionStyle = [(UIViewController *)v123 providesPresentationContextTransitionStyle];
            if (providesPresentationContextTransitionStyle)
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
          if (!_preferredAnimationControllerForPresentation)
          {
            v90 = v85;
            _preferredAnimationControllerForPresentation = [(UIViewController *)v85 _customAnimatorForPresentedController:v79 presentingController:v123 sourceController:self originalPresentationController:v42];
            v91 = animationControllerCopy;
            animationControllerCopy = _preferredAnimationControllerForPresentation;

            if (_preferredAnimationControllerForPresentation)
            {
              v86 = [(UIViewController *)v90 _customInteractionControllerForPresentation:_preferredAnimationControllerForPresentation];
              if (v86)
              {
                goto LABEL_99;
              }
            }

            else
            {
              _preferredAnimationControllerForPresentation = [(UIPresentationController *)v121 _preferredAnimationControllerForPresentation];
              animationControllerCopy = _preferredAnimationControllerForPresentation;
              if (!_preferredAnimationControllerForPresentation)
              {
                if (providesPresentationContextTransitionStyle)
                {
                  v92 = v123;
                }

                else
                {
                  v92 = location;
                }

                _preferredAnimationControllerForPresentation = -[UIViewControllerBuiltinTransitionViewAnimator initWithTransition:]([UIViewControllerBuiltinTransitionViewAnimator alloc], "initWithTransition:", -[UIViewController _transitionForModalTransitionStyle:appearing:](self, [v92 modalTransitionStyle], 1));
                animationControllerCopy = _preferredAnimationControllerForPresentation;
              }
            }
          }

          v86 = [(UIPresentationController *)v121 _preferredInteractionControllerForPresentation:_preferredAnimationControllerForPresentation];
          _preferredAnimationControllerForPresentation = animationControllerCopy;
LABEL_99:
          [(UIViewController *)self _preparePresentationControllerForPresenting:v121];
          [(UIViewController *)v123 _presentViewController:location modalSourceViewController:self presentationController:v121 animationController:_preferredAnimationControllerForPresentation interactionController:v86 handoffData:v110 completion:completionCopy];
          presentingViewController2 = [(UIPresentationController *)v121 presentingViewController];
          _transitionCoordinator = [presentingViewController2 _transitionCoordinator];

          if (v121 == v42)
          {
            presentationStyle = -1;
          }

          else
          {
            presentationStyle = [(UIPresentationController *)v121 presentationStyle];
          }

          [(UIPresentationController *)v42 _sendDelegateWillPresentWithAdaptiveStyle:presentationStyle transitionCoordinator:_transitionCoordinator];

          v45 = v123;
          goto LABEL_106;
        }

        v100 = MEMORY[0x1E695DF30];
        v101 = *MEMORY[0x1E695D940];
        v109 = MEMORY[0x1E696AEC0];
        parentViewController2 = [v73 _parentModalViewController];
        [v109 stringWithFormat:@"Application tried to present modally a view controller %@ that is already being presented by %@.", v73, parentViewController2];
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

    if (modalPresentationStyle == 4 || [controllerCopy _requiresCustomPresentationController])
    {
      v42 = [controllerCopy _customPresentationControllerForPresentedController:controllerCopy presentingController:0 sourceController:self];
      if (v42)
      {
        goto LABEL_48;
      }

      v42 = [[UIPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:0];
    }

    else
    {
      v43 = +[_UIPresentationControllerDefaultVisualStyleProvider sharedInstance];
      traitCollection3 = [(UIViewController *)self traitCollection];
      v42 = [v43 presentationControllerForPresentedViewController:controllerCopy inIdiom:{objc_msgSend(traitCollection3, "userInterfaceIdiom")}];

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
  v128 = controllerCopy;
  selfCopy8 = self;
  if (qword_1ED498628 != -1)
  {
    dispatch_once(&qword_1ED498628, block);
  }

LABEL_108:
}

- (void)popoverPresentationController:(void *)controller
{
  controllerCopy = controller;
  if (controller)
  {
    presentingViewController = [controller presentingViewController];
    v5 = presentingViewController;
    if (presentingViewController)
    {
      _originalPresentationController = [presentingViewController _originalPresentationController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        _originalPresentationController2 = [v5 _originalPresentationController];
LABEL_15:
        controllerCopy = _originalPresentationController2;
LABEL_17:

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (!controllerCopy[98])
      {
        modalPresentationStyle = [controllerCopy modalPresentationStyle];
        if (modalPresentationStyle == 100 || modalPresentationStyle == 7)
        {
          if ([controllerCopy _requiresCustomPresentationController])
          {
            v10 = [controllerCopy _customPresentationControllerForPresentedController:controllerCopy presentingController:0 sourceController:controllerCopy];
          }

          else
          {
            [controllerCopy modalPresentationStyle];
            v10 = [objc_alloc(objc_opt_class()) initWithPresentedViewController:controllerCopy presentingViewController:0];
          }

          v11 = v10;
          [controllerCopy _setTemporaryPresentationController:v10];
        }
      }

      _temporaryPresentationController = [controllerCopy _temporaryPresentationController];
      objc_opt_class();
      v13 = objc_opt_isKindOfClass();

      if (v13)
      {
        _originalPresentationController2 = [controllerCopy _temporaryPresentationController];
        goto LABEL_15;
      }
    }

    controllerCopy = 0;
    goto LABEL_17;
  }

LABEL_18:

  return controllerCopy;
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

- (void)_addCurlUpTapGestureRecognizerWithRevealedHeight:(void *)height
{
  if (height)
  {
    if ([height isViewLoaded])
    {
      view = [height view];
      gestureRecognizers = [view gestureRecognizers];

      v5 = 0;
      while (v5 < [(_UIDismissCurlUpTapGestureRecognizer *)gestureRecognizers count])
      {
        v6 = [(_UIDismissCurlUpTapGestureRecognizer *)gestureRecognizers objectAtIndex:v5];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        ++v5;
        if (isKindOfClass)
        {
          goto LABEL_9;
        }
      }
    }

    gestureRecognizers = [(UITapGestureRecognizer *)[_UIDismissCurlUpTapGestureRecognizer alloc] initWithTarget:height action:sel__handleTapToDismissModalCurl_];
    *&v8 = a2;
    [(_UIDismissCurlUpTapGestureRecognizer *)gestureRecognizers _setCurlUpDY:v8];
    view2 = [height view];
    [view2 addGestureRecognizer:gestureRecognizers];

LABEL_9:
  }
}

- (void)_presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__UIViewController__presentViewController_animated_completion___block_invoke;
  aBlock[3] = &unk_1E70F3798;
  v22 = animatedCopy;
  v10 = controllerCopy;
  v19 = v10;
  selfCopy = self;
  v11 = completionCopy;
  v21 = v11;
  v12 = _Block_copy(aBlock);
  _willPreemptRunningPresentationTransition = [(UIViewController *)self _willPreemptRunningPresentationTransition];
  v14 = _UISetCurrentFallbackEnvironment(self);
  if (_willPreemptRunningPresentationTransition)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __63__UIViewController__presentViewController_animated_completion___block_invoke_3;
    v15[3] = &unk_1E70FD0C8;
    v15[4] = self;
    v16 = v12;
    v17 = animatedCopy;
    [UIView _performWithFluidPresentationTransitionsEnabled:v15];
  }

  else
  {
    [(UIViewController *)&self->super.super.isa _performCoordinatedPresentOrDismiss:v12 animated:animatedCopy];
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

- (void)_performCoordinatedPresentOrDismiss:(uint64_t)dismiss animated:
{
  v5 = a2;
  v6 = v5;
  if (self && v5)
  {
    _transitionCoordinator = [self _transitionCoordinator];
    if (_transitionCoordinator)
    {
      _adaptiveTransitionCoordinator = _transitionCoordinator;
      if (![self[64] _requiresDeferralToCoordinateWithNavigationTransitionAnimated:dismiss])
      {
        presentationStyle = [_adaptiveTransitionCoordinator presentationStyle];
        if (dyld_program_sdk_at_least() && presentationStyle == -1)
        {
          [UIViewController _performWithoutDeferringTransitionsAllowingAnimation:dismiss actions:v6];
LABEL_19:

          goto LABEL_20;
        }

        if ((dismiss & 1) == 0 && presentationStyle == -1)
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
          [_adaptiveTransitionCoordinator animateAlongsideTransition:0 completion:v14];
        }

        goto LABEL_19;
      }

LABEL_15:
      dyld_program_sdk_at_least();
      goto LABEL_16;
    }

    presentedViewController = [self presentedViewController];
    if (presentedViewController)
    {
      presentedViewController2 = [self presentedViewController];
      presentingViewController = [presentedViewController2 presentingViewController];
    }

    else
    {
      presentingViewController = [self presentingViewController];
    }

    _presentationController = [presentingViewController _presentationController];
    _adaptiveTransitionCoordinator = [_presentationController _adaptiveTransitionCoordinator];

    if (_adaptiveTransitionCoordinator)
    {
      goto LABEL_15;
    }

    if (dismiss & 1) != 0 || (dyld_program_sdk_at_least())
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
  childModalViewController = [(UIViewController *)self childModalViewController];
  [(UIViewController *)&self->super.super.isa _removeChildModalViewController:childModalViewController];
}

- (void)dismissViewControllerWithTransition:(int)transition completion:(id)completion
{
  v4 = *&transition;
  v66 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__UIViewController_dismissViewControllerWithTransition_completion___block_invoke;
  aBlock[3] = &unk_1E70F0F78;
  v7 = completionCopy;
  v63 = v7;
  v8 = _Block_copy(aBlock);
  objc_opt_self();
  if (fluidPresentationTransitionsEnabled)
  {
    if (!self)
    {
      selfCopy = 0;
      v10 = 1;
      goto LABEL_23;
    }

LABEL_8:
    v12 = objc_getAssociatedObject(self, &unk_1ED498593);
    v13 = v12;
    if (v12 && [v12 requestCount])
    {
      selfCopy = self;
      goto LABEL_15;
    }

    v14 = objc_getAssociatedObject(self, &unk_1ED498592);
    selfCopy = v14;
    if (v14)
    {
      v15 = objc_getAssociatedObject(v14, &unk_1ED498593);

      if (v15 && [v15 requestCount])
      {
        v13 = v15;
LABEL_15:

        [(UIViewController *)selfCopy _cancelDelayedPresentation:0];
        if (selfCopy == self)
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
          selfCopy4 = self;
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

    selfCopy = 0;
LABEL_22:
    v10 = 0;
LABEL_23:
    if (_UIAppUseModernRotationAndPresentationBehaviors())
    {
      _presentationController = [(UIViewController *)self _presentationController];
      _presentingOrPresented = [_presentationController _presentingOrPresented];

      if ((_presentingOrPresented & 1) == 0)
      {
        _viewControllerForDismissal = [(UIViewController *)self _viewControllerForDismissal];
        v29 = _viewControllerForDismissal;
        if (_viewControllerForDismissal)
        {
          [_viewControllerForDismissal dismissViewControllerWithTransition:v4 completion:v7];
        }

        else
        {
          _temporaryPresentationController = [(UIViewController *)self _temporaryPresentationController];

          if (_temporaryPresentationController)
          {
            _temporaryPresentationController2 = [(UIViewController *)self _temporaryPresentationController];
            [_temporaryPresentationController2 _closeScene];
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
        childModalViewController = [(UIViewController *)self childModalViewController];
        presentedViewController = [(UIViewController *)childModalViewController presentedViewController];
        if (presentedViewController)
        {
          presentedViewController2 = presentedViewController;
          do
          {
            if (childModalViewController == presentedViewController2)
            {
              [MEMORY[0x1E695DF30] raise:@"UIViewControllerHierarchyInconsistency" format:{@"presentedViewController for controller is itself on dismiss for: %@", childModalViewController}];
            }

            v33 = presentedViewController2;

            presentedViewController2 = [(UIViewController *)v33 presentedViewController];

            childModalViewController = v33;
          }

          while (presentedViewController2);
        }

        else
        {
          v33 = childModalViewController;
        }

        presentingViewController = [(UIViewController *)v33 presentingViewController];
        _presentationController2 = [(UIViewController *)self _presentationController];
        _childPresentationController = [_presentationController2 _childPresentationController];

        if (_childPresentationController && ([_childPresentationController shouldPresentInFullscreen] & 1) == 0)
        {
          _presentationController3 = [(UIViewController *)self _presentationController];
          [_presentationController3 _coverWithSnapshot];
        }

        if (!presentingViewController || presentingViewController == self)
        {
          v56 = v33;
        }

        else
        {
          do
          {
            _presentationController4 = [(UIViewController *)presentingViewController _presentationController];
            if (([_presentationController4 dismissing] & 1) == 0)
            {
              [(UIViewController *)presentingViewController _dismissViewControllerWithTransition:v4 from:v33 completion:0];
            }

            v56 = presentingViewController;

            presentingViewController = [(UIViewController *)v56 presentingViewController];

            if (!presentingViewController)
            {
              break;
            }

            v33 = v56;
          }

          while (presentingViewController != self);
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
      selfCopy4 = self;
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

    childModalViewController2 = [(UIViewController *)self childModalViewController];
    if (!childModalViewController2)
    {
      presentedViewController3 = [(UIViewController *)self presentedViewController];
      v35 = presentedViewController3;
      if (!presentedViewController3 || ([(UIViewController *)presentedViewController3 presentingViewController], (presentingViewController2 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        presentingViewController2 = [(UIViewController *)self presentingViewController];
      }

      [(UIViewController *)presentingViewController2 dismissViewControllerWithTransition:v4 completion:v22];
      goto LABEL_77;
    }

    v24 = childModalViewController2;
    v58 = v22;
    v60 = v8;
    presentedViewController4 = [(UIViewController *)childModalViewController2 presentedViewController];
    if (presentedViewController4)
    {
      presentedViewController5 = presentedViewController4;
      do
      {
        if (v24 == presentedViewController5)
        {
          [MEMORY[0x1E695DF30] raise:@"UIViewControllerHierarchyInconsistency" format:{@"presentedViewController for controller is itself on dismiss for: %@", v24}];
        }

        v27 = presentedViewController5;

        [(UIViewController *)v27 _presentingViewControllerWillChange:0];
        presentedViewController5 = [(UIViewController *)v27 presentedViewController];

        v24 = v27;
      }

      while (presentedViewController5);
    }

    else
    {
      v27 = v24;
    }

    v59 = v7;
    [(UIViewController *)v27 _presentingViewControllerWillChange:0];
    presentingViewController2 = [(UIViewController *)v27 presentingViewController];
    modalPresentationStyle = [(UIViewController *)v27 modalPresentationStyle];
    view = [(UIViewController *)v27 view];
    window = [view window];

    if (presentingViewController2 == self)
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
      v40 = presentingViewController2;
      do
      {
        view2 = [(UIViewController *)v40 view];
        window2 = [view2 window];

        if (window2)
        {
          [(UIViewController *)v40 _dismissViewControllerWithTransition:0 from:v27 completion:0];
          v40 = v40;

          presentingViewController2 = [(UIViewController *)v40 presentingViewController];
          v27 = v40;
        }

        else
        {
          [(UIViewController *)v40 _presentingViewControllerWillChange:0];
          presentingViewController3 = [(UIViewController *)v40 presentingViewController];

          if (modalPresentationStyle == 3)
          {
            [(UIViewController *)v27 setModalPresentationStyle:[(UIViewController *)v40 modalPresentationStyle]];
          }

          if (v40)
          {
            childModalViewController3 = [(UIViewController *)v40 childModalViewController];
            [childModalViewController3 _setModalSourceViewController:0];
            [childModalViewController3 _setSegueResponsibleForModalPresentation:0];
            childModalViewController4 = [(UIViewController *)v40 childModalViewController];
            [(UIViewController *)&v40->super.super.isa _removeChildModalViewController:childModalViewController4];

            *&v40->_viewControllerFlags &= 0xFFFFFFFFFFDFFFF7;
            v46 = v40->_currentAction;
            v40->_currentAction = 0;
          }

          if ([(UIViewController *)v40 _isModalSheet]|| [(UIViewController *)v40 modalPresentationStyle]== UIModalPresentationOverFullScreen || [(UIViewController *)v40 modalPresentationStyle]== 17 || [(UIViewController *)v40 modalPresentationStyle]== UIModalPresentationCustom)
          {
            [window _removeRotationViewController:v40];
          }

          childModalViewController5 = [presentingViewController3 childModalViewController];
          [(UIViewController *)presentingViewController3 _removeChildModalViewController:childModalViewController5];

          [(UIViewController *)presentingViewController3 _addChildModalViewController:v27];
          [(UIViewController *)v40 _presentingViewControllerDidChange:0];
          v35 = presentingViewController3;
          presentingViewController2 = v35;
        }

        v40 = presentingViewController2;
      }

      while (presentingViewController2 != self);
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
    selfCopy4 = self;
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

- (void)_dismissViewControllerWithTransition:(int)transition from:(id)from completion:(id)completion
{
  v6 = *&transition;
  v114 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  completionCopy = completion;
  if (!_UIAppUseModernRotationAndPresentationBehaviors())
  {
    v15 = fromCopy;
    v16 = completionCopy;
    if (!self)
    {
      goto LABEL_111;
    }

    modalPresentationStyle = [(UIViewController *)v15 modalPresentationStyle];
    _isModalSheet = [(UIViewController *)v15 _isModalSheet];
    if (!v15)
    {
      goto LABEL_111;
    }

    v103 = fromCopy;
    v19 = _isModalSheet;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    _screen = [(UIViewController *)self _screen];
    [defaultCenter removeObserver:v15 name:@"UIKeyboardPrivateWillShowNotification" object:_screen];

    _screen2 = [(UIViewController *)self _screen];
    v101 = defaultCenter;
    [defaultCenter removeObserver:v15 name:@"UIKeyboardPrivateWillHideNotification" object:_screen2];

    v97 = v19;
    if (v19 || modalPresentationStyle == 17 || modalPresentationStyle == 4)
    {
      view = [(UIViewController *)v15 view];
      window = [view window];
      [window _removeRotationViewController:v15];
    }

    view2 = [(UIViewController *)v15 view];
    superview = [view2 superview];
    v100 = view2;
    window2 = [view2 window];
    v28 = [UIWindowController windowControllerForWindow:window2];
    transitionView = [v28 transitionView];

    if (superview == transitionView)
    {
      NSLog(&cfstr_AttemptToDismi_1.isa, self, v15);
      fromCopy = v103;
LABEL_110:

LABEL_111:
      goto LABEL_112;
    }

    if ((modalPresentationStyle == 16 || modalPresentationStyle == 2) && [(UIViewController *)v15 disablesAutomaticKeyboardDismissal])
    {
      [(UIResponder *)v15 _endPinningInputViews];
    }

    definesPresentationContext = [(UIViewController *)self definesPresentationContext];
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

      currentAction = [(UIViewController *)self currentAction];
      *&newValue.a = MEMORY[0x1E69E9820];
      *&newValue.b = 3221225472;
      *&newValue.c = __94__UIViewController__windowControllerBasedDismissViewControllerWithTransition_from_completion___block_invoke;
      *&newValue.d = &unk_1E70F3608;
      *&newValue.tx = v16;
      if (currentAction)
      {
        objc_setProperty_nonatomic_copy(currentAction, v79, &newValue, 24);
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

      view3 = [(UIViewController *)v15 view];
      window3 = [view3 window];
      v85 = [UIWindowController windowControllerForWindow:window3];

      _popoverController = [(UIViewController *)self _popoverController];
      v87 = +[UIDevice currentDevice];
      userInterfaceIdiom = [v87 userInterfaceIdiom];

      if (modalPresentationStyle != 3 || (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1 || [(UIViewController *)self modalPresentationStyle]== 16 || [(UIViewController *)self modalPresentationStyle]== UIModalPresentationFormSheet || [(UIViewController *)self modalPresentationStyle]== UIModalPresentationPageSheet || !_popoverController)
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
          fromCopy = v103;
        }

        else
        {
          [(UIViewController *)self _didFinishDismissTransition];
          fromCopy = v103;
        }
      }

      else
      {
        [_popoverController _modalTransition:v6 fromViewController:v15 toViewController:self target:self didFinish:2];
        [(UIViewController *)v15 setModalInPresentation:(*&v15->_viewControllerFlags >> 13) & 1];
        *&v15->_viewControllerFlags &= ~0x2000uLL;
        fromCopy = v103;
      }

      v15->_lastKnownInterfaceOrientation = 0;
      if (!v6)
      {
        view4 = [(UIViewController *)self view];
        [view4 _clearAnimationFilters];
      }

      if (self->_modalPreservedFirstResponder)
      {
        if ([(UIResponder *)self _containsResponder:?]&& [(UIResponder *)self->_modalPreservedFirstResponder _canBecomeFirstResponderWhenPossible])
        {
          _keyboardSceneDelegate = [(UIViewController *)self _keyboardSceneDelegate];
          v94 = [MEMORY[0x1E696B098] valueWithPointer:self];
          [_keyboardSceneDelegate _restoreInputViewsWithId:v94 animated:1];

          [(UIResponder *)self->_modalPreservedFirstResponder _clearBecomeFirstResponderWhenCapable];
        }

        modalPreservedFirstResponder = self->_modalPreservedFirstResponder;
        self->_modalPreservedFirstResponder = 0;
      }

      goto LABEL_110;
    }

    if (v6 != 9 || (modalPresentationStyle == 3 ? (v31 = definesPresentationContext) : (v31 = 0), v31 && [(UIViewController *)self providesPresentationContextTransitionStyle]))
    {
      v32 = v16;
      v33 = completionCopy;
      v34 = 1;
      selfCopy = self;
    }

    else
    {
      v32 = v16;
      v33 = completionCopy;
      v34 = 0;
      selfCopy = v15;
    }

    v57 = selfCopy;
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
      if (modalPresentationStyle == 4)
      {
        completionCopy = v33;
        if (v6)
        {
          NSLog(&cfstr_WarningUimodal_0.isa, v15, self);
          modalPresentationStyle = 0;
          v96 = 0;
          v99 = 0;
          v56 = 1;
          goto LABEL_82;
        }

LABEL_61:
        v16 = v32;
        if (modalPresentationStyle != 1 || v6 != 12)
        {
          goto LABEL_83;
        }

        if (UIKeyboardAutomaticIsOffScreen())
        {
          modalPresentationStyle = 1;
          v6 = 12;
          v56 = 1;
          goto LABEL_83;
        }

        memset(&buf, 0, sizeof(buf));
        _lastKnownInterfaceOrientation = [(UIViewController *)self _lastKnownInterfaceOrientation];
        v61 = 0.0;
        if (_lastKnownInterfaceOrientation != 1)
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
            _lastKnownInterfaceOrientation2 = [(UIViewController *)self _lastKnownInterfaceOrientation];
            v61 = 3.14159265;
            if (_lastKnownInterfaceOrientation2 != 2)
            {
              v61 = 0.0;
            }
          }
        }

        [UIScreen transformToRotateScreen:v61];
        _visibleView = [(UIViewController *)v15 _visibleView];
        [_visibleView frame];
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
        _visibleView2 = [(UIViewController *)v15 _visibleView];
        [_visibleView2 setFrame:{v71, v72, v73, v74}];

        [UIView setAnimationsEnabled:v70];
        modalPresentationStyle = 1;
        v6 = 12;
        v56 = 1;
LABEL_82:
        v16 = v32;
        goto LABEL_83;
      }
    }

    completionCopy = v33;
    goto LABEL_61;
  }

  _presentationController = [(UIViewController *)self _presentationController];

  if (_presentationController)
  {
    _presentationController2 = [(UIViewController *)self _presentationController];
    _transitionContext = [_presentationController2 _transitionContext];

    _animator = [_transitionContext _animator];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [_animator shouldPreemptWithContext:_transitionContext])
    {
      v14 = [_animator preemptWithContext:_transitionContext];
    }

    else
    {
      v14 = 0;
    }

    [(UIViewController *)fromCopy _presentingViewControllerWillChange:0];
    v104 = fromCopy;
    _overrideTransitioningDelegate = [(UIViewController *)fromCopy _overrideTransitioningDelegate];
    if (_overrideTransitioningDelegate)
    {
    }

    else if (!v6 || !+[UIViewController _shouldAnimateTransitions])
    {
      _preferredAnimationControllerForDismissal = [[UIViewControllerBuiltinTransitionViewAnimator alloc] initWithTransition:0];
      if (_preferredAnimationControllerForDismissal)
      {
LABEL_36:
        v102 = _transitionContext;
        if ([(UIViewController *)self definesPresentationContext])
        {
          _presentationController3 = [(UIViewController *)self _presentationController];
          _shouldRespectDefinesPresentationContext = [_presentationController3 _shouldRespectDefinesPresentationContext];

          v44 = v6 == 0;
          if (v6)
          {
            providesPresentationContextTransitionStyle = v6 != 9;
          }

          else
          {
            providesPresentationContextTransitionStyle = 0;
          }

          if (!providesPresentationContextTransitionStyle && _shouldRespectDefinesPresentationContext)
          {
            providesPresentationContextTransitionStyle = [(UIViewController *)self providesPresentationContextTransitionStyle];
          }
        }

        else
        {
          v44 = v6 == 0;
          if (v6)
          {
            providesPresentationContextTransitionStyle = v6 != 9;
          }

          else
          {
            providesPresentationContextTransitionStyle = 0;
          }
        }

        if (providesPresentationContextTransitionStyle)
        {
          selfCopy2 = self;
        }

        else
        {
          selfCopy2 = v104;
        }

        v47 = selfCopy2;
        v48 = v47;
        if (!_preferredAnimationControllerForDismissal)
        {
          v54 = [(UIViewController *)v47 _customAnimatorForDismissedController:v104];
          if (v54)
          {
            _preferredAnimationControllerForDismissal = v54;
            v50 = [(UIViewController *)v48 _customInteractionControllerForDismissal:v54];
            if (v50)
            {
              goto LABEL_51;
            }
          }

          else
          {
            _presentationController4 = [(UIViewController *)self _presentationController];
            _preferredAnimationControllerForDismissal = [_presentationController4 _preferredAnimationControllerForDismissal];

            if (!_preferredAnimationControllerForDismissal)
            {
              if (!v44 && !providesPresentationContextTransitionStyle)
              {
                v6 = [(UIViewController *)self _transitionForModalTransitionStyle:0 appearing:?];
              }

              _preferredAnimationControllerForDismissal = [[UIViewControllerBuiltinTransitionViewAnimator alloc] initWithTransition:v6];
            }
          }
        }

        _presentationController5 = [(UIViewController *)self _presentationController];
        v50 = [_presentationController5 _preferredInteractionControllerForDismissal:_preferredAnimationControllerForDismissal];

LABEL_51:
        v105[0] = MEMORY[0x1E69E9820];
        v105[1] = 3221225472;
        v105[2] = __73__UIViewController__dismissViewControllerWithTransition_from_completion___block_invoke;
        v105[3] = &unk_1E7103108;
        v105[4] = self;
        v106 = _preferredAnimationControllerForDismissal;
        v107 = v50;
        v108 = v14;
        v109 = completionCopy;
        v51 = v14;
        v52 = v50;
        v53 = _preferredAnimationControllerForDismissal;
        [UIView _conditionallyPerformWithoutAnimation:v6 == 0 layout:v105];

        fromCopy = v104;
        goto LABEL_112;
      }
    }

    _presentationController6 = [(UIViewController *)self _presentationController];
    _forcesPreferredAnimationControllers = [_presentationController6 _forcesPreferredAnimationControllers];

    if (_forcesPreferredAnimationControllers)
    {
      _presentationController7 = [(UIViewController *)self _presentationController];
      _preferredAnimationControllerForDismissal = [_presentationController7 _preferredAnimationControllerForDismissal];
    }

    else
    {
      _preferredAnimationControllerForDismissal = 0;
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

  _keyboardSceneDelegate = [(UIViewController *)self _keyboardSceneDelegate];
  v4 = [MEMORY[0x1E696B098] valueWithPointer:self];
  [_keyboardSceneDelegate _restoreInputAccessoryViewOverrideWithId:v4];

  if ([(UIResponder *)self _containsResponder:self->_modalPreservedFirstResponder])
  {
    v5 = +[UIView areAnimationsEnabled];
    presentedViewController = [(UIViewController *)self presentedViewController];
    objc_getClass("UIActivityViewController");
    if (objc_opt_isKindOfClass())
    {
      _keyboardSceneDelegate2 = [presentedViewController _existingPresentationControllerImmediate:1 effective:0];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_7:

        goto LABEL_8;
      }

      v8 = [presentedViewController _existingPresentationControllerImmediate:1 effective:1];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        _keyboardSceneDelegate2 = [(UIViewController *)self _keyboardSceneDelegate];
        [_keyboardSceneDelegate2 popAnimationStyle];
        goto LABEL_7;
      }
    }

LABEL_8:
    _keyboardSceneDelegate3 = [(UIViewController *)self _keyboardSceneDelegate];
    v11 = [MEMORY[0x1E696B098] valueWithPointer:self];
    [_keyboardSceneDelegate3 _restoreInputViewsWithId:v11 animated:v5];

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

- (void)_didCancelPresentTransition:(id)transition
{
  transitionCopy = transition;
  if ([transitionCopy _isPresentation] && !_UIAppUseModernRotationAndPresentationBehaviors())
  {
    fromViewController = [transitionCopy fromViewController];
    customTransitioningView = [fromViewController customTransitioningView];
    superview = [customTransitioningView superview];
    view = [fromViewController view];
    [superview insertSubview:view aboveSubview:customTransitioningView];

    [customTransitioningView removeFromSuperview];
  }

  [(UIViewController *)self _restoreInputViewsForPresentation];
  *&self->_viewControllerFlags &= 0xFFFFFFFFFFDFFFF7;
  [(UIViewController *)self _cleanupPresentation];
}

- (void)_legacyModalPresentTransitionDidComplete
{
  if ((*(&self->_viewControllerFlags + 1) & 1) == 0)
  {
    currentAction = [(UIViewController *)self currentAction];
    if (currentAction)
    {
      v4 = currentAction[4] != 0;
    }

    else
    {
      v4 = 0;
    }

    [(UIViewController *)self viewDidDisappear:v4];
    childModalViewController = [(UIViewController *)self childModalViewController];
    [childModalViewController viewDidAppear:v4];
  }

  [(UIViewController *)self _didFinishPresentTransition];
}

- (void)_didFinishDismissTransition
{
  childModalViewController = [(UIViewController *)self childModalViewController];
  if (!_UIAppUseModernRotationAndPresentationBehaviors() && [childModalViewController _isModalSheet])
  {
    dropShadowView = [childModalViewController dropShadowView];
    if (dropShadowView)
    {
      [childModalViewController setDropShadowView:0];
    }
  }

  customTransitioningView = [(UIViewController *)self customTransitioningView];
  if (customTransitioningView)
  {
    v5 = customTransitioningView;
    v6 = _UIAppUseModernRotationAndPresentationBehaviors();

    if (!v6)
    {
      customTransitioningView2 = [(UIViewController *)self customTransitioningView];
      superview = [customTransitioningView2 superview];

      view = [(UIViewController *)self view];
      customTransitioningView3 = [(UIViewController *)self customTransitioningView];
      [superview insertSubview:view aboveSubview:customTransitioningView3];

      customTransitioningView4 = [(UIViewController *)self customTransitioningView];
      [customTransitioningView4 removeFromSuperview];

      [(UIViewController *)self setCustomTransitioningView:0];
    }
  }

  [childModalViewController _setModalSourceViewController:0];
  [childModalViewController _setSegueResponsibleForModalPresentation:0];
  *&self->_viewControllerFlags &= 0xFFFFFFFFFFDFFFF7;
  [(UIViewController *)self _cleanupPresentation];
  _popoverController = [(UIViewController *)self _popoverController];
  [_popoverController _containedViewControllerModalStateChanged];
}

- (void)_cleanupPresentation
{
  childModalViewController = [(UIViewController *)self childModalViewController];
  [(UIViewController *)&self->super.super.isa _removeChildModalViewController:childModalViewController];
  currentAction = self->_currentAction;
  self->_currentAction = 0;

  _rootAncestorViewController = [(UIViewController *)self _rootAncestorViewController];
  [_rootAncestorViewController setNeedsUpdateOfSupportedInterfaceOrientations];

  [(UIViewController *)self _setPresentationController:0];
  [(UIViewController *)self _setOriginalPresentationController:0];
}

- (void)_didCancelDismissTransition:(id)transition
{
  *&self->_viewControllerFlags &= 0xFFFFFFFFFFDFFFF7;
  currentAction = self->_currentAction;
  self->_currentAction = 0;
}

- (void)_setPresentationController:(id)controller
{
  controllerCopy = controller;
  if (self->_presentationController != controllerCopy)
  {
    v10 = controllerCopy;
    objc_storeStrong(&self->_presentationController, controller);
    childModalViewController = [(UIViewController *)self childModalViewController];
    v7 = childModalViewController;
    if (self->_presentationController)
    {
      v8 = childModalViewController == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      view = [childModalViewController view];
      _UIViewTopDownSubtreeTraversal(view, &__block_literal_global_815, 0);
    }

    controllerCopy = v10;
  }
}

- (void)_setTemporaryPresentationController:(id)controller
{
  controllerCopy = controller;
  temporaryPresentationController = self->_temporaryPresentationController;
  v7 = controllerCopy;
  if (temporaryPresentationController != controllerCopy)
  {
    if (temporaryPresentationController)
    {
      [(UIPresentationController *)temporaryPresentationController _setPresentedViewControllerStoredWeakly:0];
    }

    objc_storeStrong(&self->_temporaryPresentationController, controller);
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

- (BOOL)_isInContextOfPresentationControllerOfClass:(Class)class effective:(BOOL)effective
{
  presentingViewController = [(UIViewController *)self presentingViewController];
  if (presentingViewController)
  {
    v6 = presentingViewController;
    while (1)
    {
      if (effective)
      {
        [v6 _presentationController];
      }

      else
      {
        [v6 _originalPresentationController];
      }
      v7 = ;
      LOBYTE(presentingViewController2) = objc_opt_isKindOfClass();
      if ((presentingViewController2 & 1) != 0 || [v7 shouldPresentInFullscreen])
      {
        break;
      }

      presentingViewController2 = [v6 presentingViewController];

      v6 = presentingViewController2;
      if (!presentingViewController2)
      {
        return presentingViewController2 & 1;
      }
    }
  }

  else
  {
    LOBYTE(presentingViewController2) = 0;
  }

  return presentingViewController2 & 1;
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

+ (id)_viewControllerForFullScreenPresentationFromView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:11557 description:{@"Invalid parameter not satisfying: %@", @"view"}];
  }

  _viewControllerForAncestor = [viewCopy _viewControllerForAncestor];
  _popoverController = [_viewControllerForAncestor _popoverController];
  contentViewController = [_popoverController contentViewController];

  _window = [viewCopy _window];
  v10 = _window;
  if (contentViewController || ([_window rootViewController], (contentViewController = objc_claimAutoreleasedReturnValue()) != 0))
  {
    presentedViewController = [contentViewController presentedViewController];
    if (presentedViewController)
    {
      presentedViewController2 = presentedViewController;
      do
      {
        v13 = presentedViewController2;

        presentedViewController2 = [v13 presentedViewController];

        contentViewController = v13;
      }

      while (presentedViewController2);
    }

    else
    {
      v13 = contentViewController;
    }

    _existingView = [v13 _existingView];
    window = [_existingView window];

    if (window == v10)
    {
      contentViewController = v13;
    }

    else
    {
      NSLog(&cfstr_SWindowIsNotEq.isa, viewCopy, v13);
      contentViewController = 0;
    }
  }

  return contentViewController;
}

- (void)_handleTapToDismissModalCurl:(id)curl
{
  curlCopy = curl;
  if ([curlCopy state] == 3)
  {
    presentingViewController = [(UIViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];

    view = [curlCopy view];
    [view removeGestureRecognizer:curlCopy];
  }
}

- (void)_showViewController:(id)controller withAction:(SEL)action sender:(id)sender
{
  controllerCopy = controller;
  senderCopy = sender;
  v9 = [(UIViewController *)self targetViewControllerForAction:action sender:senderCopy];
  if (v9)
  {
    v10 = v9;
    if (senderCopy)
    {
      self = senderCopy;
    }

    if (dyld_program_sdk_at_least())
    {
      [v10 action];
    }

    else
    {
      [v10 performSelector:action withObject:controllerCopy withObject:self];
    }
  }

  else
  {
    view = [(UIViewController *)self view];
    v10 = [UIViewController _viewControllerForFullScreenPresentationFromView:view];

    if (!v10)
    {
      goto LABEL_10;
    }

    [v10 presentViewController:controllerCopy animated:+[UIView areAnimationsEnabled](UIView completion:{"areAnimationsEnabled"), 0}];
  }

LABEL_10:
}

- (UIViewController)targetViewControllerForAction:(SEL)action sender:(id)sender
{
  v6 = sender;
  if (-[UIViewController canPerformAction:withSender:](self, "canPerformAction:withSender:", action, v6) && [objc_opt_class() doesOverrideViewControllerMethod:action])
  {
    selfCopy = self;
  }

  else
  {
    _nextViewController = [(UIViewController *)self _nextViewController];
    selfCopy = [_nextViewController targetViewControllerForAction:action sender:v6];
  }

  return selfCopy;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v47 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  v8 = coordinatorCopy;
  if (coordinatorCopy)
  {
    [coordinatorCopy targetTransform];
  }

  else
  {
    memset(&v45, 0, sizeof(v45));
  }

  IsIdentity = CGAffineTransformIsIdentity(&v45);
  v38 = v8;
  if (!IsIdentity)
  {
    _existingView = [(UIViewController *)self _existingView];
    window = [_existingView window];
    if (window)
    {
      v12 = window;
      _shouldSendLegacyMethodsFromViewWillTransitionToSize = [objc_opt_class() _shouldSendLegacyMethodsFromViewWillTransitionToSize];

      if (!_shouldSendLegacyMethodsFromViewWillTransitionToSize)
      {
        goto LABEL_12;
      }

      [v8 transitionDuration];
      v15 = v14;
      containerView = [v8 containerView];
      window2 = [containerView window];
      v18 = window2;
      if (window2)
      {
        _existingView = window2;
      }

      else
      {
        _existingView2 = [(UIViewController *)self _existingView];
        _existingView = [_existingView2 window];

        v8 = v38;
      }

      _toWindowOrientation = [_existingView _toWindowOrientation];
      _fromWindowOrientation = [_existingView _fromWindowOrientation];
      [(UIViewController *)self willRotateToInterfaceOrientation:_toWindowOrientation duration:v15];
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __71__UIViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
      v44[3] = &unk_1E7103BF8;
      v44[4] = self;
      v44[5] = _toWindowOrientation;
      *&v44[6] = v15;
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __71__UIViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
      v43[3] = &unk_1E71042F8;
      v43[4] = self;
      v43[5] = _fromWindowOrientation;
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
    _childViewControllersToSendViewWillTransitionToSize = [(UIViewController *)self _childViewControllersToSendViewWillTransitionToSize];
    v23 = [_childViewControllersToSendViewWillTransitionToSize countByEnumeratingWithState:&v39 objects:v46 count:16];
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
            objc_enumerationMutation(_childViewControllersToSendViewWillTransitionToSize);
          }

          v27 = *(*(&v39 + 1) + 8 * i);
          if ((*(v27 + 382) & 0x20) != 0)
          {
            _existingView3 = [*(*(&v39 + 1) + 8 * i) _existingView];
            [_existingView3 frame];
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

        v24 = [_childViewControllersToSendViewWillTransitionToSize countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v24);
    }

    [(UIViewController *)self _sendViewWillTransitionToSizeToPresentationController:v8 withTransitionCoordinator:width, height];
  }
}

- (void)_sendViewWillTransitionToSizeToPresentationController:(double)controller withTransitionCoordinator:(double)coordinator
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (self)
  {
    _presentationController = [self _presentationController];
    v9 = _presentationController;
    if (_presentationController)
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __100__UIViewController__sendViewWillTransitionToSizeToPresentationController_withTransitionCoordinator___block_invoke;
      v31[3] = &unk_1E7103E40;
      v31[4] = self;
      v32 = _presentationController;
      controllerCopy = controller;
      coordinatorCopy = coordinator;
      v33 = v7;
      [UIViewController _performWithoutDeferringTransitions:v31];
    }

    v26 = v9;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    childViewControllers = [self childViewControllers];
    v11 = [childViewControllers countByEnumeratingWithState:&v27 objects:v37 count:16];
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
            objc_enumerationMutation(childViewControllers);
          }

          v15 = *(*(&v27 + 1) + 8 * v14);
          if (([objc_opt_class() _shouldForwardViewWillTransitionToSize] & 1) == 0)
          {
            if ((*(v15 + 382) & 0x20) != 0)
            {
              _existingView = [v15 _existingView];
              [_existingView frame];
              v16 = v19;
              v17 = v20;
            }

            else
            {
              v16 = *(v15 + 440);
              v17 = *(v15 + 448);
            }

            [self sizeForChildContentContainer:v15 withParentContainerSize:{controller, coordinator}];
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
        v12 = [childViewControllers countByEnumeratingWithState:&v27 objects:v37 count:16];
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
        sourceView = [v16 sourceView];

        if (sourceView == v7)
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

- (void)unregisterPreviewing:(id)previewing
{
  previewingCopy = previewing;
  [previewingCopy unregister];
  [(NSMutableArray *)self->_previewSourceViews removeObject:previewingCopy];
}

- (void)unregisterPreviewSourceView:(id)view
{
  v18 = *MEMORY[0x1E69E9840];
  viewCopy = view;
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
      sourceView = [v10 sourceView];

      if (sourceView == viewCopy)
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

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sel__prepareForTapGesture_ == action)
  {
    return [(NSMutableArray *)self->_previewSourceViews count]!= 0;
  }

  v5.receiver = self;
  v5.super_class = UIViewController;
  return [UIResponder canPerformAction:sel_canPerformAction_withSender_ withSender:?];
}

+ (void)_sendPrepareForTapGesture:(uint64_t)gesture
{
  v6 = a2;
  objc_opt_self();
  _viewControllerForAncestor = [v6 _viewControllerForAncestor];
  v3 = _viewControllerForAncestor;
  if (_viewControllerForAncestor)
  {
    v4 = _viewControllerForAncestor;
    do
    {
      if ([v4 canPerformAction:sel__prepareForTapGesture_ withSender:v6])
      {
        break;
      }

      _nextViewController = [v4 _nextViewController];

      v4 = _nextViewController;
    }

    while (_nextViewController);
  }

  else
  {
    v4 = 0;
  }

  [v4 _prepareForTapGesture:v6];
}

- (void)_prepareForTapGesture:(id)gesture
{
  v18 = *MEMORY[0x1E69E9840];
  gestureCopy = gesture;
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

        sourceView = [*(*(&v13 + 1) + 8 * i) sourceView];
        v11 = [gestureCopy isDescendantOfView:sourceView];

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
  previewMenuItems = [(UIViewController *)self previewMenuItems];
  if ([previewMenuItems count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = previewMenuItems;
    v4 = previewMenuItems;
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
          _subitems = [v9 _subitems];
          if (_subitems && (v11 = _subitems, [v9 _subitems], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, v11, v13))
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
            [array addObject:v14];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v6);
    }

    v16 = [MEMORY[0x1E695DEC8] arrayWithArray:array];

    previewMenuItems = v18;
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
  array = [MEMORY[0x1E695DF70] array];
  previewActions = [(UIViewController *)self previewActions];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [previewActions countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(previewActions);
        }

        v9 = [UIPreviewMenuItem itemWithViewControllerPreviewAction:*(*(&v12 + 1) + 8 * i)];
        [array addObject:v9];
      }

      v6 = [previewActions countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x1E695DEC8] arrayWithArray:array];

  return v10;
}

- (uint64_t)_presentedViewControllerStateIsValidForSourcingSupportedOrientations:(void *)orientations
{
  v3 = a2;
  if (orientations)
  {
    if (_UIAppUseModernRotationAndPresentationBehaviors())
    {
      _presentationController = [orientations _presentationController];
      v5 = _presentationController;
      if (_presentationController && ([_presentationController presentedViewController], v6 = objc_claimAutoreleasedReturnValue(), v6, v6 == v3) && ((objc_msgSend(v3, "transitionCoordinator"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isCancelled"), v7, !objc_msgSend(v5, "presenting")) || (v8 & 1) == 0))
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
      currentAction = [orientations currentAction];
      v5 = currentAction;
      if (currentAction && *(currentAction + 8) == @"DismissModal")
      {
        WeakRetained = objc_loadWeakRetained((currentAction + 40));
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

- (id)_windowForAutorotationBelowWindow:(void *)window
{
  v3 = a2;
  v4 = v3;
  if (window)
  {
    [v3 level];
    v6 = v5;
    _window = [window _window];
    _windowHostingScene = [_window _windowHostingScene];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__UIViewController__windowForAutorotationBelowWindow___block_invoke;
    v10[3] = &unk_1E7104320;
    v11 = v4;
    v12 = v6;
    window = [_windowHostingScene _topVisibleWindowPassingTest:v10];
  }

  return window;
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

- (id)_primaryViewControllerForAutorotationBelowWindow:(void *)window
{
  if (window)
  {
    v2 = [(UIViewController *)window _windowForAutorotationBelowWindow:a2];
    v3 = v2;
    if (v2)
    {
      rootViewController = [v2 rootViewController];
      v5 = [rootViewController _viewControllerForSupportedInterfaceOrientationsWithDismissCheck:1];

      v6 = [v5 _existingPresentationControllerImmediate:0 effective:0];
      _shouldKeepCurrentFirstResponder = [v6 _shouldKeepCurrentFirstResponder];

      if ((_shouldKeepCurrentFirstResponder & 1) == 0)
      {
        presentingViewController = [v5 presentingViewController];
        v9 = presentingViewController;
        if (presentingViewController)
        {
          v10 = presentingViewController;
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

- (id)_viewControllerForRotationWithDismissCheck:(void *)check
{
  checkCopy = check;
  if (check)
  {
    _existingView = [check _existingView];
    window = [_existingView window];

    if (window)
    {
      checkCopy = checkCopy;
    }

    else
    {
      presentedViewController = [checkCopy presentedViewController];
      if (a2 && ([(UIViewController *)checkCopy _presentedViewControllerStateIsValidForSourcingSupportedOrientations:presentedViewController]& 1) == 0)
      {
        _nearestFullScreenAncestorViewController = [(UIViewController *)checkCopy _nearestFullScreenAncestorViewController];
      }

      else if (presentedViewController)
      {
        _nearestFullScreenAncestorViewController = [(UIViewController *)presentedViewController _viewControllerForRotationWithDismissCheck:a2];
      }

      else
      {
        _nearestFullScreenAncestorViewController = checkCopy;
      }

      checkCopy = _nearestFullScreenAncestorViewController;
    }
  }

  return checkCopy;
}

- (id)_viewControllersForRotationCallbacks
{
  parentViewController = self->_parentViewController;
  if (parentViewController)
  {
    _viewControllersForRotationCallbacks = [(UIViewController *)parentViewController _viewControllersForRotationCallbacks];
  }

  else
  {
    _viewControllersForRotationCallbacks = [MEMORY[0x1E695DF70] array];
    selfCopy = self;
    presentedViewController = [(UIViewController *)selfCopy presentedViewController];
    if (presentedViewController)
    {
      presentedViewController2 = presentedViewController;
      do
      {
        v8 = presentedViewController2;

        presentedViewController2 = [(UIViewController *)v8 presentedViewController];

        selfCopy = v8;
      }

      while (presentedViewController2);
    }

    else
    {
      v8 = selfCopy;
    }

    modalPresentationStyle = [(UIViewController *)v8 modalPresentationStyle];
    [_viewControllersForRotationCallbacks addObject:v8];
    if (modalPresentationStyle)
    {
      presentingViewController = [(UIViewController *)v8 presentingViewController];
      modalPresentationStyle2 = [presentingViewController modalPresentationStyle];
      if (presentingViewController)
      {
        while (1)
        {
          v12 = modalPresentationStyle;
          modalPresentationStyle = modalPresentationStyle2;
          _existingView = [presentingViewController _existingView];
          window = [_existingView window];

          if (window)
          {
            if (modalPresentationStyle != v12 || (v12 - 1) >= 2)
            {
              [_viewControllersForRotationCallbacks addObject:presentingViewController];
              if (!modalPresentationStyle)
              {
                break;
              }
            }
          }

          v10PresentingViewController = [presentingViewController presentingViewController];

          modalPresentationStyle2 = [v10PresentingViewController modalPresentationStyle];
          presentingViewController = v10PresentingViewController;
          if (!v10PresentingViewController)
          {
            goto LABEL_17;
          }
        }
      }
    }

LABEL_17:
  }

  return _viewControllersForRotationCallbacks;
}

- (id)_viewControllerForSupportedInterfaceOrientationsWithDismissCheck:(BOOL)check
{
  parentViewController = self->_parentViewController;
  if (parentViewController)
  {
    selfCopy = [(UIViewController *)parentViewController _viewControllerForSupportedInterfaceOrientations];
LABEL_3:
    selfCopy2 = selfCopy;
    goto LABEL_35;
  }

  checkCopy = check;
  _existingView = [(UIViewController *)self _existingView];
  window = [_existingView window];

  if (!window)
  {
    if (checkCopy && ([(UIViewController *)self childModalViewController], v13 = objc_claimAutoreleasedReturnValue(), v14 = [(UIViewController *)self _presentedViewControllerStateIsValidForSourcingSupportedOrientations:v13], v13, (v14 & 1) == 0))
    {
      selfCopy = [(UIViewController *)self _nearestFullScreenAncestorViewController];
    }

    else
    {
      childModalViewController = [(UIViewController *)self childModalViewController];

      if (childModalViewController)
      {
        childModalViewController2 = [(UIViewController *)self childModalViewController];
        selfCopy2 = [childModalViewController2 _viewControllerForSupportedInterfaceOrientationsWithDismissCheck:checkCopy];
        goto LABEL_34;
      }

      selfCopy = self;
    }

    goto LABEL_3;
  }

  selfCopy2 = self;
  childModalViewController2 = [(UIViewController *)selfCopy2 presentedViewController];
  if (!childModalViewController2)
  {
    goto LABEL_34;
  }

  v11 = selfCopy2;
  while (!checkCopy || [(UIViewController *)v11 _presentedViewControllerStateIsValidForSourcingSupportedOrientations:childModalViewController2])
  {
    presentingViewController = childModalViewController2;

    childModalViewController2 = [(UIViewController *)presentingViewController presentedViewController];

    v11 = presentingViewController;
    if (!childModalViewController2)
    {
      goto LABEL_16;
    }
  }

  presentingViewController = v11;
LABEL_16:
  if (presentingViewController == selfCopy2)
  {
LABEL_32:
    selfCopy2 = presentingViewController;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = presentingViewController;
    modalPresentationStyle = [(UIViewController *)v16 modalPresentationStyle];
    v18 = dyld_program_sdk_at_least();
    if (modalPresentationStyle == 4)
    {
      LOBYTE(v19) = 1;
    }

    else
    {
      v19 = (modalPresentationStyle < 0x12) & (0x20021u >> modalPresentationStyle);
    }

    v20 = v18 ? v19 : (modalPresentationStyle < 0x12) & (0x20021u >> modalPresentationStyle);
    v21 = dyld_program_sdk_at_least();
    if (v20 & 1) != 0 || (v21)
    {
      break;
    }

    v22 = [(UIViewController *)v16 _existingPresentationControllerImmediate:1 effective:0];
    if (v22)
    {
      v23 = v22;
      presentationStyle = [v22 presentationStyle];

      if (presentationStyle == 20)
      {
        goto LABEL_33;
      }
    }

    else
    {
    }

LABEL_31:
    presentingViewController = [(UIViewController *)v16 presentingViewController];

    if (presentingViewController == selfCopy2)
    {
      goto LABEL_32;
    }
  }

  if ((v20 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_33:
  selfCopy2 = v16;
LABEL_34:

LABEL_35:

  return selfCopy2;
}

- (void)_beginDisablingInterfaceAutorotation
{
  view = [(UIViewController *)self view];
  window = [view window];
  [window beginDisablingInterfaceAutorotation];
}

- (void)_endDisablingInterfaceAutorotation
{
  view = [(UIViewController *)self view];
  window = [view window];
  [window endDisablingInterfaceAutorotation];
}

- (BOOL)_isInterfaceAutorotationDisabled
{
  view = [(UIViewController *)self view];
  window = [view window];
  isInterfaceAutorotationDisabled = [window isInterfaceAutorotationDisabled];

  return isInterfaceAutorotationDisabled;
}

- (void)_updateInterfaceOrientationAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _window = [(UIViewController *)self _window];
  windowScene = [_window windowScene];
  _systemShellOwnsInterfaceOrientation = [(UIScene *)windowScene _systemShellOwnsInterfaceOrientation];

  if (_systemShellOwnsInterfaceOrientation)
  {
    if (animatedCopy)
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
    view = [(UIViewController *)self view];
    window = [view window];
    [window _updateToInterfaceOrientation:v8 animated:animatedCopy];
  }
}

- (void)_setAllowsAutorotation:(BOOL)autorotation
{
  v3 = 2048;
  if (!autorotation)
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
    mainScreen = [objc_opt_self() mainScreen];
    v3 = [UIWindow allWindowsIncludingInternalWindows:0 onlyVisibleWindows:1 forScreen:mainScreen];

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
  _window = [(UIViewController *)self _window];
  v3 = _window;
  if (_window)
  {
    _windowInterfaceOrientation = [_window _windowInterfaceOrientation];
    if (_windowInterfaceOrientation == UIInterfaceOrientationUnknown)
    {
      _windowInterfaceOrientation = [UIApp _sceneInterfaceOrientationFromWindow:v3];
    }
  }

  else
  {
    _windowInterfaceOrientation = UIInterfaceOrientationPortrait;
  }

  return _windowInterfaceOrientation;
}

- (uint64_t)_preferredInterfaceOrientationForPresentationInWindow:(uint64_t)window fromInterfaceOrientation:
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (!self)
  {
    window = 0;
    goto LABEL_16;
  }

  if ([v5 _windowCanDynamicallySpecifySupportedInterfaceOrientations])
  {
    if ([self _hasPreferredInterfaceOrientationForPresentation] && _UIViewControllerIsBeingPresentedOrDismissesFullscreen(self))
    {
      preferredInterfaceOrientationForPresentation = [self preferredInterfaceOrientationForPresentation];
      supportedInterfaceOrientations = [self supportedInterfaceOrientations];
      if (preferredInterfaceOrientationForPresentation > 4 || (v9 = supportedInterfaceOrientations, (supportedInterfaceOrientations | qword_18A6798F0[preferredInterfaceOrientationForPresentation]) == 0xFFFFFFFFFFFFFFFFLL))
      {
        window = preferredInterfaceOrientationForPresentation;
        goto LABEL_16;
      }

      v10 = *(__UILogGetCategoryCachedImpl("Orientation", &_preferredInterfaceOrientationForPresentationInWindow_fromInterfaceOrientation____s_category) + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
        v12 = _UIInterfaceOrientationDebugDescription(preferredInterfaceOrientationForPresentation);
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
      if ([self shouldAutorotate])
      {
        _hasApplicationCalledLaunchDelegate = [UIApp _hasApplicationCalledLaunchDelegate];
        windowScene = [v6 windowScene];
        window = [windowScene _interfaceOrientation];

        v16 = +[UIDevice currentDevice];
        orientation = [v16 orientation];

        if ((orientation - 1) <= 3 && (!_hasApplicationCalledLaunchDelegate || ([self _isModalSheet] & 1) == 0))
        {
          window = orientation;
        }
      }
    }

    window = [self _preferredInterfaceOrientationGivenCurrentOrientation:window];
  }

LABEL_16:

  return window;
}

+ (BOOL)_allViewControllersInArray:(id)array allowAutorotationToInterfaceOrientation:(int64_t)orientation predicate:(id)predicate
{
  arrayCopy = array;
  predicateCopy = predicate;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __97__UIViewController__allViewControllersInArray_allowAutorotationToInterfaceOrientation_predicate___block_invoke;
  v11[3] = &unk_1E7104348;
  v9 = predicateCopy;
  v13 = &v15;
  orientationCopy = orientation;
  v12 = v9;
  [arrayCopy enumerateObjectsUsingBlock:v11];
  LOBYTE(orientation) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return orientation;
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

- (BOOL)__withSupportedInterfaceOrientation:(void *)orientation apply:
{
  orientationCopy = orientation;
  if (self)
  {
    v6 = _UIInterfaceOrientationMaskContainsOrientation([self __supportedInterfaceOrientations], a2);
    if (orientationCopy)
    {
      orientationCopy[2](orientationCopy, v6);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isSupportedInterfaceOrientation:(int64_t)orientation
{
  if (![objc_opt_class() _doesOverrideLegacyShouldAutorotateMethod])
  {
    return orientation == 1;
  }

  return [(UIViewController *)self shouldAutorotateToInterfaceOrientation:orientation];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
  if ([objc_opt_class() _doesOverrideLegacyShouldAutorotateMethod])
  {
    LOBYTE(_allowsAutorotation) = toInterfaceOrientation == UIInterfaceOrientationPortrait;
  }

  else
  {
    _allowsAutorotation = [(UIViewController *)self _allowsAutorotation];
    if (_allowsAutorotation)
    {

      LOBYTE(_allowsAutorotation) = [(UIViewController *)self _isSupportedInterfaceOrientation:toInterfaceOrientation];
    }
  }

  return _allowsAutorotation;
}

- (id)rotatingHeaderViewForWindow:(id)window
{
  viewControllerForRotation = [(UIViewController *)self viewControllerForRotation];
  rotatingHeaderView = [viewControllerForRotation rotatingHeaderView];

  return rotatingHeaderView;
}

- (UIView)rotatingHeaderView
{
  searchDisplayController = [(UIViewController *)self searchDisplayController];
  searchBar = [searchDisplayController searchBar];

  return searchBar;
}

- (id)rotatingFooterViewForWindow:(id)window
{
  viewControllerForRotation = [(UIViewController *)self viewControllerForRotation];
  rotatingFooterView = [viewControllerForRotation rotatingFooterView];

  return rotatingFooterView;
}

- (void)_setInterfaceOrientationOnModalRecursively:(void *)recursively
{
  if (recursively)
  {
    [recursively setInterfaceOrientation:a2];
    view = [recursively view];
    window = [view window];
    childModalViewController = [recursively childModalViewController];
    view2 = [childModalViewController view];
    window2 = [view2 window];

    if (window == window2)
    {
      childModalViewController2 = [recursively childModalViewController];
      [(UIViewController *)childModalViewController2 _setInterfaceOrientationOnModalRecursively:a2];
    }
  }
}

- (void)setInterfaceOrientation:(int64_t)orientation
{
  if ((orientation - 1) <= 3)
  {
    v5[6] = v3;
    v5[7] = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __44__UIViewController_setInterfaceOrientation___block_invoke;
    v5[3] = &unk_1E70F9B38;
    v5[4] = self;
    v5[5] = orientation;
    [(UIViewController *)self __withSupportedInterfaceOrientation:orientation apply:v5];
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

- (void)_updateLastKnownInterfaceOrientationOnPresentionStack:(uint64_t)stack
{
  v17 = *MEMORY[0x1E69E9840];
  if (stack)
  {
    _window = [stack _window];
    _windowOwnsInterfaceOrientation = [_window _windowOwnsInterfaceOrientation];

    if (_windowOwnsInterfaceOrientation)
    {
      if (([stack _isPresentedFormSheet] & 1) == 0 && objc_msgSend(stack, "shouldAutorotate"))
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __74__UIViewController__updateLastKnownInterfaceOrientationOnPresentionStack___block_invoke;
        v15[3] = &unk_1E70F9B38;
        v15[4] = stack;
        v15[5] = a2;
        [(UIViewController *)stack __withSupportedInterfaceOrientation:a2 apply:v15];
      }
    }

    else
    {
      *(stack + 256) = a2;
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = *(stack + 104);
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
  _existingView = [(UIViewController *)self _existingView];
  v3 = _existingView;
  if (_existingView)
  {
    window = [_existingView window];
    v5 = window != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGPoint)_centerForOrientation:(int64_t)orientation
{
  _window = [(UIViewController *)self _window];
  if (!_window)
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

  v5 = _UIAppStatusBarHeightForWindow(_window);
  if ([UIApp _appAdoptsUISceneLifecycle])
  {
    [_window _referenceFrameFromSceneUsingScreenBounds:v5 != 0.0];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    if (_window)
    {
      v14 = [UIApp _sceneInterfaceOrientationFromWindow:_window];
    }

    else
    {
      v14 = 0;
    }

    v15 = v5 != 0.0;
    _screen = [(UIViewController *)self _screen];
    v17 = __UIStatusBarManagerForWindow(_window);
    [v17 defaultStatusBarHeightInOrientation:1];
    v19 = v18;

    [_screen _applicationFrameForInterfaceOrientation:v14 usingStatusbarHeight:v15 ignoreStatusBar:v19];
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

- (CGRect)_boundsForOrientation:(int64_t)orientation
{
  _window = [(UIViewController *)self _window];
  if (!_window)
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

  view = [(UIViewController *)self view];
  [view bounds];
  v8 = v7;
  v10 = v9;

  v11 = _UIAppStatusBarHeightForWindow(_window);
  if ([UIApp _appAdoptsUISceneLifecycle])
  {
    [_window _referenceFrameFromSceneUsingScreenBounds:v11 != 0.0];
    v13 = v12;
    v15 = v14;
  }

  else
  {
    if (_window)
    {
      v16 = [UIApp _sceneInterfaceOrientationFromWindow:_window];
    }

    else
    {
      v16 = 0;
    }

    v17 = v11 != 0.0;
    _screen = [(UIViewController *)self _screen];
    v19 = __UIStatusBarManagerForWindow(_window);
    [v19 defaultStatusBarHeightInOrientation:1];
    v21 = v20;

    [_screen _applicationFrameForInterfaceOrientation:v16 usingStatusbarHeight:v17 ignoreStatusBar:v21];
    v13 = v22;
    v15 = v23;
  }

  v24 = _UIAppUseModernRotationAndPresentationBehaviors();
  if ((orientation - 3) >= 2)
  {
    v25 = v15;
  }

  else
  {
    v25 = v13;
  }

  if ((orientation - 3) >= 2)
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

- (void)setInWillRotateCallback:(BOOL)callback
{
  v3 = 0x8000;
  if (!callback)
  {
    v3 = 0;
  }

  *&self->_viewControllerFlags = *&self->_viewControllerFlags & 0xFFFFFFFFFFFF7FFFLL | v3;
}

- (void)_willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration forwardToChildControllers:(BOOL)controllers skipSelf:(BOOL)self
{
  if ([(UIViewController *)self _shouldFreezeUnderlapsStatusBar])
  {
    *&self->_viewControllerFlags |= 0x8000000000uLL;
  }

  if (!self)
  {
    [(UIViewController *)self setInWillRotateCallback:1];
    [(UIViewController *)self willRotateToInterfaceOrientation:orientation duration:duration];
  }

  selfCopy = self;
  if ([(UIViewController *)selfCopy childViewControllersCount]&& ([(UIViewController *)selfCopy _existingView], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    _existingView = [(UIViewController *)selfCopy _existingView];
    isHidden = [_existingView isHidden];

    if ((isHidden & 1) == 0)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __98__UIViewController__willRotateToInterfaceOrientation_duration_forwardToChildControllers_skipSelf___block_invoke;
      v16[3] = &__block_descriptor_49_e30_v24__0__UIViewController_8_B16l;
      v16[4] = orientation;
      *&v16[5] = duration;
      controllersCopy = controllers;
      [UIViewController _enumerateVisibleChildControllers:selfCopy includePresentedChildren:1 usingBlock:v16];
    }
  }

  else
  {
  }

  if (!self)
  {
    [(UIViewController *)selfCopy setInWillRotateCallback:0];
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
  if (self)
  {
    if ([self _shouldFreezeUnderlapsStatusBar])
    {
      self[47] |= 0x8000000000uLL;
    }

    selfCopy = self;
    if ([selfCopy childViewControllersCount] && (objc_msgSend(selfCopy, "_existingView"), (v2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v3 = v2;
      _existingView = [selfCopy _existingView];
      isHidden = [_existingView isHidden];

      if ((isHidden & 1) == 0)
      {

        [UIViewController _enumerateVisibleChildControllers:selfCopy includePresentedChildren:0 usingBlock:&__block_literal_global_872];
      }
    }

    else
    {
    }
  }
}

- (void)window:(id)window willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration newSize:(CGSize)size
{
  [UIApp setIgnoresInteractionEvents:{1, orientation, duration, size.width, size.height}];

  [(UIViewController *)self _willRotateToInterfaceOrientation];
}

- (void)window:(id)window willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  windowCopy = window;
  [UIApp setIgnoresInteractionEvents:1];
  if (duration > 0.0 && ([windowCopy isUsingOnePartRotationAnimation] & 1) == 0)
  {
    v9 = [(UIViewController *)self rotatingFooterViewForWindow:windowCopy];
    superview = [v9 superview];
    savedFooterSuperview = self->_savedFooterSuperview;
    self->_savedFooterSuperview = 0;

    if (superview != windowCopy)
    {
      objc_storeStrong(&self->_savedFooterSuperview, superview);
      [v9 center];
      [windowCopy convertPoint:superview fromView:?];
      [v9 setCenter:?];
      v12 = [(UIViewController *)self rotatingContentViewForWindow:windowCopy];
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

      [windowCopy addSubview:v9];
    }

    v14 = [(UIViewController *)self rotatingHeaderViewForWindow:windowCopy];
    superview2 = [v14 superview];
    savedHeaderSuperview = self->_savedHeaderSuperview;
    self->_savedHeaderSuperview = 0;

    if (superview2 != windowCopy)
    {
      objc_storeStrong(&self->_savedHeaderSuperview, superview2);
      [v14 center];
      [windowCopy convertPoint:superview2 fromView:?];
      [v14 setCenter:?];
      v17 = [(UIViewController *)self rotatingContentViewForWindow:windowCopy];
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

      [windowCopy addSubview:v14];
    }
  }

  viewControllerForRotation = [(UIViewController *)self viewControllerForRotation];
  [viewControllerForRotation _willRotateToInterfaceOrientation:orientation duration:objc_msgSend(viewControllerForRotation forwardToChildControllers:"_forwardRotationMethods") skipSelf:{0, duration}];
}

- (BOOL)shouldWindowUseOnePartInterfaceRotationAnimation:(id)animation
{
  viewControllerForRotation = [(UIViewController *)self viewControllerForRotation];
  _shouldUseOnePartRotation = [viewControllerForRotation _shouldUseOnePartRotation];

  return _shouldUseOnePartRotation;
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

- (void)getRotationContentSettings:(id *)settings forWindow:(id)window
{
  v5 = [(UIViewController *)self _viewControllerForRotation:settings];
  [v5 _getRotationContentSettings:settings];
}

- (void)window:(id)window resizeFromOrientation:(int64_t)orientation
{
  windowCopy = window;
  v7 = 0.0;
  v8 = 0.0;
  if ([windowCopy interfaceOrientation] != 1)
  {
    if ([windowCopy interfaceOrientation] == 4)
    {
      v8 = -1.5708;
    }

    else if ([windowCopy interfaceOrientation] == 3)
    {
      v8 = 1.5708;
    }

    else if ([windowCopy interfaceOrientation] == 2)
    {
      v8 = 3.1416;
    }

    else
    {
      v8 = 0.0;
    }
  }

  if (orientation != 1)
  {
    switch(orientation)
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

  v9 = [(UIViewController *)self rotatingContentViewForWindow:windowCopy];
  autoresizingMask = [v9 autoresizingMask];
  _screen = [(UIViewController *)self _screen];
  [_screen bounds];
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
  adjustOffsetAndDimension(&v46, &v45, autoresizingMask & 7, v35, v36);
  v37 = v30;
  v38 = v32;
  v43 = v38;
  v44 = v37;
  v39 = height;
  v40 = v24;
  adjustOffsetAndDimension(&v44, &v43, (autoresizingMask >> 3) & 7, v39, v40);
  v42 = v46;
  v41 = v44;
  [UIScreen transformForScreenOriginRotation:v8];
  [v9 setCenter:{vaddq_f64(*&v47.tx, vaddq_f64(vmulq_n_f64(*&v47.a, v42), vmulq_n_f64(*&v47.c, v41)))}];
  [v9 setBounds:{0.0, 0.0, v45, v43}];
}

- (void)_willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration forwardToChildControllers:(BOOL)controllers skipSelf:(BOOL)self
{
  if (!self)
  {
    [(UIViewController *)self willAnimateRotationToInterfaceOrientation:orientation duration:duration];
  }

  selfCopy = self;
  if ([(UIViewController *)selfCopy childViewControllersCount]&& ([(UIViewController *)selfCopy _existingView], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    _existingView = [(UIViewController *)selfCopy _existingView];
    isHidden = [_existingView isHidden];

    if ((isHidden & 1) == 0)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __107__UIViewController__willAnimateRotationToInterfaceOrientation_duration_forwardToChildControllers_skipSelf___block_invoke;
      v15[3] = &__block_descriptor_49_e30_v24__0__UIViewController_8_B16l;
      v15[4] = orientation;
      *&v15[5] = duration;
      controllersCopy = controllers;
      [UIViewController _enumerateVisibleChildControllers:selfCopy includePresentedChildren:1 usingBlock:v15];
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

- (void)window:(id)window willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration newSize:(CGSize)size
{
  if (self)
  {
    self->_lastKnownInterfaceOrientation = orientation;
  }

  windowCopy = window;
  [(UIViewController *)self _updateLastKnownInterfaceOrientationOnPresentionStack:orientation];
  v9 = [(UIViewController *)self rotatingContentViewForWindow:windowCopy];
  memset(v19, 0, sizeof(v19));
  [(UIViewController *)self getRotationContentSettings:v19 forWindow:windowCopy];

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

- (void)window:(id)window willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  windowCopy = window;
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

  _lastKnownInterfaceOrientation = [(UIViewController *)self _lastKnownInterfaceOrientation];
  self->_lastKnownInterfaceOrientation = orientation;
  v19 = [(UIViewController *)self rotatingContentViewForWindow:windowCopy];
  viewControllerForRotation = [(UIViewController *)self viewControllerForRotation];
  if (![viewControllerForRotation _useSheetRotation])
  {

    goto LABEL_8;
  }

  viewControllerFlags = self->_viewControllerFlags;

  if ((viewControllerFlags & 0x80) != 0)
  {
LABEL_8:
    if (v19 && (v19[95] & 2) != 0 && ([v19 translatesAutoresizingMaskIntoConstraints] & 1) == 0)
    {
      [windowCopy _setNeedsUpdateConstraints];
    }

    else
    {
      [(UIViewController *)self _centerForOrientation:orientation];
      [v19 setCenter:?];
      [(UIViewController *)self _boundsForOrientation:orientation];
      [v19 setBounds:?];
    }

    goto LABEL_12;
  }

  [(UIViewController *)self window:windowCopy resizeFromOrientation:_lastKnownInterfaceOrientation];
LABEL_12:
  memset(v35, 0, sizeof(v35));
  [(UIViewController *)self getRotationContentSettings:v35 forWindow:windowCopy];
  v22 = +[UIView areAnimationsEnabled];
  v23 = (LOBYTE(v35[0]) != 1 || BYTE3(v35[0]) == 1) && v22;
  [UIView setAnimationsEnabled:v23];
  layer = [v19 layer];
  [layer layoutIfNeeded];

  [UIView setAnimationsEnabled:v22];
  viewControllerForRotation2 = [(UIViewController *)self viewControllerForRotation];
  [viewControllerForRotation2 _willAnimateRotationToInterfaceOrientation:orientation duration:objc_msgSend(viewControllerForRotation2 forwardToChildControllers:"_forwardRotationMethods") skipSelf:{0, duration}];
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

- (void)window:(id)window setupWithInterfaceOrientation:(int64_t)orientation
{
  windowCopy = window;
  if (!_UIAppUseModernRotationAndPresentationBehaviors())
  {
    _lastKnownInterfaceOrientation = [(UIViewController *)self _lastKnownInterfaceOrientation];
    if (self)
    {
      self->_lastKnownInterfaceOrientation = orientation;
    }

    viewControllerForRotation = [(UIViewController *)self viewControllerForRotation];
    if ([viewControllerForRotation _useSheetRotation])
    {
      viewControllerFlags = self->_viewControllerFlags;

      if ((viewControllerFlags & 0x80) == 0)
      {
        [(UIViewController *)self window:windowCopy resizeFromOrientation:_lastKnownInterfaceOrientation];
        goto LABEL_9;
      }
    }

    else
    {
    }

    v9 = [(UIViewController *)self rotatingContentViewForWindow:windowCopy];
    [(UIViewController *)self _centerForOrientation:orientation];
    [v9 setCenter:?];
    [(UIViewController *)self _boundsForOrientation:orientation];
    [v9 setBounds:?];
    layer = [v9 layer];
    [layer layoutIfNeeded];
  }

LABEL_9:
}

- (void)window:(id)window willAnimateFirstHalfOfRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  if (duration > 0.0)
  {
    v8 = [(UIViewController *)self rotatingContentViewForWindow:window];
    [v8 center];
    v10 = v9;
    v12 = v11;
    [(UIViewController *)self _centerForOrientation:orientation];
    [v8 setCenter:{v10 + (v13 - v10) * 0.5, v12 + (v14 - v12) * 0.5}];
    [v8 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    [(UIViewController *)self _boundsForOrientation:orientation];
    [v8 setBounds:{v16 + (v23 - v16) * 0.5, v18 + (v24 - v18) * 0.5, v20 + (v25 - v20) * 0.5, v22 + (v26 - v22) * 0.5}];
    [v8 layoutIfNeeded];
  }

  viewControllerForRotation = [(UIViewController *)self viewControllerForRotation];
  [viewControllerForRotation willAnimateFirstHalfOfRotationToInterfaceOrientation:orientation duration:duration];
}

- (void)window:(id)window didAnimateFirstHalfOfRotationToInterfaceOrientation:(int64_t)orientation
{
  viewControllerForRotation = [(UIViewController *)self viewControllerForRotation];
  [viewControllerForRotation didAnimateFirstHalfOfRotationToInterfaceOrientation:orientation];
}

- (void)window:(id)window willAnimateSecondHalfOfRotationFromInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  windowCopy = window;
  interfaceOrientation = [windowCopy interfaceOrientation];
  [(UIViewController *)self _setInterfaceOrientationOnModalRecursively:interfaceOrientation];
  v11 = [(UIViewController *)self rotatingContentViewForWindow:windowCopy];

  [(UIViewController *)self _centerForOrientation:interfaceOrientation];
  [v11 setCenter:?];
  [(UIViewController *)self _boundsForOrientation:interfaceOrientation];
  [v11 setBounds:?];
  [v11 layoutIfNeeded];
  viewControllerForRotation = [(UIViewController *)self viewControllerForRotation];
  [viewControllerForRotation willAnimateSecondHalfOfRotationFromInterfaceOrientation:orientation duration:duration];
}

- (void)_didRotateFromInterfaceOrientation:(int64_t)orientation forwardToChildControllers:(BOOL)controllers skipSelf:(BOOL)self
{
  *&self->_viewControllerFlags &= ~0x8000000000uLL;
  if (!self)
  {
    [(UIViewController *)self didRotateFromInterfaceOrientation:orientation];
  }

  selfCopy = self;
  if ([(UIViewController *)selfCopy childViewControllersCount]&& ([(UIViewController *)selfCopy _existingView], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    _existingView = [(UIViewController *)selfCopy _existingView];
    isHidden = [_existingView isHidden];

    if ((isHidden & 1) == 0)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __90__UIViewController__didRotateFromInterfaceOrientation_forwardToChildControllers_skipSelf___block_invoke;
      v13[3] = &__block_descriptor_41_e30_v24__0__UIViewController_8_B16l;
      v13[4] = orientation;
      controllersCopy = controllers;
      [UIViewController _enumerateVisibleChildControllers:selfCopy includePresentedChildren:1 usingBlock:v13];
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
  if (self)
  {
    self[47] &= ~0x8000000000uLL;
    selfCopy = self;
    if ([selfCopy childViewControllersCount] && (objc_msgSend(selfCopy, "_existingView"), (v1 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v2 = v1;
      _existingView = [selfCopy _existingView];
      isHidden = [_existingView isHidden];

      if ((isHidden & 1) == 0)
      {

        [UIViewController _enumerateVisibleChildControllers:selfCopy includePresentedChildren:0 usingBlock:&__block_literal_global_881];
      }
    }

    else
    {
    }
  }
}

- (void)window:(id)window didRotateFromInterfaceOrientation:(int64_t)orientation oldSize:(CGSize)size
{
  v6 = [(UIViewController *)self view:window];
  [v6 setNeedsDisplay];

  [UIApp setIgnoresInteractionEvents:0];

  [(UIViewController *)self _didRotateFromInterfaceOrientation];
}

- (void)window:(id)window didRotateFromInterfaceOrientation:(int64_t)orientation
{
  windowCopy = window;
  [self->_dropShadowView didFinishRotation];
  v7 = [(UIViewController *)self rotatingFooterViewForWindow:windowCopy];
  superview = [v7 superview];
  v9 = superview;
  savedFooterSuperview = self->_savedFooterSuperview;
  if (savedFooterSuperview)
  {
    v11 = superview == savedFooterSuperview;
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

  v13 = [(UIViewController *)self rotatingHeaderViewForWindow:windowCopy];
  superview2 = [v13 superview];
  v15 = superview2;
  savedHeaderSuperview = self->_savedHeaderSuperview;
  if (savedHeaderSuperview)
  {
    v17 = superview2 == savedHeaderSuperview;
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

  view = [(UIViewController *)self view];
  [view setNeedsDisplay];

  [UIApp setIgnoresInteractionEvents:0];
  viewControllerForRotation = [(UIViewController *)self viewControllerForRotation];
  [viewControllerForRotation _didRotateFromInterfaceOrientation:orientation forwardToChildControllers:objc_msgSend(viewControllerForRotation skipSelf:{"_forwardRotationMethods"), 0}];
}

- (void)_willBeginCounterRotationForPresentation
{
  *(&self->_viewControllerFlags + 4) |= 0x40u;
  if ([(UIViewController *)self _handlesCounterRotationForPresentation])
  {
    traitCollection = [(UIViewController *)self traitCollection];
    frozenTraitCollection = self->_frozenTraitCollection;
    self->_frozenTraitCollection = traitCollection;
  }
}

- (void)_didEndCounterRotationForPresentation
{
  *(&self->_viewControllerFlags + 4) &= ~0x40u;
  if ([(UIViewController *)self _handlesCounterRotationForPresentation])
  {
    traitCollection = [(UIViewController *)self traitCollection];
    _parentTraitEnvironment = [(UIViewController *)self _parentTraitEnvironment];
    v5 = [_parentTraitEnvironment _traitCollectionForChildEnvironment:self];
    v6 = [(UIViewController *)self _traitCollectionByApplyingOverridesFromParentViewControllerToTraitCollection:v5];

    v7 = [(UIViewController *)self _traitCollectionByApplyingLocalOverridesToTraitCollection:v6];

    if (v7 != traitCollection && ([traitCollection isEqual:v7] & 1) == 0)
    {
      v8 = objc_alloc_init(_UIViewControllerNullAnimationTransitionCoordinator);
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __57__UIViewController__didEndCounterRotationForPresentation__block_invoke;
      v14 = &unk_1E70F6B40;
      selfCopy = self;
      v16 = traitCollection;
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

- (void)_invalidatePreferences:(__int16)preferences excluding:
{
  if (self)
  {
    if ((a2 & 1) != 0 && (preferences & 1) == 0)
    {
      [self setNeedsStatusBarAppearanceUpdate];
    }

    if ((a2 & 2) != 0 && (preferences & 2) == 0)
    {
      [self _setNeedsUserInterfaceAppearanceUpdate];
    }

    if ((a2 & 4) != 0 && (preferences & 4) == 0)
    {
      [self setNeedsWhitePointAdaptivityStyleUpdate];
    }

    if ((a2 & 8) != 0 && (preferences & 8) == 0)
    {
      [self setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
    }

    if ((a2 & 0x10) != 0 && (preferences & 0x10) == 0)
    {
      [self setNeedsUpdateOfHomeIndicatorAutoHidden];
    }

    if ((a2 & 0x20) != 0 && (preferences & 0x20) == 0)
    {
      [self setNeedsUpdateOfPrefersPointerLocked];
    }

    if ((a2 & 0x40) != 0 && (preferences & 0x40) == 0)
    {
      [self _setNeedsUpdateOfMultitaskingDragExclusionRects];
    }

    if ((a2 & 0x80) != 0 && (preferences & 0x80) == 0)
    {
      [self setNeedsUpdateOfSupportedInterfaceOrientations];
    }

    if ((a2 & 0x200) != 0 && (preferences & 0x200) == 0)
    {
      _existingView = [self _existingView];
      window = [_existingView window];

      _eventRoutingScene = [window _eventRoutingScene];
      _existingPhysicalButtonInteractionArbiter = [_eventRoutingScene _existingPhysicalButtonInteractionArbiter];

      if (_existingPhysicalButtonInteractionArbiter)
      {
        [(_UIPhysicalButtonInteractionArbiter *)_existingPhysicalButtonInteractionArbiter _setNeedsResolutionOfPhysicalButtonConfigurationsInWindow:window forReason:1uLL];
      }
    }

    if ((a2 & 0x800) != 0 && (preferences & 0x800) == 0)
    {

      [self setNeedsUpdateOfPrefersInterfaceOrientationLocked];
    }
  }
}

- (void)setContentUnavailableConfiguration:(id)contentUnavailableConfiguration
{
  v4 = contentUnavailableConfiguration;
  contentUnavailableConfigurationState = [(UIViewController *)self contentUnavailableConfigurationState];
  v6 = [v4 updatedConfigurationForState:contentUnavailableConfigurationState];

  [(UIViewController *)self _applyContentUnavailableConfiguration:v6];
}

- (void)_applyContentUnavailableConfiguration:(void *)configuration
{
  v3 = a2;
  if (configuration)
  {
    _contentUnavailableWrapperView = [configuration _contentUnavailableWrapperView];
    v5 = _contentUnavailableWrapperView;
    if (v3 && !_contentUnavailableWrapperView)
    {
      v5 = [[_UIContentUnavailableWrapperView alloc] initWithViewController:configuration];
      [configuration set_contentUnavailableWrapperView:v5];
    }

    if (v5)
    {
      superview = [(UIView *)v5 superview];
      view = [configuration view];

      if (superview != view)
      {
        view2 = [configuration view];
        v9 = view2;
        if (view2)
        {
          [(UIView *)view2 _backing_addPrivateSubview:v5 positioned:-1 relativeTo:0];
        }
      }
    }

    configuration = [(_UIContentUnavailableWrapperView *)v5 configuration];
    v11 = v3;
    v12 = v11;
    if (configuration != v11)
    {
      if (v3 && configuration)
      {
        v13 = [configuration isEqual:v11];

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
        objc_initWeak(&location, configuration);
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __58__UIViewController__applyContentUnavailableConfiguration___block_invoke;
        v15[3] = &unk_1E71043D0;
        objc_copyWeak(&v18, &location);
        v16 = v5;
        v17 = configuration;
        [UIView _addCompletionWithPosition:v15];

        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }

      else
      {
        configuration2 = [(_UIContentUnavailableWrapperView *)v5 configuration];

        if (!configuration2)
        {
          [(UIView *)v5 removeFromSuperview];
          [configuration set_contentUnavailableWrapperView:0];
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

- (void)_setNeedsStatusBarAppearanceUpdateWithAnimationParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = _CurrentStatusBarAppearanceUpdateAnimationParameters;
  v6 = _CurrentStatusBarAppearanceUpdateAnimationParameters;
  _CurrentStatusBarAppearanceUpdateAnimationParameters = parametersCopy;
  v8 = parametersCopy;

  [(UIViewController *)self setNeedsStatusBarAppearanceUpdate];
  v7 = _CurrentStatusBarAppearanceUpdateAnimationParameters;
  _CurrentStatusBarAppearanceUpdateAnimationParameters = v5;
}

- (void)_setPresentedStatusBarViewController:(id)controller shouldJoinAnimationsInProgress:(BOOL)progress
{
  progressCopy = progress;
  controllerCopy = controller;
  if (self->_presentedStatusBarViewController != controllerCopy)
  {
    objc_storeStrong(&self->_presentedStatusBarViewController, controller);
    if (!progressCopy || (-[UIViewController _definiteTransitionCoordinator](self, "_definiteTransitionCoordinator"), v8 = objc_claimAutoreleasedReturnValue(), v10[4] = self, v11[0] = MEMORY[0x1E69E9820], v11[1] = 3221225472, v11[2] = __88__UIViewController__setPresentedStatusBarViewController_shouldJoinAnimationsInProgress___block_invoke, v11[3] = &unk_1E70F3B98, v11[4] = self, v10[0] = MEMORY[0x1E69E9820], v10[1] = 3221225472, v10[2] = __88__UIViewController__setPresentedStatusBarViewController_shouldJoinAnimationsInProgress___block_invoke_2, v10[3] = &unk_1E70F3B98, v9 = [v8 animateAlongsideTransition:v11 completion:v10], v8, (v9 & 1) == 0))
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

- (BOOL)sendClientToHostAction:(id)action
{
  actionCopy = action;
  _window = [(UIViewController *)self _window];
  windowScene = [_window windowScene];
  _FBSScene = [windowScene _FBSScene];

  if (_FBSScene)
  {
    v8 = [MEMORY[0x1E695DFD8] setWithObject:actionCopy];
    [_FBSScene sendActions:v8];
    v9 = 1;
  }

  else
  {
    rootViewController = [_window rootViewController];
    v8 = rootViewController;
    if (rootViewController == self)
    {
      v9 = 0;
    }

    else
    {
      v9 = [(UIViewController *)rootViewController sendClientToHostAction:actionCopy];
    }
  }

  return v9;
}

- (id)_effectivePointerLockViewController
{
  _window = [(UIViewController *)self _window];
  _windowHostingScene = [_window _windowHostingScene];
  IsAvailableForScene = _UIPointerLockStateIsAvailableForScene(_windowHostingScene);

  if (IsAvailableForScene)
  {
    _presentedStatusBarViewController = [(UIViewController *)self _presentedStatusBarViewController];
    selfCopy = [_presentedStatusBarViewController _effectivePointerLockViewController];

    if (!selfCopy)
    {
      childViewControllerForPointerLock = [(UIViewController *)self childViewControllerForPointerLock];
      selfCopy = [childViewControllerForPointerLock _effectivePointerLockViewController];

      if (!selfCopy)
      {
        selfCopy = self;
      }
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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
  _presentedStatusBarViewController = [(UIViewController *)self _presentedStatusBarViewController];
  selfCopy = [_presentedStatusBarViewController _effectiveViewControllerForMultitaskingDragExclusionRects];

  if (!selfCopy)
  {
    _childViewControllerForMultitaskingDragExclusionRects = [(UIViewController *)self _childViewControllerForMultitaskingDragExclusionRects];
    selfCopy = [_childViewControllerForMultitaskingDragExclusionRects _effectiveViewControllerForMultitaskingDragExclusionRects];

    if (!selfCopy)
    {
      selfCopy = self;
    }
  }

  return selfCopy;
}

- (void)setNeedsUpdateOfPrefersInterfaceOrientationLocked
{
  _existingView = [(UIViewController *)self _existingView];
  window = [_existingView window];

  windowScene = [window windowScene];
  _FBSScene = [windowScene _FBSScene];
  ui_orientationClientSceneComponent = [_FBSScene ui_orientationClientSceneComponent];

  [ui_orientationClientSceneComponent evaluateInterfaceOrientationLockPreferenceIfNeeded];
}

- (void)_setSearchDisplayController:(int)controller retain:
{
  v5 = a2;
  if (!self)
  {
    goto LABEL_17;
  }

  obj = v5;
  WeakRetained = objc_loadWeakRetained((self + 216));

  v5 = obj;
  v7 = *(self + 376);
  if (WeakRetained == obj)
  {
    if ((v7 & 0x1000) != 0 || !controller)
    {
      if (v7 & 0x1000) == 0 || (controller)
      {
        goto LABEL_14;
      }

      v10 = *(self + 224);
      *(self + 224) = 0;
    }

    else
    {
      v11 = objc_loadWeakRetained((self + 216));
      v10 = *(self + 224);
      *(self + 224) = v11;
    }
  }

  else
  {
    if ((v7 & 0x1000) != 0)
    {
      v8 = *(self + 224);
      *(self + 224) = 0;
    }

    objc_storeWeak((self + 216), obj);
    v5 = obj;
    if (!controller)
    {
      goto LABEL_14;
    }

    v9 = obj;
    v10 = *(self + 224);
    *(self + 224) = v9;
  }

  v5 = obj;
LABEL_14:
  v12 = 4096;
  if (!controller)
  {
    v12 = 0;
  }

  *(self + 376) = *(self + 376) & 0xFFFFFFFFFFFFEFFFLL | v12;
LABEL_17:
}

- (BOOL)searchBarHidNavBar
{
  navigationController = [(UIViewController *)self navigationController];
  v3 = navigationController;
  if (navigationController)
  {
    searchBarHidNavBar = [navigationController searchBarHidNavBar];
  }

  else
  {
    searchBarHidNavBar = 0;
  }

  return searchBarHidNavBar;
}

- (void)setSearchBarHidNavBar:(BOOL)bar
{
  barCopy = bar;
  navigationController = [(UIViewController *)self navigationController];
  if (navigationController)
  {
    v5 = navigationController;
    [navigationController setSearchBarHidNavBar:barCopy];
    navigationController = v5;
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

  presentedViewController = [(UIViewController *)self presentedViewController];

  if (!presentedViewController)
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

  presentedViewController = [(UIViewController *)self presentedViewController];

  if (!presentedViewController)
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
  keyCommands = [(UIViewController *)self keyCommands];
  v4 = keyCommands;
  interfaceBuilderKeyCommands = self->_interfaceBuilderKeyCommands;
  if (interfaceBuilderKeyCommands)
  {
    if (keyCommands)
    {
      lastObject = [(NSArray *)keyCommands lastObject];
      lastObject2 = [(NSArray *)self->_interfaceBuilderKeyCommands lastObject];

      if (lastObject != lastObject2)
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
  traitCollection = [(UIViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  return horizontalSizeClass;
}

- (int64_t)_verticalSizeClass
{
  traitCollection = [(UIViewController *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];

  return verticalSizeClass;
}

- (BOOL)_isMemberOfViewControllerHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  if (self == hierarchyCopy)
  {
    i = 1;
  }

  else
  {
    parentViewController = [(UIViewController *)self parentViewController];
    parentViewController2 = parentViewController;
    for (i = parentViewController != 0; parentViewController2 != hierarchyCopy && parentViewController2; i = parentViewController2 != 0)
    {
      v8 = parentViewController2;
      parentViewController2 = [(UIViewController *)parentViewController2 parentViewController];
    }
  }

  return i;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)__sizeClassPair
{
  traitCollection = [(UIViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];
  verticalSizeClass = [traitCollection verticalSizeClass];

  v5 = horizontalSizeClass;
  v6 = verticalSizeClass;
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
  selfCopy = self;
  v4 = v10;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      viewControllerPresentationRestoresLastFocusedItem = 1;
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

      viewControllerPresentationRestoresLastFocusedItem = v11(v4);
    }
  }

  else if (v3)
  {
    viewControllerPresentationRestoresLastFocusedItem = 0;
  }

  else
  {
    _focusBehavior = [(UIViewController *)self _focusBehavior];
    viewControllerPresentationRestoresLastFocusedItem = [_focusBehavior viewControllerPresentationRestoresLastFocusedItem];
  }

  return viewControllerPresentationRestoresLastFocusedItem;
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

- (BOOL)_canRestoreFocusAfterTransitionToItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:14635 description:{@"Invalid parameter not satisfying: %@", @"item"}];
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
  _UIFocusEnvironmentEnumerateAncestorEnvironments(itemCopy, v9);
  if (*(v15 + 24) == 1 && *(v11 + 24) == 1)
  {
    IsFocusedOrFocusable = _UIFocusItemIsFocusedOrFocusable(itemCopy);
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
      _systemDefaultFocusGroupIdentifier = objc_getAssociatedObject(self, &FocusGroupIdentifierKey);
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
    _systemDefaultFocusGroupIdentifier = [(UIViewController *)self _systemDefaultFocusGroupIdentifier];
    goto LABEL_10;
  }

  _systemDefaultFocusGroupIdentifier = 0;
LABEL_10:

  return _systemDefaultFocusGroupIdentifier;
}

- (void)setPreferredFocusedItem:(id)item
{
  objc_storeWeak(&self->_preferredFocusedItem, item);

  [(UIViewController *)self setNeedsFocusUpdate];
}

- (void)_didUpdateFocusInContext:(id)context
{
  contextCopy = context;
  view = [(UIViewController *)self view];
  nextFocusedItem = [contextCopy nextFocusedItem];
  if (_UIFocusEnvironmentIsAncestorOfEnvironment(view, nextFocusedItem))
  {
    _presentationController = [(UIViewController *)self _presentationController];

    if (!_presentationController)
    {
      [(UIViewController *)self _rememberPresentingFocusedItem:0];
    }
  }

  else
  {
  }

  v8 = [_UIFocusAnimationCoordinatorManager animationCoordinatorForContext:contextCopy];
  if (!v8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:14870 description:@"Received call to _didUpdateFocusInContext: outside of a focus update."];
  }

  [(UIViewController *)self didUpdateFocusInContext:contextCopy withAnimationCoordinator:v8];
}

- (void)_setNeedsNonDeferredFocusUpdate
{
  v4 = [[_UIFocusUpdateRequest alloc] initWithEnvironment:self];
  [(_UIFocusUpdateRequest *)v4 setAllowsDeferral:0];
  _focusSystem = [(UIViewController *)self _focusSystem];
  [_focusSystem _requestFocusUpdate:v4];
}

- (void)_setPreferredTransition:(id)transition
{
  objc_storeStrong(&self->_spiTransition, transition);
  transitionCopy = transition;
  _apiTransition = [(_UIViewControllerTransition *)self->_spiTransition _apiTransition];

  [(UIViewController *)self setPreferredTransition:_apiTransition];
}

- (void)setPreferredTransition:(id)transition
{
  transitionCopy = transition;
  preferredTransition = self->_preferredTransition;
  if (preferredTransition != transitionCopy)
  {
    v7 = transitionCopy;
    [(UIViewControllerTransition *)preferredTransition _wasAssignedToViewController:0];
    objc_storeStrong(&self->_preferredTransition, transition);
    [(UIViewControllerTransition *)self->_preferredTransition _wasAssignedToViewController:self];
    transitionCopy = v7;
  }
}

- (UIView)_showcaseView
{
  NSClassFromString(&cfstr_Qlpreviewcontr.isa);
  if (objc_opt_isKindOfClass())
  {
    childViewControllers = [(UIViewController *)self childViewControllers];
    firstObject = [childViewControllers firstObject];
    childViewControllers2 = [firstObject childViewControllers];
    firstObject2 = [childViewControllers2 firstObject];
    view = [firstObject2 view];
  }

  else
  {
    view = 0;
  }

  return view;
}

- (BOOL)_wrapsNavigationController:(id *)controller
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(UIViewController *)self _isNavigationController])
  {
    selfCopy = self;
  }

  else
  {
    childViewControllers = [(UIViewController *)self childViewControllers];
    selfCopy = [childViewControllers count];

    if (selfCopy)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      childViewControllers2 = [(UIViewController *)self childViewControllers];
      v8 = [childViewControllers2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = *v15;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(childViewControllers2);
            }

            v11 = *(*(&v14 + 1) + 8 * i);
            if ([v11 _isNavigationController])
            {
              selfCopy = v11;
              LOBYTE(v8) = 1;
              goto LABEL_17;
            }
          }

          v8 = [childViewControllers2 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      selfCopy = 0;
LABEL_17:

      if (controller)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }
  }

  LOBYTE(v8) = 0;
  if (controller)
  {
LABEL_14:
    v12 = selfCopy;
    *controller = selfCopy;
  }

LABEL_15:

  return v8;
}

- (BOOL)_wrapsSplitViewController:(id *)controller
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(UIViewController *)self _isSplitViewController])
  {
    selfCopy = self;
  }

  else
  {
    childViewControllers = [(UIViewController *)self childViewControllers];
    selfCopy = [childViewControllers count];

    if (selfCopy)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      childViewControllers2 = [(UIViewController *)self childViewControllers];
      v8 = [childViewControllers2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = *v15;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(childViewControllers2);
            }

            v11 = *(*(&v14 + 1) + 8 * i);
            if ([v11 _isSplitViewController])
            {
              selfCopy = v11;
              LOBYTE(v8) = 1;
              goto LABEL_17;
            }
          }

          v8 = [childViewControllers2 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      selfCopy = 0;
LABEL_17:

      if (controller)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }
  }

  LOBYTE(v8) = 0;
  if (controller)
  {
LABEL_14:
    v12 = selfCopy;
    *controller = selfCopy;
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

- (void)_uip_setTabElement:(id)element
{
  elementCopy = element;
  WeakRetained = objc_loadWeakRetained(&self->_tab);

  if (WeakRetained)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:15069 description:@"Cannot use UITabElement SPI if the view controller already has a tab owner."];
  }

  tabElement = self->_tabElement;
  v8 = elementCopy;
  if (tabElement != elementCopy)
  {
    v9 = tabElement;
    if (elementCopy)
    {
      _viewController = [(_UITabElement *)elementCopy _viewController];

      if (_viewController != self)
      {
        _viewController2 = [(_UITabElement *)elementCopy _viewController];
        [_viewController2 _uip_setTabElement:0];
      }

      [(_UITabElement *)elementCopy _setViewController:self];
    }

    objc_storeStrong(&self->_tabElement, element);
    _overrideTabBarItem = [(UITab *)elementCopy _overrideTabBarItem];

    if (_overrideTabBarItem)
    {
      _overrideTabBarItem2 = [(UITab *)elementCopy _overrideTabBarItem];
      [(UIViewController *)self setTabBarItem:_overrideTabBarItem2];
    }

    parentViewController = [(UIViewController *)self parentViewController];
    [parentViewController updateTabBarItemForViewController:self];

    if (v9)
    {
      [(_UITabElement *)v9 _setViewController:0];
    }

    v8 = elementCopy;
  }
}

- (id)_fallbackTabElementCreateIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v5 = objc_getAssociatedObject(self, &_UIViewControllerFallbackTabElement);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = !neededCopy;
  }

  if (!v6)
  {
    v5 = [[_UITabBarItemBridgedElement alloc] initWithViewController:self];
    objc_setAssociatedObject(self, &_UIViewControllerFallbackTabElement, v5, 1);
  }

  return v5;
}

- (void)_attachTab:(id *)tab
{
  obj = a2;
  if (tab)
  {
    WeakRetained = objc_loadWeakRetained(tab + 5);

    v4 = obj;
    if (obj && WeakRetained)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__attachTab_ object:tab file:@"UIViewController.m" lineNumber:15131 description:@"Cannot reuse the same view controller for multiple UITab instances"];

      v4 = obj;
    }

    objc_storeWeak(tab + 5, v4);
    _overrideTabBarItem = [obj _overrideTabBarItem];

    if (_overrideTabBarItem)
    {
      _overrideTabBarItem2 = [obj _overrideTabBarItem];
      [tab setTabBarItem:_overrideTabBarItem2];
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
      _uip_tabElement2 = [(UIViewController *)self tab];
    }

    else
    {
      _uip_tabElement = [(UIViewController *)self _uip_tabElement];

      if (!_uip_tabElement)
      {
        v11 = [(UIViewController *)self _fallbackTabElementCreateIfNeeded:0];
        v9 = v11;
        if (v11)
        {
          [v11 _reloadTabBarItem];
        }

        goto LABEL_8;
      }

      _uip_tabElement2 = [(UIViewController *)self _uip_tabElement];
    }

    v9 = _uip_tabElement2;
    [_uip_tabElement2 _updateLinkedTabBarItem];
LABEL_8:

    parentViewController = [(UIViewController *)self parentViewController];
    [parentViewController updateTabBarItemForViewController:self];

    v5 = v12;
  }
}

- (BOOL)_tvTabBarShouldAutohide
{
  tabBarController = [(UIViewController *)self tabBarController];
  if (!tabBarController)
  {
    return 0;
  }

  v4 = tabBarController;
  tabBarController2 = [(UIViewController *)self tabBarController];
  tabBar = [tabBarController2 tabBar];

  if (!tabBar)
  {
    return 0;
  }

  tabBarController3 = [(UIViewController *)self tabBarController];
  tabBar2 = [tabBarController3 tabBar];
  v9 = [tabBar2 _displayStyle] == 0;

  return v9;
}

- (id)_tabBarControllerEnforcingClass:(BOOL)class
{
  classCopy = class;
  v15 = *MEMORY[0x1E69E9840];
  tabBarController = [(UIViewController *)self tabBarController];
  if (!tabBarController)
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

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:15325 description:{@"-tabBarController must return an instance of a UITabBarController subclass. %@ returned %@, which is not a kind of UITabBarController.", self, tabBarController}];
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
      selfCopy = self;
      v13 = 2112;
      v14 = tabBarController;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "-tabBarController must return an instance of a UITabBarController subclass. %@ returned %@, which is not a kind of UITabBarController.", buf, 0x16u);
    }
  }

  if (classCopy)
  {

    tabBarController = 0;
  }

LABEL_7:

  return tabBarController;
}

- (id)_splitViewControllerEnforcingClass:(BOOL)class
{
  classCopy = class;
  v15 = *MEMORY[0x1E69E9840];
  splitViewController = [(UIViewController *)self splitViewController];
  if (!splitViewController)
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

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIViewController.m" lineNumber:15337 description:{@"-splitViewController must return an instance of a UISplitViewController subclass. %@ returned %@, which is not a kind of UISplitViewController.", self, splitViewController}];
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
      selfCopy = self;
      v13 = 2112;
      v14 = splitViewController;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "-splitViewController must return an instance of a UISplitViewController subclass. %@ returned %@, which is not a kind of UISplitViewController.", buf, 0x16u);
    }
  }

  if (classCopy)
  {

    splitViewController = 0;
  }

LABEL_7:

  return splitViewController;
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

- (void)_toggleEditing:(id)editing
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

- (void)_setSuppressesBottomBar:(BOOL)bar
{
  v3 = 0x10000000;
  if (!bar)
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
  view = [(UIViewController *)self view];
  subviews = [view subviews];

  v5 = [subviews countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(subviews);
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

      v7 = [subviews countByEnumeratingWithState:&v18 objects:v22 count:16];
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
    parentViewController = [(UIViewController *)self parentViewController];
    [parentViewController _updateToolbarItemsFromViewController:self animated:v4];

    v7 = v9;
  }
}

- (void)_updateToolbarItemsFromViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  parentViewController = [(UIViewController *)self parentViewController];
  [parentViewController _updateToolbarItemsFromViewController:controllerCopy animated:animatedCopy];
}

- (void)transitionFromViewController:(UIViewController *)fromViewController toViewController:(UIViewController *)toViewController duration:(NSTimeInterval)duration options:(UIViewAnimationOptions)options animations:(void *)animations completion:(void *)completion
{
  v36 = fromViewController;
  v14 = toViewController;
  v15 = completion;
  v16 = animations;
  _forwardAppearanceMethods = [(UIViewController *)self _forwardAppearanceMethods];
  v18 = 0x1E695D000;
  v19 = MEMORY[0x1E695D940];
  if (!_forwardAppearanceMethods)
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

  parentViewController = [(UIViewController *)v14 parentViewController];
  v26 = parentViewController;
  if (parentViewController == self)
  {
    parentViewController2 = [(UIViewController *)v36 parentViewController];

    if (parentViewController2 == self)
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
  view = [(UIViewController *)v36 view];
  view2 = [(UIViewController *)v14 view];
  [(UIView *)duration _transitionFromView:view toView:view2 duration:options options:v16 animations:v15 completion:?];
}

- (BOOL)_hackFor11408026_beginAppearanceTransition:(BOOL)transition animated:(BOOL)animated
{
  animatedCopy = animated;
  transitionCopy = transition;
  explicitAppearanceTransitionLevel = self->_explicitAppearanceTransitionLevel;
  self->_explicitAppearanceTransitionLevel = explicitAppearanceTransitionLevel + 1;
  if (explicitAppearanceTransitionLevel >= 1)
  {
    if ((((*(&self->_viewControllerFlags + 3) & 2) == 0) ^ transition))
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
  if (!transition)
  {
    v9 = 0;
  }

  *&self->_viewControllerFlags = viewControllerFlags & 0xFFFFFFFFF9FFFFFFLL | v9;
  [(UIViewController *)self setInAnimatedVCTransition:animated];
  if (transitionCopy)
  {
    [(UIViewController *)self __viewWillAppear:animatedCopy];
  }

  else
  {
    [(UIViewController *)self __viewWillDisappear:animatedCopy];
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
  isInAnimatedVCTransition = [(UIViewController *)self isInAnimatedVCTransition];
  self->_explicitAppearanceTransitionLevel = 0;
  *&self->_viewControllerFlags &= ~0x2000000uLL;
  [(UIViewController *)self setAfterAppearanceBlock:0];
  [(UIViewController *)self setInAnimatedVCTransition:0];
  if ((*&self->_viewControllerFlags & 3) == 3)
  {
    [(UIViewController *)self __viewWillAppear:isInAnimatedVCTransition];

    [(UIViewController *)self __viewDidAppear:isInAnimatedVCTransition];
  }

  else if ((*&self->_viewControllerFlags & 3) == 1)
  {
    [(UIViewController *)self __viewWillDisappear:isInAnimatedVCTransition];

    [(UIViewController *)self __viewDidDisappear:isInAnimatedVCTransition];
  }
}

- (void)setOverrideTraitCollection:(UITraitCollection *)collection forChildViewController:(UIViewController *)childViewController
{
  v15 = collection;
  v6 = childViewController;
  if (v6)
  {
    v7 = objc_alloc_init(_UIViewControllerNullAnimationTransitionCoordinator);
    _existingView = [(UIViewController *)self _existingView];
    [(_UIViewControllerNullAnimationTransitionCoordinator *)v7 setContainerView:_existingView];

    if ((_UIViewControllersInheritTraitsFromViewHierarchy() & 1) == 0)
    {
      v9 = objc_opt_class();
      traitCollection = [(UIViewController *)self traitCollection];
      v11 = [v9 _traitCollectionWithParentTraitCollection:traitCollection overrideTraitCollection:v15];

      [(UIViewController *)v6 _parent:self willTransitionToTraitCollection:v11 withTransitionCoordinator:v7];
    }

    overrideTraitCollectionsForChildren = self->_overrideTraitCollectionsForChildren;
    if (!overrideTraitCollectionsForChildren)
    {
      weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
      v14 = self->_overrideTraitCollectionsForChildren;
      self->_overrideTraitCollectionsForChildren = weakToStrongObjectsMapTable;

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

  _existingView = [(UIViewController *)self _existingView];
  [_existingView _setViewDelegateContentOverlayInsetsAreClean:0];
}

- (void)didMoveToParentViewController:(UIViewController *)parent
{
  v7 = parent;
  if (v7)
  {
    preferredTransition = [(UIViewController *)self preferredTransition];
    [preferredTransition _didMoveToParentViewController:v7];

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
    preferredTransition2 = [(UIViewController *)self preferredTransition];
    [preferredTransition2 _didMoveToParentViewController:0];

    if ([(UIViewController *)self _appearState]== 3)
    {
      goto LABEL_3;
    }
  }

  v5 = *&self->_viewControllerFlags & 0xFFFFFFFFF6FFFFFFLL;
LABEL_6:
  *&self->_viewControllerFlags = v5;
}

- (void)_presentingViewControllerWillChange:(id)change
{
  viewControllerFlags = self->_viewControllerFlags;
  v4 = viewControllerFlags & 0xFFFFFFFFFF3FFFFFLL | 0x400000;
  v5 = viewControllerFlags | 0xC00000;
  if (!change)
  {
    v5 = v4;
  }

  *&self->_viewControllerFlags = v5;
}

- (void)setStoryboardIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (self->_storyboardIdentifier != identifierCopy)
  {
    v6 = identifierCopy;
    objc_storeStrong(&self->_storyboardIdentifier, identifier);
    identifierCopy = v6;
  }
}

- (id)restorationClass
{
  _restorationClassName = [(UIViewController *)self _restorationClassName];
  v3 = _restorationClassName;
  if (_restorationClassName)
  {
    v4 = NSClassFromString(_restorationClassName);
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
  childModalViewController = [(UIViewController *)self childModalViewController];
  v6 = childModalViewController;
  if (childModalViewController)
  {
    _restorationIdentifierPath = [childModalViewController _restorationIdentifierPath];
    v8 = [v6 _existingPresentationControllerImmediate:1 effective:1];
    v9 = v8;
    if (_restorationIdentifierPath && v8 && [v8 _shouldSavePresentedViewControllerForStateRestoration])
    {
      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SPresentedView.isa, "[UIViewController(StateRestoration) encodeRestorableStateWithCoder:]", _restorationIdentifierPath, v6);
      }

      presentationController = [v6 presentationController];
      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SPresentationc.isa, "[UIViewController(StateRestoration) encodeRestorableStateWithCoder:]", presentationController);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([presentationController delegate], v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v11, (isKindOfClass))
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
      _existingView = [v6 _existingView];
      window = [_existingView window];

      if (window)
      {
        if (_UIStateRestorationDebugLogEnabled())
        {
          NSLog(&cfstr_SPresentedView_0.isa, "[UIViewController(StateRestoration) encodeRestorableStateWithCoder:]", v6);
        }

        [UIApp ignoreSnapshotOnNextApplicationLaunch];
      }
    }
  }

  storyboard = [(UIViewController *)self storyboard];
  if (storyboard)
  {
    v16 = [[_UIStoryboardProxy alloc] initWithStoryboard:storyboard];
    [(NSCoder *)v4 encodeObject:v16 forKey:@"UIStateRestorationViewControllerStoryboard"];
    storyboardIdentifier = [(UIViewController *)self storyboardIdentifier];
    if (storyboardIdentifier)
    {
      [(NSCoder *)v4 encodeObject:storyboardIdentifier forKey:@"UIStateRestorationViewControllerStoryboardIdentifier"];
    }
  }
}

- (void)_presentViewControllerForStateRestoration:(id)restoration animated:(BOOL)animated
{
  animatedCopy = animated;
  restorationCopy = restoration;
  WeakRetained = objc_loadWeakRetained(&self->_popoverController);
  if (WeakRetained)
  {
    _isDelayingPresentation = 1;
  }

  else
  {
    _isDelayingPresentation = [restorationCopy _isDelayingPresentation];
  }

  v9 = _isDelayingPresentation | animatedCopy;

  if (v9)
  {
    [(UIViewController *)self presentViewController:restorationCopy animated:1 completion:0];
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __89__UIViewController_StateRestoration___presentViewControllerForStateRestoration_animated___block_invoke;
    v10[3] = &unk_1E70F35B8;
    v10[4] = self;
    v11 = restorationCopy;
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

- (id)_decodeRestorableStateAndReturnContinuationWithCoder:(id)coder
{
  coderCopy = coder;
  [(UIResponder *)self decodeRestorableStateWithCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kPresentedViewControllerKey"];

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
    selfCopy = self;
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

- (void)setUserActivity:(id)activity
{
  activityCopy = activity;
  v14.receiver = self;
  v14.super_class = UIViewController;
  [(UIResponder *)&v14 setUserActivity:activityCopy];
  if (activityCopy)
  {
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __58__UIViewController_ActivityContinuation__setUserActivity___block_invoke;
    v11 = &unk_1E70F4990;
    selfCopy = self;
    v13 = activityCopy;
    v5 = _Block_copy(&v8);
    v6 = [(UIViewController *)self transitionCoordinator:v8];

    if (v6)
    {
      transitionCoordinator = [(UIViewController *)self transitionCoordinator];
      [transitionCoordinator animateAlongsideTransition:0 completion:v5];
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

- (void)_unembedContentViewSettingDelegate:(id)delegate
{
  delegateCopy = delegate;
  [(UIViewController *)self _setEmbeddingView:0];
  [(UIViewController *)self _setEmbeddedDelegate:delegateCopy];

  _embeddedView = [(UIViewController *)self _embeddedView];

  if (_embeddedView)
  {
    view = [(UIViewController *)self view];
    [view frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    _embeddedView2 = [(UIViewController *)self _embeddedView];
    [_embeddedView2 setFrame:{v7, v9, v11, v13}];

    _embeddedView3 = [(UIViewController *)self _embeddedView];
    [(UIViewController *)self setView:_embeddedView3];

    [(UIViewController *)self _setEmbeddedView:0];
  }
}

- (void)_embedContentViewInView:(id)view withContentFrame:(CGRect)frame delegate:(id)delegate
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  delegateCopy = delegate;
  [(UIViewController *)self _setEmbeddedDelegate:delegateCopy];
  [(UIViewController *)self _setEmbeddedViewFrame:x, y, width, height];
  if ([(UIViewController *)self isViewLoaded])
  {
    if (viewCopy)
    {
      _embeddedView = [(UIViewController *)self _embeddedView];
      if (_embeddedView)
      {
        [(UIViewController *)self _embeddedView];
      }

      else
      {
        [(UIViewController *)self view];
      }
      v13 = ;

      view = [(UIViewController *)self view];
      [view frame];
      [viewCopy setFrame:?];

      view2 = [(UIViewController *)self view];
      superview = [view2 superview];
      view3 = [(UIViewController *)self view];
      [superview insertSubview:viewCopy belowSubview:view3];

      [viewCopy addSubview:v13];
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      if (CGRectIsEmpty(v24))
      {
        [viewCopy frame];
        x = v18;
        y = v19;
        width = v20;
        height = v21;
      }

      [v13 setFrame:{x, y, width, height}];
      [(UIViewController *)self _setEmbeddedView:v13];
      [(UIViewController *)self setView:viewCopy];
      [(UIViewController *)self _setEmbeddingView:0];
    }

    else
    {
      [(UIViewController *)self _unembedContentViewSettingDelegate:delegateCopy];
    }
  }

  else
  {
    [(UIViewController *)self _setEmbeddedView:0];
    [(UIViewController *)self _setEmbeddingView:viewCopy];
  }
}

- (void)_setOverrideTransitioningDelegate:(id)delegate
{
  delegateCopy = delegate;
  _overrideTransitioningDelegate = [(UIViewController *)self _overrideTransitioningDelegate];

  if (_overrideTransitioningDelegate != delegateCopy)
  {
    objc_storeStrong(&self->_overrideTransitioningDelegate, delegate);
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
  _existingView = [(UIViewController *)self _existingView];
  window = [_existingView window];

  if (window)
  {
    _fromWindowOrientation = [window _fromWindowOrientation];
    if (_fromWindowOrientation == [window _toWindowOrientation])
    {
      _fromWindowOrientation = 0;
    }
  }

  else
  {
    _fromWindowOrientation = 0;
  }

  return _fromWindowOrientation;
}

- (int64_t)_rotatingToInterfaceOrientation
{
  _existingView = [(UIViewController *)self _existingView];
  window = [_existingView window];

  if (window)
  {
    _fromWindowOrientation = [window _fromWindowOrientation];
    _toWindowOrientation = [window _toWindowOrientation];
    if (_fromWindowOrientation == _toWindowOrientation)
    {
      v6 = 0;
    }

    else
    {
      v6 = _toWindowOrientation;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_window:(id)_window viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  _windowCopy = _window;
  coordinatorCopy = coordinator;
  v11 = coordinatorCopy;
  if (coordinatorCopy)
  {
    [coordinatorCopy targetTransform];
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
    _toWindowOrientation = [_windowCopy _toWindowOrientation];
    _fromWindowOrientation = [_windowCopy _fromWindowOrientation];
    v16 = [[UIClientRotationContext alloc] initWithClient:self toOrientation:_toWindowOrientation duration:_windowCopy andWindow:v13];
    view = [(UIViewController *)self view];
    [view frame];
    v19 = v18;
    v21 = v20;

    [(UIViewController *)self window:_windowCopy willRotateToInterfaceOrientation:_toWindowOrientation duration:v13 newSize:width, height];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __104__UIViewController_AdaptiveSizing_Internal___window_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
    v33[3] = &unk_1E7104448;
    v33[4] = self;
    v34 = _windowCopy;
    v36 = _toWindowOrientation;
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
    v30 = _fromWindowOrientation;
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

- (void)_showAccessibilityHUDItem:(id)item
{
  itemCopy = item;
  accessibilityHUD = self->_accessibilityHUD;
  if (accessibilityHUD)
  {
    item = [(UIAccessibilityHUDView *)accessibilityHUD item];
    v6 = [itemCopy isEqual:item];

    v7 = itemCopy;
    if (v6)
    {
      goto LABEL_10;
    }

    [(UIAccessibilityHUDView *)self->_accessibilityHUD setItem:itemCopy];
    window = +[UIAccessibilityHUDPositionManager sharedInstance];
    v9 = self->_accessibilityHUD;
    view = [(UIViewController *)self view];
    [window adjustViewPropertiesForHUD:v9 withReferenceView:view];
  }

  else
  {
    v11 = [[UIAccessibilityHUDView alloc] initWithHUDItem:itemCopy];
    v12 = self->_accessibilityHUD;
    self->_accessibilityHUD = v11;

    view2 = [(UIViewController *)self view];
    window = [view2 window];

    view3 = [(UIViewController *)self view];
    window2 = [view3 window];
    _isHostedInAnotherProcess = [window2 _isHostedInAnotherProcess];

    if ((_isHostedInAnotherProcess & 1) == 0)
    {
      v17 = +[UIAccessibilityHUDWindow sharedWindow];

      if (!v17)
      {
        view4 = [(UIViewController *)self view];
        window3 = [view4 window];
        windowScene = [window3 windowScene];
        [UIAccessibilityHUDWindow createSharedWindowWithScene:windowScene];
      }

      v21 = +[UIAccessibilityHUDWindow sharedWindow];

      window = v21;
    }

    [window setHidden:0];
    [window addSubview:self->_accessibilityHUD];
    v22 = +[UIAccessibilityHUDPositionManager sharedInstance];
    v23 = self->_accessibilityHUD;
    view5 = [(UIViewController *)self view];
    [v22 adjustViewPropertiesForHUD:v23 withReferenceView:view5];

    v25 = +[UIAccessibilityHUDPositionManager sharedInstance];
    v26 = self->_accessibilityHUD;
    view6 = [(UIViewController *)self view];
    [v25 beginManagingPositionOfHUD:v26 withReferenceView:view6];

    [(UIAccessibilityHUDView *)self->_accessibilityHUD showAnimated:1 completion:0];
  }

  v7 = itemCopy;
LABEL_10:
}

- (void)_dismissAccessibilityHUD
{
  window = [(UIView *)self->_accessibilityHUD window];
  v4 = self->_accessibilityHUD;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __62__UIViewController_AccessibilityHUD___dismissAccessibilityHUD__block_invoke;
  v11 = &unk_1E70F35B8;
  v12 = v4;
  v13 = window;
  v5 = window;
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

- (id)_orientationDebugDescriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x1E698E680];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  [v6 setActiveMultilinePrefix:prefixCopy];

  activeMultilinePrefix = [v6 activeMultilinePrefix];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __97__UIViewController_OrientationDebugging___orientationDebugDescriptionBuilderWithMultilinePrefix___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v8 = v6;
  v12 = v8;
  selfCopy = self;
  [v8 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v11];

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

- (id)_orientationDebugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UIViewController *)self _orientationDebugDescriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (void)beginRequestWithExtensionContext:(id)context
{
  _UUID = [context _UUID];
  [(UIViewController *)self _setExtensionContextUUID:_UUID];
}

- (id)_safeWindowForAutorotationBelowWindow:(id)window
{
  v5 = [(UIViewController *)self _windowForAutorotationBelowWindow:window];
  v6 = [v5 __autorotationSanityCheckObjectFromSource:self selector:a2];

  return v6;
}

- (id)_safeViewControllerForRotationWithDismissCheck:(BOOL)check
{
  v5 = [(UIViewController *)self _viewControllerForRotationWithDismissCheck:check];
  v6 = [v5 __autorotationSanityCheckObjectFromSource:self selector:a2];

  return v6;
}

- (id)_safePrimaryViewControllerForAutorotationBelowWindow:(id)window
{
  v5 = [(UIViewController *)self _primaryViewControllerForAutorotationBelowWindow:window];
  v6 = [v5 __autorotationSanityCheckObjectFromSource:self selector:a2];

  return v6;
}

- (id)_safeViewControllerForSupportedInterfaceOrientationsWithDismissCheck:(BOOL)check
{
  v5 = [(UIViewController *)self _viewControllerForSupportedInterfaceOrientationsWithDismissCheck:check];
  v6 = [v5 __autorotationSanityCheckObjectFromSource:self selector:a2];

  return v6;
}

- (id)_timelinesForDateInterval:(id)interval
{
  v8[1] = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(UIViewController *)self performSelector:sel_puic_timelinesForDateInterval_ withObject:intervalCopy];
  }

  else
  {
    v6 = [MEMORY[0x1E698E508] emptyTimelineWithIdentifier:@"UIAlwaysOnFallbackTimelineIdentifier"];
    v8[0] = v6;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  return v5;
}

- (void)_timelinesForDateInterval:(id)interval completion:(id)completion
{
  completionCopy = completion;
  v8 = [(UIViewController *)self _timelinesForDateInterval:interval];
  (*(completion + 2))(completionCopy, v8);
}

- (void)_updateWithFrameSpecifier:(id)specifier completion:(id)completion
{
  completionCopy = completion;
  [(UIViewController *)self _updateWithFrameSpecifier:specifier];
  completionCopy[2]();
}

- (void)_updateWithFrameSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (objc_opt_respondsToSelector())
  {
    [(UIViewController *)self performSelector:sel_puic_updateWithFrameSpecifier_ withObject:specifierCopy];
  }
}

- (void)_willEnterAlwaysOn
{
  _childViewControllersForAlwaysOnTimelines = [(UIViewController *)self _childViewControllersForAlwaysOnTimelines];
  [_childViewControllersForAlwaysOnTimelines enumerateObjectsUsingBlock:&__block_literal_global_315];
}

- (void)_didEnterAlwaysOn
{
  _childViewControllersForAlwaysOnTimelines = [(UIViewController *)self _childViewControllersForAlwaysOnTimelines];
  [_childViewControllersForAlwaysOnTimelines enumerateObjectsUsingBlock:&__block_literal_global_45_1];
}

- (void)_didExitAlwaysOn
{
  _childViewControllersForAlwaysOnTimelines = [(UIViewController *)self _childViewControllersForAlwaysOnTimelines];
  [_childViewControllersForAlwaysOnTimelines enumerateObjectsUsingBlock:&__block_literal_global_49_3];
}

- (id)_nextViewControllerForUnwindSegueSearch
{
  _sourceViewControllerIfPresentedViaPopoverSegue = [(UIViewController *)self _sourceViewControllerIfPresentedViaPopoverSegue];
  v4 = _sourceViewControllerIfPresentedViaPopoverSegue;
  if (_sourceViewControllerIfPresentedViaPopoverSegue)
  {
    v5 = _sourceViewControllerIfPresentedViaPopoverSegue;
  }

  else
  {
    _modalSourceViewController = [(UIViewController *)self _modalSourceViewController];
    v7 = _modalSourceViewController;
    if (_modalSourceViewController)
    {
      v5 = _modalSourceViewController;
    }

    else
    {
      parentModalViewController = [(UIViewController *)self parentModalViewController];
      v9 = parentModalViewController;
      if (parentModalViewController)
      {
        parentViewController = parentModalViewController;
      }

      else
      {
        parentViewController = [(UIViewController *)self parentViewController];
      }

      v5 = parentViewController;
    }
  }

  return v5;
}

- (id)_hostedWindowScene
{
  view = [(UIViewController *)self view];
  _window = [view _window];
  _windowHostingScene = [_window _windowHostingScene];

  if (_windowHostingScene && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = _windowHostingScene;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_supportedInterfaceOrientationsDidChange
{
  _rootAncestorViewController = [(UIViewController *)self _rootAncestorViewController];
  [_rootAncestorViewController setNeedsUpdateOfSupportedInterfaceOrientations];
}

- (id)_remoteViewControllerProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _remoteViewControllerProxy = [(UIViewController *)self _remoteViewControllerProxy];
  v6 = [_remoteViewControllerProxy remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (int)_hostProcessIdentifier
{
  v2 = objc_getAssociatedObject(self, &__hostProcessIdentifierKey);
  intValue = [v2 intValue];

  return intValue;
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
  invoke = [v2 invoke];

  return invoke;
}

- (void)_setHostProcessIdentifier:(int)identifier
{
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*&identifier];
  objc_setAssociatedObject(self, &__hostProcessIdentifierKey, v4, 0x301);
}

- (void)_setHostAuditToken:(id *)token
{
  v4 = [MEMORY[0x1E696B098] valueWithBytes:token objCType:"{?=[8I]}"];
  objc_setAssociatedObject(self, &__hostAuditTokenKey, v4, 0x301);
}

+ (id)XPCInterface
{
  if (qword_1ED4A29A8 != -1)
  {
    dispatch_once(&qword_1ED4A29A8, &__block_literal_global_26_7);
  }

  [qword_1ED4A29A0 lock];
  v3 = objc_getAssociatedObject(self, &_MergedGlobals_1369);
  if (!v3)
  {
    _exportedInterface = [self _exportedInterface];
    _remoteViewControllerInterface = [self _remoteViewControllerInterface];
    v3 = [_UIViewServiceViewControllerDeputyXPCInterface interfaceWithExportedInterface:_exportedInterface remoteViewControllerInterface:_remoteViewControllerInterface];

    objc_setAssociatedObject(self, &_MergedGlobals_1369, v3, 0x301);
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