@interface UINavigationController
+ (BOOL)doesOverridePreferredInterfaceOrientationForPresentation;
- ($1AB5FA073B851C12C2339EC22442E995)_heightRangeOfTopViews;
- ($1AB5FA073B851C12C2339EC22442E995)_intrinsicNavigationBarHeightRangeForNavItem:(id)item;
- ($512FAC6031DC579ED3B9B436D64463DA)_calculateTopLayoutInfoForViewController:(SEL)controller;
- (BOOL)_allowsAutorotation;
- (BOOL)_animationParametersForHidingNavigationBar:(BOOL)bar lastOperation:(int64_t)operation edge:(unint64_t *)edge duration:(double *)duration;
- (BOOL)_canHostRefreshControlOwnedByScrollView:(id)view;
- (BOOL)_canPerformBackKeyCommandToPopViewController;
- (BOOL)_canPerformCustomizeBarActionWithSender:(id)sender;
- (BOOL)_canPerformRename:(id)rename;
- (BOOL)_canRestoreFocusAfterTransitionToRecalledItem:(id)item inViewController:(id)controller;
- (BOOL)_canUseBackKeyCommandToTriggerSidebarKeyCommandWithSender:(id)sender;
- (BOOL)_doesTopViewControllerSupportInterfaceOrientation:(int64_t)orientation;
- (BOOL)_gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)_gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)_gestureRecognizerShouldBegin:(id)begin;
- (BOOL)_hasNestedNavigationController;
- (BOOL)_hasPotentiallyChromelessBottomBar;
- (BOOL)_hasPreferredInterfaceOrientationForPresentation;
- (BOOL)_hasTranslucentNavigationBarIncludingViewController:(id)controller;
- (BOOL)_ignoreFinishingModalTransitionForFiles;
- (BOOL)_isAppearingOrAppearedCheck;
- (BOOL)_isCurrentTransitionPreemptable;
- (BOOL)_isNavigationBarEffectivelyVisible;
- (BOOL)_isNavigationBarVisible;
- (BOOL)_isPerformingLayoutToLayoutTransition;
- (BOOL)_isPopping;
- (BOOL)_isPushing;
- (BOOL)_isPushingOrPopping;
- (BOOL)_isPushingOrPoppingUsingLayoutToLayoutNavigationTransition;
- (BOOL)_isSupportedInterfaceOrientation:(int64_t)orientation;
- (BOOL)_isTransitioningOrPaletteIsTransitioning;
- (BOOL)_isTransitioningSearchController;
- (BOOL)_isViewControllerFullWidth;
- (BOOL)_navbarIsAppearingInteractively;
- (BOOL)_navigationBar:(id)bar getContentOffsetOfObservedScrollViewIfApplicable:(CGPoint *)applicable velocity:(CGPoint *)velocity;
- (BOOL)_navigationBarShouldShowSidebarToggleInNSToolbar:(id)toolbar;
- (BOOL)_navigationBarShouldUpdateProgress;
- (BOOL)_navigationBarTopItemIsNestedNavigationController:(id)controller;
- (BOOL)_navigationItemShouldDeferSearchPresentationOrDismissalForScrollViewAnimation:(id)animation;
- (BOOL)_otherExpectedNavigationControllerObservesScrollView:(id)view;
- (BOOL)_sanityCheckPushViewController:(id)controller transition:(int)transition forceImmediate:(BOOL)immediate;
- (BOOL)_searchHidNavigationBar;
- (BOOL)_shouldBottomBarBeHidden;
- (BOOL)_shouldChildViewControllerUseFullScreenLayout:(id)layout;
- (BOOL)_shouldCrossFadeBottomBars;
- (BOOL)_shouldCrossFadeNavigationBar;
- (BOOL)_shouldCrossFadeNavigationBarVisibility;
- (BOOL)_shouldDisplaySearchBarInlineForEffectiveSearchControllerGivenTopNavigationItem:(id)item traitCollection:(id)collection;
- (BOOL)_shouldHideSearchBarWhenScrollingForNavigationItem:(id)item;
- (BOOL)_shouldInteractivePopGestureBeEnabled;
- (BOOL)_shouldNavigationBarInsetViewController:(id)controller orOverlayContent:(BOOL *)content;
- (BOOL)_shouldSkipHostedRefreshControlUpdateSchedulingDeferredUpdateIfNecessary;
- (BOOL)_shouldTabBarController:(id)controller insetViewController:(id)viewController orOverlayContent:(BOOL *)content;
- (BOOL)_shouldToolBar:(id)bar insetViewController:(id)controller orOverlayContent:(BOOL *)content;
- (BOOL)_shouldUseBuiltinInteractionController;
- (BOOL)_shouldUseOnePartRotation;
- (BOOL)_toolbarIsAnimatingInteractively;
- (BOOL)_toolbarShouldAnimateItemsUpdate:(id)update;
- (BOOL)_transitionConflictsWithNavigationTransitions:(id)transitions;
- (BOOL)_tryRequestPopToItem:(id)item;
- (BOOL)_useCrossFadeForGestureHiding;
- (BOOL)_viewControllerIgnoresClippedGlyphPathFrame;
- (BOOL)_viewControllerRequiresVisibleToolbarForImplicitInlineSearch:(id)search;
- (BOOL)_viewControllerUnderlapsStatusBar;
- (BOOL)_viewControllerWasSelected;
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)editing;
- (BOOL)isModalInPopover;
- (BOOL)isNavigationBarHidden;
- (CGRect)_boundsForPalette:(id)palette size:(CGSize)size;
- (CGRect)_frameForPalette:(id)palette;
- (CGRect)_frameForViewController:(id)controller;
- (CGRect)_frameForWrapperViewForViewController:(id)controller;
- (CGRect)_incomingNavigationBarFrame;
- (CGRect)transitionConductor:(id)conductor frameForViewController:(id)controller;
- (CGRect)transitionConductor:(id)conductor frameForWrapperViewForViewController:(id)controller;
- (CGSize)_adjustedContentSizeForPopover:(CGSize)popover;
- (CGSize)_navigationBarSizeForViewController:(id)controller proposedHeight:(double)height allowRubberBandStretch:(BOOL)stretch;
- (CGSize)_preferredContentSizeForcingLoad:(BOOL)load;
- (CGSize)contentSizeForViewInPopover;
- (CGSize)preferredContentSize;
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size;
- (NSArray)popToRootViewControllerAnimated:(BOOL)animated;
- (NSArray)popToViewController:(UIViewController *)viewController animated:(BOOL)animated;
- (NSDirectionalEdgeInsets)_layoutMarginsforNavigationBar:(id)bar;
- (NSMapTable)_rememberedFocusedItemsByViewController;
- (UIEdgeInsets)_avoidanceInsets;
- (UIEdgeInsets)_calculateEdgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute;
- (UIEdgeInsets)_collapsableContentPaddingForObservedScrollView:(id)view;
- (UIEdgeInsets)_edgeInsetsDeferringToCommandeeringTableHeaderViewStyleSearchControllerWithPresentingViewController:(id)controller;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute;
- (UIEdgeInsets)_expectedContentInsetDeltaForViewController:(id)controller;
- (UIEdgeInsets)_revealableContentPaddingForObservedScrollView:(id)view includeContentWithCollapsedAffinity:(BOOL)affinity;
- (UIGestureRecognizer)interactiveContentPopGestureRecognizer;
- (UIGestureRecognizer)interactivePopGestureRecognizer;
- (UINavigationController)initWithCoder:(NSCoder *)aDecoder;
- (UINavigationController)initWithNavigationBarClass:(Class)navigationBarClass toolbarClass:(Class)toolbarClass;
- (UINavigationController)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil;
- (UINavigationController)initWithRootViewController:(UIViewController *)rootViewController;
- (UIPanGestureRecognizer)barHideOnSwipeGestureRecognizer;
- (UITabGroup)_managedTabGroup;
- (UITapGestureRecognizer)barHideOnTapGestureRecognizer;
- (UIToolbar)toolbar;
- (UIViewController)bottomViewController;
- (UIViewController)popViewControllerAnimated:(BOOL)animated;
- (UIViewController)previousViewController;
- (UIViewController)topViewController;
- (UIViewController)visibleViewController;
- (double)_computeTopAvoidanceAreaForBar:(unint64_t)bar edge:(int)edge hidden:;
- (double)_computeTopBarCenter:(int)center hidden:(unint64_t)hidden edge:(double)edge center:offset:minimumTopOffset:;
- (double)_contentMarginForView:(id)view;
- (double)_navigationBar:(id)bar preferredHeightForTransitionToHeightRange:(id)range;
- (double)_preferredHeightForHidingNavigationBarForViewController:(id)controller topItem:(id)item;
- (double)_scrollOffsetRetargettedToDetentOffsetIfNecessary:(double)necessary unclampedOriginalTargetOffset:(double)offset scrollView:(id)view;
- (double)_scrollViewBottomContentInsetForViewController:(id)controller;
- (double)_scrollViewTopContentInsetForViewController:(id)controller;
- (double)_statusBarHeightAdjustmentForCurrentOrientation;
- (double)_statusBarHeightForCurrentInterfaceOrientation;
- (double)_topBarHeight;
- (double)_topPalettePreferredLayoutHeightForVisibilityStateIfDisplayedForViewController:(id)controller;
- (double)_widthForLayout;
- (double)durationForTransition:(int)transition;
- (id)_additionalViewControllersToCheckForUserActivity;
- (id)_backdropBarGroupName;
- (id)_childViewControllersEligibleForOverridingPreferredFocusEnvironments;
- (id)_childViewControllersToSendViewWillTransitionToSize;
- (id)_createBuiltInTransitionControllerForOperation:(int64_t)operation;
- (id)_customInteractionController:(id)controller;
- (id)_customTransitionController:(BOOL)controller;
- (id)_deepestActionResponder;
- (id)_effectiveActivityItemsConfiguration;
- (id)_effectiveDelegateForNavigationItem:(id)item;
- (id)_effectiveInteractionActivityTrackingBaseName;
- (id)_effectiveSearchControllerForScopeBarGivenTopNavigationItem:(id)item;
- (id)_effectiveSearchControllerForSearchBarGivenTopNavigationItem:(id)item;
- (id)_existingActiveVisibleToolbar;
- (id)_existingToolbarWithItems;
- (id)_findViewControllerToPopTo;
- (id)_findViewControllerToPopToForNavigationItem:(id)item;
- (id)_hostingNavigationBar;
- (id)_interfaceOrientationWindowForBar:(id)bar matchingBar:(id)matchingBar;
- (id)_keyboardAnimationStyle;
- (id)_lastNavigationItems;
- (id)_managedSearchPaletteForEdge:(unint64_t)edge size:(CGSize)size;
- (id)_moreListTitle;
- (id)_navigationBarAdditionalActionsForBackButtonMenu:(id)menu;
- (id)_navigationBarForNestedNavigationController;
- (id)_navigationBarHiddenByDefault:(BOOL)default;
- (id)_navigationBarToUseForMarginsInNavigationBar:(id)bar;
- (id)_navigationItemsCallingPublicAccessor:(BOOL)accessor;
- (id)_nestedTopNavigationController;
- (id)_nestedTopViewController;
- (id)_nthChildViewControllerFromTop:(unint64_t)top;
- (id)_outermostNavigationController;
- (id)_overridingPreferredFocusEnvironment;
- (id)_paletteForEdge:(unint64_t)edge size:(CGSize)size paletteClass:(Class)class;
- (id)_pinningBarForPalette:(id)palette;
- (id)_popViewControllerWithTransition:(int)transition allowPoppingLast:(BOOL)last;
- (id)_preferredStatusBarStyleAnimationParameters;
- (id)_recallRememberedFocusedItemForViewController:(id)controller;
- (id)_scrollDetentOffsetsForScrollView:(id)view;
- (id)_separateViewControllersAfterAndIncludingViewController:(id)controller forSplitViewController:(id)viewController;
- (id)_showcaseView;
- (id)_startInteractiveBarTransition:(id)transition;
- (id)_topViewControllerObservableScrollViewForEdge:(unint64_t)edge;
- (id)_traitOverridesForChildViewController:(id)controller;
- (id)_transitionCoordinator;
- (id)_uip_tabElement;
- (id)_viewControllerForDisappearCallback;
- (id)_viewControllerForNavigationItem:(id)item;
- (id)_viewControllerForObservableScrollView;
- (id)_viewForContentInPopover;
- (id)_viewsWithDisabledInteractionGivenTransitionContext:(id)context;
- (id)_window;
- (id)allowedChildViewControllersForUnwindingFromSource:(id)source;
- (id)childViewControllerForStatusBarHidden;
- (id)childViewControllerForStatusBarStyle;
- (id)defaultPNGName;
- (id)delegate;
- (id)existingPaletteForEdge:(unint64_t)edge;
- (id)moreListImage;
- (id)moreListSelectedImage;
- (id)moreListTableCell;
- (id)navigationItem;
- (id)paletteForEdge:(unint64_t)edge size:(CGSize)size;
- (id)popToRootViewControllerWithTransition:(int)transition;
- (id)popToViewController:(id)controller transition:(int)transition;
- (id)popToViewControllerWithSnapbackIdentifier:(id)identifier animated:(BOOL)animated;
- (id)popViewControllerWithAnimationTransition:(int64_t)transition duration:(double)duration curve:(int64_t)curve;
- (id)preferredFocusEnvironments;
- (id)preferredFocusedView;
- (id)rotatingFooterView;
- (id)rotatingHeaderView;
- (id)rotatingSnapshotViewForWindow:(id)window;
- (id)segueForUnwindingToViewController:(id)controller fromViewController:(id)viewController identifier:(id)identifier;
- (id)separateSecondaryViewControllerForSplitViewController:(id)controller;
- (id)tab;
- (id)tabBarItem;
- (id)transitionConductor:(id)conductor retargetedToViewControllerForTransitionFromViewController:(id)controller toViewController:(id)viewController transition:(int)transition;
- (id)valueForUndefinedKey:(id)key;
- (id)viewControllerForUnwindSegueAction:(SEL)action fromViewController:(id)controller withSender:(id)sender;
- (int)_effectiveTransitionForTransition:(int)transition;
- (int)_transitionForOldViewControllers:(id)controllers newViewControllers:(id)viewControllers;
- (int64_t)_navigationBarTransitionVariant;
- (int64_t)_positionForBar:(id)bar;
- (int64_t)_subclassPreferredFocusedViewPrioritizationType;
- (int64_t)_topLayoutTypeForViewController:(id)controller;
- (int64_t)modalTransitionStyle;
- (int64_t)navigationBarNSToolbarSection:(id)section;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (int64_t)preferredStatusBarStyle;
- (int64_t)preferredTrafficLightStyle;
- (uint64_t)_setRequiresToolbarHiddenForFindAndReplace:(uint64_t)result;
- (unint64_t)_keyboardScreenEdgeForTransition:(int)transition;
- (unint64_t)preferredScreenEdgesDeferringSystemGestures;
- (unint64_t)supportedInterfaceOrientations;
- (void)__viewWillLayoutSubviews;
- (void)_applyViewControllers:(id)controllers transition:(int)transition animated:(BOOL)animated operation:(int64_t)operation rescheduleBlock:(id)block;
- (void)_calculateTopViewFramesForExpandedLayoutWithViewController:(id)controller contentScrollView:(id)view gettingNavBarFrame:(CGRect *)frame topPaletteFrame:(CGRect *)paletteFrame;
- (void)_calculateTopViewFramesForLayoutWithViewController:(id)controller contentScrollView:(id)view navBarFrame:(CGRect *)frame topPaletteFrame:(CGRect *)paletteFrame topLayoutType:(int64_t)type;
- (void)_calculateTopViewFramesFromLayoutHeightsWithViewController:(id)controller contentScrollView:(id)view preservingContentInset:(BOOL)inset respectFullExtension:(BOOL)extension gettingNavBarFrame:(CGRect *)frame topPaletteFrame:(CGRect *)paletteFrame;
- (void)_cancelInteractiveTransition:(double)transition transitionContext:(id)context;
- (void)_clearLastOperation;
- (void)_collapseViewController:(id)controller forSplitViewController:(id)viewController;
- (void)_commonInitWithBuiltinTransitionGap:(double)gap;
- (void)_computeAndApplyScrollContentInsetDeltaForViewController:(id)controller;
- (void)_configureBarSwipeGesture;
- (void)_configureBarTapGesture;
- (void)_configureBarsAutomaticActions;
- (void)_configureKeyboardBarHiding;
- (void)_configureToolbar;
- (void)_detachPalette:(id)palette;
- (void)_detachTopPaletteIfShowingSearchBarForTopmostViewControllerInNavigationController:(id)controller;
- (void)_didCancelTransitionFromViewController:(id)controller toViewController:(id)viewController wrapperView:(id)view wasCustom:(BOOL)custom;
- (void)_didEndTransitionFromView:(id)view toView:(id)toView wasCustom:(BOOL)custom;
- (void)_didResignContentViewControllerOfPopover:(id)popover;
- (void)_didUpdateFocusInContext:(id)context;
- (void)_eagerlyUpdateSafeAreaInsets;
- (void)_ensureToViewControllersViewIsLoaded:(id)loaded;
- (void)_executeNavigationHandler:(id)handler deferred:(BOOL)deferred;
- (void)_executeSplitViewControllerActions:(id)actions;
- (void)_finishAnimationTracking;
- (void)_finishInteractiveTransition:(double)transition transitionContext:(id)context;
- (void)_forgetFocusedItemForViewController:(id)controller;
- (void)_forwardPaletteToViewControllerIfNeeded:(id)needed;
- (void)_gestureRecognizedInteractiveHide:(id)hide;
- (void)_gestureRecognizedToggleVisibility:(id)visibility;
- (void)_getRotationContentSettings:(id *)settings;
- (void)_handleSubtreeDidGainScrollView:(id)view;
- (void)_hideForKeyboardAppearance;
- (void)_hideOrShowBottomBarIfNeededWithTransition:(int)transition;
- (void)_hideShowNavigationBarDidStop:(id)stop finished:(id)finished context:(id)context;
- (void)_hideShowToolbarDidStop:(id)stop finished:(id)finished context:(id)context;
- (void)_immediatelyApplyViewControllers:(id)controllers transition:(int)transition animated:(BOOL)animated operation:(int64_t)operation;
- (void)_immediatelyFinishNavigationBarTransition;
- (void)_initializeNavigationDeferredTransitionContextIfNecessary;
- (void)_installPaletteIntoViewHierarchy:(id)hierarchy;
- (void)_layoutContainerViewDidMoveToWindow:(id)window;
- (void)_layoutContainerViewSemanticContentAttributeChanged:(id)changed;
- (void)_layoutTopViewControllerLookForNested:(BOOL)nested;
- (void)_layoutViewController:(id)controller;
- (void)_makeBarHideGestureIfNecessary;
- (void)_makeBarSwipeGestureIfNecessary;
- (void)_marginInfoForChild:(id)child leftMargin:(double *)margin rightMargin:(double *)rightMargin;
- (void)_navigationBar:(id)bar itemBackButtonUpdated:(id)updated;
- (void)_navigationBar:(id)bar itemEnabledAutoScrollTransition:(id)transition;
- (void)_navigationBar:(id)bar topItemUpdatedContentLayout:(id)layout;
- (void)_navigationBar:(id)bar topItemUpdatedLargeTitleDisplayMode:(id)mode;
- (void)_navigationBar:(id)bar topItemUpdatedSearchBarPlacementAllowsExternalIntegration:(id)integration;
- (void)_navigationBar:(id)bar topItemUpdatedSearchBarPlacementAllowsToolbarIntegration:(id)integration;
- (void)_navigationBar:(id)bar topItemUpdatedSearchController:(id)controller;
- (void)_navigationBarChangedSize:(id)size;
- (void)_navigationBarDidChangeStyle:(id)style;
- (void)_navigationBarDidEndAnimation:(id)animation;
- (void)_navigationBarDidUpdateVisibility:(id)visibility;
- (void)_navigationBarPrepareToAnimateTransition:(id)transition;
- (void)_navigationBarWillBeginCoordinatedTransitionAnimations:(id)animations;
- (void)_navigationBarWillChangeHeightForManualShowOrHideOfSearchScopeBar:(id)bar;
- (void)_navigationBarWillRunAutomaticDeferredShowsScopeBar:(id)bar;
- (void)_navigationItemDidUpdateSearchController:(id)controller oldSearchController:(id)searchController;
- (void)_navigationItemDidUpdateToolbarAvoidsKeyboard:(id)keyboard;
- (void)_noteNestedNavigationControllerDidReturnToNormal:(id)normal;
- (void)_notifyTransitionBegan:(id)began;
- (void)_observableScrollViewDidChangeFrom:(id)from forViewController:(id)controller edges:(unint64_t)edges;
- (void)_observeScrollView:(id)view didBeginTransitionToDeferredContentOffset:(CGPoint)offset;
- (void)_observeScrollView:(id)view willEndDraggingWithVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset unclampedOriginalTarget:(CGPoint)target;
- (void)_observeScrollViewAlignedContentMarginDidChange:(id)change;
- (void)_observeScrollViewDidEndDecelerating:(id)decelerating;
- (void)_observeScrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)_observeScrollViewDidScroll:(id)scroll topLayoutType:(int64_t)type;
- (void)_observeScrollViewGeometryAffectingContentBottomDidChange:(id)change;
- (void)_observeScrollViewHasClearedContentOffsetAnimation:(id)animation;
- (void)_observeScrollViewWillBeginDragging:(id)dragging;
- (void)_performBackKeyCommand:(id)command;
- (void)_performCoordinatedUpdateTopFramesTransitionAnimation;
- (void)_performSkippedHostedRefreshControlUpdateSchedulingDeferredUpdateIfNecessary;
- (void)_performTopViewGeometryUpdates:(id)updates;
- (void)_performWhileIgnoringUpdateTopViewFramesToMatchScrollOffset:(id)offset;
- (void)_popNavigationBar:(id)bar item:(id)item;
- (void)_positionNavigationBar:(id)bar hidden:(BOOL)hidden edge:(unint64_t)edge center:(CGPoint)center offset:(double)offset;
- (void)_positionNavigationBarHidden:(BOOL)hidden edge:(unint64_t)edge;
- (void)_positionNavigationBarHidden:(BOOL)hidden edge:(unint64_t)edge initialOffset:(double)offset;
- (void)_positionPaletteHidden:(BOOL)hidden edge:(unint64_t)edge initialOffset:(double)offset;
- (void)_positionToolbarHidden:(BOOL)hidden edge:(unint64_t)edge crossFade:(BOOL)fade;
- (void)_positionTransitioningPalette:(id)palette outside:(BOOL)outside edge:(unint64_t)edge preservingYPosition:(BOOL)position;
- (void)_prepareCollectionViewController:(id)controller forSharingWithCollectionViewController:(id)viewController;
- (void)_prepareCollectionViewControllerForSharing:(id)sharing;
- (void)_prepareCollectionViewControllers:(id)controllers forSharingInRange:(id)range;
- (void)_prepareForNestedDisplayWithNavigationController:(id)controller;
- (void)_prepareForNormalDisplayWithNavigationController:(id)controller;
- (void)_presentationTransitionUnwrapViewController:(id)controller;
- (void)_presentationTransitionWrapViewController:(id)controller forTransitionContext:(id)context;
- (void)_propagateContentAdjustmentsForControllersWithSharedViews;
- (void)_releaseContainerViews;
- (void)_reloadCachedInteractiveScrollMeasurements;
- (void)_rememberFocusedItem:(id)item forViewController:(id)controller;
- (void)_rememberPresentingFocusedItem:(id)item;
- (void)_repositionPaletteWithNavigationBarHidden:(BOOL)hidden duration:(double)duration shouldUpdateNavigationItems:(BOOL)items;
- (void)_requestNavigationBarUpdateSearchBarForPlacementChangeIfApplicable;
- (void)_resetScrollViewObservingForViewController:(id)controller;
- (void)_safeAreaInsetsDidChangeForView;
- (void)_scrollToRevealNavigationBarPart:(int64_t)part animated:(BOOL)animated;
- (void)_scrollViewManagerDidFinishScrolling:(id)scrolling;
- (void)_sendNavigationBarToBack;
- (void)_setAllowNestedNavigationControllers:(BOOL)controllers;
- (void)_setAllowsFreezeLayoutForOrientationChangeOnDismissal:(BOOL)dismissal;
- (void)_setAllowsInteractivePopWhenNavigationBarHidden:(BOOL)hidden;
- (void)_setBarsHidden:(BOOL)hidden;
- (void)_setBarsHidden:(BOOL)hidden allowAnimation:(BOOL)animation;
- (void)_setBuiltinTransitionGap:(double)gap;
- (void)_setBuiltinTransitionStyle:(int64_t)style;
- (void)_setCachedInteractionController:(id)controller;
- (void)_setCachedTransitionController:(id)controller;
- (void)_setClipUnderlapWhileTransitioning:(BOOL)transitioning;
- (void)_setClipsToBounds:(BOOL)bounds;
- (void)_setContentInset:(UIEdgeInsets)inset;
- (void)_setContentOverlayInsets:(UIEdgeInsets)insets;
- (void)_setCreatedBySplitViewController:(BOOL)controller;
- (void)_setCrossfadingInTabBar:(BOOL)bar;
- (void)_setCrossfadingOutTabBar:(BOOL)bar;
- (void)_setCustomTransition:(BOOL)transition;
- (void)_setDefinesPresentationContextIfNecessaryForViewController:(id)controller;
- (void)_setDidExplicitlyHideTabBar:(BOOL)bar;
- (void)_setInteractiveScrollActive:(BOOL)active;
- (void)_setIsNestedNavigationController:(BOOL)controller;
- (void)_setIsWrappingDuringAdaptation:(BOOL)adaptation;
- (void)_setKeyboardNotificationToken:(id)token;
- (void)_setNavigationBarHidden:(BOOL)hidden edge:(unint64_t)edge duration:(double)duration;
- (void)_setNavigationBarHidden:(BOOL)hidden edgeIfNotNavigating:(unint64_t)navigating duration:(double)duration;
- (void)_setNavigationBarHidesCompletelyOffscreen:(BOOL)offscreen;
- (void)_setNavigationSoundsEnabled:(BOOL)enabled;
- (void)_setPreferredContentSizeFromChildContentContainer:(id)container;
- (void)_setPreferredNavigationBarPosition:(int64_t)position;
- (void)_setSearchHidNavigationBar:(BOOL)bar;
- (void)_setSuspendToolbarBackgroundUpdating:(BOOL)updating;
- (void)_setToolbarClass:(Class)class;
- (void)_setToolbarHidden:(BOOL)hidden edge:(unint64_t)edge duration:(double)duration;
- (void)_setUpContentFocusContainerGuide;
- (void)_setUpHostedRefreshControlForScrollView:(id)view;
- (void)_setUseStandardStatusBarHeight:(BOOL)height;
- (void)_setViewControllers:(id)controllers transition:(int)transition;
- (void)_setViewControllers:(id)controllers transition:(int)transition animated:(BOOL)animated operation:(int64_t)operation;
- (void)_setupBackGestureRecognizer;
- (void)_setupBackKeyCommand;
- (void)_setupDefaultClipUnderlapWhileTransitioningIfNeeded;
- (void)_setupVisualStyle;
- (void)_startCoordinatedBottomBarUpdateForTransition:(int)transition;
- (void)_startInteractiveNavbarTransition;
- (void)_startInteractiveToolbarTransition;
- (void)_startPaletteTransitionIfNecessary:(id)necessary animated:(BOOL)animated;
- (void)_startToolbarTransitionIfNecessary:(id)necessary animated:(BOOL)animated;
- (void)_stopObservingContentScrollView:(id)view;
- (void)_stopObservingContentScrollViewsForViewController:(id)controller;
- (void)_tabBarControllerDidFinishShowingTabBar:(id)bar isHidden:(BOOL)hidden;
- (void)_unhideNavigationBarForEdge:(unint64_t)edge;
- (void)_updateAndObserveScrollView:(id)view viewController:(id)controller forEdges:(unint64_t)edges;
- (void)_updateBackgroundTransitionProgressForScrollView:(id)view toolbar:(id)toolbar isNavigationTransitionUpdate:(BOOL)update;
- (void)_updateBarsForCurrentInterfaceOrientationAndForceBarLayout:(BOOL)layout;
- (void)_updateBottomBarHiddenStateFromOtherNavigationController:(id)controller;
- (void)_updateBottomBarsForNavigationTransition;
- (void)_updateChildContentMargins;
- (void)_updateContainersForStackChange;
- (void)_updateControlledViewsToFrame:(CGRect)frame;
- (void)_updateEnclosingSplitViewControllerForStackChange;
- (void)_updateEnclosingSplitViewControllerForTopViewControllerChange;
- (void)_updateEnclosingTabBarControllerForStackChange;
- (void)_updateFloatingBarContainerView;
- (void)_updateFloatingBarContentAnimated:(BOOL)animated;
- (void)_updateInteractiveBarTransition:(id)transition withUUID:(id)d percent:(double)percent isFinished:(BOOL)finished didComplete:(BOOL)complete completionSpeed:(double)speed completionCurve:(int64_t)curve;
- (void)_updateInteractivePopGestureRecognizersEnabled:(BOOL)enabled;
- (void)_updateInteractiveTransition:(double)transition;
- (void)_updateLayoutForScrollView:(id)view topLayoutType:(int64_t)type;
- (void)_updateManualScrollEdgeAppearanceProgressForScrollView:(id)view navigationItem:(id)item;
- (void)_updateNavigationBar:(id)bar fromItems:(id)items toItems:(id)toItems animated:(BOOL)animated;
- (void)_updateNavigationBarHostedRefreshControlToHostRefreshControlForScrollView:(id)view;
- (void)_updateNavigationBarScrollPocketContainerInteraction;
- (void)_updatePaletteConstraints;
- (void)_updatePalettesWithBlock:(id)block;
- (void)_updateScrollViewFromViewController:(id)controller toViewController:(id)viewController;
- (void)_updateScrollViewObservationFlagsForScrollView:(id)view navigationItem:(id)item forEdges:(unint64_t)edges;
- (void)_updateToolbarItemsFromViewController:(id)controller animated:(BOOL)animated;
- (void)_updateTopViewFramesForViewController:(id)controller isCancelledTransition:(BOOL)transition isOrientationChange:(BOOL)change;
- (void)_updateTopViewFramesToMatchScrollOffsetInViewController:(id)controller contentScrollView:(id)view topLayoutType:(int64_t)type;
- (void)_userInterfaceIdiomChanged;
- (void)_viewControllerSubtreeDidGainViewController:(id)controller;
- (void)_viewSubtreeDidGainScrollView:(id)view enclosingViewController:(id)controller;
- (void)_willBecomeContentViewControllerOfPopover:(id)popover;
- (void)attachPalette:(id)palette isPinned:(BOOL)pinned;
- (void)dealloc;
- (void)decodeRestorableStateWithCoder:(id)coder;
- (void)detachPalette:(id)palette;
- (void)detachPalette:(id)palette isInPaletteTransition:(BOOL)transition;
- (void)didAnimateFirstHalfOfRotationToInterfaceOrientation:(int64_t)orientation;
- (void)didMoveToParentViewController:(id)controller;
- (void)didRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)encodeRestorableStateWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)loadView;
- (void)navigationBarDidResizeForPrompt:(id)prompt;
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated;
- (void)pushViewController:(id)controller transition:(int)transition forceImmediate:(BOOL)immediate;
- (void)removeChildViewController:(id)controller notifyDidMove:(BOOL)move;
- (void)rename:(id)rename;
- (void)runToolbarCustomizationPalette:(id)palette;
- (void)setAllowUserInteractionDuringTransition:(BOOL)transition;
- (void)setAvoidMovingNavBarOffscreenBeforeUnhiding:(BOOL)unhiding;
- (void)setContentSizeForViewInPopover:(CGSize)popover;
- (void)setDelegate:(id)delegate;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setEnableBackButtonDuringTransition:(BOOL)transition;
- (void)setHidesBarsOnSwipe:(BOOL)hidesBarsOnSwipe;
- (void)setHidesBarsOnTap:(BOOL)hidesBarsOnTap;
- (void)setHidesBarsWhenKeyboardAppears:(BOOL)hidesBarsWhenKeyboardAppears;
- (void)setHidesBarsWhenVerticallyCompact:(BOOL)hidesBarsWhenVerticallyCompact;
- (void)setNavBarWillHideAfterAnimation:(BOOL)animation;
- (void)setNavigationBar:(id)bar;
- (void)setNavigationBarClass:(Class)class;
- (void)setNavigationBarHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setNeedsDeferredTransition:(BOOL)transition;
- (void)setPreferredContentSize:(CGSize)size;
- (void)setPretendNavBarHidden:(BOOL)hidden;
- (void)setSearchBarHidNavBar:(BOOL)bar;
- (void)setToolbar:(id)toolbar;
- (void)setToolbarHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setViewControllers:(NSArray *)viewControllers animated:(BOOL)animated;
- (void)showViewController:(UIViewController *)vc sender:(id)sender;
- (void)transitionConductor:(id)conductor beginPinningInputViewsForTransitionFromViewController:(id)controller toViewController:(id)viewController forTransitionType:(int)type;
- (void)transitionConductor:(id)conductor didEndCustomTransitionWithContext:(id)context didComplete:(BOOL)complete;
- (void)transitionConductor:(id)conductor didStartCustomTransitionWithContext:(id)context;
- (void)transitionConductor:(id)conductor didStartDeferredTransition:(BOOL)transition context:(id)context;
- (void)transitionConductor:(id)conductor interactiveTransitionDidUpdateProgress:(double)progress finish:(BOOL)finish transitionCompleted:(BOOL)completed transitionContext:(id)context;
- (void)transitionConductor:(id)conductor willTransitionFromViewController:(id)controller toViewController:(id)viewController;
- (void)transitionConductorWillStartImmediateTransition:(id)transition;
- (void)unwindForSegue:(id)segue towardsViewController:(id)controller;
- (void)updateTabBarItemForViewController:(id)controller;
- (void)updateTitleForViewController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willAnimateFirstHalfOfRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)willAnimateSecondHalfOfRotationFromInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)willShowViewController:(id)controller animated:(BOOL)animated;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation UINavigationController

- (id)_window
{
  v8.receiver = self;
  v8.super_class = UINavigationController;
  _window = [(UIViewController *)&v8 _window];
  v4 = _window;
  if (_window)
  {
    _window2 = _window;
  }

  else
  {
    _temporaryWindowLocator = [(UINavigationController *)self _temporaryWindowLocator];
    _window2 = [_temporaryWindowLocator _window];
  }

  return _window2;
}

- (BOOL)_shouldCrossFadeBottomBars
{
  if ([(UINavigationController *)self _isUsingBuiltinAnimator]&& [(_UINavigationControllerVisualStyle *)self->_visualStyle isUsingParallaxTransition])
  {
    return 0;
  }

  if ([(_UIViewControllerTransitionConductor *)self->_transitionConductor shouldCrossFadeBottomBars])
  {
    return 1;
  }

  if ((*(&self->_navigationControllerFlags + 3) & 8) == 0)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained _navigationControllerShouldCrossFadeBottomBars:self];

  return v5;
}

- (id)_existingActiveVisibleToolbar
{
  if ([(UINavigationController *)self isToolbarHidden])
  {
    toolbar = 0;
  }

  else
  {
    toolbar = self->_toolbar;
  }

  v4 = toolbar;
  if ([(UINavigationController *)self _allowNestedNavigationControllers])
  {
    topViewController = [(UINavigationController *)self topViewController];
    if ([topViewController _isNavigationController])
    {
      if ([topViewController isToolbarHidden])
      {
        _existingToolbar = 0;
      }

      else
      {
        _existingToolbar = [topViewController _existingToolbar];
      }

      v4 = _existingToolbar;
    }
  }

  return v4;
}

- (id)tab
{
  _managedTabGroup = [(UINavigationController *)self _managedTabGroup];
  v4 = _managedTabGroup;
  if (_managedTabGroup)
  {
    v5 = _managedTabGroup;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UINavigationController;
    v5 = [(UIViewController *)&v8 tab];
  }

  v6 = v5;

  return v6;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_nestedTopViewController
{
  _nestedTopNavigationController = [(UINavigationController *)self _nestedTopNavigationController];
  topViewController = [_nestedTopNavigationController topViewController];

  return topViewController;
}

- (UIViewController)topViewController
{
  mutableChildViewControllers = [(UIViewController *)self mutableChildViewControllers];
  lastObject = [mutableChildViewControllers lastObject];

  return lastObject;
}

- (id)_nestedTopNavigationController
{
  selfCopy = self;
  topViewController = [(UINavigationController *)self topViewController];
  if ([(UINavigationController *)topViewController _isNestedNavigationController])
  {
    selfCopy = topViewController;
  }

  v4 = selfCopy;

  return selfCopy;
}

- (id)_transitionCoordinator
{
  transitionCoordinator = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionCoordinator];
  if (!transitionCoordinator)
  {
    v5.receiver = self;
    v5.super_class = UINavigationController;
    transitionCoordinator = [(UIViewController *)&v5 _transitionCoordinator];
  }

  return transitionCoordinator;
}

- (id)_backdropBarGroupName
{
  cachedBackdropBarGroupName = self->_cachedBackdropBarGroupName;
  if (!cachedBackdropBarGroupName)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v4 stringWithFormat:@"<%@:%p> Backdrop Group", v6, self];
    v8 = self->_cachedBackdropBarGroupName;
    self->_cachedBackdropBarGroupName = v7;

    cachedBackdropBarGroupName = self->_cachedBackdropBarGroupName;
  }

  return cachedBackdropBarGroupName;
}

- (double)_widthForLayout
{
  containerView = self->_containerView;
  if (containerView)
  {
    [(UIView *)containerView bounds];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      _screen = [(UIViewController *)self _screen];
      [_screen bounds];
      v5 = v7;
    }
  }

  if (self->__positionBarsExclusivelyWithSafeArea)
  {
    navigationBar = [(UINavigationController *)self navigationBar];
    traitCollection = [navigationBar traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 3)
    {
      [(UIViewController *)self _contentOverlayInsets];
      v12 = v11;
      [(UIViewController *)self _contentOverlayInsets];
      return v5 - (v12 + v13);
    }
  }

  return v5;
}

- (void)_propagateContentAdjustmentsForControllersWithSharedViews
{
  disappearingViewController = [(UINavigationController *)self disappearingViewController];
  topViewController = [(UINavigationController *)self topViewController];
  lastOperation = [(UINavigationController *)self lastOperation];
  if (lastOperation == 2)
  {
    if ([disappearingViewController _usesSharedView])
    {
LABEL_4:
      [disappearingViewController _navigationControllerContentInsetAdjustment];
      [topViewController _setNavigationControllerContentInsetAdjustment:?];
      [disappearingViewController _navigationControllerContentOffsetAdjustment];
      [topViewController _setNavigationControllerContentOffsetAdjustment:?];
    }
  }

  else if (lastOperation == 1 && ([topViewController _usesSharedView] & 1) != 0)
  {
    goto LABEL_4;
  }
}

- (id)_outermostNavigationController
{
  if ([(UINavigationController *)self _isNestedNavigationController])
  {
    navigationController = [(UIViewController *)self navigationController];
    v4 = navigationController;
    if (navigationController)
    {
      selfCopy = [navigationController _outermostNavigationController];
    }

    else
    {
      selfCopy = self;
    }

    selfCopy2 = selfCopy;
  }

  else
  {
    selfCopy2 = self;
  }

  return selfCopy2;
}

- (BOOL)_shouldBottomBarBeHidden
{
  v18 = *MEMORY[0x1E69E9840];
  bottomViewController = [(UINavigationController *)self bottomViewController];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  mutableChildViewControllers = [(UIViewController *)self mutableChildViewControllers];
  reverseObjectEnumerator = [mutableChildViewControllers reverseObjectEnumerator];

  v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 hidesBottomBarWhenPushed])
        {

          _suppressesBottomBar = 1;
          goto LABEL_12;
        }

        if (v10 == bottomViewController)
        {
          goto LABEL_10;
        }
      }

      v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_10:

  bottomViewController = [(UINavigationController *)self topViewController];
  _suppressesBottomBar = [bottomViewController _suppressesBottomBar];
LABEL_12:

  return _suppressesBottomBar;
}

- (UIViewController)bottomViewController
{
  mutableChildViewControllers = [(UIViewController *)self mutableChildViewControllers];
  if ([mutableChildViewControllers count])
  {
    firstObject = [mutableChildViewControllers firstObject];
    if ((*(&self->_navigationControllerFlags + 6) & 6) != 0 && ([(UINavigationController *)self disappearingViewController], v5 = objc_claimAutoreleasedReturnValue(), v5, firstObject == v5))
    {
      if ([mutableChildViewControllers count] < 2)
      {
        v7 = 0;
        goto LABEL_6;
      }

      v6 = [mutableChildViewControllers objectAtIndexedSubscript:1];
    }

    else
    {
      v6 = firstObject;
    }

    v7 = v6;
LABEL_6:

    goto LABEL_8;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (UITabGroup)_managedTabGroup
{
  WeakRetained = objc_loadWeakRetained(&self->__managedTabGroup);

  return WeakRetained;
}

- (BOOL)isNavigationBarHidden
{
  if (![(UINavigationController *)self _isNestedNavigationController])
  {
    return *&self->_navigationControllerFlags & 1;
  }

  _outermostNavigationController = [(UINavigationController *)self _outermostNavigationController];
  v4 = _outermostNavigationController;
  if (_outermostNavigationController == self)
  {
    isNavigationBarHidden = *&self->_navigationControllerFlags & 1;
  }

  else
  {
    isNavigationBarHidden = [(UINavigationController *)_outermostNavigationController isNavigationBarHidden];
  }

  return isNavigationBarHidden;
}

- (BOOL)_isPopping
{
  _stack = [(UINavigationBar *)self->_navigationBar _stack];
  isPopping = [_stack isPopping];

  return (isPopping & 1) != 0 || [(UINavigationController *)self _isTransitioning]&& [(UINavigationController *)self lastOperation]== 2;
}

- (BOOL)_searchHidNavigationBar
{
  _outermostNavigationController = [(UINavigationController *)self _outermostNavigationController];
  v4 = _outermostNavigationController;
  if (_outermostNavigationController == self)
  {
    _searchHidNavigationBar = *(&self->_navigationControllerFlags + 6) & 1;
  }

  else
  {
    _searchHidNavigationBar = [(UINavigationController *)_outermostNavigationController _searchHidNavigationBar];
  }

  return _searchHidNavigationBar;
}

- (BOOL)_viewControllerUnderlapsStatusBar
{
  if (self->__positionBarsExclusivelyWithSafeArea)
  {
    [(UIViewController *)self _contentOverlayInsets];
    return v3 > 0.0;
  }

  else if (self->__preferredNavigationBarPosition && [(UINavigationController *)self _isNavigationBarVisible])
  {
    return self->__preferredNavigationBarPosition == 3;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UINavigationController;
    return [(UIViewController *)&v5 _viewControllerUnderlapsStatusBar];
  }
}

- (id)_navigationBarForNestedNavigationController
{
  _outermostNavigationController = [(UINavigationController *)self _outermostNavigationController];
  _existingNavigationBar = [_outermostNavigationController _existingNavigationBar];

  return _existingNavigationBar;
}

- (BOOL)_isPushing
{
  _stack = [(UINavigationBar *)self->_navigationBar _stack];
  isPushing = [_stack isPushing];

  if (isPushing)
  {
    LOBYTE(v5) = 1;
  }

  else if (![(UINavigationController *)self _isTransitioning]|| (v5 = [(UINavigationController *)self lastOperation], v5 != 1))
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)loadView
{
  [(UIViewController *)self _defaultInitialViewFrame];
  v7 = [[UILayoutContainerView alloc] initWithFrame:v3, v4, v5, v6];
  containerView = self->_containerView;
  self->_containerView = v7;

  [(UIView *)self->_containerView setAutoresizingMask:18];
  [(UIView *)self->_containerView setClipsToBounds:1];
  [(UILayoutContainerView *)self->_containerView setDelegate:self];
  if (_UIScrollPocketEnabled())
  {
    [(UIView *)self->_containerView addInteraction:self->_scrollPocketCollectorInteraction];
  }

  [(UIViewController *)self setView:self->_containerView];
  navigationBar = [(UINavigationController *)self navigationBar];
  [(UILayoutContainerView *)self->_containerView addSubview:?];
  [(UINavigationController *)self _positionNavigationBarHidden:*&self->_navigationControllerFlags & 1];
  if (_UIScrollPocketEnabled())
  {
    [navigationBar addInteraction:self->_navigationBarScrollPocketContainerInteraction];
    [(UINavigationController *)self _updateNavigationBarScrollPocketContainerInteraction];
  }

  [(UIView *)self->_containerView bounds];
  v13 = [(UIView *)[UINavigationTransitionView alloc] initWithFrame:v9, v10, v11, v12];
  navigationTransitionView = self->_navigationTransitionView;
  self->_navigationTransitionView = v13;

  [(UIView *)self->_navigationTransitionView setAutoresizingMask:18];
  [(UIView *)self->_containerView insertSubview:self->_navigationTransitionView belowSubview:navigationBar];
  [(UINavigationController *)self _setupVisualStyle];
  if (_UIUnifiedToolbarEnabled())
  {
    v15 = +[_UIFloatingBarContainerProvider makeView];
    floatingBarContainerView = self->_floatingBarContainerView;
    self->_floatingBarContainerView = v15;

    [(_UIFloatingBarContainer *)self->_floatingBarContainerView addInteraction:self->_toolbarScrollPocketContainerInteraction];
    [(UINavigationController *)self _updateFloatingBarContainerView];
    view = [(UIViewController *)self view];
    [view addSubview:self->_floatingBarContainerView];
  }

  else if (![(UINavigationController *)self isToolbarHidden])
  {
    v18 = self->_containerView;
    toolbar = [(UINavigationController *)self toolbar];
    [(UILayoutContainerView *)v18 addSubview:toolbar];

    [(UINavigationController *)self _positionToolbarHidden:[(UINavigationController *)self isToolbarHidden]];
  }

  if ([(UIViewController *)self childViewControllersCount])
  {
    [(UINavigationController *)self setNeedsDeferredTransition];
  }

  [(UINavigationController *)self _configureBarsAutomaticActions];
  [(UINavigationController *)self _setUpContentFocusContainerGuide];
  [(UINavigationController *)self _setupBackKeyCommand];
  view2 = [(UIViewController *)self view];
  [(_UIViewControllerTransitionConductor *)self->_transitionConductor setTransitionContainerView:view2];
}

- (void)_setupVisualStyle
{
  v4 = +[_UINavigationControllerVisualStyleFactory sharedInstance];
  v5 = [v4 styleForNavigationController:self];
  visualStyle = self->_visualStyle;
  self->_visualStyle = v5;

  if (!self->_visualStyle)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:954 description:@"Visual provider must always be set"];
  }
}

- (void)_configureBarsAutomaticActions
{
  [(UINavigationController *)self _configureKeyboardBarHiding];
  [(UINavigationController *)self _configureBarSwipeGesture];

  [(UINavigationController *)self _configureBarTapGesture];
}

- (void)_configureKeyboardBarHiding
{
  if (self->_hidesBarsWhenKeyboardAppears)
  {
    objc_initWeak(&location, self);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = MEMORY[0x1E69E9820];
    v6 = 3221225472;
    v7 = __53__UINavigationController__configureKeyboardBarHiding__block_invoke;
    v8 = &unk_1E70F3D28;
    objc_copyWeak(&v9, &location);
    v4 = [defaultCenter addObserverForName:@"UIKeyboardWillShowNotification" object:0 queue:0 usingBlock:&v5];
    [(UINavigationController *)self _setKeyboardAppearedNotificationToken:v4, v5, v6, v7, v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {

    [(UINavigationController *)self _setKeyboardAppearedNotificationToken:0];
  }
}

- (void)_configureBarSwipeGesture
{
  barSwipeHideGesture = self->__barSwipeHideGesture;
  if (barSwipeHideGesture)
  {
    if (self->_hidesBarsOnSwipe)
    {
      _existingView = [(UIViewController *)self _existingView];
      [_existingView addGestureRecognizer:self->__barSwipeHideGesture];
    }

    else
    {
      _existingView = [(UIGestureRecognizer *)barSwipeHideGesture view];
      [_existingView removeGestureRecognizer:self->__barSwipeHideGesture];
    }
  }
}

- (void)_configureBarTapGesture
{
  if (self->__barTapHideGesture)
  {
    _existingView = [(UIViewController *)self _existingView];
    v5 = _existingView;
    if (self->_hidesBarsOnTap || self->_hidesBarsWhenVerticallyCompact || self->_hidesBarsOnSwipe)
    {
      [_existingView addGestureRecognizer:self->__barTapHideGesture];
    }

    else
    {
      view = [(UIGestureRecognizer *)self->__barTapHideGesture view];
      [view removeGestureRecognizer:self->__barTapHideGesture];
    }
  }
}

- (void)_setUpContentFocusContainerGuide
{
  v24[4] = *MEMORY[0x1E69E9840];
  if (!self->_contentFocusContainerGuide)
  {
    v3 = objc_alloc_init(UIFocusContainerGuide);
    contentFocusContainerGuide = self->_contentFocusContainerGuide;
    self->_contentFocusContainerGuide = v3;

    view = [(UIViewController *)self view];
    [view addLayoutGuide:self->_contentFocusContainerGuide];

    [(UILayoutGuide *)self->_contentFocusContainerGuide setIdentifier:@"UINavigationControllerContentFocusContainerGuide"];
    v16 = MEMORY[0x1E69977A0];
    topAnchor = [(UILayoutGuide *)self->_contentFocusContainerGuide topAnchor];
    navigationBar = [(UINavigationController *)self navigationBar];
    bottomAnchor = [navigationBar bottomAnchor];
    v20 = [topAnchor constraintEqualToAnchor:bottomAnchor];
    v24[0] = v20;
    leadingAnchor = [(UILayoutGuide *)self->_contentFocusContainerGuide leadingAnchor];
    view2 = [(UIViewController *)self view];
    leadingAnchor2 = [view2 leadingAnchor];
    v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v24[1] = v6;
    trailingAnchor = [(UILayoutGuide *)self->_contentFocusContainerGuide trailingAnchor];
    view3 = [(UIViewController *)self view];
    trailingAnchor2 = [view3 trailingAnchor];
    v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v24[2] = v10;
    bottomAnchor2 = [(UILayoutGuide *)self->_contentFocusContainerGuide bottomAnchor];
    view4 = [(UIViewController *)self view];
    bottomAnchor3 = [view4 bottomAnchor];
    v14 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v24[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
    [v16 activateConstraints:v15];
  }
}

- (void)_setupBackKeyCommand
{
  if (!self->_backKeyCommand && dyld_program_sdk_at_least())
  {
    v3 = [UIKeyCommand keyCommandWithInput:@"[" modifierFlags:0x100000 action:sel__performBackKeyCommand_];
    backKeyCommand = self->_backKeyCommand;
    self->_backKeyCommand = v3;

    [(UIKeyCommand *)self->_backKeyCommand _setEnumerationPriority:-1];
    v5 = self->_backKeyCommand;

    [(UIViewController *)self addKeyCommand:v5];
  }
}

- (void)_updateEnclosingSplitViewControllerForStackChange
{
  if ((*(&self->_navigationControllerFlags + 8) & 4) == 0)
  {
    v3 = [(UIViewController *)self _splitViewControllerEnforcingClass:1];
    [v3 _navigationControllerDidUpdateStack:self];
  }
}

- (void)_updateContainersForStackChange
{
  [(UINavigationController *)self _updateEnclosingSplitViewControllerForStackChange];

  [(UINavigationController *)self _updateEnclosingTabBarControllerForStackChange];
}

- (void)_updateEnclosingTabBarControllerForStackChange
{
  _containingTabBarController = [(UIViewController *)self _containingTabBarController];
  [_containingTabBarController _navigationControllerDidUpdateStack:self];
  _managedTabGroup = [(UINavigationController *)self _managedTabGroup];

  if (_managedTabGroup)
  {
    _managedTabGroup2 = [(UINavigationController *)self _managedTabGroup];
    [_managedTabGroup2 _updateForManagingNavigationStackChange];
  }
}

- (id)_viewControllerForObservableScrollView
{
  if ([(UIViewController *)self _shouldRequestViewControllerForObservableScrollViewFromPresentedViewController])
  {
    v6.receiver = self;
    v6.super_class = UINavigationController;
    _viewControllerForObservableScrollView = [(UIViewController *)&v6 _viewControllerForObservableScrollView];
  }

  else
  {
    _nestedTopViewController = [(UINavigationController *)self _nestedTopViewController];
    _viewControllerForObservableScrollView = _viewControllerForObservableScrollViewForViewController(_nestedTopViewController);
  }

  return _viewControllerForObservableScrollView;
}

- (id)_childViewControllersToSendViewWillTransitionToSize
{
  if (![(UINavigationController *)self _allowNestedNavigationControllers]|| ![(UINavigationController *)self _hasNestedNavigationController])
  {
    goto LABEL_18;
  }

  parentViewController = [(UIViewController *)self parentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = parentViewController;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if ([v5 style])
  {
    if ([v5 style] && !objc_msgSend(v5, "_columnForViewController:", self))
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  childViewControllers = [v5 childViewControllers];
  firstObject = [childViewControllers firstObject];
  v8 = firstObject;
  if (firstObject == self)
  {

LABEL_15:
    v15.receiver = self;
    v15.super_class = UINavigationController;
    _childViewControllersToSendViewWillTransitionToSize = [(UIViewController *)&v15 _childViewControllersToSendViewWillTransitionToSize];
    _childViewControllersToSendViewWillTransitionToSize3 = [_childViewControllersToSendViewWillTransitionToSize mutableCopy];

    _childViewControllersToSendViewWillTransitionToSize2 = [v5 _childViewControllersToSendViewWillTransitionToSize];
    [_childViewControllersToSendViewWillTransitionToSize3 removeObjectsInArray:_childViewControllersToSendViewWillTransitionToSize2];

    goto LABEL_19;
  }

  if ([v5 style])
  {
    v9 = [v5 _columnForViewController:self];

    if (!v9)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

LABEL_17:

LABEL_18:
  v14.receiver = self;
  v14.super_class = UINavigationController;
  _childViewControllersToSendViewWillTransitionToSize3 = [(UIViewController *)&v14 _childViewControllersToSendViewWillTransitionToSize];
LABEL_19:

  return _childViewControllersToSendViewWillTransitionToSize3;
}

- (void)_initializeNavigationDeferredTransitionContextIfNecessary
{
  if ([(UINavigationController *)self needsDeferredTransition]&& !self->_deferredTransitionContext)
  {
    v3 = objc_opt_new();
    deferredTransitionContext = self->_deferredTransitionContext;
    self->_deferredTransitionContext = v3;
  }
}

- (id)childViewControllerForStatusBarStyle
{
  if ([(UINavigationController *)self isNavigationBarHidden])
  {
    topViewController = [(UINavigationController *)self topViewController];
  }

  else
  {
    topViewController = 0;
  }

  return topViewController;
}

- (unint64_t)preferredScreenEdgesDeferringSystemGestures
{
  topViewController = [(UINavigationController *)self topViewController];
  _effectiveScreenEdgesDeferringSystemGesturesViewController = [topViewController _effectiveScreenEdgesDeferringSystemGesturesViewController];
  preferredScreenEdgesDeferringSystemGestures = [_effectiveScreenEdgesDeferringSystemGesturesViewController preferredScreenEdgesDeferringSystemGestures];

  if ((*(&self->_navigationControllerFlags + 8) & 8) != 0)
  {
    _existingView = [(UIViewController *)self _existingView];
    _shouldReverseLayoutDirection = [_existingView _shouldReverseLayoutDirection];

    v8 = 2;
    if (_shouldReverseLayoutDirection)
    {
      v8 = 8;
    }

    preferredScreenEdgesDeferringSystemGestures |= v8;
  }

  return preferredScreenEdgesDeferringSystemGestures;
}

- (void)_updateChildContentMargins
{
  v5.receiver = self;
  v5.super_class = UINavigationController;
  [(UIViewController *)&v5 _updateChildContentMargins];
  _existingNavigationBar = [(UINavigationController *)self _existingNavigationBar];
  [_existingNavigationBar layoutMarginsDidChange];

  _existingToolbar = [(UINavigationController *)self _existingToolbar];
  [_existingToolbar setNeedsLayout];
}

- (int64_t)preferredStatusBarStyle
{
  if (!_UISolariumEnabled())
  {
    return [(UIViewController *)&v7 preferredStatusBarStyle:self];
  }

  navigationBar = [(UINavigationController *)self navigationBar];
  traitCollection = [navigationBar traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    return 1;
  }

  if (userInterfaceStyle == 1)
  {
    return 3;
  }

  return [(UIViewController *)&v8 preferredStatusBarStyle:v7.receiver];
}

- (UIToolbar)toolbar
{
  toolbar = self->_toolbar;
  if (!toolbar)
  {
    containerView = self->_containerView;
    if (containerView)
    {
      [(UIView *)containerView bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
    }

    else
    {
      v6 = *MEMORY[0x1E695F058];
      v8 = *(MEMORY[0x1E695F058] + 8);
      v10 = *(MEMORY[0x1E695F058] + 16);
      v12 = *(MEMORY[0x1E695F058] + 24);
    }

    toolbarClass = self->_toolbarClass;
    if (!toolbarClass)
    {
      toolbarClass = objc_opt_class();
    }

    v14 = [[toolbarClass alloc] initWithFrame:{v6, v8, v10, v12}];
    v15 = self->_toolbar;
    self->_toolbar = v14;

    [(UINavigationController *)self _configureToolbar];
    toolbar = self->_toolbar;
  }

  return toolbar;
}

- (void)_configureToolbar
{
  if ((_UIUnifiedToolbarEnabled() & 1) == 0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __43__UINavigationController__configureToolbar__block_invoke;
    v3[3] = &unk_1E70F3590;
    v3[4] = self;
    [UIView performWithoutAnimation:v3];
  }
}

- (BOOL)_isNavigationBarVisible
{
  topViewController = [(UINavigationController *)self topViewController];
  navigationItem = [topViewController navigationItem];
  _navigationBarVisibility = [navigationItem _navigationBarVisibility];

  navigationBar = [(UINavigationController *)self navigationBar];
  if ([(UINavigationController *)self isNavigationBarHidden])
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    if (([navigationBar isHidden] & 1) == 0 && _navigationBarVisibility != 1)
    {
      [navigationBar alpha];
      v7 = v8 > 0.0 || _navigationBarVisibility == 2;
    }
  }

  return v7;
}

- (BOOL)_isPushingOrPopping
{
  if ([(UINavigationController *)self _isPushing])
  {
    return 1;
  }

  return [(UINavigationController *)self _isPopping];
}

- (void)_updatePaletteConstraints
{
  topPalette = self->_topPalette;
  if (topPalette)
  {
    _constraints = [(_UINavigationControllerPalette *)topPalette _constraints];
    if ([_constraints count])
    {
      _constraints2 = [(_UINavigationControllerPalette *)self->_topPalette _constraints];
      firstObject = [_constraints2 firstObject];
      isActive = [firstObject isActive];

      if ((isActive & 1) == 0)
      {
        v7 = self->_topPalette;

        [(_UINavigationControllerPalette *)v7 _configurePaletteConstraintsForBoundary];
      }
    }

    else
    {
    }
  }
}

- (void)_safeAreaInsetsDidChangeForView
{
  v3.receiver = self;
  v3.super_class = UINavigationController;
  [(UIViewController *)&v3 _safeAreaInsetsDidChangeForView];
  [(UIView *)self->super._view _eagerlyUpdateSafeAreaInsetsToDescendant:?];
  [(UINavigationBar *)self->_navigationBar safeAreaInsetsDidChange];
}

- (void)_eagerlyUpdateSafeAreaInsets
{
  v32 = *MEMORY[0x1E69E9840];
  topViewController = [(UINavigationController *)self topViewController];
  v4 = 0;
  array = 0;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = [topViewController _contentOrObservableScrollViewForEdge:*(&xmmword_18A679310 + v4)];
    v9 = v8;
    if (v8)
    {
      v10 = array == 0;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    else if (!v8)
    {
      goto LABEL_12;
    }

    if (([v9 _safeAreaInsetsFrozen] & 1) == 0 && (objc_msgSend(array, "containsObject:", v9) & 1) == 0)
    {
      [array addObject:v9];
    }

LABEL_12:

    v6 = 0;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
  _existingView = [topViewController _existingView];
  v12 = _existingView;
  if (!array && _existingView)
  {
    if ([_existingView _safeAreaInsetsFrozen])
    {
      array = 0;
    }

    else
    {
      subviews = [v12 subviews];
      if ([subviews count])
      {
        subviews2 = [v12 subviews];
        array = [subviews2 mutableCopy];
      }

      else
      {
        array = [MEMORY[0x1E695DF70] arrayWithObject:v12];
      }
    }
  }

  navigationItem = [topViewController navigationItem];
  v16 = [(UINavigationController *)self _effectiveSearchControllerForSearchBarGivenTopNavigationItem:navigationItem];
  v17 = v16;
  if (!v16)
  {
    v19 = [(UINavigationController *)self _effectiveSearchControllerForScopeBarGivenTopNavigationItem:navigationItem];
    _currentActiveChildViewController = [v19 _currentActiveChildViewController];

    if (!_currentActiveChildViewController)
    {
      goto LABEL_33;
    }

LABEL_25:
    v20 = [_currentActiveChildViewController _contentOrObservableScrollViewForEdge:1];
    if (v20)
    {
      _existingView2 = v20;
    }

    else
    {
      _existingView2 = [_currentActiveChildViewController _existingView];
      if (!_existingView2)
      {
LABEL_32:

        goto LABEL_33;
      }
    }

    if (([_existingView2 _safeAreaInsetsFrozen] & 1) == 0)
    {
      if (!array)
      {
        array = [MEMORY[0x1E695DF70] array];
      }

      [array addObject:_existingView2];
    }

    goto LABEL_32;
  }

  _currentActiveChildViewController = [v16 _currentActiveChildViewController];
  if (_currentActiveChildViewController)
  {
    goto LABEL_25;
  }

LABEL_33:
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v22 = array;
  v23 = [v22 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v28;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v28 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [(UIViewController *)self _eagerlyUpdateSafeAreaInsetsToViewDescendant:*(*(&v27 + 1) + 8 * i), v27];
      }

      v24 = [v22 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v24);
  }
}

- (void)_setupBackGestureRecognizer
{
  v17[1] = *MEMORY[0x1E69E9840];
  traitCollection = [(UIViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom > 8 || ((1 << userInterfaceIdiom) & 0x10C) == 0)
  {
    if (self->_backGestureRecognizer)
    {
      [(UIView *)self->_containerView removeGestureRecognizer:?];
      backGestureRecognizer = self->_backGestureRecognizer;
      self->_backGestureRecognizer = 0;
    }
  }

  else
  {
    if (userInterfaceIdiom == 3)
    {
      v6 = 7;
    }

    else
    {
      v6 = 5;
    }

    v7 = self->_backGestureRecognizer;
    if (!v7)
    {
      goto LABEL_12;
    }

    allowedPressTypes = [(UIGestureRecognizer *)v7 allowedPressTypes];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
    v10 = [allowedPressTypes containsObject:v9];

    if ((v10 & 1) == 0)
    {
      [(UIView *)self->_containerView removeGestureRecognizer:self->_backGestureRecognizer];
      v11 = self->_backGestureRecognizer;
      self->_backGestureRecognizer = 0;
    }

    if (!self->_backGestureRecognizer)
    {
LABEL_12:
      v12 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__performBackGesture_];
      v13 = self->_backGestureRecognizer;
      self->_backGestureRecognizer = v12;

      [(UIGestureRecognizer *)self->_backGestureRecognizer setDelegate:self];
      v14 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
      v17[0] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
      [(UITapGestureRecognizer *)self->_backGestureRecognizer setAllowedPressTypes:v15];

      [(UIGestureRecognizer *)self->_backGestureRecognizer setAllowedTouchTypes:MEMORY[0x1E695E0F0]];
      [(UIView *)self->_containerView addGestureRecognizer:self->_backGestureRecognizer];
    }
  }
}

- (void)__viewWillLayoutSubviews
{
  if (![(UIViewController *)self _freezeLayoutForOrientationChangeOnDismissal])
  {
    topViewController = [(UINavigationController *)self topViewController];
    isHeightOfTopViewsCoordinatedToMatchViewControllerOffsets = _isHeightOfTopViewsCoordinatedToMatchViewControllerOffsets(self, topViewController);

    [(_UIViewControllerTransitionConductor *)self->_transitionConductor startDeferredTransitionIfNeeded];
    if (![(UINavigationController *)self _isNestedNavigationController]&& [(UINavigationController *)self _isNavigationBarVisible]&& ![(UINavigationController *)self _isPushingOrPopping])
    {
      [(UINavigationController *)self _positionNavigationBarHidden:0];
    }

    topViewController2 = [(UINavigationController *)self topViewController];
    v6 = _isHeightOfTopViewsCoordinatedToMatchViewControllerOffsets(self, topViewController2);

    if ((*&self->_navigationControllerFlags & 4) == 0 || [(UINavigationController *)self _isPushingOrPopping]|| isHeightOfTopViewsCoordinatedToMatchViewControllerOffsets != v6)
    {
      topViewController3 = [(UINavigationController *)self topViewController];
      if ([topViewController3 _isNestedNavigationController] && objc_msgSend(topViewController3, "_isPushingOrPopping"))
      {
        _existingView = [topViewController3 _existingView];
        [_existingView setNeedsLayout];
      }

      [(UINavigationController *)self _computeAndApplyScrollContentInsetDeltaForViewController:topViewController3];
    }

    if (objc_opt_respondsToSelector())
    {
      visualStyle = self->_visualStyle;
      containerView = self->_containerView;

      [(_UINavigationControllerVisualStyle *)visualStyle containerViewWillLayoutSubviews:containerView];
    }
  }
}

- (void)_setupDefaultClipUnderlapWhileTransitioningIfNeeded
{
  if (self && (*(self + 1296) & 0x20) == 0)
  {
    if (_UISolariumEnabled())
    {
      traitCollection = [self traitCollection];
      *(self + 1288) = *(self + 1288) & 0xFFFFFFFBFFFFFFFFLL | (([traitCollection userInterfaceIdiom] == 3) << 34);
    }

    else
    {
      *(self + 1288) &= ~0x400000000uLL;
    }
  }
}

- (BOOL)_isNavigationBarEffectivelyVisible
{
  _isNavigationBarVisible = [(UINavigationController *)self _isNavigationBarVisible];
  if (_isNavigationBarVisible)
  {
    LOBYTE(_isNavigationBarVisible) = (*(&self->_navigationControllerFlags + 1) & 0x20) == 0;
  }

  return _isNavigationBarVisible;
}

- (unint64_t)supportedInterfaceOrientations
{
  if ((*(&self->_navigationControllerFlags + 3) & 0x20) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained navigationControllerSupportedInterfaceOrientations:self];

    return v5;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UINavigationController;
    return [(UIViewController *)&v6 supportedInterfaceOrientations];
  }
}

- (id)childViewControllerForStatusBarHidden
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if (userInterfaceIdiom || +[UIDevice _hasHomeButton]|| [(UINavigationController *)self isNavigationBarHidden])
  {
    topViewController = [(UINavigationController *)self topViewController];
  }

  else
  {
    topViewController = 0;
  }

  return topViewController;
}

- (id)tabBarItem
{
  v12.receiver = self;
  v12.super_class = UINavigationController;
  tabBarItem = [(UIViewController *)&v12 tabBarItem];
  image = [tabBarItem image];
  if (image || ([tabBarItem selectedImage], (image = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(tabBarItem, "unselectedImage"), (image = objc_claimAutoreleasedReturnValue()) != 0))
  {
    tabBarItem2 = image;
LABEL_5:
    v6 = tabBarItem;
LABEL_6:

    tabBarItem = v6;
    goto LABEL_7;
  }

  if (([tabBarItem isSystemItem] & 1) == 0)
  {
    bottomViewController = [(UINavigationController *)self bottomViewController];
    tabBarItem2 = [bottomViewController tabBarItem];

    image2 = [tabBarItem2 image];
    if (image2 || ([tabBarItem2 selectedImage], (image2 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(tabBarItem2, "unselectedImage"), (image2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else if (([tabBarItem2 isSystemItem] & 1) == 0)
    {
      goto LABEL_5;
    }

    v6 = tabBarItem2;

    v10 = [(UIViewController *)self _fallbackTabElementCreateIfNeeded:0];
    v11 = v10;
    if (v10)
    {
      [v10 _setBridgedTabBarItem:v6];
    }

    goto LABEL_6;
  }

LABEL_7:

  return tabBarItem;
}

- (id)navigationItem
{
  if ([(UINavigationController *)self _isNestedNavigationController]&& ([(UINavigationController *)self bottomViewController], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    navigationItem = [v3 navigationItem];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UINavigationController;
    navigationItem = [(UIViewController *)&v7 navigationItem];
  }

  return navigationItem;
}

- (BOOL)_isTransitioningOrPaletteIsTransitioning
{
  if ([(UINavigationController *)self _isTransitioning]|| (*&self->_navigationControllerFlags & 8) != 0)
  {
    return 1;
  }

  topPalette = self->_topPalette;

  return [(_UINavigationControllerPalette *)topPalette _restartPaletteTransitionIfNecessary];
}

- (BOOL)_navbarIsAppearingInteractively
{
  _navbarAnimationId = [(UINavigationController *)self _navbarAnimationId];
  v3 = _navbarAnimationId != 0;

  return v3;
}

- (double)_statusBarHeightAdjustmentForCurrentOrientation
{
  if (self->__positionBarsExclusivelyWithSafeArea)
  {
    selfCopy = self;
    v4 = selfCopy;
    if (self->__positionBarsExclusivelyWithSafeArea && (-[UIViewController _existingView](selfCopy, "_existingView"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 _usesMinimumSafeAreas], v5, v6))
    {
      _existingView = [(UIViewController *)v4 _existingView];
      [_existingView _minimumSafeAreaInsets];
      v9 = v8;
    }

    else
    {
      [(UIViewController *)v4 _contentOverlayInsets];
      v9 = v11;
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = UINavigationController;
    [(UIViewController *)&v13 _statusBarHeightAdjustmentForCurrentOrientation];
    return v10;
  }

  return v9;
}

- (BOOL)_isAppearingOrAppearedCheck
{
  if (!dyld_program_sdk_at_least())
  {
    return [(UIViewController *)self _appearState]== 2;
  }

  if (self)
  {
    return (*&self->super._viewControllerFlags & 3u) - 1 < 2;
  }

  return 0;
}

- (BOOL)_shouldInteractivePopGestureBeEnabled
{
  navigationBar = [(UINavigationController *)self navigationBar];
  if ([navigationBar state] && !-[UINavigationController _isCurrentTransitionPreemptable](self, "_isCurrentTransitionPreemptable"))
  {
    v10 = 0;
    goto LABEL_20;
  }

  topViewController = [(UINavigationController *)self topViewController];
  searchDisplayController = [topViewController searchDisplayController];
  navigationItem = [topViewController navigationItem];
  if (!navigationItem)
  {
    navigationItem = [navigationBar topItem];
  }

  v7 = [(UINavigationController *)self _effectiveSearchControllerForSearchBarGivenTopNavigationItem:navigationItem];
  if (-[UINavigationController isNavigationBarHidden](self, "isNavigationBarHidden") && !-[UINavigationController _allowsInteractivePopWhenNavigationBarHidden](self, "_allowsInteractivePopWhenNavigationBarHidden") && ![navigationItem _allowsInteractivePopWhenNavigationBarHidden] || !objc_msgSend(navigationItem, "_allowsInteractivePop") || objc_msgSend(searchDisplayController, "isActive") && (objc_msgSend(searchDisplayController, "isNavigationBarHidingEnabled") & 1) != 0 || objc_msgSend(v7, "isActive") && (objc_msgSend(v7, "_hidesNavigationBarDuringPresentationRespectingInlineSearch") & 1) != 0 || objc_msgSend(navigationItem, "hidesBackButton") && !objc_msgSend(navigationItem, "_allowsInteractivePopWhenBackButtonHidden"))
  {
    goto LABEL_17;
  }

  leftBarButtonItems = [navigationItem leftBarButtonItems];
  if (![leftBarButtonItems count])
  {

    goto LABEL_22;
  }

  leftItemsSupplementBackButton = [navigationItem leftItemsSupplementBackButton];

  if (leftItemsSupplementBackButton)
  {
LABEL_22:
    previousViewController = [(UINavigationController *)self previousViewController];
    v10 = previousViewController != 0;

    goto LABEL_18;
  }

LABEL_17:
  v10 = 0;
LABEL_18:

LABEL_20:
  return v10;
}

- (void)viewDidLayoutSubviews
{
  _shouldInteractivePopGestureBeEnabled = [(UINavigationController *)self _shouldInteractivePopGestureBeEnabled];
  v4 = *(&self->_navigationControllerFlags + 8);
  if (((_shouldInteractivePopGestureBeEnabled ^ ((v4 & 8) == 0)) & 1) == 0)
  {
    if (_shouldInteractivePopGestureBeEnabled)
    {
      v5 = 8;
    }

    else
    {
      v5 = 0;
    }

    *(&self->_navigationControllerFlags + 8) = v4 & 0xF7 | v5;
    [(UIViewController *)self setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
  }

  [(UINavigationController *)self _updateNavigationBarScrollPocketContainerInteraction];

  [(UINavigationController *)self _updateFloatingBarContainerView];
}

- (UIViewController)previousViewController
{
  mutableChildViewControllers = [(UIViewController *)self mutableChildViewControllers];
  v3 = [mutableChildViewControllers count];
  if (v3 < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [mutableChildViewControllers objectAtIndex:v3 - 2];
  }

  return v4;
}

- (BOOL)_shouldSkipHostedRefreshControlUpdateSchedulingDeferredUpdateIfNecessary
{
  _updateNavigationBarHandler = [(UINavigationController *)self _updateNavigationBarHandler];
  if (_updateNavigationBarHandler)
  {
    navigationControllerFlags = self->_navigationControllerFlags;
    if ((navigationControllerFlags & 0x100000000000000) == 0)
    {
      *&self->_navigationControllerFlags = navigationControllerFlags | 0x100000000000000;
      objc_initWeak(&location, self);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __98__UINavigationController__shouldSkipHostedRefreshControlUpdateSchedulingDeferredUpdateIfNecessary__block_invoke;
      v6[3] = &unk_1E7102B40;
      v7 = _updateNavigationBarHandler;
      objc_copyWeak(&v8, &location);
      [(UINavigationController *)self _setUpdateNavigationBarHandler:v6];
      objc_destroyWeak(&v8);

      objc_destroyWeak(&location);
    }
  }

  return _updateNavigationBarHandler != 0;
}

- (void)_clearLastOperation
{
  if (result)
  {
    v1 = result;
    if (([result _isPerformingLayoutToLayoutTransition] & 1) == 0)
    {
      v2 = *(v1 + 134);
      if (v2)
      {
        v3 = [v2 _contentOrObservableScrollViewForEdge:1];
        topViewController = [v1 topViewController];
        v5 = [topViewController _contentOrObservableScrollViewForEdge:1];

        if (v3 != v5)
        {
          [v1 _stopObservingContentScrollViewsForViewController:*(v1 + 134)];
        }
      }
    }

    *(v1 + 161) &= 0xFFF9FFFFFFFFFE0FLL;
    [*(v1 + 167) setDeferredTransitionType:0];

    return [v1 setDisappearingViewController:0];
  }

  return result;
}

- (BOOL)_isPerformingLayoutToLayoutTransition
{
  disappearingViewController = [(UINavigationController *)self disappearingViewController];
  topViewController = [(UINavigationController *)self topViewController];
  lastOperation = [(UINavigationController *)self lastOperation];
  _uiCollectionView = [topViewController _uiCollectionView];
  _uiCollectionView2 = [disappearingViewController _uiCollectionView];

  if (lastOperation == 1)
  {
    v8 = topViewController;
  }

  else
  {
    v8 = disappearingViewController;
  }

  _usesSharedView = [v8 _usesSharedView];
  if (_uiCollectionView == _uiCollectionView2)
  {
    v10 = _usesSharedView;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_isViewControllerFullWidth
{
  view = [(UIViewController *)self view];
  [view frame];
  [view convertRect:0 toView:?];
  v5 = v4;
  v7 = v6;
  _window = [(UINavigationController *)self _window];
  [_window bounds];
  v10 = v9;
  v12 = v11;

  v13 = v7 > v12 * 0.5 && v10 == v5;
  return v13;
}

- (id)_keyboardAnimationStyle
{
  _transitionAnimationContext = [(UINavigationController *)self _transitionAnimationContext];
  if (_transitionAnimationContext)
  {
    if ([(UINavigationController *)self _isViewControllerFullWidth])
    {
      v4 = +[UIDevice currentDevice];
      userInterfaceIdiom = [v4 userInterfaceIdiom];

      v6 = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1;
    }

    else
    {
      v6 = 0;
    }

    nextAnimationStyle = [_UIViewControllerKeyboardAnimationStyle animationStyleWithContext:_transitionAnimationContext useCustomTransition:v6];
    v9 = +[UIDevice currentDevice];
    userInterfaceIdiom2 = [v9 userInterfaceIdiom];

    if (userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1 || ([(UIViewController *)&self->super.super.super.isa _parentViewController], v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v11, (isKindOfClass))
    {
      [nextAnimationStyle setOutDirection:0];
    }

    _keyboardSceneDelegate = [(UIViewController *)self _keyboardSceneDelegate];
    hasTrackingAvailable = [_keyboardSceneDelegate hasTrackingAvailable];

    if (hasTrackingAvailable)
    {
      if (v6)
      {
        v15 = [objc_opt_class() _keyboardAnimationTypeForTransition:{-[UINavigationController _deferredTransition](self, "_deferredTransition")}];
      }

      else
      {
        v15 = 1;
      }

      [nextAnimationStyle setAnimationType:v15];
    }
  }

  else
  {
    _keyboardSceneDelegate2 = [(UIViewController *)self _keyboardSceneDelegate];
    nextAnimationStyle = [_keyboardSceneDelegate2 nextAnimationStyle];
  }

  return nextAnimationStyle;
}

- (BOOL)_hasNestedNavigationController
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(UINavigationController *)self _allowNestedNavigationControllers])
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    mutableChildViewControllers = [(UIViewController *)self mutableChildViewControllers];
    v4 = [mutableChildViewControllers countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(mutableChildViewControllers);
          }

          if ([*(*(&v8 + 1) + 8 * i) _isNestedNavigationController])
          {
            LOBYTE(v4) = 1;
            goto LABEL_13;
          }
        }

        v4 = [mutableChildViewControllers countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v4)
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
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (UIGestureRecognizer)interactiveContentPopGestureRecognizer
{
  interactionController = [(_UINavigationControllerVisualStyle *)self->_visualStyle interactionController];
  if (objc_opt_respondsToSelector())
  {
    contentSwipeGestureRecognizer = [interactionController contentSwipeGestureRecognizer];
  }

  else
  {
    contentSwipeGestureRecognizer = 0;
  }

  return contentSwipeGestureRecognizer;
}

- (id)_lastNavigationItems
{
  childViewControllersCount = [(UIViewController *)self childViewControllersCount];
  if (childViewControllersCount < 2)
  {
    v6 = 0;
  }

  else
  {
    v4 = childViewControllersCount;
    mutableChildViewControllers = [(UIViewController *)self mutableChildViewControllers];
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4 - 1];
    for (i = 1; i != v4; ++i)
    {
      v8 = [mutableChildViewControllers objectAtIndex:i];
      navigationItem = [v8 navigationItem];
      [v6 addObject:navigationItem];
    }
  }

  return v6;
}

- (UIGestureRecognizer)interactivePopGestureRecognizer
{
  interactionController = [(_UINavigationControllerVisualStyle *)self->_visualStyle interactionController];
  if (objc_opt_respondsToSelector())
  {
    edgeSwipeGestureRecognizer = [interactionController edgeSwipeGestureRecognizer];
  }

  else
  {
    edgeSwipeGestureRecognizer = 0;
  }

  return edgeSwipeGestureRecognizer;
}

- (id)_hostingNavigationBar
{
  if ([(UINavigationController *)self isNavigationBarHidden])
  {
    navigationBar = 0;
  }

  else
  {
    navigationBar = self->_navigationBar;
  }

  return navigationBar;
}

- (id)_uip_tabElement
{
  v6.receiver = self;
  v6.super_class = UINavigationController;
  _uip_tabElement = [(UIViewController *)&v6 _uip_tabElement];
  if (!_uip_tabElement)
  {
    bottomViewController = [(UINavigationController *)self bottomViewController];
    _uip_tabElement = [bottomViewController _uip_tabElement];
  }

  return _uip_tabElement;
}

- (CGSize)preferredContentSize
{
  [(UINavigationController *)self _preferredContentSizeForcingLoad:1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIViewController)visibleViewController
{
  presentedViewController = [(UIViewController *)self presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    visibleViewController = [presentedViewController visibleViewController];
LABEL_5:
    topViewController = visibleViewController;
LABEL_6:
    v6 = topViewController;
    visibleViewController2 = v6;
    goto LABEL_7;
  }

  if (presentedViewController)
  {
    visibleViewController = presentedViewController;
    goto LABEL_5;
  }

  topViewController = [(UINavigationController *)self topViewController];
  if (![topViewController _isNestedNavigationController])
  {
    goto LABEL_6;
  }

  visibleViewController2 = [topViewController visibleViewController];

  v6 = 0;
LABEL_7:

  return visibleViewController2;
}

- ($1AB5FA073B851C12C2339EC22442E995)_heightRangeOfTopViews
{
  topViewController = [(UINavigationController *)self topViewController];
  navigationItem = [topViewController navigationItem];
  [(UINavigationController *)self _intrinsicNavigationBarHeightRangeForNavItem:navigationItem];
  v6 = v5;
  v8 = v7;
  v10 = v9;

  topPalette = self->_topPalette;
  if (topPalette)
  {
    [(UIView *)topPalette frame];
    v6 = v6 + v12;
    v8 = v8 + v12;
    v10 = v10 + v12;
  }

  v13 = v6;
  v14 = v8;
  v15 = v10;
  result.var2 = v15;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- (BOOL)_viewControllerWasSelected
{
  topViewController = [(UINavigationController *)self topViewController];
  _viewControllerWasSelected = [topViewController _viewControllerWasSelected];

  return _viewControllerWasSelected;
}

- (BOOL)becomeFirstResponder
{
  topViewController = [(UINavigationController *)self topViewController];
  if (topViewController && (v4 = topViewController, -[UINavigationController topViewController](self, "topViewController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 canBecomeFirstResponder], v5, v4, v6))
  {
    topViewController2 = [(UINavigationController *)self topViewController];
    becomeFirstResponder = [topViewController2 becomeFirstResponder];

    return becomeFirstResponder;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UINavigationController;
    return [(UIResponder *)&v10 becomeFirstResponder];
  }
}

- (BOOL)_ignoreFinishingModalTransitionForFiles
{
  if (qword_1ED497968 != -1)
  {
    dispatch_once(&qword_1ED497968, &__block_literal_global_440);
  }

  return _MergedGlobals_92;
}

void __65__UINavigationController__ignoreFinishingModalTransitionForFiles__block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  _MergedGlobals_92 = [&unk_1EFE2BAE8 containsObject:v0];
}

- (BOOL)_hasPotentiallyChromelessBottomBar
{
  if (_UIBarsApplyChromelessEverywhere())
  {
    _existingActiveVisibleToolbar = [(UINavigationController *)self _existingActiveVisibleToolbar];

    if (_existingActiveVisibleToolbar)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v5 = [(UIViewController *)self _tabBarControllerEnforcingClass:1];
      v6 = v5;
      if (v5)
      {
        v4 = [v5 _isBarEffectivelyHidden] ^ 1;
      }

      else
      {
        LOBYTE(v4) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (int64_t)modalTransitionStyle
{
  modalTransitionStyle = self->super._modalTransitionStyle;
  if (modalTransitionStyle == -1)
  {
    topViewController = [(UINavigationController *)self topViewController];
    if (topViewController)
    {
      topViewController2 = [(UINavigationController *)self topViewController];
      modalTransitionStyle = [topViewController2 modalTransitionStyle];
    }

    else
    {
      modalTransitionStyle = 0;
    }
  }

  return modalTransitionStyle;
}

- (void)_releaseContainerViews
{
  delegate = [(UILayoutContainerView *)self->_containerView delegate];

  if (delegate == self)
  {
    [(UILayoutContainerView *)self->_containerView setDelegate:0];
  }

  containerView = self->_containerView;
  self->_containerView = 0;

  navigationTransitionView = self->_navigationTransitionView;
  self->_navigationTransitionView = 0;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    objc_setAssociatedObject(WeakRetained, &self->super.super.super.isa + 1, 0, 1);
  }

  [(UINavigationController *)self _setKeyboardAppearedNotificationToken:0];
  [(UINavigationController *)self _setBarSwipeHideGesture:0];
  [(UINavigationController *)self _setInteractiveAnimationCoordinator:0];
  [(UINavigationController *)self _setBarTapHideGesture:0];
  [(UINavigationController *)self _releaseContainerViews];
  [(UINavigationBar *)self->_navigationBar setLocked:0];
  delegate = [(UINavigationBar *)self->_navigationBar delegate];

  if (delegate == self)
  {
    [(UINavigationBar *)self->_navigationBar setDelegate:0];
  }

  [(UIGestureRecognizer *)self->_backGestureRecognizer setDelegate:0];
  [(_UIViewControllerTransitionConductor *)self->_transitionConductor setTransitionController:0];
  [(_UIViewControllerTransitionConductor *)self->_transitionConductor setInteractiveTransitionController:0];
  [(UINavigationController *)self _setToolbarAnimationId:0];
  scrollViewManager = self->_scrollViewManager;
  self->_scrollViewManager = 0;

  v7.receiver = self;
  v7.super_class = UINavigationController;
  [(UIViewController *)&v7 dealloc];
}

- (id)_additionalViewControllersToCheckForUserActivity
{
  v6[1] = *MEMORY[0x1E69E9840];
  topViewController = [(UINavigationController *)self topViewController];
  v3 = _UIStateRestorationDebugLogEnabled();
  if (topViewController)
  {
    if (v3)
    {
      NSLog(&cfstr_SNavigationcon.isa, "[UINavigationController(ActivityContinuationPrivate) _additionalViewControllersToCheckForUserActivity]", topViewController);
    }

    v6[0] = topViewController;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    if (v3)
    {
      NSLog(&cfstr_SNavigationcon_0.isa, "[UINavigationController(ActivityContinuationPrivate) _additionalViewControllersToCheckForUserActivity]");
    }

    v4 = 0;
  }

  return v4;
}

- (id)_viewControllerForDisappearCallback
{
  topViewController = [(UINavigationController *)self topViewController];
  if ((*&self->_navigationControllerFlags & 0xF0) != 0x20)
  {
    disappearingViewController = [(UINavigationController *)self disappearingViewController];

    if (disappearingViewController)
    {
      disappearingViewController2 = [(UINavigationController *)self disappearingViewController];

      topViewController = disappearingViewController2;
    }
  }

  return topViewController;
}

- (BOOL)_shouldUseBuiltinInteractionController
{
  topViewController = [(UINavigationController *)self topViewController];
  preferredTransition = [topViewController preferredTransition];

  if (!preferredTransition || (-[UIViewController traitCollection](self, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [preferredTransition _hasOwnInteractiveExitGestureForTraits:v5], v5, (v6 & 1) == 0))
  {
    if ([(UINavigationController *)self _isUsingBuiltinAnimator]|| ![(UINavigationController *)self _hasInterruptibleNavigationTransition])
    {
      if ([(UINavigationController *)self _isUsingBuiltinAnimator]&& ([(_UINavigationControllerVisualStyle *)self->_visualStyle interactionController], v7 = objc_claimAutoreleasedReturnValue(), v7, v7) || (navigationControllerFlags = self->_navigationControllerFlags, (navigationControllerFlags & 0xC00000) == 0))
      {
        v9 = 1;
        goto LABEL_12;
      }

      if ((navigationControllerFlags & 0x10000000) != 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v9 = [WeakRetained _navigationControllerShouldUseBuiltinInteractionController:self];

        goto LABEL_12;
      }
    }
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (BOOL)_isCurrentTransitionPreemptable
{
  _transitionController = [(UINavigationController *)self _transitionController];
  if (objc_opt_respondsToSelector())
  {
    transitionContext = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionContext];
    if ([transitionContext _state] && (objc_msgSend(transitionContext, "_transitionHasCompleted") & 1) == 0)
    {
      v5 = [_transitionController shouldPreemptWithContext:transitionContext];
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

- (id)_overridingPreferredFocusEnvironment
{
  v9.receiver = self;
  v9.super_class = UINavigationController;
  _overridingPreferredFocusEnvironment = [(UIViewController *)&v9 _overridingPreferredFocusEnvironment];
  if (!_overridingPreferredFocusEnvironment)
  {
    _existingView = [(UIViewController *)self _existingView];
    _window = [_existingView _window];

    if (!_window)
    {
      _overridingPreferredFocusEnvironment = 0;
      goto LABEL_10;
    }

    topViewController = [(UINavigationController *)self topViewController];
    v7 = [(UINavigationController *)self _recallRememberedFocusedItemForViewController:topViewController];
    if (v7)
    {
      if ([(UINavigationController *)self _canRestoreFocusAfterTransitionToRecalledItem:v7 inViewController:topViewController])
      {
        _overridingPreferredFocusEnvironment = v7;
LABEL_9:

        goto LABEL_10;
      }

      [(UINavigationController *)self _forgetFocusedItemForViewController:topViewController];
    }

    _overridingPreferredFocusEnvironment = 0;
    goto LABEL_9;
  }

LABEL_10:

  return _overridingPreferredFocusEnvironment;
}

- (id)_childViewControllersEligibleForOverridingPreferredFocusEnvironments
{
  v6[1] = *MEMORY[0x1E69E9840];
  topViewController = [(UINavigationController *)self topViewController];
  v3 = topViewController;
  if (topViewController)
  {
    v6[0] = topViewController;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (NSMapTable)_rememberedFocusedItemsByViewController
{
  rememberedFocusedItemsByViewController = self->_rememberedFocusedItemsByViewController;
  if (!rememberedFocusedItemsByViewController)
  {
    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    v5 = self->_rememberedFocusedItemsByViewController;
    self->_rememberedFocusedItemsByViewController = weakToWeakObjectsMapTable;

    rememberedFocusedItemsByViewController = self->_rememberedFocusedItemsByViewController;
  }

  return rememberedFocusedItemsByViewController;
}

- (id)preferredFocusEnvironments
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  topViewController = [(UINavigationController *)self topViewController];
  if (topViewController)
  {
    [v3 addObject:topViewController];
  }

  if (![(UINavigationController *)self isNavigationBarHidden])
  {
    navigationBar = [(UINavigationController *)self navigationBar];
    if (navigationBar)
    {
      [v3 addObject:navigationBar];
    }
  }

  v6 = _UIFocusEnvironmentPreferredNodeToFocusedItem(self, v3);
  if (v6)
  {
    firstObject = [v3 firstObject];
    v8 = firstObject;
    if (firstObject == v6)
    {
    }

    else
    {
      v9 = [v3 containsObject:v6];

      if (v9)
      {
        [v3 removeObject:v6];
        [v3 insertObject:v6 atIndex:0];
      }
    }
  }

  v13.receiver = self;
  v13.super_class = UINavigationController;
  preferredFocusEnvironments = [(UIViewController *)&v13 preferredFocusEnvironments];
  [v3 addObjectsFromArray:preferredFocusEnvironments];

  v11 = _UIFocusEnvironmentCombinedPreferredFocusEnvironments(self, v3, [(UINavigationController *)self _subclassPreferredFocusedViewPrioritizationType]);

  return v11;
}

- (id)preferredFocusedView
{
  topViewController = [(UINavigationController *)self topViewController];
  preferredFocusedView = [topViewController preferredFocusedView];
  v5 = preferredFocusedView;
  if (preferredFocusedView)
  {
    preferredFocusedView2 = preferredFocusedView;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UINavigationController;
    preferredFocusedView2 = [(UIViewController *)&v9 preferredFocusedView];
  }

  v7 = preferredFocusedView2;

  return v7;
}

- (int64_t)_subclassPreferredFocusedViewPrioritizationType
{
  if (!qword_1ED497958)
  {
    qword_1ED497958 = [UINavigationController instanceMethodForSelector:sel_preferredFocusedView];
    qword_1ED497960 = [UINavigationController instanceMethodForSelector:sel_preferredFocusEnvironments];
  }

  v3 = [(UINavigationController *)self methodForSelector:sel_preferredFocusedView];
  v4 = [(UINavigationController *)self methodForSelector:sel_preferredFocusEnvironments];
  if (v3)
  {
    v5 = v3 == qword_1ED497958;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  if (v4)
  {
    v7 = v4 == qword_1ED497960;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (BOOL)_shouldCrossFadeNavigationBarVisibility
{
  _nestedTopViewController = [(UINavigationController *)self _nestedTopViewController];
  v4 = _nestedTopViewController;
  if (_nestedTopViewController)
  {
    navigationController = [_nestedTopViewController navigationController];
    v6 = navigationController;
    if (navigationController == self)
    {
    }

    else
    {
      navigationController2 = [v4 navigationController];
      _isTransitioning = [navigationController2 _isTransitioning];

      if (_isTransitioning)
      {
        navigationController3 = [v4 navigationController];
        _shouldCrossFadeNavigationBarVisibility = [navigationController3 _shouldCrossFadeNavigationBarVisibility];

        goto LABEL_9;
      }
    }
  }

  if ([(UINavigationController *)self _shouldCrossFadeNavigationBar])
  {
    _shouldCrossFadeNavigationBarVisibility = 1;
  }

  else
  {
    _shouldCrossFadeNavigationBarVisibility = [(_UIViewControllerTransitionConductor *)self->_transitionConductor shouldCrossFadeNavigationBarVisibility];
  }

LABEL_9:

  return _shouldCrossFadeNavigationBarVisibility;
}

- (BOOL)_shouldCrossFadeNavigationBar
{
  if ([(UINavigationController *)self _isUsingBuiltinAnimator]&& [(_UINavigationControllerVisualStyle *)self->_visualStyle isUsingParallaxTransition])
  {
    return 0;
  }

  if ([(_UIViewControllerTransitionConductor *)self->_transitionConductor shouldCrossFadeNavigationBar])
  {
    return 1;
  }

  navigationControllerFlags = self->_navigationControllerFlags;
  if ((navigationControllerFlags & 0x4000000) == 0)
  {
    return (navigationControllerFlags & 0xC00000) != 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained _navigationControllerShouldCrossFadeNavigationBar:self];

  return v6;
}

void __98__UINavigationController__shouldSkipHostedRefreshControlUpdateSchedulingDeferredUpdateIfNecessary__block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performSkippedHostedRefreshControlUpdateSchedulingDeferredUpdateIfNecessary];
}

- (void)_performSkippedHostedRefreshControlUpdateSchedulingDeferredUpdateIfNecessary
{
  navigationControllerFlags = self->_navigationControllerFlags;
  if ((navigationControllerFlags & 0x100000000000000) != 0)
  {
    *&self->_navigationControllerFlags = navigationControllerFlags & 0xFEFFFFFFFFFFFFFFLL;
    v5 = [(UINavigationController *)self _topViewControllerObservableScrollViewForEdge:1];
    [(UINavigationController *)self _updateNavigationBarHostedRefreshControlToHostRefreshControlForScrollView:v5];
  }
}

+ (BOOL)doesOverridePreferredInterfaceOrientationForPresentation
{
  v3 = objc_opt_class();

  return [self doesOverrideViewControllerMethod:sel_preferredInterfaceOrientationForPresentation inBaseClass:v3];
}

- (void)_setToolbarClass:(Class)class
{
  if (class && ([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = NSStringFromClass(class);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:605 description:{@"%@ is not a subclass of UIToolbar", v7}];
  }

  self->_toolbarClass = class;
}

- (id)_effectiveInteractionActivityTrackingBaseName
{
  interactionActivityTrackingBaseName = [(UIViewController *)self interactionActivityTrackingBaseName];
  if (!interactionActivityTrackingBaseName)
  {
    if ([(UINavigationController *)self isMemberOfClass:objc_opt_class()])
    {
      topViewController = [(UINavigationController *)self topViewController];
      _effectiveInteractionActivityTrackingBaseName = [topViewController _effectiveInteractionActivityTrackingBaseName];

      if (_effectiveInteractionActivityTrackingBaseName)
      {
        interactionActivityTrackingBaseName = [@"UINC-" stringByAppendingString:_effectiveInteractionActivityTrackingBaseName];
      }

      else
      {
        interactionActivityTrackingBaseName = 0;
      }
    }

    else
    {
      v6 = objc_opt_class();
      interactionActivityTrackingBaseName = NSStringFromClass(v6);
    }
  }

  return interactionActivityTrackingBaseName;
}

- (void)_commonInitWithBuiltinTransitionGap:(double)gap
{
  v30[1] = *MEMORY[0x1E69E9840];
  if (!self->_navigationBarClass)
  {
    self->_navigationBarClass = objc_opt_class();
  }

  *&self->super._viewControllerFlags = *&self->super._viewControllerFlags & 0xFFFFFFFFFFF7FDFFLL | 0x200;
  self->_builtinTransitionGap = gap;
  *&self->_navigationControllerFlags &= ~0x8000000000uLL;
  v5 = dyld_program_sdk_at_least();
  v6 = 0x10000000000;
  if (!v5)
  {
    v6 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFEFFFFFFFFFFLL | v6;
  if ((_UIInternalPreferenceUsesDefault(&_MergedGlobals_929, @"PositionBarsExclusivelyWithSafeArea", _UIInternalPreferenceUpdateBool) & 1) == 0 && !byte_1ED48AC5C)
  {
    goto LABEL_10;
  }

  if (qword_1ED4979F8 != -1)
  {
    dispatch_once(&qword_1ED4979F8, &__block_literal_global_1790);
  }

  if (byte_1ED497909 != 1)
  {
    v7 = 1;
  }

  else
  {
LABEL_10:
    v7 = (byte_1ED48AC64 != 0) & ~_UIInternalPreferenceUsesDefault(&dword_1ED48AC60, @"ForcePositionBarsExclusivelyWithSafeArea", _UIInternalPreferenceUpdateBool);
  }

  self->__positionBarsExclusivelyWithSafeArea = v7;
  v8 = [[_UIViewControllerTransitionConductor alloc] initWithDelegate:self transitionManager:self->_transitionManager];
  transitionConductor = self->_transitionConductor;
  self->_transitionConductor = v8;

  [(_UIViewControllerTransitionConductor *)self->_transitionConductor setNeedsDeferredTransition:[(UIViewController *)self childViewControllersCount]!= 0];
  [(_UIViewControllerTransitionConductor *)self->_transitionConductor setDeferredTransitionType:0];
  v10 = objc_alloc_init(_UIScrollPocketCollectorInteraction);
  scrollPocketCollectorInteraction = self->_scrollPocketCollectorInteraction;
  self->_scrollPocketCollectorInteraction = v10;

  v12 = [[_UIScrollPocketContainerInteraction alloc] initWithScrollView:0 edge:1];
  navigationBarScrollPocketContainerInteraction = self->_navigationBarScrollPocketContainerInteraction;
  self->_navigationBarScrollPocketContainerInteraction = v12;

  [(_UIScrollPocketContainerInteraction *)self->_navigationBarScrollPocketContainerInteraction _setCollectorInteraction:self->_scrollPocketCollectorInteraction];
  v14 = [[_UIScrollPocketContainerInteraction alloc] initWithScrollView:0 edge:4];
  toolbarScrollPocketContainerInteraction = self->_toolbarScrollPocketContainerInteraction;
  self->_toolbarScrollPocketContainerInteraction = v14;

  [(_UIScrollPocketContainerInteraction *)self->_toolbarScrollPocketContainerInteraction _setCollectorInteraction:self->_scrollPocketCollectorInteraction];
  if (!qword_1ED497910)
  {
    qword_1ED497910 = [UINavigationController instanceMethodForSelector:sel_navigationBar];
    qword_1ED497918 = [UINavigationController instanceMethodForSelector:sel_toolbar];
  }

  v16 = [(UINavigationController *)self methodForSelector:sel_navigationBar];
  if (v16)
  {
    if (v16 != qword_1ED497910)
    {
      navigationBar = [(UINavigationController *)self navigationBar];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v19 = MEMORY[0x1E695DF30];
        v20 = *MEMORY[0x1E695D940];
        v21 = objc_opt_class();
        [v19 raise:v20 format:{@"An override of -[%@ navigationBar] is returning an object that is not a kind of UINavigationBar. navigationBarIMP: %s", v21, dyld_image_path_containing_address()}];
      }
    }
  }

  v22 = [(UINavigationController *)self methodForSelector:sel_toolbar];
  if (v22)
  {
    if (v22 != qword_1ED497918)
    {
      toolbar = [(UINavigationController *)self toolbar];
      objc_opt_class();
      v24 = objc_opt_isKindOfClass();

      if ((v24 & 1) == 0)
      {
        v25 = MEMORY[0x1E695DF30];
        v26 = *MEMORY[0x1E695D940];
        v27 = objc_opt_class();
        [v25 raise:v26 format:{@"An override of -[%@ toolbar] is returning an object that is not a kind of UIToolbar. toolbarIMP: %s", v27, dyld_image_path_containing_address()}];
      }
    }
  }

  v30[0] = 0x1EFE32398;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v29 = [(UIViewController *)self _registerForTraitTokenChanges:v28 withTarget:self action:sel__userInterfaceIdiomChanged];
}

- (void)didMoveToParentViewController:(id)controller
{
  v3.receiver = self;
  v3.super_class = UINavigationController;
  [(UIViewController *)&v3 didMoveToParentViewController:controller];
}

- (UINavigationController)initWithRootViewController:(UIViewController *)rootViewController
{
  v4 = rootViewController;
  if (dyld_program_sdk_at_least())
  {
    v8.receiver = self;
    v8.super_class = UINavigationController;
    v5 = [(UIViewController *)&v8 initWithNibName:0 bundle:0];
  }

  else
  {
    v5 = [(UINavigationController *)self initWithNibName:0 bundle:0];
  }

  v6 = v5;
  if (v5)
  {
    if (dyld_program_sdk_at_least())
    {
      [(UINavigationController *)v6 _commonNonCoderInit];
    }

    [(UINavigationController *)v6 pushViewController:v4 animated:0];
  }

  return v6;
}

- (UINavigationController)initWithNavigationBarClass:(Class)navigationBarClass toolbarClass:(Class)toolbarClass
{
  if (dyld_program_sdk_at_least())
  {
    v10.receiver = self;
    v10.super_class = UINavigationController;
    v7 = [(UIViewController *)&v10 initWithNibName:0 bundle:0];
  }

  else
  {
    v7 = [(UINavigationController *)self initWithNibName:0 bundle:0];
  }

  v8 = v7;
  if (v7)
  {
    [(UINavigationController *)v7 setNavigationBarClass:navigationBarClass];
    [(UINavigationController *)v8 _setToolbarClass:toolbarClass];
    if (dyld_program_sdk_at_least())
    {
      [(UINavigationController *)v8 _commonNonCoderInit];
    }
  }

  return v8;
}

- (UINavigationController)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  v7.receiver = self;
  v7.super_class = UINavigationController;
  v4 = [(UIViewController *)&v7 initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  v5 = v4;
  if (v4)
  {
    [(UINavigationController *)v4 _commonNonCoderInit];
  }

  return v5;
}

- (UINavigationController)initWithCoder:(NSCoder *)aDecoder
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = aDecoder;
  v30.receiver = self;
  v30.super_class = UINavigationController;
  v5 = [(UIViewController *)&v30 initWithCoder:v4];
  if (v5)
  {
    v6 = [(NSCoder *)v4 decodeObjectForKey:@"UINavigationBar"];
    v7 = *(v5 + 125);
    *(v5 + 125) = v6;

    delegate = [*(v5 + 125) delegate];

    isLocked = [*(v5 + 125) isLocked];
    v10 = isLocked;
    if (*(v5 + 125) && ((delegate == v5) & isLocked) == 0)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v28 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          v29 = *(v5 + 125);
          *buf = 138412546;
          v32 = v5;
          v33 = 2112;
          v34 = v29;
          _os_log_fault_impl(&dword_188A29000, v28, OS_LOG_TYPE_FAULT, "UINavigationBar decoded as unlocked for UINavigationController, or navigationBar delegate set up incorrectly. Inconsistent configuration may cause problems. navigationController=%@, navigationBar=%@", buf, 0x16u);
        }
      }

      else
      {
        v26 = *(__UILogGetCategoryCachedImpl("Assert", &initWithCoder____s_category) + 8);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = *(v5 + 125);
          *buf = 138412546;
          v32 = v5;
          v33 = 2112;
          v34 = v27;
          _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "UINavigationBar decoded as unlocked for UINavigationController, or navigationBar delegate set up incorrectly. Inconsistent configuration may cause problems. navigationController=%@, navigationBar=%@", buf, 0x16u);
        }
      }
    }

    v11 = *(v5 + 125);
    if (v11)
    {
      v12 = delegate == v5;
    }

    else
    {
      v12 = 0;
    }

    v13 = !v12;
    if (((v13 | v10) & 1) == 0)
    {
      [v11 _setDecodedUnlockedWithNavigationControllerDelegate:1];
    }

    v14 = [(NSCoder *)v4 decodeObjectForKey:@"UIToolbar"];
    v15 = *(v5 + 127);
    *(v5 + 127) = v14;

    v16 = [(NSCoder *)v4 decodeObjectForKey:@"UIDelegate"];
    objc_storeWeak(v5 + 137, v16);

    v17 = (v5 + 1288);
    *(v5 + 161) = *(v5 + 161) & 0xFFFFFFFFFFFFFFFELL | [(NSCoder *)v4 decodeBoolForKey:@"UINavigationBarHidden"];
    v18 = [(NSCoder *)v4 decodeBoolForKey:@"UIToolbarShown"];
    v19 = 2;
    if (!v18)
    {
      v19 = 0;
    }

    *v17 = *v17 & 0xFFFFFFFFFFFFFFFDLL | v19;
    *(v5 + 170) = [(NSCoder *)v4 decodeIntegerForKey:@"UINavigationControllerTransitionStyle"];
    if (*v17)
    {
      [*(v5 + 125) setHidden:1];
    }

    [(NSCoder *)v4 decodeFloatForKey:@"UINavigationControllerTransitionGap"];
    [v5 _commonInitWithBuiltinTransitionGap:v20];
    if ([(NSCoder *)v4 decodeBoolForKey:@"UINavigationControllerCondensesBarsWhenKeyboardAppears"])
    {
      [v5 setHidesBarsWhenKeyboardAppears:1];
    }

    if ([(NSCoder *)v4 decodeBoolForKey:@"UINavigationControllerCondensesBarsOnSwipe"])
    {
      [v5 setHidesBarsOnSwipe:1];
    }

    if ([(NSCoder *)v4 decodeBoolForKey:@"UINavigationControllerHidesBarsWhenVerticallyCompact"])
    {
      [v5 setHidesBarsWhenVerticallyCompact:1];
    }

    if ([(NSCoder *)v4 decodeBoolForKey:@"UINavigationControllerHidesBarsOnTap"])
    {
      [v5 setHidesBarsOnTap:1];
    }

    if ([(NSCoder *)v4 decodeBoolForKey:@"UINavigationControllerCreatedBySplitViewController"])
    {
      v5[1296] |= 2u;
    }

    v21 = *(v5 + 125);
    v22 = [v5 _navigationItemsCallingPublicAccessor:0];
    [v21 _setDecodedItems:v22];

    v23 = *(v5 + 174);
    if (v23)
    {
      viewControllers = [v5 viewControllers];
      [v23 configureWithInitialViewControllers:viewControllers];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = UINavigationController;
  [(UIViewController *)&v11 encodeWithCoder:coderCopy];
  navigationBar = self->_navigationBar;
  if (navigationBar)
  {
    [coderCopy encodeObject:navigationBar forKey:@"UINavigationBar"];
  }

  toolbar = self->_toolbar;
  if (toolbar)
  {
    [coderCopy encodeObject:toolbar forKey:@"UIToolbar"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    [coderCopy encodeConditionalObject:WeakRetained forKey:@"UIDelegate"];
  }

  navigationControllerFlags = self->_navigationControllerFlags;
  if (navigationControllerFlags)
  {
    [coderCopy encodeBool:1 forKey:@"UINavigationBarHidden"];
    navigationControllerFlags = self->_navigationControllerFlags;
  }

  if ((navigationControllerFlags & 2) != 0)
  {
    [coderCopy encodeBool:1 forKey:@"UIToolbarShown"];
  }

  builtinTransitionGap = self->_builtinTransitionGap;
  if (builtinTransitionGap != 0.0)
  {
    *&builtinTransitionGap = builtinTransitionGap;
    [coderCopy encodeFloat:@"UINavigationControllerTransitionGap" forKey:builtinTransitionGap];
  }

  builtinTransitionStyle = self->_builtinTransitionStyle;
  if (builtinTransitionStyle)
  {
    [coderCopy encodeInteger:builtinTransitionStyle forKey:@"UINavigationControllerTransitionStyle"];
  }

  if (self->_hidesBarsWhenKeyboardAppears)
  {
    [coderCopy encodeBool:1 forKey:@"UINavigationControllerCondensesBarsWhenKeyboardAppears"];
  }

  if (self->_hidesBarsOnSwipe)
  {
    [coderCopy encodeBool:1 forKey:@"UINavigationControllerCondensesBarsOnSwipe"];
  }

  if (self->_hidesBarsWhenVerticallyCompact)
  {
    [coderCopy encodeBool:1 forKey:@"UINavigationControllerHidesBarsWhenVerticallyCompact"];
  }

  if (self->_hidesBarsOnTap)
  {
    [coderCopy encodeBool:1 forKey:@"UINavigationControllerHidesBarsOnTap"];
  }

  if ((*(&self->_navigationControllerFlags + 8) & 2) != 0)
  {
    [coderCopy encodeBool:1 forKey:@"UINavigationControllerCreatedBySplitViewController"];
  }
}

- (void)setDelegate:(id)delegate
{
  v4 = delegate;
  if (!v4)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v5 = dyld_program_sdk_at_least();
  v6 = v4;
  if ((v5 & 1) == 0)
  {
    allowsWeakReference = [v4 allowsWeakReference];
    v6 = v4;
    if ((allowsWeakReference & 1) == 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __38__UINavigationController_setDelegate___block_invoke;
      block[3] = &unk_1E70F35B8;
      v46 = v4;
      selfCopy = self;
      if (setDelegate__once_0 != -1)
      {
        dispatch_once(&setDelegate__once_0, block);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v8 = v6;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = WeakRetained;
  if (WeakRetained != v8 || !v8 && (*(&self->_navigationControllerFlags + 4) & 1) != 0)
  {
    if (WeakRetained)
    {
      objc_setAssociatedObject(WeakRetained, &self->super.super.super.isa + 1, 0, 1);
    }

    objc_storeWeak(&self->_delegate, v8);
    v11 = v8;
    delegate = [(UINavigationController *)self delegate];
    v13 = delegate;
    if (v11 == delegate)
    {
      allowsWeakReference2 = [(UINavigationController *)self allowsWeakReference];

      v14 = (v11 != 0) << 32;
      if (v11 && allowsWeakReference2)
      {
        objc_initWeak(&location, self);
        v16 = [_UIWeakHelper alloc];
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __38__UINavigationController_setDelegate___block_invoke_269;
        v42[3] = &unk_1E70F5A28;
        objc_copyWeak(&v43, &location);
        v17 = [(_UIWeakHelper *)v16 initWithDeallocationBlock:v42];
        objc_setAssociatedObject(v11, &self->super.super.super.isa + 1, v17, 1);

        objc_destroyWeak(&v43);
        objc_destroyWeak(&location);
        v14 = 0x100000000;
      }
    }

    else
    {

      v14 = (v11 != 0) << 32;
    }

    *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFEFFFFFFFFLL | v14;
    v18 = objc_opt_respondsToSelector();
    v19 = 0x100000;
    if ((v18 & 1) == 0)
    {
      v19 = 0;
    }

    *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFFFFEFFFFFLL | v19;
    v20 = objc_opt_respondsToSelector();
    v21 = 0x200000;
    if ((v20 & 1) == 0)
    {
      v21 = 0;
    }

    *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFFFFDFFFFFLL | v21;
    v22 = objc_opt_respondsToSelector();
    v23 = 0x800000;
    if ((v22 & 1) == 0)
    {
      v23 = 0;
    }

    *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFFFF7FFFFFLL | v23;
    v24 = objc_opt_respondsToSelector();
    v25 = 0x400000;
    if ((v24 & 1) == 0)
    {
      v25 = 0;
    }

    *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFFFFBFFFFFLL | v25;
    v26 = objc_opt_respondsToSelector();
    v27 = 0x2000000;
    if ((v26 & 1) == 0)
    {
      v27 = 0;
    }

    *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFFFDFFFFFFLL | v27;
    v28 = objc_opt_respondsToSelector();
    v29 = 0x1000000;
    if ((v28 & 1) == 0)
    {
      v29 = 0;
    }

    *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFFFEFFFFFFLL | v29;
    v30 = objc_opt_respondsToSelector();
    v31 = 0x4000000;
    if ((v30 & 1) == 0)
    {
      v31 = 0;
    }

    *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFFFBFFFFFFLL | v31;
    v32 = objc_opt_respondsToSelector();
    v33 = 0x8000000;
    if ((v32 & 1) == 0)
    {
      v33 = 0;
    }

    *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFFF7FFFFFFLL | v33;
    v34 = objc_opt_respondsToSelector();
    v35 = 0x10000000;
    if ((v34 & 1) == 0)
    {
      v35 = 0;
    }

    *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFFEFFFFFFFLL | v35;
    v36 = objc_opt_respondsToSelector();
    v37 = 0x20000000;
    if ((v36 & 1) == 0)
    {
      v37 = 0;
    }

    *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFFDFFFFFFFLL | v37;
    v38 = objc_opt_respondsToSelector();
    v39 = 0x40000000;
    if ((v38 & 1) == 0)
    {
      v39 = 0;
    }

    *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFFBFFFFFFFLL | v39;
    v40 = objc_opt_respondsToSelector();
    v41 = 0x80000000;
    if ((v40 & 1) == 0)
    {
      v41 = 0;
    }

    *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFF7FFFFFFFLL | v41;
  }
}

void __38__UINavigationController_setDelegate___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &_UIInternalPreference_ForcePositionBarsExclusivelyWithSafeArea_block_invoke___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "You are trying to set a deallocating object as a delegate. This will be a hard crash in the future. Offending object: %@ hostObject: %@", &v5, 0x16u);
  }
}

void __38__UINavigationController_setDelegate___block_invoke_269(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    if (!v2)
    {
      [v3 setDelegate:0];
    }

    WeakRetained = v3;
  }
}

- (void)_setCrossfadingOutTabBar:(BOOL)bar
{
  v3 = 0x800000000;
  if (!bar)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFF7FFFFFFFFLL | v3;
}

- (void)_setCrossfadingInTabBar:(BOOL)bar
{
  v3 = 0x1000000000;
  if (!bar)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFEFFFFFFFFFLL | v3;
}

- (void)_setDidExplicitlyHideTabBar:(BOOL)bar
{
  v3 = 2048;
  if (!bar)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFFFFFFF7FFLL | v3;
}

- (void)_setUseStandardStatusBarHeight:(BOOL)height
{
  if (((((*(&self->_navigationControllerFlags + 4) & 0x40) == 0) ^ height) & 1) == 0)
  {
    heightCopy = height;
    _existingView = [(UIViewController *)self _existingView];
    window = [_existingView window];

    v7 = 0x4000000000;
    if (!heightCopy)
    {
      v7 = 0;
    }

    *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFBFFFFFFFFFLL | v7;
    v8 = 0.0;
    if (heightCopy)
    {
      windowScene = [window windowScene];
      _interfaceOrientation = [windowScene _interfaceOrientation];

      v11 = __UIStatusBarManagerForWindow(window);
      v12 = v11;
      if ((_interfaceOrientation - 1) > 3)
      {
        [v11 statusBarHeight];
      }

      else
      {
        [v11 defaultStatusBarHeightInOrientation:_interfaceOrientation];
      }

      v8 = v13;
    }

    self->_statusBarHeightForHideShow = v8;
    [(UINavigationBar *)self->_navigationBar _setOverrideBackgroundExtension:v8];
    if ((*&self->_navigationControllerFlags & 1) == 0 && ![(UIViewController *)self _freezeLayoutForOrientationChangeOnDismissal])
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __57__UINavigationController__setUseStandardStatusBarHeight___block_invoke;
      v14[3] = &unk_1E70F3590;
      v14[4] = self;
      [UIView performWithoutAnimation:v14];
    }
  }
}

uint64_t __57__UINavigationController__setUseStandardStatusBarHeight___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _positionNavigationBarHidden:0 edge:1 initialOffset:0.0];
  v2 = *(a1 + 32);

  return [v2 _positionPaletteHidden:0 edge:1 initialOffset:0.0];
}

- (void)setAllowUserInteractionDuringTransition:(BOOL)transition
{
  v3 = 0x8000000000;
  if (!transition)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFF7FFFFFFFFFLL | v3;
}

- (void)setEnableBackButtonDuringTransition:(BOOL)transition
{
  v3 = 0x10000000000;
  if (!transition)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFEFFFFFFFFFFLL | v3;
}

- (int)_transitionForOldViewControllers:(id)controllers newViewControllers:(id)viewControllers
{
  controllersCopy = controllers;
  lastObject = [viewControllers lastObject];
  v8 = [(UINavigationController *)self isMemberOfClass:objc_opt_class()];
  _existingView = [lastObject _existingView];
  if ((dyld_program_sdk_at_least() & 1) != 0 || (v8 & 1) != 0 || !_existingView)
  {
    if (!_existingView)
    {
LABEL_8:
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    [(UIViewController *)self loadViewIfNeeded];
  }

  if (![(UIViewController *)self isViewLoaded])
  {
    goto LABEL_8;
  }

  view = [(UIViewController *)self view];
  v11 = [_existingView isDescendantOfView:view];

LABEL_9:
  lastObject2 = [controllersCopy lastObject];

  if (lastObject == lastObject2 && (v11 & 1) != 0)
  {
    v13 = 0;
  }

  else if (v11 & 1 | (([controllersCopy containsObject:lastObject] & 1) == 0))
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  return v13;
}

- (int)_effectiveTransitionForTransition:(int)transition
{
  if (+[UIViewController _shouldDeferTransitions])
  {
    return transition;
  }

  else
  {
    return 0;
  }
}

- (void)setViewControllers:(NSArray *)viewControllers animated:(BOOL)animated
{
  v4 = animated;
  v7 = viewControllers;
  if (!self || (*(&self->super._viewControllerFlags + 4) & 0x80) == 0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__UINavigationController_setViewControllers_animated___block_invoke;
    aBlock[3] = &unk_1E7102830;
    aBlock[4] = self;
    v8 = _Block_copy(aBlock);
    _transitionCoordinator = [(UINavigationController *)self _transitionCoordinator];
    if (_transitionCoordinator)
    {
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __54__UINavigationController_setViewControllers_animated___block_invoke_2;
      v45[3] = &unk_1E7102880;
      v45[4] = self;
      v10 = v7;
      v46 = v10;
      v47 = v4;
      v11 = _Block_copy(v45);
      if ([(UINavigationController *)self _transitionConflictsWithNavigationTransitions:_transitionCoordinator])
      {
        if (!v4 && !+[UIViewController _shouldDeferTransitions]&& ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_NavigationControllerShouldImmediatelyApplyViewControllersWithConflictingTransition, @"NavigationControllerShouldImmediatelyApplyViewControllersWithConflictingTransition", _UIInternalPreferenceUpdateBool) & 1) != 0 || byte_1EA95E284))
        {
          v8[2](v8, v10, 0);
          goto LABEL_37;
        }

        v12 = NSStringFromSelector(a2);
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        NSLog(&cfstr_CalledOnPWhile.isa, v12, v14, self);

        goto LABEL_10;
      }

      if (!v4 && [_transitionCoordinator presentationStyle] != -1)
      {
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __54__UINavigationController_setViewControllers_animated___block_invoke_4;
        v42[3] = &unk_1E70F4A50;
        v44 = v8;
        v43 = v10;
        [UIViewController _performWithoutDeferringTransitions:v42];

        goto LABEL_37;
      }

      if ([(UINavigationController *)self _isCurrentTransitionPreemptable])
      {
        v34 = v11;
        transitionContext = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionContext];
        transitionController = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionController];
        transitionContext2 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionContext];
        v33 = transitionController;
        v17 = [transitionController preemptWithContext:transitionContext2];

        transitionContext3 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionContext];
        v19 = transitionContext3;
        if (transitionContext3)
        {
          v20 = v17;
          v21 = transitionContext;
          if (transitionContext3 != transitionContext)
          {
            v22 = *(__UILogGetCategoryCachedImpl("UINavigationController", &setViewControllers_animated____s_category) + 8);
            v11 = v34;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_DEFAULT, "A transition was started while preempting previous transition. Deferring new transition.", buf, 2u);
            }

            _transitionCoordinator2 = [(UINavigationController *)self _transitionCoordinator];
            v34[2](v34, _transitionCoordinator2);

            goto LABEL_36;
          }

          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:1249 description:@"Failed to preempt running transition."];
        }

        else
        {
          [(UIView *)self->_navigationBar layoutIfNeeded];
          [(_UIViewControllerTransitionConductor *)self->_transitionConductor setPendingPreemptionHandoffData:v17];
          v8[2](v8, v10, v4);
          v21 = transitionContext;
          v20 = v17;
        }

        v11 = v34;
LABEL_36:

        goto LABEL_37;
      }

      v11[2](v11, _transitionCoordinator);
      v12 = _transitionCoordinator;
      if (sel__addInvalidationHandler_)
      {
        transitionContext4 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionContext];
        [transitionContext4 _state];
        v28 = objc_opt_respondsToSelector();

        if (v28)
        {
          goto LABEL_32;
        }
      }

      else if (objc_opt_respondsToSelector())
      {
LABEL_32:
        v29 = [(UILayoutContainerView *)self->_containerView _disableUserInteractionForReason:@"setViewControllers"];
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __54__UINavigationController_setViewControllers_animated___block_invoke_308;
        v39[3] = &unk_1E70F3590;
        v40 = v29;
        v30 = v29;
        [v12 _addInvalidationHandler:v39];
      }

LABEL_10:

LABEL_37:
      v26 = v46;
      goto LABEL_38;
    }

    if ([(UINavigationController *)self _isTransitioning])
    {
      if (!v4)
      {
LABEL_26:
        v8[2](v8, v7, v4);
LABEL_39:

        goto LABEL_40;
      }
    }

    else if (![(UINavigationController *)self needsDeferredTransition]|| !v4)
    {
      goto LABEL_26;
    }

    v24 = dyld_program_sdk_at_least();
    v25 = UIApp;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __54__UINavigationController_setViewControllers_animated___block_invoke_2_309;
    v35[3] = &unk_1E71028A8;
    v37 = v8;
    v36 = v7;
    v38 = v4;
    [v25 _performAfterCATransactionCommitsWithLegacyRunloopObserverBasedTiming:v24 ^ 1u block:v35];

    v26 = v37;
LABEL_38:

    goto LABEL_39;
  }

LABEL_40:
}

void __54__UINavigationController_setViewControllers_animated___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (v5 && ([*(a1 + 32) mutableChildViewControllers], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToArray:", v6), v6, !v7) || !objc_msgSend(v5, "count") || (objc_msgSend(v5, "lastObject"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "view"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "view"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isDescendantOfView:", v10), v10, v9, v8, (v11 & 1) == 0))
  {
    v12 = *(a1 + 32);
    v13 = [v12 mutableChildViewControllers];
    v14 = [v12 _transitionForOldViewControllers:v13 newViewControllers:v5];

    v15 = v5;
    v16 = [v15 count];
    if (v16)
    {
      v17 = v16;
      v28 = v14;
      v29 = a3;
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = v17--;
        v21 = [v15 objectAtIndex:v17];
        if ([v21 useLayoutToLayoutNavigationTransitions])
        {
          if (v19)
          {
            [v19 addIndex:v17];
          }

          else
          {
            v19 = [MEMORY[0x1E696AD50] indexSetWithIndex:v17];
            if (v18)
            {
              [v18 addObject:v19];
            }

            else
            {
              v18 = [MEMORY[0x1E695DF70] arrayWithObject:v19];
            }
          }
        }

        else if (v19)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v19 addIndex:v17];
          }

          else
          {
            v22 = [v15 objectAtIndex:v20];
            [v22 _setUseLayoutToLayoutNavigationTransitions:0 withCheck:0];
            [v19 addIndex:v20];
          }

          v19 = 0;
        }
      }

      while (v17);
      if (v19)
      {
        v23 = [v15 objectAtIndex:0];
        [v23 _setUseLayoutToLayoutNavigationTransitions:0 withCheck:0];
        [v19 addIndex:0];
      }

      a3 = v29;
      if (v18)
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v18 = v18;
        v24 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v31;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v31 != v26)
              {
                objc_enumerationMutation(v18);
              }

              [*(a1 + 32) _prepareCollectionViewControllers:v15 forSharingInRange:*(*(&v30 + 1) + 8 * i)];
            }

            v25 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
          }

          while (v25);
        }
      }

      v14 = v28;
    }

    else
    {

      v18 = 0;
    }

    [*(a1 + 32) _setViewControllers:v15 transition:v14 animated:a3];
  }
}

void __54__UINavigationController_setViewControllers_animated___block_invoke_2(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__UINavigationController_setViewControllers_animated___block_invoke_3;
  v5[3] = &unk_1E7102858;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [a2 animateAlongsideTransition:0 completion:v5];
}

- (void)_setAllowNestedNavigationControllers:(BOOL)controllers
{
  v3 = 0x40000000000;
  if (!controllers)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFBFFFFFFFFFFLL | v3;
}

- (void)_setIsNestedNavigationController:(BOOL)controller
{
  v3 = 0x800000000000;
  if (!controller)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFF7FFFFFFFFFFFLL | v3;
}

- (id)_navigationItemsCallingPublicAccessor:(BOOL)accessor
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  mutableChildViewControllers = [(UIViewController *)self mutableChildViewControllers];
  v7 = [mutableChildViewControllers countByEnumeratingWithState:&v28 objects:v33 count:16];
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
          objc_enumerationMutation(mutableChildViewControllers);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        if (accessor)
        {
          [v11 navigationItem];
        }

        else
        {
          [v11 _navigationItemCreatingDefaultIfNotSet];
        }
        v12 = ;
        if ((dyld_program_sdk_at_least() & 1) != 0 || v12)
        {
          [v5 addObject:v12];
        }
      }

      v8 = [mutableChildViewControllers countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v8);
  }

  topViewController = [(UINavigationController *)self topViewController];
  if ([topViewController _isNestedNavigationController])
  {
    v14 = topViewController;
    _outermostNavigationController = [v14 _outermostNavigationController];
    _outermostNavigationController2 = [(UINavigationController *)self _outermostNavigationController];

    if (_outermostNavigationController == _outermostNavigationController2)
    {
      _navigationItems = [v14 _navigationItems];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v18 = [_navigationItems countByEnumeratingWithState:&v24 objects:v32 count:16];
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
              objc_enumerationMutation(_navigationItems);
            }

            v22 = *(*(&v24 + 1) + 8 * j);
            if (([v5 containsObject:v22] & 1) == 0)
            {
              [v5 addObject:v22];
            }
          }

          v19 = [_navigationItems countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v19);
      }
    }
  }

  return v5;
}

- (void)_setViewControllers:(id)controllers transition:(int)transition animated:(BOOL)animated operation:(int64_t)operation
{
  animatedCopy = animated;
  v8 = *&transition;
  controllersCopy = controllers;
  v12 = [MEMORY[0x1E695DFD8] setWithArray:controllersCopy];
  v13 = [v12 count];
  v14 = [controllersCopy count];

  if (v13 != v14)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:1432 description:{@"All view controllers in a navigation controller must be distinct (%@)", controllersCopy}];
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __76__UINavigationController__setViewControllers_transition_animated_operation___block_invoke;
  v21[3] = &unk_1E71028D0;
  v21[4] = self;
  v21[5] = a2;
  [controllersCopy enumerateObjectsUsingBlock:v21];
  if (!v8)
  {
    mutableChildViewControllers = [(UIViewController *)self mutableChildViewControllers];
    v8 = [(UINavigationController *)self _transitionForOldViewControllers:mutableChildViewControllers newViewControllers:controllersCopy];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__UINavigationController__setViewControllers_transition_animated_operation___block_invoke_2;
  aBlock[3] = &unk_1E70F45F8;
  v20 = controllersCopy;
  v16 = controllersCopy;
  v17 = _Block_copy(aBlock);
  [(UINavigationController *)self _applyViewControllers:v17 transition:v8 animated:animatedCopy operation:operation rescheduleBlock:0];
}

void __76__UINavigationController__setViewControllers_transition_animated_operation___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass & 1) != 0 && ![*(a1 + 32) _allowNestedNavigationControllers] || (objc_opt_class(), (objc_opt_isKindOfClass()) && ((v4 = *(a1 + 32)) == 0 || (*(v4 + 1293) & 8) == 0))
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = v5;
    v7 = @"UISplitViewControllers";
    if (isKindOfClass)
    {
      v7 = @"UINavigationControllers";
    }

    [v5 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"UINavigationController.m" lineNumber:1438 description:{@"%@ are not allowed in a navigation controller!", v7}];
  }
}

- (void)_setViewControllers:(id)controllers transition:(int)transition
{
  v4 = *&transition;
  controllersCopy = controllers;
  v6 = v4;
  if (!v4)
  {
    mutableChildViewControllers = [(UIViewController *)self mutableChildViewControllers];
    v6 = [(UINavigationController *)self _transitionForOldViewControllers:mutableChildViewControllers newViewControllers:controllersCopy];
  }

  [(UINavigationController *)self _setViewControllers:controllersCopy transition:v6 animated:v4 != 0];
}

- (void)removeChildViewController:(id)controller notifyDidMove:(BOOL)move
{
  moveCopy = move;
  v11.receiver = self;
  v11.super_class = UINavigationController;
  controllerCopy = controller;
  [(UIViewController *)&v11 removeChildViewController:controllerCopy notifyDidMove:moveCopy];
  _viewControllerForObservableScrollView = [controllerCopy _viewControllerForObservableScrollView];

  v8 = [_viewControllerForObservableScrollView _contentOrObservableScrollViewForEdge:1];
  v9 = [_viewControllerForObservableScrollView _contentOrObservableScrollViewForEdge:4];
  if ([v8 _isScrollViewScrollObserver:self])
  {
    [(UINavigationController *)self _stopObservingContentScrollView:v8];
LABEL_6:
    topViewController = [(UINavigationController *)self topViewController];
    [(UINavigationController *)self _resetScrollViewObservingForViewController:topViewController];

    goto LABEL_7;
  }

  if (v9 != v8 && [v9 _isScrollViewScrollObserver:self])
  {
    [v9 _removeScrollViewScrollObserver:self];
    goto LABEL_6;
  }

LABEL_7:
}

- (void)_applyViewControllers:(id)controllers transition:(int)transition animated:(BOOL)animated operation:(int64_t)operation rescheduleBlock:(id)block
{
  animatedCopy = animated;
  controllersCopy = controllers;
  blockCopy = block;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__UINavigationController__applyViewControllers_transition_animated_operation_rescheduleBlock___block_invoke;
  aBlock[3] = &unk_1E71028F8;
  v15 = controllersCopy;
  aBlock[4] = self;
  v48 = v15;
  transitionCopy = transition;
  v51 = animatedCopy;
  operationCopy = operation;
  v16 = _Block_copy(aBlock);
  _transitionCoordinator = [(UINavigationController *)self _transitionCoordinator];
  if (_transitionCoordinator)
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __94__UINavigationController__applyViewControllers_transition_animated_operation_rescheduleBlock___block_invoke_2;
    v41[3] = &unk_1E7102948;
    v41[4] = self;
    v42 = blockCopy;
    transitionCopy2 = transition;
    v46 = animatedCopy;
    v43 = v15;
    operationCopy2 = operation;
    v18 = _Block_copy(v41);
    if ([(UINavigationController *)self _transitionConflictsWithNavigationTransitions:_transitionCoordinator])
    {
      if (!animatedCopy && !+[UIViewController _shouldDeferTransitions]&& ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_NavigationControllerShouldImmediatelyApplyViewControllersWithConflictingTransition, @"NavigationControllerShouldImmediatelyApplyViewControllersWithConflictingTransition", _UIInternalPreferenceUpdateBool) & 1) != 0 || byte_1EA95E284))
      {
        v16[2](v16);
        goto LABEL_37;
      }

      v19 = NSStringFromSelector(a2);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      NSLog(&cfstr_CalledOnPWhile.isa, v19, v21, self);

      goto LABEL_8;
    }

    if (!animatedCopy && [_transitionCoordinator presentationStyle] != -1)
    {
      [UIViewController _performWithoutDeferringTransitions:v16];
      goto LABEL_37;
    }

    if ([(UINavigationController *)self _isCurrentTransitionPreemptable])
    {
      transitionContext = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionContext];
      transitionController = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionController];
      transitionContext2 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionContext];
      v37 = transitionController;
      v25 = [transitionController preemptWithContext:transitionContext2];

      transitionContext3 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionContext];
      v27 = transitionContext3;
      if (transitionContext3)
      {
        if (transitionContext3 == transitionContext)
        {
          if (os_variant_has_internal_diagnostics())
          {
            v36 = __UIFaultDebugAssertLog();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_188A29000, v36, OS_LOG_TYPE_FAULT, "Failed to preempt running transition.", buf, 2u);
            }
          }

          else
          {
            v35 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED497928) + 8);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_188A29000, v35, OS_LOG_TYPE_ERROR, "Failed to preempt running transition.", buf, 2u);
            }
          }

          v18[2](v18, _transitionCoordinator);
        }

        else
        {
          v28 = transitionContext3;
          v29 = *(__UILogGetCategoryCachedImpl("UINavigationController", &qword_1ED497920) + 8);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_DEFAULT, "A transition was started while preempting previous transition. Deferring new transition.", buf, 2u);
          }

          _transitionCoordinator2 = [(UINavigationController *)self _transitionCoordinator];
          v18[2](v18, _transitionCoordinator2);

          v27 = v28;
        }
      }

      else
      {
        [(UIView *)self->_navigationBar layoutIfNeeded];
        [(_UIViewControllerTransitionConductor *)self->_transitionConductor setPendingPreemptionHandoffData:v25];
        v16[2](v16);
      }

      goto LABEL_37;
    }

    v18[2](v18, _transitionCoordinator);
    v19 = _transitionCoordinator;
    if (sel__addInvalidationHandler_)
    {
      transitionContext4 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionContext];
      [transitionContext4 _state];
      v32 = objc_opt_respondsToSelector();

      if (v32)
      {
        goto LABEL_30;
      }
    }

    else if (objc_opt_respondsToSelector())
    {
LABEL_30:
      v33 = [(UILayoutContainerView *)self->_containerView _disableUserInteractionForReason:@"_applyViewControllers"];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __94__UINavigationController__applyViewControllers_transition_animated_operation_rescheduleBlock___block_invoke_335;
      v38[3] = &unk_1E70F3590;
      v39 = v33;
      v34 = v33;
      [v19 _addInvalidationHandler:v38];
    }

LABEL_8:

LABEL_37:
    goto LABEL_38;
  }

  if ([(UINavigationController *)self _isTransitioning])
  {
    if (!animatedCopy)
    {
LABEL_24:
      v16[2](v16);
      goto LABEL_38;
    }
  }

  else if (![(UINavigationController *)self needsDeferredTransition]|| !animatedCopy)
  {
    goto LABEL_24;
  }

  [UIApp _performBlockAfterCATransactionCommits:v16];
LABEL_38:
}

void __94__UINavigationController__applyViewControllers_transition_animated_operation_rescheduleBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) childViewControllers];
  v4 = (*(v2 + 16))(v2, v3);

  [*(a1 + 32) _immediatelyApplyViewControllers:v4 transition:*(a1 + 56) animated:*(a1 + 60) operation:*(a1 + 48)];
}

void __94__UINavigationController__applyViewControllers_transition_animated_operation_rescheduleBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __94__UINavigationController__applyViewControllers_transition_animated_operation_rescheduleBlock___block_invoke_3;
    v13[3] = &unk_1E70F3770;
    v14 = v3;
    [a2 animateAlongsideTransition:0 completion:v13];
    v4 = v14;
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __94__UINavigationController__applyViewControllers_transition_animated_operation_rescheduleBlock___block_invoke_4;
    v8[3] = &unk_1E7102920;
    v8[4] = *(a1 + 32);
    v6 = *(a1 + 48);
    v11 = *(a1 + 64);
    v12 = *(a1 + 68);
    v7 = *(a1 + 56);
    v9 = v6;
    v10 = v7;
    [a2 animateAlongsideTransition:0 completion:v8];
    v4 = v9;
  }
}

- (void)_immediatelyApplyViewControllers:(id)controllers transition:(int)transition animated:(BOOL)animated operation:(int64_t)operation
{
  animatedCopy = animated;
  v134 = *MEMORY[0x1E69E9840];
  controllersCopy = controllers;
  navigationControllerFlags = self->_navigationControllerFlags;
  _existingView = [(UIViewController *)self _existingView];
  window = [_existingView window];

  v104 = animatedCopy && [(UINavigationController *)self _isAppearingOrAppearedCheck];
  childViewControllers = [(UIViewController *)self childViewControllers];
  if (operation == 3)
  {
    v11 = controllersCopy;
    v9 = controllersCopy;
    v10 = childViewControllers;
  }

  else
  {
    v9 = [controllersCopy arrayByExcludingObjectsInArray:childViewControllers];
    v10 = [childViewControllers arrayByExcludingObjectsInArray:controllersCopy];
    v11 = controllersCopy;
  }

  v88 = v9;
  v89 = [v9 count];
  lastObject = [v11 lastObject];
  topViewController = [(UINavigationController *)self topViewController];

  if (topViewController == lastObject)
  {
    v99 = window == 0;
    *&self->_navigationControllerFlags &= ~0x100uLL;
    [(_UIViewControllerTransitionConductor *)self->_transitionConductor setDeferredTransitionType:0];
    v104 = 0;
    v97 = 0;
    v87 = transition != 0;
  }

  else if (window)
  {
    disappearingViewController = [(UINavigationController *)self disappearingViewController];
    if (disappearingViewController)
    {

      v99 = 0;
      v87 = 0;
      v97 = 0;
    }

    else
    {
      v99 = 0;
      if ([(UINavigationController *)self needsDeferredTransition]|| (navigationControllerFlags & 4) != 0)
      {
        v14 = 0;
        v87 = 0;
      }

      else
      {
        topViewController2 = [(UINavigationController *)self topViewController];
        [(UINavigationController *)self setDisappearingViewController:topViewController2];

        v99 = 0;
        v87 = 0;
        v14 = 1;
      }

      v97 = v14;
    }
  }

  else
  {
    v87 = 0;
    v97 = 0;
    v99 = 1;
  }

  disappearingViewController2 = [(UINavigationController *)self disappearingViewController];
  if (disappearingViewController2)
  {

LABEL_20:
    topViewController3 = [(UINavigationController *)self topViewController];

    topViewController5 = 0;
    v104 = (topViewController3 != 0) & v104;
    transitionCopy = transition;
    if (!topViewController3)
    {
      transitionCopy = 0;
    }

    transition = transitionCopy;
    goto LABEL_25;
  }

  topViewController4 = [(UINavigationController *)self topViewController];

  if (!topViewController4)
  {
    goto LABEL_20;
  }

  topViewController5 = [(UINavigationController *)self topViewController];
LABEL_25:
  v19 = v97 ^ 1;
  if (operation != 2)
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    mutableChildViewControllers = [(UIViewController *)self mutableChildViewControllers];
    lastObject2 = [mutableChildViewControllers lastObject];
    cleanupHelper = self->_cleanupHelper;
    if (cleanupHelper || (v23 = [[_UIUnsafeUnretainedCleanupHelper alloc] initWithParent:&__block_literal_global_346 deallocationHandler:?], v24 = self->_cleanupHelper, self->_cleanupHelper = v23, v24, (cleanupHelper = self->_cleanupHelper) != 0))
    {
      [(NSHashTable *)cleanupHelper->_children addObject:lastObject2];
    }

    [mutableChildViewControllers removeLastObject];
  }

  v25 = dyld_program_sdk_at_least();
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  obj = v10;
  v26 = [obj countByEnumeratingWithState:&v128 objects:v133 count:16];
  if (v26)
  {
    v27 = *v129;
    v29 = topViewController == lastObject || v89 != 0;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v129 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v128 + 1) + 8 * i);
        if (([controllersCopy containsObject:v31] & 1) == 0)
        {
          disappearingViewController3 = [(UINavigationController *)self disappearingViewController];
          v33 = v31 != disappearingViewController3;

          disappearingViewController4 = [(UINavigationController *)self disappearingViewController];
          if (v31 == disappearingViewController4)
          {
            v32 = v97;
          }

          else
          {
            v32 = 0;
          }

          if (v32)
          {
            *&self->_navigationControllerFlags |= 0x2000000000000uLL;
LABEL_51:
            [v31 willMoveToParentViewController:0];
            goto LABEL_52;
          }

          if (v31 != disappearingViewController3)
          {
            v33 = 1;
            goto LABEL_51;
          }
        }

        v32 = 0;
        v33 = 0;
LABEL_52:
        if (!v29)
        {
          lastObject3 = [obj lastObject];
          v37 = v31 == lastObject3;

          if (v37)
          {
            if (v99 | ((dyld_program_sdk_at_least() & 1) == 0))
            {
              [(UIViewController *)self _invalidatePreferences:0 excluding:?];
            }

            else
            {
              objc_initWeak(&location, self);
              v125[0] = MEMORY[0x1E69E9820];
              v125[1] = 3221225472;
              v125[2] = __89__UINavigationController__immediatelyApplyViewControllers_transition_animated_operation___block_invoke;
              v125[3] = &unk_1E71020D0;
              objc_copyWeak(&v126, &location);
              [(UIViewController *)lastObject _performAtViewIsAppearing:v125];
              objc_destroyWeak(&v126);
              objc_destroyWeak(&location);
            }
          }
        }

        if ([v31 _isNestedNavigationController] & v33)
        {
          [v31 _prepareForNormalDisplayWithNavigationController:self];
        }

        if (v104 & v32 & v25)
        {
          *&self->_navigationControllerFlags |= 0x4000000000000uLL;
        }

        else
        {
          [(UINavigationController *)self removeChildViewController:v31 notifyDidMove:v33];
        }
      }

      v26 = [obj countByEnumeratingWithState:&v128 objects:v133 count:16];
    }

    while (v26);
  }

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v38 = v88;
  v39 = [v38 countByEnumeratingWithState:&v121 objects:v132 count:16];
  if (!v39)
  {
    goto LABEL_92;
  }

  v40 = *v122;
  v41 = MEMORY[0x1E69E9820];
  do
  {
    for (j = 0; j != v39; ++j)
    {
      if (*v122 != v40)
      {
        objc_enumerationMutation(v38);
      }

      v43 = *(*(&v121 + 1) + 8 * j);
      v44 = [obj containsObject:v43];
      if ((v44 & 1) == 0 && [(UINavigationController *)self _allowNestedNavigationControllers])
      {
        [v43 _prepareForNestedDisplayWithNavigationController:self];
      }

      [(UIViewController *)self _addChildViewController:v43 performHierarchyCheck:0 notifyWillMove:v44 ^ 1u];
      v45 = lastObject;
      if (v43 == lastObject && topViewController != lastObject)
      {
        if (v99 | ((dyld_program_sdk_at_least() & 1) == 0))
        {
          v45 = lastObject;
          if (!self)
          {
            goto LABEL_81;
          }

          [(UIViewController *)self _invalidatePreferences:0 excluding:?];
        }

        else
        {
          objc_initWeak(&location, self);
          v119[0] = v41;
          v119[1] = 3221225472;
          v119[2] = __89__UINavigationController__immediatelyApplyViewControllers_transition_animated_operation___block_invoke_2;
          v119[3] = &unk_1E71020D0;
          objc_copyWeak(&v120, &location);
          [(UIViewController *)v43 _performAtViewIsAppearing:v119];
          objc_destroyWeak(&v120);
          objc_destroyWeak(&location);
        }

        v45 = lastObject;
      }

LABEL_81:
      if (v43 == v45)
      {
        v47 = 1;
      }

      else
      {
        v47 = v44;
      }

      if ((v47 & 1) == 0)
      {
        [v43 didMoveToParentViewController:self];
        v45 = lastObject;
      }

      v48 = v44 ^ 1;
      if (v43 != v45)
      {
        v48 = 1;
      }

      if ((v48 & 1) == 0)
      {
        [(UINavigationController *)self _resetScrollViewObservingForViewController:?];
      }
    }

    v39 = [v38 countByEnumeratingWithState:&v121 objects:v132 count:16];
  }

  while (v39);
LABEL_92:

  if (![(UINavigationController *)self _isNestedNavigationController])
  {
    [(UINavigationBar *)self->_navigationBar _redisplayItems];
  }

  [UIApp _deactivateReachability];
  if (topViewController5)
  {
    parentViewController = [topViewController5 parentViewController];
    if (parentViewController)
    {
      goto LABEL_98;
    }

    if (([UIApp _isSpringBoard] & 1) == 0)
    {
      parentViewController = [topViewController5 _existingView];
      superview = [parentViewController superview];
      [superview removeFromSuperview];

LABEL_98:
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__UINavigationController__immediatelyApplyViewControllers_transition_animated_operation___block_invoke_3;
  aBlock[3] = &unk_1E7102990;
  aBlock[4] = self;
  v100 = v38;
  v113 = v100;
  v51 = obj;
  v114 = v51;
  v118 = v104;
  transitionCopy2 = transition;
  v52 = controllersCopy;
  v115 = v52;
  v53 = lastObject;
  v116 = v53;
  v54 = _Block_copy(aBlock);
  if (self)
  {
    transitionManager = self->_transitionManager;
  }

  else
  {
    transitionManager = 0;
  }

  v56 = transitionManager;

  if (v56)
  {
    if (self)
    {
      v57 = self->_transitionManager;
    }

    else
    {
      v57 = 0;
    }

    v58 = v57;
    [(_UIViewControllerTransitionManager *)v58 applyViewControllers:v52];
  }

  v59 = v87;
  if (topViewController != lastObject)
  {
    v59 = 1;
  }

  if (v59 == 1)
  {
    v60 = window != 0;
    operationCopy = 2;
    if (transition != 2)
    {
      operationCopy = 3;
    }

    if (transition == 1)
    {
      operationCopy = 1;
    }

    if (operation != 3)
    {
      operationCopy = operation;
    }

    v98 = operationCopy;
    v62 = [(UINavigationController *)self _effectiveTransitionForTransition:?];
    v103 = (v62 != 0) & v104;
    v63 = 256;
    if ((v60 & v103) == 0)
    {
      v63 = 0;
    }

    *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFFFFFFFE0FLL | (16 * (v98 & 0xF)) | v63;
    if ((v60 & v103) != 0)
    {
      v64 = v62;
    }

    else
    {
      v64 = 0;
    }

    [(_UIViewControllerTransitionConductor *)self->_transitionConductor setDeferredTransitionType:v64];
    if ((navigationControllerFlags >> 2))
    {
      v66 = operation != 3 && v89 != 0;
      obja = _Block_copy(v54);
    }

    else
    {
      [(UINavigationController *)self setNeedsDeferredTransition];
      obja = _Block_copy(v54);
      if (v103)
      {
        *&self->_navigationControllerFlags |= 0x20000uLL;
        v69 = [(UINavigationController *)self _customTransitionController:1];
        [(_UIViewControllerTransitionConductor *)self->_transitionConductor setTransitionController:v69];
        v70 = [_UIViewControllerTransitionContext _associatedTransitionContextForAnimationController:v69];
        if (v70 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v71 = [v69 shouldPreemptWithContext:v70];
        }

        else
        {
          v71 = 0;
        }

        v95 = [(UINavigationController *)self allowUserInteractionDuringTransition]| v71;
        [v70 _setAllowUserInteraction:v95 & 1];
        disappearingViewController5 = [(UINavigationController *)self disappearingViewController];
        [(UINavigationController *)self _presentationTransitionWrapViewController:disappearingViewController5 forTransitionContext:v70];

        if (v70)
        {
          v101 = [(UINavigationController *)self _customInteractionController:v70];
          [(_UIViewControllerTransitionConductor *)self->_transitionConductor setInteractiveTransitionController:v101];
          [v69 transitionDuration:v70];
          [(_UIViewControllerTransitionConductor *)self->_transitionConductor setCustomNavigationTransitionDuration:?];
          [(_UIViewControllerTransitionConductor *)self->_transitionConductor customNavigationTransitionDuration];
          [v70 _setDuration:?];
          v108[0] = MEMORY[0x1E69E9820];
          v108[1] = 3221225472;
          v108[2] = __89__UINavigationController__immediatelyApplyViewControllers_transition_animated_operation___block_invoke_6;
          v108[3] = &unk_1E70F3798;
          v111 = v95 & 1;
          v108[4] = self;
          v109 = v70;
          v110 = v54;
          v76 = _Block_copy(v108);

          obja = v76;
        }

        v66 = 1;
      }

      else
      {
        disappearingViewController6 = [(UINavigationController *)self disappearingViewController];
        [(UINavigationController *)self _presentationTransitionWrapViewController:disappearingViewController6 forTransitionContext:0];

        if (!self->_navigationBar && ([(UIViewController *)self _existingView], v73 = objc_claimAutoreleasedReturnValue(), v74 = v73 == 0, v73, v74))
        {
          v66 = operation != 3 && v89 != 0;
        }

        else
        {
          v54[2](v54);
          v66 = 0;
        }

        [(UINavigationController *)self _propagateContentAdjustmentsForControllersWithSharedViews];
      }
    }

    _existingToolbar = [(UINavigationController *)self _existingToolbar];

    if (_existingToolbar)
    {
      _navigationToolbarTransitionController = [(UINavigationController *)self _navigationToolbarTransitionController];
      _existingToolbar2 = [(UINavigationController *)self _existingToolbar];
      [_navigationToolbarTransitionController prepareTransitionWithToolbar:_existingToolbar2];
    }

    [(UINavigationController *)self _hideOrShowBottomBarIfNeededWithTransition:v64];
    _existingTabBarItem = [(UIViewController *)self _existingTabBarItem];
    if ([_existingTabBarItem isSystemItem])
    {
LABEL_151:
    }

    else
    {
      v81 = [(UINavigationController *)self tab];
      v82 = v81 == 0;

      if (v82)
      {
        bottomViewController = [(UINavigationController *)self bottomViewController];
        _existingTabBarItem = [bottomViewController title];

        v84 = [_existingTabBarItem length];
        if (v98 == 1 && v84 && ![childViewControllers count])
        {
          [(UIViewController *)self setTitle:_existingTabBarItem];
        }

        v85 = self->super._parentViewController;
        [(UIViewController *)v85 updateTabBarItemForViewController:self];

        goto LABEL_151;
      }
    }

    if (v66)
    {
      [(UINavigationController *)self _executeNavigationHandler:obja deferred:1];
    }

    if (((+[UIViewController _shouldDeferTransitions]| v103) & 1) == 0)
    {
      [(_UIViewControllerTransitionConductor *)self->_transitionConductor setTransitionController:0];
      [(_UIViewControllerTransitionConductor *)self->_transitionConductor startDeferredTransitionIfNeeded];
    }
  }

  else if (self->_navigationBar || ([(UIViewController *)self _existingView], v67 = objc_claimAutoreleasedReturnValue(), v68 = v67 == 0, v67, !v68))
  {
    v54[2](v54);
  }

  if (topViewController != lastObject)
  {
    [(UINavigationController *)self _updateEnclosingSplitViewControllerForTopViewControllerChange];
  }
}

void __89__UINavigationController__immediatelyApplyViewControllers_transition_animated_operation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(UIViewController *)WeakRetained _invalidatePreferences:0 excluding:?];
    WeakRetained = v2;
  }
}

void __89__UINavigationController__immediatelyApplyViewControllers_transition_animated_operation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(UIViewController *)WeakRetained _invalidatePreferences:0 excluding:?];
    WeakRetained = v2;
  }
}

void __89__UINavigationController__immediatelyApplyViewControllers_transition_animated_operation___block_invoke_3(uint64_t a1)
{
  v1 = a1;
  v123 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) navigationBar];
  if (![*(v1 + 32) isNavigationBarHidden] || objc_msgSend(*(v1 + 32), "_isNestedNavigationController"))
  {
    v81 = v2;
    [v2 setLocked:0];
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v3 = *(v1 + 40);
    v4 = [v3 countByEnumeratingWithState:&v105 objects:v120 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v106;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v106 != v6)
          {
            objc_enumerationMutation(v3);
          }

          if ([*(*(&v105 + 1) + 8 * i) _isNavigationController])
          {
            v8 = 1;
            goto LABEL_13;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v105 objects:v120 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v8 = 0;
LABEL_13:

    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v87 = v1;
    v9 = *(v1 + 48);
    v10 = [v9 countByEnumeratingWithState:&v101 objects:v119 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v102;
LABEL_15:
      v13 = 0;
      while (1)
      {
        if (*v102 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if ([*(*(&v101 + 1) + 8 * v13) _isNavigationController])
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v101 objects:v119 count:16];
          if (!v11)
          {
            goto LABEL_21;
          }

          goto LABEL_15;
        }
      }

      v1 = v87;
    }

    else
    {
LABEL_21:

      v1 = v87;
      if ((v8 & 1) == 0 && ![*(v87 + 32) _isNestedNavigationController])
      {
        v2 = v81;
        v14 = [v81 items];
        v15 = [*(v87 + 32) _navigationItems];
        [*(v87 + 32) _updateNavigationBar:v81 fromItems:v14 toItems:v15 animated:*(v87 + 76)];
        if (*(v87 + 76) == 1 && [*(v87 + 32) _hasPotentiallyChromelessBottomBar] && !objc_msgSend(v81, "_transitionForOldItems:newItems:", v14, v15))
        {
          [*(v87 + 32) _startCoordinatedBottomBarUpdateForTransition:*(v87 + 72)];
        }

LABEL_113:
        [v2 setLocked:1];
        goto LABEL_114;
      }
    }

    v85 = [*(v1 + 40) count];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    obj = [*(v1 + 48) reverseObjectEnumerator];
    v16 = [obj countByEnumeratingWithState:&v97 objects:v118 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v98;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v98 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v97 + 1) + 8 * j);
          if ([v20 _isNavigationController])
          {
            v21 = [v20 navigationBar];
            v22 = [v21 _stack];

            [v22 iterateEntries:&__block_literal_global_339_0];
          }

          if (*(v1 + 76) == 1)
          {
            v23 = [*(v1 + 48) firstObject];
            if (v20 == v23 && v85 == 0)
            {
              v25 = *(v1 + 72);
            }

            else
            {
              v25 = 0;
            }
          }

          else
          {
            v25 = 0;
          }

          v26 = *(v1 + 32);
          v27 = v20;
          if (v26)
          {
            if ([v26 _isNestedNavigationController])
            {
              v28 = [v26 bottomViewController];
              v29 = v28 == v27;
            }

            else
            {
              v29 = 0;
            }

            v30 = v26;
            v31 = v30;
            if ([v30 _isNestedNavigationController])
            {
              v32 = v30;
              do
              {
                v31 = [v32 navigationController];

                v32 = v31;
              }

              while (([v31 _isNestedNavigationController] & 1) != 0);
            }

            if (![v27 _isNavigationController] || (objc_msgSend(v27, "bottomViewController"), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "navigationItem"), v34 = objc_claimAutoreleasedReturnValue(), v33, !v34))
            {
              v34 = [v27 navigationItem];
            }

            if ([v30 _isNestedNavigationController])
            {
              v35 = [v30 navigationBar];
              [v35 _popNestedNavigationItem];
            }

            v36 = [v31 navigationBar];
            [v36 _setItemsUpToItem:v34 transition:v25];

            if (v29)
            {
              v37 = [v30 navigationBar];
              [v37 _redisplayItems];
            }

            v1 = v87;
          }
        }

        v17 = [obj countByEnumeratingWithState:&v97 objects:v118 count:16];
      }

      while (v17);
    }

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v82 = *(v1 + 40);
    v86 = [v82 countByEnumeratingWithState:&v93 objects:v117 count:16];
    if (v86)
    {
      v84 = *v94;
      do
      {
        for (k = 0; k != v86; ++k)
        {
          if (*v94 != v84)
          {
            objc_enumerationMutation(v82);
          }

          v39 = *(*(&v93 + 1) + 8 * k);
          if (*(v1 + 76) == 1)
          {
            v40 = [*(v1 + 40) lastObject];
            if (v39 == v40)
            {
              v41 = *(v1 + 72);
            }

            else
            {
              v41 = 0;
            }
          }

          else
          {
            v41 = 0;
          }

          v42 = *(v1 + 32);
          v43 = v39;
          v44 = v43;
          if (v42)
          {
            v45 = [v43 _isNestedNavigationController];
            v46 = v41;
            if (v45)
            {
              v47 = [v44 navigationItem];
              v48 = [v44 topViewController];
              v49 = [v48 navigationItem];
              if (v47 == v49)
              {
                v46 = v41;
              }

              else
              {
                v46 = 0;
              }
            }

            v50 = v42;
            v51 = v50;
            if ([v50 _isNestedNavigationController])
            {
              v52 = v50;
              do
              {
                v51 = [v52 navigationController];

                v52 = v51;
              }

              while (([v51 _isNestedNavigationController] & 1) != 0);
            }

            obja = v44;
            if ([v50 _isNestedNavigationController])
            {
              v83 = v41;
              v53 = v1;
              v54 = [v50 navigationBar];
              [v44 navigationItem];
              v56 = v55 = v44;
              [v54 _pushNestedNavigationItem:v56];

              if ([v54 _itemStackCount] == 1)
              {
                v57 = [v51 navigationBar];
                v58 = [v55 navigationItem];
                [v57 _addItem:v58 withEffectiveDelegate:v51 transition:v46];

                v44 = v55;
                v1 = v53;
                v41 = v83;
                if (!v45)
                {
                  goto LABEL_109;
                }

LABEL_89:
                v59 = [v44 _lastNavigationItems];
                if ([v59 count])
                {
                  v63 = objc_opt_new();
                  v113 = 0u;
                  v114 = 0u;
                  v115 = 0u;
                  v116 = 0u;
                  v59 = v59;
                  v64 = [v59 countByEnumeratingWithState:&v113 objects:v122 count:16];
                  if (v64)
                  {
                    v65 = v64;
                    v66 = *v114;
                    do
                    {
                      for (m = 0; m != v65; ++m)
                      {
                        if (*v114 != v66)
                        {
                          objc_enumerationMutation(v59);
                        }

                        v68 = [*(*(&v113 + 1) + 8 * m) _stackEntry];
                        if (v68)
                        {
                          [v63 addObject:v68];
                        }
                      }

                      v65 = [v59 countByEnumeratingWithState:&v113 objects:v122 count:16];
                    }

                    while (v65);
                  }

                  v69 = [v51 navigationBar];
                  [v69 _addItems:v59 withEffectiveDelegate:obja transition:v41];

                  v111 = 0u;
                  v112 = 0u;
                  v109 = 0u;
                  v110 = 0u;
                  v60 = v63;
                  v70 = [v60 countByEnumeratingWithState:&v109 objects:v121 count:16];
                  if (v70)
                  {
                    v71 = v70;
                    v72 = *v110;
                    do
                    {
                      for (n = 0; n != v71; ++n)
                      {
                        if (*v110 != v72)
                        {
                          objc_enumerationMutation(v60);
                        }

                        v74 = *(*(&v109 + 1) + 8 * n);
                        v75 = [v74 item];
                        v76 = [v75 _stackEntry];
                        [v76 updateStateFromCounterpart:v74];
                      }

                      v71 = [v60 countByEnumeratingWithState:&v109 objects:v121 count:16];
                    }

                    while (v71);
                  }

                  v1 = v87;
                  goto LABEL_107;
                }

                goto LABEL_108;
              }

              v44 = v55;
              v1 = v53;
              v41 = v83;
            }

            v59 = [v44 navigationItem];
            v60 = [v59 _stackEntry];
            v61 = [v51 navigationBar];
            [v61 _addItem:v59 withEffectiveDelegate:v50 transition:v46];

            if (v45)
            {
              v62 = [v59 _stackEntry];
              [v62 updateStateFromCounterpart:v60];

              v44 = obja;
              goto LABEL_89;
            }

LABEL_107:

LABEL_108:
            v44 = obja;
LABEL_109:
          }
        }

        v86 = [v82 countByEnumeratingWithState:&v93 objects:v117 count:16];
      }

      while (v86);
    }

    [*(v1 + 32) _updateContainersForStackChange];
    v2 = v81;
    goto LABEL_113;
  }

  if (*(v1 + 76) == 1 && [*(v1 + 32) _hasPotentiallyChromelessBottomBar])
  {
    [*(v1 + 32) _startCoordinatedBottomBarUpdateForTransition:*(v1 + 72)];
  }

LABEL_114:
  v77 = [*(v1 + 32) disappearingViewController];
  if ([v77 _isNavigationController])
  {
    if ([*(v1 + 56) containsObject:v77])
    {
      goto LABEL_125;
    }
  }

  else if (([*(v1 + 32) _isNestedNavigationController] & 1) == 0)
  {
    goto LABEL_125;
  }

  v78 = [*(v1 + 32) _transitionCoordinator];
  if (v78)
  {
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __89__UINavigationController__immediatelyApplyViewControllers_transition_animated_operation___block_invoke_5;
    v90[3] = &unk_1E70F4990;
    v79 = v77;
    v80 = *(v1 + 32);
    v91 = v79;
    v92 = v80;
    [v78 animateAlongsideTransition:0 completion:v90];
  }

  else
  {
    [v77 _prepareForNormalDisplayWithNavigationController:*(v1 + 32)];
  }

LABEL_125:
  [*(v1 + 32) _forwardPaletteToViewControllerIfNeeded:*(v1 + 64)];
}

void __89__UINavigationController__immediatelyApplyViewControllers_transition_animated_operation___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = [v2 item];
  v3 = [v4 _stackEntry];
  [v2 updateStateFromCounterpart:v3];
}

uint64_t __89__UINavigationController__immediatelyApplyViewControllers_transition_animated_operation___block_invoke_5(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 _prepareForNormalDisplayWithNavigationController:v5];
  }

  return result;
}

uint64_t __89__UINavigationController__immediatelyApplyViewControllers_transition_animated_operation___block_invoke_6(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    v2 = [*(a1 + 32) _rootAncestorViewController];
    v3 = [v2 _viewsWithDisabledInteractionGivenTransitionContext:*(a1 + 40)];

    [*(a1 + 40) _disableInteractionForViews:v3];
  }

  v4 = *(*(a1 + 48) + 16);

  return v4();
}

void __82__UINavigationController__ensureParentViewControllerReferenceIsCleanedUpForChild___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (*(v9 + 96) == a2)
        {
          *(v9 + 96) = 0;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_setClipsToBounds:(BOOL)bounds
{
  boundsCopy = bounds;
  [(UIViewController *)self loadViewIfNeeded];
  navigationTransitionView = self->_navigationTransitionView;

  [(UIView *)navigationTransitionView setClipsToBounds:boundsCopy];
}

- (void)_setContentInset:(UIEdgeInsets)inset
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  [(UIViewController *)self loadViewIfNeeded];
  navigationTransitionView = self->_navigationTransitionView;
  [(UIView *)navigationTransitionView frame];
  v10 = left + v9;
  v12 = top + v11;
  v14 = v13 - (left + right);
  v16 = v15 - (top + bottom);

  [(UIView *)navigationTransitionView setFrame:v10, v12, v14, v16];
}

- (void)_setBuiltinTransitionStyle:(int64_t)style
{
  self->_builtinTransitionStyle = style;
  transitionController = [(_UINavigationControllerVisualStyle *)self->_visualStyle transitionController];

  if (transitionController)
  {
    transitionController2 = [(_UINavigationControllerVisualStyle *)self->_visualStyle transitionController];
    if (objc_opt_respondsToSelector())
    {
      [transitionController2 setTransitionStyle:self->_builtinTransitionStyle];
    }
  }
}

- (void)_setBuiltinTransitionGap:(double)gap
{
  self->_builtinTransitionGap = gap;
  transitionController = [(_UINavigationControllerVisualStyle *)self->_visualStyle transitionController];

  if (transitionController)
  {
    transitionController2 = [(_UINavigationControllerVisualStyle *)self->_visualStyle transitionController];
    if (objc_opt_respondsToSelector())
    {
      [transitionController2 setTransitionGap:self->_builtinTransitionGap];
    }
  }
}

- (BOOL)_toolbarIsAnimatingInteractively
{
  _toolbarAnimationId = [(UINavigationController *)self _toolbarAnimationId];
  v3 = _toolbarAnimationId != 0;

  return v3;
}

- (void)_finishAnimationTracking
{
  if (+[UIViewPropertyAnimator _trackingAnimationsCurrentlyEnabled])
  {

    +[UIViewPropertyAnimator _finishTrackingAnimations];
  }

  else
  {

    +[UIView _finishAnimationTracking];
  }
}

- (id)_startInteractiveBarTransition:(id)transition
{
  transitionCopy = transition;
  [(UINavigationController *)self _setNavigationBarAnimationWasCancelled:0];
  [(UINavigationController *)self _setToolbarAnimationWasCancelled:0];
  if (+[UIViewPropertyAnimator _canEnableTrackingAnimationsWithAnimators])
  {
    if (!+[UIViewPropertyAnimator _trackingAnimationsCurrentlyEnabled])
    {
      v5 = +[UIViewPropertyAnimator _startTrackingAnimations];
      [UIViewPropertyAnimator _setTrackedAnimationsStartPaused:1];
    }

    v6 = +[UIViewPropertyAnimator _currentTrackedAnimationsUUID];
  }

  else
  {
    layer = [transitionCopy layer];
    v6 = +[UIView _startAnimationTracking];
    [layer setSpeed:0.0];
    [layer setTimeOffset:0.0];
  }

  return v6;
}

- (void)_startInteractiveToolbarTransition
{
  if (qword_1ED497938 != -1)
  {
    dispatch_once(&qword_1ED497938, &__block_literal_global_353_0);
  }

  _existingToolbar = [(UINavigationController *)self _existingToolbar];
  if ([(UINavigationController *)self _hasInterruptibleNavigationTransition])
  {
    v3 = qword_1ED497930;
  }

  else
  {
    v3 = [(UINavigationController *)self _startInteractiveBarTransition:_existingToolbar];
  }

  v4 = v3;
  [(UINavigationController *)self _setToolbarAnimationId:v3];
  [_existingToolbar _startInteractiveTransition];
}

void __60__UINavigationController__startInteractiveToolbarTransition__block_invoke()
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = qword_1ED497930;
  qword_1ED497930 = v0;
}

- (void)_startInteractiveNavbarTransition
{
  if (qword_1ED497948 != -1)
  {
    dispatch_once(&qword_1ED497948, &__block_literal_global_356);
  }

  if ([(UINavigationController *)self _hasInterruptibleNavigationTransition])
  {
    v3 = qword_1ED497940;
  }

  else
  {
    v3 = [(UINavigationController *)self _startInteractiveBarTransition:self->_navigationBar];
  }

  v4 = v3;
  [(UINavigationController *)self _setNavbarAnimationId:v3];
}

void __59__UINavigationController__startInteractiveNavbarTransition__block_invoke()
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = qword_1ED497940;
  qword_1ED497940 = v0;
}

- (void)_updateInteractiveBarTransition:(id)transition withUUID:(id)d percent:(double)percent isFinished:(BOOL)finished didComplete:(BOOL)complete completionSpeed:(double)speed completionCurve:(int64_t)curve
{
  completeCopy = complete;
  transitionCopy = transition;
  dCopy = d;
  if (![(UINavigationController *)self _hasInterruptibleNavigationTransition])
  {
    if ([UIViewPropertyAnimator _containsAnimatorForTrackedAnimationsUUID:dCopy])
    {
      v17 = [UIViewPropertyAnimator _animatorForTrackedAnimationsUUID:dCopy];
      layer = v17;
      if (finished)
      {
        percentCopy = 1.0 - percent;
        if (!completeCopy)
        {
          percentCopy = percent;
        }

        v20 = percentCopy / speed;
        v21 = [[UICubicTimingParameters alloc] initWithAnimationCurve:curve];
        [layer setReversed:!completeCopy];
        [layer continueAnimationWithTimingParameters:v21 durationFactor:v20];
      }

      else
      {
        [v17 setFractionComplete:percent];
      }
    }

    else
    {
      layer = [transitionCopy layer];
      [(_UIViewControllerTransitionConductor *)self->_transitionConductor customNavigationTransitionDuration];
      v23 = v22;
      if (finished)
      {
        [layer timeOffset];
        if (completeCopy)
        {
          v24 = v23 - v24;
        }

        [UIView _completeAnimationWithUUID:dCopy duration:curve curve:!completeCopy reverse:v24];
        *&v25 = speed;
        [layer setSpeed:v25];
      }

      else
      {
        [layer setTimeOffset:v22 * percent];
      }
    }
  }
}

- (void)_updateInteractiveTransition:(double)transition
{
  if (transition >= 0.0)
  {
    transitionCopy = transition;
  }

  else
  {
    transitionCopy = 0.0;
  }

  _navbarIsAppearingInteractively = [(UINavigationController *)self _navbarIsAppearingInteractively];
  _navigationBarForNestedNavigationController = [(UINavigationController *)self _navigationBarForNestedNavigationController];
  v7 = _navigationBarForNestedNavigationController;
  if (_navbarIsAppearingInteractively)
  {
    _navbarAnimationId = [(UINavigationController *)self _navbarAnimationId];
    [(UINavigationController *)self _updateInteractiveBarTransition:v7 withUUID:_navbarAnimationId percent:0 isFinished:0 didComplete:3 completionSpeed:transitionCopy completionCurve:1.0];
  }

  else
  {
    [_navigationBarForNestedNavigationController _updateInteractiveTransition:transitionCopy];
  }

  if (_UIUnifiedToolbarEnabled())
  {

    [(UINavigationController *)self _updateFloatingBarContentAnimated:0];
  }

  else if ([(UINavigationController *)self _toolbarIsAnimatingInteractively])
  {
    _existingToolbar = [(UINavigationController *)self _existingToolbar];
    _toolbarAnimationId = [(UINavigationController *)self _toolbarAnimationId];
    [(UINavigationController *)self _updateInteractiveBarTransition:_existingToolbar withUUID:_toolbarAnimationId percent:0 isFinished:0 didComplete:3 completionSpeed:transitionCopy completionCurve:1.0];

    [_existingToolbar _updateInteractiveTransitionWithProgress:transitionCopy];
  }
}

- (void)_finishInteractiveTransition:(double)transition transitionContext:(id)context
{
  contextCopy = context;
  _navbarIsAppearingInteractively = [(UINavigationController *)self _navbarIsAppearingInteractively];
  _navigationBarForNestedNavigationController = [(UINavigationController *)self _navigationBarForNestedNavigationController];
  if (_navbarIsAppearingInteractively)
  {
    _navbarAnimationId = [(UINavigationController *)self _navbarAnimationId];
    [contextCopy _completionVelocity];
    -[UINavigationController _updateInteractiveBarTransition:withUUID:percent:isFinished:didComplete:completionSpeed:completionCurve:](self, "_updateInteractiveBarTransition:withUUID:percent:isFinished:didComplete:completionSpeed:completionCurve:", _navigationBarForNestedNavigationController, _navbarAnimationId, 1, 1, [contextCopy _completionCurve], transition, v9);
  }

  else
  {
    [contextCopy _completionVelocity];
    [_navigationBarForNestedNavigationController _finishInteractiveTransition:objc_msgSend(contextCopy completionSpeed:"_completionCurve") completionCurve:{transition, v10}];
  }

  if (_UIUnifiedToolbarEnabled())
  {
    [(UINavigationController *)self _updateFloatingBarContentAnimated:0];
  }

  else if ([(UINavigationController *)self _toolbarIsAnimatingInteractively])
  {
    _existingToolbar = [(UINavigationController *)self _existingToolbar];
    _toolbarAnimationId = [(UINavigationController *)self _toolbarAnimationId];
    [contextCopy _completionVelocity];
    -[UINavigationController _updateInteractiveBarTransition:withUUID:percent:isFinished:didComplete:completionSpeed:completionCurve:](self, "_updateInteractiveBarTransition:withUUID:percent:isFinished:didComplete:completionSpeed:completionCurve:", _existingToolbar, _toolbarAnimationId, 1, 1, [contextCopy _completionCurve], transition, v13);

    [_existingToolbar _finishInteractiveTransition];
  }
}

- (void)_cancelInteractiveTransition:(double)transition transitionContext:(id)context
{
  contextCopy = context;
  [contextCopy _completionVelocity];
  v7 = v6;
  if ([(UINavigationController *)self _navbarIsAppearingInteractively])
  {
    [(UINavigationController *)self _setNavigationBarAnimationWasCancelled:1];
    _navigationBarForNestedNavigationController = [(UINavigationController *)self _navigationBarForNestedNavigationController];
    _navbarAnimationId = [(UINavigationController *)self _navbarAnimationId];
    -[UINavigationController _updateInteractiveBarTransition:withUUID:percent:isFinished:didComplete:completionSpeed:completionCurve:](self, "_updateInteractiveBarTransition:withUUID:percent:isFinished:didComplete:completionSpeed:completionCurve:", _navigationBarForNestedNavigationController, _navbarAnimationId, 1, 0, [contextCopy _completionCurve], transition, fabs(v7));
  }

  else
  {
    _navigationBarForNestedNavigationController = [(UINavigationController *)self _navigationBarForNestedNavigationController];
    [contextCopy _completionVelocity];
    [_navigationBarForNestedNavigationController _cancelInteractiveTransition:objc_msgSend(contextCopy completionSpeed:"_completionCurve") completionCurve:{transition, fabs(v10)}];
  }

  if ([(UINavigationController *)self _toolbarIsAnimatingInteractively])
  {
    [(UINavigationController *)self _setToolbarAnimationWasCancelled:1];
    _existingToolbar = [(UINavigationController *)self _existingToolbar];
    _toolbarAnimationId = [(UINavigationController *)self _toolbarAnimationId];
    [contextCopy _completionVelocity];
    -[UINavigationController _updateInteractiveBarTransition:withUUID:percent:isFinished:didComplete:completionSpeed:completionCurve:](self, "_updateInteractiveBarTransition:withUUID:percent:isFinished:didComplete:completionSpeed:completionCurve:", _existingToolbar, _toolbarAnimationId, 1, 0, [contextCopy _completionCurve], transition, fabs(v13));

    [_existingToolbar _finishInteractiveTransition];
  }
}

- (double)durationForTransition:(int)transition
{
  v3 = *&transition;
  if ([(UINavigationController *)self isCustomTransition])
  {
    transitionConductor = self->_transitionConductor;

    [(_UIViewControllerTransitionConductor *)transitionConductor customNavigationTransitionDuration];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UINavigationController;
    [(UIViewController *)&v7 durationForTransition:v3];
  }

  return result;
}

- (int64_t)_navigationBarTransitionVariant
{
  result = [(_UIViewControllerTransitionConductor *)self->_transitionConductor navigationBarTransitionVariant];
  if (!result)
  {
    return [(UINavigationController *)self _shouldCrossFadeNavigationBar];
  }

  return result;
}

- (BOOL)_viewControllerRequiresVisibleToolbarForImplicitInlineSearch:(id)search
{
  searchCopy = search;
  if (_UISolariumEnabled())
  {
    navigationItem = [searchCopy navigationItem];
    v6 = navigationItem;
    if (!navigationItem)
    {
      LOBYTE(window) = 0;
LABEL_23:

      goto LABEL_24;
    }

    _searchControllerIfAllowed = [navigationItem _searchControllerIfAllowed];
    if (_searchControllerIfAllowed)
    {
      _confirmedSearchBarPlacementBarButtonItem = [(UINavigationItem *)v6 _confirmedSearchBarPlacementBarButtonItem];

      if (_confirmedSearchBarPlacementBarButtonItem)
      {
        if ([(UIViewController *)self _appearState])
        {
LABEL_9:
          _relevantToolbarItems = [searchCopy _relevantToolbarItems];
          if ([v6 searchBarPlacementAllowsToolbarIntegration])
          {
            traitCollection = [(UIViewController *)self traitCollection];
            if ([traitCollection userInterfaceIdiom] || (objc_msgSend(searchCopy, "_isNavigationController") & 1) != 0)
            {
              LOBYTE(window) = 0;
            }

            else
            {
              _containingTabBarController = [(UIViewController *)self _containingTabBarController];
              LOBYTE(window) = !_containingTabBarController && [v6 preferredSearchBarPlacement] != 2 && objc_msgSend(_relevantToolbarItems, "count") == 0;
            }
          }

          else
          {
            LOBYTE(window) = 0;
          }

          goto LABEL_22;
        }

        parentViewController = [(UIViewController *)self parentViewController];
        if (parentViewController || ([(UINavigationController *)self _window], (parentViewController = objc_claimAutoreleasedReturnValue()) != 0))
        {

          goto LABEL_9;
        }

        _existingView = [(UIViewController *)self _existingView];
        window = [_existingView window];

        if (window)
        {
          goto LABEL_9;
        }

        *(&self->_navigationControllerFlags + 8) |= 0x80u;
LABEL_22:

        goto LABEL_23;
      }

      if (os_variant_has_internal_diagnostics())
      {
        v17 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "Missing searchBarPlacementBarButtonItem for navigation item may cause incorrect UI", buf, 2u);
        }
      }

      else
      {
        v13 = *(__UILogGetCategoryCachedImpl("Assert", &_viewControllerRequiresVisibleToolbarForImplicitInlineSearch____s_category) + 8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v18[0] = 0;
          _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Missing searchBarPlacementBarButtonItem for navigation item may cause incorrect UI", v18, 2u);
        }
      }
    }

    LOBYTE(window) = 0;
    goto LABEL_22;
  }

  LOBYTE(window) = 0;
LABEL_24:

  return window;
}

- (void)_startToolbarTransitionIfNecessary:(id)necessary animated:(BOOL)animated
{
  animatedCopy = animated;
  necessaryCopy = necessary;
  if (_UIUnifiedToolbarEnabled())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:2471 description:@"Attempted to start a toolbar transition while the floating bar is enabled."];
  }

  _transitionCoordinator = [necessaryCopy _transitionCoordinator];
  fromViewController = [necessaryCopy fromViewController];
  toViewController = [necessaryCopy toViewController];
  _existingToolbar = [(UINavigationController *)self _existingToolbar];
  items = [_existingToolbar items];

  toolbarItems = [toViewController toolbarItems];
  _navigationToolbarTransitionController = [(UINavigationController *)self _navigationToolbarTransitionController];

  if (!_navigationToolbarTransitionController)
  {
    v60 = _transitionCoordinator;
    v61 = items;
    if (!animatedCopy || !dyld_program_sdk_at_least())
    {
      goto LABEL_18;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v20 = isKindOfClass;
    if (isKindOfClass)
    {
      v21 = isKindOfClass;
      v22 = fromViewController;
      v18 = v22;
      if ((v22[1288] & 2) != 0 && (*&self->_navigationControllerFlags & 0x200000000002) != 0)
      {
        _existingToolbar2 = [v22 _existingToolbar];
        items2 = [_existingToolbar2 items];
        v17 = 0;
        v24 = items;
        v61 = items2;
LABEL_17:
        v59 = v21 ^ 1;

        v27 = 1;
        goto LABEL_20;
      }

      v59 = 0;
      v27 = 0;
      v17 = 0;
LABEL_20:
      v28 = v27 & _UIBarsApplyChromelessEverywhere();
      navigationControllerFlags = self->_navigationControllerFlags;
      v30 = 0x400000000000;
      if (!v28)
      {
        v30 = 0;
      }

      *&self->_navigationControllerFlags = navigationControllerFlags & 0xFFFFBFFFFFFFFFFFLL | v30;
      if ((v27 & 1) == 0 && (navigationControllerFlags & 2) == 0)
      {
        _transitionCoordinator = v60;
        items = v61;
        goto LABEL_61;
      }

      v56 = v28;
      items = v61;
      if (-[UINavigationController _toolbarIsAnimatingInteractively](self, "_toolbarIsAnimatingInteractively") || ![toolbarItems count] && !objc_msgSend(v61, "count"))
      {
        _transitionCoordinator = v60;
        goto LABEL_61;
      }

      _existingToolbar3 = [(UINavigationController *)self _existingToolbar];
      if (v56)
      {
        if ([fromViewController _isNavigationController])
        {
          v31 = fromViewController;
        }

        else
        {
          v31 = toViewController;
        }

        _existingToolbar4 = [v31 _existingToolbar];
        if (!animatedCopy)
        {
          goto LABEL_34;
        }
      }

      else
      {
        _existingToolbar4 = 0;
        if (!animatedCopy)
        {
LABEL_34:
          v32 = _existingToolbar3;
          _updateToolbarForViewControllerAnimated(_existingToolbar3, toViewController, 0);
          _transitionCoordinator = v60;
LABEL_60:

          goto LABEL_61;
        }
      }

      _hasInterruptibleNavigationTransition = [(UINavigationController *)self _hasInterruptibleNavigationTransition];
      isInteractiveTransition = [(UINavigationController *)self isInteractiveTransition];
      if (v27)
      {
        v50 = isInteractiveTransition;
        [v18 _setToolbarHidden:1 edge:15 duration:0.0];
        _existingToolbar5 = [v18 _existingToolbar];
        _updateToolbarForViewControllerAnimated(_existingToolbar5, 0, 0);

        [v17 _setToolbarHidden:1 edge:15 duration:0.0];
        _existingToolbar6 = [v17 _existingToolbar];
        _updateToolbarForViewControllerAnimated(_existingToolbar6, 0, 0);

        v89[0] = MEMORY[0x1E69E9820];
        v89[1] = 3221225472;
        v89[2] = __70__UINavigationController__startToolbarTransitionIfNecessary_animated___block_invoke;
        v89[3] = &unk_1E70F3590;
        v89[4] = self;
        [UIView performWithoutAnimation:v89];
        [_existingToolbar3 setItems:v61 animated:0];
        isInteractiveTransition = v50;
      }

      v51 = v27;
      if (isInteractiveTransition || _hasInterruptibleNavigationTransition)
      {
        [(UINavigationController *)self _startInteractiveToolbarTransition];
      }

      [_existingToolbar3 bounds];
      v35 = v34;
      v37 = v36;
      [_existingToolbar3 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
      v40 = v37 != v39 || v35 != v38;
      if (_hasInterruptibleNavigationTransition)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        v57 = v40;
        aBlock[1] = 3221225472;
        aBlock[2] = __70__UINavigationController__startToolbarTransitionIfNecessary_animated___block_invoke_2;
        aBlock[3] = &unk_1E70F43C8;
        v84 = _existingToolbar3;
        v87 = animatedCopy;
        v88 = v57;
        v85 = toolbarItems;
        selfCopy = self;
        v41 = _Block_copy(aBlock);
      }

      else
      {
        v42 = v40;
        [_existingToolbar3 setItems:toolbarItems animated:1];
        v43 = v56;
        v44 = 0;
        if (!(v59 & 1 | ((v56 & 1) == 0)))
        {
          [_existingToolbar3 _backgroundTransitionProgress];
          v44 = v45;
          [_existingToolbar4 _backgroundTransitionProgress];
          [_existingToolbar3 _setBackgroundTransitionProgress:?];
          v43 = v56;
        }

        if (v42 || (v43 & 1) != 0)
        {
          v75[0] = MEMORY[0x1E69E9820];
          v75[1] = 3221225472;
          v75[2] = __70__UINavigationController__startToolbarTransitionIfNecessary_animated___block_invoke_3;
          v75[3] = &unk_1E71029B8;
          v80 = v42;
          v75[4] = self;
          v81 = v43;
          v82 = v59 & 1;
          v76 = _existingToolbar4;
          v77 = v17;
          v79 = v44;
          v78 = _existingToolbar3;
          v41 = _Block_copy(v75);
        }

        else
        {
          v41 = 0;
        }

        [(UINavigationController *)self _finishAnimationTracking];
      }

      objc_initWeak(&location, self);
      v58 = v41;
      if (v41)
      {
        v46 = v72;
        v72[0] = MEMORY[0x1E69E9820];
        v72[1] = 3221225472;
        v72[2] = __70__UINavigationController__startToolbarTransitionIfNecessary_animated___block_invoke_4;
        v72[3] = &unk_1E70F3770;
        _existingToolbar6 = &v73;
        v73 = v41;
      }

      else
      {
        v46 = 0;
      }

      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __70__UINavigationController__startToolbarTransitionIfNecessary_animated___block_invoke_5;
      v62[3] = &unk_1E71029E0;
      objc_copyWeak(&v68, &location);
      v69 = v51;
      v63 = _existingToolbar3;
      v64 = v17;
      v65 = v18;
      v70 = v59 & 1;
      v66 = fromViewController;
      selfCopy2 = self;
      v71 = _hasInterruptibleNavigationTransition;
      _transitionCoordinator = v60;
      [v60 animateAlongsideTransition:v46 completion:v62];

      objc_destroyWeak(&v68);
      if (v58)
      {
      }

      objc_destroyWeak(&location);

      v32 = _existingToolbar3;
      goto LABEL_60;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = toViewController;
      v17 = v25;
      if ((v25[1288] & 2) != 0 && (*&self->_navigationControllerFlags & 0x200000000002) != 0)
      {
        v21 = v20;
        _existingToolbar2 = [v25 _existingToolbar];
        items3 = [_existingToolbar2 items];
        v18 = 0;
        v24 = toolbarItems;
        toolbarItems = items3;
        goto LABEL_17;
      }

      v59 = 0;
      v27 = 0;
    }

    else
    {
LABEL_18:
      v59 = 0;
      v27 = 0;
      v17 = 0;
    }

    v18 = 0;
    goto LABEL_20;
  }

  if (![(UINavigationController *)self isToolbarHidden])
  {
    _navigationToolbarTransitionController2 = [(UINavigationController *)self _navigationToolbarTransitionController];
    _existingToolbar7 = [(UINavigationController *)self _existingToolbar];
    [_navigationToolbarTransitionController2 beginTransitionWithToolbar:_existingToolbar7 items:toolbarItems animated:animatedCopy];
  }

  v17 = 0;
  v18 = 0;
LABEL_61:
}

uint64_t __70__UINavigationController__startToolbarTransitionIfNecessary_animated___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) setItems:*(a1 + 40) animated:*(a1 + 56)];
  if (*(a1 + 57) == 1)
  {
    v3 = *(a1 + 48);
    v4 = [v3 isToolbarHidden];

    return [v3 _positionToolbarHidden:v4];
  }

  return result;
}

uint64_t __70__UINavigationController__startToolbarTransitionIfNecessary_animated___block_invoke_3(uint64_t result)
{
  v1 = result;
  if (*(result + 72) == 1)
  {
    result = [*(result + 32) _positionToolbarHidden:{objc_msgSend(*(result + 32), "isToolbarHidden")}];
  }

  if (*(v1 + 73) == 1)
  {
    if (*(v1 + 74) == 1)
    {
      v2 = [*(v1 + 40) _appearanceHint];
      if (v2 == 1)
      {
        v3 = 0.0;
      }

      else if (v2 == 2)
      {
        v3 = 1.0;
      }

      else
      {
        [*(v1 + 40) _backgroundTransitionProgress];
        v7 = v4;
        v5 = [*(v1 + 48) _viewControllerForObservableScrollView];
        v6 = [v5 _contentOrObservableScrollViewForEdge:4];
        _UIBarsGetBottomBarBackgroundTransitionProgressForScrollView(v6, *(v1 + 40), &v7);

        v3 = v7;
      }
    }

    else
    {
      v3 = *(v1 + 64);
    }

    return [*(v1 + 56) _setBackgroundTransitionProgress:v3];
  }

  return result;
}

void __70__UINavigationController__startToolbarTransitionIfNecessary_animated___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v5 = [v3 isCancelled];

  if (v5)
  {
    if (*(a1 + 80))
    {
      [WeakRetained _setToolbarAnimationWasCancelled:0];
      _updateToolbarForViewControllerAnimated(*(a1 + 32), 0, 0);
      [*(a1 + 40) _setToolbarHidden:0 edge:15 duration:0.0];
      [*(a1 + 48) _setToolbarHidden:0 edge:15 duration:0.0];
      [WeakRetained _setToolbarHidden:(*(a1 + 81) & 1) == 0 edge:15 duration:0.0];
    }

    else
    {
      _updateToolbarForViewControllerAnimated(*(a1 + 32), *(a1 + 56), 0);
      [WeakRetained _setToolbarAnimationWasCancelled:0];
    }
  }

  else if (*(a1 + 80))
  {
    if (*(a1 + 81) == 1)
    {
      _updateToolbarForViewControllerAnimated(*(a1 + 32), 0, 0);
      [WeakRetained _setToolbarHidden:1 edge:15 duration:0.0];
    }

    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __70__UINavigationController__startToolbarTransitionIfNecessary_animated___block_invoke_6;
    v11 = &unk_1E70F35B8;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    [UIView performWithoutAnimation:&v8];
  }

  *(*(a1 + 64) + 1288) &= ~0x400000000000uLL;
  if ((*(a1 + 82) & 1) == 0)
  {
    v6 = [*(a1 + 32) layer];
    [v6 setTimeOffset:0.0];
    LODWORD(v7) = 1.0;
    [v6 setSpeed:v7];
  }

  [WeakRetained _setToolbarAnimationId:{0, v8, v9, v10, v11}];
}

uint64_t __70__UINavigationController__startToolbarTransitionIfNecessary_animated___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) _existingToolbar];
  _updateToolbarForViewControllerAnimated(v2, 0, 0);

  v3 = *(a1 + 32);
  v4 = [v3 topViewController];
  [v3 _updateToolbarItemsFromViewController:v4 animated:0];

  [*(a1 + 32) _setToolbarHidden:0 edge:15 duration:0.0];
  v5 = [*(a1 + 40) _existingToolbar];
  _updateToolbarForViewControllerAnimated(v5, 0, 0);

  v6 = *(a1 + 40);
  v7 = [v6 topViewController];
  [v6 _updateToolbarItemsFromViewController:v7 animated:0];

  v8 = *(a1 + 40);

  return [v8 _setToolbarHidden:0 edge:15 duration:0.0];
}

- (unint64_t)_keyboardScreenEdgeForTransition:(int)transition
{
  v3 = [objc_opt_class() _keyboardDirectionForTransition:*&transition] - 1;
  if (v3 > 4)
  {
    return 4;
  }

  else
  {
    return qword_18A6792B8[v3];
  }
}

- (id)_traitOverridesForChildViewController:(id)controller
{
  controllerCopy = controller;
  if (((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_NavigationControllerShouldMaintainOverrideTraitCollectionForPoppingViewController, @"NavigationControllerShouldMaintainOverrideTraitCollectionForPoppingViewController", _UIInternalPreferenceUpdateBool) & 1) != 0 || byte_1ED48AC44) && ([controllerCopy _departingParentViewController], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 == self))
  {
    v6 = self->_overrideTraitCollectionForPoppingViewControler;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_setDefinesPresentationContextIfNecessaryForViewController:(id)controller
{
  controllerCopy = controller;
  navigationItem = [controllerCopy navigationItem];
  searchController = [navigationItem searchController];
  if (searchController)
  {
    v5 = searchController;
    v6 = dyld_program_sdk_at_least();

    if (v6)
    {
      [controllerCopy setDefinesPresentationContext:1];
    }
  }

  else
  {
  }
}

- (BOOL)_shouldHideSearchBarWhenScrollingForNavigationItem:(id)item
{
  itemCopy = item;
  v5 = [(UINavigationController *)self _topViewControllerObservableScrollViewForEdge:1];

  if (v5)
  {
    LOBYTE(v5) = [itemCopy hidesSearchBarWhenScrolling];
  }

  return v5;
}

- (void)setNavigationBarClass:(Class)class
{
  v6 = objc_opt_class();
  if (class)
  {
    if (([(objc_class *)class isSubclassOfClass:v6]& 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = NSStringFromClass(class);
      [currentHandler handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:2791 description:{@"%@ is not a subclass of UINavigationBar", v8}];
    }
  }

  else
  {
    class = v6;
  }

  self->_navigationBarClass = class;
}

- (id)_viewsWithDisabledInteractionGivenTransitionContext:(id)context
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = UINavigationController;
  array = [(UIViewController *)&v13 _viewsWithDisabledInteractionGivenTransitionContext:contextCopy];
  if (!array)
  {
    array = [MEMORY[0x1E695DF70] array];
  }

  _existingToolbar = [(UINavigationController *)self _existingToolbar];

  if (_existingToolbar)
  {
    _existingToolbar2 = [(UINavigationController *)self _existingToolbar];
    [array addObject:_existingToolbar2];
  }

  transitionContext = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionContext];
  if (![(UINavigationController *)self enableBackButtonDuringTransition])
  {
    [array addObject:self->_navigationBar];
  }

  if (transitionContext == contextCopy && ([transitionContext isInterruptible] & 1) == 0 && (objc_msgSend(transitionContext, "_allowUserInteraction") & 1) == 0)
  {
    disappearingViewController = [(UINavigationController *)self disappearingViewController];
    view = [disappearingViewController view];
    superview = [view superview];

    if (superview)
    {
      [array addObject:superview];
    }
  }

  return array;
}

- (id)_navigationBarHiddenByDefault:(BOOL)default
{
  navigationBar = self->_navigationBar;
  if (!navigationBar)
  {
    defaultCopy = default;
    v6 = objc_alloc(self->_navigationBarClass);
    v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v7 setHidden:defaultCopy];
    [(UINavigationController *)self setNavigationBar:v7];

    navigationBar = self->_navigationBar;
  }

  return navigationBar;
}

- (BOOL)_canPerformCustomizeBarActionWithSender:(id)sender
{
  senderCopy = sender;
  v5 = ![(UINavigationController *)self isNavigationBarHidden]&& [(UINavigationBar *)self->_navigationBar _canPerformCustomizeBarActionWithSender:senderCopy];

  return v5;
}

- (void)runToolbarCustomizationPalette:(id)palette
{
  if ([(UINavigationController *)self _canPerformCustomizeBarActionWithSender:palette])
  {

    [(UINavigationController *)self _beginCustomizingBar];
  }
}

- (BOOL)_canPerformRename:(id)rename
{
  renameCopy = rename;
  if (objc_opt_respondsToSelector())
  {
    sender = [(UINavigationBar *)renameCopy sender];

    renameCopy = sender;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (renameCopy == self->_navigationBar)
    {
LABEL_10:
      navigationBar = [(UINavigationController *)self navigationBar];
      topItem = [navigationBar topItem];
      _canRename = [topItem _canRename];

      goto LABEL_11;
    }
  }

  else if (![(UINavigationController *)self isNavigationBarHidden])
  {
    window = [(UIView *)self->_navigationBar window];
    if (window)
    {
      v7 = window;
      presentedViewController = [(UIViewController *)self presentedViewController];

      if (!presentedViewController)
      {
        goto LABEL_10;
      }
    }
  }

  _canRename = 0;
LABEL_11:

  return _canRename;
}

- (void)rename:(id)rename
{
  navigationBar = [(UINavigationController *)self navigationBar];
  [navigationBar _beginRenaming];
}

- (void)setNavigationBar:(id)bar
{
  v34 = *MEMORY[0x1E69E9840];
  barCopy = bar;
  if (self->_navigationBar != barCopy)
  {
    v7 = dyld_program_sdk_at_least();
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (v7)
    {
      if ((isKindOfClass & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:2915 description:{@"%@ is not a subclass of UINavigationBar", barCopy}];
      }
    }

    else if ((isKindOfClass & 1) == 0)
    {
      v26 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED497950) + 8);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v33 = barCopy;
        _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "%@ is not a subclass of UINavigationBar", buf, 0xCu);
      }
    }

    mutableChildViewControllers = [(UIViewController *)self mutableChildViewControllers];
    [(UINavigationBar *)self->_navigationBar setLocked:0];
    [(UINavigationBar *)self->_navigationBar setDelegate:0];
    [(UIView *)self->_navigationBar removeFromSuperview];
    [(NSMapTable *)self->_lastContentMarginForView removeObjectForKey:self->_navigationBar];
    objc_storeStrong(&self->_navigationBar, bar);
    v11 = *MEMORY[0x1E695EFF8];
    v12 = *(MEMORY[0x1E695EFF8] + 8);
    [(UINavigationController *)self _widthForLayout];
    v14 = v13;
    [(UINavigationBar *)barCopy _layoutHeightsForNavigationItem:0 fittingWidth:?];
    [(UINavigationBar *)self->_navigationBar setFrame:v11, v12, v14, v15];
    v16 = self->_navigationBar;
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      if (qword_1ED497A00 != -1)
      {
        dispatch_once(&qword_1ED497A00, &__block_literal_global_1807);
      }

      if (byte_1ED49790A == 1)
      {
        [(UIView *)v16 frame];
        [(UINavigationBar *)v16 sizeThatFits:v17, v18];
      }
    }

    [(UIView *)self->_navigationBar setAutoresizingMask:2];
    [(UINavigationBar *)self->_navigationBar setDelegate:self];
    [(UIView *)self->super._view addSubview:self->_navigationBar];
    if ([mutableChildViewControllers count])
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v20 = mutableChildViewControllers;
      v21 = [v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v28;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v28 != v23)
            {
              objc_enumerationMutation(v20);
            }

            navigationItem = [*(*(&v27 + 1) + 8 * i) navigationItem];
            [v19 addObject:navigationItem];
          }

          v22 = [v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v22);
      }

      [(UINavigationBar *)self->_navigationBar setItems:v19];
    }

    [(UINavigationBar *)self->_navigationBar setLocked:1];
    [(UINavigationController *)self _positionNavigationBarHidden:*&self->_navigationControllerFlags & 1];
    [(UIView *)self->_navigationBar setHidden:*&self->_navigationControllerFlags & 1];
  }
}

- (BOOL)_navigationBarShouldUpdateProgress
{
  childViewControllers = [(UIViewController *)self childViewControllers];
  v3 = [childViewControllers count] != 0;

  return v3;
}

- (void)_setClipUnderlapWhileTransitioning:(BOOL)transitioning
{
  *(&self->_navigationControllerFlags + 8) |= 0x20u;
  v3 = 0x400000000;
  if (!transitioning)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFBFFFFFFFFLL | v3;
}

- (BOOL)_animationParametersForHidingNavigationBar:(BOOL)bar lastOperation:(int64_t)operation edge:(unint64_t *)edge duration:(double *)duration
{
  barCopy = bar;
  view = [(UIViewController *)self view];
  _shouldReverseLayoutDirection = [view _shouldReverseLayoutDirection];

  if (_shouldReverseLayoutDirection)
  {
    v13 = 8;
  }

  else
  {
    v13 = 2;
  }

  if (_shouldReverseLayoutDirection)
  {
    v14 = 2;
  }

  else
  {
    v14 = 8;
  }

  _shouldCrossFadeNavigationBarVisibility = [(UINavigationController *)self _shouldCrossFadeNavigationBarVisibility];
  if (operation == 2)
  {
    if (edge)
    {
      if (barCopy)
      {
        v18 = v14;
      }

      else
      {
        v18 = v13;
      }

      if (_shouldCrossFadeNavigationBarVisibility)
      {
        v18 = 15;
      }

      *edge = v18;
    }

    if (!duration)
    {
      goto LABEL_28;
    }

    v17 = 2;
LABEL_27:
    [(UINavigationController *)self durationForTransition:v17];
    v20 = v19;
    _transitionConductor = [(UINavigationController *)self _transitionConductor];
    [_transitionConductor navigationBarHidingDurationWithDefaultDuration:v20];
    *duration = v22;

LABEL_28:
    LOBYTE(v17) = 1;
    return v17;
  }

  if (operation != 1)
  {
    LOBYTE(v17) = 0;
    return v17;
  }

  if (edge)
  {
    if (barCopy)
    {
      v16 = v13;
    }

    else
    {
      v16 = v14;
    }

    if (_shouldCrossFadeNavigationBarVisibility)
    {
      v16 = 15;
    }

    *edge = v16;
  }

  v17 = 1;
  if (duration)
  {
    goto LABEL_27;
  }

  return v17;
}

- (void)setNavigationBarHidden:(BOOL)hidden animated:(BOOL)animated
{
  v4 = animated;
  v5 = hidden;
  _outermostNavigationController = [(UINavigationController *)self _outermostNavigationController];
  if (_UISolariumEnabled())
  {
    if (_outermostNavigationController == self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_parentNavigationController);

      if (WeakRetained)
      {
        v8 = objc_loadWeakRetained(&self->_parentNavigationController);

        _outermostNavigationController = v8;
      }
    }
  }

  transitionContext = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionContext];

  if (transitionContext)
  {
    transitionContext2 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionContext];
    LOBYTE(transitionContext) = [transitionContext2 transitionWasCancelled];
  }

  if (!v4 || (transitionContext & 1) != 0)
  {
    [(UINavigationController *)_outermostNavigationController _setNavigationBarHidden:v5 edge:1 duration:0.0];
  }

  else
  {
    if ([(UINavigationController *)self _isTransitioning])
    {
      [(_UIViewControllerTransitionConductor *)self->_transitionConductor customNavigationTransitionDuration];
    }

    else
    {
      v11 = 0.2;
    }

    [(UINavigationController *)_outermostNavigationController _setNavigationBarHidden:v5 edgeIfNotNavigating:1 duration:v11];
  }
}

- (BOOL)_viewControllerIgnoresClippedGlyphPathFrame
{
  v4.receiver = self;
  v4.super_class = UINavigationController;
  return [(UIViewController *)&v4 _viewControllerIgnoresClippedGlyphPathFrame]|| self->_interactiveScrollActive || [(UINavigationController *)self _isTransitioning];
}

- (void)_positionNavigationBarHidden:(BOOL)hidden edge:(unint64_t)edge initialOffset:(double)offset
{
  hiddenCopy = hidden;
  containerView = self->_containerView;
  if (containerView)
  {
    [(UIView *)containerView bounds];
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

  v43.origin.x = v11;
  v43.origin.y = v13;
  v43.size.width = v15;
  v43.size.height = v17;
  MidX = CGRectGetMidX(v43);
  v44.origin.x = v11;
  v44.origin.y = v13;
  v44.size.width = v15;
  v44.size.height = v17;
  MinY = CGRectGetMinY(v44);
  navigationBar = [(UINavigationController *)self navigationBar];
  [navigationBar bounds];
  v22 = v21;
  v24 = v23;
  [(UINavigationController *)self _widthForLayout];
  v26 = v25;
  _nestedTopViewController = [(UINavigationController *)self _nestedTopViewController];
  topItem = [navigationBar topItem];
  [(UINavigationController *)self _preferredHeightForHidingNavigationBarForViewController:_nestedTopViewController topItem:topItem];
  v30 = v29;

  [navigationBar setBounds:{v22, v24, v26, v30}];
  topPalette = self->_topPalette;
  if (topPalette)
  {
    if ([(_UINavigationControllerPalette *)topPalette isAttached])
    {
      if ([(_UINavigationControllerPalette *)self->_topPalette isVisibleWhenPinningBarIsHidden])
      {
        if (*&self->_navigationControllerFlags)
        {
          _isPalettePinningBarHidden = [(_UINavigationControllerPalette *)self->_topPalette _isPalettePinningBarHidden];
          if (hiddenCopy && _isPalettePinningBarHidden && (edge == 4 || edge == 1))
          {
            [navigationBar frame];
            [navigationBar setFrame:{0.0, -v40}];
            goto LABEL_23;
          }
        }
      }
    }

    v32 = self->_topPalette;
    v33 = v30 * 0.5 + offset;
    if (v32 && (edge == 4 || edge == 1) && hiddenCopy && [(_UINavigationControllerPalette *)v32 isAttached])
    {
      [(UIView *)self->_topPalette bounds];
      v35 = v34;
      boundaryEdge = [(_UINavigationControllerPalette *)self->_topPalette boundaryEdge];
      v37 = -v35;
      if (boundaryEdge == 5)
      {
        v37 = v35;
      }

      v33 = v33 + v37;
    }
  }

  else
  {
    v33 = v30 * 0.5 + offset;
  }

  [(UINavigationController *)self _positionNavigationBar:navigationBar hidden:hiddenCopy edge:edge center:MidX offset:MinY, v33];
  if (dyld_program_sdk_at_least())
  {
    window = [navigationBar window];

    if (window)
    {
      [navigationBar layoutBelowIfNeeded];
    }
  }

  else
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __74__UINavigationController__positionNavigationBarHidden_edge_initialOffset___block_invoke;
    v41[3] = &unk_1E70F3590;
    v42 = navigationBar;
    [UIView performWithoutAnimation:v41];
  }

  if (objc_opt_respondsToSelector())
  {
    [(_UINavigationControllerVisualStyle *)self->_visualStyle navigationBarFrameChanged];
  }

LABEL_23:
}

- (void)_positionNavigationBarHidden:(BOOL)hidden edge:(unint64_t)edge
{
  hiddenCopy = hidden;
  if (hidden)
  {
    if ([(UINavigationController *)self _isNestedNavigationController])
    {
      _existingNavigationBar = [(UINavigationController *)self _existingNavigationBar];
      isHidden = [_existingNavigationBar isHidden];

      if (isHidden)
      {
        return;
      }
    }
  }

  if (!edge)
  {
    if (hiddenCopy)
    {
      navigationBar = [(UINavigationController *)self navigationBar];
      [navigationBar setAlpha:0.0];
      goto LABEL_12;
    }

LABEL_10:
    if ([(UINavigationController *)self _navigationBarAnimationWasCancelled])
    {
LABEL_13:
      selfCopy2 = self;
      v12 = hiddenCopy;
      edgeCopy = edge;
      goto LABEL_14;
    }

    navigationBar2 = [(UINavigationController *)self navigationBar];
    [navigationBar2 setAlpha:1.0];

    navigationBar = [(UINavigationController *)self navigationBar];
    [navigationBar _updateBarVisibilityForTopItem];
LABEL_12:

    goto LABEL_13;
  }

  if (edge != 15)
  {
    goto LABEL_10;
  }

  navigationBar3 = [(UINavigationController *)self navigationBar];
  v10 = navigationBar3;
  if (!hiddenCopy)
  {
    [navigationBar3 setAlpha:1.0];

    navigationBar4 = [(UINavigationController *)self navigationBar];
    [navigationBar4 _updateBarVisibilityForTopItem];

    goto LABEL_15;
  }

  [navigationBar3 setAlpha:0.0];

  selfCopy2 = self;
  v12 = 0;
  edgeCopy = 15;
LABEL_14:
  [(UINavigationController *)selfCopy2 _positionNavigationBarHidden:v12 edge:edgeCopy initialOffset:0.0];
LABEL_15:
  navigationBar5 = [(UINavigationController *)self navigationBar];
  navigationBar6 = [(UINavigationController *)self navigationBar];
  [navigationBar5 _setBarPosition:{-[UINavigationController _positionForBar:](self, "_positionForBar:", navigationBar6)}];
}

- (void)_positionPaletteHidden:(BOOL)hidden edge:(unint64_t)edge initialOffset:(double)offset
{
  hiddenCopy = hidden;
  if ([(UINavigationController *)self _isTransitioning])
  {
    return;
  }

  topPalette = self->_topPalette;
  if (!topPalette || [(_UINavigationControllerPalette *)topPalette boundaryEdge]== 5)
  {
    return;
  }

  navigationBar = [(UINavigationController *)self navigationBar];
  [navigationBar frame];
  v53 = v11;
  v13 = v12;

  navigationControllerFlags = self->_navigationControllerFlags;
  [(UIView *)self->_topPalette bounds];
  v58 = v15;
  v17 = v16 * 0.5;
  if (hiddenCopy || (navigationControllerFlags) && hiddenCopy)
  {
    [(_UINavigationControllerPalette *)self->_topPalette _isPalettePinningBarHidden];
  }

  if ([(_UINavigationControllerPalette *)self->_topPalette paletteIsHidden])
  {
    [(UINavigationController *)self _frameForPalette:self->_topPalette];
    [(_UINavigationControllerPalette *)self->_topPalette setFrame:?];
    [(UINavigationController *)self _installPaletteIntoViewHierarchy:self->_topPalette];
  }

  v59 = v17;
  v54 = v13;
  containerView = self->_containerView;
  if (containerView)
  {
    [(UIView *)containerView bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = *(MEMORY[0x1E695F058] + 8);
    v55 = *MEMORY[0x1E695F058];
  }

  else
  {
    v20 = *MEMORY[0x1E695F058];
    v22 = *(MEMORY[0x1E695F058] + 8);
    v24 = *(MEMORY[0x1E695F058] + 16);
    v26 = *(MEMORY[0x1E695F058] + 24);
    v55 = *MEMORY[0x1E695F058];
    v27 = v22;
  }

  v60 = *(MEMORY[0x1E695F058] + 24);
  v61 = *(MEMORY[0x1E695F058] + 16);
  v63.origin.x = v20;
  v63.origin.y = v22;
  v63.size.width = v24;
  v63.size.height = v26;
  MidX = CGRectGetMidX(v63);
  v64.origin.x = v20;
  v64.origin.y = v22;
  v64.size.width = v24;
  v64.size.height = v26;
  CGRectGetMinY(v64);
  v29 = [UINavigationController _computeTopBarCenter:self->_topPalette hidden:hiddenCopy edge:edge center:MidX offset:? minimumTopOffset:?];
  v31 = v30;
  [(UIView *)self->_topPalette frame];
  v56 = v32;
  v57 = v33;
  transitioningTopPalette = self->_transitioningTopPalette;
  if (transitioningTopPalette)
  {
    if (edge == 2)
    {
      v35 = 8;
    }

    else
    {
      v35 = 2;
    }

    v36 = [UINavigationController _computeTopBarCenter:transitioningTopPalette hidden:!hiddenCopy edge:v35 center:MidX offset:? minimumTopOffset:?];
    v38 = v37;
    [(UIView *)self->_transitioningTopPalette bounds];
    v40 = v36 - v39 * 0.5;
    v42 = v38 - v41 * 0.5;
    [(UIView *)self->_transitioningTopPalette frame];
    v60 = v44;
    v61 = v43;
    v45 = v40;
  }

  else
  {
    v45 = 0.0;
    v42 = v27;
    v40 = v55;
  }

  v46 = v58 * -0.5;
  if (hiddenCopy && [(_UINavigationControllerPalette *)self->_topPalette _isPalettePinningBarHidden]&& (edge == 8 || edge == 2))
  {
    v47 = self->_topPalette;
    offsetCopy = -v54;
  }

  else
  {
    v47 = self->_topPalette;
    offsetCopy = offset;
  }

  [(_UINavigationControllerPalette *)v47 _setTopConstraintConstant:offsetCopy];
  v49 = v31 - v59;
  if (edge != 8 && edge != 2)
  {
    [(_UINavigationControllerPalette *)self->_topPalette setFrame:v29 + v46, v49, v56, v57];
    v51 = self->_transitioningTopPalette;
    if (!v51)
    {
      return;
    }

    goto LABEL_43;
  }

  if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
  {
    if (!hiddenCopy || (navigationControllerFlags & 1) != 0)
    {
      if (!hiddenCopy && (navigationControllerFlags & 1) != 0)
      {
        [(_UINavigationControllerPalette *)self->_topPalette _setLeftConstraintConstant:v29 + v46 - v53];
        [(_UINavigationControllerPalette *)self->_topPalette _setTopConstraintConstant:-v54];
      }
    }

    else
    {
      [(_UINavigationControllerPalette *)self->_topPalette _setLeftConstraintConstant:v29 + v46];
    }

    [(_UINavigationControllerPalette *)self->_topPalette setFrame:v29 + v46, v49, v56, v57];
    v52 = self->_transitioningTopPalette;
    if (v52)
    {
      [(_UINavigationControllerPalette *)v52 _setLeftConstraintConstant:v45];
      v51 = self->_transitioningTopPalette;
LABEL_43:

      [(_UINavigationControllerPalette *)v51 setFrame:v40, v42, v61, v60];
    }
  }

  else
  {
    [(_UINavigationControllerPalette *)self->_topPalette setFrame:0 isAnimating:v29 + v46, v49, v56, v57];
    v50 = self->_transitioningTopPalette;
    if (v50)
    {

      [(_UINavigationControllerPalette *)v50 setFrame:0 isAnimating:v40, v42, v61, v60];
    }
  }
}

- (void)_positionTransitioningPalette:(id)palette outside:(BOOL)outside edge:(unint64_t)edge preservingYPosition:(BOOL)position
{
  positionCopy = position;
  outsideCopy = outside;
  v57 = *MEMORY[0x1E69E9840];
  paletteCopy = palette;
  v11 = paletteCopy;
  if (!paletteCopy || [paletteCopy boundaryEdge] == 5)
  {
    goto LABEL_24;
  }

  if (os_variant_has_internal_diagnostics())
  {
    if (outsideCopy && edge != 2 && edge != 8)
    {
      v47 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v56 = "[UINavigationController _positionTransitioningPalette:outside:edge:preservingYPosition:]";
        _os_log_fault_impl(&dword_188A29000, v47, OS_LOG_TYPE_FAULT, "Only pass outside==YES to %s for transitions!", buf, 0xCu);
      }
    }
  }

  else if (outsideCopy && edge != 2 && edge != 8)
  {
    v12 = *(__UILogGetCategoryCachedImpl("Assert", &_positionTransitioningPalette_outside_edge_preservingYPosition____s_category) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v56 = "[UINavigationController _positionTransitioningPalette:outside:edge:preservingYPosition:]";
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Only pass outside==YES to %s for transitions!", buf, 0xCu);
    }
  }

  navigationBar = [(UINavigationController *)self navigationBar];
  [navigationBar frame];
  v50 = v15;
  v52 = v14;
  v48 = v16;
  v18 = v17;

  navigationControllerFlags = self->_navigationControllerFlags;
  [(UIView *)self->_topPalette bounds];
  v21 = v20;
  v23 = v22 * 0.5;
  rect = v18;
  [v11 _isPalettePinningBarHidden];
  if ([v11 paletteIsHidden])
  {
    [(UINavigationController *)self _frameForPalette:v11];
    [v11 setFrame:?];
    [(UINavigationController *)self _installPaletteIntoViewHierarchy:v11];
  }

  containerView = self->_containerView;
  if (containerView)
  {
    [(UIView *)containerView bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
  }

  else
  {
    v26 = *MEMORY[0x1E695F058];
    v28 = *(MEMORY[0x1E695F058] + 8);
    v30 = *(MEMORY[0x1E695F058] + 16);
    v32 = *(MEMORY[0x1E695F058] + 24);
  }

  v58.origin.x = v26;
  v58.origin.y = v28;
  v58.size.width = v30;
  v58.size.height = v32;
  MidX = CGRectGetMidX(v58);
  v59.origin.x = v26;
  v59.origin.y = v28;
  v59.size.width = v30;
  v59.size.height = v32;
  CGRectGetMinY(v59);
  v34 = [UINavigationController _computeTopBarCenter:v11 hidden:outsideCopy edge:edge center:MidX offset:? minimumTopOffset:?];
  v36 = v35;
  v37 = v34 + v21 * -0.5;
  [v11 frame];
  v41 = v39;
  v42 = v40;
  if (positionCopy)
  {
    v43 = v38;
    v44 = v37;
    MinY = CGRectGetMinY(*(&v38 - 1));
    v60.origin.y = v51;
    v60.origin.x = v53;
    v60.size.width = v49;
    v60.size.height = rect;
    v46 = MinY - CGRectGetMaxY(v60);
  }

  else
  {
    v43 = v36 - v23;
    if (![v11 _isPalettePinningBarHidden])
    {
      goto LABEL_19;
    }

    v46 = -rect;
  }

  [v11 _setTopConstraintConstant:v46];
LABEL_19:
  if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
  {
    if ((navigationControllerFlags & 1) == 0)
    {
      [v11 _setLeftConstraintConstant:v37];
    }

    [v11 setFrame:{v37, v43, v41, v42}];
  }

  else
  {
    [(_UINavigationControllerPalette *)self->_topPalette setFrame:0 isAnimating:v37, v43, v41, v42];
    [v11 _setLeftConstraintConstant:v37];
  }

LABEL_24:
}

- (void)_repositionPaletteWithNavigationBarHidden:(BOOL)hidden duration:(double)duration shouldUpdateNavigationItems:(BOOL)items
{
  hiddenCopy = hidden;
  [(UIView *)self->_topPalette bounds];
  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFFFFFFFFFELL | hiddenCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__UINavigationController__repositionPaletteWithNavigationBarHidden_duration_shouldUpdateNavigationItems___block_invoke;
  aBlock[3] = &unk_1E7102A08;
  v18 = hiddenCopy;
  aBlock[4] = self;
  aBlock[5] = v9;
  aBlock[6] = v10;
  aBlock[7] = v11;
  aBlock[8] = v12;
  itemsCopy = items;
  v13 = _Block_copy(aBlock);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __105__UINavigationController__repositionPaletteWithNavigationBarHidden_duration_shouldUpdateNavigationItems___block_invoke_2;
  v15[3] = &unk_1E70FA0F0;
  v16 = hiddenCopy;
  v15[4] = self;
  v14 = _Block_copy(v15);
  if (duration <= 0.0)
  {
    v13[2](v13);
    v14[2](v14, 1);
  }

  else
  {
    [UIView animateWithDuration:v13 animations:v14 completion:duration];
  }
}

void __105__UINavigationController__repositionPaletteWithNavigationBarHidden_duration_shouldUpdateNavigationItems___block_invoke(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2 = 0.0;
    if ([*(a1 + 32) _viewControllerUnderlapsStatusBar])
    {
      [*(a1 + 32) _statusBarHeightAdjustmentForCurrentOrientation];
      v2 = v3;
    }

    [*(a1 + 32) _setNavigationBarHidesCompletelyOffscreen:1];
    [*(a1 + 32) _positionNavigationBarHidden:1 edge:1 initialOffset:*(a1 + 64)];
    [*(a1 + 32) _positionPaletteHidden:0 edge:1 initialOffset:v2];
    [*(*(a1 + 32) + 1136) _setPalettePinningBarHidden:1];
  }

  else
  {
    if (*(a1 + 73) == 1 && ([*(a1 + 32) _hasNestedNavigationController] & 1) == 0)
    {
      v4 = [*(a1 + 32) navigationBar];
      [v4 setLocked:0];

      v5 = [*(a1 + 32) _navigationItems];
      v6 = [*(a1 + 32) navigationBar];
      [v6 setItems:v5];

      v7 = [*(a1 + 32) navigationBar];
      [v7 setLocked:1];
    }

    v8 = *(a1 + 32);
    v9 = [v8 _viewControllerForObservableScrollView];
    v10 = [*(a1 + 32) _topViewControllerObservableScrollViewForEdge:1];
    [v8 _updateTopViewFramesToMatchScrollOffsetInViewController:v9 contentScrollView:v10 topLayoutType:0];

    [*(a1 + 32) _setNavigationBarHidesCompletelyOffscreen:0];
    [*(a1 + 32) _positionNavigationBarHidden:0 edge:1 initialOffset:0.0];
    [*(a1 + 32) _positionPaletteHidden:0 edge:1 initialOffset:0.0];
  }

  if ([*(a1 + 32) _searchHidNavigationBar])
  {
    v11 = [*(a1 + 32) navigationBar];
    [v11 _animateForSearchPresentation:*(a1 + 72)];
  }

  [*(a1 + 32) _layoutTopViewController];
  v12 = *(a1 + 32);
  v13 = [v12 topViewController];
  [v12 _computeAndApplyScrollContentInsetDeltaForViewController:v13];
}

uint64_t __105__UINavigationController__repositionPaletteWithNavigationBarHidden_duration_shouldUpdateNavigationItems___block_invoke_2(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    return [*(*(result + 32) + 1136) _setPalettePinningBarHidden:0];
  }

  return result;
}

- (void)_setNavigationBarHidden:(BOOL)hidden edgeIfNotNavigating:(unint64_t)navigating duration:(double)duration
{
  if ((*&self->_navigationControllerFlags & 1) == hidden)
  {
    return;
  }

  v22[1] = v8;
  v22[2] = v7;
  v22[9] = v5;
  v22[10] = v6;
  hiddenCopy = hidden;
  v22[0] = navigating;
  durationCopy = duration;
  _isTransitioningOrPaletteIsTransitioning = [(UINavigationController *)self _isTransitioningOrPaletteIsTransitioning];
  topPalette = self->_topPalette;
  if (!topPalette || ![(_UINavigationControllerPalette *)topPalette isAttached])
  {
    v16 = 0;
LABEL_9:
    if ([(UINavigationController *)self wasLastOperationAnimated])
    {
      [(UINavigationController *)self _animationParametersForHidingNavigationBar:hiddenCopy lastOperation:[(UINavigationController *)self lastOperation] edge:v22 duration:&durationCopy];
    }

    if (v16)
    {
      if ([(_UINavigationControllerPalette *)self->_topPalette isPinned])
      {
        [(_UINavigationControllerPalette *)self->_topPalette _setPalettePinningBarHidden:hiddenCopy];
        [(_UINavigationControllerPalette *)self->_topPalette _resetConstraintConstants:0.0];
      }

      else
      {
        transitionCoordinator = [(UIViewController *)self transitionCoordinator];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __79__UINavigationController__setNavigationBarHidden_edgeIfNotNavigating_duration___block_invoke;
        v19[3] = &unk_1E71018A8;
        v19[4] = self;
        v20 = hiddenCopy;
        [transitionCoordinator animateAlongsideTransition:0 completion:v19];
      }
    }

    [(UINavigationController *)self _setNavigationBarHidden:hiddenCopy edge:v22[0] duration:durationCopy];
    return;
  }

  isVisibleWhenPinningBarIsHidden = [(_UINavigationControllerPalette *)self->_topPalette isVisibleWhenPinningBarIsHidden];
  if (_isTransitioningOrPaletteIsTransitioning || !isVisibleWhenPinningBarIsHidden)
  {
    v16 = isVisibleWhenPinningBarIsHidden;
    if (hiddenCopy && isVisibleWhenPinningBarIsHidden && _isTransitioningOrPaletteIsTransitioning)
    {
      superview = [(UIView *)self->_topPalette superview];

      if (superview)
      {
        v16 = 1;
      }

      else
      {
        v16 = 1;
        [(_UINavigationControllerPalette *)self->_topPalette _setPalettePinningBarHidden:1];
      }
    }

    goto LABEL_9;
  }

  if (!hiddenCopy)
  {
    [(UINavigationController *)self _unhideNavigationBarForEdge:navigating];
  }

  [(UINavigationController *)self _repositionPaletteWithNavigationBarHidden:hiddenCopy duration:1 shouldUpdateNavigationItems:duration];
}

uint64_t __79__UINavigationController__setNavigationBarHidden_edgeIfNotNavigating_duration___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if ((result & 1) == 0)
  {
    [*(*(a1 + 32) + 1136) _setPalettePinningBarHidden:*(a1 + 40)];
    v4 = [*(a1 + 32) _viewControllerUnderlapsStatusBar];
    v5 = 0.0;
    if (v4)
    {
      [*(a1 + 32) _statusBarHeightAdjustmentForCurrentOrientation];
    }

    v6 = *(*(a1 + 32) + 1136);
    if (!*(a1 + 40))
    {
      v5 = 0.0;
    }

    return [v6 _resetConstraintConstants:v5];
  }

  return result;
}

- (double)_computeTopBarCenter:(int)center hidden:(unint64_t)hidden edge:(double)edge center:offset:minimumTopOffset:
{
  v9 = a2;
  if (!self)
  {
    edge = 0.0;
    goto LABEL_21;
  }

  if ((*(self + 1289) & 0x20) != 0)
  {
    center = 0;
  }

  if (*(self + 1324) == 1)
  {
    navigationBar = [self navigationBar];
    traitCollection = [navigationBar traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 3)
    {
      [self _contentOverlayInsets];
      v14 = v13 * 0.5;
      [self _contentOverlayInsets];
      edge = edge + v14 - v15 * 0.5;
    }
  }

  [(UINavigationController *)self _computeTopAvoidanceAreaForBar:v9 edge:hidden hidden:center];
  v16 = center ^ 1;
  if (!hidden)
  {
    v16 = 1;
  }

  if (v16)
  {
    goto LABEL_16;
  }

  [v9 bounds];
  v18 = 0.0;
  if (*(self + 1360) == 1)
  {
    v18 = *(self + 1368);
  }

  if (hidden == 8)
  {
    edge = edge + v17 + v18;
    goto LABEL_21;
  }

  if (hidden != 2)
  {
LABEL_16:
    if (hidden == 1)
    {
      centerCopy = center;
    }

    else
    {
      centerCopy = 1;
    }

    if ((centerCopy & 1) == 0)
    {
      [v9 bounds];
      CGRectGetHeight(v21);
      [v9 anchorPoint];
    }
  }

  else
  {
    edge = edge - (v17 + v18);
  }

LABEL_21:

  return edge;
}

- (double)_computeTopAvoidanceAreaForBar:(unint64_t)bar edge:(int)edge hidden:
{
  v7 = a2;
  if (self)
  {
    if ([self _searchHidNavigationBar])
    {
      hidNavigationBar = 1;
    }

    else
    {
      topViewController = [self topViewController];
      searchDisplayController = [topViewController searchDisplayController];
      hidNavigationBar = [searchDisplayController hidNavigationBar];
    }

    v11 = edge ^ 1;
    if (bar > 1)
    {
      v11 = 1;
    }

    v12 = v11 | hidNavigationBar;
    if (*(self + 1324) == 1)
    {
      if ((v12 & 1) != 0 || (v13 = 0.0, *(self + 1384) == 3))
      {
        selfCopy = self;
        v15 = selfCopy;
        if (selfCopy[1324] == 1 && ([selfCopy _existingView], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "_usesMinimumSafeAreas"), v16, v17))
        {
          _existingView = [v15 _existingView];
          [_existingView _minimumSafeAreaInsets];
          v13 = v19;
        }

        else
        {
          [v15 _contentOverlayInsets];
          v13 = v21;
        }
      }
    }

    else
    {
      v20 = *(self + 1384);
      if (v20 == 3)
      {
        _existingView2 = [self _existingView];
        window = [_existingView2 window];

        v24 = __UIStatusBarManagerForWindow(window);
        windowScene = [window windowScene];
        [v24 defaultStatusBarHeightInOrientation:{objc_msgSend(windowScene, "_interfaceOrientation")}];
        v13 = v26;
      }

      else
      {
        v13 = 0.0;
        if (!v20 && ([self _viewControllerUnderlapsStatusBar] & v12) == 1)
        {
          if ([self _useStandardStatusBarHeight])
          {
            v13 = *(self + 1040);
          }

          else
          {
            [self _statusBarHeightAdjustmentForCurrentOrientation];
            v13 = v29;
          }
        }
      }
    }

    if ([*(self + 1136) boundaryEdge] == 5)
    {
      [*(self + 1136) frame];
      v13 = v13 + v27;
    }
  }

  else
  {
    v13 = 0.0;
  }

  return v13;
}

- (void)_setNavigationBarHidesCompletelyOffscreen:(BOOL)offscreen
{
  v3 = 0x200000000;
  if (!offscreen)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFDFFFFFFFFLL | v3;
}

- (void)_setSearchHidNavigationBar:(BOOL)bar
{
  barCopy = bar;
  v14 = *MEMORY[0x1E69E9840];
  _outermostNavigationController = [(UINavigationController *)self _outermostNavigationController];
  if (os_variant_has_internal_diagnostics())
  {
    v6 = !barCopy;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    if (+[UISearchController _forceSearchBarHostedInNavigationBar])
    {
      if (![(UINavigationController *)self _searchHidNavigationBar])
      {
        v8 = *(__UILogGetCategoryCachedImpl("UISearchController", &_setSearchHidNavigationBar____s_category) + 8);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = MEMORY[0x1E696AF00];
          v10 = v8;
          callStackSymbols = [v9 callStackSymbols];
          v12 = 138412290;
          v13 = callStackSymbols;
        }
      }
    }
  }

  if (_outermostNavigationController == self)
  {
    v7 = 0x1000000000000;
    if (!barCopy)
    {
      v7 = 0;
    }

    *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFEFFFFFFFFFFFFLL | v7;
  }

  else
  {
    [(UINavigationController *)_outermostNavigationController _setSearchHidNavigationBar:barCopy];
  }
}

- (void)_positionNavigationBar:(id)bar hidden:(BOOL)hidden edge:(unint64_t)edge center:(CGPoint)center offset:(double)offset
{
  x = center.x;
  hiddenCopy = hidden;
  barCopy = bar;
  traitCollection = [(UIViewController *)self traitCollection];
  if (_UISMCBarsEnabled())
  {
    navigationBar = self->_navigationBar;
    traitCollection2 = [(UIView *)navigationBar traitCollection];
    [(UINavigationBar *)navigationBar _minimumTopPaddingWithTraitCollection:traitCollection2];

    [traitCollection _presentationSemanticContext];
  }

  v14 = [UINavigationController _computeTopBarCenter:barCopy hidden:hiddenCopy edge:edge center:x offset:? minimumTopOffset:?];
  v16 = v15;
  if ((*(&self->_navigationControllerFlags + 4) & 2) != 0 && hiddenCopy && (edge == 4 || edge == 1) && ![(UINavigationController *)self _useStandardStatusBarHeight]&& [(UINavigationController *)self _viewControllerUnderlapsStatusBar])
  {
    [(UINavigationController *)self _statusBarHeightAdjustmentForCurrentOrientation];
    v16 = v16 - v17;
  }

  [barCopy setCenter:{v14, v16}];
}

- (void)_unhideNavigationBarForEdge:(unint64_t)edge
{
  v5 = [(UINavigationController *)self _navigationBarHiddenByDefault:1];
  view = [(UIViewController *)self view];
  [view addSubview:v5];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__UINavigationController__unhideNavigationBarForEdge___block_invoke;
  v8[3] = &unk_1E70F36D0;
  v9 = v5;
  edgeCopy = edge;
  v8[4] = self;
  v7 = v5;
  [UIView performWithoutAnimation:v8];
}

uint64_t __54__UINavigationController__unhideNavigationBarForEdge___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 1136) && (v3 = [*(v2 + 1136) isAttached], v2 = *(a1 + 32), v3))
  {
    v4 = [*(v2 + 1136) isVisibleWhenPinningBarIsHidden];
    v2 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  if ((*(v2 + 1289) & 0x80) == 0)
  {
    [v2 _positionNavigationBarHidden:1 edge:*(a1 + 48)];
    if ((([*(a1 + 32) _isTransitioningOrPaletteIsTransitioning] | v4) & 1) == 0)
    {
      [*(a1 + 32) _positionPaletteHidden:1 edge:*(a1 + 48)];
    }
  }

  [*(a1 + 40) setNeedsLayout];
  [*(a1 + 40) layoutIfNeeded];
  v5 = *(a1 + 40);

  return [v5 setHidden:0];
}

- (void)_setNavigationBarHidden:(BOOL)hidden edge:(unint64_t)edge duration:(double)duration
{
  hiddenCopy = hidden;
  if ((*&self->_navigationControllerFlags & 1) != hidden)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"_UINavigationControllerNavigationBarVisibilityWillChangeNotification" object:self];

    v11 = [(UINavigationController *)self _navigationBarHiddenByDefault:hiddenCopy];
    _isTransitioningOrPaletteIsTransitioning = [(UINavigationController *)self _isTransitioningOrPaletteIsTransitioning];
    if (!hiddenCopy)
    {
      _navigationItems = [(UINavigationController *)self _navigationItems];
      [v11 _displayItemsKeepingOwningNavigationBar:_navigationItems];

      [(UINavigationController *)self _unhideNavigationBarForEdge:edge];
    }

    _hasInterruptibleNavigationTransition = [(UINavigationController *)self _hasInterruptibleNavigationTransition];
    transitionCoordinator = [(UIViewController *)self transitionCoordinator];
    if (duration > 0.0)
    {
      if ([(UINavigationController *)self isInteractiveTransition]|| _hasInterruptibleNavigationTransition)
      {
        [(UINavigationController *)self _startInteractiveNavbarTransition];
      }

      if (_hasInterruptibleNavigationTransition && !transitionCoordinator)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:3629 description:@"Expected a non-nil coordinator if there is an interruptible animator associated with this transition"];
      }
    }

    *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFFFFFFFFFELL | hiddenCopy;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __64__UINavigationController__setNavigationBarHidden_edge_duration___block_invoke;
    aBlock[3] = &unk_1E7102A38;
    v35 = _hasInterruptibleNavigationTransition;
    aBlock[4] = self;
    aBlock[5] = edge;
    v36 = hiddenCopy;
    v37 = _isTransitioningOrPaletteIsTransitioning;
    *&aBlock[6] = duration;
    v16 = _Block_copy(aBlock);
    v17 = v16;
    if (duration <= 0.0)
    {
      v16[2](v16);
    }

    else if (_hasInterruptibleNavigationTransition)
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __64__UINavigationController__setNavigationBarHidden_edge_duration___block_invoke_2;
      v32[3] = &unk_1E70F3770;
      v33 = v16;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __64__UINavigationController__setNavigationBarHidden_edge_duration___block_invoke_3;
      v30[3] = &unk_1E71018A8;
      v30[4] = self;
      v31 = hiddenCopy;
      [transitionCoordinator animateAlongsideTransition:v32 completion:v30];
    }

    else
    {
      if ([(UINavigationController *)self isInteractiveTransition])
      {
        v18 = 196608;
      }

      else if (transitionCoordinator)
      {
        v18 = [transitionCoordinator completionCurve] << 16;
      }

      else
      {
        v18 = 0;
      }

      if (hiddenCopy)
      {
        v19 = v18 | 4;
      }

      else
      {
        v19 = v18;
      }

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __64__UINavigationController__setNavigationBarHidden_edge_duration___block_invoke_4;
      v29[3] = &unk_1E70F5AC0;
      v29[4] = self;
      [UIView animateWithDuration:v19 delay:v17 options:v29 animations:duration completion:0.0];
    }

    [(UIViewController *)self _invalidatePreferences:0 excluding:?];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __64__UINavigationController__setNavigationBarHidden_edge_duration___block_invoke_5;
    v28[3] = &unk_1E70F32F0;
    v28[4] = self;
    v28[5] = edge;
    v20 = _Block_copy(v28);
    if (duration <= 0.0)
    {
      if ((*(&self->_navigationControllerFlags + 2) & 2) != 0)
      {
        topViewController = [(UINavigationController *)self topViewController];
        transitionCoordinator2 = [topViewController transitionCoordinator];

        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __64__UINavigationController__setNavigationBarHidden_edge_duration___block_invoke_6;
        v26[3] = &unk_1E7101880;
        v26[4] = self;
        v27 = v20;
        [transitionCoordinator2 animateAlongsideTransition:0 completion:v26];

        goto LABEL_32;
      }

      v21 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [(UINavigationController *)self _hideShowNavigationBarDidStop:@"UINavigationControllerHideShowNavigationBar" finished:v21 context:0];
    }

    else if (!_hasInterruptibleNavigationTransition && [(UINavigationController *)self isInteractiveTransition])
    {
      +[UIView _finishAnimationTracking];
    }

    v20[2](v20);
LABEL_32:
  }

  if (objc_opt_respondsToSelector())
  {
    [(_UINavigationControllerVisualStyle *)self->_visualStyle navigationBarVisibilityChanged];
  }

  [(UIViewController *)self _updateTabBarLayout];
  if (!hiddenCopy && [(UINavigationController *)self _isPushingOrPopping])
  {
    _containingTabBarController = [(UIViewController *)self _containingTabBarController];

    if (_containingTabBarController)
    {
      [(UINavigationController *)self _positionNavigationBarHidden:0];
    }
  }
}

uint64_t __64__UINavigationController__setNavigationBarHidden_edge_duration___block_invoke(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    v2 = [*(a1 + 32) _splitViewControllerEnforcingClass:1];
    [v2 _navigationControllerDidChangeNavigationBarHidden:*(a1 + 32)];
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    [*(a1 + 32) setNeedsStatusBarAppearanceUpdate];
    [v3 _setNeedsUserInterfaceAppearanceUpdate];
    [v3 setNeedsWhitePointAdaptivityStyleUpdate];
  }

  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1 && *(a1 + 40) == 1)
  {
    v6 = *(a1 + 32);
    if ((v6[1289] & 0x20) != 0)
    {
      v7 = [v6 navigationBar];
      v8 = [v7 superview];
      v9 = [*(a1 + 32) navigationBar];
      [v8 sendSubviewToBack:v9];
    }
  }

  v10 = *(*(a1 + 32) + 1136);
  if (v10 && [v10 boundaryEdge] == 5)
  {
    if (*(a1 + 57) == 1 && ([*(*(a1 + 32) + 1136) isVisibleWhenPinningBarIsHidden] & 1) == 0)
    {
      v11 = [*(*(a1 + 32) + 1136) superview];
      [v11 sendSubviewToBack:*(*(a1 + 32) + 1136)];
    }

    else
    {
      v11 = [*(*(a1 + 32) + 1136) superview];
      [v11 bringSubviewToFront:*(*(a1 + 32) + 1136)];
    }
  }

  [*(a1 + 32) _positionNavigationBarHidden:*(a1 + 57) edge:*(a1 + 40)];
  v12 = [*(*(a1 + 32) + 1136) _restartPaletteTransitionIfNecessary];
  if (*(a1 + 58))
  {
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = [v13 transitionCoordinator];
      [v13 _startPaletteTransitionIfNecessary:v14 animated:0];
    }
  }

  else
  {
    [*(a1 + 32) _positionPaletteHidden:*(a1 + 57) edge:*(a1 + 40)];
  }

  if ((*(a1 + 57) & 1) == 0)
  {
    v15 = [*(a1 + 32) navigationBar];
    [v15 _fadeAllViewsIn];
  }

  v16 = *(a1 + 40);
  result = _UISolariumEnabled();
  if ((!result || *(a1 + 48) != 0.0) && v16 == 1)
  {
    v18 = *(a1 + 32);

    return [v18 _layoutTopViewController];
  }

  return result;
}

void __64__UINavigationController__setNavigationBarHidden_edge_duration___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 1288);
  v4 = a2;
  if ([v4 isCancelled] && (v3 & 1) != *(a1 + 40))
  {
    [*(a1 + 32) _setNavigationBarAnimationWasCancelled:0];
  }

  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v5 _hideShowNavigationBarDidStop:@"UINavigationControllerHideShowNavigationBar" finished:v6 context:v4];
}

void __64__UINavigationController__setNavigationBarHidden_edge_duration___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  [v2 _hideShowNavigationBarDidStop:@"UINavigationControllerHideShowNavigationBar" finished:v3 context:0];
}

void __64__UINavigationController__setNavigationBarHidden_edge_duration___block_invoke_5(uint64_t a1)
{
  if (*(a1 + 40) != 1)
  {
    [*(a1 + 32) _layoutTopViewController];
  }

  v2 = *(a1 + 32);
  v3 = [v2 topViewController];
  [v2 _computeAndApplyScrollContentInsetDeltaForViewController:v3];
}

uint64_t __64__UINavigationController__setNavigationBarHidden_edge_duration___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E696AD98];
  v5 = a2;
  v6 = [v4 numberWithBool:1];
  [v3 _hideShowNavigationBarDidStop:@"UINavigationControllerHideShowNavigationBar" finished:v6 context:v5];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

- (void)_hideShowNavigationBarDidStop:(id)stop finished:(id)finished context:(id)context
{
  v6 = [(UINavigationController *)self _navbarIsAppearingInteractively:stop];
  if ([(UINavigationController *)self _navigationBarAnimationWasCancelled])
  {
    *&self->_navigationControllerFlags ^= 1uLL;
    [(UINavigationController *)self _setNavigationBarAnimationWasCancelled:0];
  }

  navigationBar = [(UINavigationController *)self navigationBar];
  v19 = navigationBar;
  if (*&self->_navigationControllerFlags)
  {
    _navigationItems = [(UINavigationController *)self _navigationItems];
    [v19 _displayItemsKeepingOwningNavigationBar:_navigationItems];

    if ((*(&self->_navigationControllerFlags + 1) & 0x20) == 0)
    {
      topPalette = self->_topPalette;
      if (topPalette && [(_UINavigationControllerPalette *)topPalette isVisibleWhenPinningBarIsHidden])
      {
        [(UINavigationController *)self _repositionPaletteWithNavigationBarHidden:1 duration:1 shouldUpdateNavigationItems:0.0];
      }

      else
      {
        [v19 removeFromSuperview];
        [v19 setHidden:1];
        v14 = self->_topPalette;
        if (v14 && ![(_UINavigationControllerPalette *)v14 isVisibleWhenPinningBarIsHidden])
        {
          [(UIView *)self->_topPalette removeFromSuperview];
        }
      }
    }
  }

  else
  {
    superview = [navigationBar superview];
    navigationBar2 = [(UINavigationController *)self navigationBar];
    [superview bringSubviewToFront:navigationBar2];

    v10 = self->_topPalette;
    if (v10 && [(_UINavigationControllerPalette *)v10 boundaryEdge]== 5)
    {
      superview2 = [(UIView *)self->_topPalette superview];
      if (superview2)
      {
      }

      else if ([(_UINavigationControllerPalette *)self->_topPalette isAttached])
      {
        [(UINavigationController *)self _installPaletteIntoViewHierarchy:self->_topPalette];
        goto LABEL_18;
      }

      superview3 = [(UIView *)self->_topPalette superview];
      [superview3 bringSubviewToFront:self->_topPalette];
    }
  }

LABEL_18:
  if (v6)
  {
    if (![(UINavigationController *)self _hasInterruptibleNavigationTransition])
    {
      layer = [v19 layer];
      [layer setTimeOffset:0.0];
      LODWORD(v17) = 1.0;
      [layer setSpeed:v17];
    }

    [(UINavigationController *)self _setNavbarAnimationId:0];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_UINavigationControllerNavigationBarVisibilityDidChangeNotification" object:self];
}

- (void)setPretendNavBarHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  _outermostNavigationController = [(UINavigationController *)self _outermostNavigationController];
  if (_outermostNavigationController == self)
  {
    v6 = 0x2000;
    if (!hiddenCopy)
    {
      v6 = 0;
    }

    *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFFFFFFDFFFLL | v6;
  }

  else
  {
    v7 = _outermostNavigationController;
    [(UINavigationController *)_outermostNavigationController setPretendNavBarHidden:hiddenCopy];
    _outermostNavigationController = v7;
  }
}

- (void)setNavBarWillHideAfterAnimation:(BOOL)animation
{
  if (((((*&self->_navigationControllerFlags & 0x4000) == 0) ^ animation) & 1) == 0)
  {
    v3 = 0x4000;
    if (!animation)
    {
      v3 = 0;
    }

    *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFFFFFFBFFFLL | v3;
  }
}

- (void)setSearchBarHidNavBar:(BOOL)bar
{
  v3 = 0x10000;
  if (!bar)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFFFFFEFFFFLL | v3;
}

- (void)setAvoidMovingNavBarOffscreenBeforeUnhiding:(BOOL)unhiding
{
  v3 = 0x8000;
  if (!unhiding)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFFFFFF7FFFLL | v3;
}

- (void)_sendNavigationBarToBack
{
  navigationBar = [(UINavigationController *)self navigationBar];
  superview = [navigationBar superview];
  navigationBar2 = [(UINavigationController *)self navigationBar];
  [superview sendSubviewToBack:navigationBar2];
}

uint64_t __43__UINavigationController__configureToolbar__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1016) _setBarPosition:{objc_msgSend(*(a1 + 32), "_positionForBar:", *(*(a1 + 32) + 1016))}];
  [*(*(a1 + 32) + 1016) setAutoresizingMask:10];
  [*(*(a1 + 32) + 1016) sizeToFit];
  v2 = [*(*(a1 + 32) + 1016) superview];
  v3 = *(*(a1 + 32) + 992);

  if (v2 != v3)
  {
    [*(*(a1 + 32) + 992) addSubview:*(*(a1 + 32) + 1016)];
  }

  v4 = [*(a1 + 32) isToolbarHidden];
  if ((v4 & 1) == 0)
  {
    v5 = *(a1 + 32);
    v6 = [v5 topViewController];
    [v5 _updateToolbarItemsFromViewController:v6 animated:0];
  }

  [*(a1 + 32) _positionToolbarHidden:v4];
  [*(*(a1 + 32) + 1016) setHidden:v4];
  [*(*(a1 + 32) + 1016) setDelegate:?];
  [*(*(a1 + 32) + 1016) _setLocked:1];
  v7 = *(a1 + 32);

  return [v7 _configureBarsAutomaticActions];
}

- (void)setToolbar:(id)toolbar
{
  toolbarCopy = toolbar;
  toolbar = self->_toolbar;
  v7 = toolbarCopy;
  if (toolbar != toolbarCopy)
  {
    if (toolbar)
    {
      _updateToolbarForViewControllerAnimated(toolbar, 0, 0);
      [(UIView *)self->_toolbar removeFromSuperview];
      [(NSMapTable *)self->_lastContentMarginForView removeObjectForKey:self->_toolbar];
    }

    objc_storeStrong(&self->_toolbar, toolbar);
    if (self->_toolbar)
    {
      [(UINavigationController *)self _configureToolbar];
    }
  }
}

- (void)setToolbarHidden:(BOOL)hidden animated:(BOOL)animated
{
  v4 = hidden;
  if (animated)
  {
    v6 = 0.2;
  }

  else
  {
    v6 = 0.0;
  }

  if ((*&self->_navigationControllerFlags & 4) != 0)
  {
    v8 = animated;
    disappearingViewController = [(UINavigationController *)self disappearingViewController];
    if (disappearingViewController)
    {
      mutableChildViewControllers = [(UIViewController *)self mutableChildViewControllers];
      disappearingViewController2 = [(UINavigationController *)self disappearingViewController];
      v12 = [mutableChildViewControllers containsObject:disappearingViewController2] ^ 1;
    }

    else
    {
      v12 = 0;
    }

    view = [(UIViewController *)self view];
    _shouldReverseLayoutDirection = [view _shouldReverseLayoutDirection];

    if (v12 ^ v4 ^ _shouldReverseLayoutDirection)
    {
      v7 = 2;
    }

    else
    {
      v7 = 8;
    }

    v6 = 0.0;
    if (v8)
    {
      [(UINavigationController *)self durationForTransition:1];
      v6 = v15;
    }
  }

  else
  {
    v7 = 4;
  }

  if ([(UINavigationController *)self _isNestedNavigationController])
  {
    *&self->_navigationControllerFlags &= ~0x200000000000uLL;
  }

  [(UINavigationController *)self _setToolbarHidden:v4 edge:v7 duration:v6];
}

- (void)_positionToolbarHidden:(BOOL)hidden edge:(unint64_t)edge crossFade:(BOOL)fade
{
  fadeCopy = fade;
  hiddenCopy = hidden;
  if (_UIUnifiedToolbarEnabled())
  {
    return;
  }

  _existingToolbar = [(UINavigationController *)self _existingToolbar];
  [_existingToolbar bounds];
  v10 = v9;
  v12 = v11;
  [_existingToolbar sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v14 = v13;
  v16 = v15;
  [_existingToolbar setBounds:{v10, v12, v13, v15}];
  navigationControllerFlags = self->_navigationControllerFlags;
  tabBarController = [(UIViewController *)self tabBarController];
  v19 = tabBarController;
  v20 = 0.0;
  if (tabBarController && (navigationControllerFlags & 0xC00) == 0)
  {
    tabBar = [tabBarController tabBar];
    v22 = tabBar;
    if (!tabBar)
    {
      goto LABEL_11;
    }

    window = [tabBar window];

    if (!window)
    {
      goto LABEL_11;
    }

    tabBar2 = [v19 tabBar];
    if ([tabBar2 isHidden])
    {
      parentViewController = [(UIViewController *)self parentViewController];

      if (parentViewController != v19)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
    }

    [v22 bounds];
    v20 = v26;
    goto LABEL_11;
  }

LABEL_12:
  containerView = self->_containerView;
  if (containerView)
  {
    [(UIView *)containerView bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
  }

  else
  {
    v29 = *MEMORY[0x1E695F058];
    v31 = *(MEMORY[0x1E695F058] + 8);
    v33 = *(MEMORY[0x1E695F058] + 16);
    v35 = *(MEMORY[0x1E695F058] + 24);
  }

  v55.origin.x = v29;
  v55.origin.y = v31;
  v55.size.width = v33;
  v55.size.height = v35;
  MidX = CGRectGetMidX(v55);
  v56.origin.x = v29;
  v56.origin.y = v31;
  v56.size.width = v33;
  v56.size.height = v35;
  v37 = CGRectGetMaxY(v56) + v16 * -0.5;
  v38 = !hiddenCopy;
  v39 = v20 <= 0.0 || hiddenCopy;
  if (v39)
  {
    v40 = v37;
  }

  else
  {
    v40 = v37 - v20;
  }

  if (hiddenCopy)
  {
    v41 = 0.0;
  }

  else
  {
    v41 = 1.0;
  }

  if ((v38 & 1) != 0 || fadeCopy)
  {
    [_existingToolbar alpha];
    if (v42 != v41 && ![(UINavigationController *)self _toolbarAnimationWasCancelled])
    {
      [_existingToolbar setAlpha:v41];
    }
  }

  v43 = ![(_UIViewControllerTransitionConductor *)self->_transitionConductor shouldAnimateBottomBarVisibility]|| fadeCopy;
  if ((v38 | v43))
  {
    v44 = _existingToolbar;
  }

  else
  {
    builtinTransitionGap = 0.0;
    v44 = _existingToolbar;
    if (self->_builtinTransitionStyle == 1)
    {
      builtinTransitionGap = self->_builtinTransitionGap;
    }

    v46 = v14 + builtinTransitionGap;
    if (edge == 8)
    {
      MidX = MidX + v46;
      v38 = 1;
    }

    else
    {
      v47 = MidX - v46;
      v38 = edge == 2;
      if (edge == 2)
      {
        MidX = v47;
      }

      else
      {
        v40 = v16 + v40;
      }
    }
  }

  if ((v38 | v43) & v39)
  {
    [v44 bounds];
    v57.origin.y = round(v40 - v57.size.height * 0.5);
    v57.origin.x = round(MidX - v57.size.width * 0.5);
    MaxY = CGRectGetMaxY(v57);
    _UIBackgroundExtensionForBarWithMaxYAndInsetFromHomeAffordanceAllowance(_existingToolbar, 0, MaxY);
  }

  UIFloorToViewScale(self->_containerView);
  v50 = v49 * 0.5;
  [_existingToolbar center];
  if (v52 != MidX || v51 != v50)
  {
    [_existingToolbar setCenter:{MidX, v50}];
  }

  if (objc_opt_respondsToSelector())
  {
    [(_UINavigationControllerVisualStyle *)self->_visualStyle toolbarFrameChanged];
  }
}

- (void)_setToolbarHidden:(BOOL)hidden edge:(unint64_t)edge duration:(double)duration
{
  hiddenCopy = hidden;
  if (!_UIUnifiedToolbarEnabled())
  {
    if (edge == 15)
    {
      shouldAnimateBottomBarVisibility = 1;
    }

    else if ([(UINavigationController *)self _shouldCrossFadeBottomBars])
    {
      shouldAnimateBottomBarVisibility = [(_UIViewControllerTransitionConductor *)self->_transitionConductor shouldAnimateBottomBarVisibility];
    }

    else
    {
      shouldAnimateBottomBarVisibility = 0;
    }

    if (hiddenCopy != (*&self->_navigationControllerFlags & 2) >> 1)
    {
      return;
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"_UINavigationControllerToolbarVisibilityWillChangeNotification" object:self];

    if (!shouldAnimateBottomBarVisibility || (*(&self->_navigationControllerFlags + 4) & 0x18) == 0 || ![(UIViewController *)self isViewLoaded])
    {
LABEL_69:
      transitionCoordinator = [(UIViewController *)self transitionCoordinator];
      _hasInterruptibleNavigationTransition = [(UINavigationController *)self _hasInterruptibleNavigationTransition];
      if (transitionCoordinator)
      {
        v92 = [transitionCoordinator presentationStyle] == -1;
      }

      else
      {
        v92 = 0;
      }

      if ([(UIViewController *)self isViewLoaded])
      {
        if ((hiddenCopy & 1) == 0)
        {
          v144[0] = MEMORY[0x1E69E9820];
          v144[1] = 3221225472;
          v144[2] = __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_10;
          v144[3] = &unk_1E7101F90;
          v144[4] = self;
          v144[5] = edge;
          v145 = shouldAnimateBottomBarVisibility;
          [UIView performWithoutAnimation:v144];
        }

        if (duration > 0.0 || v92)
        {
          if ((hiddenCopy & 1) == 0 && !shouldAnimateBottomBarVisibility)
          {
            *&self->_navigationControllerFlags |= 0x8000000000000000;
          }

          if ([(UINavigationController *)self isInteractiveTransition])
          {
            [(UINavigationController *)self _startInteractiveToolbarTransition];
          }

          if (!transitionCoordinator && _hasInterruptibleNavigationTransition)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:4276 description:@"Expected a non-nil coordinator if there is an interruptible animator associated with this transition"];
          }
        }

        else if (duration == 0.0)
        {
          v143[0] = MEMORY[0x1E69E9820];
          v143[1] = 3221225472;
          v143[2] = __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_11;
          v143[3] = &unk_1E70F3590;
          v143[4] = self;
          [UIView performWithoutAnimation:v143];
        }
      }

      v94 = 2;
      if (hiddenCopy)
      {
        v94 = 0;
      }

      *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFFFFFFFFFDLL | v94;
      if (objc_opt_respondsToSelector())
      {
        [(_UINavigationControllerVisualStyle *)self->_visualStyle toolbarVisibilityChanged];
      }

      if (![(UIViewController *)self isViewLoaded])
      {
        goto LABEL_117;
      }

      v140[0] = MEMORY[0x1E69E9820];
      v140[1] = 3221225472;
      v140[2] = __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_12;
      v140[3] = &unk_1E7102AE8;
      v141 = hiddenCopy;
      v140[4] = self;
      v140[5] = edge;
      v142 = shouldAnimateBottomBarVisibility;
      v95 = _Block_copy(v140);
      v96 = v95;
      if (_hasInterruptibleNavigationTransition)
      {
        v138[0] = MEMORY[0x1E69E9820];
        v138[1] = 3221225472;
        v138[2] = __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_13;
        v138[3] = &unk_1E70F3770;
        v139 = v95;
        v136[0] = MEMORY[0x1E69E9820];
        v136[1] = 3221225472;
        v136[2] = __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_14;
        v136[3] = &unk_1E71018A8;
        v137 = hiddenCopy;
        v136[4] = self;
        [transitionCoordinator animateAlongsideTransition:v138 completion:v136];
      }

      else if (duration > 0.0 || v92)
      {
        durationCopy = duration;
        if (transitionCoordinator)
        {
          [transitionCoordinator transitionDuration];
          durationCopy = v98;
        }

        isInteractiveTransition = [(UINavigationController *)self isInteractiveTransition];
        if (isInteractiveTransition)
        {
          v100 = 196608;
        }

        else
        {
          v100 = 0;
        }

        if (!isInteractiveTransition && transitionCoordinator)
        {
          v100 = [transitionCoordinator completionCurve] << 16;
        }

        *&v133 = 0;
        *(&v133 + 1) = &v133;
        v134 = 0x2020000000;
        v135 = 0;
        v130[0] = MEMORY[0x1E69E9820];
        v130[1] = 3221225472;
        v130[2] = __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_15;
        v130[3] = &unk_1E7102E50;
        v131 = v96;
        v132 = &v133;
        v129[0] = MEMORY[0x1E69E9820];
        v129[1] = 3221225472;
        v129[2] = __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_16;
        v129[3] = &unk_1E70FF890;
        v129[4] = self;
        v129[5] = &v133;
        [UIView animateWithDuration:v100 delay:v130 options:v129 animations:durationCopy completion:0.0];
        if ((*(*(&v133 + 1) + 24) & 1) == 0)
        {
          [(UINavigationController *)self _hideShowToolbarDidStop:@"UINavigationControllerHideShowToolbar" finished:MEMORY[0x1E695E118] context:0];
        }

        _Block_object_dispose(&v133, 8);
      }

      else
      {
        v95[2](v95);
      }

      v128[0] = MEMORY[0x1E69E9820];
      v128[1] = 3221225472;
      v128[2] = __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_17;
      v128[3] = &unk_1E70F32F0;
      v128[4] = self;
      v128[5] = edge;
      v101 = _Block_copy(v128);
      if (duration > 0.0 || transitionCoordinator)
      {
        if (_hasInterruptibleNavigationTransition)
        {
          goto LABEL_115;
        }

        if ([(UINavigationController *)self isInteractiveTransition])
        {
          [(UINavigationController *)self _finishAnimationTracking];
        }

        if (duration > 0.0 || v92)
        {
          goto LABEL_115;
        }
      }

      else if ((*(&self->_navigationControllerFlags + 2) & 2) != 0)
      {
        topViewController = [(UINavigationController *)self topViewController];
        transitionCoordinator2 = [topViewController transitionCoordinator];

        v126[0] = MEMORY[0x1E69E9820];
        v126[1] = 3221225472;
        v126[2] = __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_18;
        v126[3] = &unk_1E7101880;
        v126[4] = self;
        v127 = v101;
        [transitionCoordinator2 animateAlongsideTransition:0 completion:v126];

LABEL_116:
LABEL_117:

        return;
      }

      v104 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [(UINavigationController *)self _hideShowToolbarDidStop:@"UINavigationControllerHideShowToolbar" finished:v104 context:0];

LABEL_115:
      v101[2](v101);
      goto LABEL_116;
    }

    tabBarController = [(UIViewController *)self tabBarController];
    tabBar = [tabBarController tabBar];

    toolbar = [(UINavigationController *)self toolbar];
    barStyle = [tabBar barStyle];
    if (barStyle != [toolbar barStyle])
    {
      goto LABEL_68;
    }

    barTintColor = [tabBar barTintColor];
    v124 = tabBar;
    v125 = toolbar;
    if (barTintColor || ([toolbar barTintColor], (v119 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      tabBar = [tabBar barTintColor];
      toolbar = [toolbar barTintColor];
      if (![tabBar isEqual:toolbar])
      {
        v19 = 0;
        goto LABEL_26;
      }

      v122 = 1;
    }

    else
    {
      v122 = 0;
      v119 = 0;
    }

    backgroundImage = [v124 backgroundImage];
    if (backgroundImage)
    {

      v19 = 0;
      if (!v122)
      {
LABEL_27:
        tabBar = v124;
        toolbar = v125;
        if (barTintColor)
        {

          if (!v19)
          {
            goto LABEL_68;
          }

LABEL_31:
          if ((hiddenCopy & 1) == 0)
          {
            v195[0] = MEMORY[0x1E69E9820];
            v195[1] = 3221225472;
            v195[2] = __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke;
            v195[3] = &unk_1E7102A70;
            v195[4] = self;
            v196 = v125;
            edgeCopy = edge;
            v198 = shouldAnimateBottomBarVisibility;
            [UIView performWithoutAnimation:v195];
          }

          v21 = MEMORY[0x1E695EFD0];
          v133 = *(MEMORY[0x1E695EFD0] + 8);
          _shouldStretchDuringCrossfadeTransition = [v125 _shouldStretchDuringCrossfadeTransition];
          if (_shouldStretchDuringCrossfadeTransition)
          {
            _backgroundView = [v125 _backgroundView];
            [_backgroundView bounds];
            v24 = v23;

            [v124 bounds];
            v133 = 0uLL;
            v26 = 1.0;
            v112 = 0;
            v114 = (v24 - v25) * 0.5;
            v27 = v25 / v24;
          }

          else
          {
            v26 = *v21;
            v27 = *(v21 + 24);
            v112 = *(v21 + 32);
            v114 = *(v21 + 40);
          }

          view = [(UIViewController *)self view];
          barTintColor2 = [v124 barTintColor];
          isTranslucent = [v124 isTranslucent];
          isTranslucent2 = [v125 isTranslucent];
          if ((*&self->_navigationControllerFlags & 0x800000000) != 0)
          {
            v29 = v124;
          }

          else
          {
            v29 = v125;
          }

          _backgroundView2 = [v29 _backgroundView];
          [_backgroundView2 frame];
          v123 = view;
          [v29 convertRect:view toView:?];
          v32 = v31;
          v34 = v33;
          v36 = v35;
          v38 = v37;

          if ((isTranslucent & 1) != 0 || isTranslucent2)
          {
            v39 = [[_UIBarBackground alloc] initWithFrame:v32, v34, v36, v38];
            [(_UIBarBackground *)v39 setTopAligned:0];
            v42 = objc_alloc_init(_UIBarBackgroundLayoutLegacy);
            [(_UIBarBackground *)v39 setLayout:v42];
            v110 = v42;
            -[_UIBarBackgroundLayoutLegacy configureEffectForStyle:backgroundTintColor:forceOpaque:](v42, "configureEffectForStyle:backgroundTintColor:forceOpaque:", [v124 barStyle], barTintColor2, 0);
            -[_UIBarBackgroundLayoutLegacy configureShadowForBarStyle:](v42, "configureShadowForBarStyle:", [v124 barStyle]);
            traitCollection = [v124 traitCollection];
            v44 = objc_opt_self();
            v45 = [traitCollection objectForTrait:v44];
            [(_UIBarBackground *)v39 setGroupName:v45];

            tabBar = v124;
            _backgroundView3 = v110;

            [(_UIBarBackground *)v39 transitionBackgroundViews];
            [(UIView *)v39 layoutIfNeeded];
          }

          else
          {
            v39 = [[UIView alloc] initWithFrame:v32, v34, v36, v38];
            _backgroundView3 = [v124 _backgroundView];
            backgroundColor = [_backgroundView3 backgroundColor];
            [(UIView *)v39 setBackgroundColor:backgroundColor];
          }

          layer = [(UIView *)v39 layer];
          [layer setAllowsGroupOpacity:0];

          superview = [v125 superview];

          v111 = v39;
          if (superview == v123)
          {
            [v123 insertSubview:v39 belowSubview:v125];
          }

          else
          {
            [v123 addSubview:v39];
          }

          view2 = [(UIViewController *)self view];
          _backgroundView4 = [v125 _backgroundView];
          [_backgroundView4 bounds];
          v52 = v51;
          v54 = v53;
          v56 = v55;
          v58 = v57;
          _backgroundView5 = [v125 _backgroundView];
          [view2 convertRect:_backgroundView5 fromView:{v52, v54, v56, v58}];
          MinY = CGRectGetMinY(v200);

          view3 = [(UIViewController *)self view];
          _backgroundView6 = [tabBar _backgroundView];
          [_backgroundView6 bounds];
          v64 = v63;
          v66 = v65;
          v68 = v67;
          v70 = v69;
          _backgroundView7 = [tabBar _backgroundView];
          [view3 convertRect:_backgroundView7 fromView:{v64, v66, v68, v70}];
          v72 = CGRectGetMinY(v201);

          v73 = _shouldStretchDuringCrossfadeTransition;
          if (MinY >= v72)
          {
            v73 = 1;
          }

          if (v72 >= MinY)
          {
            v74 = 0;
          }

          else
          {
            v74 = tabBar;
          }

          if (v73)
          {
            v75 = v74;
          }

          else
          {
            v75 = v125;
          }

          v107 = v75;
          if (v107)
          {
            v76 = objc_alloc_init(UIView);
          }

          else
          {
            v76 = 0;
          }

          v77 = +[UIColor blackColor];
          [(UIView *)v76 setBackgroundColor:v77];

          [(UIView *)v76 setOpaque:1];
          v176[0] = MEMORY[0x1E69E9820];
          v176[1] = 3221225472;
          v176[2] = __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_2;
          v176[3] = &unk_1E7102A98;
          v191 = isTranslucent;
          v109 = v124;
          v177 = v109;
          v192 = isTranslucent2;
          v78 = v125;
          v193 = hiddenCopy ^ 1;
          v178 = v78;
          selfCopy = self;
          v79 = v76;
          v180 = v79;
          v80 = v107;
          v181 = v80;
          v182 = v26;
          v183 = v133;
          v184 = v27;
          v185 = v112;
          v186 = v114;
          v194 = hiddenCopy;
          v187 = 0x3FF0000000000000;
          v188 = 0;
          v190 = 0;
          v189 = 0;
          [UIView performWithoutAnimation:v176];
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_3;
          aBlock[3] = &unk_1E7102AC0;
          v174 = hiddenCopy ^ 1;
          aBlock[4] = self;
          v81 = v78;
          v160 = v81;
          v118 = v79;
          v161 = v118;
          v82 = v80;
          v162 = v82;
          v165 = 0x3FF0000000000000;
          v168 = 0;
          v166 = 0;
          v167 = 0;
          v83 = v111;
          v163 = v83;
          v175 = hiddenCopy;
          v169 = v26;
          v170 = v133;
          v171 = v27;
          v172 = v112;
          v173 = v114;
          v84 = v109;
          v164 = v84;
          v113 = _Block_copy(aBlock);
          v154[0] = MEMORY[0x1E69E9820];
          v154[1] = 3221225472;
          v154[2] = __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_4;
          v154[3] = &unk_1E70F6B40;
          v155 = v84;
          v156 = v81;
          v115 = v82;
          v157 = v115;
          v121 = v83;
          v158 = v121;
          v85 = _Block_copy(v154);
          transitionCoordinator3 = [(UIViewController *)self transitionCoordinator];
          v87 = transitionCoordinator3;
          if (transitionCoordinator3)
          {
            v152[0] = MEMORY[0x1E69E9820];
            v152[1] = 3221225472;
            v152[2] = __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_6;
            v152[3] = &unk_1E70F3770;
            v88 = transitionCoordinator3;
            v153 = v113;
            v150[0] = MEMORY[0x1E69E9820];
            v150[1] = 3221225472;
            v150[2] = __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_7;
            v150[3] = &unk_1E70F3770;
            v151 = v85;
            [v88 animateAlongsideTransitionInView:v121 animation:v152 completion:v150];

            v89 = v113;
            v87 = v88;
          }

          else
          {
            v89 = v113;
            if (duration <= 0.0)
            {
              v85[2](v85);
            }

            else
            {
              v148[0] = MEMORY[0x1E69E9820];
              v148[1] = 3221225472;
              v148[2] = __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_8;
              v148[3] = &unk_1E70F0F78;
              v149 = v113;
              v146[0] = MEMORY[0x1E69E9820];
              v146[1] = 3221225472;
              v146[2] = __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_9;
              v146[3] = &unk_1E70F3608;
              v147 = v85;
              [UIView animateWithDuration:v148 animations:v146 completion:duration];
            }
          }

          tabBar = v124;
          toolbar = v125;
          goto LABEL_68;
        }

        if (v19)
        {
          goto LABEL_31;
        }

LABEL_68:

        goto LABEL_69;
      }
    }

    else
    {
      v48 = [v125 backgroundImageForToolbarPosition:1 barMetrics:0];
      if (v48 || ([v125 backgroundImageForToolbarPosition:1 barMetrics:1], (v48 = objc_claimAutoreleasedReturnValue()) != 0))
      {

        v19 = 0;
      }

      else
      {
        v105 = [v125 backgroundImageForToolbarPosition:4 barMetrics:0];
        if (v105)
        {
          v19 = 0;
        }

        else
        {
          v106 = [v125 backgroundImageForToolbarPosition:4 barMetrics:1];
          v19 = v106 == 0;

          v105 = 0;
        }
      }

      if ((v122 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

LABEL_26:

    goto LABEL_27;
  }

  navigationControllerFlags = self->_navigationControllerFlags;
  if (((navigationControllerFlags >> 1) & 1) == hiddenCopy)
  {
    v11 = 2;
    if (hiddenCopy)
    {
      v11 = 0;
    }

    *&self->_navigationControllerFlags = navigationControllerFlags & 0xFFFFFFFFFFFFFFFDLL | v11;

    [(UINavigationController *)self _updateFloatingBarContentAnimated:duration > 0.0];
  }
}

uint64_t __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 addSubview:*(a1 + 40)];

  [*(a1 + 32) _positionToolbarHidden:1 edge:*(a1 + 48) crossFade:*(a1 + 56)];
  v3 = *(a1 + 40);

  return [v3 layoutIfNeeded];
}

uint64_t __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 152) == 1)
  {
    v2 = [*(a1 + 32) _backgroundView];
    [v2 setAlpha:0.0];
  }

  if (*(a1 + 153) == 1)
  {
    v3 = [*(a1 + 40) _backgroundView];
    [v3 setAlpha:0.0];
  }

  if (*(a1 + 154) == 1 && (*(*(a1 + 48) + 1292) & 8) != 0)
  {
    v5 = *(a1 + 64);
    [*(a1 + 32) bounds];
    [v5 convertRect:*(a1 + 32) fromView:?];
    [*(a1 + 56) setFrame:?];
    v6 = *(a1 + 40);
    v7 = *(a1 + 88);
    v13[0] = *(a1 + 72);
    v13[1] = v7;
    v13[2] = *(a1 + 104);
    [v6 setTransform:v13];
  }

  else if (*(a1 + 155) == 1 && (*(*(a1 + 48) + 1292) & 0x10) != 0)
  {
    v4 = *(a1 + 64);
    [*(a1 + 40) bounds];
    [v4 convertRect:*(a1 + 40) fromView:?];
    [*(a1 + 56) setFrame:?];
  }

  [*(a1 + 56) frame];
  [*(a1 + 56) setFrame:{v8 + *(a1 + 128), *(a1 + 120) + v9, v10 - (*(a1 + 128) + *(a1 + 144)), v11 - (*(a1 + 120) + *(a1 + 136))}];
  return [*(a1 + 64) setMaskView:*(a1 + 56)];
}

uint64_t __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 160) == 1 && (*(*(a1 + 32) + 1292) & 8) != 0)
  {
    v3 = (a1 + 40);
    v4 = *(a1 + 40);
    v5 = *(MEMORY[0x1E695EFD0] + 16);
    v23 = *MEMORY[0x1E695EFD0];
    v24 = v5;
    v25 = *(MEMORY[0x1E695EFD0] + 32);
    [v4 setTransform:&v23];
    goto LABEL_7;
  }

  if (*(a1 + 161) == 1 && (*(*(a1 + 32) + 1292) & 0x10) != 0)
  {
    v2 = *(a1 + 128);
    v23 = *(a1 + 112);
    v24 = v2;
    v25 = *(a1 + 144);
    [*(a1 + 40) setTransform:&v23];
    v3 = (a1 + 72);
LABEL_7:
    v6 = *(a1 + 56);
    [*v3 bounds];
    [v6 convertRect:*v3 fromView:?];
    [*(a1 + 48) setFrame:{v7 + *(a1 + 88), *(a1 + 80) + v8, v9 - (*(a1 + 88) + *(a1 + 104)), v10 - (*(a1 + 80) + *(a1 + 96))}];
    v11 = *v3;
    v12 = [*v3 _backgroundView];
    [v12 frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [*(a1 + 32) view];
    [v11 convertRect:v21 toView:{v14, v16, v18, v20}];
    [*(a1 + 64) setFrame:?];
  }

  return [*(a1 + 64) layoutIfNeeded];
}

void __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_4(id *a1)
{
  v2 = [a1[4] _backgroundView];
  [v2 setAlpha:1.0];

  v3 = [a1[5] _backgroundView];
  [v3 setAlpha:1.0];

  v4 = a1[5];
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  v10[0] = *MEMORY[0x1E695EFD0];
  v10[1] = v5;
  v10[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v4 setTransform:v10];
  v6 = UIApp;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_5;
  v7[3] = &unk_1E70F35B8;
  v8 = a1[6];
  v9 = a1[7];
  [v6 _performBlockAfterCATransactionCommits:v7];
}

uint64_t __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setMaskView:0];
  v2 = *(a1 + 40);

  return [v2 removeFromSuperview];
}

void __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_10(uint64_t a1)
{
  v6 = [*(a1 + 32) toolbar];
  v2 = [*(a1 + 32) view];
  [v2 addSubview:v6];

  v3 = [v6 layer];
  [v3 removeAllAnimations];

  [*(a1 + 32) _positionToolbarHidden:1 edge:*(a1 + 40) crossFade:*(a1 + 48)];
  [v6 setHidden:0];
  v4 = *(a1 + 32);
  v5 = [v4 topViewController];
  [v4 _updateToolbarItemsFromViewController:v5 animated:0];
}

void __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_11(uint64_t a1)
{
  v1 = [*(a1 + 32) toolbar];
  [v1 layoutIfNeeded];
}

uint64_t __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_12(uint64_t a1)
{
  [*(*(a1 + 32) + 1016) setAutoresizingMask:0];
  result = [*(a1 + 32) _positionToolbarHidden:*(a1 + 48) edge:*(a1 + 40) crossFade:*(a1 + 49)];
  if (*(a1 + 40) == 4)
  {
    v3 = *(a1 + 32);

    return [v3 _layoutTopViewController];
  }

  return result;
}

void __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_14(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 1288);
  v5 = a2;
  if ([v5 isCancelled] && ((v4 >> 1) & 1) != (v3 ^ 1))
  {
    [*(a1 + 32) _setToolbarAnimationWasCancelled:0];
  }

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v6 _hideShowToolbarDidStop:@"UINavigationControllerHideShowToolbar" finished:v7 context:v5];
}

void __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_15(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = +[UIView _currentViewAnimationState];
  *(*(*(a1 + 40) + 8) + 24) = [v2 _didEndCount] > 0;
}

void __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_16(uint64_t a1, uint64_t a2)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    [v3 _hideShowToolbarDidStop:@"UINavigationControllerHideShowToolbar" finished:v4 context:0];
  }
}

void __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_17(uint64_t a1)
{
  if (*(a1 + 40) != 4)
  {
    [*(a1 + 32) _layoutTopViewController];
  }

  v5 = [*(a1 + 32) topViewController];
  [*(a1 + 32) _computeAndApplyScrollContentInsetDeltaForViewController:?];
  if (_UIBarsApplyChromelessEverywhere())
  {
    v2 = *(a1 + 32);
    if ((~v2[161] & 0x800000000002) == 0)
    {
      v3 = [v2 _outermostNavigationController];
      v4 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(v3, v5, 4, 0);
      [v3 _updateBackgroundTransitionProgressForScrollView:v4 toolbar:*(*(a1 + 32) + 1016)];
    }
  }
}

uint64_t __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_18(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E696AD98];
  v5 = a2;
  v6 = [v4 numberWithBool:1];
  [v3 _hideShowToolbarDidStop:@"UINavigationControllerHideShowToolbar" finished:v6 context:v5];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

- (void)_hideShowToolbarDidStop:(id)stop finished:(id)finished context:(id)context
{
  finishedCopy = finished;
  _toolbarIsAnimatingInteractively = [(UINavigationController *)self _toolbarIsAnimatingInteractively];
  navigationControllerFlags = self->_navigationControllerFlags;
  *&self->_navigationControllerFlags = navigationControllerFlags & 0xFFFFFFFFFFF7FFFFLL;
  if ([(UINavigationController *)self _toolbarAnimationWasCancelled])
  {
    isToolbarHidden = [(UINavigationController *)self isToolbarHidden];
    v10 = self->_navigationControllerFlags;
    if (isToolbarHidden)
    {
      v11 = v10 | 2;
      if ((navigationControllerFlags & 0x80000) != 0)
      {
        v11 &= ~0x400uLL;
      }

      *&self->_navigationControllerFlags = v11;
    }

    else
    {
      v14 = v10 & 0xFFFFFFFFFFFFFFFDLL;
      if ((navigationControllerFlags & 0x80000) != 0)
      {
        v14 |= 0x400uLL;
      }

      *&self->_navigationControllerFlags = v14;
      toolbar = [(UINavigationController *)self toolbar];
      [toolbar removeFromSuperview];
    }

    toolbar2 = [(UINavigationController *)self toolbar];
    [toolbar2 setHidden:!isToolbarHidden];

    [(UINavigationController *)self _setToolbarAnimationWasCancelled:0];
  }

  else if ([finishedCopy BOOLValue])
  {
    if ([(UINavigationController *)self isToolbarHidden])
    {
      toolbar3 = [(UINavigationController *)self toolbar];
      [toolbar3 removeFromSuperview];

      toolbar4 = [(UINavigationController *)self toolbar];
      [toolbar4 setHidden:1];
    }

    else if (context)
    {
      [(UINavigationController *)self _layoutTopViewController];
    }
  }

  if (_toolbarIsAnimatingInteractively)
  {
    if (![(UINavigationController *)self _hasInterruptibleNavigationTransition])
    {
      _existingToolbar = [(UINavigationController *)self _existingToolbar];
      layer = [_existingToolbar layer];
      [layer setTimeOffset:0.0];
      LODWORD(v19) = 1.0;
      [layer setSpeed:v19];
    }

    [(UINavigationController *)self _setToolbarAnimationId:0];
  }

  [(UIView *)self->_toolbar setAutoresizingMask:10];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_UINavigationControllerToolbarVisibilityDidChangeNotification" object:self];
}

- (id)_viewControllerForNavigationItem:(id)item
{
  v20 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  viewControllers = [(UINavigationController *)self viewControllers];
  v6 = [viewControllers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(viewControllers);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        navigationItem = [v10 navigationItem];

        if (navigationItem == itemCopy)
        {
          v13 = v10;

          goto LABEL_12;
        }
      }

      v7 = [viewControllers countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  navigationItem2 = [(UIViewController *)self->_disappearingViewController navigationItem];

  if (navigationItem2 == itemCopy)
  {
    v13 = self->_disappearingViewController;
  }

  else
  {
    v13 = 0;
  }

LABEL_12:

  return v13;
}

- (id)_navigationBarToUseForMarginsInNavigationBar:(id)bar
{
  barCopy = bar;
  modalPresentationStyle = [(UIViewController *)self modalPresentationStyle];
  if (modalPresentationStyle == UIModalPresentationOverCurrentContext || (v6 = barCopy, modalPresentationStyle == UIModalPresentationCurrentContext))
  {
    presentingViewController = [(UIViewController *)self presentingViewController];
    v6 = barCopy;
    if ([presentingViewController _isNavigationController])
    {
      _outermostNavigationController = [presentingViewController _outermostNavigationController];
      _existingNavigationBar = [_outermostNavigationController _existingNavigationBar];

      v6 = barCopy;
      if (_existingNavigationBar)
      {
        v6 = _existingNavigationBar;
      }
    }
  }

  return v6;
}

- (id)_preferredStatusBarStyleAnimationParameters
{
  if (_UISolariumEnabled())
  {
    initWithDefaultParameters = [[UIStatusBarStyleAnimationParameters alloc] initWithDefaultParameters];
    +[_UIScrollPocketContainerInteraction _lumaUserInterfaceStyleSpringDuration];
    [(UIStatusBarAnimationParameters *)initWithDefaultParameters setDuration:?];
    [(UIStatusBarAnimationParameters *)initWithDefaultParameters setDelay:0.0];
    [(UIStatusBarAnimationParameters *)initWithDefaultParameters setCurve:5];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UINavigationController;
    initWithDefaultParameters = [(UIViewController *)&v5 _preferredStatusBarStyleAnimationParameters];
  }

  return initWithDefaultParameters;
}

- (int64_t)preferredTrafficLightStyle
{
  navigationBar = [(UINavigationController *)self navigationBar];
  if (navigationBar)
  {
    v4 = navigationBar;
    glassUserInterfaceStyle = [*(navigationBar + 472) glassUserInterfaceStyle];

    if (glassUserInterfaceStyle == 2)
    {
      return 1;
    }

    if (glassUserInterfaceStyle == 1)
    {
      return 2;
    }
  }

  v7.receiver = self;
  v7.super_class = UINavigationController;
  return [(UIViewController *)&v7 preferredTrafficLightStyle];
}

- (void)_navigationBarDidChangeStyle:(id)style
{
  if (self->_navigationBar == style)
  {
    v6[7] = v3;
    v6[8] = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__UINavigationController__navigationBarDidChangeStyle___block_invoke;
    v6[3] = &unk_1E70F3590;
    v6[4] = self;
    [UIView performWithoutAnimation:v6];
    [(UIViewController *)self _invalidatePreferences:0 excluding:?];
  }
}

uint64_t __55__UINavigationController__navigationBarDidChangeStyle___block_invoke(uint64_t result)
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

- (void)_navigationBarDidEndAnimation:(id)animation
{
  animationCopy = animation;
  if (self->_navigationBar == animationCopy)
  {
    view = [(UIViewController *)self view];
    traitCollection = [view traitCollection];
    if ([traitCollection userInterfaceIdiom] == 3)
    {
      navigationControllerFlags = self->_navigationControllerFlags;

      if ((navigationControllerFlags & 0x40000000000000) == 0)
      {
        *&self->_navigationControllerFlags |= 0x40000000000000uLL;
        [(UIViewController *)self setNeedsFocusUpdate];
      }
    }

    else
    {
    }
  }

  _outermostNavigationController = [(UINavigationController *)self _outermostNavigationController];
  _existingNavigationBar = [_outermostNavigationController _existingNavigationBar];

  if (_existingNavigationBar == animationCopy)
  {
    transitionCoordinator = [(UIViewController *)self transitionCoordinator];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __56__UINavigationController__navigationBarDidEndAnimation___block_invoke;
      v11[3] = &unk_1E70F3B98;
      v12 = animationCopy;
      [transitionCoordinator animateAlongsideTransition:0 completion:v11];
    }

    else
    {
      [(UINavigationBar *)animationCopy _reenableUserInteraction];
    }
  }
}

- (void)_rememberPresentingFocusedItem:(id)item
{
  itemCopy = item;
  v6.receiver = self;
  v6.super_class = UINavigationController;
  [(UIViewController *)&v6 _rememberPresentingFocusedItem:itemCopy];
  topViewController = [(UINavigationController *)self topViewController];
  if (itemCopy)
  {
    [(UINavigationController *)self _rememberFocusedItem:itemCopy forViewController:topViewController];
  }

  else
  {
    [(UINavigationController *)self _forgetFocusedItemForViewController:topViewController];
  }
}

- (BOOL)_canRestoreFocusAfterTransitionToRecalledItem:(id)item inViewController:(id)controller
{
  itemCopy = item;
  controllerCopy = controller;
  if (dyld_program_sdk_at_least())
  {
    IsFocusedOrFocusable = [(UIViewController *)self _canRestoreFocusAfterTransitionToItem:itemCopy];
  }

  else if (-[UIViewController restoresFocusAfterTransition](self, "restoresFocusAfterTransition") && [controllerCopy restoresFocusAfterTransition])
  {
    view = [(UIViewController *)self view];
    if (_UIFocusEnvironmentIsAncestorOfEnvironment(view, itemCopy))
    {
      IsFocusedOrFocusable = _UIFocusItemIsFocusedOrFocusable(itemCopy);
    }

    else
    {
      IsFocusedOrFocusable = 0;
    }
  }

  else
  {
    IsFocusedOrFocusable = 0;
  }

  return IsFocusedOrFocusable;
}

- (void)_didUpdateFocusInContext:(id)context
{
  contextCopy = context;
  topViewController = [(UINavigationController *)self topViewController];
  view = [topViewController view];
  nextFocusedItem = [contextCopy nextFocusedItem];
  IsAncestorOfEnvironment = _UIFocusEnvironmentIsAncestorOfEnvironment(view, nextFocusedItem);

  if (IsAncestorOfEnvironment)
  {
    [(UINavigationController *)self _forgetFocusedItemForViewController:topViewController];
  }

  v9.receiver = self;
  v9.super_class = UINavigationController;
  [(UIViewController *)&v9 _didUpdateFocusInContext:contextCopy];
}

- (void)_rememberFocusedItem:(id)item forViewController:(id)controller
{
  controllerCopy = controller;
  itemCopy = item;
  _rememberedFocusedItemsByViewController = [(UINavigationController *)self _rememberedFocusedItemsByViewController];
  [_rememberedFocusedItemsByViewController setObject:itemCopy forKey:controllerCopy];
}

- (void)_forgetFocusedItemForViewController:(id)controller
{
  controllerCopy = controller;
  _rememberedFocusedItemsByViewController = [(UINavigationController *)self _rememberedFocusedItemsByViewController];
  [_rememberedFocusedItemsByViewController removeObjectForKey:controllerCopy];
}

- (id)_recallRememberedFocusedItemForViewController:(id)controller
{
  controllerCopy = controller;
  _rememberedFocusedItemsByViewController = [(UINavigationController *)self _rememberedFocusedItemsByViewController];
  v6 = [_rememberedFocusedItemsByViewController objectForKey:controllerCopy];

  return v6;
}

- (void)_updateInteractivePopGestureRecognizersEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  interactivePopGestureRecognizer = [(UINavigationController *)self interactivePopGestureRecognizer];
  [interactivePopGestureRecognizer setEnabled:enabledCopy];

  interactiveContentPopGestureRecognizer = [(UINavigationController *)self interactiveContentPopGestureRecognizer];
  [interactiveContentPopGestureRecognizer setEnabled:enabledCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if ([(UIViewController *)self isViewLoaded])
  {
    topViewController = [(UINavigationController *)self topViewController];
    if (topViewController)
    {
      v6 = topViewController;
      topViewController2 = [(UINavigationController *)self topViewController];
      _existingView = [topViewController2 _existingView];
      view = [(UIViewController *)self view];
      v10 = [_existingView isDescendantOfView:view];

      if ((v10 & 1) == 0)
      {
        [(UINavigationController *)self setNeedsDeferredTransition];
        view2 = [(UIViewController *)self view];
        [view2 setNeedsLayout];
      }
    }
  }

  v18.receiver = self;
  v18.super_class = UINavigationController;
  [(UIViewController *)&v18 viewWillAppear:appearCopy];
  v12 = *(&self->_navigationControllerFlags + 8);
  if (v12 < 0)
  {
    *(&self->_navigationControllerFlags + 8) = v12 & 0x7F;
    [(UINavigationController *)self _updateFloatingBarContentAnimated:appearCopy];
  }

  [(_UIViewControllerTransitionConductor *)self->_transitionConductor setHostIsAppearingAnimated:appearCopy];
  if (![(UINavigationController *)self needsDeferredTransition]|| (*(&self->_navigationControllerFlags + 1) & 0x10) != 0)
  {
    topViewController3 = [(UINavigationController *)self topViewController];
    [topViewController3 __viewWillAppear:appearCopy];

    topViewController4 = [(UINavigationController *)self topViewController];

    if (topViewController4)
    {
      if (dyld_program_sdk_at_least())
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
      }

      else
      {
        WeakRetained = [(UINavigationController *)self delegate];
      }

      v16 = WeakRetained;
      if ((objc_opt_respondsToSelector() & 1) != 0 && ([(UIViewController *)self _doesSelfOrAncestorPassPredicate:?]& 1) == 0)
      {
        topViewController5 = [(UINavigationController *)self topViewController];
        [v16 navigationController:self willShowViewController:topViewController5 animated:appearCopy];
      }
    }
  }
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  windowCopy = window;
  v8.receiver = self;
  v8.super_class = UINavigationController;
  [(UIViewController *)&v8 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  if (windowCopy)
  {
    if ([(UINavigationController *)self needsDeferredTransition])
    {
      view = [(UIViewController *)self view];
      [view setNeedsLayout];
    }

    if ([windowCopy _isHostedInAnotherProcess])
    {
      [(UINavigationController *)self _setPositionBarsExclusivelyWithSafeArea:1];
    }
  }
}

- (void)_setIsWrappingDuringAdaptation:(BOOL)adaptation
{
  v3 = 0x8000000000000;
  if (!adaptation)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFF7FFFFFFFFFFFFLL | v3;
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  if ((+[UIView _uip_transitionEnabled]& 1) == 0)
  {
    [(UINavigationController *)self _updateBarsForCurrentInterfaceOrientation];
  }

  v10.receiver = self;
  v10.super_class = UINavigationController;
  [(UIViewController *)&v10 viewDidAppear:appearCopy];
  [(_UIViewControllerTransitionConductor *)self->_transitionConductor setHostIsAppearingAnimated:0];
  if (![(UINavigationController *)self needsDeferredTransition]&& (*&self->_navigationControllerFlags & 0x8000000000004) == 0)
  {
    topViewController = [(UINavigationController *)self topViewController];
    [topViewController __viewDidAppear:appearCopy];

    if (dyld_program_sdk_at_least())
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
    }

    else
    {
      WeakRetained = [(UINavigationController *)self delegate];
    }

    v7 = WeakRetained;
    topViewController2 = [(UINavigationController *)self topViewController];
    if (topViewController2 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      if ([(UINavigationController *)self _ignoreFinishingModalTransitionForFiles])
      {
      }

      else
      {
        v9 = [(UIViewController *)self _doesSelfOrAncestorPassPredicate:?];

        if (v9)
        {
LABEL_15:

          return;
        }
      }

      topViewController2 = [(UINavigationController *)self topViewController];
      [v7 navigationController:self didShowViewController:topViewController2 animated:appearCopy];
    }

    goto LABEL_15;
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = UINavigationController;
  [(UIViewController *)&v6 viewWillDisappear:?];
  if ((*&self->_navigationControllerFlags & 0x8000000001000) == 0)
  {
    _viewControllerForDisappearCallback = [(UINavigationController *)self _viewControllerForDisappearCallback];
    [(UIViewController *)_viewControllerForDisappearCallback __viewWillDisappear:disappearCopy];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = UINavigationController;
  [(UIViewController *)&v17 viewDidDisappear:?];
  if ((*&self->_navigationControllerFlags & 0x8000000001000) == 0)
  {
    _viewControllerForDisappearCallback = [(UINavigationController *)self _viewControllerForDisappearCallback];
    v6 = _viewControllerForDisappearCallback;
    if ((*&self->_navigationControllerFlags & 0xF0) != 0)
    {
      [_viewControllerForDisappearCallback _setNavigationControllerContentInsetAdjustment:{0.0, 0.0, 0.0, 0.0}];
      [v6 _setNavigationControllerContentOffsetAdjustment:0.0];
    }

    [(UIViewController *)v6 __viewDidDisappear:disappearCopy];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    mutableChildViewControllers = [(UIViewController *)self mutableChildViewControllers];
    v8 = [mutableChildViewControllers countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(mutableChildViewControllers);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          if ([v12 _appearState] == 3)
          {
            [(UIViewController *)v12 __viewDidDisappear:disappearCopy];
          }
        }

        v9 = [mutableChildViewControllers countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v9);
    }

    [(UINavigationController *)self setDisappearingViewController:0];
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  topViewController = [(UINavigationController *)self topViewController];
  [topViewController setEditing:editingCopy animated:animatedCopy];
}

- (BOOL)editing
{
  topViewController = [(UINavigationController *)self topViewController];
  isEditing = [topViewController isEditing];

  return isEditing;
}

- (void)_updateToolbarItemsFromViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  if (_UIUnifiedToolbarEnabled())
  {
    [(UINavigationController *)self _updateFloatingBarContentAnimated:animatedCopy];
  }

  else
  {
    topViewController = [(UINavigationController *)self topViewController];

    v7 = controllerCopy;
    if (topViewController != controllerCopy)
    {
      goto LABEL_6;
    }

    _existingToolbar = [(UINavigationController *)self _existingToolbar];
    _updateToolbarForViewControllerAnimated(_existingToolbar, controllerCopy, animatedCopy);
  }

  v7 = controllerCopy;
LABEL_6:
}

- (uint64_t)_setRequiresToolbarHiddenForFindAndReplace:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 1296);
    if (((((v3 & 0x40) == 0) ^ a2) & 1) == 0)
    {
      v4 = a2 ? 64 : 0;
      *(result + 1296) = v3 & 0xBF | v4;
      result = _UIUnifiedToolbarEnabled();
      if (result)
      {

        return [v2 _updateFloatingBarContentAnimated:0];
      }
    }
  }

  return result;
}

- (void)_updateFloatingBarContentAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v26[1] = *MEMORY[0x1E69E9840];
  if ((_UIUnifiedToolbarEnabled() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:5140 description:@"Attempted to update floating bar with the feature flag disabled"];
  }

  if (![(UINavigationController *)self _isNestedNavigationController])
  {
    _nestedTopNavigationController = [(UINavigationController *)self _nestedTopNavigationController];
    _transitionConductor = [(UINavigationController *)self _transitionConductor];
    transitionContext = [_transitionConductor transitionContext];

    if (!transitionContext)
    {
      topViewController = [_nestedTopNavigationController topViewController];
      goto LABEL_22;
    }

    if ([transitionContext isCurrentlyInteractive])
    {
      if ([transitionContext transitionWasCancelled])
      {
LABEL_17:
        toViewController = [transitionContext toViewController];
        goto LABEL_18;
      }
    }

    else if (![transitionContext _transitionIsCompleting] || !objc_msgSend(transitionContext, "transitionWasCancelled"))
    {
      goto LABEL_17;
    }

    toViewController = [transitionContext fromViewController];
LABEL_18:
    v12 = toViewController;
    if ([toViewController _isNavigationController])
    {
      _nestedTopViewController = [v12 _nestedTopViewController];
    }

    else
    {
      _nestedTopViewController = v12;
    }

    topViewController = _nestedTopViewController;

LABEL_22:
    navigationItem = [topViewController navigationItem];
    if (!animatedCopy)
    {
      _transitionAnimationContext = [(UINavigationController *)self _transitionAnimationContext];
      if ([_transitionAnimationContext isAnimated])
      {
      }

      else
      {
        _transitionAnimationContext2 = [_nestedTopNavigationController _transitionAnimationContext];
        isAnimated = [_transitionAnimationContext2 isAnimated];

        if (!isAnimated)
        {
          hasBeenCommitted = 0;
LABEL_27:
          if ([(UINavigationController *)self _viewControllerRequiresVisibleToolbarForImplicitInlineSearch:topViewController])
          {
            floatingBarContainerView = self->_floatingBarContainerView;
            searchBarPlacementBarButtonItem = [navigationItem searchBarPlacementBarButtonItem];
            v26[0] = searchBarPlacementBarButtonItem;
            v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
            [(_UIFloatingBarContainer *)floatingBarContainerView setToolbarItems:v22 avoidsKeyboard:0 animated:hasBeenCommitted];
          }

          else
          {
            if ((_nestedTopNavigationController[1288] & 2) == 0 || self && (*(&self->_navigationControllerFlags + 8) & 0x40) != 0)
            {
              [(_UIFloatingBarContainer *)self->_floatingBarContainerView setToolbarItems:MEMORY[0x1E695E0F0] avoidsKeyboard:0 animated:hasBeenCommitted];
              goto LABEL_35;
            }

            v23 = self->_floatingBarContainerView;
            searchBarPlacementBarButtonItem = [topViewController _relevantToolbarItems];
            -[_UIFloatingBarContainer setToolbarItems:avoidsKeyboard:animated:](v23, "setToolbarItems:avoidsKeyboard:animated:", searchBarPlacementBarButtonItem, [navigationItem _toolbarAvoidsKeyboard], hasBeenCommitted);
          }

LABEL_35:
          return;
        }
      }
    }

    layer = [(_UIFloatingBarContainer *)self->_floatingBarContainerView layer];
    hasBeenCommitted = [layer hasBeenCommitted];

    goto LABEL_27;
  }

  [(_UIFloatingBarContainer *)self->_floatingBarContainerView setToolbarItems:MEMORY[0x1E695E0F0] avoidsKeyboard:0 animated:0];
  _outermostNavigationController = [(UINavigationController *)self _outermostNavigationController];
  if (_outermostNavigationController != self)
  {
    v25 = _outermostNavigationController;
    [(UINavigationController *)_outermostNavigationController _updateFloatingBarContentAnimated:animatedCopy];
    _outermostNavigationController = v25;
  }
}

- (id)viewControllerForUnwindSegueAction:(SEL)action fromViewController:(id)controller withSender:(id)sender
{
  controllerCopy = controller;
  senderCopy = sender;
  mutableChildViewControllers = [(UIViewController *)self mutableChildViewControllers];
  v11 = 0;
  v12 = [mutableChildViewControllers count] - 1;
  while (v12 != -1)
  {
    v13 = [mutableChildViewControllers objectAtIndex:v12];

    --v12;
    v11 = v13;
    if ([v13 _canPerformUnwindSegueAction:action fromViewController:controllerCopy sender:senderCopy])
    {
      v14 = v13;
      v11 = v14;
      goto LABEL_6;
    }
  }

  v17.receiver = self;
  v17.super_class = UINavigationController;
  v14 = [(UIViewController *)&v17 viewControllerForUnwindSegueAction:action fromViewController:controllerCopy withSender:senderCopy];
LABEL_6:
  v15 = v14;

  return v15;
}

- (id)allowedChildViewControllersForUnwindingFromSource:(id)source
{
  sourceCopy = source;
  v5 = objc_opt_new();
  v6 = [(UIViewController *)self childViewControllerContainingSegueSource:sourceCopy];

  viewControllers = [(UINavigationController *)self viewControllers];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__UINavigationController_allowedChildViewControllersForUnwindingFromSource___block_invoke;
  v13[3] = &unk_1E7102E98;
  v14 = v6;
  v8 = v5;
  v15 = v8;
  v9 = v6;
  [viewControllers enumerateObjectsWithOptions:2 usingBlock:v13];

  v10 = v15;
  v11 = v8;

  return v8;
}

uint64_t __76__UINavigationController_allowedChildViewControllersForUnwindingFromSource___block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 32) != a2)
  {
    return [*(result + 40) addObject:a2];
  }

  return result;
}

- (void)unwindForSegue:(id)segue towardsViewController:(id)controller
{
  controllerCopy = controller;
  viewControllers = [(UINavigationController *)self viewControllers];
  v6 = [viewControllers containsObject:controllerCopy];

  if (v6)
  {
    v7 = [(UINavigationController *)self popToViewController:controllerCopy animated:+[UIView areAnimationsEnabled]];
  }
}

- (id)segueForUnwindingToViewController:(id)controller fromViewController:(id)viewController identifier:(id)identifier
{
  controllerCopy = controller;
  identifierCopy = identifier;
  viewControllerCopy = viewController;
  viewControllers = [(UINavigationController *)self viewControllers];
  v13 = [viewControllers containsObject:controllerCopy];

  if ((v13 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:5247 description:{@"toViewController (%@) is not one of my view controllers.", controllerCopy}];
  }

  v14 = _UIFirstPopoverSeguePresentedControllerInUnwindingResponderChain(viewControllerCopy, self);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __90__UINavigationController_segueForUnwindingToViewController_fromViewController_identifier___block_invoke;
  v20[3] = &unk_1E70F6228;
  v20[4] = self;
  v21 = controllerCopy;
  v22 = v14;
  v15 = v14;
  v16 = controllerCopy;
  v17 = [UIStoryboardSegue segueWithIdentifier:identifierCopy source:viewControllerCopy destination:v16 performHandler:v20];

  return v17;
}

void __90__UINavigationController_segueForUnwindingToViewController_fromViewController_identifier___block_invoke(uint64_t a1)
{
  v2 = +[UIView areAnimationsEnabled];
  v3 = [*(a1 + 32) presentedViewController];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 _existingView];
    v6 = [v5 window];

    v7 = [*(a1 + 32) popToViewController:*(a1 + 40) animated:(v6 != 0) & v2];
    if (!v6)
    {
      v8 = [*(a1 + 32) presentedViewController];
      v9 = [v8 presentingViewController];
      [v9 dismissViewControllerAnimated:v2 completion:0];
    }
  }

  else
  {
    v10 = [v4 popToViewController:*(a1 + 40) animated:v2];
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = [v11 _popoverController];
    [v12 dismissPopoverAnimated:v2];
  }
}

- (BOOL)_canPerformBackKeyCommandToPopViewController
{
  if ([(UIViewController *)self childViewControllersCount]>= 2 && [(UINavigationController *)self _isNavigationBarVisible])
  {
    navigationBar = [(UINavigationController *)self navigationBar];
    topItem = [navigationBar topItem];
    v5 = [topItem hidesBackButton] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_canUseBackKeyCommandToTriggerSidebarKeyCommandWithSender:(id)sender
{
  senderCopy = sender;
  splitViewController = [(UIViewController *)self splitViewController];
  v6 = splitViewController;
  v7 = splitViewController && [splitViewController displayMode] != 2 && objc_msgSend(v6, "displayMode") != 4 && objc_msgSend(v6, "canPerformAction:withSender:", sel_toggleSidebar_, senderCopy) && -[UINavigationController _isNavigationBarVisible](self, "_isNavigationBarVisible");

  return v7;
}

- (void)_performBackKeyCommand:(id)command
{
  commandCopy = command;
  if ([(UINavigationController *)self _canPerformBackKeyCommandToPopViewController])
  {
    v4 = [(UINavigationController *)self popViewControllerAnimated:1];
  }

  else if ([(UINavigationController *)self _canUseBackKeyCommandToTriggerSidebarKeyCommandWithSender:commandCopy])
  {
    splitViewController = [(UIViewController *)self splitViewController];
    [splitViewController toggleSidebar:commandCopy];
  }
}

- (void)_userInterfaceIdiomChanged
{
  [(UINavigationController *)self _setupBackGestureRecognizer];
  [(UINavigationController *)self _setupDefaultClipUnderlapWhileTransitioningIfNeeded];

  [(UINavigationController *)self _setupVisualStyle];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v4.receiver = self;
  v4.super_class = UINavigationController;
  [(UIViewController *)&v4 viewIsAppearing:appearing];
  [(UINavigationController *)self _setupBackGestureRecognizer];
  [(UINavigationController *)self _setupDefaultClipUnderlapWhileTransitioningIfNeeded];
  if (+[UIView _uip_transitionEnabled])
  {
    [(UINavigationController *)self _updateBarsForCurrentInterfaceOrientation];
  }
}

- (void)_updateNavigationBarScrollPocketContainerInteraction
{
  navigationBar = [(UINavigationController *)self navigationBar];
  [navigationBar bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _stack = [navigationBar _stack];
  topEntry = [_stack topEntry];
  [topEntry layoutHeightsForActiveLayout];
  v14 = v13;

  v21.origin.x = v4;
  v21.origin.y = v6;
  v21.size.width = v8;
  v21.size.height = v10;
  MinX = CGRectGetMinX(v21);
  v22.origin.x = v4;
  v22.origin.y = v6;
  v22.size.width = v8;
  v22.size.height = v10;
  MinY = CGRectGetMinY(v22);
  v23.origin.x = v4;
  v23.origin.y = v6;
  v23.size.width = v8;
  v23.size.height = v10;
  Width = CGRectGetWidth(v23);
  if (v14 == v10)
  {
    v18 = v14;
  }

  else
  {
    v18 = 0.0;
  }

  [(_UIScrollPocketContainerInteraction *)self->_navigationBarScrollPocketContainerInteraction _setElementInteractionRect:MinX, MinY, Width, v18];
}

- (void)_updateFloatingBarContainerView
{
  if (_UIUnifiedToolbarEnabled())
  {
    view = [(UIViewController *)self view];
    [view bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [(_UIFloatingBarContainer *)self->_floatingBarContainerView setFrame:v5, v7, v9, v11];
    [(_UIFloatingBarContainer *)self->_floatingBarContainerView setHidden:[(UINavigationController *)self _isNestedNavigationController]];
    view2 = [(UIViewController *)self view];
    [view2 bringSubviewToFront:self->_floatingBarContainerView];

    [(_UIFloatingBarContainer *)self->_floatingBarContainerView toolbarOverlayInset];
    v14 = v13;
    v20.origin.x = v5;
    v20.origin.y = v7;
    v20.size.width = v9;
    v20.size.height = v11;
    MinX = CGRectGetMinX(v20);
    v21.origin.x = v5;
    v21.origin.y = v7;
    v21.size.width = v9;
    v21.size.height = v11;
    v16 = CGRectGetMaxY(v21) - v14;
    v22.origin.x = v5;
    v22.origin.y = v7;
    v22.size.width = v9;
    v22.size.height = v11;
    Width = CGRectGetWidth(v22);
    view3 = [(UIViewController *)self view];
    [view3 convertRect:self->_floatingBarContainerView toCoordinateSpace:{MinX, v16, Width, v14}];
    [(_UIScrollPocketContainerInteraction *)self->_toolbarScrollPocketContainerInteraction _setElementInteractionRect:?];
  }
}

- (BOOL)_gestureRecognizerShouldBegin:(id)begin
{
  if (self->_backGestureRecognizer != begin)
  {
    return 1;
  }

  mutableChildViewControllers = [(UIViewController *)self mutableChildViewControllers];
  v5 = [mutableChildViewControllers count];

  if (v5 > 1)
  {
    return 1;
  }

  return [(UINavigationController *)self _isTransitioning];
}

- (BOOL)_gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  v10 = 1;
  if (self->__barTapHideGesture == recognizerCopy || self->__barSwipeHideGesture == recognizerCopy)
  {
    topViewController = [(UINavigationController *)self topViewController];
    _isNestedNavigationController = [topViewController _isNestedNavigationController];

    if (_isNestedNavigationController)
    {
      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)_gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  v8 = gestureRecognizerCopy;
  if (self->__barSwipeHideGesture == recognizerCopy && [gestureRecognizerCopy _isGestureType:9])
  {
    v9 = v8;
    _existingView = [(UIViewController *)self _existingView];
    scrollView = [v9 scrollView];

    superview = [scrollView superview];
    [scrollView frame];
    [superview convertRect:_existingView toView:?];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    _existingNavigationBar = [(UINavigationController *)self _existingNavigationBar];
    superview2 = [_existingNavigationBar superview];
    [_existingNavigationBar frame];
    [superview2 convertRect:_existingView toView:?];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v36.origin.x = v14;
    v36.origin.y = v16;
    v36.size.width = v18;
    v36.size.height = v20;
    MinY = CGRectGetMinY(v36);
    v37.origin.x = v24;
    v37.origin.y = v26;
    v37.size.width = v28;
    v37.size.height = v30;
    MaxY = CGRectGetMaxY(v37);
    UICeilToViewScale(_existingView);
    v34 = MinY <= MaxY + v33;
  }

  else if (self->_backGestureRecognizer == recognizerCopy)
  {
    v34 = [v8 _isGestureType:8];
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (id)_deepestActionResponder
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__UINavigationController__deepestActionResponder__block_invoke;
  v4[3] = &unk_1E71005E0;
  v4[4] = self;
  v2 = [(UIViewController *)self _deepestPresentedActionResponderOrBlock:v4];

  return v2;
}

id __49__UINavigationController__deepestActionResponder__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) topViewController];
  v3 = [v2 _hasDeepestActionResponder];

  if (v3)
  {
    v4 = [*(a1 + 32) topViewController];
    v5 = [v4 _deepestActionResponder];
  }

  else
  {
    v7.receiver = *(a1 + 32);
    v7.super_class = UINavigationController;
    v5 = objc_msgSendSuper2(&v7, sel__deepestActionResponder);
  }

  return v5;
}

- (void)willShowViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  if (_UIUnifiedToolbarEnabled())
  {
    [(UINavigationController *)self _updateFloatingBarContentAnimated:animatedCopy];
  }

  else if ((*&self->_navigationControllerFlags & 2) != 0)
  {
    shouldAnimateBottomBarVisibility = [(_UIViewControllerTransitionConductor *)self->_transitionConductor shouldAnimateBottomBarVisibility];
    _existingToolbar = [(UINavigationController *)self _existingToolbar];
    _updateToolbarForViewControllerAnimated(_existingToolbar, controllerCopy, shouldAnimateBottomBarVisibility & animatedCopy);
  }
}

- (void)_didEndTransitionFromView:(id)view toView:(id)toView wasCustom:(BOOL)custom
{
  customCopy = custom;
  viewCopy = view;
  toViewCopy = toView;
  navigationControllerFlags = self->_navigationControllerFlags;
  disappearingViewController = [(UINavigationController *)self disappearingViewController];
  topViewController = [(UINavigationController *)self topViewController];
  if (!disappearingViewController)
  {
    v82 = (*&self->_navigationControllerFlags >> 49) & 1;
    goto LABEL_5;
  }

  lastOperation = [(UINavigationController *)self lastOperation];
  v82 = (*&self->_navigationControllerFlags >> 49) & 1;
  if (lastOperation == 1)
  {
LABEL_5:
    _usesSharedView = [topViewController _usesSharedView];
    v14 = 1;
    goto LABEL_6;
  }

  _usesSharedView = [disappearingViewController _usesSharedView];
  v14 = 0;
LABEL_6:
  if (disappearingViewController != topViewController)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      view = [disappearingViewController view];
      [(UIViewControllerWrapperView *)viewCopy unwrapView:view];

      if (viewCopy == toViewCopy)
      {
        goto LABEL_17;
      }

LABEL_16:
      [viewCopy removeFromSuperview];
      goto LABEL_17;
    }
  }

  if (!customCopy)
  {
    goto LABEL_17;
  }

  childModalViewController = [disappearingViewController childModalViewController];

  if (!childModalViewController)
  {
    goto LABEL_16;
  }

  view2 = [disappearingViewController view];
  [view2 superview];
  v81 = disappearingViewController;
  v18 = _usesSharedView;
  v19 = v14;
  v20 = navigationControllerFlags;
  v21 = customCopy;
  v23 = v22 = viewCopy;

  if (v23 == toViewCopy)
  {
    v24 = v22;
  }

  else
  {
    v24 = v23;
  }

  [v24 removeFromSuperview];

  viewCopy = v22;
  customCopy = v21;
  navigationControllerFlags = v20;
  v14 = v19;
  _usesSharedView = v18;
  disappearingViewController = v81;
LABEL_17:
  [(UINavigationController *)self _presentationTransitionUnwrapViewController:topViewController];
  if ((*(&self->_navigationControllerFlags + 1) & 2) != 0)
  {
    _keyboardSceneDelegate = [(UIViewController *)self _keyboardSceneDelegate];
    [_keyboardSceneDelegate popAnimationStyle];

    *&self->_navigationControllerFlags &= ~0x200uLL;
  }

  keyboardLayoutGuideTransitionAssertion = self->_keyboardLayoutGuideTransitionAssertion;
  if (keyboardLayoutGuideTransitionAssertion)
  {
    [(_UIInvalidatable *)keyboardLayoutGuideTransitionAssertion _invalidate];
    v27 = self->_keyboardLayoutGuideTransitionAssertion;
    self->_keyboardLayoutGuideTransitionAssertion = 0;
  }

  if (customCopy)
  {
    [topViewController view];
    v28 = topViewController;
    v29 = disappearingViewController;
    v30 = _usesSharedView;
    v31 = v14;
    v32 = navigationControllerFlags;
    v33 = customCopy;
    v35 = v34 = viewCopy;
    v36 = [UIViewControllerWrapperView existingWrapperViewForView:v35];

    viewCopy = v34;
    customCopy = v33;
    navigationControllerFlags = v32;
    v14 = v31;
    _usesSharedView = v30;
    disappearingViewController = v29;
    topViewController = v28;
    if (v36 == toViewCopy)
    {
      [(UINavigationController *)self _frameForWrapperViewForViewController:v28];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;
      [(UINavigationController *)self _frameForViewController:v28];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v96[0] = MEMORY[0x1E69E9820];
      v96[1] = 3221225472;
      v96[2] = __69__UINavigationController__didEndTransitionFromView_toView_wasCustom___block_invoke;
      v96[3] = &unk_1E70F8980;
      v97 = toViewCopy;
      v99 = v38;
      v100 = v40;
      v101 = v42;
      v102 = v44;
      v98 = v28;
      v103 = v46;
      v104 = v48;
      v105 = v50;
      v106 = v52;
      [UIView performWithoutAnimation:v96];
    }
  }

  [(UINavigationController *)self _layoutTopViewController];
  if ((_usesSharedView & 1) == 0)
  {
    [disappearingViewController _setNavigationControllerContentInsetAdjustment:{0.0, 0.0, 0.0, 0.0}];
    [disappearingViewController _setNavigationControllerContentOffsetAdjustment:0.0];
  }

  _navigationToolbarTransitionController = [(UINavigationController *)self _navigationToolbarTransitionController];
  [_navigationToolbarTransitionController endTransition];

  [(UINavigationController *)self _clearLastOperation];
  *&self->_navigationControllerFlags &= ~4uLL;
  deferredTransitionContext = self->_deferredTransitionContext;
  self->_deferredTransitionContext = 0;

  if (disappearingViewController != topViewController && [(UIViewController *)self _appearState]== 2)
  {
    if ((*(&self->_navigationControllerFlags + 1) & 0x10) == 0)
    {
      v93[0] = MEMORY[0x1E69E9820];
      v93[1] = 3221225472;
      v93[2] = __69__UINavigationController__didEndTransitionFromView_toView_wasCustom___block_invoke_2;
      v93[3] = &unk_1E70F35E0;
      v95 = v82;
      v94 = disappearingViewController;
      [(UIViewController *)v94 _endAppearanceTransition:v93];
    }

    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __69__UINavigationController__didEndTransitionFromView_toView_wasCustom___block_invoke_3;
    v90[3] = &unk_1E70F5AF0;
    v92 = v14;
    v55 = v91;
    v56 = topViewController;
    v91[0] = v56;
    v91[1] = self;
    v57 = v90;
    goto LABEL_37;
  }

  if ((*(&self->_navigationControllerFlags + 1) & 0x10) == 0 && [(UIViewController *)self _appearState]!= 2)
  {
    if (v14)
    {
      [topViewController setNeedsDidMoveCleanup:1];
    }

    if (disappearingViewController)
    {
      v87[0] = MEMORY[0x1E69E9820];
      v87[1] = 3221225472;
      v87[2] = __69__UINavigationController__didEndTransitionFromView_toView_wasCustom___block_invoke_4;
      v87[3] = &unk_1E70F35E0;
      v89 = v82;
      v55 = &v88;
      v56 = disappearingViewController;
      v88 = v56;
      v57 = v87;
LABEL_37:
      [(UIViewController *)v56 _endAppearanceTransition:v57];
    }
  }

  *&self->_navigationControllerFlags &= ~0x1000uLL;
  v58 = (navigationControllerFlags >> 8) & 1;
  if ((*&self->super._viewControllerFlags & 3u) - 1 <= 1)
  {
    if (dyld_program_sdk_at_least())
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
    }

    else
    {
      WeakRetained = [(UINavigationController *)self delegate];
    }

    v60 = WeakRetained;
    if (objc_opt_respondsToSelector())
    {
      if (([UIApp _hasApplicationCalledLaunchDelegate] & 1) != 0 || (objc_msgSend(topViewController, "_existingView"), v83 = customCopy, v61 = viewCopy, v62 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v62, "window"), v63 = objc_claimAutoreleasedReturnValue(), v64 = objc_msgSend(v63, "_isHostedInAnotherProcess"), v63, v62, viewCopy = v61, customCopy = v83, v64))
      {
        [v60 navigationController:self didShowViewController:topViewController animated:v58];
      }
    }
  }

  [(UINavigationController *)self didShowViewController:topViewController animated:v58];
  v65 = self->_navigationControllerFlags;
  if ((v65 & 0x40000000000000) == 0)
  {
    *&self->_navigationControllerFlags = v65 | 0x40000000000000;
    if (customCopy)
    {
      v86[0] = MEMORY[0x1E69E9820];
      v86[1] = 3221225472;
      v86[2] = __69__UINavigationController__didEndTransitionFromView_toView_wasCustom___block_invoke_5;
      v86[3] = &unk_1E70F3590;
      v86[4] = self;
      [UIApp _performBlockAfterCATransactionCommits:v86];
    }

    else
    {
      _focusSystem = [(UIViewController *)self _focusSystem];
      topViewController2 = [(UINavigationController *)self topViewController];
      v68 = viewCopy;
      if (topViewController2)
      {
        v69 = [_focusSystem _focusedItemIsContainedInEnvironment:topViewController2 includeSelf:1];
      }

      else
      {
        v69 = 0;
      }

      navigationBar = [(UINavigationController *)self navigationBar];
      v71 = [_focusSystem _focusedItemIsContainedInEnvironment:navigationBar includeSelf:1];

      if ((v69 & 1) == 0 && (v71 & 1) == 0)
      {
        v72 = [[_UIFocusUpdateRequest alloc] initWithEnvironment:self];
        [(_UIFocusUpdateRequest *)v72 setAllowsFocusingCurrentItem:1];
        _focusSystem2 = [(UIViewController *)self _focusSystem];
        [_focusSystem2 _requestFocusUpdate:v72];
      }

      viewCopy = v68;
    }
  }

  v74 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  v75 = v74;
  if (disappearingViewController)
  {
    [v74 setObject:disappearingViewController forKey:@"UINavigationControllerLastVisibleViewController"];
  }

  if (topViewController)
  {
    [v75 setObject:topViewController forKey:@"UINavigationControllerNextVisibleViewController"];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UINavigationControllerDidShowViewControllerNotification" object:self userInfo:v75];

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UINavigationController", &_didEndTransitionFromView_toView_wasCustom____s_category);
  v78 = *(CategoryCachedImpl + 8);
  v79 = os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), self);
  if (v79 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v80 = v79;
    if (os_signpost_enabled(v78))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v78, OS_SIGNPOST_INTERVAL_END, v80, "NavigationTransition", " enableTelemetry=YES ", buf, 2u);
    }
  }
}

void __69__UINavigationController__didEndTransitionFromView_toView_wasCustom___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = [*(a1 + 40) view];
  [v6 setFrame:{v2, v3, v4, v5}];
}

uint64_t __69__UINavigationController__didEndTransitionFromView_toView_wasCustom___block_invoke_2(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) didMoveToParentViewController:0];
  }

  return result;
}

uint64_t __69__UINavigationController__didEndTransitionFromView_toView_wasCustom___block_invoke_3(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    return [*(result + 32) didMoveToParentViewController:*(result + 40)];
  }

  return result;
}

uint64_t __69__UINavigationController__didEndTransitionFromView_toView_wasCustom___block_invoke_4(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) didMoveToParentViewController:0];
  }

  return result;
}

- (void)_didCancelTransitionFromViewController:(id)controller toViewController:(id)viewController wrapperView:(id)view wasCustom:(BOOL)custom
{
  customCopy = custom;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  viewCopy = view;
  navigationControllerFlags = self->_navigationControllerFlags;
  if (controllerCopy)
  {
    parentViewController = [controllerCopy parentViewController];
    v14 = parentViewController == self && (*(&self->_navigationControllerFlags + 1) & 0x10) == 0;
  }

  else
  {
    v14 = 1;
  }

  [(UINavigationController *)self setDisappearingViewController:0];
  presentedViewController = [(UIViewController *)self presentedViewController];
  if (presentedViewController)
  {
    goto LABEL_18;
  }

  if (![controllerCopy _containedInAbsoluteResponderChain])
  {
    goto LABEL_19;
  }

  presentedViewController = [(UIViewController *)self _keyboardSceneDelegate];
  v16 = +[UIInputViewAnimationStyle animationStyleImmediate];
  [presentedViewController pushAnimationStyle:v16];

  v17 = [MEMORY[0x1E696B098] valueWithPointer:controllerCopy];
  v18 = [presentedViewController _restoreInputViewsWithId:v17 animated:1];

  if ((v18 & 1) == 0)
  {
    if ([controllerCopy _containsFirstResponder])
    {
      if (![viewControllerCopy _containsFirstResponder])
      {
        goto LABEL_17;
      }
    }

    else
    {
      if ([controllerCopy becomeFirstResponder])
      {
        goto LABEL_17;
      }

      responder = [presentedViewController responder];
      v20 = [viewControllerCopy _shouldAttemptToPreserveInputViewsForResponder:responder];

      if (!v20)
      {
        goto LABEL_17;
      }

      v21 = [MEMORY[0x1E696B098] valueWithPointer:viewControllerCopy];
      [presentedViewController _preserveInputViewsWithId:v21 animated:1];
    }

    responder2 = [presentedViewController responder];
    [responder2 resignFirstResponder];
  }

LABEL_17:
  [presentedViewController popAnimationStyle];
LABEL_18:

LABEL_19:
  if (customCopy)
  {
    childModalViewController = [viewControllerCopy childModalViewController];

    view = [viewControllerCopy view];
    v25 = view;
    if (childModalViewController)
    {
      superview = [view superview];

      if (superview == viewCopy)
      {
        view2 = [viewControllerCopy view];
        [view2 removeFromSuperview];
      }

      else
      {
        [superview removeFromSuperview];
      }
    }

    else
    {
      [view removeFromSuperview];
      superview = v25;
    }
  }

  [(UINavigationController *)self _presentationTransitionUnwrapViewController:controllerCopy];
  if ((*(&self->_navigationControllerFlags + 1) & 2) != 0)
  {
    _keyboardSceneDelegate = [(UIViewController *)self _keyboardSceneDelegate];
    [_keyboardSceneDelegate popAnimationStyle];

    keyboardLayoutGuideTransitionAssertion = self->_keyboardLayoutGuideTransitionAssertion;
    if (keyboardLayoutGuideTransitionAssertion)
    {
      [(_UIInvalidatable *)keyboardLayoutGuideTransitionAssertion _invalidate];
      v30 = self->_keyboardLayoutGuideTransitionAssertion;
      self->_keyboardLayoutGuideTransitionAssertion = 0;
    }

    _window = [(UINavigationController *)self _window];
    if ([_window isTrackingKeyboard])
    {
      _keyboardSceneDelegate2 = [(UIViewController *)self _keyboardSceneDelegate];
      hasTrackingAvailable = [_keyboardSceneDelegate2 hasTrackingAvailable];

      if (hasTrackingAvailable)
      {
LABEL_33:
        *&self->_navigationControllerFlags &= ~0x200uLL;
        goto LABEL_34;
      }

      _window = [(UINavigationController *)self _window];
      [_window moveKeyboardLayoutGuideOverEdge:0 layoutViews:0];
    }

    goto LABEL_33;
  }

LABEL_34:
  if (v14)
  {
    [(UINavigationController *)self removeChildViewController:viewControllerCopy notifyDidMove:0];
  }

  else
  {
    [(UIViewController *)self _addChildViewController:controllerCopy performHierarchyCheck:0 notifyWillMove:0];
  }

  [(UIViewController *)self _invalidatePreferences:0 excluding:?];
  [viewControllerCopy cancelBeginAppearanceTransition];
  [controllerCopy cancelBeginAppearanceTransition];
  _outermostNavigationController = [(UINavigationController *)self _outermostNavigationController];
  topViewController = [(UINavigationController *)self topViewController];
  [_outermostNavigationController _updateTopViewFramesForViewController:topViewController isCancelledTransition:1 isOrientationChange:0];

  [(UINavigationController *)self _clearLastOperation];
  *&self->_navigationControllerFlags &= ~4uLL;
  deferredTransitionContext = self->_deferredTransitionContext;
  self->_deferredTransitionContext = 0;

  if (dyld_program_sdk_at_least())
  {
    v37 = (navigationControllerFlags >> 8) & 1;
    if ((*&self->super._viewControllerFlags & 3u) - 1 <= 1)
    {
      if (dyld_program_sdk_at_least())
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
      }

      else
      {
        WeakRetained = [(UINavigationController *)self delegate];
      }

      v39 = WeakRetained;
      if (objc_opt_respondsToSelector())
      {
        if (([UIApp _hasApplicationCalledLaunchDelegate] & 1) != 0 || (objc_msgSend(viewControllerCopy, "_existingView"), v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v40, "window"), v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v41, "_isHostedInAnotherProcess"), v41, v40, v42))
        {
          [v39 navigationController:self willShowViewController:controllerCopy animated:v37];
        }
      }

      if (objc_opt_respondsToSelector())
      {
        if (([UIApp _hasApplicationCalledLaunchDelegate] & 1) != 0 || (objc_msgSend(viewControllerCopy, "_existingView"), v43 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v43, "window"), v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v44, "_isHostedInAnotherProcess"), v44, v43, v45))
        {
          [v39 navigationController:self didShowViewController:controllerCopy animated:v37];
        }
      }
    }

    [(UINavigationController *)self willShowViewController:controllerCopy animated:v37];
    [(UINavigationController *)self didShowViewController:controllerCopy animated:v37];
  }

  v46 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  v47 = v46;
  if (controllerCopy)
  {
    [v46 setObject:controllerCopy forKey:@"UINavigationControllerLastVisibleViewController"];
  }

  if (viewControllerCopy)
  {
    [v47 setObject:viewControllerCopy forKey:@"UINavigationControllerNextVisibleViewController"];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UINavigationControllerDidCancelShowingViewControllerNotification" object:self userInfo:v47];

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UINavigationController", &_didCancelTransitionFromViewController_toViewController_wrapperView_wasCustom____s_category);
  v50 = *(CategoryCachedImpl + 8);
  v51 = os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), self);
  if (v51 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v52 = v51;
    if (os_signpost_enabled(v50))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v50, OS_SIGNPOST_INTERVAL_END, v52, "NavigationTransition", " enableTelemetry=YES ", buf, 2u);
    }
  }

  _outermostNavigationController2 = [(UINavigationController *)self _outermostNavigationController];
  [_outermostNavigationController2 _resetScrollViewObservingForViewController:controllerCopy];
  v54 = [viewControllerCopy _contentOrObservableScrollViewForEdge:1];
  v55 = [viewControllerCopy _contentOrObservableScrollViewForEdge:4];
  [_outermostNavigationController2 _stopObservingContentScrollView:v54];
  if (v55 != v54)
  {
    [_outermostNavigationController2 _stopObservingContentScrollView:v55];
  }

  _navigationToolbarTransitionController = [(UINavigationController *)self _navigationToolbarTransitionController];
  [_navigationToolbarTransitionController cancelTransition];

  [(UINavigationController *)self _updateEnclosingTabBarControllerForStackChange];
  [(UINavigationController *)self _updateBottomBarHiddenState];
}

- (void)_setCustomTransition:(BOOL)transition
{
  v3 = 0x20000;
  if (!transition)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFFFFFDFFFFLL | v3;
}

- (void)setNeedsDeferredTransition:(BOOL)transition
{
  transitionCopy = transition;
  if ([(UINavigationController *)self allowsWeakReference])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v6 = selfCopy;
  if ([(_UIViewControllerTransitionConductor *)self->_transitionConductor needsDeferredTransition]!= transitionCopy && v6 != 0)
  {
    [(_UIViewControllerTransitionConductor *)self->_transitionConductor setNeedsDeferredTransition:transitionCopy];
    if (transitionCopy)
    {
      [(UIView *)self->_containerView setNeedsLayout];
      superview = [(UIView *)self->_containerView superview];
      [(UIView *)self->_containerView frame];
      [superview convertPoint:0 toView:?];
      v10 = v9;

      [(UIView *)self->_containerView frame];
      if (v10 + v11 <= 0.0)
      {
        objc_initWeak(&location, self);
        v12 = UIApp;
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __53__UINavigationController_setNeedsDeferredTransition___block_invoke;
        v13[3] = &unk_1E70F5A28;
        objc_copyWeak(&v14, &location);
        [v12 _performBlockAfterCATransactionCommits:v13];
        objc_destroyWeak(&v14);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __53__UINavigationController_setNeedsDeferredTransition___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[124] layoutSubviews];
    WeakRetained = v2;
  }
}

- (void)_updateBarsForCurrentInterfaceOrientationAndForceBarLayout:(BOOL)layout
{
  [(UINavigationController *)self _setInteractiveScrollActive:0];
  if (layout || ([(UINavigationController *)self topViewController], v5 = objc_claimAutoreleasedReturnValue(), isHeightOfTopViewsCoordinatedToMatchViewControllerOffsets = _isHeightOfTopViewsCoordinatedToMatchViewControllerOffsets(self, v5), v5, (isHeightOfTopViewsCoordinatedToMatchViewControllerOffsets & 1) == 0))
  {
    [(UIViewController *)self _updateContentOverlayInsetsFromParentIfNecessary];
    [(UINavigationController *)self _positionNavigationBarHidden:*&self->_navigationControllerFlags & 1];
    [(UINavigationController *)self _repositionPaletteWithNavigationBarHidden:*&self->_navigationControllerFlags & 1 duration:0 shouldUpdateNavigationItems:0.0];
    [(UINavigationController *)self _setInteractiveScrollActive:self->_interactiveScrollActive];
    [(UINavigationController *)self _positionToolbarHidden:[(UINavigationController *)self isToolbarHidden]];
  }

  else
  {
    [(UINavigationController *)self _setInteractiveScrollActive:self->_interactiveScrollActive];
    [(UINavigationController *)self _positionToolbarHidden:[(UINavigationController *)self isToolbarHidden]];
    [(UINavigationController *)self _layoutTopViewController];
  }

  topViewController = [(UINavigationController *)self topViewController];
  [(UINavigationController *)self _computeAndApplyScrollContentInsetDeltaForViewController:topViewController];

  topViewController2 = [(UINavigationController *)self topViewController];
  [(UINavigationController *)self _updateTopViewFramesForViewController:topViewController2 isCancelledTransition:0 isOrientationChange:1];

  topPalette = self->_topPalette;
  if (topPalette && (*&self->_navigationControllerFlags & 1) != 0)
  {
    [(_UINavigationControllerPalette *)topPalette _updateLayoutForCurrentConfiguration];
    v10 = *&self->_navigationControllerFlags & 1;

    [(UINavigationController *)self _repositionPaletteWithNavigationBarHidden:v10 duration:0 shouldUpdateNavigationItems:0.0];
  }
}

- (void)_requestNavigationBarUpdateSearchBarForPlacementChangeIfApplicable
{
  if ([(UINavigationController *)self _isNavigationBarEffectivelyVisible])
  {
    navigationBar = self->_navigationBar;

    [(UINavigationBar *)navigationBar _updateSearchBarForPlacementChangeIfApplicable];
  }
}

- (BOOL)_hasTranslucentNavigationBarIncludingViewController:(id)controller
{
  controllerCopy = controller;
  navigationBar = [(UINavigationController *)self navigationBar];
  IsTranslucentOnScreen = [navigationBar isTranslucent];

  navigationBar2 = [(UINavigationController *)self navigationBar];
  _appearanceStorage = [navigationBar2 _appearanceStorage];
  hasAnyCustomBackgroundImage = [_appearanceStorage hasAnyCustomBackgroundImage];

  if ((hasAnyCustomBackgroundImage & 1) == 0)
  {
    navigationItem = [controllerCopy navigationItem];
    if (objc_opt_respondsToSelector())
    {
      barStyle = [navigationItem barStyle];
      view = [(UIViewController *)self view];
      _screen = [view _screen];
      IsTranslucentOnScreen = _UIBarStyleWithTintColorIsTranslucentOnScreen(barStyle, 0, _screen);
    }
  }

  return IsTranslucentOnScreen;
}

- (BOOL)_shouldNavigationBarInsetViewController:(id)controller orOverlayContent:(BOOL *)content
{
  controllerCopy = controller;
  v7 = controllerCopy;
  if (content)
  {
    *content = 0;
  }

  if (([controllerCopy _isNestedNavigationController] & 1) != 0 || (-[UINavigationController _outermostNavigationController](self, "_outermostNavigationController"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "_isNavigationBarEffectivelyVisible"), v8, !v9))
  {
    v10 = 0;
  }

  else
  {
    if (([v7 extendedLayoutIncludesOpaqueBars] & 1) != 0 || -[UINavigationController _hasTranslucentNavigationBarIncludingViewController:](self, "_hasTranslucentNavigationBarIncludingViewController:", v7))
    {
      v10 = [v7 edgesForExtendedLayout] ^ 1;
      if (!content)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    v10 = 1;
    if (content)
    {
LABEL_12:
      *content = (v10 & 1) == 0;
    }
  }

LABEL_10:

  return v10 & 1;
}

- (BOOL)_shouldTabBarController:(id)controller insetViewController:(id)viewController orOverlayContent:(BOOL *)content
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  tabBar = [controllerCopy tabBar];
  if ((*(&self->_navigationControllerFlags + 1) & 0xC) == 0)
  {
    parentViewController = [(UIViewController *)self parentViewController];
    v15 = parentViewController == controllerCopy ? 1 : [tabBar isHidden] ^ 1;

    if (tabBar)
    {
      if (v15)
      {
        if (([viewControllerCopy extendedLayoutIncludesOpaqueBars] & 1) != 0 || objc_msgSend(tabBar, "_isTranslucent"))
        {
          v12 = ([viewControllerCopy edgesForExtendedLayout] & 4) == 0;
          if (!content)
          {
            goto LABEL_4;
          }
        }

        else
        {
          v12 = 1;
          if (!content)
          {
            goto LABEL_4;
          }
        }

        v11 = !v12;
        goto LABEL_3;
      }
    }
  }

  v11 = 0;
  v12 = 0;
  if (content)
  {
LABEL_3:
    *content = v11;
  }

LABEL_4:

  return v12;
}

- (BOOL)_shouldToolBar:(id)bar insetViewController:(id)controller orOverlayContent:(BOOL *)content
{
  barCopy = bar;
  controllerCopy = controller;
  if (!barCopy)
  {
    goto LABEL_7;
  }

  if ([(UINavigationController *)self isToolbarHidden])
  {
    if ((*(&self->_navigationControllerFlags + 5) & 0x80) == 0)
    {
      goto LABEL_7;
    }

    _outermostNavigationController = [(UINavigationController *)self _outermostNavigationController];
    if ([_outermostNavigationController isToolbarHidden])
    {

      goto LABEL_7;
    }

    v11 = _outermostNavigationController[161];

    if ((v11 & 0x200000000000) == 0)
    {
LABEL_7:
      v12 = 0;
      v13 = 0;
      if (!content)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  isTranslucent = [barCopy isTranslucent];
  if (([controllerCopy extendedLayoutIncludesOpaqueBars] & 1) == 0 && !isTranslucent)
  {
    v13 = 1;
    if (!content)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v13 = ([controllerCopy edgesForExtendedLayout] & 4) == 0;
  if (content)
  {
LABEL_14:
    v12 = !v13;
LABEL_15:
    *content = v12;
  }

LABEL_16:

  return v13;
}

- (BOOL)_shouldChildViewControllerUseFullScreenLayout:(id)layout
{
  layoutCopy = layout;
  v7.receiver = self;
  v7.super_class = UINavigationController;
  if ([(UIViewController *)&v7 _shouldChildViewControllerUseFullScreenLayout:layoutCopy])
  {
    v5 = ![(UINavigationController *)self _shouldNavigationBarInsetViewController:layoutCopy];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_updatePalettesWithBlock:(id)block
{
  blockCopy = block;
  topPalette = self->_topPalette;
  if (topPalette)
  {
    v7 = blockCopy;
    _shouldUpdateBackground = [(_UINavigationControllerPalette *)topPalette _shouldUpdateBackground];
    blockCopy = v7;
    if (_shouldUpdateBackground)
    {
      v7[2](v7, self->_topPalette);
      blockCopy = v7;
    }
  }
}

- (void)_setContentOverlayInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  if (![(UINavigationController *)self isToolbarHidden])
  {
    [(UIViewController *)self _contentOverlayInsets];
    if (bottom != v8)
    {
      toolbar = [(UINavigationController *)self toolbar];
      barPosition = [toolbar barPosition];
      if (barPosition == 4 || barPosition == 1)
      {
        [toolbar setNeedsLayout];
      }
    }
  }

  v11.receiver = self;
  v11.super_class = UINavigationController;
  [(UIViewController *)&v11 _setContentOverlayInsets:top, left, bottom, right];
}

- (void)_layoutTopViewControllerLookForNested:(BOOL)nested
{
  nestedCopy = nested;
  topViewController = [(UINavigationController *)self topViewController];
  v14 = topViewController;
  if (nestedCopy && [topViewController _isNestedNavigationController])
  {
    topViewController2 = [v14 topViewController];

    v14 = topViewController2;
  }

  disappearingViewController = [(UINavigationController *)self disappearingViewController];

  v8 = v14;
  if (v14 != disappearingViewController)
  {
    if (-[UINavigationController needsDeferredTransition](self, "needsDeferredTransition") || ![v14 isViewLoaded] || -[UINavigationController isCustomTransition](self, "isCustomTransition"))
    {
      p_navigationControllerFlags = &self->_navigationControllerFlags;
      *&self->_navigationControllerFlags |= 0x80000000000000uLL;
      goto LABEL_9;
    }

    if ([(UINavigationController *)self _isNestedNavigationController])
    {
      _outermostNavigationController = [(UINavigationController *)self _outermostNavigationController];
      isCustomTransition = [_outermostNavigationController isCustomTransition];

      p_navigationControllerFlags = &self->_navigationControllerFlags;
      *&self->_navigationControllerFlags |= 0x80000000000000uLL;
      if (isCustomTransition)
      {
LABEL_9:
        if (([objc_opt_class() _directlySetsContentOverlayInsetsForChildren] & 1) == 0)
        {
          [(UIViewController *)self _updateContentOverlayInsetsFromParentIfNecessary];
          [v14 _updateContentOverlayInsetsForSelfAndChildren];
          navigationItem = [v14 navigationItem];
          v11 = [(UINavigationController *)self _effectiveSearchControllerForSearchBarGivenTopNavigationItem:navigationItem];

          if (v11 && [v11 isActive])
          {
            [v11 _updateContentOverlayInsetsForSelfAndChildren];
          }
        }

        goto LABEL_14;
      }
    }

    else
    {
      p_navigationControllerFlags = &self->_navigationControllerFlags;
      *&self->_navigationControllerFlags |= 0x80000000000000uLL;
    }

    [(UINavigationController *)self _layoutViewController:v14];
LABEL_14:
    *p_navigationControllerFlags &= ~0x80000000000000uLL;
    [(UINavigationController *)self _eagerlyUpdateSafeAreaInsets];
    v8 = v14;
  }
}

- (UIEdgeInsets)_avoidanceInsets
{
  v17.receiver = self;
  v17.super_class = UINavigationController;
  [(UIViewController *)&v17 _avoidanceInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(UINavigationController *)self existingPaletteForEdge:2];
  v12 = v11;
  if (v11)
  {
    [v11 frame];
    v4 = v4 + CGRectGetHeight(v18);
  }

  v13 = v4;
  v14 = v6;
  v15 = v8;
  v16 = v10;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (UIEdgeInsets)_edgeInsetsDeferringToCommandeeringTableHeaderViewStyleSearchControllerWithPresentingViewController:(id)controller
{
  v26 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  presentedViewController = [controllerCopy presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = presentedViewController;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = presentedViewController == 0;
  }

  v9 = !v8;
  if (has_internal_diagnostics)
  {
    if (v9)
    {
      v18 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        v24 = 138412290;
        v25 = controllerCopy;
        _os_log_fault_impl(&dword_188A29000, v18, OS_LOG_TYPE_FAULT, "Paying the price for an isKindOfClass check for pre-iOS 11.0 search controller behavior that failed. Presenting view controller: %@", &v24, 0xCu);
      }

      goto LABEL_18;
    }
  }

  else if (v9)
  {
    v23 = *(__UILogGetCategoryCachedImpl("Assert", &_edgeInsetsDeferringToCommandeeringTableHeaderViewStyleSearchControllerWithPresentingViewController____s_category) + 8);
    v17 = 0.0;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = 138412290;
      v25 = controllerCopy;
      _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "Paying the price for an isKindOfClass check for pre-iOS 11.0 search controller behavior that failed. Presenting view controller: %@", &v24, 0xCu);
    }

    goto LABEL_19;
  }

  if (!v6)
  {
LABEL_18:
    v17 = 0.0;
LABEL_19:
    v15 = 0.0;
    v13 = 0.0;
    v11 = 0.0;
    goto LABEL_20;
  }

  LOBYTE(v24) = 0;
  [v6 _edgeInsetsForChildViewController:controllerCopy insetsAreAbsolute:&v24];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
LABEL_20:

  v19 = v11;
  v20 = v13;
  v21 = v15;
  v22 = v17;
  result.right = v22;
  result.bottom = v21;
  result.left = v20;
  result.top = v19;
  return result;
}

- (UIEdgeInsets)_calculateEdgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute
{
  controllerCopy = controller;
  _outermostNavigationController = [(UINavigationController *)self _outermostNavigationController];
  v8 = _outermostNavigationController;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  if (_outermostNavigationController)
  {
    [(UINavigationController *)_outermostNavigationController _calculateTopLayoutInfoForViewController:controllerCopy];
    v9 = *&v48;
  }

  else
  {
    v9 = 0.0;
  }

  if (v8 == self && v50 == 1 && BYTE1(v50) == 1 && ![(_UINavigationControllerPalette *)self->_topPalette isVisibleWhenPinningBarIsHidden]&& (![(UINavigationController *)self _isNavigationBarVisible]|| (*(&self->_navigationControllerFlags + 1) & 0x20) != 0))
  {
    v9 = v9 - *(&v49 + 1);
  }

  _existingView = [(UIViewController *)v8 _existingView];
  if (![_existingView _usesMinimumSafeAreas])
  {
    goto LABEL_15;
  }

  isNavigationBarHidden = [(UINavigationController *)v8 isNavigationBarHidden];

  if (isNavigationBarHidden)
  {
    goto LABEL_16;
  }

  _positionBarsExclusivelyWithSafeArea = [(UINavigationController *)v8 _positionBarsExclusivelyWithSafeArea];
  [(UIViewController *)v8 _contentOverlayInsets];
  v14 = v13;
  if (_positionBarsExclusivelyWithSafeArea)
  {
    _existingView = [(UIViewController *)v8 _existingView];
    [_existingView _minimumSafeAreaInsets];
    v9 = v9 - (v14 - v15);
LABEL_15:

    goto LABEL_16;
  }

  v47.receiver = self;
  v47.super_class = UINavigationController;
  [(UIViewController *)&v47 _statusBarHeightAdjustmentForCurrentOrientation];
  v9 = v9 - (v14 - v45);
LABEL_16:
  navigationBar = self->_navigationBar;
  traitCollection = [(UIView *)navigationBar traitCollection];
  [(UINavigationBar *)navigationBar _minimumTopPaddingWithTraitCollection:traitCollection];
  v19 = v18;

  if (v19 > 0.0)
  {
    navigationBar = [(UINavigationController *)v8 navigationBar];
    [navigationBar center];
    v22 = v21;
    [navigationBar bounds];
    v24 = v23;
    [navigationBar anchorPoint];
    v26 = v22 - v24 * v25;
    v27 = [(UINavigationController *)self _computeTopAvoidanceAreaForBar:navigationBar edge:1uLL hidden:0];
    if (v26 > v27)
    {
      v9 = v9 + v26 - v27;
    }
  }

  v28 = 0.0;
  if (v9 == 0.0)
  {
    v29 = 0.0;
    v30 = 0.0;
    if ([(UINavigationController *)v8 _searchHidNavigationBar])
    {
      [(UINavigationController *)self _edgeInsetsDeferringToCommandeeringTableHeaderViewStyleSearchControllerWithPresentingViewController:controllerCopy];
      v9 = v31;
      v30 = v32;
      v29 = v33;
      v28 = v34;
    }
  }

  else
  {
    v29 = 0.0;
    v30 = 0.0;
  }

  if (_UIUnifiedToolbarEnabled())
  {
    [(_UIFloatingBarContainer *)v8->_floatingBarContainerView toolbarOverlayInset];
    v36 = v35;
    [(UIViewController *)v8 _contentOverlayInsets];
    v29 = fmax(v36 - v37, 0.0);
  }

  else
  {
    _existingToolbar = [(UINavigationController *)self _existingToolbar];
    if (_existingToolbar)
    {
      v46 = 0;
      [(UINavigationController *)self _shouldToolBar:_existingToolbar insetViewController:controllerCopy orOverlayContent:&v46];
      if (v46 == 1)
      {
        toolbar = [(UINavigationController *)self toolbar];
        [toolbar sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
        v29 = v40;
      }
    }
  }

  *absolute = 0;

  v41 = v9;
  v42 = v30;
  v43 = v29;
  v44 = v28;
  result.right = v44;
  result.bottom = v43;
  result.left = v42;
  result.top = v41;
  return result;
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute
{
  controllerCopy = controller;
  if ([controllerCopy _isNestedNavigationController])
  {
    *absolute = 1;
    [(UIViewController *)self _contentOverlayInsets];
  }

  else
  {
    [(UINavigationController *)self _calculateEdgeInsetsForChildViewController:controllerCopy insetsAreAbsolute:absolute];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (void)_marginInfoForChild:(id)child leftMargin:(double *)margin rightMargin:(double *)rightMargin
{
  _existingView = [(UIViewController *)self _existingView];
  _shouldReverseLayoutDirection = [_existingView _shouldReverseLayoutDirection];

  [(UIViewController *)self systemMinimumLayoutMargins];
  if (_shouldReverseLayoutDirection)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  *margin = v12;
  if (_shouldReverseLayoutDirection)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  *rightMargin = v13;
}

- (double)_contentMarginForView:(id)view
{
  viewCopy = view;
  v16.receiver = self;
  v16.super_class = UINavigationController;
  [(UIViewController *)&v16 _contentMarginForView:viewCopy];
  v6 = v5;
  if (self->_navigationBar == viewCopy || self->_toolbar == viewCopy)
  {
    if (dyld_program_sdk_at_least())
    {
      topViewController = [(UINavigationController *)self topViewController];
      v8 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, topViewController, 1, 0);

      if (v8 || ([(UINavigationController *)self topViewController], v9 = objc_claimAutoreleasedReturnValue(), _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v9, 4, 0), v8 = objc_claimAutoreleasedReturnValue(), v9, v8))
      {
        [v8 _alignedContentMarginGivenMargin:v6];
        v6 = v10;
        lastContentMarginForView = self->_lastContentMarginForView;
        if (!lastContentMarginForView)
        {
          v12 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:2];
          v13 = self->_lastContentMarginForView;
          self->_lastContentMarginForView = v12;

          lastContentMarginForView = self->_lastContentMarginForView;
        }

        v14 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
        [(NSMapTable *)lastContentMarginForView setObject:v14 forKey:viewCopy];
      }
    }
  }

  return v6;
}

- (CGRect)_frameForViewController:(id)controller
{
  controllerCopy = controller;
  navigationTransitionView = [(UINavigationController *)self navigationTransitionView];
  [navigationTransitionView bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  [(UINavigationController *)self _calculateTopLayoutInfoForViewController:controllerCopy];
  _viewControllerUnderlapsStatusBar = [(UINavigationController *)self _viewControllerUnderlapsStatusBar];
  v15 = controllerCopy;
  navigationBar = [(UINavigationController *)self navigationBar];
  _barPosition = [navigationBar _barPosition];
  searchDisplayController = [v15 searchDisplayController];
  if ([searchDisplayController isActive])
  {
    searchDisplayController2 = [v15 searchDisplayController];
    if ([searchDisplayController2 hidNavigationBar])
    {
      v21 = ([v15 edgesForExtendedLayout] & 1) == 0 && _barPosition == 3;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = v9 + *(&v53 + 1);
  v23 = 0.0;
  v24 = v13 - (*(&v53 + 1) + 0.0);
  if (v21 || _viewControllerUnderlapsStatusBar)
  {
    [(UINavigationController *)self _statusBarHeightAdjustmentForCurrentOrientation];
    v23 = v25;
    v26 = v25 > 0.0 && v21;
    v27 = v22 + v25;
    if (v26)
    {
      v24 = v24 - (v23 + 0.0);
      v22 = v27;
    }
  }

  _existingToolbar = [(UINavigationController *)self _existingToolbar];
  v52 = 0;
  v29 = [(UINavigationController *)self _shouldToolBar:_existingToolbar insetViewController:controllerCopy orOverlayContent:&v52];
  v51 = 0;
  tabBarController = [(UIViewController *)self tabBarController];
  tabBar = [tabBarController tabBar];

  tabBarController2 = [(UIViewController *)self tabBarController];
  v33 = [(UINavigationController *)self _shouldTabBarController:tabBarController2 insetViewController:controllerCopy orOverlayContent:&v51];

  if ((v33 & 1) == 0)
  {
    if (v29)
    {
      v22 = v22 + 0.0;
      v24 = v24 - (_UIBackgroundExtensionForBarWithInsetFromHomeAffordanceAllowance(_existingToolbar, 0) + 0.0);
      goto LABEL_24;
    }

LABEL_23:
    v34 = 0.0;
    if (v52 != 1)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  if (!v29)
  {
    goto LABEL_23;
  }

LABEL_24:
  toolbar = [(UINavigationController *)self toolbar];
  [toolbar sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v34 = v36;

  if (v29)
  {
    if (tabBar)
    {
      v33 |= (~*&self->_navigationControllerFlags & 0xC00) != 0;
    }

    v22 = v22 + 0.0;
    v24 = v24 - (v34 + 0.0);
  }

LABEL_28:
  if (v52 == 1 && tabBar && (~*&self->_navigationControllerFlags & 0xC00) != 0)
  {
    v51 = 1;
  }

  if (v33)
  {
    [tabBar bounds];
    v38 = v37;
    _screen = [controllerCopy _screen];
    _userInterfaceIdiom = [_screen _userInterfaceIdiom];

    v24 = v24 - (v38 + 0.0);
    if (_userInterfaceIdiom == 3)
    {
      v22 = v22 + v38;
    }

    else
    {
      v22 = v22 + 0.0;
    }
  }

  else
  {
    v38 = 0.0;
    if (v51 == 1)
    {
      [tabBar bounds];
      v38 = v41;
    }
  }

  if ([objc_opt_class() _directlySetsContentOverlayInsetsForChildren])
  {
    v42 = *&v54 + *(&v54 + 1);
    v43 = 0.0;
    if (!BYTE3(v55))
    {
      v42 = 0.0;
    }

    if (!v21 && _viewControllerUnderlapsStatusBar)
    {
      v44 = v23;
    }

    else
    {
      v44 = 0.0;
    }

    v45 = v44 + v42;
    if (v51)
    {
      v46 = v38;
    }

    else
    {
      v46 = 0.0;
    }

    if (v52)
    {
      v43 = v34;
    }

    [controllerCopy _setContentOverlayInsets:v45 andLeftMargin:0.0 rightMargin:{v46 + v43, 0.0, -1.79769313e308, -1.79769313e308}];
  }

  v47 = v7 + 0.0;
  v48 = v22;
  v49 = v11;
  v50 = v24;
  result.size.height = v50;
  result.size.width = v49;
  result.origin.y = v48;
  result.origin.x = v47;
  return result;
}

- (CGRect)_frameForWrapperViewForViewController:(id)controller
{
  navigationTransitionView = [(UINavigationController *)self navigationTransitionView];
  [navigationTransitionView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (UIEdgeInsets)_expectedContentInsetDeltaForViewController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  v6 = 0.0;
  if (controllerCopy)
  {
    v7 = 0.0;
    if ([controllerCopy automaticallyAdjustsScrollViewInsets])
    {
      [(UINavigationController *)self _scrollViewTopContentInsetForViewController:v5];
      v7 = v8;
      [(UINavigationController *)self _scrollViewBottomContentInsetForViewController:v5];
      v6 = v9;
    }
  }

  else
  {
    v7 = 0.0;
  }

  v10 = 0.0;
  v11 = 0.0;
  v12 = v7;
  v13 = v6;
  result.right = v11;
  result.bottom = v13;
  result.left = v10;
  result.top = v12;
  return result;
}

- (double)_scrollViewTopContentInsetForViewController:(id)controller
{
  controllerCopy = controller;
  _outermostNavigationController = [(UINavigationController *)self _outermostNavigationController];
  if ([_outermostNavigationController _hasTranslucentNavigationBarIncludingViewController:controllerCopy])
  {
    extendedLayoutIncludesOpaqueBars = 1;
  }

  else
  {
    extendedLayoutIncludesOpaqueBars = [controllerCopy extendedLayoutIncludesOpaqueBars];
  }

  _outermostNavigationController2 = [(UINavigationController *)self _outermostNavigationController];
  _isNavigationBarVisible = [_outermostNavigationController2 _isNavigationBarVisible];

  [(UINavigationController *)self _calculateTopLayoutInfoForViewController:controllerCopy, 0, 0];
  v9 = _isNavigationBarVisible ^ 1;
  if ((extendedLayoutIncludesOpaqueBars & 1) != 0 || v9)
  {
    searchDisplayController = [controllerCopy searchDisplayController];
    [searchDisplayController hidNavigationBar];

    _window = [(UINavigationController *)self _window];
    if (![UIApp _appAdoptsUISceneLifecycle] || _window)
    {
      v12 = __UIStatusBarManagerForWindow(_window);
      [v12 isStatusBarHidden];
    }
  }

  return 0.0;
}

- (double)_scrollViewBottomContentInsetForViewController:(id)controller
{
  controllerCopy = controller;
  _existingToolbar = [(UINavigationController *)self _existingToolbar];
  v6 = 0.0;
  if (_existingToolbar && ![(UINavigationController *)self isToolbarHidden]&& ![(UINavigationController *)self _shouldToolBar:_existingToolbar insetViewController:controllerCopy])
  {
    toolbar = [(UINavigationController *)self toolbar];
    [toolbar sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v6 = v8;
  }

  tabBarController = [(UIViewController *)self tabBarController];
  tabBar = [tabBarController tabBar];
  tabBarController2 = [(UIViewController *)self tabBarController];
  _effectiveTabBarPosition = [tabBarController2 _effectiveTabBarPosition];

  if (tabBar && _effectiveTabBarPosition == 1 && (*&self->_navigationControllerFlags & 0xC00) == 0 && ![(UINavigationController *)self _shouldTabBarController:tabBarController insetViewController:controllerCopy orOverlayContent:0])
  {
    [tabBar bounds];
    v6 = v6 + v13;
  }

  _window = [(UIView *)self->super._view _window];
  [_window safeAreaInsets];
  v16 = v6 + v15;

  _multiColumnViewController = [(UIViewController *)self _multiColumnViewController];
  v18 = _multiColumnViewController;
  if (_multiColumnViewController)
  {
    [_multiColumnViewController keyboardInset];
    if (v16 < v19)
    {
      v16 = v19;
    }
  }

  return v16;
}

- (BOOL)_otherExpectedNavigationControllerObservesScrollView:(id)view
{
  viewCopy = view;
  v5 = viewCopy;
  if (viewCopy)
  {
    _viewControllerForAncestor = [viewCopy _viewControllerForAncestor];
    navigationController = [_viewControllerForAncestor navigationController];
    _outermostNavigationController = [navigationController _outermostNavigationController];

    v9 = 0;
    if (_outermostNavigationController && _outermostNavigationController != self)
    {
      v9 = [v5 _isScrollViewScrollObserver:_outermostNavigationController];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_updateScrollViewObservationFlagsForScrollView:(id)view navigationItem:(id)item forEdges:(unint64_t)edges
{
  edgesCopy = edges;
  viewCopy = view;
  itemCopy = item;
  if (viewCopy && (![(UINavigationController *)self isNavigationBarHidden]|| [(UINavigationController *)self _hasPotentiallyChromelessBottomBar]) && ![(UINavigationController *)self _otherExpectedNavigationControllerObservesScrollView:viewCopy])
  {
    if (edgesCopy)
    {
      isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets = _isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets(self, viewCopy);
      v11 = 0x400000000000000;
      if (!isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets)
      {
        v11 = 0;
      }

      *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFBFFFFFFFFFFFFFFLL | v11;
      _forceScrollEdgeAppearance = [(UINavigationBar *)self->_navigationBar _forceScrollEdgeAppearance];
      v13 = 0x800000000000000;
      if (!_forceScrollEdgeAppearance)
      {
        v13 = 0;
      }

      *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xF7FFFFFFFFFFFFFFLL | v13;
      if (itemCopy && [itemCopy _isManualScrollEdgeAppearanceEnabled])
      {
        [itemCopy _autoScrollEdgeTransitionDistance];
        v15 = (v14 > 0.0) << 60;
      }

      else
      {
        v15 = 0;
      }

      *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xEFFFFFFFFFFFFFFFLL | v15;
    }

    else if ((edgesCopy & 4) == 0)
    {
      goto LABEL_28;
    }

    if (_UIBarsApplyChromelessEverywhere())
    {
      _isManualScrollEdgeAppearanceEnabled = [itemCopy _isManualScrollEdgeAppearanceEnabled];
      v17 = 0x2000000000000000;
      if (_isManualScrollEdgeAppearanceEnabled)
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xDFFFFFFFFFFFFFFFLL | v17;
  }

  else
  {
    if (edgesCopy)
    {
      navigationControllerFlags = *&self->_navigationControllerFlags & 0xE3FFFFFFFFFFFFFFLL;
      *&self->_navigationControllerFlags = navigationControllerFlags;
    }

    else
    {
      if ((edgesCopy & 4) == 0)
      {
        goto LABEL_28;
      }

      navigationControllerFlags = self->_navigationControllerFlags;
    }

    *&self->_navigationControllerFlags = navigationControllerFlags & 0xDFFFFFFFFFFFFFFFLL;
  }

LABEL_28:
}

- (void)_updateAndObserveScrollView:(id)view viewController:(id)controller forEdges:(unint64_t)edges
{
  viewCopy = view;
  controllerCopy = controller;
  _outermostNavigationController = [(UINavigationController *)self _outermostNavigationController];

  if (viewCopy && _outermostNavigationController != self)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v28 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v28, OS_LOG_TYPE_FAULT, "Internal UIKit problem. A nested navigation controller is being asked to observe a scrollView.", buf, 2u);
      }
    }

    else
    {
      v27 = *(__UILogGetCategoryCachedImpl("Assert", &_updateAndObserveScrollView_viewController_forEdges____s_category) + 8);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *v29 = 0;
        _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_ERROR, "Internal UIKit problem. A nested navigation controller is being asked to observe a scrollView.", v29, 2u);
      }
    }
  }

  navigationItem = [controllerCopy navigationItem];
  [(UINavigationController *)self _updateScrollViewObservationFlagsForScrollView:viewCopy navigationItem:navigationItem forEdges:edges];

  if (viewCopy)
  {
    _navigationControllerShouldObserveScrollView = [(UINavigationController *)self _navigationControllerShouldObserveScrollView];
    v13 = [viewCopy _isScrollViewScrollObserver:self];
    if ((edges & 1) == 0)
    {
      if ((edges & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

    if (_navigationControllerShouldObserveScrollView)
    {
      navigationControllerFlags = self->_navigationControllerFlags;
      [viewCopy _setTopScrollIndicatorFollowsContentOffset:(navigationControllerFlags >> 58) & 1];
      if ((navigationControllerFlags & 0x400000000000000) != 0)
      {
        _scrollEdgeAppearanceHasChromelessBehavior = [(UINavigationBar *)self->_navigationBar _scrollEdgeAppearanceHasChromelessBehavior];
        [viewCopy _setVerticalScrollIndicatorUsesAlternativeTopSafeAreaInset:_scrollEdgeAppearanceHasChromelessBehavior];
        if (_scrollEdgeAppearanceHasChromelessBehavior)
        {
          navigationBar = self->_navigationBar;
          _nestedTopViewController = [(UINavigationController *)self _nestedTopViewController];
          navigationItem2 = [_nestedTopViewController navigationItem];
          [(UINavigationController *)self _widthForLayout];
          [(UINavigationBar *)navigationBar _layoutHeightsForNavigationItem:navigationItem2 fittingWidth:?];
          v22 = v21;

          [(UIView *)self->super._view safeAreaInsets];
          v24 = v22 + v23;
        }

        else
        {
          v24 = 0.0;
        }

        v25 = 1;
LABEL_23:
        [viewCopy _setAlternativeVerticalScrollIndicatorTopSafeAreaInset:v24];
        [viewCopy _setShouldAdjustLayoutToCollapseTopSpacing:{v25 | _navigationControllerShouldObserveScrollView & -[UIViewController _isInPopoverPresentation](self, "_isInPopoverPresentation")}];
        [viewCopy _setShouldAdjustLayoutToDrawTopSeparator:_navigationControllerShouldObserveScrollView];
        if ((edges & 4) == 0)
        {
LABEL_6:
          if (_navigationControllerShouldObserveScrollView)
          {
LABEL_7:
            if ((v13 & 1) == 0)
            {
              [viewCopy _addScrollViewScrollObserver:self];
            }

            [(UINavigationController *)self _observeScrollViewDidScroll:viewCopy topLayoutType:[(UINavigationController *)self _topLayoutTypeForViewController:controllerCopy]];
            goto LABEL_29;
          }

          goto LABEL_27;
        }

LABEL_24:
        _existingActiveVisibleToolbar = [(UINavigationController *)self _existingActiveVisibleToolbar];
        if (!_existingActiveVisibleToolbar)
        {
          _existingActiveVisibleToolbar = [(UIViewController *)self _tabBarControllerEnforcingClass:1];
          [_existingActiveVisibleToolbar _navigationController:self didUpdateAndObserveScrollView:viewCopy forEdges:edges];
        }

        if (_navigationControllerShouldObserveScrollView)
        {
          goto LABEL_7;
        }

LABEL_27:
        if (v13)
        {
          [(UINavigationController *)self _stopObservingContentScrollView:viewCopy];
        }

        goto LABEL_29;
      }
    }

    else
    {
      [viewCopy _setTopScrollIndicatorFollowsContentOffset:0];
    }

    [viewCopy _setVerticalScrollIndicatorUsesAlternativeTopSafeAreaInset:0];
    v25 = 0;
    v24 = 0.0;
    goto LABEL_23;
  }

  if (![(UINavigationController *)self _isNestedNavigationController])
  {
    _existingActiveVisibleToolbar2 = [(UINavigationController *)self _existingActiveVisibleToolbar];
    v15 = _existingActiveVisibleToolbar2;
    if ((edges & 4) != 0 && _existingActiveVisibleToolbar2)
    {
      [(UINavigationController *)self _updateBackgroundTransitionProgressForScrollView:0 toolbar:_existingActiveVisibleToolbar2];
    }
  }

LABEL_29:
}

- (BOOL)_navigationBar:(id)bar getContentOffsetOfObservedScrollViewIfApplicable:(CGPoint *)applicable velocity:(CGPoint *)velocity
{
  _nestedTopViewController = [(UINavigationController *)self _nestedTopViewController];
  isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets = 1;
  v10 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, _nestedTopViewController, 1, 0);

  if ((_UISolariumEnabled() & 1) == 0)
  {
    isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets = _isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets(self, v10);
  }

  if (((v10 != 0) & isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets) == 1)
  {
    if (applicable)
    {
      [v10 contentOffset];
      applicable->x = v11;
      applicable->y = v12;
    }

    if (velocity)
    {
      [v10 _horizontalVelocity];
      v14 = v13 * 1000.0;
      [v10 _verticalVelocity];
      velocity->x = v14;
      velocity->y = v15 * 1000.0;
    }
  }

  return (v10 != 0) & isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets;
}

- (void)_navigationBar:(id)bar topItemUpdatedLargeTitleDisplayMode:(id)mode
{
  modeCopy = mode;
  _nestedTopViewController = [(UINavigationController *)self _nestedTopViewController];
  navigationItem = [_nestedTopViewController navigationItem];

  if (navigationItem == modeCopy)
  {
    v7 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, _nestedTopViewController, 1, 0);
    if (v7 && _isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets(self, v7))
    {
      v8 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, _nestedTopViewController, 4, 0);

      if (v7 == v8)
      {
        v9 = 5;
      }

      else
      {
        v9 = 1;
      }

      [(UINavigationController *)self _updateScrollViewObservationFlagsForScrollView:v7 navigationItem:modeCopy forEdges:v9];
    }
  }
}

- (void)_resetScrollViewObservingForViewController:(id)controller
{
  controllerCopy = controller;
  v4 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, controllerCopy, 1, 0);
  v5 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, controllerCopy, 4, 0);
  if (v5 == v4)
  {
    v6 = 5;
  }

  else
  {
    v6 = 1;
  }

  [(UINavigationController *)self _updateAndObserveScrollView:v4 viewController:controllerCopy forEdges:v6];
  if (v5 != v4)
  {
    [(UINavigationController *)self _updateAndObserveScrollView:v5 viewController:controllerCopy forEdges:4];
    if (!v5)
    {
      navigationItem = [controllerCopy navigationItem];
      [(UINavigationController *)self _updateScrollViewObservationFlagsForScrollView:v4 navigationItem:navigationItem forEdges:1];
    }
  }
}

- (void)_computeAndApplyScrollContentInsetDeltaForViewController:(id)controller
{
  controllerCopy = controller;
  [(UINavigationController *)self _resetScrollViewObservingForViewController:controllerCopy];
  v5 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, controllerCopy, 1, 0);
  v6 = v5;
  if ((*(&self->_navigationControllerFlags + 4) & 0x20) == 0)
  {
    if (!v5 || [(UINavigationController *)self _isPushingOrPopping])
    {
      [(UINavigationController *)self _updateTopViewFramesForViewController:controllerCopy];
    }

    _viewControllerForAncestor = [v6 _viewControllerForAncestor];
    navigationController = [_viewControllerForAncestor navigationController];

    if (navigationController != self)
    {
      [(UINavigationController *)navigationController _layoutTopViewController];
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __83__UINavigationController__computeAndApplyScrollContentInsetDeltaForViewController___block_invoke;
    v9[3] = &unk_1E70F6228;
    v10 = v6;
    selfCopy = self;
    v12 = controllerCopy;
    [(UINavigationController *)self _performWhileIgnoringUpdateTopViewFramesToMatchScrollOffset:v9];
  }
}

void __83__UINavigationController__computeAndApplyScrollContentInsetDeltaForViewController___block_invoke(id *a1)
{
  if (a1[4])
  {
    [a1[5] _expectedContentInsetDeltaForViewController:a1[6]];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    if ([a1[5] _isTransitioning] && (objc_msgSend(a1[4], "window"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "windowScene"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "statusBarManager"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isInStatusBarFadeAnimation"), v12, v11, v10, v13))
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __83__UINavigationController__computeAndApplyScrollContentInsetDeltaForViewController___block_invoke_2;
      v15[3] = &unk_1E70F3B20;
      v16 = a1[6];
      v17 = v3;
      v18 = v5;
      v19 = v7;
      v20 = v9;
      [UIView performWithoutAnimation:v15];
    }

    else if ([a1[5] _appearState] != 3 && objc_msgSend(a1[5], "_appearState"))
    {
      v14 = a1[6];

      [v14 _setNavigationControllerContentInsetAdjustment:{v3, v5, v7, v9}];
    }
  }
}

- (void)_updateTopViewFramesForViewController:(id)controller isCancelledTransition:(BOOL)transition isOrientationChange:(BOOL)change
{
  controllerCopy = controller;
  v8 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, controllerCopy, 1, 0);
  selfCopy = self;
  v10 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(selfCopy, controllerCopy, 1, 0);
  if (transition)
  {
    v11 = 5;
  }

  else if ([(UINavigationController *)selfCopy _isPushing])
  {
    v11 = 2;
  }

  else
  {
    _isPopping = [(UINavigationController *)selfCopy _isPopping];
    v13 = 3;
    if (!_isPopping)
    {
      v13 = 4;
    }

    v14 = v10 != 0;
    if (change)
    {
      v14 = v13;
    }

    if (_isPopping)
    {
      v11 = v13;
    }

    else
    {
      v11 = v14;
    }
  }

  [(UINavigationController *)selfCopy _updateTopViewFramesToMatchScrollOffsetInViewController:controllerCopy contentScrollView:v8 topLayoutType:v11];
}

- (BOOL)_shouldDisplaySearchBarInlineForEffectiveSearchControllerGivenTopNavigationItem:(id)item traitCollection:(id)collection
{
  itemCopy = item;
  v6 = [(UIViewController *)self _splitViewControllerEnforcingClass:1];
  if (![v6 _supportsGlobalSearchHosting])
  {
    goto LABEL_6;
  }

  if (([v6 _isGlobalSearchDonor:self] & 1) == 0)
  {
    if ([v6 _isGlobalSearchRecipient:self])
    {
      _hasIntegratedSearchBarInNavigationBar = 1;
      goto LABEL_7;
    }

LABEL_6:
    _hasIntegratedSearchBarInNavigationBar = [itemCopy _hasIntegratedSearchBarInNavigationBar];
    goto LABEL_7;
  }

  _hasIntegratedSearchBarInNavigationBar = 0;
LABEL_7:

  return _hasIntegratedSearchBarInNavigationBar;
}

- (id)_effectiveSearchControllerForSearchBarGivenTopNavigationItem:(id)item
{
  itemCopy = item;
  v5 = [(UIViewController *)self _splitViewControllerEnforcingClass:1];
  v6 = v5;
  if (itemCopy && [v5 _supportsGlobalSearchHosting])
  {
    if ([v6 _isGlobalSearchRecipient:self])
    {
      splitViewController = [(UIViewController *)self splitViewController];
      _globalSearchController = [splitViewController _globalSearchController];

      _searchControllerIfAllowed = _globalSearchController;
      v10 = itemCopy;
      v11 = v6;
      goto LABEL_9;
    }

    if ([v6 _isGlobalSearchDonor:self])
    {
      _globalSearchController = 0;
      goto LABEL_10;
    }
  }

  _searchControllerIfAllowed = [itemCopy _searchControllerIfAllowed];
  _globalSearchController = _searchControllerIfAllowed;
  if (!_searchControllerIfAllowed)
  {
    goto LABEL_10;
  }

  v10 = 0;
  v11 = 0;
LABEL_9:
  [_searchControllerIfAllowed _setNavigationItemCurrentlyDisplayingSearchBar:v10 withGlobalSearchDelegate:v11];
  searchBar = [_globalSearchController searchBar];
  [searchBar _resetIfNecessaryForNavigationBarHosting:1];

LABEL_10:

  return _globalSearchController;
}

- (id)_effectiveSearchControllerForScopeBarGivenTopNavigationItem:(id)item
{
  itemCopy = item;
  v5 = [(UIViewController *)self _splitViewControllerEnforcingClass:1];
  if ([v5 _supportsGlobalSearchHosting] && objc_msgSend(v5, "_isGlobalSearchDonor:", self))
  {
    splitViewController = [(UIViewController *)self splitViewController];
    _globalSearchController = [splitViewController _globalSearchController];
  }

  else
  {
    _globalSearchController = [itemCopy _searchControllerIfAllowed];
  }

  return _globalSearchController;
}

- (BOOL)_isTransitioningSearchController
{
  topViewController = [(UINavigationController *)self topViewController];
  v3 = topViewController;
  if (topViewController)
  {
    navigationItem = [topViewController navigationItem];
    _searchControllerIfAllowed = [navigationItem _searchControllerIfAllowed];

    if ([_searchControllerIfAllowed isActive])
    {
      transitionCoordinator = [_searchControllerIfAllowed transitionCoordinator];
      v7 = transitionCoordinator != 0;
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

- (int64_t)_topLayoutTypeForViewController:(id)controller
{
  v4 = 1;
  v5 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, controller, 1, 0);
  [v5 contentOffset];
  if (v6 == 0.0)
  {
    if ([(UINavigationController *)self _isPushing])
    {
      v4 = 2;
    }

    else if ([(UINavigationController *)self _isPopping])
    {
      v4 = 3;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)_scrollToRevealNavigationBarPart:(int64_t)part animated:(BOOL)animated
{
  animatedCopy = animated;
  _outermostNavigationController = [(UINavigationController *)self _outermostNavigationController];
  topViewController = [(UINavigationController *)self topViewController];
  v8 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(_outermostNavigationController, topViewController, 1, 0);

  if (v8)
  {
    navigationBar = [_outermostNavigationController navigationBar];
    topItem = [navigationBar topItem];
    _stackEntry = [topItem _stackEntry];

    if (_stackEntry)
    {
      [_stackEntry activeLayoutHeightRevealingPart:part];
      if (v12 > 0.0)
      {
        v13 = v12;
        [navigationBar frame];
        v15 = -(v13 + v14);
        [v8 contentOffset];
        if (v16 > v15)
        {
          [v8 setContentOffset:animatedCopy animated:?];
        }
      }
    }
  }
}

- (void)_performWhileIgnoringUpdateTopViewFramesToMatchScrollOffset:(id)offset
{
  ++self->_updateTopViewFramesToMatchScrollOffsetDisabledCount;
  (*(offset + 2))(offset, a2);
  --self->_updateTopViewFramesToMatchScrollOffsetDisabledCount;
}

- (void)_updateTopViewFramesToMatchScrollOffsetInViewController:(id)controller contentScrollView:(id)view topLayoutType:(int64_t)type
{
  controllerCopy = controller;
  viewCopy = view;
  if ([(UINavigationController *)self _canUpdateTopViewFramesToMatchScrollView])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    [(UINavigationController *)self _calculateTopViewFramesForLayoutWithViewController:controllerCopy contentScrollView:viewCopy navBarFrame:&v17 topPaletteFrame:&v15 topLayoutType:type];
    [viewCopy setProgrammaticScrollEnabled:!self->_interactiveScrollActive];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v11 = v17;
    v12 = v18;
    v13 = v15;
    v14 = v16;
    v10[2] = __114__UINavigationController__updateTopViewFramesToMatchScrollOffsetInViewController_contentScrollView_topLayoutType___block_invoke;
    v10[3] = &unk_1E70F6C80;
    v10[4] = self;
    [(UINavigationController *)self _performTopViewGeometryUpdates:v10];
    [viewCopy setProgrammaticScrollEnabled:1];
  }
}

uint64_t __114__UINavigationController__updateTopViewFramesToMatchScrollOffsetInViewController_contentScrollView_topLayoutType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1000);
  if (v3)
  {
    [v3 setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
    v2 = *(a1 + 32);
  }

  result = *(v2 + 1136);
  if (result)
  {
    result = [result _attachmentIsChanging];
    if ((result & 1) == 0)
    {
      v5 = *(a1 + 72);
      v6 = *(a1 + 80);
      v7 = *(*(a1 + 32) + 1136);
      v8 = *(a1 + 88);
      v9 = *(a1 + 96);

      return [v7 setFrame:{v5, v6, v8, v9}];
    }
  }

  return result;
}

- (void)_performTopViewGeometryUpdates:(id)updates
{
  updatesCopy = updates;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__UINavigationController__performTopViewGeometryUpdates___block_invoke;
  v6[3] = &unk_1E70F37C0;
  v6[4] = self;
  v7 = updatesCopy;
  v5 = updatesCopy;
  [(UINavigationController *)self _performWhileIgnoringUpdateTopViewFramesToMatchScrollOffset:v6];
}

void *__57__UINavigationController__performTopViewGeometryUpdates___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1000) frame];
  v3 = v2;
  v5 = v4;
  v6 = *(*(a1 + 32) + 1136);
  if (v6)
  {
    [v6 frame];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v8 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
  }

  (*(*(a1 + 40) + 16))();
  [*(*(a1 + 32) + 1000) frame];
  v12 = v11;
  v14 = v13;
  result = *(*(a1 + 32) + 1136);
  if (result)
  {
    result = [result frame];
  }

  else
  {
    v16 = *MEMORY[0x1E695F060];
    v17 = *(MEMORY[0x1E695F060] + 8);
  }

  if (v3 != v12 || v5 != v14 || v8 != v16 || v10 != v17)
  {
    v21 = *(a1 + 32);

    return [v21 _layoutTopViewController];
  }

  return result;
}

- ($512FAC6031DC579ED3B9B436D64463DA)_calculateTopLayoutInfoForViewController:(SEL)controller
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v31 = 0;
  v7 = [(UINavigationController *)self _shouldNavigationBarInsetViewController:v6 orOverlayContent:&v31];
  edgesForExtendedLayout = [v6 edgesForExtendedLayout];
  selfCopy = self;
  v10 = v6;
  if ([(UINavigationController *)selfCopy _isPushing])
  {
    v11 = 2;
  }

  else if ([(UINavigationController *)selfCopy _isPopping])
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  v12 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(selfCopy, v10, 1, 0);
  if (qword_1ED497A08 != -1)
  {
    dispatch_once(&qword_1ED497A08, &__block_literal_global_1812);
  }

  v13 = edgesForExtendedLayout & 1;
  if (byte_1ED49790B == 1)
  {
    if (v11 == 3)
    {
      computingNavigationBarHeightWithRevealPresentationIterations = selfCopy->_computingNavigationBarHeightWithRevealPresentationIterations;
      if (computingNavigationBarHeightWithRevealPresentationIterations < 0x65)
      {
        selfCopy->_computingNavigationBarHeightWithRevealPresentationIterations = computingNavigationBarHeightWithRevealPresentationIterations + 1;
        v11 = 3;
      }

      else
      {
        if (os_variant_has_internal_diagnostics())
        {
          v30 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412546;
            *&buf[4] = selfCopy;
            *&buf[12] = 2112;
            *&buf[14] = v10;
            _os_log_fault_impl(&dword_188A29000, v30, OS_LOG_TYPE_FAULT, "Breaking out of suspected layout loop while popping. self=%@ vc=%@", buf, 0x16u);
          }
        }

        else
        {
          v15 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED497A10) + 8);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *&buf[4] = selfCopy;
            *&buf[12] = 2112;
            *&buf[14] = v10;
            _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Breaking out of suspected layout loop while popping. self=%@ vc=%@", buf, 0x16u);
          }
        }

        v11 = 0;
      }
    }

    else
    {
      selfCopy->_computingNavigationBarHeightWithRevealPresentationIterations = 0;
    }
  }

  memset(buf, 0, 32);
  [(UINavigationController *)selfCopy _calculateTopViewFramesForLayoutWithViewController:v10 contentScrollView:v12 navBarFrame:buf topPaletteFrame:0 topLayoutType:v11];
  v16 = *&buf[24];

  topPalette = selfCopy->_topPalette;
  v18 = 0.0;
  if (topPalette && [(_UINavigationControllerPalette *)topPalette isAttached])
  {
    [(_UINavigationControllerPalette *)selfCopy->_topPalette preferredContentInsets];
    if (v19 == 0.0)
    {
      [(UIView *)selfCopy->_topPalette frame];
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    v22 = 1;
  }

  else
  {
    v22 = 0;
    v21 = 0.0;
  }

  if (v7)
  {
    v18 = v16 + 0.0;
  }

  if (v13)
  {
    _isNavigationBarVisible = [(UINavigationController *)selfCopy _isNavigationBarVisible];
    v23 = !_isNavigationBarVisible || v31;
  }

  else
  {
    v23 = 0;
  }

  if ([(UINavigationController *)selfCopy _isNavigationBarVisible])
  {
    v25 = (*(&selfCopy->_navigationControllerFlags + 1) >> 5) & 1;
    if (!v22)
    {
LABEL_31:
      v26 = v18;
      goto LABEL_39;
    }
  }

  else
  {
    v25 = 1;
    if (!v22)
    {
      goto LABEL_31;
    }
  }

  if (v7 || (v26 = 0.0, v25) && [(_UINavigationControllerPalette *)selfCopy->_topPalette isVisibleWhenPinningBarIsHidden])
  {
    if (v23)
    {
      v26 = v18;
    }

    else
    {
      v26 = v18 + v21;
    }
  }

LABEL_39:
  v27 = v31;
  v28 = v16 + v21;
  if (!v31)
  {
    v28 = v21;
  }

  if (v7)
  {
    v28 = 0.0;
  }

  retstr->var0 = v28;
  retstr->var1 = v26;
  retstr->var2 = v16;
  retstr->var3 = v21;
  retstr->var4 = v22;
  retstr->var5 = v13;
  retstr->var6 = v7;
  retstr->var7 = v27;

  return result;
}

- (void)_calculateTopViewFramesForLayoutWithViewController:(id)controller contentScrollView:(id)view navBarFrame:(CGRect *)frame topPaletteFrame:(CGRect *)paletteFrame topLayoutType:(int64_t)type
{
  controllerCopy = controller;
  viewCopy = view;
  if (!frame)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:7239 description:{@"Invalid parameter not satisfying: %@", @"oNavBarFrame != NULL"}];
  }

  if (!viewCopy)
  {
    type = 0;
  }

  if ((type - 2) < 3)
  {
    [(UINavigationController *)self _calculateTopViewFramesFromLayoutHeightsWithViewController:controllerCopy contentScrollView:viewCopy preservingContentInset:(type & 0xFFFFFFFFFFFFFFFELL) == 2 respectFullExtension:type == 3 gettingNavBarFrame:frame topPaletteFrame:paletteFrame];
    if (type != 4)
    {
      goto LABEL_57;
    }

LABEL_11:
    v14 = controllerCopy;
    if ([v14 _isNestedNavigationController])
    {
      topViewController = [v14 topViewController];

      v14 = topViewController;
    }

    navigationItem = [v14 navigationItem];
    [(UINavigationController *)self _intrinsicNavigationBarHeightRangeForNavItem:navigationItem];
    v18 = v17;
    v20 = v19;
    v22 = v21;

    selfCopy = self;
    v24 = v14;
    v25 = viewCopy;
    if (v24)
    {
      if (viewCopy)
      {
LABEL_15:
        [(UINavigationController *)selfCopy _topPalettePreferredLayoutHeightForVisibilityStateIfDisplayedForViewController:v24];
        v27 = v26;
        [(UIView *)selfCopy->_navigationBar frame];
        v29 = v28;
        topPalette = selfCopy->_topPalette;
        if (topPalette)
        {
          [(UIView *)topPalette frame];
          v32 = v31;
        }

        else
        {
          v32 = 0.0;
        }

        v43 = selfCopy;
        v44 = v43;
        if (v43->__positionBarsExclusivelyWithSafeArea && (-[UIViewController _existingView](v43, "_existingView"), v45 = objc_claimAutoreleasedReturnValue(), v46 = [v45 _usesMinimumSafeAreas], v45, v46))
        {
          _existingView = [(UIViewController *)v44 _existingView];
          [_existingView _minimumSafeAreaInsets];
          v49 = v48;
        }

        else
        {
          [(UIViewController *)v44 _contentOverlayInsets];
          v49 = v50;
        }

        v51 = v22 + v27;

        [v25 adjustedContentInset];
        if (v49 >= v52)
        {
          v49 = v52;
        }

        if ((_insetsOfTopViewControllerScrollViewAutomaticallyAdjustedForLargeTitleView(v24) & 1) != 0 || ![v25 _isScrollingToTop])
        {
          _interactiveScrollActive = [(UINavigationController *)v44 _interactiveScrollActive];
          if (viewCopy)
          {
            _hasContentForBarInteractions = [v25 _hasContentForBarInteractions];
          }

          else
          {
            _hasContentForBarInteractions = 0;
          }

          if ((_interactiveScrollActive | _hasContentForBarInteractions))
          {
            v56 = v29 + v32;
            v57 = _possibleTopViewsHeightBasedOnContentOffsetForScrollView(v44, v25);
            [v25 contentInset];
            v59 = v58;
            [v25 _systemContentInset];
            v61 = v57 - (v59 + v60 - v49);
            if (v51 >= v56)
            {
              v62 = v56;
            }

            else
            {
              v62 = v51;
            }

            v51 = v62 + v61;
          }
        }

        else
        {
          [v25 _contentOffsetOrDeferredContentOffset];
          v51 = fmax(v51 - v53, 0.0);
        }

        v63 = selfCopy->_topPalette;
        if (v63)
        {
          [(UIView *)v63 frame];
          v65 = v64;
        }

        else
        {
          v65 = 0.0;
        }

        v66 = v51 - v65;
        if (v44->_interactiveScrollActive || v66 <= v18)
        {
          v22 = v51 - v65;
        }

        else if (v66 < v22)
        {
          if (v66 >= v20)
          {
            v22 = v51 - v65;
          }

          else
          {
            v22 = v20;
          }
        }

        [(UINavigationController *)v44 _navigationBarSizeForViewController:v24 proposedHeight:[(UINavigationBar *)selfCopy->_navigationBar _hasFixedMaximumHeight]^ 1 allowRubberBandStretch:v22];
        v68 = v67;
        [(UINavigationController *)v44 _widthForLayout];
        v70 = v69;
        [(UIView *)selfCopy->_navigationBar frame];
        v72 = v71;
        v74 = v73;
        if (v44->__positionBarsExclusivelyWithSafeArea)
        {
          navigationBar = [(UINavigationController *)v44 navigationBar];
          traitCollection = [navigationBar traitCollection];
          userInterfaceIdiom = [traitCollection userInterfaceIdiom];

          if (userInterfaceIdiom == 3)
          {
            [(UIViewController *)v44 _contentOverlayInsets];
            v72 = v78;
          }
        }

        if (paletteFrame)
        {
          v79 = selfCopy->_topPalette;
          if (v79)
          {
            [(UIView *)v79 frame];
            v81 = v80;
            v83 = v82;
            v93.origin.x = v72;
            v93.origin.y = v74;
            v93.size.width = v70;
            v93.size.height = v68;
            MaxY = CGRectGetMaxY(v93);
            paletteFrame->origin.x = v81;
            paletteFrame->origin.y = MaxY;
            paletteFrame->size.width = v83;
            paletteFrame->size.height = v65;
          }

          else
          {
            v85 = *(MEMORY[0x1E695F058] + 16);
            paletteFrame->origin = *MEMORY[0x1E695F058];
            paletteFrame->size = v85;
          }
        }

        frame->origin.x = v72;
        frame->origin.y = v74;
        frame->size.width = v70;
        frame->size.height = v68;

        goto LABEL_57;
      }
    }

    else
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v88 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGFloat _verticalSpaceToUseForDynamicTopViewLayout(UINavigationController *__strong, CGFloat, UIViewController *__strong, UIScrollView *__strong)"}];
      [currentHandler2 handleFailureInFunction:v88 file:@"UINavigationController.m" lineNumber:7536 description:{@"Invalid parameter not satisfying: %@", @"topViewController != nil"}];

      if (viewCopy)
      {
        goto LABEL_15;
      }
    }

    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v90 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGFloat _verticalSpaceToUseForDynamicTopViewLayout(UINavigationController *__strong, CGFloat, UIViewController *__strong, UIScrollView *__strong)"}];
    [currentHandler3 handleFailureInFunction:v90 file:@"UINavigationController.m" lineNumber:7537 description:{@"Invalid parameter not satisfying: %@", @"contentScrollView != nil"}];

    goto LABEL_15;
  }

  if (type != 5)
  {
    if (!type)
    {
      [(UINavigationController *)self _calculateTopViewFramesForExpandedLayoutWithViewController:controllerCopy contentScrollView:viewCopy gettingNavBarFrame:frame topPaletteFrame:paletteFrame];
      goto LABEL_57;
    }

    goto LABEL_11;
  }

  [(UIView *)self->_navigationBar frame];
  v34 = v33;
  v36 = v35;
  [(UINavigationController *)self _widthForLayout];
  v38 = v37;
  [(UINavigationBar *)self->_navigationBar _heightForRestoringFromCancelledTransition];
  frame->origin.x = v34;
  frame->origin.y = v36;
  frame->size.width = v38;
  frame->size.height = v39;
  if (paletteFrame)
  {
    transitioningTopPalette = self->_transitioningTopPalette;
    if (!transitioningTopPalette)
    {
      transitioningTopPalette = self->_topPalette;
    }

    [(UIView *)transitioningTopPalette frame];
    paletteFrame->origin.x = 0.0;
    paletteFrame->origin.y = 0.0;
    paletteFrame->size.width = v41;
    paletteFrame->size.height = v42;
  }

LABEL_57:
}

- (double)_topPalettePreferredLayoutHeightForVisibilityStateIfDisplayedForViewController:(id)controller
{
  controllerCopy = controller;
  v5 = self->_topPalette;
  v6 = 0.0;
  if (v5)
  {
    topViewController = [(UINavigationController *)self topViewController];
    if (topViewController == controllerCopy)
    {
      outgoingTopPalette = [(UINavigationDeferredTransitionContext *)self->_deferredTransitionContext outgoingTopPalette];
      v9 = outgoingTopPalette;
      if (outgoingTopPalette == v5)
      {
        outgoingTopPalette2 = [(UINavigationDeferredTransitionContext *)self->_deferredTransitionContext outgoingTopPalette];
        isAttached = [outgoingTopPalette2 isAttached];

        if ((isAttached & 1) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }
    }

LABEL_6:
    [(UIView *)v5 frame];
    v6 = v10;
  }

LABEL_7:

  return v6;
}

- (void)_calculateTopViewFramesFromLayoutHeightsWithViewController:(id)controller contentScrollView:(id)view preservingContentInset:(BOOL)inset respectFullExtension:(BOOL)extension gettingNavBarFrame:(CGRect *)frame topPaletteFrame:(CGRect *)paletteFrame
{
  extensionCopy = extension;
  insetCopy = inset;
  v107 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  viewCopy = view;
  [(UINavigationController *)self _widthForLayout];
  v17 = v16;
  if ([controllerCopy _isNestedNavigationController])
  {
    navigationBar = [controllerCopy navigationBar];
    topItem = [navigationBar topItem];
  }

  else
  {
    topItem = [controllerCopy navigationItem];
  }

  v97 = topItem;
  [(UINavigationBar *)self->_navigationBar _layoutHeightsForNavigationItem:topItem fittingWidth:v17];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [(UINavigationController *)self _topPalettePreferredLayoutHeightForVisibilityStateIfDisplayedForViewController:controllerCopy];
  v27 = v26;
  _interactiveScrollActive = [(UINavigationController *)self _interactiveScrollActive];
  if (viewCopy)
  {
    _hasContentForBarInteractions = [viewCopy _hasContentForBarInteractions];
  }

  else
  {
    _hasContentForBarInteractions = 0;
  }

  v30 = (_interactiveScrollActive | _hasContentForBarInteractions) & insetCopy;
  v96 = viewCopy;
  rect = v17;
  if (v30 == 1)
  {
    v31 = _possibleTopViewsHeightBasedOnContentOffsetForScrollView(self, viewCopy);
    if (v31 == 0.0)
    {
      topViewController = [(UINavigationController *)self topViewController];
      _isNavigationController = [topViewController _isNavigationController];

      if (_isNavigationController)
      {
        [(UIView *)self->_navigationBar bounds];
        v31 = v27 + CGRectGetHeight(v108);
      }

      else
      {
        v31 = v23 + v27;
      }
    }
  }

  else
  {
    v31 = v25 + v27;
  }

  v34 = 0.0;
  if (self->_topPalette)
  {
    v34 = v27;
  }

  v35 = v31 - v34;
  v36 = v23 - (v31 - v34);
  if (v36 < 0.05)
  {
    v21 = v23;
  }

  if ((v30 & extensionCopy) == 1)
  {
    v37 = v97;
    if (v25 <= v23 || v36 >= 0.05)
    {
      v25 = v21;
    }

    else
    {
      v36 = v25 - v35;
      if (v25 - v35 >= 0.05)
      {
        paletteFrameCopy = paletteFrame;
        _stack = [(UINavigationBar *)self->_navigationBar _stack];
        viewControllers = [(UINavigationController *)self viewControllers];
        v40 = [viewControllers count];

        topViewController2 = [(UINavigationController *)self topViewController];
        _isNestedNavigationController = [topViewController2 _isNestedNavigationController];

        if (_isNestedNavigationController)
        {
          topViewController3 = [(UINavigationController *)self topViewController];
          viewControllers2 = [topViewController3 viewControllers];
          v45 = [viewControllers2 count];

          v46 = v45 != 0;
          v47 = v45 - 1;
          v37 = v97;
          if (!v46)
          {
            v47 = 0;
          }

          v40 += v47;
        }

        v94 = _stack;
        itemCount = [_stack itemCount];
        v49 = itemCount - 1;
        if (v40 != itemCount && v40 != v49)
        {
          if (os_variant_has_internal_diagnostics())
          {
            v88 = __UIFaultDebugAssertLog();
            if (os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
            {
              viewControllers3 = [(UINavigationController *)self viewControllers];
              items = [v94 items];
              *buf = 138412546;
              v104 = viewControllers3;
              v105 = 2112;
              v106 = items;
              _os_log_fault_impl(&dword_188A29000, v88, OS_LOG_TYPE_FAULT, "Unexpected configuration of navigation stack. viewControllers = %@, stack.items = %@", buf, 0x16u);
            }

            v37 = v97;
          }

          else
          {
            v84 = *(__UILogGetCategoryCachedImpl("Assert", &_calculateTopViewFramesFromLayoutHeightsWithViewController_contentScrollView_preservingContentInset_respectFullExtension_gettingNavBarFrame_topPaletteFrame____s_category) + 8);
            if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
            {
              v85 = v84;
              viewControllers4 = [(UINavigationController *)self viewControllers];
              items2 = [v94 items];
              *buf = 138412546;
              v104 = viewControllers4;
              v105 = 2112;
              v106 = items2;
              _os_log_impl(&dword_188A29000, v85, OS_LOG_TYPE_ERROR, "Unexpected configuration of navigation stack. viewControllers = %@, stack.items = %@", buf, 0x16u);

              v37 = v97;
            }
          }
        }

        if (v40 == v49)
        {
          previousBackEntry = [v94 previousBackEntry];
          v52 = previousBackEntry;
          if (previousBackEntry)
          {
            backEntry = previousBackEntry;
          }

          else
          {
            backEntry = [v94 backEntry];
          }

          topEntry = backEntry;
        }

        else
        {
          topEntry = [v94 topEntry];
        }

        activeLayout = [topEntry activeLayout];
        restingHeights = [(_UINavigationBarLayout *)activeLayout restingHeights];

        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v92 = restingHeights;
        reverseObjectEnumerator = [restingHeights reverseObjectEnumerator];
        v57 = [reverseObjectEnumerator countByEnumeratingWithState:&v98 objects:v102 count:16];
        if (v57)
        {
          v58 = v57;
          v91 = topEntry;
          v59 = *v99;
          v60 = v35 + 0.05;
          while (2)
          {
            for (i = 0; i != v58; ++i)
            {
              if (*v99 != v59)
              {
                objc_enumerationMutation(reverseObjectEnumerator);
              }

              v62 = *(*(&v98 + 1) + 8 * i);
              [v62 doubleValue];
              if (v63 <= v60)
              {
                [v62 doubleValue];
                v21 = v64;
                goto LABEL_45;
              }
            }

            v58 = [reverseObjectEnumerator countByEnumeratingWithState:&v98 objects:v102 count:16];
            if (v58)
            {
              continue;
            }

            break;
          }

LABEL_45:
          v37 = v97;
          topEntry = v91;
        }

        v25 = v21;
        paletteFrame = paletteFrameCopy;
      }
    }
  }

  else
  {
    v25 = v21;
    v37 = v97;
  }

  [(UIView *)self->_navigationBar frame];
  v66 = v65;
  v68 = v67;
  if (self->__positionBarsExclusivelyWithSafeArea)
  {
    navigationBar2 = [(UINavigationController *)self navigationBar];
    traitCollection = [navigationBar2 traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 3)
    {
      [(UIViewController *)self _contentOverlayInsets];
      v66 = v72;
    }
  }

  topPalette = self->_topPalette;
  if (topPalette)
  {
    [(UIView *)topPalette frame];
    v75 = v74;
    MaxY = v76;
    v79 = v78;
    v81 = v80;
    v82 = self->_topPalette;
    if (v82)
    {
      outgoingTopPalette = [(UINavigationDeferredTransitionContext *)self->_deferredTransitionContext outgoingTopPalette];

      if (v82 != outgoingTopPalette)
      {
        v109.origin.x = v66;
        v109.origin.y = v68;
        v109.size.width = rect;
        v109.size.height = v25;
        MaxY = CGRectGetMaxY(v109);
        v81 = v27;
      }
    }
  }

  else
  {
    v75 = *MEMORY[0x1E695F058];
    MaxY = *(MEMORY[0x1E695F058] + 8);
    v79 = *(MEMORY[0x1E695F058] + 16);
    v81 = *(MEMORY[0x1E695F058] + 24);
  }

  if (frame)
  {
    frame->origin.x = v66;
    frame->origin.y = v68;
    frame->size.width = rect;
    frame->size.height = v25;
  }

  if (paletteFrame)
  {
    paletteFrame->origin.x = v75;
    paletteFrame->origin.y = MaxY;
    paletteFrame->size.width = v79;
    paletteFrame->size.height = v81;
  }
}

- (void)_calculateTopViewFramesForExpandedLayoutWithViewController:(id)controller contentScrollView:(id)view gettingNavBarFrame:(CGRect *)frame topPaletteFrame:(CGRect *)paletteFrame
{
  controllerCopy = controller;
  viewCopy = view;
  [(UINavigationController *)self _widthForLayout];
  v12 = v11;
  [(UIView *)self->_navigationBar frame];
  [(UINavigationController *)self _navigationBarSizeForViewController:controllerCopy proposedHeight:0 allowRubberBandStretch:v13];
  v15 = v14;
  _interactiveScrollActive = [(UINavigationController *)self _interactiveScrollActive];
  if (viewCopy)
  {
    _hasContentForBarInteractions = [viewCopy _hasContentForBarInteractions];
  }

  else
  {
    _hasContentForBarInteractions = 0;
  }

  if (((_interactiveScrollActive | _hasContentForBarInteractions) & 1) == 0)
  {
    [(UINavigationController *)self _widthForLayout];
    v19 = v18;
    _navigationBarForNestedNavigationController = [(UINavigationController *)self _navigationBarForNestedNavigationController];
    navigationItem = [controllerCopy navigationItem];
    [_navigationBarForNestedNavigationController _layoutHeightsForNavigationItem:navigationItem fittingWidth:v19];
    v15 = v22;
  }

  if (frame)
  {
    [(UIView *)self->_navigationBar frame];
    frame->origin.x = v23;
    frame->origin.y = v24;
    if (self->__positionBarsExclusivelyWithSafeArea)
    {
      navigationBar = [(UINavigationController *)self navigationBar];
      traitCollection = [navigationBar traitCollection];
      userInterfaceIdiom = [traitCollection userInterfaceIdiom];

      if (userInterfaceIdiom == 3)
      {
        [(UIViewController *)self _contentOverlayInsets];
        frame->origin.x = v28;
      }
    }

    frame->size.width = v12;
    frame->size.height = v15;
  }

  if (paletteFrame)
  {
    if (self->_topPalette)
    {
      [(UINavigationController *)self _frameForPalette:?];
      paletteFrame->origin.x = v29;
      paletteFrame->origin.y = v30;
      paletteFrame->size.width = v31;
      paletteFrame->size.height = v32;
    }

    else
    {
      v33 = *(MEMORY[0x1E695F058] + 16);
      paletteFrame->origin = *MEMORY[0x1E695F058];
      paletteFrame->size = v33;
    }
  }
}

- (double)_preferredHeightForHidingNavigationBarForViewController:(id)controller topItem:(id)item
{
  controllerCopy = controller;
  itemCopy = item;
  selfCopy = self;
  v9 = controllerCopy;
  if ([(UINavigationController *)selfCopy isNavigationBarHidden]&& [(_UINavigationControllerPalette *)selfCopy->_topPalette _isPalettePinningBarHidden])
  {
    goto LABEL_14;
  }

  v10 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(selfCopy, v9, 1, 0);
  navigationBar = [(UINavigationController *)selfCopy navigationBar];
  [navigationBar frame];
  if (v12 == 0.0 || !_isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets(selfCopy, v10) || !selfCopy->_interactiveScrollActive && ([v10 isScrollAnimating] & 1) == 0 && (objc_msgSend(v10, "refreshControl"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "refreshControlState"), v13, v14 != 4) && !-[UINavigationController _isPushingOrPopping](selfCopy, "_isPushingOrPopping") && -[UIViewController _appearState](selfCopy, "_appearState") != 3 && (!-[UINavigationController _isAppearingOrAppearedCheck](selfCopy, "_isAppearingOrAppearedCheck") || (objc_msgSend(navigationBar, "_hasVariableHeight") & 1) == 0))
  {

LABEL_14:
    [(UINavigationController *)selfCopy _intrinsicNavigationBarHeightRangeForNavItem:itemCopy];
    v16 = v17;
    goto LABEL_15;
  }

  [(UIView *)selfCopy->_navigationBar frame];
  v16 = v15;
LABEL_15:

  return v16;
}

- ($1AB5FA073B851C12C2339EC22442E995)_intrinsicNavigationBarHeightRangeForNavItem:(id)item
{
  if (self->_interactiveScrollActive)
  {
    minimum = self->_interactiveScrollNavBarIntrinsicHeightRange.minimum;
    preferred = self->_interactiveScrollNavBarIntrinsicHeightRange.preferred;
    maximum = self->_interactiveScrollNavBarIntrinsicHeightRange.maximum;
  }

  else
  {
    navigationBar = self->_navigationBar;
    itemCopy = item;
    [(UINavigationController *)self _widthForLayout];
    [(UINavigationBar *)navigationBar _layoutHeightsForNavigationItem:itemCopy fittingWidth:?];
    minimum = v9;
    preferred = v10;
    maximum = v11;
  }

  v12 = minimum;
  v13 = preferred;
  v14 = maximum;
  result.var2 = v14;
  result.var1 = v13;
  result.var0 = v12;
  return result;
}

- (CGSize)_navigationBarSizeForViewController:(id)controller proposedHeight:(double)height allowRubberBandStretch:(BOOL)stretch
{
  controllerCopy = controller;
  _navigationBarForNestedNavigationController = [(UINavigationController *)self _navigationBarForNestedNavigationController];
  [(UINavigationController *)self _widthForLayout];
  v11 = v10;
  navigationItem = [controllerCopy navigationItem];
  [_navigationBarForNestedNavigationController _layoutHeightsForNavigationItem:navigationItem fittingWidth:v11];
  heightCopy = v13;
  v16 = v15;

  if (heightCopy < height)
  {
    heightCopy = height;
  }

  _nestedTopViewController = [(UINavigationController *)self _nestedTopViewController];
  v18 = _nestedTopViewController;
  if (_nestedTopViewController == controllerCopy)
  {
    goto LABEL_6;
  }

  navigationItem2 = [_nestedTopViewController navigationItem];
  _searchControllerIfAllowed = [navigationItem2 _searchControllerIfAllowed];
  _currentActiveChildViewController = [_searchControllerIfAllowed _currentActiveChildViewController];

  if (!_currentActiveChildViewController)
  {
    v22 = v16;
    goto LABEL_15;
  }

  v22 = v16;
  if (_currentActiveChildViewController == controllerCopy)
  {
LABEL_6:
    isHeightOfTopViewsCoordinatedToMatchViewControllerOffsets = _isHeightOfTopViewsCoordinatedToMatchViewControllerOffsets(self, controllerCopy);
    if (isHeightOfTopViewsCoordinatedToMatchViewControllerOffsets)
    {
      v22 = heightCopy;
    }

    else
    {
      v22 = v16;
    }

    if (isHeightOfTopViewsCoordinatedToMatchViewControllerOffsets && !stretch)
    {
      if (v16 >= heightCopy)
      {
        v22 = heightCopy;
      }

      else
      {
        v22 = v16;
      }
    }
  }

LABEL_15:

  v24 = v11;
  v25 = v22;
  result.height = v25;
  result.width = v24;
  return result;
}

- (double)_topBarHeight
{
  v3 = 0.0;
  if ([(UINavigationController *)self _isNavigationBarVisible])
  {
    navigationBar = [(UINavigationController *)self navigationBar];
    [navigationBar bounds];
    v3 = v5;
  }

  [(UINavigationController *)self _statusBarHeightForCurrentInterfaceOrientation];
  v7 = v3 + v6;
  topPalette = self->_topPalette;
  if (topPalette && [(_UINavigationControllerPalette *)topPalette isAttached]&& ([(UINavigationController *)self _isNavigationBarVisible]|| [(_UINavigationControllerPalette *)self->_topPalette isVisibleWhenPinningBarIsHidden]))
  {
    [(UIView *)self->_topPalette bounds];
    return v7 + v9;
  }

  return v7;
}

- (id)_scrollDetentOffsetsForScrollView:(id)view
{
  v37 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  selfCopy = self;
  p_isa = &selfCopy->super.super.super.isa;
  if (selfCopy->__positionBarsExclusivelyWithSafeArea && (-[UIViewController _existingView](selfCopy, "_existingView"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 _usesMinimumSafeAreas], v7, v8))
  {
    _existingView = [p_isa _existingView];
    [_existingView _minimumSafeAreaInsets];
    v11 = v10;
  }

  else
  {
    [p_isa _contentOverlayInsets];
    v11 = v12;
  }

  array = [MEMORY[0x1E695DF70] array];
  [viewCopy _allowedNavigationOverlapAmount];
  v15 = v14;
  v16 = v14 - v11;
  if ([p_isa _isNavigationBarVisible])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    _restingHeights = [p_isa[125] _restingHeights];
    v18 = [_restingHeights countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v18)
    {
      v20 = v18;
      v21 = *v33;
      v22 = 1;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(_restingHeights);
          }

          v24 = *(*(&v32 + 1) + 8 * i);
          if ((v22 & 1) == 0 || (v25 = [viewCopy _canScrollWithoutBouncingIncludingRevealableContentPaddingTopY], v19 = -1073741820.0, v25))
          {
            [v24 floatValue];
            v19 = v26;
          }

          v27 = [MEMORY[0x1E696AD98] numberWithDouble:v16 - v19];
          [array addObject:v27];

          v22 = 0;
        }

        v20 = [_restingHeights countByEnumeratingWithState:&v32 objects:v36 count:16];
        v22 = 0;
      }

      while (v20);
    }

    lastObject = [array lastObject];
    [lastObject floatValue];
    v16 = v16 - v29;
  }

  if (v15 > 0.0)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithDouble:v16 - v15];
    [array addObject:v30];
  }

  return array;
}

- (double)_scrollOffsetRetargettedToDetentOffsetIfNecessary:(double)necessary unclampedOriginalTargetOffset:(double)offset scrollView:(id)view
{
  viewCopy = view;
  v8 = [(UINavigationController *)self _scrollDetentOffsetsForScrollView:viewCopy];
  firstObject = [v8 firstObject];
  [firstObject floatValue];
  if (v10 <= necessary)
  {
    goto LABEL_16;
  }

  lastObject = [v8 lastObject];
  [lastObject floatValue];
  if (v12 >= necessary)
  {

    goto LABEL_16;
  }

  v13 = [v8 count];

  if (v13 < 2)
  {
    goto LABEL_17;
  }

  [viewCopy _allowedNavigationOverlapAmount];
  v15 = v14;
  if ([v8 count] < 2)
  {
LABEL_14:
    firstObject = [v8 lastObject];
    [firstObject floatValue];
    necessary = v27;
LABEL_16:

    goto LABEL_17;
  }

  v16 = -necessary;
  v17 = 1;
  while (1)
  {
    v18 = [v8 objectAtIndexedSubscript:v17 - 1];
    [v18 floatValue];
    v20 = v19;

    v21 = [v8 objectAtIndexedSubscript:v17];
    [v21 floatValue];
    v23 = v22;

    if (v15 != 0.0 && v17 == [v8 count] - 1)
    {
      break;
    }

    v24 = -v20;
    v25 = -v23;
    if (v24 <= v16 && v16 <= v25)
    {
      if ((v24 + v25) * 0.5 <= v16)
      {
        v24 = -v23;
      }

      necessary = -v24;
      break;
    }

    if (++v17 >= [v8 count])
    {
      goto LABEL_14;
    }
  }

LABEL_17:

  return necessary;
}

- (void)_observeScrollView:(id)view willEndDraggingWithVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset unclampedOriginalTarget:(CGPoint)target
{
  y = target.y;
  viewCopy = view;
  if (offset)
  {
    v14 = viewCopy;
    isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets = _isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets(self, viewCopy);
    viewCopy = v14;
    if (isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets)
    {
      topViewController = [(UINavigationController *)self topViewController];
      v12 = _insetsOfTopViewControllerScrollViewAutomaticallyAdjustedForLargeTitleView(topViewController);

      viewCopy = v14;
      if (v12)
      {
        [(UINavigationController *)self _scrollOffsetRetargettedToDetentOffsetIfNecessary:v14 unclampedOriginalTargetOffset:offset->y scrollView:y];
        viewCopy = v14;
        offset->y = v13;
      }
    }
  }
}

- (UIEdgeInsets)_revealableContentPaddingForObservedScrollView:(id)view includeContentWithCollapsedAffinity:(BOOL)affinity
{
  viewCopy = view;
  topViewController = [(UINavigationController *)self topViewController];
  v7 = _insetsOfTopViewControllerScrollViewAutomaticallyAdjustedForLargeTitleView(topViewController);

  v8 = 0.0;
  if (v7 && _isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets(self, viewCopy))
  {
    [(UINavigationController *)self _heightRangeOfTopViews];
    v10 = v9;
    v12 = v9 - v11;
    navigationBar = [(UINavigationController *)self navigationBar];
    [navigationBar bounds];
    v15 = v10 - v14;
    [(UIView *)self->_topPalette bounds];
    v17 = v15 - v16;

    v18 = 0.0;
    if (v17 >= 0.0)
    {
      v18 = v17;
    }

    if (v12 >= v18)
    {
      v8 = v18;
    }

    else
    {
      v8 = v12;
    }
  }

  v19 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  v22 = v8;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v22;
  return result;
}

- (UIEdgeInsets)_collapsableContentPaddingForObservedScrollView:(id)view
{
  viewCopy = view;
  topViewController = [(UINavigationController *)self topViewController];
  v6 = _insetsOfTopViewControllerScrollViewAutomaticallyAdjustedForLargeTitleView(topViewController);

  v7 = 0.0;
  if (v6 && _isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets(self, viewCopy))
  {
    [(UINavigationController *)self _heightRangeOfTopViews];
    v9 = v8;
    navigationBar = [(UINavigationController *)self navigationBar];
    [navigationBar bounds];
    v12 = v11;
    [(UIView *)self->_topPalette bounds];
    v14 = v12 + v13 - v9;

    v7 = fmax(v14, 0.0);
  }

  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v18 = v7;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v18;
  return result;
}

- (double)_navigationBar:(id)bar preferredHeightForTransitionToHeightRange:(id)range
{
  var2 = range.var2;
  var0 = range.var0;
  v7 = [(UINavigationController *)self topViewController:bar];
  v8 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v7, 1, 0);

  if (v8)
  {
    [v8 contentOffset];
    v10 = v9;
    [v8 adjustedContentInset];
    if (v10 + v11 > 0.0)
    {
      var2 = var0;
    }
  }

  return var2;
}

- (void)_navigationBar:(id)bar itemEnabledAutoScrollTransition:(id)transition
{
  barCopy = bar;
  transitionCopy = transition;
  if (_isNestedNavigationControllerFullyInstalledIntoContainingNavigationController(self))
  {
    _outermostNavigationController = [(UINavigationController *)self _outermostNavigationController];
    [_outermostNavigationController _navigationBar:barCopy itemEnabledAutoScrollTransition:transitionCopy];
  }

  else
  {
    topItem = [(UINavigationBar *)self->_navigationBar topItem];

    if (topItem != transitionCopy)
    {
      goto LABEL_12;
    }

    _outermostNavigationController = [(UINavigationController *)self topViewController];
    transitionCopy = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, _outermostNavigationController, 1, 0);
    v9 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, _outermostNavigationController, 4, 0);
    if (transitionCopy == v9)
    {
      v10 = 5;
    }

    else
    {
      v10 = 1;
    }

    [(UINavigationController *)self _updateAndObserveScrollView:transitionCopy viewController:_outermostNavigationController forEdges:v10];
    if (v9 && transitionCopy != v9)
    {
      [(UINavigationController *)self _updateAndObserveScrollView:v9 viewController:_outermostNavigationController forEdges:4];
    }
  }

LABEL_12:
}

- (BOOL)_tryRequestPopToItem:(id)item
{
  v27 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  viewControllers = [(UINavigationController *)self viewControllers];
  v6 = [viewControllers count];
  if (v6 < 2)
  {
    goto LABEL_21;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = viewControllers;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = v8;
  selfCopy = self;
  v21 = viewControllers;
  v10 = *v23;
LABEL_4:
  v11 = 0;
  while (1)
  {
    if (*v23 != v10)
    {
      objc_enumerationMutation(v7);
    }

    v12 = *(*(&v22 + 1) + 8 * v11);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    v13 = v12;
    if ([v13 _tryRequestPopToItem:itemCopy])
    {

LABEL_16:
      viewControllers = v21;
      goto LABEL_20;
    }

    topViewController = [v13 topViewController];
    navigationItem = [topViewController navigationItem];

    if (navigationItem == itemCopy)
    {
      goto LABEL_18;
    }

LABEL_12:
    if (v9 == ++v11)
    {
      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v9)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  navigationItem2 = [v12 navigationItem];

  if (navigationItem2 != itemCopy)
  {
    goto LABEL_12;
  }

  v17 = v12;
LABEL_18:

  viewControllers = v21;
  if (v12)
  {
    v18 = [(UINavigationController *)selfCopy popToViewController:v12 animated:1];
    v7 = v12;
LABEL_20:
  }

LABEL_21:

  return v6 > 1;
}

- (BOOL)_navigationBarTopItemIsNestedNavigationController:(id)controller
{
  topViewController = [(UINavigationController *)self topViewController];
  _isNestedNavigationController = [topViewController _isNestedNavigationController];

  return _isNestedNavigationController;
}

- (void)_observeScrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    [(UINavigationController *)self _immediatelyFinishNavigationBarTransition];
  }

  if ((_UISolariumEnabled() & 1) != 0 || (*(&self->_navigationControllerFlags + 7) & 4) != 0)
  {
    topViewController = [(UINavigationController *)self topViewController];
    v5 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, topViewController, 1, 0);

    if (v5 == draggingCopy)
    {
      [(UINavigationController *)self _setInteractiveScrollActive:1];
    }
  }
}

- (void)_observeScrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  topViewController = [(UINavigationController *)self topViewController];
  v8 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, topViewController, 1, 0);

  if (v8 == draggingCopy && !decelerate)
  {

    [(UINavigationController *)self _setInteractiveScrollActive:0];
  }
}

- (void)_observeScrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  topViewController = [(UINavigationController *)self topViewController];
  v6 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, topViewController, 1, 0);

  if (v6 == deceleratingCopy)
  {

    [(UINavigationController *)self _setInteractiveScrollActive:0];
  }
}

- (void)_observeScrollViewGeometryAffectingContentBottomDidChange:(id)change
{
  changeCopy = change;
  if (_UIBarsApplyChromelessEverywhere())
  {
    _nestedTopViewController = [(UINavigationController *)self _nestedTopViewController];
    v5 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, _nestedTopViewController, 4, 0);

    if (v5 == changeCopy)
    {
      _existingActiveVisibleToolbar = [(UINavigationController *)self _existingActiveVisibleToolbar];
      [(UINavigationController *)self _updateBackgroundTransitionProgressForScrollView:changeCopy toolbar:_existingActiveVisibleToolbar];
    }
  }
}

- (void)_observeScrollViewDidScroll:(id)scroll topLayoutType:(int64_t)type
{
  scrollCopy = scroll;
  topViewController = [(UINavigationController *)self topViewController];
  v6 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, topViewController, 1, 0);

  topViewController2 = [(UINavigationController *)self topViewController];
  v8 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, topViewController2, 4, 0);

  v9 = _UIBarsApplyChromelessEverywhere();
  v10 = scrollCopy;
  if (v9)
  {
    _stack = [(UINavigationBar *)self->_navigationBar _stack];
    topEntry = [_stack topEntry];

    v13 = scrollCopy;
    if (topEntry)
    {
      v14 = v6 == scrollCopy;
    }

    else
    {
      v14 = 0;
    }

    if (v14 && (*(&self->_navigationControllerFlags + 7) & 0x20) != 0)
    {
      if (![topEntry isActiveLayoutVariableHeight] || (objc_msgSend(topEntry, "layoutHeightsForActiveLayout"), v16 = v15, -[UIView bounds](self->_navigationBar, "bounds"), Height = CGRectGetHeight(v28), v13 = scrollCopy, vabdd_f64(v16, Height) < 0.00000011920929))
      {
        _nestedTopViewController = [(UINavigationController *)self _nestedTopViewController];
        navigationItem = [_nestedTopViewController navigationItem];
        [(UINavigationController *)self _updateManualScrollEdgeAppearanceProgressForScrollView:scrollCopy navigationItem:navigationItem];

        v13 = scrollCopy;
      }
    }

    if (v8 == v13)
    {
      _existingActiveVisibleToolbar = [(UINavigationController *)self _existingActiveVisibleToolbar];
      [(UINavigationController *)self _updateBackgroundTransitionProgressForScrollView:scrollCopy toolbar:_existingActiveVisibleToolbar];
    }

    v10 = scrollCopy;
  }

  v21 = v10;
  if (v6 == v10)
  {
    if (_UISolariumEnabled())
    {
      [(UINavigationBar *)self->_navigationBar _observedScrollViewDidScroll];
    }

    navigationControllerFlags = self->_navigationControllerFlags;
    v21 = scrollCopy;
    if ((navigationControllerFlags & 0x400000000000000) != 0)
    {
      [(UINavigationController *)self _updateLayoutForScrollView:scrollCopy topLayoutType:1];
      v21 = scrollCopy;
      if ((*(&self->_navigationControllerFlags + 7) & 0x20) == 0)
      {
        goto LABEL_24;
      }

      _nestedTopViewController2 = [(UINavigationController *)self _nestedTopViewController];
      goto LABEL_23;
    }

    if ((navigationControllerFlags & 0x2000000000000000) == 0 && (navigationControllerFlags & 0x1800000000000000) != 0)
    {
      _nestedTopViewController2 = [(UINavigationController *)self topViewController];
LABEL_23:
      v24 = _nestedTopViewController2;
      navigationItem2 = [_nestedTopViewController2 navigationItem];
      [(UINavigationController *)self _updateManualScrollEdgeAppearanceProgressForScrollView:scrollCopy navigationItem:navigationItem2];

      v21 = scrollCopy;
    }
  }

LABEL_24:
}

- (void)_updateLayoutForScrollView:(id)view topLayoutType:(int64_t)type
{
  viewCopy = view;
  if (viewCopy)
  {
    if ((*&self->_navigationControllerFlags & 0x2000000000) == 0)
    {
      v17 = viewCopy;
      isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets = _isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets(self, viewCopy);
      viewCopy = v17;
      if (isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets)
      {
        topViewController = [(UINavigationController *)self topViewController];
        v9 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, topViewController, 1, 1);
        if (v9 == v17)
        {

          v11 = v17;
        }

        else
        {
          v10 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, topViewController, 1, 0);

          v11 = v17;
          if (v10 != v17)
          {
            disappearingViewController = self->_disappearingViewController;
            topViewController2 = [(UINavigationController *)self topViewController];
            navigationItem = [topViewController2 navigationItem];
            _searchControllerIfAllowed = [navigationItem _searchControllerIfAllowed];

            if (!disappearingViewController)
            {
              if (!_searchControllerIfAllowed || ![_searchControllerIfAllowed isActive] || (objc_msgSend(_searchControllerIfAllowed, "_contentOrObservableScrollViewForEdge:", 1), v16 = objc_claimAutoreleasedReturnValue(), v16, v16 != v17))
              {
                [(UINavigationController *)self _stopObservingContentScrollView:v17];
              }
            }

            goto LABEL_14;
          }
        }

        [(UINavigationController *)self _updateNavigationBarHostedRefreshControlToHostRefreshControlForScrollView:v11];
        [(UINavigationController *)self _updateTopViewFramesToMatchScrollOffsetInViewController:topViewController contentScrollView:v17 topLayoutType:type];
LABEL_14:

        viewCopy = v17;
      }
    }
  }
}

- (void)_updateManualScrollEdgeAppearanceProgressForScrollView:(id)view navigationItem:(id)item
{
  itemCopy = item;
  viewCopy = view;
  [viewCopy contentOffset];
  v9 = v8;
  [viewCopy adjustedContentInset];
  v11 = v10;

  v12 = v9 + v11;
  v13 = 0.0;
  v14 = 0.0;
  if ((*(&self->_navigationControllerFlags + 7) & 0x10) != 0)
  {
    [itemCopy _autoScrollEdgeTransitionDistance];
  }

  if (v14 == 0.0)
  {
    v14 = 4.0;
  }

  if (v12 >= 0.0)
  {
    v13 = 1.0;
    if (v12 < v14)
    {
      v13 = v12 / v14;
    }
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __96__UINavigationController__updateManualScrollEdgeAppearanceProgressForScrollView_navigationItem___block_invoke;
  v16[3] = &unk_1E70F32F0;
  v17 = itemCopy;
  v18 = v13;
  v15 = itemCopy;
  [UIView performWithoutAnimation:v16];
}

- (void)_setSuspendToolbarBackgroundUpdating:(BOOL)updating
{
  v3 = 0x4000000000000000;
  if (!updating)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xBFFFFFFFFFFFFFFFLL | v3;
}

- (void)_updateBackgroundTransitionProgressForScrollView:(id)view toolbar:(id)toolbar isNavigationTransitionUpdate:(BOOL)update
{
  updateCopy = update;
  viewCopy = view;
  toolbarCopy = toolbar;
  p_navigationControllerFlags = &self->_navigationControllerFlags;
  if ((*(&self->_navigationControllerFlags + 8) & 1) != 0 || ([UIApp _isActivating] & 1) == 0 && (-[UINavigationController _window](self, "_window"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "windowScene"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "activationState"), v12, v11, v13 != -1))
  {
    v14 = *p_navigationControllerFlags;
    if ((*p_navigationControllerFlags & 0x4000000000000000) == 0 || updateCopy)
    {
      *(p_navigationControllerFlags + 8) |= 1u;
      if ((v14 & 0x4000000000000000) != 0 && updateCopy)
      {
        *p_navigationControllerFlags = v14 & 0xBFFFFFFFFFFFFFFFLL;
      }

      v25 = 0.0;
      if (_UIBarsGetBottomBarBackgroundTransitionProgressForScrollView(viewCopy, toolbarCopy, &v25))
      {
        if (!updateCopy)
        {
          goto LABEL_22;
        }

        [toolbarCopy _backgroundTransitionProgress];
        if (v15 == v25 || !+[UIView _isInAnimationBlockWithAnimationsEnabled])
        {
          goto LABEL_22;
        }

        if ([toolbarCopy isMinibar])
        {
          compactScrollEdgeAppearance = [toolbarCopy compactScrollEdgeAppearance];
          v17 = compactScrollEdgeAppearance;
          if (compactScrollEdgeAppearance)
          {
            scrollEdgeAppearance = compactScrollEdgeAppearance;
          }

          else
          {
            scrollEdgeAppearance = [toolbarCopy scrollEdgeAppearance];
          }

          scrollEdgeAppearance2 = scrollEdgeAppearance;
        }

        else
        {
          scrollEdgeAppearance2 = [toolbarCopy scrollEdgeAppearance];
        }

        if (!scrollEdgeAppearance2 || (v20 = [scrollEdgeAppearance2 _hasTransparentBackground], scrollEdgeAppearance2, v20))
        {
          v21 = v25;
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __112__UINavigationController__updateBackgroundTransitionProgressForScrollView_toolbar_isNavigationTransitionUpdate___block_invoke;
          v22[3] = &unk_1E70F32F0;
          v23 = toolbarCopy;
          v24 = v21;
          _UIBarsTwoPartCrossfadeTransitionProgress(v22, 0, v21);
        }

        else
        {
LABEL_22:
          [toolbarCopy _setBackgroundTransitionProgress:v25];
        }
      }
    }
  }
}

- (void)_stopObservingContentScrollView:(id)view
{
  viewCopy = view;
  if ([viewCopy _isScrollViewScrollObserver:self])
  {
    [(UINavigationController *)self _setInteractiveScrollActive:0];
    [viewCopy _setTopScrollIndicatorFollowsContentOffset:0];
    [viewCopy _setVerticalScrollIndicatorUsesAlternativeTopSafeAreaInset:0];
    [viewCopy _setAlternativeVerticalScrollIndicatorTopSafeAreaInset:0.0];
    [viewCopy _removeScrollViewScrollObserver:self];
  }
}

- (void)_stopObservingContentScrollViewsForViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [controllerCopy _contentOrObservableScrollViewForEdge:1];
  [(UINavigationController *)self _stopObservingContentScrollView:v5];

  v6 = [controllerCopy _contentOrObservableScrollViewForEdge:4];

  [(UINavigationController *)self _stopObservingContentScrollView:v6];
}

- (void)_observeScrollView:(id)view didBeginTransitionToDeferredContentOffset:(CGPoint)offset
{
  if ([(UINavigationController *)self _isPushingOrPoppingUsingLayoutToLayoutNavigationTransition:view])
  {

    [(UINavigationController *)self _performCoordinatedUpdateTopFramesTransitionAnimation];
  }
}

- (void)_observeScrollViewAlignedContentMarginDidChange:(id)change
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v5 = __74__UINavigationController__observeScrollViewAlignedContentMarginDidChange___block_invoke;
  v6 = &unk_1E7102B18;
  selfCopy = self;
  if (__74__UINavigationController__observeScrollViewAlignedContentMarginDidChange___block_invoke(v4, self->_navigationBar))
  {
    [(UINavigationBar *)self->_navigationBar layoutMarginsDidChange];
  }

  if ((v5)(v4, self->_toolbar))
  {
    [(UIView *)self->_toolbar setNeedsLayout];
  }
}

BOOL __74__UINavigationController__observeScrollViewAlignedContentMarginDidChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 1240) objectForKey:v3];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    v7 = v6;
    [*(a1 + 32) _contentMarginForView:v3];
    v9 = v7 != v8;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_observeScrollViewHasClearedContentOffsetAnimation:(id)animation
{
  WeakRetained = objc_loadWeakRetained(&self->_searchControllerToNotifyWhenScrollingAnimationStops);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_searchControllerToNotifyWhenScrollingAnimationStops);
    [v5 _contentScrollViewDidFinishContentOffsetAnimation];

    objc_storeWeak(&self->_searchControllerToNotifyWhenScrollingAnimationStops, 0);
  }
}

- (BOOL)_navigationItemShouldDeferSearchPresentationOrDismissalForScrollViewAnimation:(id)animation
{
  animationCopy = animation;
  _searchControllerIfAllowed = [animationCopy _searchControllerIfAllowed];
  if (_searchControllerIfAllowed)
  {
    _nestedTopViewController = [(UINavigationController *)self _nestedTopViewController];
    navigationItem = [_nestedTopViewController navigationItem];

    if (navigationItem == animationCopy)
    {
      v9 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, _nestedTopViewController, 1, 0);
      v10 = v9;
      if (v9 && [v9 isScrollAnimating])
      {
        objc_storeWeak(&self->_searchControllerToNotifyWhenScrollingAnimationStops, _searchControllerIfAllowed);
        v8 = 1;
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
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_viewSubtreeDidGainScrollView:(id)view enclosingViewController:(id)controller
{
  viewCopy = view;
  controllerCopy = controller;
  _outermostNavigationController = [(UINavigationController *)self _outermostNavigationController];
  v8 = _outermostNavigationController;
  if (_outermostNavigationController == self)
  {
    [(UINavigationController *)self _handleSubtreeDidGainScrollView:viewCopy];
    v9 = [(UIViewController *)self _tabBarControllerEnforcingClass:1];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      presentingViewController = [(UIViewController *)self presentingViewController];
      v11 = [presentingViewController _tabBarControllerEnforcingClass:1];
    }

    [v11 _viewSubtreeDidGainScrollView:viewCopy enclosingViewController:controllerCopy];
  }

  else
  {
    [(UINavigationController *)_outermostNavigationController _viewSubtreeDidGainScrollView:viewCopy enclosingViewController:controllerCopy];
  }
}

- (void)_viewControllerSubtreeDidGainViewController:(id)controller
{
  controllerCopy = controller;
  v4 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, controllerCopy, 1, 0);
  if (v4)
  {
    [(UINavigationController *)self _handleSubtreeDidGainScrollView:v4];
  }

  v5 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, controllerCopy, 4, 0);
  v6 = v5;
  if (v5 && v5 != v4)
  {
    [(UINavigationController *)self _handleSubtreeDidGainScrollView:v5];
  }
}

- (void)_handleSubtreeDidGainScrollView:(id)view
{
  viewCopy = view;
  topViewController = [(UINavigationController *)self topViewController];
  v5 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, topViewController, 1, 0);
  v6 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, topViewController, 4, 0);
  window = [viewCopy window];
  if (window)
  {

    if (v5 == viewCopy || v6 == viewCopy)
    {
      if (([v5 _isScrollViewScrollObserver:self] & 1) == 0)
      {
        if (v5 == viewCopy)
        {
          v10 = 1;
        }

        else
        {
          v10 = 4;
        }

        navigationItem2 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, topViewController, v10, 1);
        _safeAreaInsetsFrozen = [navigationItem2 _safeAreaInsetsFrozen];
        if (navigationItem2 != v5)
        {
          [navigationItem2 _setSafeAreaInsetsFrozen:1];
        }

        [(UINavigationController *)self _computeAndApplyScrollContentInsetDeltaForViewController:topViewController];
        [navigationItem2 _setSafeAreaInsetsFrozen:_safeAreaInsetsFrozen updateForUnfreeze:0];
        goto LABEL_18;
      }

      if (!v6 || v6 == v5 || ([v6 _isScrollViewScrollObserver:self] & 1) != 0)
      {
        if ((*(&self->_navigationControllerFlags + 7) & 0x3C) == 0)
        {
          navigationItem = [topViewController navigationItem];
          [UINavigationController _updateScrollViewObservationFlagsForScrollView:"_updateScrollViewObservationFlagsForScrollView:navigationItem:forEdges:" navigationItem:? forEdges:?];

          if (v6)
          {
            if (v6 != viewCopy)
            {
              navigationItem2 = [topViewController navigationItem];
              [(UINavigationController *)self _updateScrollViewObservationFlagsForScrollView:v6 navigationItem:navigationItem2 forEdges:4];
LABEL_18:
            }
          }
        }
      }

      else
      {
        [(UINavigationController *)self _updateAndObserveScrollView:v6 viewController:topViewController forEdges:4];
      }
    }
  }
}

- (void)_setInteractiveScrollActive:(BOOL)active
{
  if (self->_interactiveScrollActive != active)
  {
    self->_interactiveScrollActive = active;
    if (active)
    {
      [(UINavigationController *)self _reloadCachedInteractiveScrollMeasurements];
    }
  }
}

- (void)_immediatelyFinishNavigationBarTransition
{
  _outermostNavigationController = [(UINavigationController *)self _outermostNavigationController];
  v4 = _outermostNavigationController;
  if (_outermostNavigationController == self)
  {
    navigationBar = [(UINavigationController *)self navigationBar];
    _immediatelyFinishRunningTransition = [navigationBar _immediatelyFinishRunningTransition];

    transitionCoordinator = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionCoordinator];

    if (transitionCoordinator)
    {
      transitionCoordinator2 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionCoordinator];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __67__UINavigationController__immediatelyFinishNavigationBarTransition__block_invoke;
      v9[3] = &unk_1E70F3770;
      v10 = _immediatelyFinishRunningTransition;
      [transitionCoordinator2 animateAlongsideTransition:0 completion:v9];
    }

    else
    {
      _immediatelyFinishRunningTransition[2](_immediatelyFinishRunningTransition);
    }
  }

  else
  {
    [(UINavigationController *)_outermostNavigationController _immediatelyFinishNavigationBarTransition];
  }
}

- (void)_reloadCachedInteractiveScrollMeasurements
{
  if (self->_interactiveScrollActive)
  {
    self->_interactiveScrollActive = 0;
    p_interactiveScrollNavBarIntrinsicHeightRange = &self->_interactiveScrollNavBarIntrinsicHeightRange;
    _nestedTopViewController = [(UINavigationController *)self _nestedTopViewController];
    navigationItem = [_nestedTopViewController navigationItem];
    [(UINavigationController *)self _intrinsicNavigationBarHeightRangeForNavItem:navigationItem];
    p_interactiveScrollNavBarIntrinsicHeightRange->minimum = v6;
    p_interactiveScrollNavBarIntrinsicHeightRange->preferred = v7;
    p_interactiveScrollNavBarIntrinsicHeightRange->maximum = v8;

    self->_interactiveScrollActive = 1;
  }
}

- (void)_scrollViewManagerDidFinishScrolling:(id)scrolling
{
  scrollViewManager = self->_scrollViewManager;
  self->_scrollViewManager = 0;

  [(UIViewController *)self setNeedsFocusUpdate];

  [(UIViewController *)self updateFocusIfNeeded];
}

- (void)_updateNavigationBarHostedRefreshControlToHostRefreshControlForScrollView:(id)view
{
  viewCopy = view;
  if (![(UINavigationController *)self _shouldSkipHostedRefreshControlUpdateSchedulingDeferredUpdateIfNecessary])
  {
    navigationBar = [(UINavigationController *)self navigationBar];
    refreshControlHost = [navigationBar refreshControlHost];

    v6 = refreshControlHost;
    v7 = v6;
    if (![(_UINavigationControllerRefreshControlHost *)v6 isHostingRefreshControlOwnedByScrollView:viewCopy])
    {
      if ([(UINavigationController *)self _canHostRefreshControlOwnedByScrollView:viewCopy])
      {
        v7 = [[_UINavigationControllerRefreshControlHost alloc] initWithNavigationController:self scrollView:viewCopy];
      }

      else
      {
        v7 = 0;
      }
    }

    navigationBar2 = [(UINavigationController *)self navigationBar];
    [navigationBar2 setRefreshControlHost:v7];
  }
}

- (BOOL)_canHostRefreshControlOwnedByScrollView:(id)view
{
  v7 = (!_isNestedNavigationControllerFullyInstalledIntoContainingNavigationController(self) || (-[UINavigationController _outermostNavigationController](self, "_outermostNavigationController"), v5 = v4 = view;

  return v7;
}

- (void)_setUpHostedRefreshControlForScrollView:(id)view
{
  viewCopy = view;
  topViewController = [(UINavigationController *)self topViewController];
  v5 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, topViewController, 1, 0);

  v6 = viewCopy;
  if (v5 == viewCopy)
  {
    [(UINavigationController *)self _updateNavigationBarHostedRefreshControlToHostRefreshControlForScrollView:viewCopy];
    v6 = viewCopy;
  }
}

- (void)_layoutViewController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy loadViewIfRequired];
  _directlySetsContentOverlayInsetsForChildren = [objc_opt_class() _directlySetsContentOverlayInsetsForChildren];
  v5 = controllerCopy;
  if ((_directlySetsContentOverlayInsetsForChildren & 1) == 0)
  {
    [(UIViewController *)self _updateContentOverlayInsetsFromParentIfNecessary];
    [controllerCopy _updateContentOverlayInsetsForSelfAndChildren];
    topViewController = [(UINavigationController *)self topViewController];

    v5 = controllerCopy;
    if (topViewController == controllerCopy)
    {
      topViewController2 = [(UINavigationController *)self topViewController];
      navigationItem = [topViewController2 navigationItem];

      v9 = [(UINavigationController *)self _effectiveSearchControllerForSearchBarGivenTopNavigationItem:navigationItem];
      v10 = v9;
      if (v9 && [v9 isActive])
      {
        [v10 _updateContentOverlayInsetsForSelfAndChildren];
      }

      v5 = controllerCopy;
    }
  }

  v11 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v5, 1, 0);
  [(UINavigationController *)self _updateNavigationBarHostedRefreshControlToHostRefreshControlForScrollView:v11];

  [(UINavigationController *)self _computeAndApplyScrollContentInsetDeltaForViewController:controllerCopy];
  view = [controllerCopy view];
  superview = [view superview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    view2 = [controllerCopy view];
    navigationTransitionView = [(UINavigationController *)self navigationTransitionView];
    v16 = [view2 isDescendantOfView:navigationTransitionView];

    v17 = controllerCopy;
    if (!v16)
    {
      goto LABEL_23;
    }

    [(UINavigationController *)self _frameForViewController:controllerCopy];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    [(UINavigationController *)self _frameForWrapperViewForViewController:controllerCopy];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    view3 = [controllerCopy view];
    superview2 = [view3 superview];
    [superview2 frame];
    v57.origin.x = v36;
    v57.origin.y = v37;
    v57.size.width = v38;
    v57.size.height = v39;
    v55.origin.x = v27;
    v55.origin.y = v29;
    v55.size.width = v31;
    v55.size.height = v33;
    v40 = CGRectEqualToRect(v55, v57);

    if (!v40)
    {
      view4 = [controllerCopy view];
      superview3 = [view4 superview];
      [superview3 setFrame:{v27, v29, v31, v33}];
    }

    view5 = [controllerCopy view];
    [view5 frame];
    v58.origin.x = v44;
    v58.origin.y = v45;
    v58.size.width = v46;
    v58.size.height = v47;
    v56.origin.x = v19;
    v56.origin.y = v21;
    v56.size.width = v23;
    v56.size.height = v25;
    v48 = CGRectEqualToRect(v56, v58);

    if (v48)
    {
      v49 = !v40;
    }

    else
    {
      view6 = [controllerCopy view];
      [view6 setFrame:{v19, v21, v23, v25}];

      v49 = 1;
    }

    if (![(UINavigationController *)self isToolbarHidden])
    {
      [(UINavigationController *)self _positionToolbarHidden:0];
    }

    v17 = controllerCopy;
    if ((v49 & 1) == 0)
    {
      _topBarInsetGuideConstraint = [controllerCopy _topBarInsetGuideConstraint];
      if (_topBarInsetGuideConstraint)
      {

        v17 = controllerCopy;
      }

      else
      {
        _bottomBarInsetGuideConstraint = [controllerCopy _bottomBarInsetGuideConstraint];

        v17 = controllerCopy;
        if (!_bottomBarInsetGuideConstraint)
        {
          goto LABEL_23;
        }
      }
    }

    view = [v17 view];
    [view layoutIfNeeded];
  }

  else
  {
  }

  v17 = controllerCopy;
LABEL_23:
}

- (void)_updateScrollViewFromViewController:(id)controller toViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  [(UINavigationController *)self _ensureToViewControllersViewIsLoaded:viewControllerCopy];
  v7 = [controllerCopy _contentOrObservableScrollViewForEdge:1];
  v8 = v7;
  if (v7)
  {
    containerView = self->_containerView;
    [v7 center];
    v11 = v10;
    v13 = v12;
    superview = [v8 superview];
    [(UIView *)containerView convertPoint:superview fromView:v11, v13];
    v16 = v15;
  }

  else
  {
    v16 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v17 = [viewControllerCopy _contentOrObservableScrollViewForEdge:1];
  if (v17 == v8 || dyld_program_sdk_at_least() && ([viewControllerCopy view], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "window"), v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v19))
  {
    *&self->_navigationControllerFlags |= 0x2000000000uLL;
  }

  [(UINavigationController *)self _layoutViewController:viewControllerCopy];
  *&self->_navigationControllerFlags &= ~0x2000000000uLL;
  if (v8)
  {
    v20 = self->_containerView;
    [v8 center];
    v22 = v21;
    v24 = v23;
    superview2 = [v8 superview];
    [(UIView *)v20 convertPoint:superview2 fromView:v22, v24];
    v27 = v26;

    [controllerCopy _setNavigationControllerContentOffsetAdjustment:v27 - v16 + v27 - v16];
  }

  v28 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, viewControllerCopy, 1, 0);
  [(UINavigationController *)self _updateNavigationBarHostedRefreshControlToHostRefreshControlForScrollView:v28];
}

- (void)_notifyTransitionBegan:(id)began
{
  toViewController = [began toViewController];
  [toViewController _prepareForContainerTransition:self];
}

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"__cachedTransitionController"])
  {
    UIKVCAccessProhibited(keyCopy, @"UINavigationController");

    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UINavigationController;
    v5 = [(UINavigationController *)&v7 valueForUndefinedKey:keyCopy];
  }

  return v5;
}

- (void)_setCachedTransitionController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_UINavigationControllerVisualStyle *)self->_visualStyle setTransitionController:controllerCopy];
  }
}

- (void)_setCachedInteractionController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_UINavigationControllerVisualStyle *)self->_visualStyle setInteractionController:controllerCopy];
  }
}

- (id)_createBuiltInTransitionControllerForOperation:(int64_t)operation
{
  [(_UINavigationControllerVisualStyle *)self->_visualStyle updateTransitionControllerWithOperation:operation];
  visualStyle = self->_visualStyle;

  return [(_UINavigationControllerVisualStyle *)visualStyle transitionController];
}

- (id)_customTransitionController:(BOOL)controller
{
  controllerCopy = controller;
  transitionController = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionController];

  if (transitionController)
  {
    transitionController2 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionController];
    goto LABEL_56;
  }

  disappearingViewController = [(UINavigationController *)self disappearingViewController];
  topViewController = [(UINavigationController *)self topViewController];
  view = [disappearingViewController view];
  superview = [view superview];

  lastOperation = [(UINavigationController *)self lastOperation];
  [(UINavigationController *)self _setUsingBuiltinAnimator:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (lastOperation == 1)
  {
    v11 = topViewController;
  }

  else
  {
    v11 = disappearingViewController;
  }

  v12 = v11;
  if ([(UINavigationController *)self _wantsTabCrossFadeTransition]&& ([(UIViewController *)self traitCollection], v13 = objc_claimAutoreleasedReturnValue(), v14 = [_UITabCrossFadeTransition isSupportedForTraits:v13], v13, v14))
  {
    v15 = [_UITabCrossFadeTransition alloc];
    view2 = [(UIViewController *)self view];
    backgroundColor = [view2 backgroundColor];
    transitionController2 = [(_UITabCrossFadeTransition *)v15 initWithBackgroundColor:backgroundColor];
  }

  else
  {
    transitionController2 = 0;
  }

  preferredTransition = [v12 preferredTransition];
  v19 = preferredTransition;
  if (transitionController2 || !preferredTransition)
  {
    if (transitionController2)
    {
      goto LABEL_21;
    }

    if ([(UINavigationController *)self _shouldIgnoreDelegateTransitionController])
    {
LABEL_15:
      transitionController2 = 0;
      goto LABEL_21;
    }

    navigationControllerFlags = self->_navigationControllerFlags;
    if ((navigationControllerFlags & 0x400000) != 0)
    {
      v22 = [WeakRetained navigationController:self animationControllerForOperation:lastOperation fromViewController:disappearingViewController toViewController:topViewController];
    }

    else
    {
      if ((navigationControllerFlags & 0x800000) == 0)
      {
        goto LABEL_15;
      }

      v22 = [WeakRetained navigationController:self animatorForOperation:lastOperation fromViewController:disappearingViewController toViewController:topViewController];
    }

    transitionController2 = v22;
    goto LABEL_21;
  }

  traitCollection = [(UIViewController *)self traitCollection];
  transitionController2 = [v19 _transitionControllerForViewController:v12 traits:traitCollection isAppearing:lastOperation == 1];

LABEL_21:
  if (![(UINavigationController *)self isInteractiveTransition])
  {
    v23 = _AXSReduceMotionReduceSlideTransitionsEnabled();
    if (!transitionController2)
    {
      if (v23)
      {
        transitionController2 = objc_alloc_init(_UINavigationCrossfadeAnimator);
      }
    }
  }

  if (transitionController2)
  {
    goto LABEL_47;
  }

  if ((*(&self->_navigationControllerFlags + 3) & 0x80) != 0)
  {
    v24 = [WeakRetained _navigationControllerLayoutTransitioningClass:self];
  }

  else
  {
    v24 = 0;
  }

  if (lastOperation == 1)
  {
    if ([topViewController _usesSharedView])
    {
      _uiCollectionView = [topViewController _uiCollectionView];
      if (_uiCollectionView)
      {
        v26 = _uiCollectionView;
        _uiCollectionView2 = [topViewController _uiCollectionView];
        [disappearingViewController _uiCollectionView];
        v28 = v59 = v24;

        if (_uiCollectionView2 == v28)
        {
          if (!v59 || ([v59 transitionForOperation:1 fromViewController:disappearingViewController toViewController:topViewController], (v29 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v30 = topViewController;
            v31 = 1;
            goto LABEL_44;
          }

          goto LABEL_42;
        }
      }
    }
  }

  else if (lastOperation == 2)
  {
    if ([disappearingViewController _usesSharedView])
    {
      _uiCollectionView3 = [topViewController _uiCollectionView];
      if (_uiCollectionView3)
      {
        v33 = _uiCollectionView3;
        _uiCollectionView4 = [topViewController _uiCollectionView];
        [disappearingViewController _uiCollectionView];
        v35 = v60 = v24;

        if (_uiCollectionView4 == v35)
        {
          if (!v60 || ([v60 transitionForOperation:2 fromViewController:disappearingViewController toViewController:topViewController], (v29 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v30 = disappearingViewController;
            v31 = 2;
LABEL_44:
            transitionController2 = [v30 _animatorForOperation:v31 fromViewController:disappearingViewController toViewController:topViewController];
            if (transitionController2)
            {
              goto LABEL_47;
            }

            goto LABEL_45;
          }

LABEL_42:
          transitionController2 = v29;
          goto LABEL_47;
        }
      }
    }
  }

LABEL_45:
  transitionController2 = [(UINavigationController *)self _createBuiltInTransitionControllerForOperation:*&self->_navigationControllerFlags >> 4];
  [(UINavigationController *)self _setCachedTransitionController:transitionController2];
  if (!transitionController2)
  {
    [(UINavigationController *)self _setUsingBuiltinAnimator:1];
    goto LABEL_48;
  }

  *&self->_navigationControllerFlags |= 0x40000uLL;
  [(UINavigationController *)self _setUsingBuiltinAnimator:1];
LABEL_47:
  v36 = [_UIViewControllerTransitionContext _associatedTransitionContextForAnimationController:transitionController2];

  if (!v36)
  {
    v38 = objc_alloc_init(_UIViewControllerOneToOneTransitionContext);
    view3 = [disappearingViewController view];
    [view3 frame];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;

    [(_UIViewControllerTransitionContext *)v38 _setIsAnimated:controllerCopy];
    [(_UIViewControllerOneToOneTransitionContext *)v38 _setFromViewController:disappearingViewController];
    [(_UIViewControllerOneToOneTransitionContext *)v38 _setToViewController:topViewController];
    v37 = superview;
    [(_UIViewControllerTransitionContext *)v38 _setContainerView:superview];
    [(_UIViewControllerOneToOneTransitionContext *)v38 _setFromStartFrame:v41, v43, v45, v47];
    [(_UIViewControllerOneToOneTransitionContext *)v38 _setToEndFrame:v41, v43, v45, v47];
    v48 = *MEMORY[0x1E695F058];
    v49 = *(MEMORY[0x1E695F058] + 8);
    v50 = *(MEMORY[0x1E695F058] + 16);
    v51 = *(MEMORY[0x1E695F058] + 24);
    [(_UIViewControllerOneToOneTransitionContext *)v38 _setToStartFrame:*MEMORY[0x1E695F058], v49, v50, v51];
    [(_UIViewControllerOneToOneTransitionContext *)v38 _setFromEndFrame:v48, v49, v50, v51];
    [(_UIViewControllerTransitionContext *)v38 _setAnimator:transitionController2];
    if ([(UINavigationController *)self _isUsingBuiltinAnimator])
    {
      [(_UIViewControllerTransitionContext *)v38 _setCompletionCurve:7];
    }

    childModalViewController = [topViewController childModalViewController];
    if (childModalViewController)
    {
      v53 = childModalViewController;
      view4 = [topViewController view];
      superview2 = [view4 superview];

      if (superview2)
      {
        view5 = [topViewController view];
        superview3 = [view5 superview];
        [(_UIViewControllerOneToOneTransitionContext *)v38 _setToView:superview3];
      }
    }

    goto LABEL_55;
  }

LABEL_48:
  v37 = superview;
LABEL_55:

LABEL_56:

  return transitionController2;
}

- (id)_showcaseView
{
  topViewController = [(UINavigationController *)self topViewController];
  _showcaseView = [topViewController _showcaseView];

  return _showcaseView;
}

- (void)_layoutContainerViewDidMoveToWindow:(id)window
{
  v4.receiver = self;
  v4.super_class = UINavigationController;
  [(UIViewController *)&v4 _layoutContainerViewDidMoveToWindow:window];
  [(UINavigationController *)self _setupBackGestureRecognizer];
}

- (void)_layoutContainerViewSemanticContentAttributeChanged:(id)changed
{
  if (self->_containerView == changed)
  {
    [(_UINavigationControllerVisualStyle *)self->_visualStyle layoutContainerViewSemanticContentAttributeChanged:?];
  }
}

- (id)_customInteractionController:(id)controller
{
  controllerCopy = controller;
  interactiveTransitionController = [(_UIViewControllerTransitionConductor *)self->_transitionConductor interactiveTransitionController];

  if (interactiveTransitionController)
  {
    interactiveTransitionController2 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor interactiveTransitionController];
    goto LABEL_29;
  }

  _animator = [controllerCopy _animator];
  transitionController = [(_UINavigationControllerVisualStyle *)self->_visualStyle transitionController];

  if (transitionController == _animator)
  {
    goto LABEL_14;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = WeakRetained;
    navigationControllerFlags = self->_navigationControllerFlags;
    if ((navigationControllerFlags & 0x1000000) != 0)
    {
      _interactionController = [WeakRetained navigationController:self interactionControllerForAnimationController:_animator];
      if (_interactionController)
      {
        goto LABEL_13;
      }

      navigationControllerFlags = self->_navigationControllerFlags;
    }

    if ((navigationControllerFlags & 0x2000000) != 0)
    {
      _interactionController = [v11 navigationController:self interactionControllerUsingAnimator:_animator];
    }

    else
    {
      _interactionController = 0;
    }

LABEL_13:

    if (_interactionController)
    {
      goto LABEL_6;
    }

LABEL_14:
    traitCollection = [(UIViewController *)self traitCollection];
    if ([UIView _interruptibleParallaxTransitionsEnabledWithTraitCollection:traitCollection])
    {
      _isUsingBuiltinAnimator = [(UINavigationController *)self _isUsingBuiltinAnimator];

      if (_isUsingBuiltinAnimator)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    if (![(UINavigationController *)self isInteractiveTransition])
    {
LABEL_21:
      _interactionController = 0;
      goto LABEL_28;
    }

LABEL_19:
    if ([(UINavigationController *)self _shouldUseBuiltinInteractionController]|| ([(_UINavigationControllerVisualStyle *)self->_visualStyle transitionController], v15 = objc_claimAutoreleasedReturnValue(), v15, _animator == v15))
    {
      interactionController = [(_UINavigationControllerVisualStyle *)self->_visualStyle interactionController];
      if (interactionController)
      {
        [controllerCopy _setInteractor:interactionController];
        _interactionController = interactionController;
        if (objc_opt_respondsToSelector())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [_interactionController setAnimationController:_animator];
          }
        }
      }

      else
      {
        _interactionController = [(UINavigationController *)self _createBuiltInInteractionControllerForAnimationController:_animator];
      }

      goto LABEL_28;
    }

    goto LABEL_21;
  }

  _interactionController = [_animator _interactionController];
  if (!_interactionController)
  {
    goto LABEL_14;
  }

LABEL_6:
  [controllerCopy _setInteractor:_interactionController];
LABEL_28:
  interactiveTransitionController2 = _interactionController;

LABEL_29:

  return interactiveTransitionController2;
}

- (void)_executeNavigationHandler:(id)handler deferred:(BOOL)deferred
{
  deferredCopy = deferred;
  handlerCopy = handler;
  _updateNavigationBarHandler = [(UINavigationController *)self _updateNavigationBarHandler];

  if (deferredCopy)
  {
    if (_updateNavigationBarHandler)
    {
      _updateNavigationBarHandler2 = [(UINavigationController *)self _updateNavigationBarHandler];
      _updateNavigationBarHandler2[2]();
    }

    [(UINavigationController *)self _setUpdateNavigationBarHandler:handlerCopy];
    goto LABEL_10;
  }

  if (_updateNavigationBarHandler)
  {
    _updateNavigationBarHandler3 = [(UINavigationController *)self _updateNavigationBarHandler];
    _updateNavigationBarHandler3[2]();
    [(UINavigationController *)self _setUpdateNavigationBarHandler:handlerCopy];

LABEL_10:
    v9 = handlerCopy;
    goto LABEL_11;
  }

  v9 = handlerCopy;
  if (self->_navigationBar || ([(UIViewController *)self _existingView], v10 = objc_claimAutoreleasedReturnValue(), v10, v9 = handlerCopy, v10))
  {
    v9[2](v9);
    goto LABEL_10;
  }

LABEL_11:
}

- (id)separateSecondaryViewControllerForSplitViewController:(id)controller
{
  v3 = [(UINavigationController *)self _separateViewControllersAfterAndIncludingViewController:0 forSplitViewController:controller];
  firstObject = [v3 firstObject];

  return firstObject;
}

- (void)showViewController:(UIViewController *)vc sender:(id)sender
{
  v6 = vc;
  v7 = sender;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![(UINavigationController *)self _allowNestedNavigationControllers])
  {
    *&self->_navigationControllerFlags |= 0x10000000000000uLL;
    v8.receiver = self;
    v8.super_class = UINavigationController;
    [(UIViewController *)&v8 showViewController:v6 sender:v7];
    *&self->_navigationControllerFlags &= ~0x10000000000000uLL;
  }

  else
  {
    [(UINavigationController *)self pushViewController:v6 animated:+[UIView areAnimationsEnabled]];
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  v7 = senderCopy;
  if (sel_showViewController_sender_ == action && (*(&self->_navigationControllerFlags + 6) & 0x10) != 0)
  {
    v8 = 0;
    goto LABEL_15;
  }

  if (sel__performBackKeyCommand_ != action || ![senderCopy isEqual:self->_backKeyCommand])
  {
    if (sel_rename_ == action)
    {
      v9 = [(UINavigationController *)self _canPerformRename:v7];
    }

    else if (sel_runToolbarCustomizationPalette_ == action)
    {
      v9 = [(UINavigationController *)self _canPerformCustomizeBarActionWithSender:v7];
    }

    else
    {
      v11.receiver = self;
      v11.super_class = UINavigationController;
      v9 = [(UIViewController *)&v11 canPerformAction:action withSender:v7];
    }

    goto LABEL_14;
  }

  if (![(UINavigationController *)self _canPerformBackKeyCommandToPopViewController])
  {
    v9 = [(UINavigationController *)self _canUseBackKeyCommandToTriggerSidebarKeyCommandWithSender:v7];
LABEL_14:
    v8 = v9;
    goto LABEL_15;
  }

  v8 = 1;
LABEL_15:

  return v8;
}

- (void)_prepareForNestedDisplayWithNavigationController:(id)controller
{
  obj = controller;
  viewControllers = [(UINavigationController *)self viewControllers];
  v5 = [viewControllers count];

  if (!v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Cannot display a nested UINavigationController with zero viewControllers: %@", self}];
  }

  v6 = [(UINavigationController *)self _topViewControllerObservableScrollViewForEdge:1];
  [(UINavigationController *)self _stopObservingContentScrollView:v6];

  v7 = [(UINavigationController *)self _topViewControllerObservableScrollViewForEdge:4];
  [(UINavigationController *)self _stopObservingContentScrollView:v7];

  navigationControllerFlags = self->_navigationControllerFlags;
  if (navigationControllerFlags)
  {
    *&self->_navigationControllerFlags = (navigationControllerFlags >> 4) & 0x100000000000 | navigationControllerFlags & 0xFFFEEFFFFFFFFFFFLL;
  }

  else
  {
    *&self->_navigationControllerFlags = navigationControllerFlags | 0x100000000000;
    [(UINavigationController *)self setNavigationBarHidden:1 animated:0];
  }

  [(UINavigationController *)self _setIsNestedNavigationController:1];
  isToolbarHidden = [obj isToolbarHidden];
  v10 = obj[161];
  if (isToolbarHidden)
  {
    obj[161] = v10 & 0xFFFFDFFFFFFFFFFFLL;
  }

  else
  {
    obj[161] = v10 | 0x200000000000;
    if ((_UIUnifiedToolbarEnabled() & 1) == 0)
    {
      [obj setToolbarHidden:1];
    }
  }

  if (_UIUnifiedToolbarEnabled())
  {
    [(UINavigationController *)self _updateFloatingBarContentAnimated:0];
  }

  [(UIViewController *)self setDefinesPresentationContext:0];
  objc_storeWeak(&self->_parentNavigationController, obj);
}

- (void)_detachTopPaletteIfShowingSearchBarForTopmostViewControllerInNavigationController:(id)controller
{
  v25 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  navController = [(_UINavigationControllerPalette *)self->_topPalette navController];

  if (navController != controllerCopy && (*__UILogGetCategoryCachedImpl("", &qword_1ED497970) & 1) != 0)
  {
    if (controllerCopy == self)
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("Navigation", &qword_1ED497978);
      if ((*CategoryCachedImpl & 1) == 0)
      {
        goto LABEL_3;
      }

      v15 = *(CategoryCachedImpl + 8);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_3;
      }

      topPalette = self->_topPalette;
      v9 = v15;
      navController2 = [(_UINavigationControllerPalette *)topPalette navController];
      v17 = 138412802;
      v18 = topPalette;
      v19 = 2112;
      v20 = navController2;
      v21 = 2112;
      selfCopy2 = self;
      v11 = "Palette %@ belongs to nav controller %@, which is not the nav controller which should be displaying it (%@)";
      v12 = v9;
      v13 = 32;
    }

    else
    {
      v6 = __UILogGetCategoryCachedImpl("Navigation", &qword_1ED497980);
      if ((*v6 & 1) == 0)
      {
        goto LABEL_3;
      }

      v7 = *(v6 + 8);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_3;
      }

      v8 = self->_topPalette;
      v9 = v7;
      navController2 = [(_UINavigationControllerPalette *)v8 navController];
      v17 = 138413058;
      v18 = v8;
      v19 = 2112;
      v20 = navController2;
      v21 = 2112;
      selfCopy2 = self;
      v23 = 2112;
      v24 = controllerCopy;
      v11 = "Palette %@ belongs to nav controller %@, which is neither outer (%@) or inner (%@) nav controller";
      v12 = v9;
      v13 = 42;
    }

    _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, v11, &v17, v13);
  }

LABEL_3:
}

- (void)_noteNestedNavigationControllerDidReturnToNormal:(id)normal
{
  normalCopy = normal;
  v4 = [normalCopy _topViewControllerObservableScrollViewForEdge:1];
  [(UINavigationController *)self _stopObservingContentScrollView:v4];

  v5 = [normalCopy _topViewControllerObservableScrollViewForEdge:4];
  [(UINavigationController *)self _stopObservingContentScrollView:v5];

  [(UINavigationController *)self _detachTopPaletteIfShowingSearchBarForTopmostViewControllerInNavigationController:normalCopy];
}

- (void)_prepareForNormalDisplayWithNavigationController:(id)controller
{
  controllerCopy = controller;
  if ([(UINavigationController *)self _isNestedNavigationController])
  {
    objc_storeWeak(&self->_parentNavigationController, 0);
    navigationBar = [(UINavigationController *)self navigationBar];
    [navigationBar _redisplayItems];

    [controllerCopy _noteNestedNavigationControllerDidReturnToNormal:self];
    [(UINavigationController *)self _setTemporaryWindowLocator:controllerCopy];
    [(UINavigationController *)self _setIsNestedNavigationController:0];
    navigationControllerFlags = self->_navigationControllerFlags;
    if ((navigationControllerFlags & 0x1100000000000) == 0x100000000000)
    {
      [(UINavigationController *)self setNavigationBarHidden:0 animated:0];
      navigationControllerFlags = self->_navigationControllerFlags;
    }

    *&self->_navigationControllerFlags = navigationControllerFlags & 0xFFFFEFFFFFFFFFFFLL;
    v6 = controllerCopy;
    v7 = controllerCopy[161];
    if ((v7 & 0x200000000000) != 0)
    {
      [controllerCopy setToolbarHidden:0];
      v6 = controllerCopy;
      v7 = controllerCopy[161];
    }

    v6[161] = v7 & 0xFFFFDFFFFFFFFFFFLL;
    if (_UIUnifiedToolbarEnabled())
    {
      [(UINavigationController *)self _updateFloatingBarContentAnimated:0];
    }

    [(UINavigationController *)self _setTemporaryWindowLocator:0];
    [(UIViewController *)self setDefinesPresentationContext:1];
    [(UIView *)self->_paletteClippingView removeFromSuperview];
    paletteClippingView = self->_paletteClippingView;
    self->_paletteClippingView = 0;
  }
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
  v4 = animated;
  v23 = *MEMORY[0x1E69E9840];
  v6 = viewController;
  if (qword_1ED497A18 != -1)
  {
    dispatch_once(&qword_1ED497A18, &__block_literal_global_1823);
  }

  if (byte_1ED49790C == 1)
  {
    v7 = *(__UILogGetCategoryCachedImpl("NavigationControllerVerboseLoggingForStrictRepeatedPushAssertion", &qword_1ED497988) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      if (v4)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v9 = MEMORY[0x1E696AF00];
      v10 = v7;
      callStackSymbols = [v9 callStackSymbols];
      *buf = 138413058;
      selfCopy = self;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = callStackSymbols;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "-pushViewController:animated: sent to %@ passing %@, animated = %@,\n%@", buf, 0x2Au);
    }
  }

  v12 = [(UINavigationController *)self _effectiveTransitionForTransition:v4];
  if ([(UIViewController *)v6 useLayoutToLayoutNavigationTransitions])
  {
    topViewController = [(UINavigationController *)self topViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Attempt to push collection view controller %@ on %@ with layout to layout transitions but the top view controller is not a UICollectionViewController!", v6, self}];
    }
  }

  if ([(UIViewController *)v6 useLayoutToLayoutNavigationTransitions])
  {
    [(UINavigationController *)self _prepareCollectionViewControllerForSharing:v6];
  }

  [(UINavigationController *)self pushViewController:v6 transition:v12 forceImmediate:+[UIViewController _shouldDeferTransitions]^ 1];
}

- (BOOL)_sanityCheckPushViewController:(id)controller transition:(int)transition forceImmediate:(BOOL)immediate
{
  immediateCopy = immediate;
  v83 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (qword_1ED497A18 != -1)
  {
    dispatch_once(&qword_1ED497A18, &__block_literal_global_1823);
  }

  if (byte_1ED49790C == 1)
  {
    v8 = *(__UILogGetCategoryCachedImpl("NavigationControllerVerboseLoggingForStrictRepeatedPushAssertion", &qword_1ED497990) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      if (immediateCopy)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      v10 = MEMORY[0x1E696AF00];
      v11 = v8;
      callStackSymbols = [v10 callStackSymbols];
      *buf = 138413314;
      selfCopy = self;
      v75 = 2112;
      v76 = controllerCopy;
      v77 = 2048;
      transitionCopy = transition;
      v79 = 2112;
      v80 = v9;
      v81 = 2112;
      v82 = callStackSymbols;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "-pushViewController:transition:forceImmediate: sent to %@ passing %@, transition=%lu, forceImmediate=%@\n%@", buf, 0x34u);
    }
  }

  if (!controllerCopy)
  {
    NSLog(&cfstr_ApplicationTri.isa, self);
    goto LABEL_29;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self && (*(&self->_navigationControllerFlags + 5) & 8) != 0)
  {
    mutableChildViewControllers = [(UIViewController *)self mutableChildViewControllers];
    _isNavigationController = [controllerCopy _isNavigationController];
    if ([mutableChildViewControllers containsObject:controllerCopy])
    {
      v14 = MEMORY[0x1E696AEC0];
      v15 = _UIMainBundleIdentifier();
      v16 = [v14 stringWithFormat:@"%@ is pushing the same view controller instance (%@) more than once which is not supported and is most likely an error in the application : %@", self, controllerCopy, v15];

      if (v16)
      {
        goto LABEL_16;
      }
    }

    else if (_isNavigationController)
    {
      if (![(UINavigationController *)self _allowNestedNavigationControllers])
      {
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Pushing a navigation controller is not supported"];
        if (v16)
        {
LABEL_16:
          v17 = [(UIViewController *)self _splitViewControllerEnforcingClass:1];
          _panelImpl = [v17 _panelImpl];
          if (!_panelImpl)
          {
            goto LABEL_83;
          }

          v18 = controllerCopy;
          v19 = v17;
          v20 = 0;
          if (!self || !v19)
          {
LABEL_37:
            v55 = v20;
            v59 = v19;

            currentState = [_panelImpl currentState];
            _collapsedState = [currentState _collapsedState];
            if (_collapsedState == 1)
            {
              v27 = @"collapsing";
            }

            else if (_collapsedState == 2)
            {
              v27 = @"collapsed";
            }

            else
            {
              v27 = @"expanding";
              if (!_collapsedState)
              {
                v27 = @"expanded";
              }
            }

            v57 = v27;
            v56 = [v16 stringByAppendingFormat:@" [%@]", v57];

            v28 = *(__UILogGetCategoryCachedImpl("UINavigationController_in_UISplitViewController", &qword_1ED497998) + 8);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              selfCopy = v57;
              v75 = 2112;
              v76 = v59;
              _os_log_impl(&dword_188A29000, v28, OS_LOG_TYPE_DEFAULT, "Incorrect push in %@ UISplitViewController, %@", buf, 0x16u);
            }

            v29 = *(__UILogGetCategoryCachedImpl("UINavigationController_in_UISplitViewController", &qword_1ED4979A0) + 8);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              selfCopy = v18;
              _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_DEFAULT, "Rejecting %@", buf, 0xCu);
            }

            _printHierarchy = [v59 _printHierarchy];
            v31 = [_printHierarchy componentsSeparatedByString:@"\n"];

            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v32 = v31;
            v33 = [v32 countByEnumeratingWithState:&v67 objects:v72 count:16];
            if (v33)
            {
              v34 = *v68;
              do
              {
                for (i = 0; i != v33; ++i)
                {
                  if (*v68 != v34)
                  {
                    objc_enumerationMutation(v32);
                  }

                  v36 = *(*(&v67 + 1) + 8 * i);
                  v37 = *(__UILogGetCategoryCachedImpl("UINavigationController_in_UISplitViewController", &qword_1ED4979A8) + 8);
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    selfCopy = v36;
                    _os_log_impl(&dword_188A29000, v37, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
                  }
                }

                v33 = [v32 countByEnumeratingWithState:&v67 objects:v72 count:16];
              }

              while (v33);
            }

            if ([_panelImpl style])
            {
              v54 = v32;
              v38 = [_panelImpl valueForKey:@"_perColumnViewControllers"];
              v39 = [v38 description];
              v40 = [v39 componentsSeparatedByString:@"\n"];

              v65 = 0u;
              v66 = 0u;
              v63 = 0u;
              v64 = 0u;
              v41 = v40;
              v42 = [v41 countByEnumeratingWithState:&v63 objects:v71 count:16];
              if (v42)
              {
                v43 = *v64;
                do
                {
                  for (j = 0; j != v42; ++j)
                  {
                    if (*v64 != v43)
                    {
                      objc_enumerationMutation(v41);
                    }

                    v45 = *(*(&v63 + 1) + 8 * j);
                    v46 = *(__UILogGetCategoryCachedImpl("UINavigationController_in_UISplitViewController", &qword_1ED4979B0) + 8);
                    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      selfCopy = v45;
                      _os_log_impl(&dword_188A29000, v46, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
                    }
                  }

                  v42 = [v41 countByEnumeratingWithState:&v63 objects:v71 count:16];
                }

                while (v42);
              }

              v32 = v54;
            }

            if (os_variant_has_internal_diagnostics())
            {
              v49 = *(__UILogGetCategoryCachedImpl("UINavigationController_in_UISplitViewController", &qword_1ED4979C0) + 8);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
              {
                v50 = [_panelImpl valueForKey:@"panelController"];
                v51 = [v50 valueForKey:@"_internalState"];
                *buf = 138412290;
                selfCopy = v51;
                _os_log_impl(&dword_188A29000, v49, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
              }
            }

            if (v55)
            {
              if (os_variant_has_internal_diagnostics())
              {
                v52 = __UIFaultDebugAssertLog();
                if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412290;
                  selfCopy = v56;
                  _os_log_fault_impl(&dword_188A29000, v52, OS_LOG_TYPE_FAULT, "Ignoring push instead of throwing exception per UINavigationControllerRelaxRepeatedPushAssertionForSplitViewController default: %@", buf, 0xCu);
                }
              }

              else
              {
                v47 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4979D0) + 8);
                if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  selfCopy = v56;
                  _os_log_impl(&dword_188A29000, v47, OS_LOG_TYPE_ERROR, "Ignoring push instead of throwing exception per UINavigationControllerRelaxRepeatedPushAssertionForSplitViewController default: %@", buf, 0xCu);
                }
              }

              v24 = 0;
              goto LABEL_73;
            }

            v16 = v56;
LABEL_83:
            v53 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0];
            objc_exception_throw(v53);
          }

          v21 = v19;
          if (_UIIsPrivateMainBundle() && qword_1ED497A20 != -1)
          {
            dispatch_once(&qword_1ED497A20, &__block_literal_global_1829);
          }

          if (byte_1ED49790D == 1)
          {
            if (qword_1ED497A18 != -1)
            {
              dispatch_once(&qword_1ED497A18, &__block_literal_global_1823);
            }

            if ((byte_1ED49790C & 1) == 0)
            {
              topViewController = [(UINavigationController *)self topViewController];
              v23 = topViewController;
              if (topViewController == v18)
              {
                v25 = [v21 _columnForViewController:self] == 0;

                if (v25)
                {
                  v20 = ([v21 _columnForViewController:v18] - 1) < 2;
                  goto LABEL_36;
                }
              }

              else
              {
              }
            }
          }

          v20 = 0;
LABEL_36:
          v19 = v21;
          goto LABEL_37;
        }
      }
    }

    v24 = 1;
LABEL_73:

    goto LABEL_74;
  }

  NSLog(&cfstr_SplitViewContr.isa, self);
LABEL_29:
  v24 = 0;
LABEL_74:

  return v24;
}

- (void)pushViewController:(id)controller transition:(int)transition forceImmediate:(BOOL)immediate
{
  immediateCopy = immediate;
  v6 = *&transition;
  controllerCopy = controller;
  if ([(UINavigationController *)self _sanityCheckPushViewController:controllerCopy transition:v6 forceImmediate:immediateCopy])
  {
    view = [(UIViewController *)self view];
    window = [view window];

    navigationControllerFlags = self->_navigationControllerFlags;
    mutableChildViewControllers = [(UIViewController *)self mutableChildViewControllers];
    lastObject = [mutableChildViewControllers lastObject];
    if (window)
    {
      v13 = 1;
    }

    else
    {
      v13 = immediateCopy;
    }

    if ((navigationControllerFlags & 4) == 0 && v13)
    {
      disappearingViewController = [(UINavigationController *)self disappearingViewController];
      if (disappearingViewController)
      {
      }

      else if (![(UINavigationController *)self needsDeferredTransition])
      {
        [(UINavigationController *)self setDisappearingViewController:lastObject];
      }
    }

    v23 = lastObject;
    if (window)
    {
      disappearingViewController2 = [(UINavigationController *)self disappearingViewController];

      LOBYTE(window) = 0;
      _isAppearingOrAppearedCheck = 0;
      v17 = 0;
      if (v6 && disappearingViewController2)
      {
        _isAppearingOrAppearedCheck = [(UINavigationController *)self _isAppearingOrAppearedCheck];
        LOBYTE(window) = _isAppearingOrAppearedCheck;
        if (_isAppearingOrAppearedCheck)
        {
          v17 = v6;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      _isAppearingOrAppearedCheck = 0;
      v17 = 0;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__UINavigationController_pushViewController_transition_forceImmediate___block_invoke;
    aBlock[3] = &unk_1E70F45F8;
    v18 = controllerCopy;
    v29 = v18;
    v19 = _Block_copy(aBlock);
    v20 = dyld_program_sdk_at_least();
    if (v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = v25;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __71__UINavigationController_pushViewController_transition_forceImmediate___block_invoke_2;
      v25[3] = &unk_1E70F5AF0;
      v25[4] = self;
      navigationControllerFlags = &v26;
      v26 = v18;
      v27 = window;
    }

    v22 = _Block_copy(v21);
    [(UINavigationController *)self _applyViewControllers:v19 transition:v17 animated:_isAppearingOrAppearedCheck operation:1 rescheduleBlock:v22];
    if (_isAppearingOrAppearedCheck)
    {
      [(UINavigationController *)self _playPushNavigationSound];
    }

    if ((v20 & 1) == 0)
    {
    }
  }
}

- (id)_nthChildViewControllerFromTop:(unint64_t)top
{
  mutableChildViewControllers = [(UIViewController *)self mutableChildViewControllers];
  v5 = [mutableChildViewControllers count];
  if (v5 <= top)
  {
    v6 = 0;
  }

  else
  {
    v6 = [mutableChildViewControllers objectAtIndex:v5 + ~top];
  }

  return v6;
}

- (id)_findViewControllerToPopTo
{
  mutableChildViewControllers = [(UIViewController *)self mutableChildViewControllers];
  disappearingViewController = [(UINavigationController *)self disappearingViewController];
  lastObject = [mutableChildViewControllers lastObject];
  v6 = lastObject == disappearingViewController;

  v7 = [(UINavigationController *)self _nthChildViewControllerFromTop:v6];

  return v7;
}

- (UIViewController)popViewControllerAnimated:(BOOL)animated
{
  if (animated)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  return [(UINavigationController *)self _popViewControllerWithTransition:v3 allowPoppingLast:0];
}

- (void)_updateBottomBarHiddenStateFromOtherNavigationController:(id)controller
{
  if (controller)
  {
    *&self->_navigationControllerFlags |= *(controller + 161) & 0x400;
  }
}

- (void)_hideOrShowBottomBarIfNeededWithTransition:(int)transition
{
  v3 = *&transition;
  _shouldBottomBarBeHidden = [(UINavigationController *)self _shouldBottomBarBeHidden];
  navigationControllerFlags = self->_navigationControllerFlags;
  _shouldCrossFadeBottomBars = [(UINavigationController *)self _shouldCrossFadeBottomBars];
  viewIfLoaded = [(UIViewController *)self viewIfLoaded];
  _shouldReverseLayoutDirection = [viewIfLoaded _shouldReverseLayoutDirection];

  v10 = self->_navigationControllerFlags;
  if (_shouldBottomBarBeHidden)
  {
    if ((v10 & 0xC00) != 0)
    {
      return;
    }

    if (v3)
    {
      disappearingViewController = [(UINavigationController *)self disappearingViewController];
      view = [disappearingViewController view];

      if ((navigationControllerFlags & 0x20000) != 0)
      {
        v13 = view;
      }

      else
      {
        v13 = [UIViewControllerWrapperView existingWrapperViewForView:view];
      }

      tabBarController2 = v13;
      autoresizingMask = [v13 autoresizingMask];
      [tabBarController2 setAutoresizingMask:{objc_msgSend(tabBarController2, "autoresizingMask") & 0xFFFFFFFFFFFFFFEFLL}];
    }

    else
    {
      autoresizingMask = 0;
      tabBarController2 = 0;
    }

    tabBarController = [(UIViewController *)self tabBarController];
    _selectedViewControllerInTabBar = [tabBarController _selectedViewControllerInTabBar];

    if (_selectedViewControllerInTabBar == self)
    {
      if (_shouldCrossFadeBottomBars)
      {
        v32 = 6;
      }

      else
      {
        v32 = v3;
      }

      [tabBarController _hideBarWithTransition:v32 isExplicit:0 reason:2];
      v30 = self->_navigationControllerFlags;
      *&self->_navigationControllerFlags = v30 | 0x400;
      if (!_shouldCrossFadeBottomBars)
      {
        goto LABEL_47;
      }

      v31 = 0x800000400;
    }

    else
    {
      if ([(UINavigationController *)self isToolbarHidden])
      {
LABEL_47:
        [tabBarController2 setAutoresizingMask:autoresizingMask];

        goto LABEL_48;
      }

      v26 = 15;
      v27 = 8;
      if (_shouldReverseLayoutDirection)
      {
        v27 = 2;
      }

      v28 = 2;
      if (_shouldReverseLayoutDirection)
      {
        v28 = 8;
      }

      if (v3 == 1)
      {
        v26 = v28;
      }

      if (v3 == 2)
      {
        v29 = v27;
      }

      else
      {
        v29 = v26;
      }

      [(UINavigationController *)self durationForTransition:v3];
      [(UINavigationController *)self _setToolbarHidden:1 edge:v29 duration:?];
      v30 = self->_navigationControllerFlags;
      v31 = 525312;
    }

    *&self->_navigationControllerFlags = v30 | v31;
    goto LABEL_47;
  }

  if ((v10 & 0x400) == 0)
  {
    return;
  }

  tabBarController2 = [(UIViewController *)self tabBarController];
  _selectedViewControllerInTabBar2 = [tabBarController2 _selectedViewControllerInTabBar];

  if (_selectedViewControllerInTabBar2 == self)
  {
    if (_shouldCrossFadeBottomBars)
    {
      v20 = 6;
    }

    else
    {
      v20 = v3;
    }

    [tabBarController2 _showBarWithTransition:v20 isExplicit:1 reason:2];
    v21 = *&self->_navigationControllerFlags & 0xFFFFFFFFFFFFFBFFLL;
    *&self->_navigationControllerFlags = v21;
    if (!_shouldCrossFadeBottomBars)
    {
      goto LABEL_48;
    }

    v19 = v21 | 0x1000000000;
  }

  else
  {
    if (![(UINavigationController *)self isToolbarHidden])
    {
LABEL_48:
      v22 = tabBarController2;
      goto LABEL_49;
    }

    v15 = 15;
    v16 = 2;
    if (_shouldReverseLayoutDirection)
    {
      v16 = 8;
    }

    v17 = 8;
    if (_shouldReverseLayoutDirection)
    {
      v17 = 2;
    }

    if (v3 == 1)
    {
      v15 = v17;
    }

    if (v3 == 2)
    {
      v18 = v16;
    }

    else
    {
      v18 = v15;
    }

    [(UINavigationController *)self durationForTransition:v3];
    [(UINavigationController *)self _setToolbarHidden:0 edge:v18 duration:?];
    v19 = *&self->_navigationControllerFlags & 0xFFFFFFFFFFF7FBFFLL | 0x80000;
  }

  v22 = tabBarController2;
  *&self->_navigationControllerFlags = v19;
LABEL_49:
}

- (void)_tabBarControllerDidFinishShowingTabBar:(id)bar isHidden:(BOOL)hidden
{
  if (hidden)
  {
    _didExplicitlyHideTabBar = [(UINavigationController *)self _didExplicitlyHideTabBar];
    v6 = 1024;
    if (_didExplicitlyHideTabBar)
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFE7FFFFFBFFLL | v6;
  topViewController = [(UINavigationController *)self topViewController];
  [(UINavigationController *)self _computeAndApplyScrollContentInsetDeltaForViewController:topViewController];

  [(UINavigationController *)self _layoutTopViewController];
}

- (void)_setAllowsInteractivePopWhenNavigationBarHidden:(BOOL)hidden
{
  if (hidden)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_navigationControllerFlags + 8) = *(&self->_navigationControllerFlags + 8) & 0xEF | v3;
}

- (BOOL)_hasPreferredInterfaceOrientationForPresentation
{
  v5.receiver = self;
  v5.super_class = UINavigationController;
  if ([(UIViewController *)&v5 _hasPreferredInterfaceOrientationForPresentation])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = dyld_program_sdk_at_least();
    if (v3)
    {
      return (*(&self->_navigationControllerFlags + 3) >> 6) & 1;
    }
  }

  return v3;
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  if ((*(&self->_navigationControllerFlags + 3) & 0x40) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained navigationControllerPreferredInterfaceOrientationForPresentation:self];

    return v5;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UINavigationController;
    return [(UIViewController *)&v6 preferredInterfaceOrientationForPresentation];
  }
}

- (id)_popViewControllerWithTransition:(int)transition allowPoppingLast:(BOOL)last
{
  lastCopy = last;
  v5 = *&transition;
  viewControllers = [(UINavigationController *)self viewControllers];
  v8 = [viewControllers count];

  v9 = v8 == 1 && lastCopy;
  if (v8 > 1 || v9)
  {
    v11 = [(UINavigationController *)self _effectiveTransitionForTransition:v5];
    topViewController = [(UINavigationController *)self topViewController];
    v12 = topViewController;
    view = [(UIViewController *)self view];
    window = [view window];
    v15 = window != 0;

    v16 = v15 & [(UINavigationController *)self _isAppearingOrAppearedCheck];
    if (!v11)
    {
      v16 = 0;
    }

    if (v8 == 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16;
    }

    if (![(UIResponder *)self _disableAutomaticKeyboardBehavior])
    {
      _keyboardSceneDelegate = [(UIViewController *)self _keyboardSceneDelegate];
      responder = [_keyboardSceneDelegate responder];
      v20 = [topViewController _shouldAttemptToPreserveInputViewsForResponder:responder];

      if (v20)
      {
        v21 = [MEMORY[0x1E696B098] valueWithPointer:topViewController];
        [_keyboardSceneDelegate _preserveInputViewsWithId:v21];
      }
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __76__UINavigationController__popViewControllerWithTransition_allowPoppingLast___block_invoke;
    v24[3] = &__block_descriptor_41_e26___NSArray_16__0__NSArray_8l;
    v24[4] = v8;
    v25 = lastCopy;
    v22 = _Block_copy(v24);
    [(UINavigationController *)self _applyViewControllers:v22 transition:v11 animated:v17 operation:2 rescheduleBlock:0];
  }

  else
  {
    topViewController = 0;
  }

  return topViewController;
}

id __76__UINavigationController__popViewControllerWithTransition_allowPoppingLast___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count] > 1 || *(a1 + 32) == 1 && *(a1 + 40) == 1)
  {
    v4 = [v3 subarrayWithRange:{0, objc_msgSend(v3, "count") - 1}];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

- (id)popViewControllerWithAnimationTransition:(int64_t)transition duration:(double)duration curve:(int64_t)curve
{
  v7 = (curve << 16) | (transition << 20);
  navigationTransitionView = [(UINavigationController *)self navigationTransitionView];
  [UIView transitionWithView:navigationTransitionView duration:v7 options:0 animations:0 completion:duration];

  return [(UINavigationController *)self popViewControllerAnimated:0];
}

- (NSArray)popToRootViewControllerAnimated:(BOOL)animated
{
  if (animated)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  return [(UINavigationController *)self popToRootViewControllerWithTransition:v3];
}

- (id)popToRootViewControllerWithTransition:(int)transition
{
  v3 = *&transition;
  mutableChildViewControllers = [(UIViewController *)self mutableChildViewControllers];
  if ([mutableChildViewControllers count] < 2)
  {
    v7 = 0;
  }

  else
  {
    v6 = [mutableChildViewControllers objectAtIndex:0];
    v7 = [(UINavigationController *)self popToViewController:v6 transition:v3];
  }

  return v7;
}

- (NSArray)popToViewController:(UIViewController *)viewController animated:(BOOL)animated
{
  if (animated)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return [(UINavigationController *)self popToViewController:viewController transition:v4];
}

- (id)popToViewController:(id)controller transition:(int)transition
{
  v4 = *&transition;
  controllerCopy = controller;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__51;
  v22 = __Block_byref_object_dispose__51;
  v23 = 0;
  topViewController = [(UINavigationController *)self topViewController];

  if (topViewController != controllerCopy)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __57__UINavigationController_popToViewController_transition___block_invoke;
    v15 = &unk_1E7102B88;
    v16 = controllerCopy;
    v17 = &v18;
    v8 = _Block_copy(&v12);
    v9 = [(UINavigationController *)self _effectiveTransitionForTransition:v4, v12, v13, v14, v15];
    [(UINavigationController *)self _applyViewControllers:v8 transition:v9 animated:v9 != 0 operation:2 rescheduleBlock:0];
  }

  v10 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v10;
}

id __57__UINavigationController_popToViewController_transition___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 lastObject];

  if (v4 == v5)
  {
LABEL_6:
    v8 = v3;
    goto LABEL_8;
  }

  v6 = [v3 indexOfObjectIdenticalTo:*(a1 + 32)];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v15 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v15, OS_LOG_TYPE_FAULT, "Tried to pop to a view controller that doesn't exist.", buf, 2u);
      }
    }

    else
    {
      v7 = *(__UILogGetCategoryCachedImpl("Assert", &_UIInternalPreference_ForcePositionBarsExclusivelyWithSafeArea_block_invoke_2___s_category) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Tried to pop to a view controller that doesn't exist.", v16, 2u);
      }
    }

    goto LABEL_6;
  }

  v9 = v6 + 1;
  v10 = [v3 subarrayWithRange:{v9, objc_msgSend(v3, "count") - v9}];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v8 = [v3 subarrayWithRange:{0, v9}];
LABEL_8:
  v13 = v8;

  return v13;
}

- (id)popToViewControllerWithSnapbackIdentifier:(id)identifier animated:(BOOL)animated
{
  animatedCopy = animated;
  identifierCopy = identifier;
  mutableChildViewControllers = [(UIViewController *)self mutableChildViewControllers];
  v8 = [mutableChildViewControllers count];
  v9 = v8 - 2;
  if (v8 < 2)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v10 = [mutableChildViewControllers objectAtIndex:v9];
    if ([v10 canHandleSnapbackIdentifier:identifierCopy animated:animatedCopy])
    {
      break;
    }

    if (--v9 == -1)
    {
      goto LABEL_7;
    }
  }

  if (v10)
  {
    array = [(UINavigationController *)self popToViewController:v10 animated:animatedCopy];
  }

  else
  {
LABEL_7:
    array = [MEMORY[0x1E695DEC8] array];
  }

  return array;
}

- (void)_presentationTransitionWrapViewController:(id)controller forTransitionContext:(id)context
{
  controllerCopy = controller;
  contextCopy = context;
  childModalViewController = [controllerCopy childModalViewController];

  if (childModalViewController)
  {
    view = [controllerCopy view];
    v8 = [UIViewControllerWrapperView existingWrapperViewForView:view];

    if (!v8)
    {
      view2 = [controllerCopy view];
      superview = [view2 superview];

      view3 = [controllerCopy view];
      [superview bounds];
      v8 = [(UIViewControllerWrapperView *)v12 wrapperViewForView:v13 frame:v14, v15, UIViewControllerWrapperView, view3];

      [v8 setAutoresizingMask:18];
      view4 = [controllerCopy view];
      [superview insertSubview:v8 belowSubview:view4];

      view5 = [controllerCopy view];
      [v8 addSubview:view5];
    }

    v18 = [_UINavigationPresentationWrapperView alloc];
    [v8 bounds];
    v19 = [(UIView *)v18 initWithFrame:?];
    [(UIView *)v19 setAutoresizingMask:18];
    [v8 insertSubview:v19 atIndex:0];
    view6 = [controllerCopy view];
    [(UIView *)v19 addSubview:view6];

    presentedViewController = [controllerCopy presentedViewController];
    presentationController = [presentedViewController presentationController];
    containerView = [presentationController containerView];
    [(UIView *)v19 addSubview:containerView];

    [contextCopy _setFromView:v19];
  }
}

- (void)_presentationTransitionUnwrapViewController:(id)controller
{
  controllerCopy = controller;
  childModalViewController = [controllerCopy childModalViewController];

  v4 = controllerCopy;
  if (childModalViewController)
  {
    view = [controllerCopy view];
    superview = [view superview];

    v7 = superview;
    v8 = v7;
    if (v7)
    {
      v9 = v7;
      while (1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        superview2 = [v9 superview];

        v9 = superview2;
        if (!superview2)
        {
          goto LABEL_10;
        }
      }

      [v9 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      view2 = [controllerCopy view];
      [view2 setFrame:{v12, v14, v16, v18}];

      presentedViewController = [controllerCopy presentedViewController];
      presentationController = [presentedViewController presentationController];
      containerView = [presentationController containerView];
      [containerView setFrame:{v12, v14, v16, v18}];

      view3 = [controllerCopy view];
      [v9 insertSubview:view3 atIndex:0];

      presentedViewController2 = [controllerCopy presentedViewController];
      presentationController2 = [presentedViewController2 presentationController];
      containerView2 = [presentationController2 containerView];
      view4 = [controllerCopy view];
      [v9 insertSubview:containerView2 aboveSubview:view4];

      if (v8 != v9)
      {
        [v8 removeFromSuperview];
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_10:

    v4 = controllerCopy;
  }
}

- (BOOL)_transitionConflictsWithNavigationTransitions:(id)transitions
{
  transitionsCopy = transitions;
  if ([transitionsCopy presentationStyle] == 4 || objc_msgSend(transitionsCopy, "presentationStyle") == 3 || objc_msgSend(transitionsCopy, "presentationStyle") == 6)
  {
    v5 = [transitionsCopy viewControllerForKey:@"UITransitionContextToViewController"];
    if (v5 || [transitionsCopy presentationStyle] != 4)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __72__UINavigationController__transitionConflictsWithNavigationTransitions___block_invoke;
      v9[3] = &unk_1E7102BB0;
      v10 = v5;
      v7 = [(UIViewController *)self _doesSelfOrAncestorPassPredicate:v9]^ 1;
    }

    else
    {
      v6 = [transitionsCopy viewControllerForKey:@"UITransitionContextFromViewController"];
      LOBYTE(v7) = v6 != 0;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)_setAllowsFreezeLayoutForOrientationChangeOnDismissal:(BOOL)dismissal
{
  v3 = 0x200000000000000;
  if (!dismissal)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFDFFFFFFFFFFFFFFLL | v3;
}

- (BOOL)_allowsAutorotation
{
  v7.receiver = self;
  v7.super_class = UINavigationController;
  _allowsAutorotation = [(UIViewController *)&v7 _allowsAutorotation];
  topViewController = [(UINavigationController *)self topViewController];

  if (topViewController)
  {
    topViewController2 = [(UINavigationController *)self topViewController];
    _allowsAutorotation &= [topViewController2 _allowsAutorotation];
  }

  return _allowsAutorotation;
}

- (BOOL)_doesTopViewControllerSupportInterfaceOrientation:(int64_t)orientation
{
  topViewController = [(UINavigationController *)self topViewController];

  if (!topViewController)
  {
    return 1;
  }

  topViewController2 = [(UINavigationController *)self topViewController];
  v7 = [topViewController2 _isSupportedInterfaceOrientation:orientation];

  return v7;
}

- (BOOL)_isSupportedInterfaceOrientation:(int64_t)orientation
{
  if ([objc_opt_class() _doesOverrideLegacyShouldAutorotateMethod])
  {

    return [(UINavigationController *)self shouldAutorotateToInterfaceOrientation:orientation];
  }

  else
  {

    return [(UINavigationController *)self _doesTopViewControllerSupportInterfaceOrientation:orientation];
  }
}

- (id)rotatingHeaderView
{
  if ([(UINavigationController *)self isNavigationBarHidden])
  {
    topViewController = [(UINavigationController *)self topViewController];
    rotatingHeaderView = [topViewController rotatingHeaderView];
  }

  else
  {
    rotatingHeaderView = [(UINavigationController *)self navigationBar];
  }

  return rotatingHeaderView;
}

- (id)rotatingFooterView
{
  if ([(UINavigationController *)self isToolbarHidden])
  {
    topViewController = [(UINavigationController *)self topViewController];
    rotatingFooterView = [topViewController rotatingFooterView];
  }

  else
  {
    rotatingFooterView = [(UINavigationController *)self toolbar];
  }

  return rotatingFooterView;
}

- (BOOL)_shouldUseOnePartRotation
{
  topViewController = [(UINavigationController *)self topViewController];

  if (!topViewController)
  {
    return 1;
  }

  topViewController2 = [(UINavigationController *)self topViewController];
  _shouldUseOnePartRotation = [topViewController2 _shouldUseOnePartRotation];

  return _shouldUseOnePartRotation;
}

- (void)_getRotationContentSettings:(id *)settings
{
  topViewController = [(UINavigationController *)self topViewController];
  [topViewController _getRotationContentSettings:settings];
}

- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  topViewController = [(UINavigationController *)self topViewController];
  [topViewController willRotateToInterfaceOrientation:orientation duration:duration];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  topViewController = [(UINavigationController *)self topViewController];
  [(UINavigationController *)self _updateBarsForCurrentInterfaceOrientation];
  [topViewController willAnimateRotationToInterfaceOrientation:orientation duration:duration];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v9.receiver = self;
  v9.super_class = UINavigationController;
  [(UIViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  if (coordinatorCopy)
  {
    [coordinatorCopy targetTransform];
    if (!CGAffineTransformIsIdentity(&v10))
    {
      [(UINavigationController *)self _stopTransitionsImmediately];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __77__UINavigationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
      v8[3] = &unk_1E70F3B98;
      v8[4] = self;
      [coordinatorCopy animateAlongsideTransition:v8 completion:0];
    }
  }
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  coordinatorCopy = coordinator;
  if (![(UIViewController *)self _freezeLayoutForOrientationChangeOnDismissal])
  {
    traitCollection = [(UIViewController *)self traitCollection];
    userInterfaceStyle = [collectionCopy userInterfaceStyle];
    if (userInterfaceStyle == [traitCollection userInterfaceStyle] || (objc_msgSend(traitCollection, "_traitCollectionByReplacingNSIntegerValue:forTraitToken:", 0, 0x1EFE323B0), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(collectionCopy, "_traitCollectionByReplacingNSIntegerValue:forTraitToken:", 0, 0x1EFE323B0), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqual:", v11), v11, v10, (v12 & 1) == 0))
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __84__UINavigationController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
      v14[3] = &unk_1E70F3B98;
      v14[4] = self;
      [coordinatorCopy animateAlongsideTransition:v14 completion:0];
    }

    v13.receiver = self;
    v13.super_class = UINavigationController;
    [(UIViewController *)&v13 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
  }
}

void __84__UINavigationController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v4 traitCollection];
  LODWORD(v4) = [v4 _shouldHideBarsForTraits:v5];

  v6 = *(a1 + 32);
  if (v4)
  {
    v7 = [v6 _useCrossFadeForGestureHiding];
    v8 = [*(a1 + 32) _existingNavigationBar];
    if (v8)
    {
      v9 = *(a1 + 32);
      if (v7)
      {
        v10 = 15;
      }

      else
      {
        v10 = 1;
      }

      [v3 transitionDuration];
      [v9 _setNavigationBarHidden:1 edge:v10 duration:?];
    }

    v11 = [*(a1 + 32) _existingToolbarWithItems];

    if (!v11)
    {
      goto LABEL_24;
    }

    v12 = *(a1 + 32);
    if (v7)
    {
      v13 = 15;
    }

    else
    {
      v13 = 4;
    }

    [v3 transitionDuration];
    v14 = v12;
    v15 = 1;
LABEL_23:
    [v14 _setToolbarHidden:v15 edge:v13 duration:?];
LABEL_24:

    goto LABEL_25;
  }

  if (v6[1322] == 1)
  {
    v16 = [v6 _useCrossFadeForGestureHiding];
    v8 = [*(a1 + 32) _existingNavigationBar];
    if (v8)
    {
      v17 = *(a1 + 32);
      if (v16)
      {
        v18 = 15;
      }

      else
      {
        v18 = 1;
      }

      [v3 transitionDuration];
      [v17 _setNavigationBarHidden:0 edge:v18 duration:?];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __84__UINavigationController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke_2;
      v21[3] = &unk_1E70F3590;
      v21[4] = *(a1 + 32);
      [UIView performWithoutAnimation:v21];
    }

    v19 = [*(a1 + 32) _existingToolbarWithItems];

    if (!v19)
    {
      goto LABEL_24;
    }

    v20 = *(a1 + 32);
    if (v16)
    {
      v13 = 15;
    }

    else
    {
      v13 = 4;
    }

    [v3 transitionDuration];
    v14 = v20;
    v15 = 0;
    goto LABEL_23;
  }

LABEL_25:
  [*(a1 + 32) _requestNavigationBarUpdateSearchBarForPlacementChangeIfApplicable];
  [*(a1 + 32) _updateBarsForCurrentInterfaceOrientation];
}

void __84__UINavigationController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _navigationBarForNestedNavigationController];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) _navigationBarForNestedNavigationController];
  [v3 layoutIfNeeded];
}

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  containerCopy = container;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = containerCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = v9;
  if (v9 && ([v9 _existingView], (v11 = objc_claimAutoreleasedReturnValue()) != 0) && (v12 = v11, -[UINavigationController topViewController](self, "topViewController"), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v10 == v13))
  {
    v20 = [(UIViewController *)self _splitViewControllerEnforcingClass:1];
    v21 = v20;
    if (v20 && [v20 _navigationControllerShouldNotAdjustTransitioningSizeForChildContainer:self])
    {
      v35.receiver = self;
      v35.super_class = UINavigationController;
      [(UIViewController *)&v35 sizeForChildContentContainer:containerCopy withParentContainerSize:width, height];
      v15 = v22;
      v17 = v23;
    }

    else
    {
      view = [(UIViewController *)self view];
      [view frame];
      v26 = v25;
      v28 = v27;

      view2 = [v10 view];
      [view2 frame];
      v31 = v30;
      v33 = v32;

      v15 = width - v26 + v31;
      v17 = height - v28 + v33;
    }
  }

  else
  {
    v34.receiver = self;
    v34.super_class = UINavigationController;
    [(UIViewController *)&v34 sizeForChildContentContainer:containerCopy withParentContainerSize:width, height];
    v15 = v14;
    v17 = v16;
  }

  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)willAnimateFirstHalfOfRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  topViewController = [(UINavigationController *)self topViewController];
  [topViewController willAnimateFirstHalfOfRotationToInterfaceOrientation:orientation duration:duration];
}

- (void)didAnimateFirstHalfOfRotationToInterfaceOrientation:(int64_t)orientation
{
  if (![(UINavigationController *)self _shouldUseOnePartRotation])
  {
    [(UINavigationController *)self _updateBarsForCurrentInterfaceOrientation];
  }

  topViewController = [(UINavigationController *)self topViewController];
  [topViewController didAnimateFirstHalfOfRotationToInterfaceOrientation:orientation];
}

- (void)willAnimateSecondHalfOfRotationFromInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  topViewController = [(UINavigationController *)self topViewController];
  [topViewController willAnimateSecondHalfOfRotationFromInterfaceOrientation:orientation duration:duration];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)orientation
{
  topViewController = [(UINavigationController *)self topViewController];
  [topViewController didRotateFromInterfaceOrientation:orientation];
}

- (id)rotatingSnapshotViewForWindow:(id)window
{
  topViewController = [(UINavigationController *)self topViewController];
  view = [topViewController view];

  return view;
}

- (void)updateTitleForViewController:(id)controller
{
  controllerCopy = controller;
  mutableChildViewControllers = [(UIViewController *)self mutableChildViewControllers];
  v5 = mutableChildViewControllers;
  if (mutableChildViewControllers && ![mutableChildViewControllers indexOfObjectIdenticalTo:controllerCopy])
  {
    title = [controllerCopy title];
    [(UIViewController *)self setTitle:title];
  }
}

- (void)_setPreferredNavigationBarPosition:(int64_t)position
{
  if (position == 4 || position == 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:9956 description:@"UINavigationBar does not support UIBarPositionBottom or UIBarPositionBottomAttached"];
  }

  if (self->__preferredNavigationBarPosition != position)
  {
    self->__preferredNavigationBarPosition = position;
    if ([(UINavigationController *)self _isNavigationBarVisible])
    {
      _existingView = [(UIViewController *)self _existingView];
      [_existingView setNeedsLayout];
    }
  }
}

- (double)_statusBarHeightForCurrentInterfaceOrientation
{
  if (self->__positionBarsExclusivelyWithSafeArea)
  {
    selfCopy = self;
    v4 = selfCopy;
    if (self->__positionBarsExclusivelyWithSafeArea && (-[UIViewController _existingView](selfCopy, "_existingView"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 _usesMinimumSafeAreas], v5, v6))
    {
      _existingView = [(UIViewController *)v4 _existingView];
      [_existingView _minimumSafeAreaInsets];
      v9 = v8;
    }

    else
    {
      [(UIViewController *)v4 _contentOverlayInsets];
      v9 = v11;
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = UINavigationController;
    [(UIViewController *)&v13 _statusBarHeightForCurrentInterfaceOrientation];
    return v10;
  }

  return v9;
}

- (int64_t)_positionForBar:(id)bar
{
  barCopy = bar;
  v6 = barCopy;
  if (self->_navigationBar == barCopy)
  {
    preferredNavigationBarPosition = self->__preferredNavigationBarPosition;
    if (!preferredNavigationBarPosition)
    {
      if ([(UINavigationController *)self _viewControllerUnderlapsStatusBar])
      {
        preferredNavigationBarPosition = 3;
      }

      else
      {
        preferredNavigationBarPosition = 2;
      }
    }
  }

  else if (self->_toolbar == barCopy)
  {
    if (dyld_program_sdk_at_least())
    {
      preferredNavigationBarPosition = 4;
    }

    else
    {
      preferredNavigationBarPosition = 1;
    }
  }

  else
  {
    barCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected bar sending delegate -barPositionForBar:! %@", barCopy];
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:10030 description:{@"%@", barCopy}];

    preferredNavigationBarPosition = 0;
  }

  return preferredNavigationBarPosition;
}

- (id)_findViewControllerToPopToForNavigationItem:(id)item
{
  v19 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  mutableChildViewControllers = [(UIViewController *)self mutableChildViewControllers];
  v6 = [mutableChildViewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
  v7 = 0;
  if (v6)
  {
    v8 = *v15;
    while (2)
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(mutableChildViewControllers);
        }

        v11 = *(*(&v14 + 1) + 8 * v9);
        navigationItem = [v11 navigationItem];

        if (navigationItem == itemCopy)
        {
          v7 = v10;
          v6 = v7;
          goto LABEL_11;
        }

        v7 = v11;

        v9 = v9 + 1;
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [mutableChildViewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)_updateNavigationBar:(id)bar fromItems:(id)items toItems:(id)toItems animated:(BOOL)animated
{
  animatedCopy = animated;
  barCopy = bar;
  itemsCopy = items;
  toItemsCopy = toItems;
  v12 = [itemsCopy count];
  if (v12 + 1 == [toItemsCopy count])
  {
    lastObject = itemsCopy;
    v14 = toItemsCopy;
    if ([lastObject count] >= v12 && objc_msgSend(v14, "count") >= v12)
    {
      if (v12 < 1)
      {
LABEL_13:

        lastObject = [v14 lastObject];
        [(UINavigationController *)self navigationBar:barCopy shouldPushItem:lastObject];
        goto LABEL_5;
      }

      v15 = 0;
      while (1)
      {
        v16 = [lastObject objectAtIndexedSubscript:v15];
        v17 = [v14 objectAtIndexedSubscript:v15];

        if (v16 != v17)
        {
          break;
        }

        if (v12 == ++v15)
        {
          goto LABEL_13;
        }
      }
    }

LABEL_5:
  }

  [barCopy setItems:toItemsCopy animated:animatedCopy];
}

- (int64_t)navigationBarNSToolbarSection:(id)section
{
  if ([(UINavigationController *)self navBarWillHideAfterAnimation])
  {
    return 0;
  }

  if (__56__UINavigationController_navigationBarNSToolbarSection___block_invoke(self))
  {
    return 3;
  }

  v5 = [(UIViewController *)self _splitViewControllerEnforcingClass:1];
  if (__56__UINavigationController_navigationBarNSToolbarSection___block_invoke(v5) && (v6 = [v5 _columnForViewController:self], v6 < 5))
  {
    v4 = qword_18A6792E0[v6];
  }

  else
  {
    v7 = [(UIViewController *)self _tabBarControllerEnforcingClass:1];
    if (__56__UINavigationController_navigationBarNSToolbarSection___block_invoke(v7))
    {
      v4 = 3;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

BOOL __56__UINavigationController_navigationBarNSToolbarSection___block_invoke(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = [v1 _window];
  v3 = [v2 rootViewController];

  v4 = __56__UINavigationController_navigationBarNSToolbarSection___block_invoke_2(v1);

  if (v3 == v4)
  {
    v7 = 1;
  }

  else
  {
    v5 = [v4 presentingViewController];
    v6 = __56__UINavigationController_navigationBarNSToolbarSection___block_invoke_2(v5);

    v7 = v6 == v3;
  }

  return v7;
}

id __56__UINavigationController_navigationBarNSToolbarSection___block_invoke_2(void *a1)
{
  v1 = a1;
  v2 = [v1 parentViewController];
  if (v2)
  {
    v3 = v1;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v4 = v2;

      v2 = [v4 parentViewController];

      v3 = v4;
      if (!v2)
      {
        goto LABEL_9;
      }
    }

    v4 = v3;
  }

  else
  {
    v4 = v1;
  }

LABEL_9:

  return v4;
}

- (void)navigationBarDidResizeForPrompt:(id)prompt
{
  [(UINavigationController *)self _layoutTopViewController];
  topViewController = [(UINavigationController *)self topViewController];
  [(UINavigationController *)self _computeAndApplyScrollContentInsetDeltaForViewController:topViewController];
}

- (id)_interfaceOrientationWindowForBar:(id)bar matchingBar:(id)matchingBar
{
  if (bar == matchingBar)
  {
    [(UINavigationController *)self _window];
  }

  else
  {
    [bar window];
  }
  v4 = ;

  return v4;
}

- (BOOL)_toolbarShouldAnimateItemsUpdate:(id)update
{
  if (!_UISwiftUIToolbarEnabled())
  {
    return 0;
  }

  _nestedTopNavigationController = [(UINavigationController *)self _nestedTopNavigationController];
  _transitionAnimationContext = [(UINavigationController *)self _transitionAnimationContext];
  if ([_transitionAnimationContext isAnimated])
  {
    isAnimated = 1;
  }

  else
  {
    _transitionAnimationContext2 = [_nestedTopNavigationController _transitionAnimationContext];
    isAnimated = [_transitionAnimationContext2 isAnimated];
  }

  return isAnimated;
}

- (void)_observableScrollViewDidChangeFrom:(id)from forViewController:(id)controller edges:(unint64_t)edges
{
  fromCopy = from;
  controllerCopy = controller;
  v18.receiver = self;
  v18.super_class = UINavigationController;
  [(UIViewController *)&v18 _observableScrollViewDidChangeFrom:fromCopy forViewController:controllerCopy edges:edges];
  if ((edges & 5) != 0)
  {
    if (edges)
    {
      [(UINavigationController *)self _stopObservingContentScrollView:fromCopy];
    }

    else if ([fromCopy _isScrollViewScrollObserver:self])
    {
      [fromCopy _removeScrollViewScrollObserver:self];
    }

    _viewControllerForObservableScrollView = [(UINavigationController *)self _viewControllerForObservableScrollView];
    if (_viewControllerForObservableScrollView != controllerCopy)
    {
      goto LABEL_29;
    }

    if (edges)
    {
      v11 = [controllerCopy _contentOrObservableScrollViewForEdge:1];
      if ((edges & 4) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v11 = 0;
      if ((edges & 4) == 0)
      {
LABEL_9:
        v12 = 0;
        if (!fromCopy)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }
    }

    v12 = [controllerCopy _contentOrObservableScrollViewForEdge:4];
    if (!fromCopy)
    {
      goto LABEL_15;
    }

LABEL_13:
    if ((edges & 1) != 0 && !v11)
    {
LABEL_16:
      _nestedTopViewController = [(UINavigationController *)self _nestedTopViewController];
      if (v11 == v12)
      {
        edgesCopy = edges;
      }

      else
      {
        edgesCopy = 1;
      }

      [(UINavigationController *)self _updateAndObserveScrollView:v11 viewController:_nestedTopViewController forEdges:edgesCopy];

LABEL_20:
      if (fromCopy && (edges & 4) != 0 && !v12)
      {
        if (!v11)
        {
          goto LABEL_28;
        }
      }

      else
      {
        window = [v12 window];
        if (!window)
        {
          goto LABEL_28;
        }

        if (v12 == v11)
        {
          goto LABEL_28;
        }
      }

      _nestedTopViewController2 = [(UINavigationController *)self _nestedTopViewController];
      [(UINavigationController *)self _updateAndObserveScrollView:v12 viewController:_nestedTopViewController2 forEdges:4];

LABEL_28:
LABEL_29:

      goto LABEL_30;
    }

LABEL_15:
    window2 = [v11 window];

    if (!window2)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

LABEL_30:
}

- (id)_topViewControllerObservableScrollViewForEdge:(unint64_t)edge
{
  _viewControllerForObservableScrollView = [(UINavigationController *)self _viewControllerForObservableScrollView];
  v5 = [_viewControllerForObservableScrollView _contentOrObservableScrollViewForEdge:edge];

  return v5;
}

- (void)_navigationBarChangedSize:(id)size
{
  if (self->_interactiveScrollActive)
  {
    _nestedTopViewController = [(UINavigationController *)self _topViewControllerObservableScrollViewForEdge:1];
    [_nestedTopViewController _setAutomaticContentOffsetAdjustmentEnabled:0];
    [(UINavigationController *)self _reloadCachedInteractiveScrollMeasurements];
    [(UINavigationController *)self _layoutTopViewController];
    [_nestedTopViewController _setAutomaticContentOffsetAdjustmentEnabled:1];
  }

  else
  {
    [(UIView *)self->_containerView setNeedsLayout];
    _nestedTopViewController = [(UINavigationController *)self _nestedTopViewController];
    [(UINavigationController *)self _updateTopViewFramesForViewController:_nestedTopViewController];
    v5 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, _nestedTopViewController, 1, 0);
    [(UINavigationController *)self _updateAndObserveScrollView:v5 viewController:_nestedTopViewController forEdges:1];

    if (self->_externallySetNavControllerPreferredContentSize.width == *MEMORY[0x1E695F060] && self->_externallySetNavControllerPreferredContentSize.height == *(MEMORY[0x1E695F060] + 8))
    {
      [(UINavigationController *)self _setPreferredContentSizeFromChildContentContainer:_nestedTopViewController];
    }

    else
    {
      [(UINavigationController *)self _adjustedContentSizeForPopover:?];
      v8.receiver = self;
      v8.super_class = UINavigationController;
      [(UIViewController *)&v8 setPreferredContentSize:?];
    }
  }

  v7 = [(UIViewController *)self _splitViewControllerEnforcingClass:1];
  [v7 _navigationControllerDidUpdateNavigationBarSize:self];
}

- (void)_popNavigationBar:(id)bar item:(id)item
{
  v17 = *MEMORY[0x1E69E9840];
  barCopy = bar;
  itemCopy = item;
  if ([(UINavigationController *)self _isTransitioning])
  {
    if (![(UINavigationController *)self navigationBar:barCopy shouldPopItem:itemCopy])
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  needsDeferredTransition = [(UINavigationController *)self needsDeferredTransition];
  v10 = [(UINavigationController *)self navigationBar:barCopy shouldPopItem:itemCopy];
  v11 = v10;
  if (!needsDeferredTransition && v10 && ([(UINavigationController *)self _isTransitioning]|| [(UINavigationController *)self needsDeferredTransition]))
  {
    if (dyld_program_sdk_at_least())
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:10336 description:{@"Override of -navigationBar:shouldPopItem: returned YES after manually popping a view controller (navigationController=%@)", self}];
    }

    else
    {
      v14 = *(__UILogGetCategoryCachedImpl("Assert", &_popNavigationBar_item____s_category) + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Override of -navigationBar:shouldPopItem: returned YES after manually popping a view controller (navigationController=%@)", buf, 0xCu);
      }
    }
  }

  else if (v11)
  {
LABEL_11:
    v13 = [(UINavigationController *)self popViewControllerAnimated:1];
  }

LABEL_12:
}

- (BOOL)_isPushingOrPoppingUsingLayoutToLayoutNavigationTransition
{
  if (![(UINavigationController *)self _isPushingOrPopping])
  {
    return 0;
  }

  topViewController = [(UINavigationController *)self topViewController];
  if ([topViewController useLayoutToLayoutNavigationTransitions])
  {
    _isPerformingLayoutToLayoutTransition = [(UINavigationController *)self _isPerformingLayoutToLayoutTransition];
  }

  else
  {
    _isPerformingLayoutToLayoutTransition = 0;
  }

  return _isPerformingLayoutToLayoutTransition;
}

- (void)_updateBottomBarsForNavigationTransition
{
  v26 = *MEMORY[0x1E69E9840];
  _nestedTopViewController = [(UINavigationController *)self _nestedTopViewController];
  v4 = _nestedTopViewController;
  if (_nestedTopViewController)
  {
    v5 = (_nestedTopViewController[94] & 3u) - 1 < 2;
  }

  else
  {
    v5 = 0;
  }

  _existingView = [_nestedTopViewController _existingView];
  window = [_existingView window];

  if (window)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __66__UINavigationController__updateBottomBarsForNavigationTransition__block_invoke;
    v19 = &unk_1E70F35B8;
    selfCopy = self;
    v21 = v4;
    [UIView performWithoutAnimation:&v16];
  }

  else if (v5)
  {
    v8 = *(__UILogGetCategoryCachedImpl("UINavigationController", &_updateBottomBarsForNavigationTransition___s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v24 = 2114;
      v25 = v4;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Top view controller's view unexpectedly not in window for navigation transition. Skipping layout. nav = %{public}@, topVC = %{public}@", buf, 0x16u);
    }
  }

  selfCopy = [(UIViewController *)self _tabBarControllerEnforcingClass:1, v16, v17, v18, v19, selfCopy];
  v10 = selfCopy;
  if (!selfCopy)
  {
    if (v5)
    {
      goto LABEL_13;
    }

LABEL_15:
    [(UINavigationController *)self _setSuspendToolbarBackgroundUpdating:0];
    goto LABEL_17;
  }

  _isBarEffectivelyHidden = [selfCopy _isBarEffectivelyHidden];
  if (!v5)
  {
    if ((_isBarEffectivelyHidden & 1) == 0)
    {
      [v10 _setSuspendBarBackgroundUpdating:0];
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (_isBarEffectivelyHidden)
  {
LABEL_13:
    v14 = [v4 _contentOrObservableScrollViewForEdge:4];
    _existingActiveVisibleToolbar = [(UINavigationController *)self _existingActiveVisibleToolbar];
    [(UINavigationController *)self _updateBackgroundTransitionProgressForScrollView:v14 toolbar:_existingActiveVisibleToolbar isNavigationTransitionUpdate:1];

    goto LABEL_17;
  }

  v12 = [v4 _contentOrObservableScrollViewForEdge:4];
  tabBar = [v10 tabBar];
  [v10 _updateBackgroundTransitionProgressForScrollView:v12 tabBar:tabBar isNavigationTransitionUpdate:1];

LABEL_17:
}

void __66__UINavigationController__updateBottomBarsForNavigationTransition__block_invoke(uint64_t a1)
{
  v5 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(*(a1 + 32), *(a1 + 40), 1, 0);
  v2 = [v5 _isAutomaticContentOffsetAdjustmentEnabled];
  v3 = [v5 _shouldContentOffsetAlwaysIgnoreSafeAreaInsetsChange];
  [v5 _setAutomaticContentOffsetAdjustmentEnabled:0];
  [v5 _setShouldContentOffsetAlwaysIgnoreSafeAreaInsetsChange:1];
  [*(a1 + 40) _updateContentOverlayInsetsFromParentIfNecessary];
  [v5 _setAutomaticContentOffsetAdjustmentEnabled:v2];
  [v5 _setShouldContentOffsetAlwaysIgnoreSafeAreaInsetsChange:v3];
  v4 = [*(a1 + 40) view];
  [v4 layoutIfNeeded];
}

- (void)_startCoordinatedBottomBarUpdateForTransition:(int)transition
{
  if (![(UINavigationController *)self _isNestedNavigationController])
  {
    navigationBar = self->_navigationBar;
    if (transition == 2)
    {
      [_UINavigationBarTransitionAssistant popTransitionAssistantForNavigationBar:navigationBar delegate:self crossfade:0];
    }

    else
    {
      [_UINavigationBarTransitionAssistant pushTransitionAssistantForNavigationBar:navigationBar delegate:self crossfade:transition != 1];
    }
    v6 = ;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__UINavigationController__startCoordinatedBottomBarUpdateForTransition___block_invoke;
    aBlock[3] = &unk_1E70F3590;
    aBlock[4] = self;
    v7 = _Block_copy(aBlock);
    if ([v6 shouldAnimateAlongside])
    {
      transitionCoordinator = [v6 transitionCoordinator];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __72__UINavigationController__startCoordinatedBottomBarUpdateForTransition___block_invoke_2;
      v9[3] = &unk_1E70F3770;
      v10 = v7;
      [transitionCoordinator animateAlongsideTransition:v9 completion:0];
    }

    else
    {
      [v6 duration];
      [UIView animateWithDuration:v7 animations:?];
    }
  }
}

- (void)_navigationBarPrepareToAnimateTransition:(id)transition
{
  topViewController = [(UINavigationController *)self topViewController];
  [topViewController _prepareForNavigationTransition:1];
}

- (void)_navigationBarWillBeginCoordinatedTransitionAnimations:(id)animations
{
  [(UINavigationController *)self _initializeNavigationDeferredTransitionContextIfNecessary];
  if (![(UINavigationController *)self _isPushingOrPoppingUsingLayoutToLayoutNavigationTransition])
  {
    _nestedTopViewController = [(UINavigationController *)self _nestedTopViewController];
    v8 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, _nestedTopViewController, 1, 0);

    _nestedTopViewController2 = [(UINavigationController *)self _nestedTopViewController];
    v6 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, _nestedTopViewController2, 1, 1);

    _safeAreaInsetsFrozen = [v6 _safeAreaInsetsFrozen];
    if (v8 != v6)
    {
      [v6 _setSafeAreaInsetsFrozen:1];
    }

    [(UINavigationController *)self _performCoordinatedUpdateTopFramesTransitionAnimation];
    if ([(UINavigationController *)self _hasPotentiallyChromelessBottomBar])
    {
      [(UINavigationController *)self _updateBottomBarsForNavigationTransition];
    }

    [v6 _setSafeAreaInsetsFrozen:_safeAreaInsetsFrozen updateForUnfreeze:0];
  }
}

- (void)_navigationBarWillRunAutomaticDeferredShowsScopeBar:(id)bar
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __78__UINavigationController__navigationBarWillRunAutomaticDeferredShowsScopeBar___block_invoke;
  v3[3] = &unk_1E70F3590;
  v3[4] = self;
  [UIView animateWithDuration:v3 animations:0.3833];
}

uint64_t __78__UINavigationController__navigationBarWillRunAutomaticDeferredShowsScopeBar___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _performCoordinatedUpdateTopFramesTransitionAnimation];
  v2 = *(*(a1 + 32) + 1000);

  return [v2 layoutIfNeeded];
}

- (void)_navigationBarDidUpdateVisibility:(id)visibility
{
  visibilityCopy = visibility;
  [(UINavigationController *)self _layoutTopViewControllerLookForNested:1];
  topItem = [visibilityCopy topItem];

  -[_UIScrollPocketContainerInteraction _setActive:](self->_navigationBarScrollPocketContainerInteraction, "_setActive:", [topItem _navigationBarVisibility] == 0);
}

- (void)_navigationBarWillChangeHeightForManualShowOrHideOfSearchScopeBar:(id)bar
{
  _existingView = [(UIViewController *)self _existingView];
  if (_existingView && (_existingView[95] & 0x40) == 0)
  {
    v4 = _existingView;
    [_existingView setNeedsLayout];
    _existingView = v4;
  }
}

- (CGRect)_incomingNavigationBarFrame
{
  topViewController = [(UINavigationController *)self topViewController];
  v4 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, topViewController, 1, 0);
  selfCopy = self;
  v6 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(selfCopy, topViewController, 1, 0);
  if ([(UINavigationController *)selfCopy _isPushing])
  {
    v7 = 2;
  }

  else if ([(UINavigationController *)selfCopy _isPopping])
  {
    v7 = 3;
  }

  else
  {
    v7 = v6 != 0;
  }

  v12 = 0u;
  v13 = 0u;
  [(UINavigationController *)selfCopy _calculateTopViewFramesForLayoutWithViewController:topViewController contentScrollView:v4 navBarFrame:&v12 topPaletteFrame:0 topLayoutType:v7];

  v9 = *(&v12 + 1);
  v8 = *&v12;
  v11 = *(&v13 + 1);
  v10 = *&v13;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)_performCoordinatedUpdateTopFramesTransitionAnimation
{
  topViewController = [(UINavigationController *)self topViewController];
  if ([topViewController _isNestedNavigationController])
  {
    v3TopViewController = [topViewController topViewController];

    topViewController = v3TopViewController;
  }

  [(UINavigationController *)self _updateTopViewFramesForViewController:topViewController];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __79__UINavigationController__performCoordinatedUpdateTopFramesTransitionAnimation__block_invoke;
  v5[3] = &unk_1E70F3590;
  v5[4] = self;
  [UIView performWithoutAnimation:v5];
}

- (NSDirectionalEdgeInsets)_layoutMarginsforNavigationBar:(id)bar
{
  barCopy = bar;
  [barCopy _contentMargin];
  v6 = v5;
  v7 = v5;
  if ([barCopy insetsLayoutMarginsFromSafeArea])
  {
    effectiveUserInterfaceLayoutDirection = [barCopy effectiveUserInterfaceLayoutDirection];
    [(UIViewController *)self _contentOverlayInsets];
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v9 = v10;
    }

    v7 = v6 + v9;
    v6 = v6 + v11;
  }

  v12 = 0.0;
  v13 = 0.0;
  v14 = v7;
  v15 = v6;
  result.trailing = v15;
  result.bottom = v13;
  result.leading = v14;
  result.top = v12;
  return result;
}

- (void)_navigationItemDidUpdateSearchController:(id)controller oldSearchController:(id)searchController
{
  v28 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  searchControllerCopy = searchController;
  _outermostNavigationController = [(UINavigationController *)self _outermostNavigationController];
  v9 = _outermostNavigationController;
  if (_outermostNavigationController != self)
  {
    [(UINavigationController *)_outermostNavigationController _navigationItemDidUpdateSearchController:controllerCopy oldSearchController:searchControllerCopy];
  }

  topViewController = [(UINavigationController *)self topViewController];
  navigationItem = [topViewController navigationItem];

  if (navigationItem == controllerCopy)
  {
    if (v9 == self)
    {
      _searchControllerIfAllowed = [controllerCopy _searchControllerIfAllowed];
      searchBar = [_searchControllerIfAllowed searchBar];
      if (([searchBar _isHostedByNavigationBar] & 1) == 0)
      {
LABEL_12:

LABEL_13:
        goto LABEL_14;
      }

      _searchHidNavigationBar = [(UINavigationController *)self _searchHidNavigationBar];

      if (!_searchHidNavigationBar)
      {
        goto LABEL_14;
      }

      [(UINavigationController *)self setNavigationBarHidden:0 animated:0];
      [(UINavigationController *)self _setSearchHidNavigationBar:0];
      if (!os_variant_has_internal_diagnostics())
      {
        goto LABEL_14;
      }

      if (os_variant_has_internal_diagnostics())
      {
        _searchControllerIfAllowed = __UIFaultDebugAssertLog();
        if (!os_log_type_enabled(_searchControllerIfAllowed, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_13;
        }

        v20 = objc_opt_class();
        searchBar = NSStringFromClass(v20);
        v21 = objc_opt_class();
        v18 = NSStringFromClass(v21);
        v22 = 138412802;
        v23 = searchBar;
        v24 = 2112;
        v25 = v18;
        v26 = 2112;
        v27 = controllerCopy;
        _os_log_fault_impl(&dword_188A29000, _searchControllerIfAllowed, OS_LOG_TYPE_FAULT, "navigationItem updated to search controller with search bar hosted in navigation bar after hiding the navigation bar. Fix-up may be preventing a later crash. self is a %@. viewController is a %@. navigationItem = %@", &v22, 0x20u);
        goto LABEL_11;
      }

      v15 = *(__UILogGetCategoryCachedImpl("Assert", &_navigationItemDidUpdateSearchController_oldSearchController____s_category) + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        _searchControllerIfAllowed = v15;
        v16 = objc_opt_class();
        searchBar = NSStringFromClass(v16);
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v22 = 138412802;
        v23 = searchBar;
        v24 = 2112;
        v25 = v18;
        v26 = 2112;
        v27 = controllerCopy;
        _os_log_impl(&dword_188A29000, _searchControllerIfAllowed, OS_LOG_TYPE_ERROR, "navigationItem updated to search controller with search bar hosted in navigation bar after hiding the navigation bar. Fix-up may be preventing a later crash. self is a %@. viewController is a %@. navigationItem = %@", &v22, 0x20u);
LABEL_11:

        goto LABEL_12;
      }
    }

LABEL_14:
    [(UINavigationController *)self _setDefinesPresentationContextIfNecessaryForViewController:topViewController];
    [(UIView *)self->_navigationTransitionView setNeedsLayout];
    [(UIView *)self->_containerView setNeedsLayout];
  }

  _containingTabBarController = [(UIViewController *)self _containingTabBarController];
  [_containingTabBarController _navigationControllerDidUpdateSearchController:self];
}

- (void)_navigationItemDidUpdateToolbarAvoidsKeyboard:(id)keyboard
{
  keyboardCopy = keyboard;
  topViewController = [(UINavigationController *)self topViewController];
  navigationItem = [topViewController navigationItem];

  if (navigationItem == keyboardCopy)
  {
    [(UINavigationController *)self _updateToolbarItemsFromViewController:topViewController animated:0];
  }
}

- (void)setHidesBarsWhenKeyboardAppears:(BOOL)hidesBarsWhenKeyboardAppears
{
  if (self->_hidesBarsWhenKeyboardAppears != hidesBarsWhenKeyboardAppears)
  {
    self->_hidesBarsWhenKeyboardAppears = hidesBarsWhenKeyboardAppears;
    [(UINavigationController *)self _configureKeyboardBarHiding];
  }
}

- (void)_setKeyboardNotificationToken:(id)token
{
  tokenCopy = token;
  if (self->__keyboardAppearedNotificationToken != tokenCopy)
  {
    v7 = tokenCopy;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self->__keyboardAppearedNotificationToken];

    objc_storeStrong(&self->__keyboardAppearedNotificationToken, token);
    tokenCopy = v7;
  }
}

- (void)_hideForKeyboardAppearance
{
  if (![(UINavigationController *)self _isTransitioning])
  {
    _existingView = [(UIViewController *)self _existingView];
    window = [_existingView window];

    if (window)
    {

      [(UINavigationController *)self _setBarsHidden:1 allowAnimation:1];
    }
  }
}

void __53__UINavigationController__configureKeyboardBarHiding__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hideForKeyboardAppearance];
}

- (void)setHidesBarsOnSwipe:(BOOL)hidesBarsOnSwipe
{
  if (self->_hidesBarsOnSwipe != hidesBarsOnSwipe)
  {
    v8 = v3;
    self->_hidesBarsOnSwipe = hidesBarsOnSwipe;
    if (hidesBarsOnSwipe)
    {
      [(UINavigationController *)self _makeBarSwipeGestureIfNecessary];
      [(UINavigationController *)self _makeBarHideGestureIfNecessary];
    }

    [(UINavigationController *)self _configureBarTapGesture:v4];

    [(UINavigationController *)self _configureBarSwipeGesture];
  }
}

- (void)_makeBarSwipeGestureIfNecessary
{
  if (!self->__barSwipeHideGesture)
  {
    v3 = [[_UIBarPanGestureRecognizer alloc] initWithTarget:self action:sel__gestureRecognizedInteractiveHide_];
    barSwipeHideGesture = self->__barSwipeHideGesture;
    self->__barSwipeHideGesture = v3;

    v5 = self->__barSwipeHideGesture;

    [(_UIBarPanGestureRecognizer *)v5 _setDelegate:self];
  }
}

- (UIPanGestureRecognizer)barHideOnSwipeGestureRecognizer
{
  [(UINavigationController *)self _makeBarSwipeGestureIfNecessary];
  barSwipeHideGesture = self->__barSwipeHideGesture;

  return barSwipeHideGesture;
}

- (void)_gestureRecognizedInteractiveHide:(id)hide
{
  hideCopy = hide;
  barAction = [hideCopy barAction];
  if (barAction)
  {
    v7 = barAction;
    _outermostNavigationController = [(UINavigationController *)self _outermostNavigationController];
    state = [hideCopy state];
    _barInteractiveAnimationCoordinator = [(UINavigationController *)self _barInteractiveAnimationCoordinator];
    v11 = _barInteractiveAnimationCoordinator;
    if ((state - 1) <= 1)
    {
      _existingView = [(UIViewController *)self _existingView];
      [hideCopy velocityInView:_existingView];
      v14 = v13;
      if (v11)
      {
        stash = [(_UIAnimationCoordinator *)v11 stash];
        v16 = [stash objectForKeyedSubscript:@"NavigationTransitionFinishedEarly"];
        if ([v16 BOOLValue])
        {
        }

        else
        {
          v79 = _outermostNavigationController;
          v40 = _existingView;
          stash2 = [(_UIAnimationCoordinator *)v11 stash];
          v42 = [stash2 objectForKeyedSubscript:@"NavigationBarAnimateOnEnd"];
          bOOLValue = [v42 BOOLValue];

          if (bOOLValue)
          {
            _existingView = v40;
          }

          else
          {
            stash3 = [(_UIAnimationCoordinator *)v11 stash];
            v62 = [stash3 objectForKeyedSubscript:@"NavigationBarCriticalVelocity"];
            [v62 doubleValue];
            v64 = v63;

            _existingView = v40;
            if ((v7 != 1 || v14 >= v64) && (v7 != 2 || v14 <= v64))
            {
              v71 = v14 < -v64 && v7 == 2;
              v72 = v14 > -v64 && v7 == 1;
              _outermostNavigationController = v79;
              if (v72 || v71)
              {
                stash4 = [(_UIAnimationCoordinator *)v11 stash];
                [stash4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"NavigationTransitionFinishedEarly"];

                [(_UIAnimationCoordinator *)v11 cancelInteractiveAnimation];
                stash5 = [(_UIAnimationCoordinator *)v11 stash];
                v76 = [stash5 objectForKeyedSubscript:@"NavigationBarStartingMode"];
                -[UINavigationController _setBarsHidden:allowAnimation:](self, "_setBarsHidden:allowAnimation:", [v76 BOOLValue], 0);
              }

              else
              {
                _barInteractiveAnimationCoordinator2 = [(UINavigationController *)self _barInteractiveAnimationCoordinator];
                _gestureProgress(_existingView, hideCopy, v11);
                [_barInteractiveAnimationCoordinator2 updateInteractiveProgress:?];
              }

              goto LABEL_47;
            }

            stash6 = [(_UIAnimationCoordinator *)v11 stash];
            [stash6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"NavigationTransitionFinishedEarly"];

            [(_UIAnimationCoordinator *)v11 finishInteractiveAnimation];
          }

          _outermostNavigationController = v79;
        }

LABEL_47:

        goto LABEL_48;
      }

      isNavigationBarHidden = [(UINavigationController *)self isNavigationBarHidden];
      v11 = objc_alloc_init(_UIAnimationCoordinator);
      v80[0] = MEMORY[0x1E69E9820];
      v80[1] = 3221225472;
      v80[2] = __60__UINavigationController__gestureRecognizedInteractiveHide___block_invoke;
      v80[3] = &unk_1E7102BD8;
      v80[4] = self;
      v81 = isNavigationBarHidden;
      [(_UIAnimationCoordinator *)v11 setAnimator:v80];
      _existingView2 = [_outermostNavigationController _existingView];
      [(_UIAnimationCoordinator *)v11 setContainerView:_existingView2];

      topViewController = [_outermostNavigationController topViewController];
      [(_UIAnimationCoordinator *)v11 setViewController:topViewController];

      topViewController2 = [_outermostNavigationController topViewController];
      view = [topViewController2 view];
      [view frame];
      [(_UIAnimationCoordinator *)v11 setStartFrame:?];

      topViewController3 = [_outermostNavigationController topViewController];
      view2 = [topViewController3 view];
      [view2 frame];
      [(_UIAnimationCoordinator *)v11 setEndFrame:?];

      v37 = [MEMORY[0x1E696AD98] numberWithBool:isNavigationBarHidden];
      stash7 = [(_UIAnimationCoordinator *)v11 stash];
      [stash7 setObject:v37 forKeyedSubscript:@"NavigationBarStartingMode"];

      if (v7 == 2 && isNavigationBarHidden)
      {
        stash8 = [(_UIAnimationCoordinator *)v11 stash];
        [stash8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"NavigationBarAnimateOnEnd"];
      }

      else
      {
        v48 = v7 != 1 || isNavigationBarHidden;
        if (v48)
        {
          goto LABEL_40;
        }

        v49 = fabs(v14);
        if (v49 >= 10.0)
        {
          v50 = v49;
        }

        else
        {
          v50 = 10.0;
        }

        objc_opt_self();
        _durationOfSpringAnimation(1.0, 900.0, 50.0, v50);
        [(_UIAnimationCoordinator *)v11 setDuration:?];
        stash8 = [_outermostNavigationController _existingNavigationBar];
        [stash8 frame];
        v52 = v51;
        [(_UIAnimationCoordinator *)v11 animateInteractively];
        [stash8 frame];
        v54 = v53 - v52;
        v55 = [MEMORY[0x1E696AD98] numberWithDouble:v54];
        stash9 = [(_UIAnimationCoordinator *)v11 stash];
        [stash9 setObject:v55 forKeyedSubscript:@"NavigationBarTravelDistance"];

        v57 = MEMORY[0x1E696AD98];
        [(_UIAnimationCoordinator *)v11 duration];
        v59 = [v57 numberWithDouble:v54 / v58];
        stash10 = [(_UIAnimationCoordinator *)v11 stash];
        [stash10 setObject:v59 forKeyedSubscript:@"NavigationBarCriticalVelocity"];
      }

LABEL_40:
      [(UINavigationController *)self _setInteractiveAnimationCoordinator:v11];
      goto LABEL_47;
    }

    if (state == 3)
    {
      if (!_barInteractiveAnimationCoordinator)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:10772 description:{@"Trying to complete an interactive gesture but the animation coordinator is nil! (gesture=%@)", hideCopy}];
      }

      stash11 = [(_UIAnimationCoordinator *)v11 stash];
      v18 = [stash11 objectForKeyedSubscript:@"NavigationTransitionFinishedEarly"];
      bOOLValue2 = [v18 BOOLValue];

      if (bOOLValue2)
      {
        goto LABEL_30;
      }

      _existingView3 = [_outermostNavigationController _existingView];
      _gestureProgress(_existingView3, hideCopy, v11);
      v22 = v21;
      [hideCopy velocityInView:_existingView3];
      v24 = v23;
      stash12 = [(_UIAnimationCoordinator *)v11 stash];
      v26 = [stash12 objectForKeyedSubscript:@"NavigationBarAnimateOnEnd"];
      bOOLValue3 = [v26 BOOLValue];

      if (bOOLValue3)
      {
        if (v24 > 300.0)
        {
          if (v24 < 10.0)
          {
            v24 = 10.0;
          }

          objc_opt_self();
          _durationOfSpringAnimation(1.0, 900.0, 50.0, v24);
          [(_UIAnimationCoordinator *)v11 setDuration:?];
          [(_UIAnimationCoordinator *)v11 animate];
        }

        goto LABEL_29;
      }

      stash13 = [(_UIAnimationCoordinator *)v11 stash];
      v67 = [stash13 objectForKeyedSubscript:@"NavigationBarCriticalVelocity"];
      [v67 doubleValue];
      v69 = v68;

      if (v7 == 1)
      {
        if (v22 >= 0.25 || v24 <= v69)
        {
LABEL_57:
          [(_UIAnimationCoordinator *)v11 finishInteractiveAnimation];
          goto LABEL_29;
        }
      }

      else if (v22 >= 0.5 || v24 >= v69)
      {
        goto LABEL_57;
      }

      [(_UIAnimationCoordinator *)v11 cancelInteractiveAnimation];
      stash14 = [(_UIAnimationCoordinator *)v11 stash];
      v70 = [stash14 objectForKeyedSubscript:@"NavigationBarStartingMode"];
      -[UINavigationController _setBarsHidden:allowAnimation:](self, "_setBarsHidden:allowAnimation:", [v70 BOOLValue], 0);
    }

    else
    {
      if (!_barInteractiveAnimationCoordinator)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:10803 description:{@"Trying to complete an interactive gesture but the animation coordinator is nil! (gesture=%@)", hideCopy}];
      }

      stash15 = [(_UIAnimationCoordinator *)v11 stash];
      v29 = [stash15 objectForKeyedSubscript:@"NavigationTransitionFinishedEarly"];
      if ([v29 BOOLValue])
      {
      }

      else
      {
        stash16 = [(_UIAnimationCoordinator *)v11 stash];
        v45 = [stash16 objectForKeyedSubscript:@"NavigationBarAnimateOnEnd"];
        bOOLValue4 = [v45 BOOLValue];

        if ((bOOLValue4 & 1) == 0)
        {
          [(_UIAnimationCoordinator *)v11 cancelInteractiveAnimation];
        }
      }

      _existingView3 = [(_UIAnimationCoordinator *)v11 stash];
      stash14 = [_existingView3 objectForKeyedSubscript:@"NavigationBarStartingMode"];
      -[UINavigationController _setBarsHidden:allowAnimation:](self, "_setBarsHidden:allowAnimation:", [stash14 BOOLValue], 0);
    }

LABEL_29:
LABEL_30:
    [(UINavigationController *)self _setInteractiveAnimationCoordinator:0];
LABEL_48:

    goto LABEL_49;
  }

  [(UINavigationController *)self _setInteractiveAnimationCoordinator:0];
LABEL_49:
}

- (void)setHidesBarsWhenVerticallyCompact:(BOOL)hidesBarsWhenVerticallyCompact
{
  if (self->_hidesBarsWhenVerticallyCompact != hidesBarsWhenVerticallyCompact)
  {
    self->_hidesBarsWhenVerticallyCompact = hidesBarsWhenVerticallyCompact;
    if (hidesBarsWhenVerticallyCompact)
    {
      [(UINavigationController *)self _makeBarHideGestureIfNecessary];
    }

    [(UINavigationController *)self _configureBarTapGesture];
  }
}

- (void)setHidesBarsOnTap:(BOOL)hidesBarsOnTap
{
  if (self->_hidesBarsOnTap != hidesBarsOnTap)
  {
    self->_hidesBarsOnTap = hidesBarsOnTap;
    if (hidesBarsOnTap)
    {
      [(UINavigationController *)self _makeBarHideGestureIfNecessary];
    }

    [(UINavigationController *)self _configureBarTapGesture];
  }
}

- (void)_makeBarHideGestureIfNecessary
{
  if (!self->__barTapHideGesture)
  {
    v3 = [[_UIBarTapGestureRecognizer alloc] initWithTarget:self action:sel__gestureRecognizedToggleVisibility_];
    barTapHideGesture = self->__barTapHideGesture;
    self->__barTapHideGesture = v3;

    v5 = self->__barTapHideGesture;

    [(_UIBarTapGestureRecognizer *)v5 _setDelegate:self];
  }
}

- (UITapGestureRecognizer)barHideOnTapGestureRecognizer
{
  [(UINavigationController *)self _makeBarHideGestureIfNecessary];
  barTapHideGesture = self->__barTapHideGesture;

  return barTapHideGesture;
}

- (id)_existingToolbarWithItems
{
  _existingToolbar = [(UINavigationController *)self _existingToolbar];
  items = [_existingToolbar items];
  v4 = [items count];

  if (!v4)
  {

    _existingToolbar = 0;
  }

  return _existingToolbar;
}

- (BOOL)_useCrossFadeForGestureHiding
{
  traitCollection = [(UIViewController *)self traitCollection];
  v4 = [(UINavigationController *)self _shouldHideBarsForTraits:traitCollection];

  return v4 && [(UIViewController *)self preferredStatusBarUpdateAnimation]== UIStatusBarAnimationFade;
}

- (void)_gestureRecognizedToggleVisibility:(id)visibility
{
  tapCategory = [visibility tapCategory];
  v6 = tapCategory;
  if (tapCategory <= 5)
  {
    if (((1 << tapCategory) & 0x15) != 0)
    {
      return;
    }

    if (((1 << tapCategory) & 0x28) == 0)
    {
      if (self->_hidesBarsOnTap)
      {
        _navigationBarForNestedNavigationController = [(UINavigationController *)self _navigationBarForNestedNavigationController];

        if (_navigationBarForNestedNavigationController)
        {
          isNavigationBarHidden = [(UINavigationController *)self isNavigationBarHidden];
        }

        else
        {
          _existingToolbarWithItems = [(UINavigationController *)self _existingToolbarWithItems];

          if (!_existingToolbarWithItems)
          {
            return;
          }

          isNavigationBarHidden = [(UINavigationController *)self isToolbarHidden];
        }

        v8 = !isNavigationBarHidden;
        selfCopy2 = self;
        goto LABEL_6;
      }

      if (!self->_hidesBarsWhenVerticallyCompact)
      {
        return;
      }
    }

    selfCopy2 = self;
    v8 = 0;
LABEL_6:

    [(UINavigationController *)selfCopy2 _setBarsHidden:v8];
    return;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:10931 description:{@"Unknown tap gesture category %li", v6}];
}

- (void)_setBarsHidden:(BOOL)hidden
{
  _useCrossFadeForGestureHiding = [(UINavigationController *)self _useCrossFadeForGestureHiding];
  v6 = objc_alloc_init(_UIAnimationCoordinator);
  _outermostNavigationController = [(UINavigationController *)self _outermostNavigationController];
  objc_opt_self();
  _durationOfSpringAnimation(1.0, 900.0, 50.0, 10.0);
  [(_UIAnimationCoordinator *)v6 setDuration:?];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __41__UINavigationController__setBarsHidden___block_invoke;
  v21[3] = &unk_1E7102C00;
  v21[4] = self;
  [(_UIAnimationCoordinator *)v6 setPreperation:v21];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __41__UINavigationController__setBarsHidden___block_invoke_2;
  v16 = &unk_1E7102C28;
  hiddenCopy = hidden;
  v20 = _useCrossFadeForGestureHiding;
  v17 = _outermostNavigationController;
  selfCopy = self;
  v8 = _outermostNavigationController;
  [(_UIAnimationCoordinator *)v6 setAnimator:&v13];
  _existingView = [v8 _existingView];
  [(_UIAnimationCoordinator *)v6 setContainerView:_existingView];

  topViewController = [v8 topViewController];
  [(_UIAnimationCoordinator *)v6 setViewController:topViewController];

  topViewController2 = [v8 topViewController];
  view = [topViewController2 view];
  [view frame];
  [(_UIAnimationCoordinator *)v6 setStartFrame:?];

  [(_UIAnimationCoordinator *)v6 animate];
}

void __41__UINavigationController__setBarsHidden___block_invoke(uint64_t a1, void *a2)
{
  v19 = a2;
  v3 = *(a1 + 32);
  v4 = [v3 topViewController];
  [v3 _frameForViewController:v4];
  [v19 setEndFrame:?];

  [v19 startFrame];
  v6 = v5;
  v8 = v7;
  [v19 endFrame];
  if (v6 != v10 || v8 != v9)
  {
    v12 = [v19 viewController];
    [v19 endFrame];
    v14 = v13;
    v16 = v15;
    v17 = [v19 transitionContext];
    v18 = [v17 _transitionCoordinator];
    [v12 viewWillTransitionToSize:v18 withTransitionCoordinator:{v14, v16}];
  }
}

void __41__UINavigationController__setBarsHidden___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [*(a1 + 32) _existingNavigationBar];
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    if (*(a1 + 49))
    {
      v6 = 15;
    }

    else
    {
      v6 = 1;
    }

    [v16 duration];
    [v4 _setNavigationBarHidden:v5 edge:v6 duration:?];
  }

  v7 = [*(a1 + 40) _existingToolbarWithItems];

  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    if (*(a1 + 49))
    {
      v10 = 15;
    }

    else
    {
      v10 = 4;
    }

    [v16 duration];
    [v8 _setToolbarHidden:v9 edge:v10 duration:?];
  }

  v11 = [*(a1 + 40) _outermostNavigationController];
  v12 = [v11 topViewController];
  v13 = [v12 view];
  [v13 setNeedsLayout];

  v14 = [v11 topViewController];
  v15 = [v14 view];
  [v15 layoutIfNeeded];
}

- (void)_setBarsHidden:(BOOL)hidden allowAnimation:(BOOL)animation
{
  animationCopy = animation;
  hiddenCopy = hidden;
  v7 = +[UIView areAnimationsEnabled];
  _navigationBarForNestedNavigationController = [(UINavigationController *)self _navigationBarForNestedNavigationController];

  if (_navigationBarForNestedNavigationController)
  {
    [(UINavigationController *)self setNavigationBarHidden:hiddenCopy animated:v7 & animationCopy];
  }

  _existingToolbarWithItems = [(UINavigationController *)self _existingToolbarWithItems];

  if (_existingToolbarWithItems)
  {
    [(UINavigationController *)self setToolbarHidden:hiddenCopy animated:v7 & animationCopy];
  }

  _outermostNavigationController = [(UINavigationController *)self _outermostNavigationController];
  topViewController = [_outermostNavigationController topViewController];
  view = [topViewController view];
  [view setNeedsLayout];

  topViewController2 = [_outermostNavigationController topViewController];
  view2 = [topViewController2 view];
  [view2 layoutIfNeeded];
}

- (id)defaultPNGName
{
  topViewController = [(UINavigationController *)self topViewController];
  defaultPNGName = [topViewController defaultPNGName];

  return defaultPNGName;
}

- (void)_setNavigationSoundsEnabled:(BOOL)enabled
{
  v3 = 0x20000000000000;
  if (!enabled)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFDFFFFFFFFFFFFFLL | v3;
}

- (void)updateTabBarItemForViewController:(id)controller
{
  controllerCopy = controller;
  bottomViewController = [(UINavigationController *)self bottomViewController];

  if (bottomViewController == controllerCopy)
  {
    _parentViewController = [(UIViewController *)&self->super.super.super.isa _parentViewController];
    [_parentViewController updateTabBarItemForViewController:self];
  }
}

- (CGSize)_adjustedContentSizeForPopover:(CGSize)popover
{
  height = popover.height;
  width = popover.width;
  if ((*&self->_navigationControllerFlags & 1) == 0)
  {
    navigationBar = [(UINavigationController *)self navigationBar];

    if (navigationBar)
    {
      navigationBar2 = [(UINavigationController *)self navigationBar];
      [navigationBar2 bounds];
      height = height + v8;

      if (_UISMCBarsEnabled())
      {
        traitCollection = [(UIViewController *)self traitCollection];
        _presentationSemanticContext = [traitCollection _presentationSemanticContext];

        if (_presentationSemanticContext == 3)
        {
          navigationBar = self->_navigationBar;
          traitCollection2 = [(UIView *)navigationBar traitCollection];
          [(UINavigationBar *)navigationBar _minimumTopPaddingWithTraitCollection:traitCollection2];
          v14 = v13;

          height = height + v14;
        }
      }
    }
  }

  if (_UIUnifiedToolbarEnabled())
  {
    [(_UIFloatingBarContainer *)self->_floatingBarContainerView toolbarOverlayInset];
    height = height + v15;
  }

  else if ((*&self->_navigationControllerFlags & 2) != 0)
  {
    _existingToolbar = [(UINavigationController *)self _existingToolbar];

    if (_existingToolbar)
    {
      toolbar = [(UINavigationController *)self toolbar];
      [toolbar bounds];
      height = height + v18;
    }
  }

  v19 = width;
  v20 = height;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)setContentSizeForViewInPopover:(CGSize)popover
{
  [(UINavigationController *)self _adjustedContentSizeForPopover:popover.width, popover.height];
  v4.receiver = self;
  v4.super_class = UINavigationController;
  [(UIViewController *)&v4 setContentSizeForViewInPopover:?];
}

- (void)setPreferredContentSize:(CGSize)size
{
  self->_externallySetNavControllerPreferredContentSize = size;
  if (size.width != *MEMORY[0x1E695F060] || size.height != *(MEMORY[0x1E695F060] + 8))
  {
    [(UINavigationController *)self _adjustedContentSizeForPopover:?];
  }

  v5.receiver = self;
  v5.super_class = UINavigationController;
  [(UIViewController *)&v5 setPreferredContentSize:?];
}

- (CGSize)contentSizeForViewInPopover
{
  topViewController = [(UINavigationController *)self topViewController];

  if (topViewController)
  {
    topViewController2 = [(UINavigationController *)self topViewController];
    [topViewController2 view];

    topViewController3 = [(UINavigationController *)self topViewController];
    [topViewController3 contentSizeForViewInPopover];
    v7 = v6;
    v9 = v8;

    [(UINavigationController *)self _adjustedContentSizeForPopover:v7, v9];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = UINavigationController;
    [(UIViewController *)&v12 contentSizeForViewInPopover];
  }

  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)_preferredContentSizeForcingLoad:(BOOL)load
{
  loadCopy = load;
  v18.receiver = self;
  v18.super_class = UINavigationController;
  [(UIViewController *)&v18 preferredContentSize];
  v7 = v6;
  v8 = v5;
  if (v6 == *MEMORY[0x1E695F060] && v5 == *(MEMORY[0x1E695F060] + 8))
  {
    topViewController = [(UINavigationController *)self topViewController];

    if (topViewController)
    {
      topViewController2 = [(UINavigationController *)self topViewController];
      v12 = topViewController2;
      if (loadCopy)
      {
        [topViewController2 view];
      }

      [v12 preferredContentSize];
      v7 = fmax(v14, v7);
      if (v13 == 0.0)
      {
        v8 = fmax(v13, v8);
      }

      else
      {
        [(UINavigationController *)self _adjustedContentSizeForPopover:v7];
        v8 = v15;
      }
    }
  }

  v16 = v7;
  v17 = v8;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)_setPreferredContentSizeFromChildContentContainer:(id)container
{
  containerCopy = container;
  topViewController = [(UINavigationController *)self topViewController];

  if (topViewController == containerCopy)
  {
    [containerCopy preferredContentSize];
    v7 = v6;
    v9 = v8;
    v13.receiver = self;
    v13.super_class = UINavigationController;
    [(UIViewController *)&v13 preferredContentSize];
    if (v7 > 0.0)
    {
      v10 = v7;
    }

    if (v9 > 0.0)
    {
      [(UINavigationController *)self _adjustedContentSizeForPopover:v10, v9];
    }

    v12.receiver = self;
    v12.super_class = UINavigationController;
    [(UIViewController *)&v12 setPreferredContentSize:?];
    self->_externallySetNavControllerPreferredContentSize = *MEMORY[0x1E695F060];
    v11.receiver = self;
    v11.super_class = UINavigationController;
    [(UIViewController *)&v11 preferredContentSizeDidChangeForChildContentContainer:self];
  }
}

- (BOOL)isModalInPopover
{
  v16 = *MEMORY[0x1E69E9840];
  [(UIViewController *)self mutableChildViewControllers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v11 + 1) + 8 * i) isModalInPresentation])
        {

          isModalInPopover = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10.receiver = self;
  v10.super_class = UINavigationController;
  isModalInPopover = [(UIViewController *)&v10 isModalInPopover];
LABEL_11:

  return isModalInPopover;
}

- (id)_viewForContentInPopover
{
  childModalViewController = [(UIViewController *)self childModalViewController];
  if (childModalViewController && (v4 = childModalViewController, -[UIViewController childModalViewController](self, "childModalViewController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isModalInPopover], v5, v4, v6))
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

- (void)_willBecomeContentViewControllerOfPopover:(id)popover
{
  [(UIViewController *)self _setPopoverController:popover];
  if (self->_navigationBar)
  {
    navigationBar = [(UINavigationController *)self navigationBar];
    if ([navigationBar barStyle])
    {
LABEL_3:

      goto LABEL_5;
    }

    WeakRetained = objc_loadWeakRetained(&self->super._popoverController);
    _popoverControllerStyle = [WeakRetained _popoverControllerStyle];

    if (!_popoverControllerStyle)
    {
      navigationBar2 = [(UINavigationController *)self navigationBar];
      self->_savedNavBarStyleBeforeSheet = [navigationBar2 barStyle];

      navigationBar = [(UINavigationController *)self navigationBar];
      [navigationBar setBarStyle:4];
      goto LABEL_3;
    }
  }

LABEL_5:
  if (!self->_toolbar)
  {
    goto LABEL_9;
  }

  toolbar = [(UINavigationController *)self toolbar];
  if ([toolbar barStyle])
  {
    goto LABEL_7;
  }

  v8 = objc_loadWeakRetained(&self->super._popoverController);
  _popoverControllerStyle2 = [v8 _popoverControllerStyle];

  if (!_popoverControllerStyle2)
  {
    toolbar2 = [(UINavigationController *)self toolbar];
    self->_savedToolBarStyleBeforeSheet = [toolbar2 barStyle];

    toolbar = [(UINavigationController *)self toolbar];
    [toolbar setBarStyle:4];
LABEL_7:
  }

LABEL_9:
  [(UINavigationController *)self _setClipUnderlapWhileTransitioning:1];

  [(UINavigationController *)self _startDeferredTransitionIfNeeded];
}

- (void)_didResignContentViewControllerOfPopover:(id)popover
{
  popoverCopy = popover;
  [(UINavigationController *)self _setClipUnderlapWhileTransitioning:0];
  _popoverController = [(UIViewController *)self _popoverController];

  if (_popoverController == popoverCopy)
  {
    [(UIViewController *)self _setPopoverController:0];
    navigationBar = [(UINavigationController *)self navigationBar];
    if (navigationBar)
    {
      v6 = navigationBar;
      navigationBar2 = [(UINavigationController *)self navigationBar];
      barStyle = [navigationBar2 barStyle];

      if (barStyle == 4)
      {
        savedNavBarStyleBeforeSheet = self->_savedNavBarStyleBeforeSheet;
        navigationBar3 = [(UINavigationController *)self navigationBar];
        [navigationBar3 setBarStyle:savedNavBarStyleBeforeSheet];
      }
    }

    toolbar = [(UINavigationController *)self toolbar];
    if (toolbar)
    {
      v12 = toolbar;
      toolbar2 = [(UINavigationController *)self toolbar];
      barStyle2 = [toolbar2 barStyle];

      if (barStyle2 == 4)
      {
        savedToolBarStyleBeforeSheet = self->_savedToolBarStyleBeforeSheet;
        toolbar3 = [(UINavigationController *)self toolbar];
        [toolbar3 setBarStyle:savedToolBarStyleBeforeSheet];
      }
    }
  }

  [popoverCopy _stopWatchingForNavigationControllerNotifications:self];
}

- (void)_forwardPaletteToViewControllerIfNeeded:(id)needed
{
  neededCopy = needed;
  disappearingViewController = [(UINavigationController *)self disappearingViewController];
  navigationItem = [disappearingViewController navigationItem];
  _bottomPalette = [navigationItem _bottomPalette];

  if ([_bottomPalette isPinned])
  {
    navigationItem2 = [neededCopy navigationItem];
    [navigationItem2 _setBottomPalette:_bottomPalette];
  }
}

- (void)_setCreatedBySplitViewController:(BOOL)controller
{
  if (controller)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_navigationControllerFlags + 8) = *(&self->_navigationControllerFlags + 8) & 0xFD | v3;
}

- (void)_executeSplitViewControllerActions:(id)actions
{
  p_navigationControllerFlags = &self->_navigationControllerFlags;
  v4 = *(&self->_navigationControllerFlags + 8);
  *(&self->_navigationControllerFlags + 8) = v4 | 4;
  (*(actions + 2))(actions, a2);
  *(p_navigationControllerFlags + 8) = *(p_navigationControllerFlags + 8) & 0xFB | v4 & 4;
}

- (void)_updateEnclosingSplitViewControllerForTopViewControllerChange
{
  if ((*(&self->_navigationControllerFlags + 8) & 4) == 0)
  {
    v3 = [(UIViewController *)self _splitViewControllerEnforcingClass:1];
    [v3 _navigationControllerDidUpdateTopViewController:self];
  }
}

- (void)_navigationBar:(id)bar topItemUpdatedContentLayout:(id)layout
{
  layoutCopy = layout;
  barCopy = bar;
  v8 = [(UIViewController *)self _splitViewControllerEnforcingClass:1];
  [v8 _navigationController:self navigationBar:barCopy topItemUpdatedContentLayout:layoutCopy];
}

- (void)_navigationBar:(id)bar itemBackButtonUpdated:(id)updated
{
  updatedCopy = updated;
  barCopy = bar;
  v8 = [(UIViewController *)self _splitViewControllerEnforcingClass:1];
  [v8 _navigationController:self navigationBar:barCopy itemBackButtonUpdated:updatedCopy];
}

- (id)_navigationBarAdditionalActionsForBackButtonMenu:(id)menu
{
  menuCopy = menu;
  v5 = [(UIViewController *)self _splitViewControllerEnforcingClass:1];
  v6 = [v5 _navigationController:self navigationBarAdditionalActionsForBackButtonMenu:menuCopy];

  return v6;
}

- (BOOL)_navigationBarShouldShowSidebarToggleInNSToolbar:(id)toolbar
{
  v3 = [(UIViewController *)self _splitViewControllerEnforcingClass:1];
  _needsNSToolbarSidebarToggle = [v3 _needsNSToolbarSidebarToggle];

  return _needsNSToolbarSidebarToggle;
}

- (void)_navigationBar:(id)bar topItemUpdatedSearchBarPlacementAllowsToolbarIntegration:(id)integration
{
  integrationCopy = integration;
  _searchControllerIfAllowed = [integrationCopy _searchControllerIfAllowed];
  if (_searchControllerIfAllowed)
  {
    _nestedTopViewController = [(UINavigationController *)self _nestedTopViewController];
    [_nestedTopViewController _invalidateRelevantToolbarItems];
    [(UINavigationController *)self _updateToolbarItemsFromViewController:_nestedTopViewController animated:0];
    if (([integrationCopy searchBarPlacementAllowsToolbarIntegration] & 1) == 0 && objc_msgSend(_searchControllerIfAllowed, "_isSearchTextFieldBorrowed"))
    {
      [_searchControllerIfAllowed _setInlineSearchAccessoryEnabled:0];
    }
  }
}

- (void)_navigationBar:(id)bar topItemUpdatedSearchBarPlacementAllowsExternalIntegration:(id)integration
{
  integration = [(UIViewController *)self _splitViewControllerEnforcingClass:1, integration];
  if (integration)
  {
    v5 = integration;
    [integration _updateForGlobalSearchControllerChange];
    integration = v5;
  }
}

- (void)_navigationBar:(id)bar topItemUpdatedSearchController:(id)controller
{
  v5 = [(UINavigationController *)self _nestedTopViewController:bar];
  [v5 _invalidateRelevantToolbarItems];
  [(UINavigationController *)self _updateToolbarItemsFromViewController:v5 animated:0];
}

- (id)_effectiveDelegateForNavigationItem:(id)item
{
  v26 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  disappearingViewController = [(UINavigationController *)self disappearingViewController];
  _existingNavigationItem = [disappearingViewController _existingNavigationItem];

  if (_existingNavigationItem == itemCopy)
  {
    selfCopy = self;
    goto LABEL_23;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  childViewControllers = [(UIViewController *)self childViewControllers];
  v8 = [childViewControllers countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v8)
  {
    selfCopy = 0;
    goto LABEL_22;
  }

  v9 = v8;
  selfCopy = 0;
  v11 = *v22;
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(childViewControllers);
      }

      v13 = *(*(&v21 + 1) + 8 * i);
      _existingNavigationItem2 = [v13 _existingNavigationItem];

      if (_existingNavigationItem2 == itemCopy)
      {
        selfCopy2 = self;
LABEL_21:

        selfCopy = selfCopy2;
        goto LABEL_22;
      }

      if (![v13 _isNestedNavigationController])
      {
        continue;
      }

      v15 = v13;
      bottomViewController = [(UINavigationController *)v15 bottomViewController];
      _existingNavigationItem3 = [bottomViewController _existingNavigationItem];

      if (_existingNavigationItem3 == itemCopy)
      {
        selfCopy3 = self;

        selfCopy = selfCopy3;
        goto LABEL_13;
      }

      selfCopy2 = [(UINavigationController *)v15 _effectiveDelegateForNavigationItem:itemCopy];

      if (selfCopy2)
      {
        selfCopy = v15;
        goto LABEL_21;
      }

      selfCopy = 0;
LABEL_13:
    }

    v9 = [childViewControllers countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_22:

LABEL_23:

  return selfCopy;
}

- (void)_collapseViewController:(id)controller forSplitViewController:(id)viewController
{
  v30 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  viewControllerCopy = viewController;
  if ([controllerCopy _isNavigationController])
  {
    v9 = controllerCopy;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = v10;
  if (v10)
  {
    v12 = *(v10 + 161) & 0x1000000000000;
    *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFEFFFFFFFFFFFFLL | v12;
    if (!v12)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if ((*&self->_navigationControllerFlags & 0x1000000000000) != 0)
  {
LABEL_6:
    [(UINavigationController *)self setNavigationBarHidden:1 animated:0];
  }

LABEL_7:
  _keyboardSceneDelegate = [(UIViewController *)self _keyboardSceneDelegate];
  responder = [_keyboardSceneDelegate responder];
  v15 = [controllerCopy _shouldAttemptToPreserveInputViewsForResponder:responder];

  if (v15)
  {
    responder2 = [_keyboardSceneDelegate responder];
    [responder2 _setShouldEndWritingToolsOnResign:0];

    v17 = [MEMORY[0x1E696B098] valueWithPointer:controllerCopy];
    [_keyboardSceneDelegate _preserveInputViewsWithId:v17];

    responder3 = [_keyboardSceneDelegate responder];
    [responder3 resignFirstResponder];
  }

  if (os_variant_has_internal_diagnostics())
  {
    v28 = *(__UILogGetCategoryCachedImpl("UINavigationController", &qword_1ED4979D8) + 8);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 138477827;
      *&v29[4] = controllerCopy;
      _os_log_impl(&dword_188A29000, v28, OS_LOG_TYPE_DEFAULT, "UINavigationController for collapsing UISplitViewController about to push view controller %{private}@", v29, 0xCu);
    }
  }

  else
  {
    _panelImpl = [viewControllerCopy _panelImpl];

    if (!_panelImpl)
    {
      v20 = *(__UILogGetCategoryCachedImpl("UISplitViewController", &qword_1ED4979E0) + 8);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        *v29 = 138543618;
        *&v29[4] = objc_opt_class();
        *&v29[12] = 2048;
        *&v29[14] = controllerCopy;
        v22 = *&v29[4];
        _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_DEFAULT, "UINavigationController for collapsing UISplitViewController about to push view controller <%{public}@: %p>", v29, 0x16u);
      }

      if ([viewControllerCopy isCollapsed])
      {
        viewControllers = [(UINavigationController *)self viewControllers];
        v24 = [viewControllers containsObject:controllerCopy];

        if (v24)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:11501 description:@"UISplitViewController collapse will push the same view controller a second time"];
        }
      }
    }
  }

  [(UINavigationController *)self pushViewController:controllerCopy animated:0];
  v26 = [MEMORY[0x1E696B098] valueWithPointer:controllerCopy];
  [_keyboardSceneDelegate _restoreInputViewsWithId:v26 animated:0];

  responder4 = [_keyboardSceneDelegate responder];
  [responder4 _setShouldEndWritingToolsOnResign:1];
}

- (id)_separateViewControllersAfterAndIncludingViewController:(id)controller forSplitViewController:(id)viewController
{
  v23[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  topViewController = [(UINavigationController *)self topViewController];
  v7 = topViewController;
  if (controllerCopy)
  {
    v8 = controllerCopy;
  }

  else
  {
    v8 = topViewController;
  }

  v9 = v8;
  viewControllers = [(UINavigationController *)self viewControllers];
  v11 = viewControllers;
  v12 = MEMORY[0x1E695E0F0];
  if (v9)
  {
    v13 = [viewControllers indexOfObject:v9];
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = v9;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
      goto LABEL_23;
    }

    v14 = v13;
    if ([v9 _isNavigationController])
    {
      navigationControllerFlags = self->_navigationControllerFlags;
      v9[161] = v9[161] & 0xFFFEFFFFFFFFFFFFLL | ((HIWORD(navigationControllerFlags) & 1) << 48);
      if ((navigationControllerFlags & 0x1000000000000) != 0)
      {
        *&self->_navigationControllerFlags &= ~0x1000000000000uLL;
        [(UINavigationController *)self setNavigationBarHidden:0];
      }
    }

    if (controllerCopy || v14 != [v11 count] - 1)
    {
      if (!v14)
      {
        [(UINavigationController *)self setViewControllers:MEMORY[0x1E695E0F0] animated:0];
        v19 = 0;
        goto LABEL_19;
      }

      v17 = [v11 objectAtIndexedSubscript:v14 - 1];
      v18 = [(UINavigationController *)self popToViewController:v17 animated:0];
    }

    else
    {
      v16 = [(UINavigationController *)self popViewControllerAnimated:0];
      v17 = v16;
      if (!v16)
      {
        v19 = 0;
        goto LABEL_17;
      }

      v23[0] = v16;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    }

    v19 = v18;
LABEL_17:

LABEL_19:
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v12;
    }

    v12 = v20;
  }

LABEL_23:

  return v12;
}

- (id)_moreListTitle
{
  bottomViewController = [(UINavigationController *)self bottomViewController];
  _moreListTitle = [bottomViewController _moreListTitle];

  return _moreListTitle;
}

- (id)moreListImage
{
  bottomViewController = [(UINavigationController *)self bottomViewController];
  moreListImage = [bottomViewController moreListImage];

  return moreListImage;
}

- (id)moreListSelectedImage
{
  bottomViewController = [(UINavigationController *)self bottomViewController];
  moreListSelectedImage = [bottomViewController moreListSelectedImage];

  return moreListSelectedImage;
}

- (id)moreListTableCell
{
  bottomViewController = [(UINavigationController *)self bottomViewController];
  moreListTableCell = [bottomViewController moreListTableCell];

  return moreListTableCell;
}

- (void)_ensureToViewControllersViewIsLoaded:(id)loaded
{
  loadedCopy = loaded;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    topViewController = [loadedCopy topViewController];
    [topViewController loadViewIfNeeded];
  }

  [loadedCopy loadViewIfNeeded];
}

- (void)transitionConductorWillStartImmediateTransition:(id)transition
{
  *&self->_navigationControllerFlags |= 4uLL;
  _outermostNavigationController = [(UINavigationController *)self _outermostNavigationController];
  _outermostNavigationController[161] |= 8uLL;
}

- (void)transitionConductor:(id)conductor beginPinningInputViewsForTransitionFromViewController:(id)controller toViewController:(id)viewController forTransitionType:(int)type
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  _focusBehavior = [(UIViewController *)self _focusBehavior];
  if ([_focusBehavior syncsFocusAndResponder])
  {
    _focusSystem = [(UIViewController *)self _focusSystem];
    focusedItem = [_focusSystem focusedItem];

    if (focusedItem)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  presentedViewController = [(UIViewController *)self presentedViewController];
  if (presentedViewController)
  {
    goto LABEL_6;
  }

  if (![viewControllerCopy _containedInAbsoluteResponderChain])
  {
    goto LABEL_12;
  }

  if (([viewControllerCopy _containsFirstResponder] & 1) == 0 && !-[UIResponder _disableAutomaticKeyboardBehavior](self, "_disableAutomaticKeyboardBehavior"))
  {
    presentedViewController = [(UIViewController *)self _keyboardSceneDelegate];
    v15 = ((type - 17) < 0xFFFFFFFE) & [(UINavigationController *)self _isViewControllerFullWidth];
    if (v15 == 1)
    {
      [presentedViewController _setIgnoresPinning:1 allowImmediateReload:0];
    }

    parentViewController = [(UIViewController *)self parentViewController];
    _isHostedRootViewController = [parentViewController _isHostedRootViewController];

    if (controllerCopy)
    {
      v18 = 1;
    }

    else
    {
      presentingViewController = [(UIViewController *)self presentingViewController];

      v20 = (presentingViewController != 0) | _isHostedRootViewController;
      if (presentingViewController)
      {
        v21 = 1;
      }

      else
      {
        v21 = _isHostedRootViewController;
      }

      if (v21)
      {
        v18 = 1;
        v22 = 1;
        if (v20)
        {
          goto LABEL_27;
        }
      }

      else
      {
        [presentedViewController _beginDisablingAnimations];
        v18 = (presentingViewController != 0) | _isHostedRootViewController;
      }
    }

    _keyboardAnimationStyle = [(UINavigationController *)self _keyboardAnimationStyle];
    [presentedViewController pushAnimationStyle:_keyboardAnimationStyle];

    v22 = 0;
LABEL_27:
    if (([viewControllerCopy becomeFirstResponder] & 1) == 0)
    {
      _keyboardAnimationStyle2 = [(UINavigationController *)self _keyboardAnimationStyle];
      [presentedViewController pushAnimationStyle:_keyboardAnimationStyle2];

      responder = [presentedViewController responder];
      v26 = [controllerCopy _shouldAttemptToPreserveInputViewsForResponder:responder];

      if (v26)
      {
        v27 = [MEMORY[0x1E696B098] valueWithPointer:controllerCopy];
        [presentedViewController _preserveInputViewsWithId:v27 animated:1];

        responder2 = [presentedViewController responder];
        [responder2 resignFirstResponder];
      }

      else
      {
        responder2 = [presentedViewController responder];
        [responder2 _clearBecomeFirstResponderWhenCapable];
      }

      [presentedViewController popAnimationStyle];
      responder3 = [presentedViewController responder];

      if (!responder3)
      {
        v30 = [MEMORY[0x1E696B098] valueWithPointer:viewControllerCopy];
        [presentedViewController _restoreInputViewsWithId:v30 animated:1];
      }
    }

    if (v22)
    {
      if (v18)
      {
        goto LABEL_35;
      }
    }

    else
    {
      [presentedViewController popAnimationStyle];
      if (v18)
      {
LABEL_35:
        if (!v15)
        {
          goto LABEL_6;
        }

LABEL_39:
        [presentedViewController _setIgnoresPinning:0 allowImmediateReload:0];
        goto LABEL_6;
      }
    }

    [presentedViewController _endDisablingAnimations];
    if (!v15)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

  if ([controllerCopy _containsFirstResponder])
  {
    presentedViewController = [(UIViewController *)self _keyboardSceneDelegate];
    responder4 = [presentedViewController responder];
    [responder4 resignFirstResponder];

LABEL_6:
  }

LABEL_12:
}

- (void)transitionConductor:(id)conductor willTransitionFromViewController:(id)controller toViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  [(UINavigationController *)self _initializeNavigationDeferredTransitionContextIfNecessary];
  _focusSystem = [(UIViewController *)self _focusSystem];
  if (controllerCopy)
  {
    if ([controllerCopy isViewLoaded])
    {
      view = [controllerCopy view];
      v10 = [_focusSystem _focusedItemIsContainedInEnvironment:view includeSelf:1];

      if (v10)
      {
        focusedItem = [_focusSystem focusedItem];
        [(UINavigationController *)self _rememberFocusedItem:focusedItem forViewController:controllerCopy];
      }
    }
  }

  [(UINavigationController *)self _ensureToViewControllersViewIsLoaded:viewControllerCopy];
}

- (id)transitionConductor:(id)conductor retargetedToViewControllerForTransitionFromViewController:(id)controller toViewController:(id)viewController transition:(int)transition
{
  conductorCopy = conductor;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  navigationControllerFlags = self->_navigationControllerFlags;
  v12 = (navigationControllerFlags >> 8) & 1;
  hostIsAppearingAnimated = v12;
  _appearState = [(UIViewController *)self _appearState];
  v15 = _appearState - 3;
  if (controllerCopy == viewControllerCopy || v15 < 0xFFFFFFFE)
  {
    goto LABEL_18;
  }

  v16 = _appearState;
  if (_appearState == 1)
  {
    hostIsAppearingAnimated = [conductorCopy hostIsAppearingAnimated];
  }

  if ((*&self->_navigationControllerFlags & 0x1000) == 0)
  {
    v17 = controllerCopy;
    if ((navigationControllerFlags & 0x100) == 0)
    {
      v17 = controllerCopy;
      if ((*&self->_navigationControllerFlags & 0xF0) == 0x20)
      {
        parentViewController = [controllerCopy parentViewController];

        v17 = controllerCopy;
        if (!parentViewController)
        {
          if (controllerCopy)
          {
            v20 = controllerCopy[192];
            controllerCopy[192] = v20 | 0x100;
            [controllerCopy setParentViewController:self];
            controllerCopy[192] = controllerCopy[192] & 0xFEFF | v20 & 0x100;
            [controllerCopy beginAppearanceTransition:0 animated:hostIsAppearingAnimated];
            v21 = controllerCopy[192];
            controllerCopy[192] = v21 | 0x100;
            [controllerCopy setParentViewController:0];
            controllerCopy[192] = controllerCopy[192] & 0xFEFF | v21 & 0x100;
            v19 = self->_navigationControllerFlags;
            goto LABEL_16;
          }

          v17 = 0;
        }
      }
    }

    [v17 beginAppearanceTransition:0 animated:hostIsAppearingAnimated];
  }

  v19 = self->_navigationControllerFlags;
  if (!controllerCopy && v16 == 1)
  {
    if ((v19 & 0x8000000001000) == 0)
    {
      [viewControllerCopy __viewWillAppear:hostIsAppearingAnimated];
    }

    goto LABEL_18;
  }

LABEL_16:
  if ((v19 & 0x1000) == 0)
  {
    [viewControllerCopy beginAppearanceTransition:1 animated:hostIsAppearingAnimated];
  }

LABEL_18:
  if (dyld_program_sdk_at_least())
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    WeakRetained = [(UINavigationController *)self delegate];
  }

  v23 = WeakRetained;
  if (v15 >= 0xFFFFFFFE && (objc_opt_respondsToSelector() & 1) != 0)
  {
    topViewController = [(UINavigationController *)self topViewController];
    if (topViewController)
    {
      [v23 navigationController:self willShowViewController:topViewController animated:v12];
    }

    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  topViewController2 = [(UINavigationController *)self topViewController];
  if (topViewController2 == viewControllerCopy)
  {
    v28 = viewControllerCopy;
  }

  else
  {
    do
    {
      parentViewController2 = [viewControllerCopy parentViewController];
      [viewControllerCopy didMoveToParentViewController:parentViewController2];

      [viewControllerCopy cancelBeginAppearanceTransition];
      [topViewController2 loadViewIfRequired];
      v28 = topViewController2;

      [v28 beginAppearanceTransition:1 animated:hostIsAppearingAnimated];
      topViewController2 = [(UINavigationController *)self topViewController];

      if (topViewController2)
      {
        v29 = v25;
      }

      else
      {
        v29 = 0;
      }

      if (v29 == 1)
      {
        [v23 navigationController:self willShowViewController:topViewController2 animated:v12];
      }

      viewControllerCopy = v28;
    }

    while (v28 != topViewController2);
  }

  [(UINavigationController *)self willShowViewController:v28 animated:v12];
  [(UINavigationController *)self _privateWillShowViewController:v28];
  v30 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  v31 = v30;
  if (controllerCopy)
  {
    [v30 setObject:controllerCopy forKey:@"UINavigationControllerLastVisibleViewController"];
  }

  if (!v28)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithBool:v12];
    [v31 setObject:v36 forKey:@"UINavigationControllerTransitionIsAnimated"];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"UINavigationControllerWillShowViewControllerNotification" object:self userInfo:v31];
    goto LABEL_46;
  }

  [v31 setObject:v28 forKey:@"UINavigationControllerNextVisibleViewController"];
  v32 = [MEMORY[0x1E696AD98] numberWithBool:v12];
  [v31 setObject:v32 forKey:@"UINavigationControllerTransitionIsAnimated"];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 postNotificationName:@"UINavigationControllerWillShowViewControllerNotification" object:self userInfo:v31];

  if (transition)
  {
    *&self->_navigationControllerFlags |= 0x200uLL;
    defaultCenter = [(UIViewController *)self _keyboardSceneDelegate];
    _keyboardAnimationStyle = [(UINavigationController *)self _keyboardAnimationStyle];
    [defaultCenter pushAnimationStyle:_keyboardAnimationStyle];

LABEL_46:
    goto LABEL_47;
  }

  defaultCenter = [(UINavigationController *)self _window];
  if (([defaultCenter isTrackingKeyboard] & 1) == 0)
  {
    goto LABEL_46;
  }

  _keyboardSceneDelegate = [(UIViewController *)self _keyboardSceneDelegate];
  hasTrackingAvailable = [_keyboardSceneDelegate hasTrackingAvailable];

  if ((hasTrackingAvailable & 1) == 0)
  {
    if (!self->_keyboardLayoutGuideTransitionAssertion)
    {
      goto LABEL_45;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v44 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
        *v48 = 0;
        _os_log_fault_impl(&dword_188A29000, v44, OS_LOG_TYPE_FAULT, "Should not already have a KLG transition assertion when starting a non-animated navigation transition", v48, 2u);
      }
    }

    else
    {
      v43 = *(__UILogGetCategoryCachedImpl("Assert", &transitionConductor_retargetedToViewControllerForTransitionFromViewController_toViewController_transition____s_category) + 8);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v43, OS_LOG_TYPE_ERROR, "Should not already have a KLG transition assertion when starting a non-animated navigation transition", buf, 2u);
      }
    }

    if (!self->_keyboardLayoutGuideTransitionAssertion)
    {
LABEL_45:
      defaultCenter = [(UINavigationController *)self _window];
      v39 = [defaultCenter _obtainKeyboardLayoutGuideTransitionAssertionForReason:@"UINavigationController unanimated transition"];
      keyboardLayoutGuideTransitionAssertion = self->_keyboardLayoutGuideTransitionAssertion;
      self->_keyboardLayoutGuideTransitionAssertion = v39;

      goto LABEL_46;
    }
  }

LABEL_47:
  [(UINavigationController *)self _presentationTransitionUnwrapViewController:v28];
  v41 = v28;

  return v28;
}

- (void)transitionConductor:(id)conductor didStartDeferredTransition:(BOOL)transition context:(id)context
{
  transitionCopy = transition;
  conductorCopy = conductor;
  contextCopy = context;
  if (contextCopy || ([conductorCopy transitionContext], v35 = objc_claimAutoreleasedReturnValue(), v35, !v35))
  {
    if (transitionCopy)
    {
      fromViewController = [contextCopy fromViewController];
      if ((*&self->_navigationControllerFlags & 0xF0) == 0x20 || (*&self->_navigationControllerFlags & 0x4000000000000) != 0)
      {
        if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_NavigationControllerShouldMaintainOverrideTraitCollectionForPoppingViewController, @"NavigationControllerShouldMaintainOverrideTraitCollectionForPoppingViewController", _UIInternalPreferenceUpdateBool) & 1) != 0 || byte_1ED48AC44)
        {
          v11 = [(UIViewController *)self overrideTraitCollectionForChildViewController:fromViewController];
          overrideTraitCollectionForPoppingViewControler = self->_overrideTraitCollectionForPoppingViewControler;
          self->_overrideTraitCollectionForPoppingViewControler = v11;

          [fromViewController set_departingParentViewController:self];
        }

        [(UINavigationController *)self removeChildViewController:fromViewController notifyDidMove:0];
      }

      topViewController = [(UINavigationController *)self topViewController];
      childModalViewController = [topViewController childModalViewController];

      if (childModalViewController)
      {
        view = [topViewController view];
        superview = [view superview];

        if (superview)
        {
          [superview bounds];
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v24 = v23;
          view2 = [topViewController view];
          [view2 setFrame:{v18, v20, v22, v24}];

          presentedViewController = [topViewController presentedViewController];
          presentationController = [presentedViewController presentationController];
          containerView = [presentationController containerView];
          [containerView setFrame:{v18, v20, v22, v24}];

          presentedViewController2 = [topViewController presentedViewController];
          presentationController2 = [presentedViewController2 presentationController];
          containerView2 = [presentationController2 containerView];
          [superview addSubview:containerView2];
        }
      }

      [(UINavigationController *)self _notifyTransitionBegan:contextCopy];
    }

    if ((*&self->_navigationControllerFlags & 4) == 0)
    {
      [(UINavigationController *)self _clearLastOperation];
    }

    if (transitionCopy)
    {
      topViewController2 = [(UINavigationController *)self topViewController];
      if (_UISolariumEnabled())
      {
        [topViewController2 _invalidateRelevantToolbarItems];
      }
    }

    else
    {
      [(UINavigationController *)self _layoutTopViewController];
      topViewController2 = [(UINavigationController *)self topViewController];
    }

    if ((*&self->_navigationControllerFlags & 2) != 0)
    {
      _relevantToolbarItems = [topViewController2 _relevantToolbarItems];
      v34 = [_relevantToolbarItems count];

      if (v34)
      {
        if (_UIUnifiedToolbarEnabled())
        {
          if (transitionCopy)
          {
            [(UINavigationController *)self _updateFloatingBarContentAnimated:(*&self->_navigationControllerFlags >> 8) & 1];
          }
        }

        else
        {
          _existingToolbar = [(UINavigationController *)self _existingToolbar];
          topViewController3 = [(UINavigationController *)self topViewController];
          _updateToolbarForViewControllerAnimated(_existingToolbar, topViewController3, (*&self->_navigationControllerFlags >> 8) & 1);
        }
      }
    }

    _updateNavigationBarHandler = [(UINavigationController *)self _updateNavigationBarHandler];

    if (_updateNavigationBarHandler)
    {
      _updateNavigationBarHandler2 = [(UINavigationController *)self _updateNavigationBarHandler];
      [(UINavigationController *)self _setUpdateNavigationBarHandler:0];
      _updateNavigationBarHandler2[2](_updateNavigationBarHandler2);
      if ([(UINavigationController *)self isInteractiveTransition])
      {
        _navigationBarForNestedNavigationController = [(UINavigationController *)self _navigationBarForNestedNavigationController];
        [_navigationBarForNestedNavigationController _beginInteractiveTransition];
      }
    }

    *&self->_navigationControllerFlags &= ~0x8000000000000000;
  }
}

- (void)transitionConductor:(id)conductor didStartCustomTransitionWithContext:(id)context
{
  v101 = *MEMORY[0x1E69E9840];
  conductorCopy = conductor;
  contextCopy = context;
  toViewController = [contextCopy toViewController];
  fromViewController = [contextCopy fromViewController];
  navigationItem = [fromViewController navigationItem];
  _searchControllerIfAllowed = [navigationItem _searchControllerIfAllowed];

  if ([_searchControllerIfAllowed isActive])
  {
    [_searchControllerIfAllowed _setTransitioningOutWithoutDisappearing:1];
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UINavigationController", &qword_1ED4979E8);
  v9 = *(CategoryCachedImpl + 8);
  v10 = os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), self);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      v12 = objc_opt_class();
      Name = class_getName(v12);
      v14 = objc_opt_class();
      buf = 0x104020302;
      v97 = 2082;
      v98 = Name;
      v99 = 2082;
      v100 = class_getName(v14);
      _os_signpost_emit_with_name_impl(&dword_188A29000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "NavigationTransition", " enableTelemetry=YES  isAnimation=YES custom=%{signpost.telemetry:number1,signpost.description:attribute,public}u, from=%{signpost.telemetry:string1,public}s to=%{signpost.telemetry:string2,public}s", &buf, 0x1Cu);
    }
  }

  *&self->_navigationControllerFlags |= 4uLL;
  _outermostNavigationController = [(UINavigationController *)self _outermostNavigationController];
  _outermostNavigationController[161] |= 8uLL;

  *&self->_navigationControllerFlags |= 0x20000uLL;
  _focusSystem = [(UIViewController *)self _focusSystem];
  [_focusSystem _lockEnvironment:self];

  LOBYTE(_focusSystem) = (*&self->_navigationControllerFlags & 0xF0) != 16;
  _transitionCoordinator = [contextCopy _transitionCoordinator];
  presentedViewController = [(UIViewController *)self presentedViewController];
  activePresentationController = [presentedViewController activePresentationController];
  interactiveTransitionController = [(_UIViewControllerTransitionConductor *)self->_transitionConductor interactiveTransitionController];
  v17 = _focusSystem ^ 1;
  if (!presentedViewController)
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0)
  {
    if ([activePresentationController _shouldDismissWithNavigationPop])
    {
      _sourceViewController = [activePresentationController _sourceViewController];
      v19 = [_sourceViewController _isMemberOfViewControllerHierarchy:fromViewController];

      if (v19)
      {
        if ((objc_opt_respondsToSelector() & 1) != 0 && [interactiveTransitionController _supportsCoordinatedPresentationDismissal])
        {
          v20 = objc_alloc_init(_UIPresentedViewControllerInteractivePopTransitioningDelegate);
          v21 = [UIViewControllerBuiltinTransitionViewAnimator alloc];
          view = [(UIViewController *)self view];
          if ([view _shouldReverseLayoutDirection])
          {
            v23 = 1;
          }

          else
          {
            v23 = 2;
          }

          v24 = [(UIViewControllerBuiltinTransitionViewAnimator *)v21 initWithTransition:v23];
          [(_UIPresentedViewControllerInteractivePopTransitioningDelegate *)v20 setAnimator:v24];

          [(_UIPresentedViewControllerInteractivePopTransitioningDelegate *)v20 setInteractor:interactiveTransitionController];
        }

        else
        {
          v20 = 0;
        }

        v90[0] = MEMORY[0x1E69E9820];
        v90[1] = 3221225472;
        v90[2] = __82__UINavigationController_transitionConductor_didStartCustomTransitionWithContext___block_invoke;
        v90[3] = &unk_1E7102EE0;
        v91 = v20;
        v92 = presentedViewController;
        v93 = activePresentationController;
        selfCopy = self;
        v88[0] = MEMORY[0x1E69E9820];
        v88[1] = 3221225472;
        v88[2] = __82__UINavigationController_transitionConductor_didStartCustomTransitionWithContext___block_invoke_2;
        v88[3] = &unk_1E70F3B98;
        v89 = v92;
        v25 = v20;
        [_transitionCoordinator animateAlongsideTransition:v90 completion:v88];
      }
    }
  }

  topViewController = [(UINavigationController *)self topViewController];
  v27 = topViewController;
  if (topViewController != toViewController)
  {
    v28 = topViewController;

    toViewController = v28;
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  mutableChildViewControllers = [(UIViewController *)self mutableChildViewControllers];
  v30 = [mutableChildViewControllers countByEnumeratingWithState:&v84 objects:v95 count:16];
  if (v30)
  {
    v31 = *v85;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v85 != v31)
        {
          objc_enumerationMutation(mutableChildViewControllers);
        }

        v33 = *(*(&v84 + 1) + 8 * i);
        if (v33 != toViewController && [*(*(&v84 + 1) + 8 * i) _isContainmentChanging])
        {
          [v33 didMoveToParentViewController:self];
        }
      }

      v30 = [mutableChildViewControllers countByEnumeratingWithState:&v84 objects:v95 count:16];
    }

    while (v30);
  }

  _isAppearingOrAppearedCheck = [(UINavigationController *)self _isAppearingOrAppearedCheck];
  if (_isAppearingOrAppearedCheck)
  {
    if ((*(&self->_navigationControllerFlags + 1) & 0x10) != 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"custom navigation transition - no popping between different orienations!"];
    }

    [fromViewController beginAppearanceTransition:0 animated:1];
    [toViewController beginAppearanceTransition:1 animated:1];
  }

  if (dyld_program_sdk_at_least())
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    WeakRetained = [(UINavigationController *)self delegate];
  }

  v36 = WeakRetained;
  if (_isAppearingOrAppearedCheck)
  {
    if (objc_opt_respondsToSelector())
    {
      topViewController2 = [(UINavigationController *)self topViewController];
      [v36 navigationController:self willShowViewController:topViewController2 animated:1];

      _isAppearingOrAppearedCheck = 1;
    }

    else
    {
      _isAppearingOrAppearedCheck = 0;
    }
  }

  topViewController3 = [(UINavigationController *)self topViewController];

  if (toViewController == topViewController3)
  {
    v40 = toViewController;
  }

  else
  {
    do
    {
      parentViewController = [toViewController parentViewController];
      [toViewController didMoveToParentViewController:parentViewController];

      [toViewController cancelBeginAppearanceTransition];
      [topViewController3 view];

      v40 = topViewController3;
      [v40 beginAppearanceTransition:1 animated:1];
      if (_isAppearingOrAppearedCheck)
      {
        topViewController4 = [(UINavigationController *)self topViewController];
        [v36 navigationController:self willShowViewController:topViewController4 animated:1];
      }

      topViewController3 = [(UINavigationController *)self topViewController];

      toViewController = v40;
    }

    while (v40 != topViewController3);
  }

  [(UINavigationController *)self _privateWillShowViewController:v40];
  [(UINavigationController *)self _setDefinesPresentationContextIfNecessaryForViewController:v40];
  v79 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  if (fromViewController)
  {
    [v79 setObject:fromViewController forKey:@"UINavigationControllerLastVisibleViewController"];
  }

  if (v40)
  {
    [v79 setObject:v40 forKey:@"UINavigationControllerNextVisibleViewController"];
  }

  v42 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v79 setObject:v42 forKey:@"UINavigationControllerTransitionIsAnimated"];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UINavigationControllerWillShowViewControllerNotification" object:self userInfo:v79];

  if (_UIUnifiedToolbarEnabled())
  {
    [(UINavigationController *)self _updateFloatingBarContentAnimated:1];
    objc_initWeak(&buf, self);
    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = __82__UINavigationController_transitionConductor_didStartCustomTransitionWithContext___block_invoke_3;
    v82[3] = &unk_1E7102C50;
    objc_copyWeak(&v83, &buf);
    [_transitionCoordinator notifyWhenInteractionChangesUsingBlock:v82];
    objc_destroyWeak(&v83);
    objc_destroyWeak(&buf);
  }

  else
  {
    [(UINavigationController *)self _startToolbarTransitionIfNecessary:contextCopy animated:1];
  }

  [(UINavigationController *)self _startPaletteTransitionIfNecessary:_transitionCoordinator animated:1];
  _outermostNavigationController2 = [(UINavigationController *)self _outermostNavigationController];
  v45 = [_outermostNavigationController2 _tabBarControllerEnforcingClass:1];
  v75 = v45;
  if (v45)
  {
    v46 = [v45 _isBarEffectivelyHidden] ^ 1;
  }

  else
  {
    v46 = 0;
  }

  _hasPotentiallyChromelessBottomBar = [_outermostNavigationController2 _hasPotentiallyChromelessBottomBar];
  navigationControllerFlags = self->_navigationControllerFlags;
  if (!_hasPotentiallyChromelessBottomBar)
  {
    *&self->_navigationControllerFlags = navigationControllerFlags & 0x7FFFFFFFFFFFFFFFLL;
    [contextCopy _setNeedsBottomBarCrossfade:0];
    goto LABEL_66;
  }

  if ((navigationControllerFlags & 0x8000000000000000) != 0)
  {
    v49 = (navigationControllerFlags >> 46) & 1;
    *&self->_navigationControllerFlags = navigationControllerFlags & 0x7FFFFFFFFFFFFFFFLL;
    [contextCopy _setNeedsBottomBarCrossfade:v49];
    if ((v49 & 1) == 0)
    {
      goto LABEL_66;
    }
  }

  else
  {
    [contextCopy _setNeedsBottomBarCrossfade:1];
  }

  if (v46)
  {
    [v75 _setSuspendBarBackgroundUpdating:1];
  }

  else
  {
    [_outermostNavigationController2 _setSuspendToolbarBackgroundUpdating:1];
  }

LABEL_66:
  [(UINavigationController *)self _updateScrollViewFromViewController:fromViewController toViewController:v40];
  _deferredTransition = [(UINavigationController *)self _deferredTransition];
  if (_deferredTransition)
  {
    _keyboardAnimationStyle = [(UINavigationController *)self _keyboardAnimationStyle];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_75:

      goto LABEL_76;
    }

    *&self->_navigationControllerFlags |= 0x200uLL;
    _window = [(UINavigationController *)self _window];
    if ([_window isTrackingKeyboard])
    {
      _keyboardSceneDelegate = [(UIViewController *)self _keyboardSceneDelegate];
      hasTrackingAvailable = [_keyboardSceneDelegate hasTrackingAvailable];

      if (hasTrackingAvailable)
      {
        goto LABEL_74;
      }

      v55 = [(UINavigationController *)self _keyboardScreenEdgeForTransition:_deferredTransition];
      if ([_keyboardAnimationStyle disableAlongsideView])
      {
        goto LABEL_74;
      }

      _window2 = [(UINavigationController *)self _window];
      [_window2 moveKeyboardLayoutGuideOverEdge:v55 layoutViews:1];

      if (self->_keyboardLayoutGuideTransitionAssertion)
      {
        if (os_variant_has_internal_diagnostics())
        {
          v71 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
          {
            LOWORD(buf) = 0;
            _os_log_fault_impl(&dword_188A29000, v71, OS_LOG_TYPE_FAULT, "Should not already have a KLG transition assertion when starting a custom navigation transition", &buf, 2u);
          }
        }

        else
        {
          v70 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4979F0) + 8);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_188A29000, v70, OS_LOG_TYPE_ERROR, "Should not already have a KLG transition assertion when starting a custom navigation transition", &buf, 2u);
          }
        }

        if (self->_keyboardLayoutGuideTransitionAssertion)
        {
          goto LABEL_74;
        }
      }

      _window = [(UINavigationController *)self _window];
      v57 = [_window _obtainKeyboardLayoutGuideTransitionAssertionForReason:@"UINavigationController custom transition"];
      keyboardLayoutGuideTransitionAssertion = self->_keyboardLayoutGuideTransitionAssertion;
      self->_keyboardLayoutGuideTransitionAssertion = v57;
    }

LABEL_74:
    _keyboardSceneDelegate2 = [(UIViewController *)self _keyboardSceneDelegate];
    [_keyboardSceneDelegate2 pushAnimationStyle:_keyboardAnimationStyle];

    goto LABEL_75;
  }

LABEL_76:
  v60 = MEMORY[0x1E696AEC0];
  selfCopy2 = self;
  v62 = objc_opt_class();
  v63 = NSStringFromClass(v62);
  selfCopy2 = [v60 stringWithFormat:@"<%@: %p>", v63, selfCopy2];

  v65 = [v60 stringWithFormat:@"UINavigationController transition : %@", selfCopy2];

  view2 = [(UIViewController *)selfCopy2 view];
  window = [view2 window];
  v68 = [(UIWindow *)window _acquireOrientationLockAssertionWithReason:v65];
  windowRotationLockAssertion = selfCopy2->_windowRotationLockAssertion;
  selfCopy2->_windowRotationLockAssertion = v68;

  *&self->_navigationControllerFlags &= ~0x40000000000000uLL;
  [contextCopy _setPerformingLayoutToLayoutTransition:{-[UINavigationController _isPerformingLayoutToLayoutTransition](selfCopy2, "_isPerformingLayoutToLayoutTransition")}];
}

void __82__UINavigationController_transitionConductor_didStartCustomTransitionWithContext___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (*(a1 + 32))
  {
    [*(a1 + 40) _setOverrideTransitioningDelegate:?];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 48);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v4 set_dismissingHorizontallyAlongsideNavigationPop:1];
  [*(a1 + 56) dismissViewControllerAnimated:1 completion:0];
  [v4 set_dismissingHorizontallyAlongsideNavigationPop:0];
}

void __82__UINavigationController_transitionConductor_didStartCustomTransitionWithContext___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateFloatingBarContentAnimated:1];
}

- (void)transitionConductor:(id)conductor didEndCustomTransitionWithContext:(id)context didComplete:(BOOL)complete
{
  completeCopy = complete;
  contextCopy = context;
  fromViewController = [contextCopy fromViewController];
  toViewController = [contextCopy toViewController];
  v9 = [contextCopy viewForKey:@"UITransitionContextFromView"];
  v10 = v9;
  if (v9)
  {
    view = v9;
  }

  else
  {
    view = [fromViewController view];
  }

  v12 = view;

  navigationItem = [fromViewController navigationItem];
  _searchControllerIfAllowed = [navigationItem _searchControllerIfAllowed];

  [_searchControllerIfAllowed _setTransitioningOutWithoutDisappearing:0];
  _needsBottomBarCrossfade = [contextCopy _needsBottomBarCrossfade];
  v16 = contextCopy;
  if (_needsBottomBarCrossfade)
  {
    _transitioningBottomBarIsTabBar = [contextCopy _transitioningBottomBarIsTabBar];
    _outermostNavigationController = [(UINavigationController *)self _outermostNavigationController];
    v19 = [_outermostNavigationController _tabBarControllerEnforcingClass:1];
    v20 = v19;
    if (_transitioningBottomBarIsTabBar)
    {
      if ([v19 _suspendBarBackgroundUpdating])
      {
        v47 = v12;
        [v20 _setSuspendBarBackgroundUpdating:0];
        _viewControllerForObservableScrollView = [_outermostNavigationController _viewControllerForObservableScrollView];
        v22 = [_viewControllerForObservableScrollView _contentOrObservableScrollViewForEdge:4];
        tabBar = [v20 tabBar];
        [v20 _updateBackgroundTransitionProgressForScrollView:v22 tabBar:tabBar isNavigationTransitionUpdate:1];
LABEL_10:

        v12 = v47;
      }
    }

    else if ([_outermostNavigationController _suspendToolbarBackgroundUpdating])
    {
      v47 = v12;
      [_outermostNavigationController _setSuspendToolbarBackgroundUpdating:0];
      _viewControllerForObservableScrollView = [_outermostNavigationController _viewControllerForObservableScrollView];
      v22 = [_viewControllerForObservableScrollView _contentOrObservableScrollViewForEdge:4];
      tabBar = [_outermostNavigationController _existingActiveVisibleToolbar];
      [_outermostNavigationController _updateBackgroundTransitionProgressForScrollView:v22 toolbar:tabBar isNavigationTransitionUpdate:1];
      goto LABEL_10;
    }

    v16 = contextCopy;
  }

  containerView = [v16 containerView];
  if (completeCopy)
  {
    topViewController = [(UINavigationController *)self topViewController];
    [(UINavigationController *)self _didEndTransitionFromView:v12 toView:containerView wasCustom:1];
    [(UINavigationController *)self _setPreferredContentSizeFromChildContentContainer:topViewController];
  }

  else
  {
    v26 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    topViewController = v26;
    if (fromViewController)
    {
      [v26 setObject:fromViewController forKey:@"UINavigationControllerNextVisibleViewController"];
    }

    if (toViewController)
    {
      [topViewController setObject:toViewController forKey:@"UINavigationControllerLastVisibleViewController"];
    }

    v27 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(contextCopy, "isAnimated")}];
    [topViewController setObject:v27 forKey:@"UINavigationControllerTransitionIsAnimated"];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"UINavigationControllerWillShowViewControllerNotification" object:self userInfo:topViewController];

    [(UINavigationController *)self _forgetFocusedItemForViewController:fromViewController];
    [(UINavigationController *)self _didCancelTransitionFromViewController:fromViewController toViewController:toViewController wrapperView:containerView wasCustom:1];
  }

  _focusSystem = [(UIViewController *)self _focusSystem];
  [_focusSystem _unlockEnvironment:self];

  overrideTraitCollectionForPoppingViewControler = self->_overrideTraitCollectionForPoppingViewControler;
  self->_overrideTraitCollectionForPoppingViewControler = 0;

  [fromViewController set_departingParentViewController:0];
  *&self->_navigationControllerFlags &= 0xFFFFFFFFFFF9FFFFLL;
  _postInteractiveCompletionHandler = [contextCopy _postInteractiveCompletionHandler];

  if (_postInteractiveCompletionHandler)
  {
    _postInteractiveCompletionHandler2 = [contextCopy _postInteractiveCompletionHandler];
    _postInteractiveCompletionHandler2[2]();

    [contextCopy _setPostInteractiveCompletionHandler:0];
  }

  if ([contextCopy isInterruptible])
  {
    [(_UIViewControllerTransitionConductor *)self->_transitionConductor setCustomNavigationTransitionDuration:0.0];
    [(UINavigationController *)self setInteractiveTransition:0];
  }

  navigationControllerFlags = self->_navigationControllerFlags;
  if ([contextCopy _isPerformingLayoutToLayoutTransition])
  {
    v34 = containerView;
    v35 = _searchControllerIfAllowed;
    v36 = v12;
    v37 = navigationControllerFlags & 0xF0;
    view2 = [fromViewController view];
    if (completeCopy)
    {
      _uiCollectionView = [toViewController _uiCollectionView];
      delegate = [_uiCollectionView delegate];

      if (delegate == fromViewController)
      {
        _uiCollectionView2 = [toViewController _uiCollectionView];
        [_uiCollectionView2 setDelegate:toViewController];
      }

      v42 = fromViewController;
      if (v37 == 16)
      {
        goto LABEL_31;
      }
    }

    else
    {
      _uiCollectionView3 = [fromViewController _uiCollectionView];
      [view2 addSubview:_uiCollectionView3];

      v42 = toViewController;
      if (v37 != 16)
      {
LABEL_31:

        v12 = v36;
        _searchControllerIfAllowed = v35;
        containerView = v34;
        goto LABEL_32;
      }
    }

    [v42 _clearSharedView];
    goto LABEL_31;
  }

LABEL_32:
  if (![(UINavigationController *)self isInteractiveTransition])
  {
    [(_UIViewControllerTransitionConductor *)self->_transitionConductor setCustomNavigationTransitionDuration:0.0];
  }

  [contextCopy _setTransitionIsInFlight:0];
  [contextCopy _setInteractor:0];
  [contextCopy _setAnimator:0];
  [(_UIViewControllerTransitionConductor *)self->_transitionConductor setTransitionController:0];
  [(_UIViewControllerTransitionConductor *)self->_transitionConductor setInteractiveTransitionController:0];
  navigationBar = [(UINavigationController *)self navigationBar];
  v45 = navigationBar;
  if (navigationBar)
  {
    [navigationBar _reenableUserInteractionWhenReadyWithContext:contextCopy];
  }

  else
  {
    [contextCopy _enableInteractionForDisabledViews];
  }

  [(_UIInvalidatable *)self->_windowRotationLockAssertion _invalidate];
  windowRotationLockAssertion = self->_windowRotationLockAssertion;
  self->_windowRotationLockAssertion = 0;

  [(UINavigationController *)self _setUsingBuiltinAnimator:0];
}

- (void)transitionConductor:(id)conductor interactiveTransitionDidUpdateProgress:(double)progress finish:(BOOL)finish transitionCompleted:(BOOL)completed transitionContext:(id)context
{
  completedCopy = completed;
  finishCopy = finish;
  conductorCopy = conductor;
  contextCopy = context;
  if (finishCopy && completedCopy)
  {
    [(UINavigationController *)self _finishInteractiveTransition:contextCopy transitionContext:progress];
  }

  else if (finishCopy)
  {
    [(UINavigationController *)self _cancelInteractiveTransition:contextCopy transitionContext:progress];
  }

  else
  {
    [(UINavigationController *)self _updateInteractiveTransition:progress];
  }
}

- (CGRect)transitionConductor:(id)conductor frameForViewController:(id)controller
{
  [(UINavigationController *)self _frameForViewController:controller];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)transitionConductor:(id)conductor frameForWrapperViewForViewController:(id)controller
{
  [(UINavigationController *)self _frameForWrapperViewForViewController:controller];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)encodeRestorableStateWithCoder:(id)coder
{
  coderCopy = coder;
  childViewControllers = [(UIViewController *)self childViewControllers];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(childViewControllers, "count")}];
  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SChildViewCont.isa, "[UINavigationController(StateRestoration) encodeRestorableStateWithCoder:]", childViewControllers);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__UINavigationController_StateRestoration__encodeRestorableStateWithCoder___block_invoke;
  v14[3] = &unk_1E7102C78;
  v7 = v6;
  v15 = v7;
  _UISaveReferencedChildViewControllers(childViewControllers, v14);
  if ([(UINavigationController *)self _allowNestedNavigationControllers])
  {
    [coderCopy encodeBool:1 forKey:@"kAllowsNestedNavigationControllerKey"];
  }

  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SNavigationCon.isa, "[UINavigationController(StateRestoration) encodeRestorableStateWithCoder:]", v7);
  }

  [coderCopy encodeObject:v7 forKey:@"kUIViewControllerChildrenKey"];
  topViewController = [(UINavigationController *)self topViewController];
  if (topViewController)
  {
    v9 = topViewController;
    topViewController2 = [(UINavigationController *)self topViewController];
    restorationIdentifier = [topViewController2 restorationIdentifier];

    if (!restorationIdentifier)
    {
      if (_UIStateRestorationDebugLogEnabled())
      {
        topViewController3 = [(UINavigationController *)self topViewController];
        NSLog(&cfstr_STopViewContro.isa, "[UINavigationController(StateRestoration) encodeRestorableStateWithCoder:]", topViewController3);
      }

      [UIApp ignoreSnapshotOnNextApplicationLaunch];
    }
  }

  v13.receiver = self;
  v13.super_class = UINavigationController;
  [(UIViewController *)&v13 encodeRestorableStateWithCoder:coderCopy];
}

BOOL __75__UINavigationController_StateRestoration__encodeRestorableStateWithCoder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [*(a1 + 32) addObject:v6];
  }

  else if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SChildViewCont_0.isa, "[UINavigationController(StateRestoration) encodeRestorableStateWithCoder:]_block_invoke", v5);
  }

  return v6 != 0;
}

- (void)decodeRestorableStateWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy decodeBoolForKey:@"kAllowsNestedNavigationControllerKey"])
  {
    [(UINavigationController *)self _setAllowNestedNavigationControllers:1];
  }

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"kUIViewControllerChildrenKey"];

  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SNavigationCon_0.isa, "[UINavigationController(StateRestoration) decodeRestorableStateWithCoder:]", v8);
  }

  v10 = [v8 count];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    while (1)
    {
      v13 = [v8 objectAtIndex:v12];
      v14 = [UIResponder objectWithRestorationIdentifierPath:v13];
      if (!v14)
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (_UIStateRestorationDebugLogEnabled())
        {
          NSLog(&cfstr_InvalidObjectN.isa, v12, v13, v14);
        }

        goto LABEL_15;
      }

      [v9 addObject:v14];

      if (v11 == ++v12)
      {
        goto LABEL_16;
      }
    }

    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_CanTFindChildV.isa, v12, v13);
    }

LABEL_15:
  }

LABEL_16:
  if ([v9 count])
  {
    [(UINavigationController *)self setViewControllers:v9];
    if ((*&self->_navigationControllerFlags & 4) == 0)
    {
      [(UINavigationController *)self _startDeferredTransitionIfNeeded];
    }
  }

  else if (_UIStateRestorationDebugLogEnabled())
  {
    _restorationIdentifierPath = [(UIResponder *)self _restorationIdentifierPath];
    NSLog(&cfstr_SNoChildViewCo.isa, "[UINavigationController(StateRestoration) decodeRestorableStateWithCoder:]", _restorationIdentifierPath, self);
  }

  v16.receiver = self;
  v16.super_class = UINavigationController;
  [(UIResponder *)&v16 decodeRestorableStateWithCoder:coderCopy];
}

- (void)_updateControlledViewsToFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = UINavigationController;
  [(UIViewController *)&v4 _updateControlledViewsToFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(UINavigationController *)self _frameForPalette:self->_topPalette];
  [(_UINavigationControllerPalette *)self->_topPalette setFrame:?];
}

- (CGRect)_frameForPalette:(id)palette
{
  paletteCopy = palette;
  boundaryEdge = [paletteCopy boundaryEdge];
  [paletteCopy frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  if (boundaryEdge)
  {
    if (boundaryEdge == 5)
    {
      v7 = 0.0;
      v9 = 0.0;
      if ([(UINavigationController *)self _viewControllerUnderlapsStatusBar])
      {
        [(UINavigationController *)self _statusBarHeightAdjustmentForCurrentOrientation];
        v9 = v19;
      }

      if (*&self->_navigationControllerFlags)
      {
        [(UINavigationController *)self _widthForLayout];
        v11 = v22;
      }

      else
      {
        _navigationBarForNestedNavigationController = [(UINavigationController *)self _navigationBarForNestedNavigationController];
        [_navigationBarForNestedNavigationController frame];
        v11 = v21;
      }
    }

    else if (boundaryEdge == 2)
    {
      v9 = 0.0;
      if ([(UINavigationController *)self _viewControllerUnderlapsStatusBar])
      {
        [(UINavigationController *)self _statusBarHeightAdjustmentForCurrentOrientation];
        v9 = v14;
      }

      if (*&self->_navigationControllerFlags)
      {
        [(UINavigationController *)self _widthForLayout];
        v11 = v23;
      }

      else
      {
        _navigationBarForNestedNavigationController2 = [(UINavigationController *)self _navigationBarForNestedNavigationController];
        [_navigationBarForNestedNavigationController2 frame];
        v11 = v16;
        v18 = v17;

        v9 = v9 + v18;
      }

      v7 = 0.0;
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Palettes currently can only have a top boundary edge or no boundary edge"];
    }
  }

  v24 = v7;
  v25 = v9;
  v26 = v11;
  v27 = v13;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGRect)_boundsForPalette:(id)palette size:(CGSize)size
{
  height = size.height;
  width = size.width;
  boundaryEdge = [palette boundaryEdge];
  if (boundaryEdge)
  {
    if (boundaryEdge == 5 || boundaryEdge == 2)
    {
      _navigationBarForNestedNavigationController = [(UINavigationController *)self _navigationBarForNestedNavigationController];
      [_navigationBarForNestedNavigationController bounds];
      v10 = v9;
      v12 = v11;
      width = v13;
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Palettes currently can only have a top boundary edge or no boundary edge"];
      height = 0.0;
      width = 0.0;
      v12 = 0.0;
      v10 = 0.0;
    }
  }

  else
  {
    v10 = *MEMORY[0x1E695EFF8];
    v12 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v14 = v10;
  v15 = v12;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)_pinningBarForPalette:(id)palette
{
  boundaryEdge = [palette boundaryEdge];
  if (boundaryEdge)
  {
    if (boundaryEdge == 5 || boundaryEdge == 2)
    {
      boundaryEdge = [(UINavigationController *)self _navigationBarForNestedNavigationController];
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Palettes currently can only have a top boundary edge or no boundary edge"];
      boundaryEdge = 0;
    }
  }

  return boundaryEdge;
}

- (id)paletteForEdge:(unint64_t)edge size:(CGSize)size
{
  v4 = [[UIView alloc] initWithFrame:0.0, 0.0, size.width, size.height];
  v5 = [(_UINavigationBarPalette *)[_UINavigationBarBridgingPalette alloc] initWithContentView:v4];

  return v5;
}

- (id)_managedSearchPaletteForEdge:(unint64_t)edge size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v8 = objc_opt_class();

  return [(UINavigationController *)self _paletteForEdge:edge size:v8 paletteClass:width, height];
}

- (id)_paletteForEdge:(unint64_t)edge size:(CGSize)size paletteClass:(Class)class
{
  height = size.height;
  width = size.width;
  v29 = *MEMORY[0x1E69E9840];
  if (edge != 2 && edge != 5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:12556 description:@"Only edge = UIBoundaryEdgeTop and UIBoundaryEdgeTopAbove are currently supported!"];
  }

  v12 = [(objc_class *)class isSubclassOfClass:objc_opt_class()];
  if (os_variant_has_internal_diagnostics())
  {
    if (v12)
    {
      goto LABEL_6;
    }

    v24 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_15;
    }

    v25 = NSStringFromClass(class);
    v27 = 138412290;
    v28 = v25;
    _os_log_fault_impl(&dword_188A29000, v24, OS_LOG_TYPE_FAULT, "DEBUG ASSERTION: Requested to make a palette of a class that isn't a subclass of _UINavigationControllerPalette. Requested class = %@. Making a _UINavigationControllerPalette instead on release builds of UIKit.", &v27, 0xCu);
  }

  else
  {
    if (v12)
    {
      goto LABEL_6;
    }

    v26 = *(__UILogGetCategoryCachedImpl("Assert", &_paletteForEdge_size_paletteClass____s_category) + 8);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v24 = v26;
    v25 = NSStringFromClass(class);
    v27 = 138412290;
    v28 = v25;
    _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "DEBUG ASSERTION: Requested to make a palette of a class that isn't a subclass of _UINavigationControllerPalette. Requested class = %@. Making a _UINavigationControllerPalette instead on release builds of UIKit.", &v27, 0xCu);
  }

LABEL_15:
LABEL_16:
  class = objc_opt_class();
LABEL_6:
  v13 = [[class alloc] _initWithNavigationController:self forEdge:edge];
  [(UINavigationController *)self _boundsForPalette:v13 size:width, height];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [v13 _setSize:{width, height}];
  [v13 setBounds:{v15, v17, v19, v21}];
  v22 = [(UINavigationController *)self _pinningBarForPalette:v13];
  [v13 setAutoresizingMask:0];
  [v13 _setPinningBar:v22];

  return v13;
}

- (void)_installPaletteIntoViewHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  navigationBar = [(UINavigationController *)self navigationBar];
  view = [(UIViewController *)self view];
  if ([hierarchyCopy boundaryEdge] == 5)
  {
    [view insertSubview:hierarchyCopy aboveSubview:navigationBar];
  }

  else
  {
    paletteClippingView = self->_paletteClippingView;
    if (!paletteClippingView)
    {
      v7 = [_UINavigationControllerPaletteClippingView alloc];
      view2 = [(UIViewController *)self view];
      [view2 bounds];
      v9 = [(UIView *)v7 initWithFrame:?];

      [(UIView *)v9 setAutoresizingMask:18];
      [(UIView *)v9 setPreservesSuperviewLayoutMargins:1];
      [view insertSubview:v9 belowSubview:navigationBar];
      v10 = self->_paletteClippingView;
      self->_paletteClippingView = v9;

      paletteClippingView = self->_paletteClippingView;
    }

    [(UIView *)paletteClippingView addSubview:hierarchyCopy];
  }
}

- (void)attachPalette:(id)palette isPinned:(BOOL)pinned
{
  pinnedCopy = pinned;
  paletteCopy = palette;
  [paletteCopy setPinned:pinnedCopy];
  topViewController = [(UINavigationController *)self topViewController];
  navigationItem = [topViewController navigationItem];
  [navigationItem _setBottomPalette:paletteCopy];
}

- (void)_detachPalette:(id)palette
{
  paletteCopy = palette;
  boundaryEdge = [paletteCopy boundaryEdge];
  _pinningBar = [paletteCopy _pinningBar];
  if (_pinningBar && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [_pinningBar _setShadowAlpha:{(objc_msgSend(paletteCopy, "pinningBarShadowWasHidden") ^ 1)}];
  }

  if ([(UINavigationController *)self isNavigationBarHidden])
  {
    [paletteCopy _setPalettePinningBarHidden:0];
  }

  [paletteCopy removeFromSuperview];
  if (!boundaryEdge)
  {
    v6 = 1152;
    goto LABEL_11;
  }

  if (boundaryEdge == 5 || boundaryEdge == 2)
  {
    v6 = 1136;
LABEL_11:
    v7 = *(&self->super.super.super.isa + v6);
    *(&self->super.super.super.isa + v6) = 0;

    goto LABEL_13;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Palettes currently can only have a top boundary edge or no boundary edge"];
LABEL_13:
  [paletteCopy _setAttached:0 didComplete:1];
}

- (id)existingPaletteForEdge:(unint64_t)edge
{
  topViewController = [(UINavigationController *)self topViewController];
  navigationItem = [topViewController navigationItem];
  _bottomPalette = [navigationItem _bottomPalette];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = _bottomPalette;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (void)detachPalette:(id)palette isInPaletteTransition:(BOOL)transition
{
  transitionCopy = transition;
  paletteCopy = palette;
  _outermostNavigationController = [(UINavigationController *)self _outermostNavigationController];
  v7 = _outermostNavigationController;
  if (_outermostNavigationController == self)
  {
    if (self->_topPalette == paletteCopy || self->_freePalette == paletteCopy || ([(UINavigationDeferredTransitionContext *)self->_deferredTransitionContext outgoingTopPalette], v8 = objc_claimAutoreleasedReturnValue(), v8, v8 == paletteCopy))
    {
      [(_UINavigationControllerPalette *)paletteCopy _setAttached:0 didComplete:0];
      if (!transitionCopy)
      {
        [(UINavigationController *)self _detachPalette:paletteCopy];
        if (![(UINavigationController *)self isNavigationBarHidden])
        {
          topViewController = [(UINavigationController *)self topViewController];
          [(UINavigationController *)self _computeAndApplyScrollContentInsetDeltaForViewController:topViewController];
        }
      }

      if ([(_UINavigationControllerPalette *)self->_topPalette _restartPaletteTransitionIfNecessary])
      {
        transitionCoordinator = [(UIViewController *)self transitionCoordinator];
        [(UINavigationController *)self _startPaletteTransitionIfNecessary:transitionCoordinator animated:0];
      }
    }
  }

  else
  {
    [(UINavigationController *)_outermostNavigationController detachPalette:paletteCopy isInPaletteTransition:transitionCopy];
  }
}

- (void)detachPalette:(id)palette
{
  paletteCopy = palette;
  _outermostNavigationController = [(UINavigationController *)self _outermostNavigationController];
  v5 = _outermostNavigationController;
  if (_outermostNavigationController == self)
  {
    disappearingViewController = [(UINavigationController *)_outermostNavigationController disappearingViewController];
    navigationItem = [disappearingViewController navigationItem];
    _bottomPalette = [navigationItem _bottomPalette];
    [_bottomPalette setPinned:0];

    topViewController = [(UINavigationController *)v5 topViewController];
    navigationItem2 = [topViewController navigationItem];
    [navigationItem2 _setBottomPalette:0];
  }

  else
  {
    [(UINavigationController *)_outermostNavigationController detachPalette:paletteCopy];
  }
}

- (void)_startPaletteTransitionIfNecessary:(id)necessary animated:(BOOL)animated
{
  animatedCopy = animated;
  necessaryCopy = necessary;
  if (![(UINavigationController *)self _isNestedNavigationController])
  {
    goto LABEL_5;
  }

  _outermostNavigationController = [(UINavigationController *)self _outermostNavigationController];
  v8 = _outermostNavigationController;
  if (_outermostNavigationController == self)
  {

LABEL_5:
    *&self->_navigationControllerFlags &= ~8uLL;
    [(UIView *)self->_paletteClippingView setClipsToBounds:1];
    if ([(UINavigationController *)self isBuiltinTransition])
    {
      isCustomTransition = [(UINavigationController *)self isCustomTransition];
    }

    else
    {
      isCustomTransition = 0;
    }

    isInteractiveTransition = [(UINavigationController *)self isInteractiveTransition];
    _navigationBarForNestedNavigationController = [(UINavigationController *)self _navigationBarForNestedNavigationController];
    if (!self->_topPalette)
    {
      goto LABEL_63;
    }

    _isNavigationBarVisible = [(UINavigationController *)self _isNavigationBarVisible];
    isAttached = [(_UINavigationControllerPalette *)self->_topPalette isAttached];
    if (_isNavigationBarVisible)
    {
      if (!isAttached || ([(UIView *)self->_topPalette superview], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
      {
        if (![(_UINavigationControllerPalette *)self->_topPalette isAttached]|| [(_UINavigationControllerPalette *)self->_topPalette isPinned])
        {
          if ([(_UINavigationControllerPalette *)self->_topPalette isAttached])
          {
            v15 = 0;
            if (isCustomTransition && isInteractiveTransition)
            {
              [_navigationBarForNestedNavigationController frame];
              MaxY = CGRectGetMaxY(v90);
              layer = [_navigationBarForNestedNavigationController layer];
              presentationLayer = [layer presentationLayer];
              [presentationLayer frame];
              v15 = MaxY != CGRectGetMaxY(v91);
            }

            goto LABEL_34;
          }

          goto LABEL_32;
        }

        [(UINavigationController *)self detachPalette:self->_topPalette isInPaletteTransition:1];
LABEL_38:
        v60 = isInteractiveTransition;
        [(UINavigationDeferredTransitionContext *)self->_deferredTransitionContext setOutgoingTopPalette:self->_topPalette];
        v23 = 0;
        v61 = 1;
        goto LABEL_39;
      }

      goto LABEL_31;
    }

    if (isAttached)
    {
      superview = [(UIView *)self->_topPalette superview];
      if (superview)
      {
        v20 = superview;
        if (![(_UINavigationControllerPalette *)self->_topPalette isPinned]&& [(UINavigationController *)self _isTransitioning])
        {

LABEL_28:
          if (![(_UINavigationControllerPalette *)self->_topPalette isPinned])
          {
            goto LABEL_38;
          }

          v60 = isInteractiveTransition;
          v61 = 0;
          v23 = 0;
LABEL_39:
          v62 = isCustomTransition;
          view = [(UIViewController *)self view];
          _shouldReverseLayoutDirection = [view _shouldReverseLayoutDirection];

          if (_shouldReverseLayoutDirection != ([(UINavigationController *)self lastOperation]== 1))
          {
            v44 = 8;
          }

          else
          {
            v44 = 2;
          }

          superview2 = [(UIView *)self->_topPalette superview];
          v46 = superview2 == 0;

          v80[0] = 0;
          v80[1] = v80;
          v80[2] = 0x2020000000;
          v81 = 0;
          if ([(_UINavigationControllerPalette *)self->_topPalette _supportsSpecialSearchBarTransitions])
          {
            topPalette = self->_topPalette;
          }

          else
          {
            topPalette = 0;
          }

          v48 = topPalette;
          v49 = v48;
          if (v23)
          {
            v50 = 1.0;
          }

          else
          {
            v50 = 0.0;
          }

          [(_UINavigationControllerPalette *)v48 _setShadowAlpha:v50];
          if (v23)
          {
            v51 = 0.0;
          }

          else
          {
            v51 = 1.0;
          }

          [(UINavigationBar *)self->_navigationBar _setShadowAlpha:v51];
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_5;
          aBlock[3] = &unk_1E7102D10;
          aBlock[4] = self;
          v52 = v49;
          v72 = v52;
          v74 = v80;
          v53 = _navigationBarForNestedNavigationController;
          v54 = _navigationBarForNestedNavigationController;
          v76 = v61;
          v77 = v23;
          v78 = v62;
          v73 = v54;
          v75 = v44;
          v79 = v46;
          v55 = _Block_copy(aBlock);
          if (necessaryCopy && animatedCopy)
          {
            v56 = self->_topPalette;
            v63[0] = MEMORY[0x1E69E9820];
            v63[1] = 3221225472;
            v63[2] = __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_7;
            v63[3] = &unk_1E7102E28;
            v68 = v23;
            v64 = v54;
            selfCopy = self;
            v69 = v62;
            v66 = v80;
            v67 = v44;
            v70 = v60;
            [necessaryCopy animateAlongsideTransitionInView:v56 animation:v63 completion:v55];
            _navigationBarForNestedNavigationController = v53;
            if (self->_transitioningTopPalette)
            {
              _alongsideAnimationViews = [necessaryCopy _alongsideAnimationViews];
              [_alongsideAnimationViews addObject:self->_transitioningTopPalette];
            }
          }

          else
          {
            [(UINavigationController *)self _positionPaletteHidden:v23 ^ 1u edge:v44];
            _navigationBarForNestedNavigationController = v53;
            v55[2](v55, 0);
            v58 = self->_topPalette;
            if (v58 && [(_UINavigationControllerPalette *)v58 isVisibleWhenPinningBarIsHidden]&& [(_UINavigationControllerPalette *)self->_topPalette _isPalettePinningBarHidden])
            {
              v59 = self->_topPalette;
              [(UIView *)v59 frame];
              [(_UINavigationControllerPalette *)v59 _resetConstraintConstants:CGRectGetMinY(v93)];
            }
          }

          _Block_object_dispose(v80, 8);
          goto LABEL_63;
        }

        isVisibleWhenPinningBarIsHidden = [(_UINavigationControllerPalette *)self->_topPalette isVisibleWhenPinningBarIsHidden];

        if (!isVisibleWhenPinningBarIsHidden)
        {
          goto LABEL_28;
        }
      }
    }

    if ([(_UINavigationControllerPalette *)self->_topPalette isAttached])
    {
      superview3 = [(UIView *)self->_topPalette superview];
      if (superview3)
      {
      }

      else if ([(_UINavigationControllerPalette *)self->_topPalette isVisibleWhenPinningBarIsHidden])
      {
LABEL_31:
        v60 = isInteractiveTransition;
        v61 = 0;
        v23 = 1;
        goto LABEL_39;
      }
    }

LABEL_32:
    if ([(_UINavigationControllerPalette *)self->_topPalette isAttached])
    {
      v15 = 0;
LABEL_34:
      if (!necessaryCopy)
      {
LABEL_63:

        goto LABEL_64;
      }

      if (v15)
      {
        layer2 = [_navigationBarForNestedNavigationController layer];
        presentationLayer2 = [layer2 presentationLayer];
        [presentationLayer2 frame];
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;

        [(UIView *)self->_topPalette frame];
        v35 = v34;
        v37 = v36;
        v39 = v38;
        v92.origin.x = v27;
        v92.origin.y = v29;
        v92.size.width = v31;
        v92.size.height = v33;
        v40 = CGRectGetMaxY(v92);
        v84[0] = MEMORY[0x1E69E9820];
        v84[1] = 3221225472;
        v84[2] = __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke;
        v84[3] = &unk_1E7102CC0;
        v84[4] = self;
        v85 = _navigationBarForNestedNavigationController;
        v86 = v35;
        v87 = v40;
        v88 = v37;
        v89 = v39;
        v83[0] = MEMORY[0x1E69E9820];
        v83[1] = 3221225472;
        v83[2] = __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_3;
        v83[3] = &unk_1E7102CE8;
        v83[4] = self;
        v83[5] = v35;
        *&v83[6] = v40;
        v83[7] = v37;
        v83[8] = v39;
        [necessaryCopy animateAlongsideTransition:v84 completion:v83];

        goto LABEL_63;
      }

LABEL_62:
      [(_UINavigationControllerPalette *)self->_topPalette _setRestartPaletteTransitionIfNecessary:1];
      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 3221225472;
      v82[2] = __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_4;
      v82[3] = &unk_1E70F3B98;
      v82[4] = self;
      [necessaryCopy animateAlongsideTransition:0 completion:v82];
      goto LABEL_63;
    }

    superview4 = [(UIView *)self->_topPalette superview];

    if (!superview4)
    {
      if (!necessaryCopy)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    goto LABEL_38;
  }

  [(UINavigationController *)_outermostNavigationController _startPaletteTransitionIfNecessary:necessaryCopy animated:animatedCopy];

LABEL_64:
}

uint64_t __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1136) layer];
  [v2 removeAllAnimations];

  [*(a1 + 40) frame];
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  MaxY = CGRectGetMaxY(v12);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v7 = *(a1 + 64);
  v10 = *(a1 + 48);
  v11 = v7;
  v9[2] = __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_2;
  v9[3] = &unk_1E70F3B20;
  v9[4] = *(a1 + 32);
  [UIView performWithoutAnimation:v9];
  return [*(*(a1 + 32) + 1136) setFrame:{v3, MaxY, v4, v5}];
}

uint64_t __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_3(double *a1, void *a2)
{
  result = [a2 isCancelled];
  if (result)
  {
    v4 = a1[5];
    v5 = a1[6];
    v6 = *(*(a1 + 4) + 1136);
    v7 = a1[7];
    v8 = a1[8];

    return [v6 setFrame:{v4, v5, v7, v8}];
  }

  return result;
}

void __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 1144);
  v4 = a2;
  [v3 setClipsToBounds:0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_6;
  aBlock[3] = &unk_1E70F7998;
  v26 = *(a1 + 40);
  v5 = _Block_copy(aBlock);
  v5[2](v5, *(*(a1 + 32) + 1136));
  v5[2](v5, *(*(a1 + 32) + 1160));
  v6 = [v4 isCancelled];

  if (v6)
  {
    v7 = 0.0;
    if (*(a1 + 73))
    {
      v7 = 1.0;
    }

    [*(*(a1 + 32) + 1000) _setShadowAlpha:v7];
    if ([*(*(a1 + 32) + 1136) _attachmentIsChanging])
    {
      [*(*(a1 + 32) + 1136) _setAttached:objc_msgSend(*(*(a1 + 32) + 1136) didComplete:{"isAttached") ^ 1, 1}];
      v8 = *(a1 + 32);
      if (*(a1 + 74))
      {
        if (*(a1 + 73))
        {
          v9 = *(a1 + 64);
          v10 = 1;
        }

        else
        {
          v10 = 0;
          v9 = 1;
        }

        [v8 _positionTransitioningPalette:v8[142] outside:v10 edge:v9 preservingYPosition:1];
      }

      else
      {
        if (*(a1 + 73))
        {
          v15 = 0.0;
        }

        else
        {
          v15 = 1.0;
        }

        [v8[142] setAlpha:v15];
      }

      if (*(a1 + 75) == 1)
      {
        [*(*(a1 + 32) + 1136) removeFromSuperview];
      }
    }

    v21 = *(a1 + 32);
    if (*(v21 + 1160))
    {
      [*(v21 + 1136) removeFromSuperview];
      [*(*(a1 + 32) + 1136) _setAttached:0 didComplete:1];
      objc_storeStrong((*(a1 + 32) + 1136), *(*(a1 + 32) + 1160));
      v22 = *(a1 + 32);
      v23 = *(v22 + 1160);
      *(v22 + 1160) = 0;

      [*(*(a1 + 32) + 1136) _setAttached:1 didComplete:1];
      [*(a1 + 32) _positionTransitioningPalette:*(*(a1 + 32) + 1136) outside:0 edge:1 preservingYPosition:1];
    }

    else if (*(a1 + 75) == 1)
    {
      v24 = [*(v21 + 1136) superview];

      if (v24)
      {
        [*(*(a1 + 32) + 1136) removeFromSuperview];
        if (([*(*(a1 + 32) + 1136) isPinned] & 1) == 0)
        {
          [*(a1 + 32) _detachPalette:*(*(a1 + 32) + 1136)];
        }
      }
    }

    goto LABEL_41;
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v11 = [*(*(a1 + 32) + 1144) superview];
    [v11 insertSubview:*(*(a1 + 32) + 1144) belowSubview:*(a1 + 48)];
  }

  if (([*(*(a1 + 32) + 1136) isAttached] & 1) == 0)
  {
    v13 = *(a1 + 32);
    v12 = v13[142];
    if (*(a1 + 72) == 1)
    {
LABEL_18:
      [v13 _detachPalette:v12];
      goto LABEL_24;
    }

    v14 = v13[142];
LABEL_23:
    [v14 removeFromSuperview];
    goto LABEL_24;
  }

  if (*(a1 + 73) != 1 || ![*(*(a1 + 32) + 1136) _attachmentIsChanging])
  {
    if (*(a1 + 72) == 1)
    {
      v13 = *(a1 + 32);
      v12 = v13[142];
      goto LABEL_18;
    }

    if (*(a1 + 73))
    {
      goto LABEL_24;
    }

    v14 = *(*(a1 + 32) + 1136);
    goto LABEL_23;
  }

  [*(*(a1 + 32) + 1136) _setAttached:1 didComplete:1];
LABEL_24:
  v16 = *(a1 + 32);
  v17 = *(v16 + 1160);
  if (v17)
  {
    [v17 removeFromSuperview];
    [*(*(a1 + 32) + 1160) _setAttached:0 didComplete:1];
    v18 = *(a1 + 32);
    v19 = *(v18 + 1160);
    *(v18 + 1160) = 0;

    v16 = *(a1 + 32);
  }

  v20 = 1.0;
  if (*(a1 + 73))
  {
    v20 = 0.0;
  }

  [*(v16 + 1000) _setShadowAlpha:v20];
LABEL_41:
}

void __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = v3;
    v5 = [v4 paletteShadowIsHidden];
    v3 = v6;
    if ((v5 & 1) == 0)
    {
      [*(a1 + 32) _setShadowAlpha:1.0];
      v3 = v6;
    }
  }
}

void __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_7(uint64_t a1, void *a2)
{
  *&v96.size.width = a2;
  v3 = [*(a1 + 32) layer];
  v4 = [v3 presentationLayer];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [*(a1 + 32) frame];
  v96.origin.x = v13;
  v93 = v15;
  v94 = v14;
  rect = v16;
  v17 = [*(a1 + 32) _hidesShadow];
  if (*(a1 + 64) == 1)
  {
    v18 = *(*(a1 + 40) + 1136);
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  if ([v19 _supportsSpecialSearchBarTransitions])
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  v22 = [v21 viewForAsymmetricFade];
  v23 = 31;
  if (*(a1 + 64))
  {
    v23 = 32;
  }

  v24 = *(*(a1 + 40) + OBJC_IVAR___UISnapshotModalViewController__disappearingViewController[v23]);
  if ([v24 _supportsSpecialSearchBarTransitions])
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;
  v27 = [v26 viewForAsymmetricFade];
  if (v21)
  {
    v28 = v17;
  }

  else
  {
    v28 = 0;
  }

  if (v28 == 1 && ([v21 paletteShadowIsHidden] & 1) == 0)
  {
    if (v24)
    {
      LODWORD(v96.origin.y) = [v24 paletteShadowIsHidden];
    }

    else
    {
      LODWORD(v96.origin.y) = 1;
    }
  }

  else
  {
    LODWORD(v96.origin.y) = 0;
  }

  if (v26)
  {
    v29 = v17;
  }

  else
  {
    v29 = 0;
  }

  if (v29 == 1 && ([v26 paletteShadowIsHidden] & 1) == 0)
  {
    if (v19)
    {
      v91 = [v19 paletteShadowIsHidden];
    }

    else
    {
      v91 = 1;
    }
  }

  else
  {
    v91 = 0;
  }

  if ((v22 != 0) != (v27 != 0))
  {
    v166.origin.x = v96.origin.x;
    v166.size.width = v93;
    v166.origin.y = v94;
    v166.size.height = rect;
    MaxY = CGRectGetMaxY(v166);
    v167.origin.x = v6;
    v167.origin.y = v8;
    v167.size.width = v10;
    v167.size.height = v12;
    *(*(*(a1 + 48) + 8) + 24) = MaxY >= CGRectGetMaxY(v167);
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v31 = [*(*(a1 + 40) + 1144) superview];
      [v31 insertSubview:*(*(a1 + 40) + 1144) aboveSubview:*(a1 + 32)];
    }
  }

  v162 = 0;
  v163 = &v162;
  v164 = 0x2020000000;
  [v19 frame];
  Height = CGRectGetHeight(v168);
  v156 = 0;
  v157 = &v156;
  v158 = 0x4010000000;
  v159 = "";
  v32 = *(MEMORY[0x1E695F058] + 16);
  v160 = *MEMORY[0x1E695F058];
  v161 = v32;
  if (v19)
  {
    v140[0] = MEMORY[0x1E69E9820];
    v140[1] = 3221225472;
    v140[2] = __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_8;
    v140[3] = &unk_1E7102D38;
    v33 = v19;
    v34 = *(a1 + 40);
    v141 = v33;
    v142 = v34;
    v147 = &v162;
    y_low = LOBYTE(v96.origin.y);
    v143 = v21;
    v144 = *(a1 + 32);
    v155 = *(a1 + 65);
    v145 = v22;
    v148 = &v156;
    v149 = v6;
    v150 = v8;
    v151 = v10;
    v152 = v12;
    v35 = v27;
    v36 = *(a1 + 56);
    v146 = v35;
    v153 = v36;
    [UIView performWithoutAnimation:v140];
  }

  if (*(a1 + 65))
  {
    if (v22 && v163[3] > 0.0)
    {
      MinX = CGRectGetMinX(v157[1]);
      v169.origin.x = v96.origin.x;
      v169.size.width = v93;
      v169.origin.y = v94;
      v169.size.height = rect;
      v38 = CGRectGetMaxY(v169);
      Width = CGRectGetWidth(v157[1]);
      v86 = v163[3];
      [v22 frame];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v47 = v163[3];
      v48 = CGRectGetHeight(v157[1]);
      v49 = [v21 _searchBar];
      v84 = [v49 backgroundColor];
      v50 = v47 - v48;

      v132[0] = MEMORY[0x1E69E9820];
      v132[1] = 3221225472;
      v132[2] = __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_9;
      v132[3] = &unk_1E7102D60;
      v51 = v21;
      v133 = v51;
      v135 = &v156;
      v52 = v22;
      v134 = v52;
      v136 = v40;
      v137 = v42 - v50;
      v138 = v44;
      v139 = v46;
      [UIView performWithoutAnimation:v132];
      [v51 setFrame:{MinX, v38, Width, v86}];
      v53 = v50 + v42 - v50;
      [v52 setFrame:{v40, v53, v44, v46}];
      [*&v96.size.width transitionDuration];
      v55 = v54;
      v129[0] = MEMORY[0x1E69E9820];
      v129[1] = 3221225472;
      v129[2] = __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_10;
      v129[3] = &unk_1E70F35E0;
      v130 = v52;
      v131 = *(a1 + 66);
      v118[0] = MEMORY[0x1E69E9820];
      v118[1] = 3221225472;
      v118[2] = __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_13;
      v118[3] = &unk_1E7102DB0;
      v119 = v51;
      v56 = v84;
      v57 = *(a1 + 48);
      v120 = v56;
      v123 = v57;
      v89 = *(a1 + 32);
      v58 = v89.i64[0];
      v121 = vextq_s8(v89, v89, 8uLL);
      v122 = v130;
      v124 = &v162;
      v125 = v40;
      v126 = v53;
      v127 = v44;
      v128 = v46;
      [UIView animateKeyframesWithDuration:0 delay:v129 options:v118 animations:v55 completion:0.0];
    }

    else
    {
      [*(a1 + 40) _positionTransitioningPalette:v19 outside:0 edge:1 preservingYPosition:0];
    }

    if (LODWORD(v96.origin.y))
    {
      [v21 _setShadowAlpha:1.0];
    }

    if (v27)
    {
      [v27 frame];
      v96.origin.y = v60;
      v87 = v62;
      v90 = v61;
      v85 = v63;
      [v26 frame];
      v65 = v64;
      v67 = v66;
      v69 = v68;
      p_x = &v157->origin.x;
      v157[1].origin.x = v64;
      *(p_x + 5) = v71;
      v83 = v71;
      p_x[6] = v66;
      p_x[7] = v68;
      v170.origin.x = v96.origin.x;
      v170.size.width = v93;
      v170.origin.y = v94;
      v170.size.height = rect;
      v72 = CGRectGetMaxY(v170);
      v73 = CGRectGetHeight(v157[1]);
      if (v22)
      {
        v74 = v69;
      }

      else
      {
        v74 = 0.0;
      }

      v171.origin.x = v65;
      v171.origin.y = v72;
      v171.size.width = v67;
      v171.size.height = v74;
      v75 = CGRectGetHeight(v171);
      v76 = [v26 _searchBar];
      *&v96.origin.x = [v76 backgroundColor];

      v116[0] = MEMORY[0x1E69E9820];
      v116[1] = 3221225472;
      v116[2] = __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_15;
      v116[3] = &unk_1E70F3590;
      v77 = v26;
      v117 = v77;
      [UIView performWithoutAnimation:v116];
      [v77 _pushDisableLayoutFlushingForTransition];
      [v77 setFrame:{v65, v72, v67, v74}];
      [v27 setFrame:{v96.origin.y, v90 - (v73 - v75), v87, v85}];
      [*&v96.size.width transitionDuration];
      v79 = v78;
      v113[0] = MEMORY[0x1E69E9820];
      v113[1] = 3221225472;
      v113[2] = __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_16;
      v113[3] = &unk_1E70F35E0;
      v115 = *(a1 + 66);
      v114 = v27;
      *&v96.size.height = MEMORY[0x1E69E9820];
      v97 = 3221225472;
      v98 = __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_18;
      v99 = &unk_1E7102E00;
      v104 = *(a1 + 48);
      v95 = *(a1 + 32);
      v80 = v95.i64[0];
      v100 = vextq_s8(v95, v95, 8uLL);
      v101 = v77;
      v81 = *&v96.origin.x;
      v102 = v81;
      v103 = v114;
      v105 = v65;
      v106 = v83;
      v107 = v67;
      v108 = v69;
      y = v96.origin.y;
      v110 = v90;
      v111 = v87;
      v112 = v85;
      [UIView animateKeyframesWithDuration:0 delay:v113 options:&v96.size.height animations:v79 completion:0.0];
    }

    else if (v24)
    {
      if (*(a1 + 56) == 2)
      {
        v82 = 8;
      }

      else
      {
        v82 = 2;
      }

      [*(a1 + 40) _positionTransitioningPalette:v24 outside:1 edge:v82 preservingYPosition:1];
    }

    if (v91)
    {
      [v26 _setShadowAlpha:0.0];
    }
  }

  else
  {
    v59 = 0.0;
    if (*(a1 + 64))
    {
      v59 = 1.0;
    }

    [*(*(a1 + 40) + 1136) setAlpha:v59];
    if (v21)
    {
      [*(a1 + 40) _positionTransitioningPalette:v21 outside:0 edge:1 preservingYPosition:0];
      [v21 setAlpha:1.0];
    }

    if (v26)
    {
      [*(a1 + 40) _positionTransitioningPalette:v26 outside:0 edge:1 preservingYPosition:1];
      [v26 setAlpha:0.0];
    }
  }

  _Block_object_dispose(&v156, 8);
  _Block_object_dispose(&v162, 8);
}

uint64_t __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_8(uint64_t a1)
{
  v2 = [*(a1 + 32) superview];

  if (!v2)
  {
    v3 = [*(a1 + 32) layer];
    [v3 removeAllAnimations];

    [*(a1 + 40) _frameForPalette:*(a1 + 32)];
    [*(a1 + 32) setFrame:?];
    [*(a1 + 32) frame];
    *(*(*(a1 + 80) + 8) + 24) = CGRectGetHeight(v29);
    if (*(a1 + 136) == 1)
    {
      [*(a1 + 48) _setShadowAlpha:0.0];
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = [v4 _searchBar];
      v6 = [v5 backgroundImage];

      if (!v6)
      {
        v7 = [*(a1 + 56) backgroundImageForBarMetrics:{objc_msgSend(*(a1 + 56), "_activeBarMetrics")}];
        v8 = v7;
        if (v7)
        {
          [v7 size];
          if (v10 == *MEMORY[0x1E695F060] && v9 == *(MEMORY[0x1E695F060] + 8))
          {
            v11 = [*(a1 + 48) _searchBar];
            [v11 setBackgroundImage:v8];
          }
        }
      }
    }

    [*(a1 + 40) _installPaletteIntoViewHierarchy:*(a1 + 32)];
    if (*(*(*(a1 + 80) + 8) + 24) > 0.0)
    {
      [*(a1 + 32) layoutIfNeeded];
    }
  }

  if ((*(a1 + 137) & 1) == 0)
  {
    v17 = *(a1 + 32);
    goto LABEL_20;
  }

  if (*(a1 + 64))
  {
    [*(a1 + 48) frame];
    v12 = *(*(a1 + 88) + 8);
    v12[4] = v13;
    v12[5] = v14;
    v12[6] = v15;
    v12[7] = v16;
    *(*(*(a1 + 88) + 8) + 40) = CGRectGetMaxY(*(a1 + 96));
    if (!*(a1 + 72))
    {
      *(*(*(a1 + 88) + 8) + 56) = 0;
    }

    if (*(*(*(a1 + 80) + 8) + 24) > 0.0)
    {
      v17 = *(a1 + 64);
LABEL_20:

      return [v17 setAlpha:0.0];
    }

    v22 = *(*(a1 + 88) + 8);
    v23 = v22[4];
    v24 = v22[5];
    v25 = v22[6];
    v26 = v22[7];
    v27 = *(a1 + 48);

    return [v27 setFrame:{v23, v24, v25, v26}];
  }

  else
  {
    v20 = *(a1 + 32);
    v19 = *(a1 + 40);
    v21 = *(a1 + 128);

    return [v19 _positionTransitioningPalette:v20 outside:1 edge:v21 preservingYPosition:0];
  }
}

void __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_9(uint64_t a1)
{
  [*(a1 + 32) _pushDisableLayoutFlushingForTransition];
  [*(a1 + 32) setFrame:{*(*(*(a1 + 48) + 8) + 32), *(*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 48) + 8) + 48), *(*(*(a1 + 48) + 8) + 56)}];
  [*(a1 + 40) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v2 = [*(a1 + 32) _searchBar];
  [v2 setBackgroundColor:0];
}

void __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_10(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_11;
  v5[3] = &unk_1E70F3590;
  v6 = *(a1 + 32);
  [UIView addKeyframeWithRelativeStartTime:v5 relativeDuration:0.0 animations:0.01];
  if (*(a1 + 40))
  {
    v2 = 0.7;
  }

  else
  {
    v2 = 0.2;
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_12;
  v3[3] = &unk_1E70F3590;
  v4 = *(a1 + 32);
  [UIView addKeyframeWithRelativeStartTime:v3 relativeDuration:v2 animations:1.0 - v2];
}

void __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_13(uint64_t a1)
{
  [*(a1 + 32) _popDisableLayoutFlushingForTransition];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _searchBar];
  [v3 setBackgroundColor:v2];

  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v4 = [*(*(a1 + 48) + 1144) superview];
    [v4 insertSubview:*(*(a1 + 48) + 1144) belowSubview:*(a1 + 56)];
  }

  [*(a1 + 64) alpha];
  if (v5 != 1.0)
  {
    [*(a1 + 48) _frameForPalette:*(a1 + 32)];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = *(*(*(a1 + 80) + 8) + 24);
    objc_initWeak(&location, *(a1 + 32));
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_14;
    aBlock[3] = &unk_1E7102D88;
    objc_copyWeak(v18, &location);
    v18[1] = v7;
    v18[2] = v9;
    v18[3] = v11;
    v18[4] = v12;
    v17 = *(a1 + 64);
    v13 = *(a1 + 104);
    v19 = *(a1 + 88);
    v20 = v13;
    v14 = _Block_copy(aBlock);
    v15 = [*(a1 + 32) window];

    if (v15)
    {
      [*(a1 + 32) setResetAfterSearchFieldFade:v14];
    }

    else
    {
      v14[2](v14);
    }

    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }
}

uint64_t __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_14(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setFrame:{v2, v3, v4, v5}];

  [*(a1 + 32) setFrame:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
  v7 = *(a1 + 32);

  return [v7 setAlpha:1.0];
}

void __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_15(uint64_t a1)
{
  v1 = [*(a1 + 32) _searchBar];
  [v1 setBackgroundColor:0];
}

void __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_16(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 0.25;
  }

  else
  {
    v1 = 0.1;
  }

  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_17;
  v2[3] = &unk_1E70F3590;
  v3 = *(a1 + 32);
  [UIView addKeyframeWithRelativeStartTime:v2 relativeDuration:0.0 animations:v1];
}

void __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_18(uint64_t a1)
{
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v2 = [*(*(a1 + 32) + 1144) superview];
    [v2 insertSubview:*(*(a1 + 32) + 1144) belowSubview:*(a1 + 40)];
  }

  [*(a1 + 48) _popDisableLayoutFlushingForTransition];
  v3 = *(a1 + 56);
  v4 = [*(a1 + 48) _searchBar];
  [v4 setBackgroundColor:v3];

  [*(a1 + 64) alpha];
  if (v5 != 1.0)
  {
    objc_initWeak(&location, *(a1 + 48));
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_19;
    v13 = &unk_1E7102DD8;
    v14 = *(a1 + 64);
    objc_copyWeak(&v16, &location);
    v6 = *(a1 + 96);
    v17 = *(a1 + 80);
    v18 = v6;
    v7 = *(a1 + 128);
    v19 = *(a1 + 112);
    v20 = v7;
    v15 = *(a1 + 48);
    v8 = _Block_copy(&v10);
    v9 = [*(a1 + 48) window];

    if (v9)
    {
      [*(a1 + 48) setResetAfterSearchFieldFade:v8];
    }

    else
    {
      v8[2](v8);
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

uint64_t __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_19(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setFrame:{v2, v3, v4, v5}];

  [*(a1 + 32) setFrame:{*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)}];
  v7 = *(a1 + 40);

  return [v7 _setShadowAlpha:1.0];
}

- (void)_prepareCollectionViewController:(id)controller forSharingWithCollectionViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  parentViewController = [controllerCopy parentViewController];

  if (parentViewController)
  {
    _uiCollectionView = [viewControllerCopy _uiCollectionView];
    _uiCollectionView2 = [controllerCopy _uiCollectionView];

    if (_uiCollectionView != _uiCollectionView2)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ is configured to share a different collection view than %@", controllerCopy, viewControllerCopy}];
    }
  }

  else
  {
    [controllerCopy _clearSharedView];
    [controllerCopy _setUsesSharedView:1];
    _uiCollectionView3 = [viewControllerCopy _uiCollectionView];
    [controllerCopy _setSharedCollectionView:_uiCollectionView3];
  }
}

- (void)_prepareCollectionViewControllerForSharing:(id)sharing
{
  sharingCopy = sharing;
  topViewController = [(UINavigationController *)self topViewController];
  [(UINavigationController *)self _prepareCollectionViewController:sharingCopy forSharingWithCollectionViewController:topViewController];
}

- (void)_prepareCollectionViewControllers:(id)controllers forSharingInRange:(id)range
{
  controllersCopy = controllers;
  rangeCopy = range;
  firstIndex = [rangeCopy firstIndex];
  v8 = [rangeCopy indexGreaterThanIndex:firstIndex];
  v9 = [controllersCopy objectAtIndex:firstIndex];
  _uiCollectionView = [v9 _uiCollectionView];
  if (_uiCollectionView)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (v9 != _uiCollectionView && (isKindOfClass & 1) != 0)
    {
      _uiCollectionView2 = [v9 _uiCollectionView];
      [_uiCollectionView2 setDataSource:v9];

      _uiCollectionView3 = [v9 _uiCollectionView];
      [_uiCollectionView3 layoutIfNeeded];
    }
  }

  if (firstIndex != 0x7FFFFFFFFFFFFFFFLL && v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    do
    {
      v14 = [controllersCopy objectAtIndex:firstIndex];
      v15 = [controllersCopy objectAtIndex:v8];
      [(UINavigationController *)self _prepareCollectionViewController:v15 forSharingWithCollectionViewController:v14];
      v16 = [rangeCopy indexGreaterThanIndex:v8];

      firstIndex = v8;
      v8 = v16;
    }

    while (v16 != 0x7FFFFFFFFFFFFFFFLL);
  }
}

- (id)_effectiveActivityItemsConfiguration
{
  v7.receiver = self;
  v7.super_class = UINavigationController;
  _effectiveActivityItemsConfiguration = [(UIResponder *)&v7 _effectiveActivityItemsConfiguration];
  if (!_effectiveActivityItemsConfiguration)
  {
    viewControllers = [(UINavigationController *)self viewControllers];
    lastObject = [viewControllers lastObject];

    _effectiveActivityItemsConfiguration = [lastObject _effectiveActivityItemsConfiguration];
  }

  return _effectiveActivityItemsConfiguration;
}

@end