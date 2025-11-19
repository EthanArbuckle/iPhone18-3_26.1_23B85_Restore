@interface UINavigationController
+ (BOOL)doesOverridePreferredInterfaceOrientationForPresentation;
- ($1AB5FA073B851C12C2339EC22442E995)_heightRangeOfTopViews;
- ($1AB5FA073B851C12C2339EC22442E995)_intrinsicNavigationBarHeightRangeForNavItem:(id)a3;
- ($512FAC6031DC579ED3B9B436D64463DA)_calculateTopLayoutInfoForViewController:(SEL)a3;
- (BOOL)_allowsAutorotation;
- (BOOL)_animationParametersForHidingNavigationBar:(BOOL)a3 lastOperation:(int64_t)a4 edge:(unint64_t *)a5 duration:(double *)a6;
- (BOOL)_canHostRefreshControlOwnedByScrollView:(id)a3;
- (BOOL)_canPerformBackKeyCommandToPopViewController;
- (BOOL)_canPerformCustomizeBarActionWithSender:(id)a3;
- (BOOL)_canPerformRename:(id)a3;
- (BOOL)_canRestoreFocusAfterTransitionToRecalledItem:(id)a3 inViewController:(id)a4;
- (BOOL)_canUseBackKeyCommandToTriggerSidebarKeyCommandWithSender:(id)a3;
- (BOOL)_doesTopViewControllerSupportInterfaceOrientation:(int64_t)a3;
- (BOOL)_gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)_gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)_gestureRecognizerShouldBegin:(id)a3;
- (BOOL)_hasNestedNavigationController;
- (BOOL)_hasPotentiallyChromelessBottomBar;
- (BOOL)_hasPreferredInterfaceOrientationForPresentation;
- (BOOL)_hasTranslucentNavigationBarIncludingViewController:(id)a3;
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
- (BOOL)_isSupportedInterfaceOrientation:(int64_t)a3;
- (BOOL)_isTransitioningOrPaletteIsTransitioning;
- (BOOL)_isTransitioningSearchController;
- (BOOL)_isViewControllerFullWidth;
- (BOOL)_navbarIsAppearingInteractively;
- (BOOL)_navigationBar:(id)a3 getContentOffsetOfObservedScrollViewIfApplicable:(CGPoint *)a4 velocity:(CGPoint *)a5;
- (BOOL)_navigationBarShouldShowSidebarToggleInNSToolbar:(id)a3;
- (BOOL)_navigationBarShouldUpdateProgress;
- (BOOL)_navigationBarTopItemIsNestedNavigationController:(id)a3;
- (BOOL)_navigationItemShouldDeferSearchPresentationOrDismissalForScrollViewAnimation:(id)a3;
- (BOOL)_otherExpectedNavigationControllerObservesScrollView:(id)a3;
- (BOOL)_sanityCheckPushViewController:(id)a3 transition:(int)a4 forceImmediate:(BOOL)a5;
- (BOOL)_searchHidNavigationBar;
- (BOOL)_shouldBottomBarBeHidden;
- (BOOL)_shouldChildViewControllerUseFullScreenLayout:(id)a3;
- (BOOL)_shouldCrossFadeBottomBars;
- (BOOL)_shouldCrossFadeNavigationBar;
- (BOOL)_shouldCrossFadeNavigationBarVisibility;
- (BOOL)_shouldDisplaySearchBarInlineForEffectiveSearchControllerGivenTopNavigationItem:(id)a3 traitCollection:(id)a4;
- (BOOL)_shouldHideSearchBarWhenScrollingForNavigationItem:(id)a3;
- (BOOL)_shouldInteractivePopGestureBeEnabled;
- (BOOL)_shouldNavigationBarInsetViewController:(id)a3 orOverlayContent:(BOOL *)a4;
- (BOOL)_shouldSkipHostedRefreshControlUpdateSchedulingDeferredUpdateIfNecessary;
- (BOOL)_shouldTabBarController:(id)a3 insetViewController:(id)a4 orOverlayContent:(BOOL *)a5;
- (BOOL)_shouldToolBar:(id)a3 insetViewController:(id)a4 orOverlayContent:(BOOL *)a5;
- (BOOL)_shouldUseBuiltinInteractionController;
- (BOOL)_shouldUseOnePartRotation;
- (BOOL)_toolbarIsAnimatingInteractively;
- (BOOL)_toolbarShouldAnimateItemsUpdate:(id)a3;
- (BOOL)_transitionConflictsWithNavigationTransitions:(id)a3;
- (BOOL)_tryRequestPopToItem:(id)a3;
- (BOOL)_useCrossFadeForGestureHiding;
- (BOOL)_viewControllerIgnoresClippedGlyphPathFrame;
- (BOOL)_viewControllerRequiresVisibleToolbarForImplicitInlineSearch:(id)a3;
- (BOOL)_viewControllerUnderlapsStatusBar;
- (BOOL)_viewControllerWasSelected;
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)editing;
- (BOOL)isModalInPopover;
- (BOOL)isNavigationBarHidden;
- (CGRect)_boundsForPalette:(id)a3 size:(CGSize)a4;
- (CGRect)_frameForPalette:(id)a3;
- (CGRect)_frameForViewController:(id)a3;
- (CGRect)_frameForWrapperViewForViewController:(id)a3;
- (CGRect)_incomingNavigationBarFrame;
- (CGRect)transitionConductor:(id)a3 frameForViewController:(id)a4;
- (CGRect)transitionConductor:(id)a3 frameForWrapperViewForViewController:(id)a4;
- (CGSize)_adjustedContentSizeForPopover:(CGSize)a3;
- (CGSize)_navigationBarSizeForViewController:(id)a3 proposedHeight:(double)a4 allowRubberBandStretch:(BOOL)a5;
- (CGSize)_preferredContentSizeForcingLoad:(BOOL)a3;
- (CGSize)contentSizeForViewInPopover;
- (CGSize)preferredContentSize;
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
- (NSArray)popToRootViewControllerAnimated:(BOOL)animated;
- (NSArray)popToViewController:(UIViewController *)viewController animated:(BOOL)animated;
- (NSDirectionalEdgeInsets)_layoutMarginsforNavigationBar:(id)a3;
- (NSMapTable)_rememberedFocusedItemsByViewController;
- (UIEdgeInsets)_avoidanceInsets;
- (UIEdgeInsets)_calculateEdgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4;
- (UIEdgeInsets)_collapsableContentPaddingForObservedScrollView:(id)a3;
- (UIEdgeInsets)_edgeInsetsDeferringToCommandeeringTableHeaderViewStyleSearchControllerWithPresentingViewController:(id)a3;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4;
- (UIEdgeInsets)_expectedContentInsetDeltaForViewController:(id)a3;
- (UIEdgeInsets)_revealableContentPaddingForObservedScrollView:(id)a3 includeContentWithCollapsedAffinity:(BOOL)a4;
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
- (double)_computeTopAvoidanceAreaForBar:(unint64_t)a3 edge:(int)a4 hidden:;
- (double)_computeTopBarCenter:(int)a3 hidden:(unint64_t)a4 edge:(double)a5 center:offset:minimumTopOffset:;
- (double)_contentMarginForView:(id)a3;
- (double)_navigationBar:(id)a3 preferredHeightForTransitionToHeightRange:(id)a4;
- (double)_preferredHeightForHidingNavigationBarForViewController:(id)a3 topItem:(id)a4;
- (double)_scrollOffsetRetargettedToDetentOffsetIfNecessary:(double)a3 unclampedOriginalTargetOffset:(double)a4 scrollView:(id)a5;
- (double)_scrollViewBottomContentInsetForViewController:(id)a3;
- (double)_scrollViewTopContentInsetForViewController:(id)a3;
- (double)_statusBarHeightAdjustmentForCurrentOrientation;
- (double)_statusBarHeightForCurrentInterfaceOrientation;
- (double)_topBarHeight;
- (double)_topPalettePreferredLayoutHeightForVisibilityStateIfDisplayedForViewController:(id)a3;
- (double)_widthForLayout;
- (double)durationForTransition:(int)a3;
- (id)_additionalViewControllersToCheckForUserActivity;
- (id)_backdropBarGroupName;
- (id)_childViewControllersEligibleForOverridingPreferredFocusEnvironments;
- (id)_childViewControllersToSendViewWillTransitionToSize;
- (id)_createBuiltInTransitionControllerForOperation:(int64_t)a3;
- (id)_customInteractionController:(id)a3;
- (id)_customTransitionController:(BOOL)a3;
- (id)_deepestActionResponder;
- (id)_effectiveActivityItemsConfiguration;
- (id)_effectiveDelegateForNavigationItem:(id)a3;
- (id)_effectiveInteractionActivityTrackingBaseName;
- (id)_effectiveSearchControllerForScopeBarGivenTopNavigationItem:(id)a3;
- (id)_effectiveSearchControllerForSearchBarGivenTopNavigationItem:(id)a3;
- (id)_existingActiveVisibleToolbar;
- (id)_existingToolbarWithItems;
- (id)_findViewControllerToPopTo;
- (id)_findViewControllerToPopToForNavigationItem:(id)a3;
- (id)_hostingNavigationBar;
- (id)_interfaceOrientationWindowForBar:(id)a3 matchingBar:(id)a4;
- (id)_keyboardAnimationStyle;
- (id)_lastNavigationItems;
- (id)_managedSearchPaletteForEdge:(unint64_t)a3 size:(CGSize)a4;
- (id)_moreListTitle;
- (id)_navigationBarAdditionalActionsForBackButtonMenu:(id)a3;
- (id)_navigationBarForNestedNavigationController;
- (id)_navigationBarHiddenByDefault:(BOOL)a3;
- (id)_navigationBarToUseForMarginsInNavigationBar:(id)a3;
- (id)_navigationItemsCallingPublicAccessor:(BOOL)a3;
- (id)_nestedTopNavigationController;
- (id)_nestedTopViewController;
- (id)_nthChildViewControllerFromTop:(unint64_t)a3;
- (id)_outermostNavigationController;
- (id)_overridingPreferredFocusEnvironment;
- (id)_paletteForEdge:(unint64_t)a3 size:(CGSize)a4 paletteClass:(Class)a5;
- (id)_pinningBarForPalette:(id)a3;
- (id)_popViewControllerWithTransition:(int)a3 allowPoppingLast:(BOOL)a4;
- (id)_preferredStatusBarStyleAnimationParameters;
- (id)_recallRememberedFocusedItemForViewController:(id)a3;
- (id)_scrollDetentOffsetsForScrollView:(id)a3;
- (id)_separateViewControllersAfterAndIncludingViewController:(id)a3 forSplitViewController:(id)a4;
- (id)_showcaseView;
- (id)_startInteractiveBarTransition:(id)a3;
- (id)_topViewControllerObservableScrollViewForEdge:(unint64_t)a3;
- (id)_traitOverridesForChildViewController:(id)a3;
- (id)_transitionCoordinator;
- (id)_uip_tabElement;
- (id)_viewControllerForDisappearCallback;
- (id)_viewControllerForNavigationItem:(id)a3;
- (id)_viewControllerForObservableScrollView;
- (id)_viewForContentInPopover;
- (id)_viewsWithDisabledInteractionGivenTransitionContext:(id)a3;
- (id)_window;
- (id)allowedChildViewControllersForUnwindingFromSource:(id)a3;
- (id)childViewControllerForStatusBarHidden;
- (id)childViewControllerForStatusBarStyle;
- (id)defaultPNGName;
- (id)delegate;
- (id)existingPaletteForEdge:(unint64_t)a3;
- (id)moreListImage;
- (id)moreListSelectedImage;
- (id)moreListTableCell;
- (id)navigationItem;
- (id)paletteForEdge:(unint64_t)a3 size:(CGSize)a4;
- (id)popToRootViewControllerWithTransition:(int)a3;
- (id)popToViewController:(id)a3 transition:(int)a4;
- (id)popToViewControllerWithSnapbackIdentifier:(id)a3 animated:(BOOL)a4;
- (id)popViewControllerWithAnimationTransition:(int64_t)a3 duration:(double)a4 curve:(int64_t)a5;
- (id)preferredFocusEnvironments;
- (id)preferredFocusedView;
- (id)rotatingFooterView;
- (id)rotatingHeaderView;
- (id)rotatingSnapshotViewForWindow:(id)a3;
- (id)segueForUnwindingToViewController:(id)a3 fromViewController:(id)a4 identifier:(id)a5;
- (id)separateSecondaryViewControllerForSplitViewController:(id)a3;
- (id)tab;
- (id)tabBarItem;
- (id)transitionConductor:(id)a3 retargetedToViewControllerForTransitionFromViewController:(id)a4 toViewController:(id)a5 transition:(int)a6;
- (id)valueForUndefinedKey:(id)a3;
- (id)viewControllerForUnwindSegueAction:(SEL)a3 fromViewController:(id)a4 withSender:(id)a5;
- (int)_effectiveTransitionForTransition:(int)a3;
- (int)_transitionForOldViewControllers:(id)a3 newViewControllers:(id)a4;
- (int64_t)_navigationBarTransitionVariant;
- (int64_t)_positionForBar:(id)a3;
- (int64_t)_subclassPreferredFocusedViewPrioritizationType;
- (int64_t)_topLayoutTypeForViewController:(id)a3;
- (int64_t)modalTransitionStyle;
- (int64_t)navigationBarNSToolbarSection:(id)a3;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (int64_t)preferredStatusBarStyle;
- (int64_t)preferredTrafficLightStyle;
- (uint64_t)_setRequiresToolbarHiddenForFindAndReplace:(uint64_t)result;
- (unint64_t)_keyboardScreenEdgeForTransition:(int)a3;
- (unint64_t)preferredScreenEdgesDeferringSystemGestures;
- (unint64_t)supportedInterfaceOrientations;
- (void)__viewWillLayoutSubviews;
- (void)_applyViewControllers:(id)a3 transition:(int)a4 animated:(BOOL)a5 operation:(int64_t)a6 rescheduleBlock:(id)a7;
- (void)_calculateTopViewFramesForExpandedLayoutWithViewController:(id)a3 contentScrollView:(id)a4 gettingNavBarFrame:(CGRect *)a5 topPaletteFrame:(CGRect *)a6;
- (void)_calculateTopViewFramesForLayoutWithViewController:(id)a3 contentScrollView:(id)a4 navBarFrame:(CGRect *)a5 topPaletteFrame:(CGRect *)a6 topLayoutType:(int64_t)a7;
- (void)_calculateTopViewFramesFromLayoutHeightsWithViewController:(id)a3 contentScrollView:(id)a4 preservingContentInset:(BOOL)a5 respectFullExtension:(BOOL)a6 gettingNavBarFrame:(CGRect *)a7 topPaletteFrame:(CGRect *)a8;
- (void)_cancelInteractiveTransition:(double)a3 transitionContext:(id)a4;
- (void)_clearLastOperation;
- (void)_collapseViewController:(id)a3 forSplitViewController:(id)a4;
- (void)_commonInitWithBuiltinTransitionGap:(double)a3;
- (void)_computeAndApplyScrollContentInsetDeltaForViewController:(id)a3;
- (void)_configureBarSwipeGesture;
- (void)_configureBarTapGesture;
- (void)_configureBarsAutomaticActions;
- (void)_configureKeyboardBarHiding;
- (void)_configureToolbar;
- (void)_detachPalette:(id)a3;
- (void)_detachTopPaletteIfShowingSearchBarForTopmostViewControllerInNavigationController:(id)a3;
- (void)_didCancelTransitionFromViewController:(id)a3 toViewController:(id)a4 wrapperView:(id)a5 wasCustom:(BOOL)a6;
- (void)_didEndTransitionFromView:(id)a3 toView:(id)a4 wasCustom:(BOOL)a5;
- (void)_didResignContentViewControllerOfPopover:(id)a3;
- (void)_didUpdateFocusInContext:(id)a3;
- (void)_eagerlyUpdateSafeAreaInsets;
- (void)_ensureToViewControllersViewIsLoaded:(id)a3;
- (void)_executeNavigationHandler:(id)a3 deferred:(BOOL)a4;
- (void)_executeSplitViewControllerActions:(id)a3;
- (void)_finishAnimationTracking;
- (void)_finishInteractiveTransition:(double)a3 transitionContext:(id)a4;
- (void)_forgetFocusedItemForViewController:(id)a3;
- (void)_forwardPaletteToViewControllerIfNeeded:(id)a3;
- (void)_gestureRecognizedInteractiveHide:(id)a3;
- (void)_gestureRecognizedToggleVisibility:(id)a3;
- (void)_getRotationContentSettings:(id *)a3;
- (void)_handleSubtreeDidGainScrollView:(id)a3;
- (void)_hideForKeyboardAppearance;
- (void)_hideOrShowBottomBarIfNeededWithTransition:(int)a3;
- (void)_hideShowNavigationBarDidStop:(id)a3 finished:(id)a4 context:(id)a5;
- (void)_hideShowToolbarDidStop:(id)a3 finished:(id)a4 context:(id)a5;
- (void)_immediatelyApplyViewControllers:(id)a3 transition:(int)a4 animated:(BOOL)a5 operation:(int64_t)a6;
- (void)_immediatelyFinishNavigationBarTransition;
- (void)_initializeNavigationDeferredTransitionContextIfNecessary;
- (void)_installPaletteIntoViewHierarchy:(id)a3;
- (void)_layoutContainerViewDidMoveToWindow:(id)a3;
- (void)_layoutContainerViewSemanticContentAttributeChanged:(id)a3;
- (void)_layoutTopViewControllerLookForNested:(BOOL)a3;
- (void)_layoutViewController:(id)a3;
- (void)_makeBarHideGestureIfNecessary;
- (void)_makeBarSwipeGestureIfNecessary;
- (void)_marginInfoForChild:(id)a3 leftMargin:(double *)a4 rightMargin:(double *)a5;
- (void)_navigationBar:(id)a3 itemBackButtonUpdated:(id)a4;
- (void)_navigationBar:(id)a3 itemEnabledAutoScrollTransition:(id)a4;
- (void)_navigationBar:(id)a3 topItemUpdatedContentLayout:(id)a4;
- (void)_navigationBar:(id)a3 topItemUpdatedLargeTitleDisplayMode:(id)a4;
- (void)_navigationBar:(id)a3 topItemUpdatedSearchBarPlacementAllowsExternalIntegration:(id)a4;
- (void)_navigationBar:(id)a3 topItemUpdatedSearchBarPlacementAllowsToolbarIntegration:(id)a4;
- (void)_navigationBar:(id)a3 topItemUpdatedSearchController:(id)a4;
- (void)_navigationBarChangedSize:(id)a3;
- (void)_navigationBarDidChangeStyle:(id)a3;
- (void)_navigationBarDidEndAnimation:(id)a3;
- (void)_navigationBarDidUpdateVisibility:(id)a3;
- (void)_navigationBarPrepareToAnimateTransition:(id)a3;
- (void)_navigationBarWillBeginCoordinatedTransitionAnimations:(id)a3;
- (void)_navigationBarWillChangeHeightForManualShowOrHideOfSearchScopeBar:(id)a3;
- (void)_navigationBarWillRunAutomaticDeferredShowsScopeBar:(id)a3;
- (void)_navigationItemDidUpdateSearchController:(id)a3 oldSearchController:(id)a4;
- (void)_navigationItemDidUpdateToolbarAvoidsKeyboard:(id)a3;
- (void)_noteNestedNavigationControllerDidReturnToNormal:(id)a3;
- (void)_notifyTransitionBegan:(id)a3;
- (void)_observableScrollViewDidChangeFrom:(id)a3 forViewController:(id)a4 edges:(unint64_t)a5;
- (void)_observeScrollView:(id)a3 didBeginTransitionToDeferredContentOffset:(CGPoint)a4;
- (void)_observeScrollView:(id)a3 willEndDraggingWithVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5 unclampedOriginalTarget:(CGPoint)a6;
- (void)_observeScrollViewAlignedContentMarginDidChange:(id)a3;
- (void)_observeScrollViewDidEndDecelerating:(id)a3;
- (void)_observeScrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)_observeScrollViewDidScroll:(id)a3 topLayoutType:(int64_t)a4;
- (void)_observeScrollViewGeometryAffectingContentBottomDidChange:(id)a3;
- (void)_observeScrollViewHasClearedContentOffsetAnimation:(id)a3;
- (void)_observeScrollViewWillBeginDragging:(id)a3;
- (void)_performBackKeyCommand:(id)a3;
- (void)_performCoordinatedUpdateTopFramesTransitionAnimation;
- (void)_performSkippedHostedRefreshControlUpdateSchedulingDeferredUpdateIfNecessary;
- (void)_performTopViewGeometryUpdates:(id)a3;
- (void)_performWhileIgnoringUpdateTopViewFramesToMatchScrollOffset:(id)a3;
- (void)_popNavigationBar:(id)a3 item:(id)a4;
- (void)_positionNavigationBar:(id)a3 hidden:(BOOL)a4 edge:(unint64_t)a5 center:(CGPoint)a6 offset:(double)a7;
- (void)_positionNavigationBarHidden:(BOOL)a3 edge:(unint64_t)a4;
- (void)_positionNavigationBarHidden:(BOOL)a3 edge:(unint64_t)a4 initialOffset:(double)a5;
- (void)_positionPaletteHidden:(BOOL)a3 edge:(unint64_t)a4 initialOffset:(double)a5;
- (void)_positionToolbarHidden:(BOOL)a3 edge:(unint64_t)a4 crossFade:(BOOL)a5;
- (void)_positionTransitioningPalette:(id)a3 outside:(BOOL)a4 edge:(unint64_t)a5 preservingYPosition:(BOOL)a6;
- (void)_prepareCollectionViewController:(id)a3 forSharingWithCollectionViewController:(id)a4;
- (void)_prepareCollectionViewControllerForSharing:(id)a3;
- (void)_prepareCollectionViewControllers:(id)a3 forSharingInRange:(id)a4;
- (void)_prepareForNestedDisplayWithNavigationController:(id)a3;
- (void)_prepareForNormalDisplayWithNavigationController:(id)a3;
- (void)_presentationTransitionUnwrapViewController:(id)a3;
- (void)_presentationTransitionWrapViewController:(id)a3 forTransitionContext:(id)a4;
- (void)_propagateContentAdjustmentsForControllersWithSharedViews;
- (void)_releaseContainerViews;
- (void)_reloadCachedInteractiveScrollMeasurements;
- (void)_rememberFocusedItem:(id)a3 forViewController:(id)a4;
- (void)_rememberPresentingFocusedItem:(id)a3;
- (void)_repositionPaletteWithNavigationBarHidden:(BOOL)a3 duration:(double)a4 shouldUpdateNavigationItems:(BOOL)a5;
- (void)_requestNavigationBarUpdateSearchBarForPlacementChangeIfApplicable;
- (void)_resetScrollViewObservingForViewController:(id)a3;
- (void)_safeAreaInsetsDidChangeForView;
- (void)_scrollToRevealNavigationBarPart:(int64_t)a3 animated:(BOOL)a4;
- (void)_scrollViewManagerDidFinishScrolling:(id)a3;
- (void)_sendNavigationBarToBack;
- (void)_setAllowNestedNavigationControllers:(BOOL)a3;
- (void)_setAllowsFreezeLayoutForOrientationChangeOnDismissal:(BOOL)a3;
- (void)_setAllowsInteractivePopWhenNavigationBarHidden:(BOOL)a3;
- (void)_setBarsHidden:(BOOL)a3;
- (void)_setBarsHidden:(BOOL)a3 allowAnimation:(BOOL)a4;
- (void)_setBuiltinTransitionGap:(double)a3;
- (void)_setBuiltinTransitionStyle:(int64_t)a3;
- (void)_setCachedInteractionController:(id)a3;
- (void)_setCachedTransitionController:(id)a3;
- (void)_setClipUnderlapWhileTransitioning:(BOOL)a3;
- (void)_setClipsToBounds:(BOOL)a3;
- (void)_setContentInset:(UIEdgeInsets)a3;
- (void)_setContentOverlayInsets:(UIEdgeInsets)a3;
- (void)_setCreatedBySplitViewController:(BOOL)a3;
- (void)_setCrossfadingInTabBar:(BOOL)a3;
- (void)_setCrossfadingOutTabBar:(BOOL)a3;
- (void)_setCustomTransition:(BOOL)a3;
- (void)_setDefinesPresentationContextIfNecessaryForViewController:(id)a3;
- (void)_setDidExplicitlyHideTabBar:(BOOL)a3;
- (void)_setInteractiveScrollActive:(BOOL)a3;
- (void)_setIsNestedNavigationController:(BOOL)a3;
- (void)_setIsWrappingDuringAdaptation:(BOOL)a3;
- (void)_setKeyboardNotificationToken:(id)a3;
- (void)_setNavigationBarHidden:(BOOL)a3 edge:(unint64_t)a4 duration:(double)a5;
- (void)_setNavigationBarHidden:(BOOL)a3 edgeIfNotNavigating:(unint64_t)a4 duration:(double)a5;
- (void)_setNavigationBarHidesCompletelyOffscreen:(BOOL)a3;
- (void)_setNavigationSoundsEnabled:(BOOL)a3;
- (void)_setPreferredContentSizeFromChildContentContainer:(id)a3;
- (void)_setPreferredNavigationBarPosition:(int64_t)a3;
- (void)_setSearchHidNavigationBar:(BOOL)a3;
- (void)_setSuspendToolbarBackgroundUpdating:(BOOL)a3;
- (void)_setToolbarClass:(Class)a3;
- (void)_setToolbarHidden:(BOOL)a3 edge:(unint64_t)a4 duration:(double)a5;
- (void)_setUpContentFocusContainerGuide;
- (void)_setUpHostedRefreshControlForScrollView:(id)a3;
- (void)_setUseStandardStatusBarHeight:(BOOL)a3;
- (void)_setViewControllers:(id)a3 transition:(int)a4;
- (void)_setViewControllers:(id)a3 transition:(int)a4 animated:(BOOL)a5 operation:(int64_t)a6;
- (void)_setupBackGestureRecognizer;
- (void)_setupBackKeyCommand;
- (void)_setupDefaultClipUnderlapWhileTransitioningIfNeeded;
- (void)_setupVisualStyle;
- (void)_startCoordinatedBottomBarUpdateForTransition:(int)a3;
- (void)_startInteractiveNavbarTransition;
- (void)_startInteractiveToolbarTransition;
- (void)_startPaletteTransitionIfNecessary:(id)a3 animated:(BOOL)a4;
- (void)_startToolbarTransitionIfNecessary:(id)a3 animated:(BOOL)a4;
- (void)_stopObservingContentScrollView:(id)a3;
- (void)_stopObservingContentScrollViewsForViewController:(id)a3;
- (void)_tabBarControllerDidFinishShowingTabBar:(id)a3 isHidden:(BOOL)a4;
- (void)_unhideNavigationBarForEdge:(unint64_t)a3;
- (void)_updateAndObserveScrollView:(id)a3 viewController:(id)a4 forEdges:(unint64_t)a5;
- (void)_updateBackgroundTransitionProgressForScrollView:(id)a3 toolbar:(id)a4 isNavigationTransitionUpdate:(BOOL)a5;
- (void)_updateBarsForCurrentInterfaceOrientationAndForceBarLayout:(BOOL)a3;
- (void)_updateBottomBarHiddenStateFromOtherNavigationController:(id)a3;
- (void)_updateBottomBarsForNavigationTransition;
- (void)_updateChildContentMargins;
- (void)_updateContainersForStackChange;
- (void)_updateControlledViewsToFrame:(CGRect)a3;
- (void)_updateEnclosingSplitViewControllerForStackChange;
- (void)_updateEnclosingSplitViewControllerForTopViewControllerChange;
- (void)_updateEnclosingTabBarControllerForStackChange;
- (void)_updateFloatingBarContainerView;
- (void)_updateFloatingBarContentAnimated:(BOOL)a3;
- (void)_updateInteractiveBarTransition:(id)a3 withUUID:(id)a4 percent:(double)a5 isFinished:(BOOL)a6 didComplete:(BOOL)a7 completionSpeed:(double)a8 completionCurve:(int64_t)a9;
- (void)_updateInteractivePopGestureRecognizersEnabled:(BOOL)a3;
- (void)_updateInteractiveTransition:(double)a3;
- (void)_updateLayoutForScrollView:(id)a3 topLayoutType:(int64_t)a4;
- (void)_updateManualScrollEdgeAppearanceProgressForScrollView:(id)a3 navigationItem:(id)a4;
- (void)_updateNavigationBar:(id)a3 fromItems:(id)a4 toItems:(id)a5 animated:(BOOL)a6;
- (void)_updateNavigationBarHostedRefreshControlToHostRefreshControlForScrollView:(id)a3;
- (void)_updateNavigationBarScrollPocketContainerInteraction;
- (void)_updatePaletteConstraints;
- (void)_updatePalettesWithBlock:(id)a3;
- (void)_updateScrollViewFromViewController:(id)a3 toViewController:(id)a4;
- (void)_updateScrollViewObservationFlagsForScrollView:(id)a3 navigationItem:(id)a4 forEdges:(unint64_t)a5;
- (void)_updateToolbarItemsFromViewController:(id)a3 animated:(BOOL)a4;
- (void)_updateTopViewFramesForViewController:(id)a3 isCancelledTransition:(BOOL)a4 isOrientationChange:(BOOL)a5;
- (void)_updateTopViewFramesToMatchScrollOffsetInViewController:(id)a3 contentScrollView:(id)a4 topLayoutType:(int64_t)a5;
- (void)_userInterfaceIdiomChanged;
- (void)_viewControllerSubtreeDidGainViewController:(id)a3;
- (void)_viewSubtreeDidGainScrollView:(id)a3 enclosingViewController:(id)a4;
- (void)_willBecomeContentViewControllerOfPopover:(id)a3;
- (void)attachPalette:(id)a3 isPinned:(BOOL)a4;
- (void)dealloc;
- (void)decodeRestorableStateWithCoder:(id)a3;
- (void)detachPalette:(id)a3;
- (void)detachPalette:(id)a3 isInPaletteTransition:(BOOL)a4;
- (void)didAnimateFirstHalfOfRotationToInterfaceOrientation:(int64_t)a3;
- (void)didMoveToParentViewController:(id)a3;
- (void)didRotateFromInterfaceOrientation:(int64_t)a3;
- (void)encodeRestorableStateWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)loadView;
- (void)navigationBarDidResizeForPrompt:(id)a3;
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated;
- (void)pushViewController:(id)a3 transition:(int)a4 forceImmediate:(BOOL)a5;
- (void)removeChildViewController:(id)a3 notifyDidMove:(BOOL)a4;
- (void)rename:(id)a3;
- (void)runToolbarCustomizationPalette:(id)a3;
- (void)setAllowUserInteractionDuringTransition:(BOOL)a3;
- (void)setAvoidMovingNavBarOffscreenBeforeUnhiding:(BOOL)a3;
- (void)setContentSizeForViewInPopover:(CGSize)a3;
- (void)setDelegate:(id)delegate;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setEnableBackButtonDuringTransition:(BOOL)a3;
- (void)setHidesBarsOnSwipe:(BOOL)hidesBarsOnSwipe;
- (void)setHidesBarsOnTap:(BOOL)hidesBarsOnTap;
- (void)setHidesBarsWhenKeyboardAppears:(BOOL)hidesBarsWhenKeyboardAppears;
- (void)setHidesBarsWhenVerticallyCompact:(BOOL)hidesBarsWhenVerticallyCompact;
- (void)setNavBarWillHideAfterAnimation:(BOOL)a3;
- (void)setNavigationBar:(id)a3;
- (void)setNavigationBarClass:(Class)a3;
- (void)setNavigationBarHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setNeedsDeferredTransition:(BOOL)a3;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)setPretendNavBarHidden:(BOOL)a3;
- (void)setSearchBarHidNavBar:(BOOL)a3;
- (void)setToolbar:(id)a3;
- (void)setToolbarHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setViewControllers:(NSArray *)viewControllers animated:(BOOL)animated;
- (void)showViewController:(UIViewController *)vc sender:(id)sender;
- (void)transitionConductor:(id)a3 beginPinningInputViewsForTransitionFromViewController:(id)a4 toViewController:(id)a5 forTransitionType:(int)a6;
- (void)transitionConductor:(id)a3 didEndCustomTransitionWithContext:(id)a4 didComplete:(BOOL)a5;
- (void)transitionConductor:(id)a3 didStartCustomTransitionWithContext:(id)a4;
- (void)transitionConductor:(id)a3 didStartDeferredTransition:(BOOL)a4 context:(id)a5;
- (void)transitionConductor:(id)a3 interactiveTransitionDidUpdateProgress:(double)a4 finish:(BOOL)a5 transitionCompleted:(BOOL)a6 transitionContext:(id)a7;
- (void)transitionConductor:(id)a3 willTransitionFromViewController:(id)a4 toViewController:(id)a5;
- (void)transitionConductorWillStartImmediateTransition:(id)a3;
- (void)unwindForSegue:(id)a3 towardsViewController:(id)a4;
- (void)updateTabBarItemForViewController:(id)a3;
- (void)updateTitleForViewController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willAnimateFirstHalfOfRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)willAnimateSecondHalfOfRotationFromInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)willShowViewController:(id)a3 animated:(BOOL)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation UINavigationController

- (id)_window
{
  v8.receiver = self;
  v8.super_class = UINavigationController;
  v3 = [(UIViewController *)&v8 _window];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(UINavigationController *)self _temporaryWindowLocator];
    v5 = [v6 _window];
  }

  return v5;
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
    v5 = [(UINavigationController *)self topViewController];
    if ([v5 _isNavigationController])
    {
      if ([v5 isToolbarHidden])
      {
        v6 = 0;
      }

      else
      {
        v6 = [v5 _existingToolbar];
      }

      v4 = v6;
    }
  }

  return v4;
}

- (id)tab
{
  v3 = [(UINavigationController *)self _managedTabGroup];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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
  v2 = [(UINavigationController *)self _nestedTopNavigationController];
  v3 = [v2 topViewController];

  return v3;
}

- (UIViewController)topViewController
{
  v2 = [(UIViewController *)self mutableChildViewControllers];
  v3 = [v2 lastObject];

  return v3;
}

- (id)_nestedTopNavigationController
{
  v2 = self;
  v3 = [(UINavigationController *)self topViewController];
  if ([(UINavigationController *)v3 _isNestedNavigationController])
  {
    v2 = v3;
  }

  v4 = v2;

  return v2;
}

- (id)_transitionCoordinator
{
  v3 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionCoordinator];
  if (!v3)
  {
    v5.receiver = self;
    v5.super_class = UINavigationController;
    v3 = [(UIViewController *)&v5 _transitionCoordinator];
  }

  return v3;
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
      v6 = [(UIViewController *)self _screen];
      [v6 bounds];
      v5 = v7;
    }
  }

  if (self->__positionBarsExclusivelyWithSafeArea)
  {
    v8 = [(UINavigationController *)self navigationBar];
    v9 = [v8 traitCollection];
    v10 = [v9 userInterfaceIdiom];

    if (v10 == 3)
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
  v5 = [(UINavigationController *)self disappearingViewController];
  v3 = [(UINavigationController *)self topViewController];
  v4 = [(UINavigationController *)self lastOperation];
  if (v4 == 2)
  {
    if ([v5 _usesSharedView])
    {
LABEL_4:
      [v5 _navigationControllerContentInsetAdjustment];
      [v3 _setNavigationControllerContentInsetAdjustment:?];
      [v5 _navigationControllerContentOffsetAdjustment];
      [v3 _setNavigationControllerContentOffsetAdjustment:?];
    }
  }

  else if (v4 == 1 && ([v3 _usesSharedView] & 1) != 0)
  {
    goto LABEL_4;
  }
}

- (id)_outermostNavigationController
{
  if ([(UINavigationController *)self _isNestedNavigationController])
  {
    v3 = [(UIViewController *)self navigationController];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 _outermostNavigationController];
    }

    else
    {
      v5 = self;
    }

    v6 = v5;
  }

  else
  {
    v6 = self;
  }

  return v6;
}

- (BOOL)_shouldBottomBarBeHidden
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(UINavigationController *)self bottomViewController];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(UIViewController *)self mutableChildViewControllers];
  v5 = [v4 reverseObjectEnumerator];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 hidesBottomBarWhenPushed])
        {

          v11 = 1;
          goto LABEL_12;
        }

        if (v10 == v3)
        {
          goto LABEL_10;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_10:

  v3 = [(UINavigationController *)self topViewController];
  v11 = [v3 _suppressesBottomBar];
LABEL_12:

  return v11;
}

- (UIViewController)bottomViewController
{
  v3 = [(UIViewController *)self mutableChildViewControllers];
  if ([v3 count])
  {
    v4 = [v3 firstObject];
    if ((*(&self->_navigationControllerFlags + 6) & 6) != 0 && ([(UINavigationController *)self disappearingViewController], v5 = objc_claimAutoreleasedReturnValue(), v5, v4 == v5))
    {
      if ([v3 count] < 2)
      {
        v7 = 0;
        goto LABEL_6;
      }

      v6 = [v3 objectAtIndexedSubscript:1];
    }

    else
    {
      v6 = v4;
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

  v3 = [(UINavigationController *)self _outermostNavigationController];
  v4 = v3;
  if (v3 == self)
  {
    v5 = *&self->_navigationControllerFlags & 1;
  }

  else
  {
    v5 = [(UINavigationController *)v3 isNavigationBarHidden];
  }

  return v5;
}

- (BOOL)_isPopping
{
  v3 = [(UINavigationBar *)self->_navigationBar _stack];
  v4 = [v3 isPopping];

  return (v4 & 1) != 0 || [(UINavigationController *)self _isTransitioning]&& [(UINavigationController *)self lastOperation]== 2;
}

- (BOOL)_searchHidNavigationBar
{
  v3 = [(UINavigationController *)self _outermostNavigationController];
  v4 = v3;
  if (v3 == self)
  {
    v5 = *(&self->_navigationControllerFlags + 6) & 1;
  }

  else
  {
    v5 = [(UINavigationController *)v3 _searchHidNavigationBar];
  }

  return v5;
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
  v2 = [(UINavigationController *)self _outermostNavigationController];
  v3 = [v2 _existingNavigationBar];

  return v3;
}

- (BOOL)_isPushing
{
  v3 = [(UINavigationBar *)self->_navigationBar _stack];
  v4 = [v3 isPushing];

  if (v4)
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
  v21 = [(UINavigationController *)self navigationBar];
  [(UILayoutContainerView *)self->_containerView addSubview:?];
  [(UINavigationController *)self _positionNavigationBarHidden:*&self->_navigationControllerFlags & 1];
  if (_UIScrollPocketEnabled())
  {
    [v21 addInteraction:self->_navigationBarScrollPocketContainerInteraction];
    [(UINavigationController *)self _updateNavigationBarScrollPocketContainerInteraction];
  }

  [(UIView *)self->_containerView bounds];
  v13 = [(UIView *)[UINavigationTransitionView alloc] initWithFrame:v9, v10, v11, v12];
  navigationTransitionView = self->_navigationTransitionView;
  self->_navigationTransitionView = v13;

  [(UIView *)self->_navigationTransitionView setAutoresizingMask:18];
  [(UIView *)self->_containerView insertSubview:self->_navigationTransitionView belowSubview:v21];
  [(UINavigationController *)self _setupVisualStyle];
  if (_UIUnifiedToolbarEnabled())
  {
    v15 = +[_UIFloatingBarContainerProvider makeView];
    floatingBarContainerView = self->_floatingBarContainerView;
    self->_floatingBarContainerView = v15;

    [(_UIFloatingBarContainer *)self->_floatingBarContainerView addInteraction:self->_toolbarScrollPocketContainerInteraction];
    [(UINavigationController *)self _updateFloatingBarContainerView];
    v17 = [(UIViewController *)self view];
    [v17 addSubview:self->_floatingBarContainerView];
  }

  else if (![(UINavigationController *)self isToolbarHidden])
  {
    v18 = self->_containerView;
    v19 = [(UINavigationController *)self toolbar];
    [(UILayoutContainerView *)v18 addSubview:v19];

    [(UINavigationController *)self _positionToolbarHidden:[(UINavigationController *)self isToolbarHidden]];
  }

  if ([(UIViewController *)self childViewControllersCount])
  {
    [(UINavigationController *)self setNeedsDeferredTransition];
  }

  [(UINavigationController *)self _configureBarsAutomaticActions];
  [(UINavigationController *)self _setUpContentFocusContainerGuide];
  [(UINavigationController *)self _setupBackKeyCommand];
  v20 = [(UIViewController *)self view];
  [(_UIViewControllerTransitionConductor *)self->_transitionConductor setTransitionContainerView:v20];
}

- (void)_setupVisualStyle
{
  v4 = +[_UINavigationControllerVisualStyleFactory sharedInstance];
  v5 = [v4 styleForNavigationController:self];
  visualStyle = self->_visualStyle;
  self->_visualStyle = v5;

  if (!self->_visualStyle)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:954 description:@"Visual provider must always be set"];
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
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = MEMORY[0x1E69E9820];
    v6 = 3221225472;
    v7 = __53__UINavigationController__configureKeyboardBarHiding__block_invoke;
    v8 = &unk_1E70F3D28;
    objc_copyWeak(&v9, &location);
    v4 = [v3 addObserverForName:@"UIKeyboardWillShowNotification" object:0 queue:0 usingBlock:&v5];
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
      v4 = [(UIViewController *)self _existingView];
      [v4 addGestureRecognizer:self->__barSwipeHideGesture];
    }

    else
    {
      v4 = [(UIGestureRecognizer *)barSwipeHideGesture view];
      [v4 removeGestureRecognizer:self->__barSwipeHideGesture];
    }
  }
}

- (void)_configureBarTapGesture
{
  if (self->__barTapHideGesture)
  {
    v3 = [(UIViewController *)self _existingView];
    v5 = v3;
    if (self->_hidesBarsOnTap || self->_hidesBarsWhenVerticallyCompact || self->_hidesBarsOnSwipe)
    {
      [v3 addGestureRecognizer:self->__barTapHideGesture];
    }

    else
    {
      v4 = [(UIGestureRecognizer *)self->__barTapHideGesture view];
      [v4 removeGestureRecognizer:self->__barTapHideGesture];
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

    v5 = [(UIViewController *)self view];
    [v5 addLayoutGuide:self->_contentFocusContainerGuide];

    [(UILayoutGuide *)self->_contentFocusContainerGuide setIdentifier:@"UINavigationControllerContentFocusContainerGuide"];
    v16 = MEMORY[0x1E69977A0];
    v22 = [(UILayoutGuide *)self->_contentFocusContainerGuide topAnchor];
    v23 = [(UINavigationController *)self navigationBar];
    v21 = [v23 bottomAnchor];
    v20 = [v22 constraintEqualToAnchor:v21];
    v24[0] = v20;
    v18 = [(UILayoutGuide *)self->_contentFocusContainerGuide leadingAnchor];
    v19 = [(UIViewController *)self view];
    v17 = [v19 leadingAnchor];
    v6 = [v18 constraintEqualToAnchor:v17];
    v24[1] = v6;
    v7 = [(UILayoutGuide *)self->_contentFocusContainerGuide trailingAnchor];
    v8 = [(UIViewController *)self view];
    v9 = [v8 trailingAnchor];
    v10 = [v7 constraintEqualToAnchor:v9];
    v24[2] = v10;
    v11 = [(UILayoutGuide *)self->_contentFocusContainerGuide bottomAnchor];
    v12 = [(UIViewController *)self view];
    v13 = [v12 bottomAnchor];
    v14 = [v11 constraintEqualToAnchor:v13];
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
  v5 = [(UIViewController *)self _containingTabBarController];
  [v5 _navigationControllerDidUpdateStack:self];
  v3 = [(UINavigationController *)self _managedTabGroup];

  if (v3)
  {
    v4 = [(UINavigationController *)self _managedTabGroup];
    [v4 _updateForManagingNavigationStackChange];
  }
}

- (id)_viewControllerForObservableScrollView
{
  if ([(UIViewController *)self _shouldRequestViewControllerForObservableScrollViewFromPresentedViewController])
  {
    v6.receiver = self;
    v6.super_class = UINavigationController;
    v3 = [(UIViewController *)&v6 _viewControllerForObservableScrollView];
  }

  else
  {
    v4 = [(UINavigationController *)self _nestedTopViewController];
    v3 = _viewControllerForObservableScrollViewForViewController(v4);
  }

  return v3;
}

- (id)_childViewControllersToSendViewWillTransitionToSize
{
  if (![(UINavigationController *)self _allowNestedNavigationControllers]|| ![(UINavigationController *)self _hasNestedNavigationController])
  {
    goto LABEL_18;
  }

  v3 = [(UIViewController *)self parentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
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

  v6 = [v5 childViewControllers];
  v7 = [v6 firstObject];
  v8 = v7;
  if (v7 == self)
  {

LABEL_15:
    v15.receiver = self;
    v15.super_class = UINavigationController;
    v10 = [(UIViewController *)&v15 _childViewControllersToSendViewWillTransitionToSize];
    v11 = [v10 mutableCopy];

    v12 = [v5 _childViewControllersToSendViewWillTransitionToSize];
    [v11 removeObjectsInArray:v12];

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
  v11 = [(UIViewController *)&v14 _childViewControllersToSendViewWillTransitionToSize];
LABEL_19:

  return v11;
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
    v3 = [(UINavigationController *)self topViewController];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)preferredScreenEdgesDeferringSystemGestures
{
  v3 = [(UINavigationController *)self topViewController];
  v4 = [v3 _effectiveScreenEdgesDeferringSystemGesturesViewController];
  v5 = [v4 preferredScreenEdgesDeferringSystemGestures];

  if ((*(&self->_navigationControllerFlags + 8) & 8) != 0)
  {
    v6 = [(UIViewController *)self _existingView];
    v7 = [v6 _shouldReverseLayoutDirection];

    v8 = 2;
    if (v7)
    {
      v8 = 8;
    }

    v5 |= v8;
  }

  return v5;
}

- (void)_updateChildContentMargins
{
  v5.receiver = self;
  v5.super_class = UINavigationController;
  [(UIViewController *)&v5 _updateChildContentMargins];
  v3 = [(UINavigationController *)self _existingNavigationBar];
  [v3 layoutMarginsDidChange];

  v4 = [(UINavigationController *)self _existingToolbar];
  [v4 setNeedsLayout];
}

- (int64_t)preferredStatusBarStyle
{
  if (!_UISolariumEnabled())
  {
    return [(UIViewController *)&v7 preferredStatusBarStyle:self];
  }

  v3 = [(UINavigationController *)self navigationBar];
  v4 = [v3 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (v5 == 2)
  {
    return 1;
  }

  if (v5 == 1)
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
  v3 = [(UINavigationController *)self topViewController];
  v4 = [v3 navigationItem];
  v5 = [v4 _navigationBarVisibility];

  v6 = [(UINavigationController *)self navigationBar];
  if ([(UINavigationController *)self isNavigationBarHidden])
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    if (([v6 isHidden] & 1) == 0 && v5 != 1)
    {
      [v6 alpha];
      v7 = v8 > 0.0 || v5 == 2;
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
    v8 = [(_UINavigationControllerPalette *)topPalette _constraints];
    if ([v8 count])
    {
      v4 = [(_UINavigationControllerPalette *)self->_topPalette _constraints];
      v5 = [v4 firstObject];
      v6 = [v5 isActive];

      if ((v6 & 1) == 0)
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
  v3 = [(UINavigationController *)self topViewController];
  v4 = 0;
  v5 = 0;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = [v3 _contentOrObservableScrollViewForEdge:*(&xmmword_18A679310 + v4)];
    v9 = v8;
    if (v8)
    {
      v10 = v5 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v5 = [MEMORY[0x1E695DF70] array];
    }

    else if (!v8)
    {
      goto LABEL_12;
    }

    if (([v9 _safeAreaInsetsFrozen] & 1) == 0 && (objc_msgSend(v5, "containsObject:", v9) & 1) == 0)
    {
      [v5 addObject:v9];
    }

LABEL_12:

    v6 = 0;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
  v11 = [v3 _existingView];
  v12 = v11;
  if (!v5 && v11)
  {
    if ([v11 _safeAreaInsetsFrozen])
    {
      v5 = 0;
    }

    else
    {
      v13 = [v12 subviews];
      if ([v13 count])
      {
        v14 = [v12 subviews];
        v5 = [v14 mutableCopy];
      }

      else
      {
        v5 = [MEMORY[0x1E695DF70] arrayWithObject:v12];
      }
    }
  }

  v15 = [v3 navigationItem];
  v16 = [(UINavigationController *)self _effectiveSearchControllerForSearchBarGivenTopNavigationItem:v15];
  v17 = v16;
  if (!v16)
  {
    v19 = [(UINavigationController *)self _effectiveSearchControllerForScopeBarGivenTopNavigationItem:v15];
    v18 = [v19 _currentActiveChildViewController];

    if (!v18)
    {
      goto LABEL_33;
    }

LABEL_25:
    v20 = [v18 _contentOrObservableScrollViewForEdge:1];
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = [v18 _existingView];
      if (!v21)
      {
LABEL_32:

        goto LABEL_33;
      }
    }

    if (([v21 _safeAreaInsetsFrozen] & 1) == 0)
    {
      if (!v5)
      {
        v5 = [MEMORY[0x1E695DF70] array];
      }

      [v5 addObject:v21];
    }

    goto LABEL_32;
  }

  v18 = [v16 _currentActiveChildViewController];
  if (v18)
  {
    goto LABEL_25;
  }

LABEL_33:
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v22 = v5;
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
  v3 = [(UIViewController *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 > 8 || ((1 << v4) & 0x10C) == 0)
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
    if (v4 == 3)
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

    v8 = [(UIGestureRecognizer *)v7 allowedPressTypes];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
    v10 = [v8 containsObject:v9];

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
    v3 = [(UINavigationController *)self topViewController];
    isHeightOfTopViewsCoordinatedToMatchViewControllerOffsets = _isHeightOfTopViewsCoordinatedToMatchViewControllerOffsets(self, v3);

    [(_UIViewControllerTransitionConductor *)self->_transitionConductor startDeferredTransitionIfNeeded];
    if (![(UINavigationController *)self _isNestedNavigationController]&& [(UINavigationController *)self _isNavigationBarVisible]&& ![(UINavigationController *)self _isPushingOrPopping])
    {
      [(UINavigationController *)self _positionNavigationBarHidden:0];
    }

    v5 = [(UINavigationController *)self topViewController];
    v6 = _isHeightOfTopViewsCoordinatedToMatchViewControllerOffsets(self, v5);

    if ((*&self->_navigationControllerFlags & 4) == 0 || [(UINavigationController *)self _isPushingOrPopping]|| isHeightOfTopViewsCoordinatedToMatchViewControllerOffsets != v6)
    {
      v7 = [(UINavigationController *)self topViewController];
      if ([v7 _isNestedNavigationController] && objc_msgSend(v7, "_isPushingOrPopping"))
      {
        v8 = [v7 _existingView];
        [v8 setNeedsLayout];
      }

      [(UINavigationController *)self _computeAndApplyScrollContentInsetDeltaForViewController:v7];
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
  if (a1 && (*(a1 + 1296) & 0x20) == 0)
  {
    if (_UISolariumEnabled())
    {
      v2 = [a1 traitCollection];
      *(a1 + 1288) = *(a1 + 1288) & 0xFFFFFFFBFFFFFFFFLL | (([v2 userInterfaceIdiom] == 3) << 34);
    }

    else
    {
      *(a1 + 1288) &= ~0x400000000uLL;
    }
  }
}

- (BOOL)_isNavigationBarEffectivelyVisible
{
  v3 = [(UINavigationController *)self _isNavigationBarVisible];
  if (v3)
  {
    LOBYTE(v3) = (*(&self->_navigationControllerFlags + 1) & 0x20) == 0;
  }

  return v3;
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
  v4 = [v3 userInterfaceIdiom];

  if (v4 || +[UIDevice _hasHomeButton]|| [(UINavigationController *)self isNavigationBarHidden])
  {
    v5 = [(UINavigationController *)self topViewController];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tabBarItem
{
  v12.receiver = self;
  v12.super_class = UINavigationController;
  v3 = [(UIViewController *)&v12 tabBarItem];
  v4 = [v3 image];
  if (v4 || ([v3 selectedImage], (v4 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v3, "unselectedImage"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
LABEL_5:
    v6 = v3;
LABEL_6:

    v3 = v6;
    goto LABEL_7;
  }

  if (([v3 isSystemItem] & 1) == 0)
  {
    v8 = [(UINavigationController *)self bottomViewController];
    v5 = [v8 tabBarItem];

    v9 = [v5 image];
    if (v9 || ([v5 selectedImage], (v9 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v5, "unselectedImage"), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else if (([v5 isSystemItem] & 1) == 0)
    {
      goto LABEL_5;
    }

    v6 = v5;

    v10 = [(UIViewController *)self _fallbackTabElementCreateIfNeeded:0];
    v11 = v10;
    if (v10)
    {
      [v10 _setBridgedTabBarItem:v6];
    }

    goto LABEL_6;
  }

LABEL_7:

  return v3;
}

- (id)navigationItem
{
  if ([(UINavigationController *)self _isNestedNavigationController]&& ([(UINavigationController *)self bottomViewController], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [v3 navigationItem];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UINavigationController;
    v5 = [(UIViewController *)&v7 navigationItem];
  }

  return v5;
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
  v2 = [(UINavigationController *)self _navbarAnimationId];
  v3 = v2 != 0;

  return v3;
}

- (double)_statusBarHeightAdjustmentForCurrentOrientation
{
  if (self->__positionBarsExclusivelyWithSafeArea)
  {
    v3 = self;
    v4 = v3;
    if (self->__positionBarsExclusivelyWithSafeArea && (-[UIViewController _existingView](v3, "_existingView"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 _usesMinimumSafeAreas], v5, v6))
    {
      v7 = [(UIViewController *)v4 _existingView];
      [v7 _minimumSafeAreaInsets];
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
  v3 = [(UINavigationController *)self navigationBar];
  if ([v3 state] && !-[UINavigationController _isCurrentTransitionPreemptable](self, "_isCurrentTransitionPreemptable"))
  {
    v10 = 0;
    goto LABEL_20;
  }

  v4 = [(UINavigationController *)self topViewController];
  v5 = [v4 searchDisplayController];
  v6 = [v4 navigationItem];
  if (!v6)
  {
    v6 = [v3 topItem];
  }

  v7 = [(UINavigationController *)self _effectiveSearchControllerForSearchBarGivenTopNavigationItem:v6];
  if (-[UINavigationController isNavigationBarHidden](self, "isNavigationBarHidden") && !-[UINavigationController _allowsInteractivePopWhenNavigationBarHidden](self, "_allowsInteractivePopWhenNavigationBarHidden") && ![v6 _allowsInteractivePopWhenNavigationBarHidden] || !objc_msgSend(v6, "_allowsInteractivePop") || objc_msgSend(v5, "isActive") && (objc_msgSend(v5, "isNavigationBarHidingEnabled") & 1) != 0 || objc_msgSend(v7, "isActive") && (objc_msgSend(v7, "_hidesNavigationBarDuringPresentationRespectingInlineSearch") & 1) != 0 || objc_msgSend(v6, "hidesBackButton") && !objc_msgSend(v6, "_allowsInteractivePopWhenBackButtonHidden"))
  {
    goto LABEL_17;
  }

  v8 = [v6 leftBarButtonItems];
  if (![v8 count])
  {

    goto LABEL_22;
  }

  v9 = [v6 leftItemsSupplementBackButton];

  if (v9)
  {
LABEL_22:
    v12 = [(UINavigationController *)self previousViewController];
    v10 = v12 != 0;

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
  v3 = [(UINavigationController *)self _shouldInteractivePopGestureBeEnabled];
  v4 = *(&self->_navigationControllerFlags + 8);
  if (((v3 ^ ((v4 & 8) == 0)) & 1) == 0)
  {
    if (v3)
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
  v2 = [(UIViewController *)self mutableChildViewControllers];
  v3 = [v2 count];
  if (v3 < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v2 objectAtIndex:v3 - 2];
  }

  return v4;
}

- (BOOL)_shouldSkipHostedRefreshControlUpdateSchedulingDeferredUpdateIfNecessary
{
  v3 = [(UINavigationController *)self _updateNavigationBarHandler];
  if (v3)
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
      v7 = v3;
      objc_copyWeak(&v8, &location);
      [(UINavigationController *)self _setUpdateNavigationBarHandler:v6];
      objc_destroyWeak(&v8);

      objc_destroyWeak(&location);
    }
  }

  return v3 != 0;
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
        v4 = [v1 topViewController];
        v5 = [v4 _contentOrObservableScrollViewForEdge:1];

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
  v3 = [(UINavigationController *)self disappearingViewController];
  v4 = [(UINavigationController *)self topViewController];
  v5 = [(UINavigationController *)self lastOperation];
  v6 = [v4 _uiCollectionView];
  v7 = [v3 _uiCollectionView];

  if (v5 == 1)
  {
    v8 = v4;
  }

  else
  {
    v8 = v3;
  }

  v9 = [v8 _usesSharedView];
  if (v6 == v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_isViewControllerFullWidth
{
  v3 = [(UIViewController *)self view];
  [v3 frame];
  [v3 convertRect:0 toView:?];
  v5 = v4;
  v7 = v6;
  v8 = [(UINavigationController *)self _window];
  [v8 bounds];
  v10 = v9;
  v12 = v11;

  v13 = v7 > v12 * 0.5 && v10 == v5;
  return v13;
}

- (id)_keyboardAnimationStyle
{
  v3 = [(UINavigationController *)self _transitionAnimationContext];
  if (v3)
  {
    if ([(UINavigationController *)self _isViewControllerFullWidth])
    {
      v4 = +[UIDevice currentDevice];
      v5 = [v4 userInterfaceIdiom];

      v6 = (v5 & 0xFFFFFFFFFFFFFFFBLL) != 1;
    }

    else
    {
      v6 = 0;
    }

    v8 = [_UIViewControllerKeyboardAnimationStyle animationStyleWithContext:v3 useCustomTransition:v6];
    v9 = +[UIDevice currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10 & 0xFFFFFFFFFFFFFFFBLL) == 1 || ([(UIViewController *)&self->super.super.super.isa _parentViewController], v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v11, (isKindOfClass))
    {
      [v8 setOutDirection:0];
    }

    v13 = [(UIViewController *)self _keyboardSceneDelegate];
    v14 = [v13 hasTrackingAvailable];

    if (v14)
    {
      if (v6)
      {
        v15 = [objc_opt_class() _keyboardAnimationTypeForTransition:{-[UINavigationController _deferredTransition](self, "_deferredTransition")}];
      }

      else
      {
        v15 = 1;
      }

      [v8 setAnimationType:v15];
    }
  }

  else
  {
    v7 = [(UIViewController *)self _keyboardSceneDelegate];
    v8 = [v7 nextAnimationStyle];
  }

  return v8;
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
    v3 = [(UIViewController *)self mutableChildViewControllers];
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v3);
          }

          if ([*(*(&v8 + 1) + 8 * i) _isNestedNavigationController])
          {
            LOBYTE(v4) = 1;
            goto LABEL_13;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  v2 = [(_UINavigationControllerVisualStyle *)self->_visualStyle interactionController];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 contentSwipeGestureRecognizer];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_lastNavigationItems
{
  v3 = [(UIViewController *)self childViewControllersCount];
  if (v3 < 2)
  {
    v6 = 0;
  }

  else
  {
    v4 = v3;
    v5 = [(UIViewController *)self mutableChildViewControllers];
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4 - 1];
    for (i = 1; i != v4; ++i)
    {
      v8 = [v5 objectAtIndex:i];
      v9 = [v8 navigationItem];
      [v6 addObject:v9];
    }
  }

  return v6;
}

- (UIGestureRecognizer)interactivePopGestureRecognizer
{
  v2 = [(_UINavigationControllerVisualStyle *)self->_visualStyle interactionController];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 edgeSwipeGestureRecognizer];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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
  v3 = [(UIViewController *)&v6 _uip_tabElement];
  if (!v3)
  {
    v4 = [(UINavigationController *)self bottomViewController];
    v3 = [v4 _uip_tabElement];
  }

  return v3;
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
  v3 = [(UIViewController *)self presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 visibleViewController];
LABEL_5:
    v5 = v4;
LABEL_6:
    v6 = v5;
    v7 = v6;
    goto LABEL_7;
  }

  if (v3)
  {
    v4 = v3;
    goto LABEL_5;
  }

  v5 = [(UINavigationController *)self topViewController];
  if (![v5 _isNestedNavigationController])
  {
    goto LABEL_6;
  }

  v7 = [v5 visibleViewController];

  v6 = 0;
LABEL_7:

  return v7;
}

- ($1AB5FA073B851C12C2339EC22442E995)_heightRangeOfTopViews
{
  v3 = [(UINavigationController *)self topViewController];
  v4 = [v3 navigationItem];
  [(UINavigationController *)self _intrinsicNavigationBarHeightRangeForNavItem:v4];
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
  v2 = [(UINavigationController *)self topViewController];
  v3 = [v2 _viewControllerWasSelected];

  return v3;
}

- (BOOL)becomeFirstResponder
{
  v3 = [(UINavigationController *)self topViewController];
  if (v3 && (v4 = v3, -[UINavigationController topViewController](self, "topViewController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 canBecomeFirstResponder], v5, v4, v6))
  {
    v7 = [(UINavigationController *)self topViewController];
    v8 = [v7 becomeFirstResponder];

    return v8;
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
    v3 = [(UINavigationController *)self _existingActiveVisibleToolbar];

    if (v3)
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
    v4 = [(UINavigationController *)self topViewController];
    if (v4)
    {
      v5 = [(UINavigationController *)self topViewController];
      modalTransitionStyle = [v5 modalTransitionStyle];
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
  v3 = [(UILayoutContainerView *)self->_containerView delegate];

  if (v3 == self)
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
  v5 = [(UINavigationBar *)self->_navigationBar delegate];

  if (v5 == self)
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
  v2 = [(UINavigationController *)self topViewController];
  v3 = _UIStateRestorationDebugLogEnabled();
  if (v2)
  {
    if (v3)
    {
      NSLog(&cfstr_SNavigationcon.isa, "[UINavigationController(ActivityContinuationPrivate) _additionalViewControllersToCheckForUserActivity]", v2);
    }

    v6[0] = v2;
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
  v3 = [(UINavigationController *)self topViewController];
  if ((*&self->_navigationControllerFlags & 0xF0) != 0x20)
  {
    v4 = [(UINavigationController *)self disappearingViewController];

    if (v4)
    {
      v5 = [(UINavigationController *)self disappearingViewController];

      v3 = v5;
    }
  }

  return v3;
}

- (BOOL)_shouldUseBuiltinInteractionController
{
  v3 = [(UINavigationController *)self topViewController];
  v4 = [v3 preferredTransition];

  if (!v4 || (-[UIViewController traitCollection](self, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v4 _hasOwnInteractiveExitGestureForTraits:v5], v5, (v6 & 1) == 0))
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
  v3 = [(UINavigationController *)self _transitionController];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionContext];
    if ([v4 _state] && (objc_msgSend(v4, "_transitionHasCompleted") & 1) == 0)
    {
      v5 = [v3 shouldPreemptWithContext:v4];
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
  v3 = [(UIViewController *)&v9 _overridingPreferredFocusEnvironment];
  if (!v3)
  {
    v4 = [(UIViewController *)self _existingView];
    v5 = [v4 _window];

    if (!v5)
    {
      v3 = 0;
      goto LABEL_10;
    }

    v6 = [(UINavigationController *)self topViewController];
    v7 = [(UINavigationController *)self _recallRememberedFocusedItemForViewController:v6];
    if (v7)
    {
      if ([(UINavigationController *)self _canRestoreFocusAfterTransitionToRecalledItem:v7 inViewController:v6])
      {
        v3 = v7;
LABEL_9:

        goto LABEL_10;
      }

      [(UINavigationController *)self _forgetFocusedItemForViewController:v6];
    }

    v3 = 0;
    goto LABEL_9;
  }

LABEL_10:

  return v3;
}

- (id)_childViewControllersEligibleForOverridingPreferredFocusEnvironments
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(UINavigationController *)self topViewController];
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

- (NSMapTable)_rememberedFocusedItemsByViewController
{
  rememberedFocusedItemsByViewController = self->_rememberedFocusedItemsByViewController;
  if (!rememberedFocusedItemsByViewController)
  {
    v4 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    v5 = self->_rememberedFocusedItemsByViewController;
    self->_rememberedFocusedItemsByViewController = v4;

    rememberedFocusedItemsByViewController = self->_rememberedFocusedItemsByViewController;
  }

  return rememberedFocusedItemsByViewController;
}

- (id)preferredFocusEnvironments
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(UINavigationController *)self topViewController];
  if (v4)
  {
    [v3 addObject:v4];
  }

  if (![(UINavigationController *)self isNavigationBarHidden])
  {
    v5 = [(UINavigationController *)self navigationBar];
    if (v5)
    {
      [v3 addObject:v5];
    }
  }

  v6 = _UIFocusEnvironmentPreferredNodeToFocusedItem(self, v3);
  if (v6)
  {
    v7 = [v3 firstObject];
    v8 = v7;
    if (v7 == v6)
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
  v10 = [(UIViewController *)&v13 preferredFocusEnvironments];
  [v3 addObjectsFromArray:v10];

  v11 = _UIFocusEnvironmentCombinedPreferredFocusEnvironments(self, v3, [(UINavigationController *)self _subclassPreferredFocusedViewPrioritizationType]);

  return v11;
}

- (id)preferredFocusedView
{
  v3 = [(UINavigationController *)self topViewController];
  v4 = [v3 preferredFocusedView];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UINavigationController;
    v6 = [(UIViewController *)&v9 preferredFocusedView];
  }

  v7 = v6;

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
  v3 = [(UINavigationController *)self _nestedTopViewController];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 navigationController];
    v6 = v5;
    if (v5 == self)
    {
    }

    else
    {
      v7 = [v4 navigationController];
      v8 = [v7 _isTransitioning];

      if (v8)
      {
        v9 = [v4 navigationController];
        v10 = [v9 _shouldCrossFadeNavigationBarVisibility];

        goto LABEL_9;
      }
    }
  }

  if ([(UINavigationController *)self _shouldCrossFadeNavigationBar])
  {
    v10 = 1;
  }

  else
  {
    v10 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor shouldCrossFadeNavigationBarVisibility];
  }

LABEL_9:

  return v10;
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

  return [a1 doesOverrideViewControllerMethod:sel_preferredInterfaceOrientationForPresentation inBaseClass:v3];
}

- (void)_setToolbarClass:(Class)a3
{
  if (a3 && ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = NSStringFromClass(a3);
    [v6 handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:605 description:{@"%@ is not a subclass of UIToolbar", v7}];
  }

  self->_toolbarClass = a3;
}

- (id)_effectiveInteractionActivityTrackingBaseName
{
  v3 = [(UIViewController *)self interactionActivityTrackingBaseName];
  if (!v3)
  {
    if ([(UINavigationController *)self isMemberOfClass:objc_opt_class()])
    {
      v4 = [(UINavigationController *)self topViewController];
      v5 = [v4 _effectiveInteractionActivityTrackingBaseName];

      if (v5)
      {
        v3 = [@"UINC-" stringByAppendingString:v5];
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v6 = objc_opt_class();
      v3 = NSStringFromClass(v6);
    }
  }

  return v3;
}

- (void)_commonInitWithBuiltinTransitionGap:(double)a3
{
  v30[1] = *MEMORY[0x1E69E9840];
  if (!self->_navigationBarClass)
  {
    self->_navigationBarClass = objc_opt_class();
  }

  *&self->super._viewControllerFlags = *&self->super._viewControllerFlags & 0xFFFFFFFFFFF7FDFFLL | 0x200;
  self->_builtinTransitionGap = a3;
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
      v17 = [(UINavigationController *)self navigationBar];
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
      v23 = [(UINavigationController *)self toolbar];
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

- (void)didMoveToParentViewController:(id)a3
{
  v3.receiver = self;
  v3.super_class = UINavigationController;
  [(UIViewController *)&v3 didMoveToParentViewController:a3];
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

    v8 = [*(v5 + 125) delegate];

    v9 = [*(v5 + 125) isLocked];
    v10 = v9;
    if (*(v5 + 125) && ((v8 == v5) & v9) == 0)
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
      v12 = v8 == v5;
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
      v24 = [v5 viewControllers];
      [v23 configureWithInitialViewControllers:v24];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = UINavigationController;
  [(UIViewController *)&v11 encodeWithCoder:v4];
  navigationBar = self->_navigationBar;
  if (navigationBar)
  {
    [v4 encodeObject:navigationBar forKey:@"UINavigationBar"];
  }

  toolbar = self->_toolbar;
  if (toolbar)
  {
    [v4 encodeObject:toolbar forKey:@"UIToolbar"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    [v4 encodeConditionalObject:WeakRetained forKey:@"UIDelegate"];
  }

  navigationControllerFlags = self->_navigationControllerFlags;
  if (navigationControllerFlags)
  {
    [v4 encodeBool:1 forKey:@"UINavigationBarHidden"];
    navigationControllerFlags = self->_navigationControllerFlags;
  }

  if ((navigationControllerFlags & 2) != 0)
  {
    [v4 encodeBool:1 forKey:@"UIToolbarShown"];
  }

  builtinTransitionGap = self->_builtinTransitionGap;
  if (builtinTransitionGap != 0.0)
  {
    *&builtinTransitionGap = builtinTransitionGap;
    [v4 encodeFloat:@"UINavigationControllerTransitionGap" forKey:builtinTransitionGap];
  }

  builtinTransitionStyle = self->_builtinTransitionStyle;
  if (builtinTransitionStyle)
  {
    [v4 encodeInteger:builtinTransitionStyle forKey:@"UINavigationControllerTransitionStyle"];
  }

  if (self->_hidesBarsWhenKeyboardAppears)
  {
    [v4 encodeBool:1 forKey:@"UINavigationControllerCondensesBarsWhenKeyboardAppears"];
  }

  if (self->_hidesBarsOnSwipe)
  {
    [v4 encodeBool:1 forKey:@"UINavigationControllerCondensesBarsOnSwipe"];
  }

  if (self->_hidesBarsWhenVerticallyCompact)
  {
    [v4 encodeBool:1 forKey:@"UINavigationControllerHidesBarsWhenVerticallyCompact"];
  }

  if (self->_hidesBarsOnTap)
  {
    [v4 encodeBool:1 forKey:@"UINavigationControllerHidesBarsOnTap"];
  }

  if ((*(&self->_navigationControllerFlags + 8) & 2) != 0)
  {
    [v4 encodeBool:1 forKey:@"UINavigationControllerCreatedBySplitViewController"];
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
    v7 = [v4 allowsWeakReference];
    v6 = v4;
    if ((v7 & 1) == 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __38__UINavigationController_setDelegate___block_invoke;
      block[3] = &unk_1E70F35B8;
      v46 = v4;
      v47 = self;
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
    v12 = [(UINavigationController *)self delegate];
    v13 = v12;
    if (v11 == v12)
    {
      v15 = [(UINavigationController *)self allowsWeakReference];

      v14 = (v11 != 0) << 32;
      if (v11 && v15)
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

- (void)_setCrossfadingOutTabBar:(BOOL)a3
{
  v3 = 0x800000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFF7FFFFFFFFLL | v3;
}

- (void)_setCrossfadingInTabBar:(BOOL)a3
{
  v3 = 0x1000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFEFFFFFFFFFLL | v3;
}

- (void)_setDidExplicitlyHideTabBar:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFFFFFFF7FFLL | v3;
}

- (void)_setUseStandardStatusBarHeight:(BOOL)a3
{
  if (((((*(&self->_navigationControllerFlags + 4) & 0x40) == 0) ^ a3) & 1) == 0)
  {
    v3 = a3;
    v5 = [(UIViewController *)self _existingView];
    v6 = [v5 window];

    v7 = 0x4000000000;
    if (!v3)
    {
      v7 = 0;
    }

    *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFBFFFFFFFFFLL | v7;
    v8 = 0.0;
    if (v3)
    {
      v9 = [v6 windowScene];
      v10 = [v9 _interfaceOrientation];

      v11 = __UIStatusBarManagerForWindow(v6);
      v12 = v11;
      if ((v10 - 1) > 3)
      {
        [v11 statusBarHeight];
      }

      else
      {
        [v11 defaultStatusBarHeightInOrientation:v10];
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

- (void)setAllowUserInteractionDuringTransition:(BOOL)a3
{
  v3 = 0x8000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFF7FFFFFFFFFLL | v3;
}

- (void)setEnableBackButtonDuringTransition:(BOOL)a3
{
  v3 = 0x10000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFEFFFFFFFFFFLL | v3;
}

- (int)_transitionForOldViewControllers:(id)a3 newViewControllers:(id)a4
{
  v6 = a3;
  v7 = [a4 lastObject];
  v8 = [(UINavigationController *)self isMemberOfClass:objc_opt_class()];
  v9 = [v7 _existingView];
  if ((dyld_program_sdk_at_least() & 1) != 0 || (v8 & 1) != 0 || !v9)
  {
    if (!v9)
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

  v10 = [(UIViewController *)self view];
  v11 = [v9 isDescendantOfView:v10];

LABEL_9:
  v12 = [v6 lastObject];

  if (v7 == v12 && (v11 & 1) != 0)
  {
    v13 = 0;
  }

  else if (v11 & 1 | (([v6 containsObject:v7] & 1) == 0))
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  return v13;
}

- (int)_effectiveTransitionForTransition:(int)a3
{
  if (+[UIViewController _shouldDeferTransitions])
  {
    return a3;
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
    v9 = [(UINavigationController *)self _transitionCoordinator];
    if (v9)
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
      if ([(UINavigationController *)self _transitionConflictsWithNavigationTransitions:v9])
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

      if (!v4 && [v9 presentationStyle] != -1)
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
        v32 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionContext];
        v15 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionController];
        v16 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionContext];
        v33 = v15;
        v17 = [v15 preemptWithContext:v16];

        v18 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionContext];
        v19 = v18;
        if (v18)
        {
          v20 = v17;
          v21 = v32;
          if (v18 != v32)
          {
            v22 = *(__UILogGetCategoryCachedImpl("UINavigationController", &setViewControllers_animated____s_category) + 8);
            v11 = v34;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_DEFAULT, "A transition was started while preempting previous transition. Deferring new transition.", buf, 2u);
            }

            v23 = [(UINavigationController *)self _transitionCoordinator];
            v34[2](v34, v23);

            goto LABEL_36;
          }

          v31 = [MEMORY[0x1E696AAA8] currentHandler];
          [v31 handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:1249 description:@"Failed to preempt running transition."];
        }

        else
        {
          [(UIView *)self->_navigationBar layoutIfNeeded];
          [(_UIViewControllerTransitionConductor *)self->_transitionConductor setPendingPreemptionHandoffData:v17];
          v8[2](v8, v10, v4);
          v21 = v32;
          v20 = v17;
        }

        v11 = v34;
LABEL_36:

        goto LABEL_37;
      }

      v11[2](v11, v9);
      v12 = v9;
      if (sel__addInvalidationHandler_)
      {
        v27 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionContext];
        [v27 _state];
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

- (void)_setAllowNestedNavigationControllers:(BOOL)a3
{
  v3 = 0x40000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFBFFFFFFFFFFLL | v3;
}

- (void)_setIsNestedNavigationController:(BOOL)a3
{
  v3 = 0x800000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFF7FFFFFFFFFFFLL | v3;
}

- (id)_navigationItemsCallingPublicAccessor:(BOOL)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [(UIViewController *)self mutableChildViewControllers];
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
        if (a3)
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

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v8);
  }

  v13 = [(UINavigationController *)self topViewController];
  if ([v13 _isNestedNavigationController])
  {
    v14 = v13;
    v15 = [v14 _outermostNavigationController];
    v16 = [(UINavigationController *)self _outermostNavigationController];

    if (v15 == v16)
    {
      v17 = [v14 _navigationItems];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
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

            v22 = *(*(&v24 + 1) + 8 * j);
            if (([v5 containsObject:v22] & 1) == 0)
            {
              [v5 addObject:v22];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v19);
      }
    }
  }

  return v5;
}

- (void)_setViewControllers:(id)a3 transition:(int)a4 animated:(BOOL)a5 operation:(int64_t)a6
{
  v7 = a5;
  v8 = *&a4;
  v11 = a3;
  v12 = [MEMORY[0x1E695DFD8] setWithArray:v11];
  v13 = [v12 count];
  v14 = [v11 count];

  if (v13 != v14)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:1432 description:{@"All view controllers in a navigation controller must be distinct (%@)", v11}];
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __76__UINavigationController__setViewControllers_transition_animated_operation___block_invoke;
  v21[3] = &unk_1E71028D0;
  v21[4] = self;
  v21[5] = a2;
  [v11 enumerateObjectsUsingBlock:v21];
  if (!v8)
  {
    v15 = [(UIViewController *)self mutableChildViewControllers];
    v8 = [(UINavigationController *)self _transitionForOldViewControllers:v15 newViewControllers:v11];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__UINavigationController__setViewControllers_transition_animated_operation___block_invoke_2;
  aBlock[3] = &unk_1E70F45F8;
  v20 = v11;
  v16 = v11;
  v17 = _Block_copy(aBlock);
  [(UINavigationController *)self _applyViewControllers:v17 transition:v8 animated:v7 operation:a6 rescheduleBlock:0];
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

- (void)_setViewControllers:(id)a3 transition:(int)a4
{
  v4 = *&a4;
  v8 = a3;
  v6 = v4;
  if (!v4)
  {
    v7 = [(UIViewController *)self mutableChildViewControllers];
    v6 = [(UINavigationController *)self _transitionForOldViewControllers:v7 newViewControllers:v8];
  }

  [(UINavigationController *)self _setViewControllers:v8 transition:v6 animated:v4 != 0];
}

- (void)removeChildViewController:(id)a3 notifyDidMove:(BOOL)a4
{
  v4 = a4;
  v11.receiver = self;
  v11.super_class = UINavigationController;
  v6 = a3;
  [(UIViewController *)&v11 removeChildViewController:v6 notifyDidMove:v4];
  v7 = [v6 _viewControllerForObservableScrollView];

  v8 = [v7 _contentOrObservableScrollViewForEdge:1];
  v9 = [v7 _contentOrObservableScrollViewForEdge:4];
  if ([v8 _isScrollViewScrollObserver:self])
  {
    [(UINavigationController *)self _stopObservingContentScrollView:v8];
LABEL_6:
    v10 = [(UINavigationController *)self topViewController];
    [(UINavigationController *)self _resetScrollViewObservingForViewController:v10];

    goto LABEL_7;
  }

  if (v9 != v8 && [v9 _isScrollViewScrollObserver:self])
  {
    [v9 _removeScrollViewScrollObserver:self];
    goto LABEL_6;
  }

LABEL_7:
}

- (void)_applyViewControllers:(id)a3 transition:(int)a4 animated:(BOOL)a5 operation:(int64_t)a6 rescheduleBlock:(id)a7
{
  v9 = a5;
  v13 = a3;
  v14 = a7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__UINavigationController__applyViewControllers_transition_animated_operation_rescheduleBlock___block_invoke;
  aBlock[3] = &unk_1E71028F8;
  v15 = v13;
  aBlock[4] = self;
  v48 = v15;
  v50 = a4;
  v51 = v9;
  v49 = a6;
  v16 = _Block_copy(aBlock);
  v17 = [(UINavigationController *)self _transitionCoordinator];
  if (v17)
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __94__UINavigationController__applyViewControllers_transition_animated_operation_rescheduleBlock___block_invoke_2;
    v41[3] = &unk_1E7102948;
    v41[4] = self;
    v42 = v14;
    v45 = a4;
    v46 = v9;
    v43 = v15;
    v44 = a6;
    v18 = _Block_copy(v41);
    if ([(UINavigationController *)self _transitionConflictsWithNavigationTransitions:v17])
    {
      if (!v9 && !+[UIViewController _shouldDeferTransitions]&& ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_NavigationControllerShouldImmediatelyApplyViewControllersWithConflictingTransition, @"NavigationControllerShouldImmediatelyApplyViewControllersWithConflictingTransition", _UIInternalPreferenceUpdateBool) & 1) != 0 || byte_1EA95E284))
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

    if (!v9 && [v17 presentationStyle] != -1)
    {
      [UIViewController _performWithoutDeferringTransitions:v16];
      goto LABEL_37;
    }

    if ([(UINavigationController *)self _isCurrentTransitionPreemptable])
    {
      v22 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionContext];
      v23 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionController];
      v24 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionContext];
      v37 = v23;
      v25 = [v23 preemptWithContext:v24];

      v26 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionContext];
      v27 = v26;
      if (v26)
      {
        if (v26 == v22)
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

          v18[2](v18, v17);
        }

        else
        {
          v28 = v26;
          v29 = *(__UILogGetCategoryCachedImpl("UINavigationController", &qword_1ED497920) + 8);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_DEFAULT, "A transition was started while preempting previous transition. Deferring new transition.", buf, 2u);
          }

          v30 = [(UINavigationController *)self _transitionCoordinator];
          v18[2](v18, v30);

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

    v18[2](v18, v17);
    v19 = v17;
    if (sel__addInvalidationHandler_)
    {
      v31 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionContext];
      [v31 _state];
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
    if (!v9)
    {
LABEL_24:
      v16[2](v16);
      goto LABEL_38;
    }
  }

  else if (![(UINavigationController *)self needsDeferredTransition]|| !v9)
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

- (void)_immediatelyApplyViewControllers:(id)a3 transition:(int)a4 animated:(BOOL)a5 operation:(int64_t)a6
{
  v6 = a5;
  v134 = *MEMORY[0x1E69E9840];
  v102 = a3;
  navigationControllerFlags = self->_navigationControllerFlags;
  v8 = [(UIViewController *)self _existingView];
  v90 = [v8 window];

  v104 = v6 && [(UINavigationController *)self _isAppearingOrAppearedCheck];
  v91 = [(UIViewController *)self childViewControllers];
  if (a6 == 3)
  {
    v11 = v102;
    v9 = v102;
    v10 = v91;
  }

  else
  {
    v9 = [v102 arrayByExcludingObjectsInArray:v91];
    v10 = [v91 arrayByExcludingObjectsInArray:v102];
    v11 = v102;
  }

  v88 = v9;
  v89 = [v9 count];
  v107 = [v11 lastObject];
  v96 = [(UINavigationController *)self topViewController];

  if (v96 == v107)
  {
    v99 = v90 == 0;
    *&self->_navigationControllerFlags &= ~0x100uLL;
    [(_UIViewControllerTransitionConductor *)self->_transitionConductor setDeferredTransitionType:0];
    v104 = 0;
    v97 = 0;
    v87 = a4 != 0;
  }

  else if (v90)
  {
    v12 = [(UINavigationController *)self disappearingViewController];
    if (v12)
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
        v13 = [(UINavigationController *)self topViewController];
        [(UINavigationController *)self setDisappearingViewController:v13];

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

  v15 = [(UINavigationController *)self disappearingViewController];
  if (v15)
  {

LABEL_20:
    v16 = [(UINavigationController *)self topViewController];

    v92 = 0;
    v104 = (v16 != 0) & v104;
    v17 = a4;
    if (!v16)
    {
      v17 = 0;
    }

    a4 = v17;
    goto LABEL_25;
  }

  v18 = [(UINavigationController *)self topViewController];

  if (!v18)
  {
    goto LABEL_20;
  }

  v92 = [(UINavigationController *)self topViewController];
LABEL_25:
  v19 = v97 ^ 1;
  if (a6 != 2)
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    v20 = [(UIViewController *)self mutableChildViewControllers];
    v21 = [v20 lastObject];
    cleanupHelper = self->_cleanupHelper;
    if (cleanupHelper || (v23 = [[_UIUnsafeUnretainedCleanupHelper alloc] initWithParent:&__block_literal_global_346 deallocationHandler:?], v24 = self->_cleanupHelper, self->_cleanupHelper = v23, v24, (cleanupHelper = self->_cleanupHelper) != 0))
    {
      [(NSHashTable *)cleanupHelper->_children addObject:v21];
    }

    [v20 removeLastObject];
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
    v29 = v96 == v107 || v89 != 0;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v129 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v128 + 1) + 8 * i);
        if (([v102 containsObject:v31] & 1) == 0)
        {
          v34 = [(UINavigationController *)self disappearingViewController];
          v33 = v31 != v34;

          v35 = [(UINavigationController *)self disappearingViewController];
          if (v31 == v35)
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

          if (v31 != v34)
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
          v36 = [obj lastObject];
          v37 = v31 == v36;

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
              [(UIViewController *)v107 _performAtViewIsAppearing:v125];
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
      v45 = v107;
      if (v43 == v107 && v96 != v107)
      {
        if (v99 | ((dyld_program_sdk_at_least() & 1) == 0))
        {
          v45 = v107;
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

        v45 = v107;
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
        v45 = v107;
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
  if (v92)
  {
    v49 = [v92 parentViewController];
    if (v49)
    {
      goto LABEL_98;
    }

    if (([UIApp _isSpringBoard] & 1) == 0)
    {
      v49 = [v92 _existingView];
      v50 = [v49 superview];
      [v50 removeFromSuperview];

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
  v117 = a4;
  v52 = v102;
  v115 = v52;
  v53 = v107;
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
  if (v96 != v107)
  {
    v59 = 1;
  }

  if (v59 == 1)
  {
    v60 = v90 != 0;
    v61 = 2;
    if (a4 != 2)
    {
      v61 = 3;
    }

    if (a4 == 1)
    {
      v61 = 1;
    }

    if (a6 != 3)
    {
      v61 = a6;
    }

    v98 = v61;
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
      v66 = a6 != 3 && v89 != 0;
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
        v75 = [(UINavigationController *)self disappearingViewController];
        [(UINavigationController *)self _presentationTransitionWrapViewController:v75 forTransitionContext:v70];

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
        v72 = [(UINavigationController *)self disappearingViewController];
        [(UINavigationController *)self _presentationTransitionWrapViewController:v72 forTransitionContext:0];

        if (!self->_navigationBar && ([(UIViewController *)self _existingView], v73 = objc_claimAutoreleasedReturnValue(), v74 = v73 == 0, v73, v74))
        {
          v66 = a6 != 3 && v89 != 0;
        }

        else
        {
          v54[2](v54);
          v66 = 0;
        }

        [(UINavigationController *)self _propagateContentAdjustmentsForControllersWithSharedViews];
      }
    }

    v77 = [(UINavigationController *)self _existingToolbar];

    if (v77)
    {
      v78 = [(UINavigationController *)self _navigationToolbarTransitionController];
      v79 = [(UINavigationController *)self _existingToolbar];
      [v78 prepareTransitionWithToolbar:v79];
    }

    [(UINavigationController *)self _hideOrShowBottomBarIfNeededWithTransition:v64];
    v80 = [(UIViewController *)self _existingTabBarItem];
    if ([v80 isSystemItem])
    {
LABEL_151:
    }

    else
    {
      v81 = [(UINavigationController *)self tab];
      v82 = v81 == 0;

      if (v82)
      {
        v83 = [(UINavigationController *)self bottomViewController];
        v80 = [v83 title];

        v84 = [v80 length];
        if (v98 == 1 && v84 && ![v91 count])
        {
          [(UIViewController *)self setTitle:v80];
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

  if (v96 != v107)
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

- (void)_setClipsToBounds:(BOOL)a3
{
  v3 = a3;
  [(UIViewController *)self loadViewIfNeeded];
  navigationTransitionView = self->_navigationTransitionView;

  [(UIView *)navigationTransitionView setClipsToBounds:v3];
}

- (void)_setContentInset:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  [(UIViewController *)self loadViewIfNeeded];
  navigationTransitionView = self->_navigationTransitionView;
  [(UIView *)navigationTransitionView frame];
  v10 = left + v9;
  v12 = top + v11;
  v14 = v13 - (left + right);
  v16 = v15 - (top + bottom);

  [(UIView *)navigationTransitionView setFrame:v10, v12, v14, v16];
}

- (void)_setBuiltinTransitionStyle:(int64_t)a3
{
  self->_builtinTransitionStyle = a3;
  v4 = [(_UINavigationControllerVisualStyle *)self->_visualStyle transitionController];

  if (v4)
  {
    v5 = [(_UINavigationControllerVisualStyle *)self->_visualStyle transitionController];
    if (objc_opt_respondsToSelector())
    {
      [v5 setTransitionStyle:self->_builtinTransitionStyle];
    }
  }
}

- (void)_setBuiltinTransitionGap:(double)a3
{
  self->_builtinTransitionGap = a3;
  v4 = [(_UINavigationControllerVisualStyle *)self->_visualStyle transitionController];

  if (v4)
  {
    v5 = [(_UINavigationControllerVisualStyle *)self->_visualStyle transitionController];
    if (objc_opt_respondsToSelector())
    {
      [v5 setTransitionGap:self->_builtinTransitionGap];
    }
  }
}

- (BOOL)_toolbarIsAnimatingInteractively
{
  v2 = [(UINavigationController *)self _toolbarAnimationId];
  v3 = v2 != 0;

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

- (id)_startInteractiveBarTransition:(id)a3
{
  v4 = a3;
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
    v7 = [v4 layer];
    v6 = +[UIView _startAnimationTracking];
    [v7 setSpeed:0.0];
    [v7 setTimeOffset:0.0];
  }

  return v6;
}

- (void)_startInteractiveToolbarTransition
{
  if (qword_1ED497938 != -1)
  {
    dispatch_once(&qword_1ED497938, &__block_literal_global_353_0);
  }

  v5 = [(UINavigationController *)self _existingToolbar];
  if ([(UINavigationController *)self _hasInterruptibleNavigationTransition])
  {
    v3 = qword_1ED497930;
  }

  else
  {
    v3 = [(UINavigationController *)self _startInteractiveBarTransition:v5];
  }

  v4 = v3;
  [(UINavigationController *)self _setToolbarAnimationId:v3];
  [v5 _startInteractiveTransition];
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

- (void)_updateInteractiveBarTransition:(id)a3 withUUID:(id)a4 percent:(double)a5 isFinished:(BOOL)a6 didComplete:(BOOL)a7 completionSpeed:(double)a8 completionCurve:(int64_t)a9
{
  v11 = a7;
  v26 = a3;
  v16 = a4;
  if (![(UINavigationController *)self _hasInterruptibleNavigationTransition])
  {
    if ([UIViewPropertyAnimator _containsAnimatorForTrackedAnimationsUUID:v16])
    {
      v17 = [UIViewPropertyAnimator _animatorForTrackedAnimationsUUID:v16];
      v18 = v17;
      if (a6)
      {
        v19 = 1.0 - a5;
        if (!v11)
        {
          v19 = a5;
        }

        v20 = v19 / a8;
        v21 = [[UICubicTimingParameters alloc] initWithAnimationCurve:a9];
        [v18 setReversed:!v11];
        [v18 continueAnimationWithTimingParameters:v21 durationFactor:v20];
      }

      else
      {
        [v17 setFractionComplete:a5];
      }
    }

    else
    {
      v18 = [v26 layer];
      [(_UIViewControllerTransitionConductor *)self->_transitionConductor customNavigationTransitionDuration];
      v23 = v22;
      if (a6)
      {
        [v18 timeOffset];
        if (v11)
        {
          v24 = v23 - v24;
        }

        [UIView _completeAnimationWithUUID:v16 duration:a9 curve:!v11 reverse:v24];
        *&v25 = a8;
        [v18 setSpeed:v25];
      }

      else
      {
        [v18 setTimeOffset:v22 * a5];
      }
    }
  }
}

- (void)_updateInteractiveTransition:(double)a3
{
  if (a3 >= 0.0)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [(UINavigationController *)self _navbarIsAppearingInteractively];
  v6 = [(UINavigationController *)self _navigationBarForNestedNavigationController];
  v7 = v6;
  if (v5)
  {
    v8 = [(UINavigationController *)self _navbarAnimationId];
    [(UINavigationController *)self _updateInteractiveBarTransition:v7 withUUID:v8 percent:0 isFinished:0 didComplete:3 completionSpeed:v4 completionCurve:1.0];
  }

  else
  {
    [v6 _updateInteractiveTransition:v4];
  }

  if (_UIUnifiedToolbarEnabled())
  {

    [(UINavigationController *)self _updateFloatingBarContentAnimated:0];
  }

  else if ([(UINavigationController *)self _toolbarIsAnimatingInteractively])
  {
    v10 = [(UINavigationController *)self _existingToolbar];
    v9 = [(UINavigationController *)self _toolbarAnimationId];
    [(UINavigationController *)self _updateInteractiveBarTransition:v10 withUUID:v9 percent:0 isFinished:0 didComplete:3 completionSpeed:v4 completionCurve:1.0];

    [v10 _updateInteractiveTransitionWithProgress:v4];
  }
}

- (void)_finishInteractiveTransition:(double)a3 transitionContext:(id)a4
{
  v14 = a4;
  v6 = [(UINavigationController *)self _navbarIsAppearingInteractively];
  v7 = [(UINavigationController *)self _navigationBarForNestedNavigationController];
  if (v6)
  {
    v8 = [(UINavigationController *)self _navbarAnimationId];
    [v14 _completionVelocity];
    -[UINavigationController _updateInteractiveBarTransition:withUUID:percent:isFinished:didComplete:completionSpeed:completionCurve:](self, "_updateInteractiveBarTransition:withUUID:percent:isFinished:didComplete:completionSpeed:completionCurve:", v7, v8, 1, 1, [v14 _completionCurve], a3, v9);
  }

  else
  {
    [v14 _completionVelocity];
    [v7 _finishInteractiveTransition:objc_msgSend(v14 completionSpeed:"_completionCurve") completionCurve:{a3, v10}];
  }

  if (_UIUnifiedToolbarEnabled())
  {
    [(UINavigationController *)self _updateFloatingBarContentAnimated:0];
  }

  else if ([(UINavigationController *)self _toolbarIsAnimatingInteractively])
  {
    v11 = [(UINavigationController *)self _existingToolbar];
    v12 = [(UINavigationController *)self _toolbarAnimationId];
    [v14 _completionVelocity];
    -[UINavigationController _updateInteractiveBarTransition:withUUID:percent:isFinished:didComplete:completionSpeed:completionCurve:](self, "_updateInteractiveBarTransition:withUUID:percent:isFinished:didComplete:completionSpeed:completionCurve:", v11, v12, 1, 1, [v14 _completionCurve], a3, v13);

    [v11 _finishInteractiveTransition];
  }
}

- (void)_cancelInteractiveTransition:(double)a3 transitionContext:(id)a4
{
  v14 = a4;
  [v14 _completionVelocity];
  v7 = v6;
  if ([(UINavigationController *)self _navbarIsAppearingInteractively])
  {
    [(UINavigationController *)self _setNavigationBarAnimationWasCancelled:1];
    v8 = [(UINavigationController *)self _navigationBarForNestedNavigationController];
    v9 = [(UINavigationController *)self _navbarAnimationId];
    -[UINavigationController _updateInteractiveBarTransition:withUUID:percent:isFinished:didComplete:completionSpeed:completionCurve:](self, "_updateInteractiveBarTransition:withUUID:percent:isFinished:didComplete:completionSpeed:completionCurve:", v8, v9, 1, 0, [v14 _completionCurve], a3, fabs(v7));
  }

  else
  {
    v8 = [(UINavigationController *)self _navigationBarForNestedNavigationController];
    [v14 _completionVelocity];
    [v8 _cancelInteractiveTransition:objc_msgSend(v14 completionSpeed:"_completionCurve") completionCurve:{a3, fabs(v10)}];
  }

  if ([(UINavigationController *)self _toolbarIsAnimatingInteractively])
  {
    [(UINavigationController *)self _setToolbarAnimationWasCancelled:1];
    v11 = [(UINavigationController *)self _existingToolbar];
    v12 = [(UINavigationController *)self _toolbarAnimationId];
    [v14 _completionVelocity];
    -[UINavigationController _updateInteractiveBarTransition:withUUID:percent:isFinished:didComplete:completionSpeed:completionCurve:](self, "_updateInteractiveBarTransition:withUUID:percent:isFinished:didComplete:completionSpeed:completionCurve:", v11, v12, 1, 0, [v14 _completionCurve], a3, fabs(v13));

    [v11 _finishInteractiveTransition];
  }
}

- (double)durationForTransition:(int)a3
{
  v3 = *&a3;
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

- (BOOL)_viewControllerRequiresVisibleToolbarForImplicitInlineSearch:(id)a3
{
  v4 = a3;
  if (_UISolariumEnabled())
  {
    v5 = [v4 navigationItem];
    v6 = v5;
    if (!v5)
    {
      LOBYTE(v12) = 0;
LABEL_23:

      goto LABEL_24;
    }

    v7 = [v5 _searchControllerIfAllowed];
    if (v7)
    {
      v8 = [(UINavigationItem *)v6 _confirmedSearchBarPlacementBarButtonItem];

      if (v8)
      {
        if ([(UIViewController *)self _appearState])
        {
LABEL_9:
          v10 = [v4 _relevantToolbarItems];
          if ([v6 searchBarPlacementAllowsToolbarIntegration])
          {
            v11 = [(UIViewController *)self traitCollection];
            if ([v11 userInterfaceIdiom] || (objc_msgSend(v4, "_isNavigationController") & 1) != 0)
            {
              LOBYTE(v12) = 0;
            }

            else
            {
              v15 = [(UIViewController *)self _containingTabBarController];
              LOBYTE(v12) = !v15 && [v6 preferredSearchBarPlacement] != 2 && objc_msgSend(v10, "count") == 0;
            }
          }

          else
          {
            LOBYTE(v12) = 0;
          }

          goto LABEL_22;
        }

        v9 = [(UIViewController *)self parentViewController];
        if (v9 || ([(UINavigationController *)self _window], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
        {

          goto LABEL_9;
        }

        v16 = [(UIViewController *)self _existingView];
        v12 = [v16 window];

        if (v12)
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

    LOBYTE(v12) = 0;
    goto LABEL_22;
  }

  LOBYTE(v12) = 0;
LABEL_24:

  return v12;
}

- (void)_startToolbarTransitionIfNecessary:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (_UIUnifiedToolbarEnabled())
  {
    v47 = [MEMORY[0x1E696AAA8] currentHandler];
    [v47 handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:2471 description:@"Attempted to start a toolbar transition while the floating bar is enabled."];
  }

  v8 = [v7 _transitionCoordinator];
  v9 = [v7 fromViewController];
  v10 = [v7 toViewController];
  v11 = [(UINavigationController *)self _existingToolbar];
  v12 = [v11 items];

  v13 = [v10 toolbarItems];
  v14 = [(UINavigationController *)self _navigationToolbarTransitionController];

  if (!v14)
  {
    v60 = v8;
    v61 = v12;
    if (!v4 || !dyld_program_sdk_at_least())
    {
      goto LABEL_18;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v20 = isKindOfClass;
    if (isKindOfClass)
    {
      v21 = isKindOfClass;
      v22 = v9;
      v18 = v22;
      if ((v22[1288] & 2) != 0 && (*&self->_navigationControllerFlags & 0x200000000002) != 0)
      {
        v55 = [v22 _existingToolbar];
        v23 = [v55 items];
        v17 = 0;
        v24 = v12;
        v61 = v23;
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
        v8 = v60;
        v12 = v61;
        goto LABEL_61;
      }

      v56 = v28;
      v12 = v61;
      if (-[UINavigationController _toolbarIsAnimatingInteractively](self, "_toolbarIsAnimatingInteractively") || ![v13 count] && !objc_msgSend(v61, "count"))
      {
        v8 = v60;
        goto LABEL_61;
      }

      v54 = [(UINavigationController *)self _existingToolbar];
      if (v56)
      {
        if ([v9 _isNavigationController])
        {
          v31 = v9;
        }

        else
        {
          v31 = v10;
        }

        v53 = [v31 _existingToolbar];
        if (!v4)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v53 = 0;
        if (!v4)
        {
LABEL_34:
          v32 = v54;
          _updateToolbarForViewControllerAnimated(v54, v10, 0);
          v8 = v60;
LABEL_60:

          goto LABEL_61;
        }
      }

      v52 = [(UINavigationController *)self _hasInterruptibleNavigationTransition];
      v33 = [(UINavigationController *)self isInteractiveTransition];
      if (v27)
      {
        v50 = v33;
        [v18 _setToolbarHidden:1 edge:15 duration:0.0];
        v49 = [v18 _existingToolbar];
        _updateToolbarForViewControllerAnimated(v49, 0, 0);

        [v17 _setToolbarHidden:1 edge:15 duration:0.0];
        v48 = [v17 _existingToolbar];
        _updateToolbarForViewControllerAnimated(v48, 0, 0);

        v89[0] = MEMORY[0x1E69E9820];
        v89[1] = 3221225472;
        v89[2] = __70__UINavigationController__startToolbarTransitionIfNecessary_animated___block_invoke;
        v89[3] = &unk_1E70F3590;
        v89[4] = self;
        [UIView performWithoutAnimation:v89];
        [v54 setItems:v61 animated:0];
        v33 = v50;
      }

      v51 = v27;
      if (v33 || v52)
      {
        [(UINavigationController *)self _startInteractiveToolbarTransition];
      }

      [v54 bounds];
      v35 = v34;
      v37 = v36;
      [v54 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
      v40 = v37 != v39 || v35 != v38;
      if (v52)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        v57 = v40;
        aBlock[1] = 3221225472;
        aBlock[2] = __70__UINavigationController__startToolbarTransitionIfNecessary_animated___block_invoke_2;
        aBlock[3] = &unk_1E70F43C8;
        v84 = v54;
        v87 = v4;
        v88 = v57;
        v85 = v13;
        v86 = self;
        v41 = _Block_copy(aBlock);
      }

      else
      {
        v42 = v40;
        [v54 setItems:v13 animated:1];
        v43 = v56;
        v44 = 0;
        if (!(v59 & 1 | ((v56 & 1) == 0)))
        {
          [v54 _backgroundTransitionProgress];
          v44 = v45;
          [v53 _backgroundTransitionProgress];
          [v54 _setBackgroundTransitionProgress:?];
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
          v76 = v53;
          v77 = v17;
          v79 = v44;
          v78 = v54;
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
        v48 = &v73;
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
      v63 = v54;
      v64 = v17;
      v65 = v18;
      v70 = v59 & 1;
      v66 = v9;
      v67 = self;
      v71 = v52;
      v8 = v60;
      [v60 animateAlongsideTransition:v46 completion:v62];

      objc_destroyWeak(&v68);
      if (v58)
      {
      }

      objc_destroyWeak(&location);

      v32 = v54;
      goto LABEL_60;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v10;
      v17 = v25;
      if ((v25[1288] & 2) != 0 && (*&self->_navigationControllerFlags & 0x200000000002) != 0)
      {
        v21 = v20;
        v55 = [v25 _existingToolbar];
        v26 = [v55 items];
        v18 = 0;
        v24 = v13;
        v13 = v26;
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
    v15 = [(UINavigationController *)self _navigationToolbarTransitionController];
    v16 = [(UINavigationController *)self _existingToolbar];
    [v15 beginTransitionWithToolbar:v16 items:v13 animated:v4];
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

- (unint64_t)_keyboardScreenEdgeForTransition:(int)a3
{
  v3 = [objc_opt_class() _keyboardDirectionForTransition:*&a3] - 1;
  if (v3 > 4)
  {
    return 4;
  }

  else
  {
    return qword_18A6792B8[v3];
  }
}

- (id)_traitOverridesForChildViewController:(id)a3
{
  v4 = a3;
  if (((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_NavigationControllerShouldMaintainOverrideTraitCollectionForPoppingViewController, @"NavigationControllerShouldMaintainOverrideTraitCollectionForPoppingViewController", _UIInternalPreferenceUpdateBool) & 1) != 0 || byte_1ED48AC44) && ([v4 _departingParentViewController], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 == self))
  {
    v6 = self->_overrideTraitCollectionForPoppingViewControler;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_setDefinesPresentationContextIfNecessaryForViewController:(id)a3
{
  v7 = a3;
  v3 = [v7 navigationItem];
  v4 = [v3 searchController];
  if (v4)
  {
    v5 = v4;
    v6 = dyld_program_sdk_at_least();

    if (v6)
    {
      [v7 setDefinesPresentationContext:1];
    }
  }

  else
  {
  }
}

- (BOOL)_shouldHideSearchBarWhenScrollingForNavigationItem:(id)a3
{
  v4 = a3;
  v5 = [(UINavigationController *)self _topViewControllerObservableScrollViewForEdge:1];

  if (v5)
  {
    LOBYTE(v5) = [v4 hidesSearchBarWhenScrolling];
  }

  return v5;
}

- (void)setNavigationBarClass:(Class)a3
{
  v6 = objc_opt_class();
  if (a3)
  {
    if (([(objc_class *)a3 isSubclassOfClass:v6]& 1) == 0)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = NSStringFromClass(a3);
      [v7 handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:2791 description:{@"%@ is not a subclass of UINavigationBar", v8}];
    }
  }

  else
  {
    a3 = v6;
  }

  self->_navigationBarClass = a3;
}

- (id)_viewsWithDisabledInteractionGivenTransitionContext:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = UINavigationController;
  v5 = [(UIViewController *)&v13 _viewsWithDisabledInteractionGivenTransitionContext:v4];
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DF70] array];
  }

  v6 = [(UINavigationController *)self _existingToolbar];

  if (v6)
  {
    v7 = [(UINavigationController *)self _existingToolbar];
    [v5 addObject:v7];
  }

  v8 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionContext];
  if (![(UINavigationController *)self enableBackButtonDuringTransition])
  {
    [v5 addObject:self->_navigationBar];
  }

  if (v8 == v4 && ([v8 isInterruptible] & 1) == 0 && (objc_msgSend(v8, "_allowUserInteraction") & 1) == 0)
  {
    v9 = [(UINavigationController *)self disappearingViewController];
    v10 = [v9 view];
    v11 = [v10 superview];

    if (v11)
    {
      [v5 addObject:v11];
    }
  }

  return v5;
}

- (id)_navigationBarHiddenByDefault:(BOOL)a3
{
  navigationBar = self->_navigationBar;
  if (!navigationBar)
  {
    v5 = a3;
    v6 = objc_alloc(self->_navigationBarClass);
    v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v7 setHidden:v5];
    [(UINavigationController *)self setNavigationBar:v7];

    navigationBar = self->_navigationBar;
  }

  return navigationBar;
}

- (BOOL)_canPerformCustomizeBarActionWithSender:(id)a3
{
  v4 = a3;
  v5 = ![(UINavigationController *)self isNavigationBarHidden]&& [(UINavigationBar *)self->_navigationBar _canPerformCustomizeBarActionWithSender:v4];

  return v5;
}

- (void)runToolbarCustomizationPalette:(id)a3
{
  if ([(UINavigationController *)self _canPerformCustomizeBarActionWithSender:a3])
  {

    [(UINavigationController *)self _beginCustomizingBar];
  }
}

- (BOOL)_canPerformRename:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(UINavigationBar *)v4 sender];

    v4 = v5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v4 == self->_navigationBar)
    {
LABEL_10:
      v10 = [(UINavigationController *)self navigationBar];
      v11 = [v10 topItem];
      v9 = [v11 _canRename];

      goto LABEL_11;
    }
  }

  else if (![(UINavigationController *)self isNavigationBarHidden])
  {
    v6 = [(UIView *)self->_navigationBar window];
    if (v6)
    {
      v7 = v6;
      v8 = [(UIViewController *)self presentedViewController];

      if (!v8)
      {
        goto LABEL_10;
      }
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (void)rename:(id)a3
{
  v3 = [(UINavigationController *)self navigationBar];
  [v3 _beginRenaming];
}

- (void)setNavigationBar:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (self->_navigationBar != v6)
  {
    v7 = dyld_program_sdk_at_least();
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (v7)
    {
      if ((isKindOfClass & 1) == 0)
      {
        v9 = [MEMORY[0x1E696AAA8] currentHandler];
        [v9 handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:2915 description:{@"%@ is not a subclass of UINavigationBar", v6}];
      }
    }

    else if ((isKindOfClass & 1) == 0)
    {
      v26 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED497950) + 8);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v33 = v6;
        _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "%@ is not a subclass of UINavigationBar", buf, 0xCu);
      }
    }

    v10 = [(UIViewController *)self mutableChildViewControllers];
    [(UINavigationBar *)self->_navigationBar setLocked:0];
    [(UINavigationBar *)self->_navigationBar setDelegate:0];
    [(UIView *)self->_navigationBar removeFromSuperview];
    [(NSMapTable *)self->_lastContentMarginForView removeObjectForKey:self->_navigationBar];
    objc_storeStrong(&self->_navigationBar, a3);
    v11 = *MEMORY[0x1E695EFF8];
    v12 = *(MEMORY[0x1E695EFF8] + 8);
    [(UINavigationController *)self _widthForLayout];
    v14 = v13;
    [(UINavigationBar *)v6 _layoutHeightsForNavigationItem:0 fittingWidth:?];
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
    if ([v10 count])
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v20 = v10;
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

            v25 = [*(*(&v27 + 1) + 8 * i) navigationItem];
            [v19 addObject:v25];
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
  v2 = [(UIViewController *)self childViewControllers];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)_setClipUnderlapWhileTransitioning:(BOOL)a3
{
  *(&self->_navigationControllerFlags + 8) |= 0x20u;
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFBFFFFFFFFLL | v3;
}

- (BOOL)_animationParametersForHidingNavigationBar:(BOOL)a3 lastOperation:(int64_t)a4 edge:(unint64_t *)a5 duration:(double *)a6
{
  v9 = a3;
  v11 = [(UIViewController *)self view];
  v12 = [v11 _shouldReverseLayoutDirection];

  if (v12)
  {
    v13 = 8;
  }

  else
  {
    v13 = 2;
  }

  if (v12)
  {
    v14 = 2;
  }

  else
  {
    v14 = 8;
  }

  v15 = [(UINavigationController *)self _shouldCrossFadeNavigationBarVisibility];
  if (a4 == 2)
  {
    if (a5)
    {
      if (v9)
      {
        v18 = v14;
      }

      else
      {
        v18 = v13;
      }

      if (v15)
      {
        v18 = 15;
      }

      *a5 = v18;
    }

    if (!a6)
    {
      goto LABEL_28;
    }

    v17 = 2;
LABEL_27:
    [(UINavigationController *)self durationForTransition:v17];
    v20 = v19;
    v21 = [(UINavigationController *)self _transitionConductor];
    [v21 navigationBarHidingDurationWithDefaultDuration:v20];
    *a6 = v22;

LABEL_28:
    LOBYTE(v17) = 1;
    return v17;
  }

  if (a4 != 1)
  {
    LOBYTE(v17) = 0;
    return v17;
  }

  if (a5)
  {
    if (v9)
    {
      v16 = v13;
    }

    else
    {
      v16 = v14;
    }

    if (v15)
    {
      v16 = 15;
    }

    *a5 = v16;
  }

  v17 = 1;
  if (a6)
  {
    goto LABEL_27;
  }

  return v17;
}

- (void)setNavigationBarHidden:(BOOL)hidden animated:(BOOL)animated
{
  v4 = animated;
  v5 = hidden;
  v12 = [(UINavigationController *)self _outermostNavigationController];
  if (_UISolariumEnabled())
  {
    if (v12 == self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_parentNavigationController);

      if (WeakRetained)
      {
        v8 = objc_loadWeakRetained(&self->_parentNavigationController);

        v12 = v8;
      }
    }
  }

  v9 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionContext];

  if (v9)
  {
    v10 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionContext];
    LOBYTE(v9) = [v10 transitionWasCancelled];
  }

  if (!v4 || (v9 & 1) != 0)
  {
    [(UINavigationController *)v12 _setNavigationBarHidden:v5 edge:1 duration:0.0];
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

    [(UINavigationController *)v12 _setNavigationBarHidden:v5 edgeIfNotNavigating:1 duration:v11];
  }
}

- (BOOL)_viewControllerIgnoresClippedGlyphPathFrame
{
  v4.receiver = self;
  v4.super_class = UINavigationController;
  return [(UIViewController *)&v4 _viewControllerIgnoresClippedGlyphPathFrame]|| self->_interactiveScrollActive || [(UINavigationController *)self _isTransitioning];
}

- (void)_positionNavigationBarHidden:(BOOL)a3 edge:(unint64_t)a4 initialOffset:(double)a5
{
  v7 = a3;
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
  v20 = [(UINavigationController *)self navigationBar];
  [v20 bounds];
  v22 = v21;
  v24 = v23;
  [(UINavigationController *)self _widthForLayout];
  v26 = v25;
  v27 = [(UINavigationController *)self _nestedTopViewController];
  v28 = [v20 topItem];
  [(UINavigationController *)self _preferredHeightForHidingNavigationBarForViewController:v27 topItem:v28];
  v30 = v29;

  [v20 setBounds:{v22, v24, v26, v30}];
  topPalette = self->_topPalette;
  if (topPalette)
  {
    if ([(_UINavigationControllerPalette *)topPalette isAttached])
    {
      if ([(_UINavigationControllerPalette *)self->_topPalette isVisibleWhenPinningBarIsHidden])
      {
        if (*&self->_navigationControllerFlags)
        {
          v39 = [(_UINavigationControllerPalette *)self->_topPalette _isPalettePinningBarHidden];
          if (v7 && v39 && (a4 == 4 || a4 == 1))
          {
            [v20 frame];
            [v20 setFrame:{0.0, -v40}];
            goto LABEL_23;
          }
        }
      }
    }

    v32 = self->_topPalette;
    v33 = v30 * 0.5 + a5;
    if (v32 && (a4 == 4 || a4 == 1) && v7 && [(_UINavigationControllerPalette *)v32 isAttached])
    {
      [(UIView *)self->_topPalette bounds];
      v35 = v34;
      v36 = [(_UINavigationControllerPalette *)self->_topPalette boundaryEdge];
      v37 = -v35;
      if (v36 == 5)
      {
        v37 = v35;
      }

      v33 = v33 + v37;
    }
  }

  else
  {
    v33 = v30 * 0.5 + a5;
  }

  [(UINavigationController *)self _positionNavigationBar:v20 hidden:v7 edge:a4 center:MidX offset:MinY, v33];
  if (dyld_program_sdk_at_least())
  {
    v38 = [v20 window];

    if (v38)
    {
      [v20 layoutBelowIfNeeded];
    }
  }

  else
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __74__UINavigationController__positionNavigationBarHidden_edge_initialOffset___block_invoke;
    v41[3] = &unk_1E70F3590;
    v42 = v20;
    [UIView performWithoutAnimation:v41];
  }

  if (objc_opt_respondsToSelector())
  {
    [(_UINavigationControllerVisualStyle *)self->_visualStyle navigationBarFrameChanged];
  }

LABEL_23:
}

- (void)_positionNavigationBarHidden:(BOOL)a3 edge:(unint64_t)a4
{
  v5 = a3;
  if (a3)
  {
    if ([(UINavigationController *)self _isNestedNavigationController])
    {
      v7 = [(UINavigationController *)self _existingNavigationBar];
      v8 = [v7 isHidden];

      if (v8)
      {
        return;
      }
    }
  }

  if (!a4)
  {
    if (v5)
    {
      v14 = [(UINavigationController *)self navigationBar];
      [v14 setAlpha:0.0];
      goto LABEL_12;
    }

LABEL_10:
    if ([(UINavigationController *)self _navigationBarAnimationWasCancelled])
    {
LABEL_13:
      v11 = self;
      v12 = v5;
      v13 = a4;
      goto LABEL_14;
    }

    v15 = [(UINavigationController *)self navigationBar];
    [v15 setAlpha:1.0];

    v14 = [(UINavigationController *)self navigationBar];
    [v14 _updateBarVisibilityForTopItem];
LABEL_12:

    goto LABEL_13;
  }

  if (a4 != 15)
  {
    goto LABEL_10;
  }

  v9 = [(UINavigationController *)self navigationBar];
  v10 = v9;
  if (!v5)
  {
    [v9 setAlpha:1.0];

    v17 = [(UINavigationController *)self navigationBar];
    [v17 _updateBarVisibilityForTopItem];

    goto LABEL_15;
  }

  [v9 setAlpha:0.0];

  v11 = self;
  v12 = 0;
  v13 = 15;
LABEL_14:
  [(UINavigationController *)v11 _positionNavigationBarHidden:v12 edge:v13 initialOffset:0.0];
LABEL_15:
  v18 = [(UINavigationController *)self navigationBar];
  v16 = [(UINavigationController *)self navigationBar];
  [v18 _setBarPosition:{-[UINavigationController _positionForBar:](self, "_positionForBar:", v16)}];
}

- (void)_positionPaletteHidden:(BOOL)a3 edge:(unint64_t)a4 initialOffset:(double)a5
{
  v7 = a3;
  if ([(UINavigationController *)self _isTransitioning])
  {
    return;
  }

  topPalette = self->_topPalette;
  if (!topPalette || [(_UINavigationControllerPalette *)topPalette boundaryEdge]== 5)
  {
    return;
  }

  v10 = [(UINavigationController *)self navigationBar];
  [v10 frame];
  v53 = v11;
  v13 = v12;

  navigationControllerFlags = self->_navigationControllerFlags;
  [(UIView *)self->_topPalette bounds];
  v58 = v15;
  v17 = v16 * 0.5;
  if (v7 || (navigationControllerFlags) && v7)
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
  v29 = [UINavigationController _computeTopBarCenter:self->_topPalette hidden:v7 edge:a4 center:MidX offset:? minimumTopOffset:?];
  v31 = v30;
  [(UIView *)self->_topPalette frame];
  v56 = v32;
  v57 = v33;
  transitioningTopPalette = self->_transitioningTopPalette;
  if (transitioningTopPalette)
  {
    if (a4 == 2)
    {
      v35 = 8;
    }

    else
    {
      v35 = 2;
    }

    v36 = [UINavigationController _computeTopBarCenter:transitioningTopPalette hidden:!v7 edge:v35 center:MidX offset:? minimumTopOffset:?];
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
  if (v7 && [(_UINavigationControllerPalette *)self->_topPalette _isPalettePinningBarHidden]&& (a4 == 8 || a4 == 2))
  {
    v47 = self->_topPalette;
    v48 = -v54;
  }

  else
  {
    v47 = self->_topPalette;
    v48 = a5;
  }

  [(_UINavigationControllerPalette *)v47 _setTopConstraintConstant:v48];
  v49 = v31 - v59;
  if (a4 != 8 && a4 != 2)
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
    if (!v7 || (navigationControllerFlags & 1) != 0)
    {
      if (!v7 && (navigationControllerFlags & 1) != 0)
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

- (void)_positionTransitioningPalette:(id)a3 outside:(BOOL)a4 edge:(unint64_t)a5 preservingYPosition:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v57 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = v10;
  if (!v10 || [v10 boundaryEdge] == 5)
  {
    goto LABEL_24;
  }

  if (os_variant_has_internal_diagnostics())
  {
    if (v8 && a5 != 2 && a5 != 8)
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

  else if (v8 && a5 != 2 && a5 != 8)
  {
    v12 = *(__UILogGetCategoryCachedImpl("Assert", &_positionTransitioningPalette_outside_edge_preservingYPosition____s_category) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v56 = "[UINavigationController _positionTransitioningPalette:outside:edge:preservingYPosition:]";
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Only pass outside==YES to %s for transitions!", buf, 0xCu);
    }
  }

  v13 = [(UINavigationController *)self navigationBar];
  [v13 frame];
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
  v34 = [UINavigationController _computeTopBarCenter:v11 hidden:v8 edge:a5 center:MidX offset:? minimumTopOffset:?];
  v36 = v35;
  v37 = v34 + v21 * -0.5;
  [v11 frame];
  v41 = v39;
  v42 = v40;
  if (v6)
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

- (void)_repositionPaletteWithNavigationBarHidden:(BOOL)a3 duration:(double)a4 shouldUpdateNavigationItems:(BOOL)a5
{
  v7 = a3;
  [(UIView *)self->_topPalette bounds];
  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFFFFFFFFFELL | v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__UINavigationController__repositionPaletteWithNavigationBarHidden_duration_shouldUpdateNavigationItems___block_invoke;
  aBlock[3] = &unk_1E7102A08;
  v18 = v7;
  aBlock[4] = self;
  aBlock[5] = v9;
  aBlock[6] = v10;
  aBlock[7] = v11;
  aBlock[8] = v12;
  v19 = a5;
  v13 = _Block_copy(aBlock);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __105__UINavigationController__repositionPaletteWithNavigationBarHidden_duration_shouldUpdateNavigationItems___block_invoke_2;
  v15[3] = &unk_1E70FA0F0;
  v16 = v7;
  v15[4] = self;
  v14 = _Block_copy(v15);
  if (a4 <= 0.0)
  {
    v13[2](v13);
    v14[2](v14, 1);
  }

  else
  {
    [UIView animateWithDuration:v13 animations:v14 completion:a4];
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

- (void)_setNavigationBarHidden:(BOOL)a3 edgeIfNotNavigating:(unint64_t)a4 duration:(double)a5
{
  if ((*&self->_navigationControllerFlags & 1) == a3)
  {
    return;
  }

  v22[1] = v8;
  v22[2] = v7;
  v22[9] = v5;
  v22[10] = v6;
  v11 = a3;
  v22[0] = a4;
  v21 = a5;
  v13 = [(UINavigationController *)self _isTransitioningOrPaletteIsTransitioning];
  topPalette = self->_topPalette;
  if (!topPalette || ![(_UINavigationControllerPalette *)topPalette isAttached])
  {
    v16 = 0;
LABEL_9:
    if ([(UINavigationController *)self wasLastOperationAnimated])
    {
      [(UINavigationController *)self _animationParametersForHidingNavigationBar:v11 lastOperation:[(UINavigationController *)self lastOperation] edge:v22 duration:&v21];
    }

    if (v16)
    {
      if ([(_UINavigationControllerPalette *)self->_topPalette isPinned])
      {
        [(_UINavigationControllerPalette *)self->_topPalette _setPalettePinningBarHidden:v11];
        [(_UINavigationControllerPalette *)self->_topPalette _resetConstraintConstants:0.0];
      }

      else
      {
        v18 = [(UIViewController *)self transitionCoordinator];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __79__UINavigationController__setNavigationBarHidden_edgeIfNotNavigating_duration___block_invoke;
        v19[3] = &unk_1E71018A8;
        v19[4] = self;
        v20 = v11;
        [v18 animateAlongsideTransition:0 completion:v19];
      }
    }

    [(UINavigationController *)self _setNavigationBarHidden:v11 edge:v22[0] duration:v21];
    return;
  }

  v15 = [(_UINavigationControllerPalette *)self->_topPalette isVisibleWhenPinningBarIsHidden];
  if (v13 || !v15)
  {
    v16 = v15;
    if (v11 && v15 && v13)
    {
      v17 = [(UIView *)self->_topPalette superview];

      if (v17)
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

  if (!v11)
  {
    [(UINavigationController *)self _unhideNavigationBarForEdge:a4];
  }

  [(UINavigationController *)self _repositionPaletteWithNavigationBarHidden:v11 duration:1 shouldUpdateNavigationItems:a5];
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

- (double)_computeTopBarCenter:(int)a3 hidden:(unint64_t)a4 edge:(double)a5 center:offset:minimumTopOffset:
{
  v9 = a2;
  if (!a1)
  {
    a5 = 0.0;
    goto LABEL_21;
  }

  if ((*(a1 + 1289) & 0x20) != 0)
  {
    a3 = 0;
  }

  if (*(a1 + 1324) == 1)
  {
    v10 = [a1 navigationBar];
    v11 = [v10 traitCollection];
    v12 = [v11 userInterfaceIdiom];

    if (v12 == 3)
    {
      [a1 _contentOverlayInsets];
      v14 = v13 * 0.5;
      [a1 _contentOverlayInsets];
      a5 = a5 + v14 - v15 * 0.5;
    }
  }

  [(UINavigationController *)a1 _computeTopAvoidanceAreaForBar:v9 edge:a4 hidden:a3];
  v16 = a3 ^ 1;
  if (!a4)
  {
    v16 = 1;
  }

  if (v16)
  {
    goto LABEL_16;
  }

  [v9 bounds];
  v18 = 0.0;
  if (*(a1 + 1360) == 1)
  {
    v18 = *(a1 + 1368);
  }

  if (a4 == 8)
  {
    a5 = a5 + v17 + v18;
    goto LABEL_21;
  }

  if (a4 != 2)
  {
LABEL_16:
    if (a4 == 1)
    {
      v19 = a3;
    }

    else
    {
      v19 = 1;
    }

    if ((v19 & 1) == 0)
    {
      [v9 bounds];
      CGRectGetHeight(v21);
      [v9 anchorPoint];
    }
  }

  else
  {
    a5 = a5 - (v17 + v18);
  }

LABEL_21:

  return a5;
}

- (double)_computeTopAvoidanceAreaForBar:(unint64_t)a3 edge:(int)a4 hidden:
{
  v7 = a2;
  if (a1)
  {
    if ([a1 _searchHidNavigationBar])
    {
      v8 = 1;
    }

    else
    {
      v9 = [a1 topViewController];
      v10 = [v9 searchDisplayController];
      v8 = [v10 hidNavigationBar];
    }

    v11 = a4 ^ 1;
    if (a3 > 1)
    {
      v11 = 1;
    }

    v12 = v11 | v8;
    if (*(a1 + 1324) == 1)
    {
      if ((v12 & 1) != 0 || (v13 = 0.0, *(a1 + 1384) == 3))
      {
        v14 = a1;
        v15 = v14;
        if (v14[1324] == 1 && ([v14 _existingView], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "_usesMinimumSafeAreas"), v16, v17))
        {
          v18 = [v15 _existingView];
          [v18 _minimumSafeAreaInsets];
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
      v20 = *(a1 + 1384);
      if (v20 == 3)
      {
        v22 = [a1 _existingView];
        v23 = [v22 window];

        v24 = __UIStatusBarManagerForWindow(v23);
        v25 = [v23 windowScene];
        [v24 defaultStatusBarHeightInOrientation:{objc_msgSend(v25, "_interfaceOrientation")}];
        v13 = v26;
      }

      else
      {
        v13 = 0.0;
        if (!v20 && ([a1 _viewControllerUnderlapsStatusBar] & v12) == 1)
        {
          if ([a1 _useStandardStatusBarHeight])
          {
            v13 = *(a1 + 1040);
          }

          else
          {
            [a1 _statusBarHeightAdjustmentForCurrentOrientation];
            v13 = v29;
          }
        }
      }
    }

    if ([*(a1 + 1136) boundaryEdge] == 5)
    {
      [*(a1 + 1136) frame];
      v13 = v13 + v27;
    }
  }

  else
  {
    v13 = 0.0;
  }

  return v13;
}

- (void)_setNavigationBarHidesCompletelyOffscreen:(BOOL)a3
{
  v3 = 0x200000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFDFFFFFFFFLL | v3;
}

- (void)_setSearchHidNavigationBar:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v5 = [(UINavigationController *)self _outermostNavigationController];
  if (os_variant_has_internal_diagnostics())
  {
    v6 = !v3;
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
          v11 = [v9 callStackSymbols];
          v12 = 138412290;
          v13 = v11;
        }
      }
    }
  }

  if (v5 == self)
  {
    v7 = 0x1000000000000;
    if (!v3)
    {
      v7 = 0;
    }

    *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFEFFFFFFFFFFFFLL | v7;
  }

  else
  {
    [(UINavigationController *)v5 _setSearchHidNavigationBar:v3];
  }
}

- (void)_positionNavigationBar:(id)a3 hidden:(BOOL)a4 edge:(unint64_t)a5 center:(CGPoint)a6 offset:(double)a7
{
  x = a6.x;
  v9 = a4;
  v18 = a3;
  v11 = [(UIViewController *)self traitCollection];
  if (_UISMCBarsEnabled())
  {
    navigationBar = self->_navigationBar;
    v13 = [(UIView *)navigationBar traitCollection];
    [(UINavigationBar *)navigationBar _minimumTopPaddingWithTraitCollection:v13];

    [v11 _presentationSemanticContext];
  }

  v14 = [UINavigationController _computeTopBarCenter:v18 hidden:v9 edge:a5 center:x offset:? minimumTopOffset:?];
  v16 = v15;
  if ((*(&self->_navigationControllerFlags + 4) & 2) != 0 && v9 && (a5 == 4 || a5 == 1) && ![(UINavigationController *)self _useStandardStatusBarHeight]&& [(UINavigationController *)self _viewControllerUnderlapsStatusBar])
  {
    [(UINavigationController *)self _statusBarHeightAdjustmentForCurrentOrientation];
    v16 = v16 - v17;
  }

  [v18 setCenter:{v14, v16}];
}

- (void)_unhideNavigationBarForEdge:(unint64_t)a3
{
  v5 = [(UINavigationController *)self _navigationBarHiddenByDefault:1];
  v6 = [(UIViewController *)self view];
  [v6 addSubview:v5];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__UINavigationController__unhideNavigationBarForEdge___block_invoke;
  v8[3] = &unk_1E70F36D0;
  v9 = v5;
  v10 = a3;
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

- (void)_setNavigationBarHidden:(BOOL)a3 edge:(unint64_t)a4 duration:(double)a5
{
  v5 = a3;
  if ((*&self->_navigationControllerFlags & 1) != a3)
  {
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 postNotificationName:@"_UINavigationControllerNavigationBarVisibilityWillChangeNotification" object:self];

    v11 = [(UINavigationController *)self _navigationBarHiddenByDefault:v5];
    v12 = [(UINavigationController *)self _isTransitioningOrPaletteIsTransitioning];
    if (!v5)
    {
      v13 = [(UINavigationController *)self _navigationItems];
      [v11 _displayItemsKeepingOwningNavigationBar:v13];

      [(UINavigationController *)self _unhideNavigationBarForEdge:a4];
    }

    v14 = [(UINavigationController *)self _hasInterruptibleNavigationTransition];
    v15 = [(UIViewController *)self transitionCoordinator];
    if (a5 > 0.0)
    {
      if ([(UINavigationController *)self isInteractiveTransition]|| v14)
      {
        [(UINavigationController *)self _startInteractiveNavbarTransition];
      }

      if (v14 && !v15)
      {
        v25 = [MEMORY[0x1E696AAA8] currentHandler];
        [v25 handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:3629 description:@"Expected a non-nil coordinator if there is an interruptible animator associated with this transition"];
      }
    }

    *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFFFFFFFFFELL | v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __64__UINavigationController__setNavigationBarHidden_edge_duration___block_invoke;
    aBlock[3] = &unk_1E7102A38;
    v35 = v14;
    aBlock[4] = self;
    aBlock[5] = a4;
    v36 = v5;
    v37 = v12;
    *&aBlock[6] = a5;
    v16 = _Block_copy(aBlock);
    v17 = v16;
    if (a5 <= 0.0)
    {
      v16[2](v16);
    }

    else if (v14)
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
      v31 = v5;
      [v15 animateAlongsideTransition:v32 completion:v30];
    }

    else
    {
      if ([(UINavigationController *)self isInteractiveTransition])
      {
        v18 = 196608;
      }

      else if (v15)
      {
        v18 = [v15 completionCurve] << 16;
      }

      else
      {
        v18 = 0;
      }

      if (v5)
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
      [UIView animateWithDuration:v19 delay:v17 options:v29 animations:a5 completion:0.0];
    }

    [(UIViewController *)self _invalidatePreferences:0 excluding:?];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __64__UINavigationController__setNavigationBarHidden_edge_duration___block_invoke_5;
    v28[3] = &unk_1E70F32F0;
    v28[4] = self;
    v28[5] = a4;
    v20 = _Block_copy(v28);
    if (a5 <= 0.0)
    {
      if ((*(&self->_navigationControllerFlags + 2) & 2) != 0)
      {
        v22 = [(UINavigationController *)self topViewController];
        v23 = [v22 transitionCoordinator];

        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __64__UINavigationController__setNavigationBarHidden_edge_duration___block_invoke_6;
        v26[3] = &unk_1E7101880;
        v26[4] = self;
        v27 = v20;
        [v23 animateAlongsideTransition:0 completion:v26];

        goto LABEL_32;
      }

      v21 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [(UINavigationController *)self _hideShowNavigationBarDidStop:@"UINavigationControllerHideShowNavigationBar" finished:v21 context:0];
    }

    else if (!v14 && [(UINavigationController *)self isInteractiveTransition])
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
  if (!v5 && [(UINavigationController *)self _isPushingOrPopping])
  {
    v24 = [(UIViewController *)self _containingTabBarController];

    if (v24)
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

- (void)_hideShowNavigationBarDidStop:(id)a3 finished:(id)a4 context:(id)a5
{
  v6 = [(UINavigationController *)self _navbarIsAppearingInteractively:a3];
  if ([(UINavigationController *)self _navigationBarAnimationWasCancelled])
  {
    *&self->_navigationControllerFlags ^= 1uLL;
    [(UINavigationController *)self _setNavigationBarAnimationWasCancelled:0];
  }

  v7 = [(UINavigationController *)self navigationBar];
  v19 = v7;
  if (*&self->_navigationControllerFlags)
  {
    v12 = [(UINavigationController *)self _navigationItems];
    [v19 _displayItemsKeepingOwningNavigationBar:v12];

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
    v8 = [v7 superview];
    v9 = [(UINavigationController *)self navigationBar];
    [v8 bringSubviewToFront:v9];

    v10 = self->_topPalette;
    if (v10 && [(_UINavigationControllerPalette *)v10 boundaryEdge]== 5)
    {
      v11 = [(UIView *)self->_topPalette superview];
      if (v11)
      {
      }

      else if ([(_UINavigationControllerPalette *)self->_topPalette isAttached])
      {
        [(UINavigationController *)self _installPaletteIntoViewHierarchy:self->_topPalette];
        goto LABEL_18;
      }

      v15 = [(UIView *)self->_topPalette superview];
      [v15 bringSubviewToFront:self->_topPalette];
    }
  }

LABEL_18:
  if (v6)
  {
    if (![(UINavigationController *)self _hasInterruptibleNavigationTransition])
    {
      v16 = [v19 layer];
      [v16 setTimeOffset:0.0];
      LODWORD(v17) = 1.0;
      [v16 setSpeed:v17];
    }

    [(UINavigationController *)self _setNavbarAnimationId:0];
  }

  v18 = [MEMORY[0x1E696AD88] defaultCenter];
  [v18 postNotificationName:@"_UINavigationControllerNavigationBarVisibilityDidChangeNotification" object:self];
}

- (void)setPretendNavBarHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(UINavigationController *)self _outermostNavigationController];
  if (v5 == self)
  {
    v6 = 0x2000;
    if (!v3)
    {
      v6 = 0;
    }

    *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFFFFFFDFFFLL | v6;
  }

  else
  {
    v7 = v5;
    [(UINavigationController *)v5 setPretendNavBarHidden:v3];
    v5 = v7;
  }
}

- (void)setNavBarWillHideAfterAnimation:(BOOL)a3
{
  if (((((*&self->_navigationControllerFlags & 0x4000) == 0) ^ a3) & 1) == 0)
  {
    v3 = 0x4000;
    if (!a3)
    {
      v3 = 0;
    }

    *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFFFFFFBFFFLL | v3;
  }
}

- (void)setSearchBarHidNavBar:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFFFFFEFFFFLL | v3;
}

- (void)setAvoidMovingNavBarOffscreenBeforeUnhiding:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFFFFFF7FFFLL | v3;
}

- (void)_sendNavigationBarToBack
{
  v5 = [(UINavigationController *)self navigationBar];
  v3 = [v5 superview];
  v4 = [(UINavigationController *)self navigationBar];
  [v3 sendSubviewToBack:v4];
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

- (void)setToolbar:(id)a3
{
  v5 = a3;
  toolbar = self->_toolbar;
  v7 = v5;
  if (toolbar != v5)
  {
    if (toolbar)
    {
      _updateToolbarForViewControllerAnimated(toolbar, 0, 0);
      [(UIView *)self->_toolbar removeFromSuperview];
      [(NSMapTable *)self->_lastContentMarginForView removeObjectForKey:self->_toolbar];
    }

    objc_storeStrong(&self->_toolbar, a3);
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
    v9 = [(UINavigationController *)self disappearingViewController];
    if (v9)
    {
      v10 = [(UIViewController *)self mutableChildViewControllers];
      v11 = [(UINavigationController *)self disappearingViewController];
      v12 = [v10 containsObject:v11] ^ 1;
    }

    else
    {
      v12 = 0;
    }

    v13 = [(UIViewController *)self view];
    v14 = [v13 _shouldReverseLayoutDirection];

    if (v12 ^ v4 ^ v14)
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

- (void)_positionToolbarHidden:(BOOL)a3 edge:(unint64_t)a4 crossFade:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  if (_UIUnifiedToolbarEnabled())
  {
    return;
  }

  v53 = [(UINavigationController *)self _existingToolbar];
  [v53 bounds];
  v10 = v9;
  v12 = v11;
  [v53 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v14 = v13;
  v16 = v15;
  [v53 setBounds:{v10, v12, v13, v15}];
  navigationControllerFlags = self->_navigationControllerFlags;
  v18 = [(UIViewController *)self tabBarController];
  v19 = v18;
  v20 = 0.0;
  if (v18 && (navigationControllerFlags & 0xC00) == 0)
  {
    v21 = [v18 tabBar];
    v22 = v21;
    if (!v21)
    {
      goto LABEL_11;
    }

    v23 = [v21 window];

    if (!v23)
    {
      goto LABEL_11;
    }

    v24 = [v19 tabBar];
    if ([v24 isHidden])
    {
      v25 = [(UIViewController *)self parentViewController];

      if (v25 != v19)
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
  v38 = !v7;
  v39 = v20 <= 0.0 || v7;
  if (v39)
  {
    v40 = v37;
  }

  else
  {
    v40 = v37 - v20;
  }

  if (v7)
  {
    v41 = 0.0;
  }

  else
  {
    v41 = 1.0;
  }

  if ((v38 & 1) != 0 || v5)
  {
    [v53 alpha];
    if (v42 != v41 && ![(UINavigationController *)self _toolbarAnimationWasCancelled])
    {
      [v53 setAlpha:v41];
    }
  }

  v43 = ![(_UIViewControllerTransitionConductor *)self->_transitionConductor shouldAnimateBottomBarVisibility]|| v5;
  if ((v38 | v43))
  {
    v44 = v53;
  }

  else
  {
    builtinTransitionGap = 0.0;
    v44 = v53;
    if (self->_builtinTransitionStyle == 1)
    {
      builtinTransitionGap = self->_builtinTransitionGap;
    }

    v46 = v14 + builtinTransitionGap;
    if (a4 == 8)
    {
      MidX = MidX + v46;
      v38 = 1;
    }

    else
    {
      v47 = MidX - v46;
      v38 = a4 == 2;
      if (a4 == 2)
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
    _UIBackgroundExtensionForBarWithMaxYAndInsetFromHomeAffordanceAllowance(v53, 0, MaxY);
  }

  UIFloorToViewScale(self->_containerView);
  v50 = v49 * 0.5;
  [v53 center];
  if (v52 != MidX || v51 != v50)
  {
    [v53 setCenter:{MidX, v50}];
  }

  if (objc_opt_respondsToSelector())
  {
    [(_UINavigationControllerVisualStyle *)self->_visualStyle toolbarFrameChanged];
  }
}

- (void)_setToolbarHidden:(BOOL)a3 edge:(unint64_t)a4 duration:(double)a5
{
  v7 = a3;
  if (!_UIUnifiedToolbarEnabled())
  {
    if (a4 == 15)
    {
      v12 = 1;
    }

    else if ([(UINavigationController *)self _shouldCrossFadeBottomBars])
    {
      v12 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor shouldAnimateBottomBarVisibility];
    }

    else
    {
      v12 = 0;
    }

    if (v7 != (*&self->_navigationControllerFlags & 2) >> 1)
    {
      return;
    }

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 postNotificationName:@"_UINavigationControllerToolbarVisibilityWillChangeNotification" object:self];

    if (!v12 || (*(&self->_navigationControllerFlags + 4) & 0x18) == 0 || ![(UIViewController *)self isViewLoaded])
    {
LABEL_69:
      v90 = [(UIViewController *)self transitionCoordinator];
      v91 = [(UINavigationController *)self _hasInterruptibleNavigationTransition];
      if (v90)
      {
        v92 = [v90 presentationStyle] == -1;
      }

      else
      {
        v92 = 0;
      }

      if ([(UIViewController *)self isViewLoaded])
      {
        if ((v7 & 1) == 0)
        {
          v144[0] = MEMORY[0x1E69E9820];
          v144[1] = 3221225472;
          v144[2] = __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_10;
          v144[3] = &unk_1E7101F90;
          v144[4] = self;
          v144[5] = a4;
          v145 = v12;
          [UIView performWithoutAnimation:v144];
        }

        if (a5 > 0.0 || v92)
        {
          if ((v7 & 1) == 0 && !v12)
          {
            *&self->_navigationControllerFlags |= 0x8000000000000000;
          }

          if ([(UINavigationController *)self isInteractiveTransition])
          {
            [(UINavigationController *)self _startInteractiveToolbarTransition];
          }

          if (!v90 && v91)
          {
            v93 = [MEMORY[0x1E696AAA8] currentHandler];
            [v93 handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:4276 description:@"Expected a non-nil coordinator if there is an interruptible animator associated with this transition"];
          }
        }

        else if (a5 == 0.0)
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
      if (v7)
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
      v141 = v7;
      v140[4] = self;
      v140[5] = a4;
      v142 = v12;
      v95 = _Block_copy(v140);
      v96 = v95;
      if (v91)
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
        v137 = v7;
        v136[4] = self;
        [v90 animateAlongsideTransition:v138 completion:v136];
      }

      else if (a5 > 0.0 || v92)
      {
        v97 = a5;
        if (v90)
        {
          [v90 transitionDuration];
          v97 = v98;
        }

        v99 = [(UINavigationController *)self isInteractiveTransition];
        if (v99)
        {
          v100 = 196608;
        }

        else
        {
          v100 = 0;
        }

        if (!v99 && v90)
        {
          v100 = [v90 completionCurve] << 16;
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
        [UIView animateWithDuration:v100 delay:v130 options:v129 animations:v97 completion:0.0];
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
      v128[5] = a4;
      v101 = _Block_copy(v128);
      if (a5 > 0.0 || v90)
      {
        if (v91)
        {
          goto LABEL_115;
        }

        if ([(UINavigationController *)self isInteractiveTransition])
        {
          [(UINavigationController *)self _finishAnimationTracking];
        }

        if (a5 > 0.0 || v92)
        {
          goto LABEL_115;
        }
      }

      else if ((*(&self->_navigationControllerFlags + 2) & 2) != 0)
      {
        v102 = [(UINavigationController *)self topViewController];
        v103 = [v102 transitionCoordinator];

        v126[0] = MEMORY[0x1E69E9820];
        v126[1] = 3221225472;
        v126[2] = __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_18;
        v126[3] = &unk_1E7101880;
        v126[4] = self;
        v127 = v101;
        [v103 animateAlongsideTransition:0 completion:v126];

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

    v14 = [(UIViewController *)self tabBarController];
    v15 = [v14 tabBar];

    v16 = [(UINavigationController *)self toolbar];
    v17 = [v15 barStyle];
    if (v17 != [v16 barStyle])
    {
      goto LABEL_68;
    }

    v18 = [v15 barTintColor];
    v124 = v15;
    v125 = v16;
    if (v18 || ([v16 barTintColor], (v119 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v15 = [v15 barTintColor];
      v16 = [v16 barTintColor];
      if (![v15 isEqual:v16])
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

    v20 = [v124 backgroundImage];
    if (v20)
    {

      v19 = 0;
      if (!v122)
      {
LABEL_27:
        v15 = v124;
        v16 = v125;
        if (v18)
        {

          if (!v19)
          {
            goto LABEL_68;
          }

LABEL_31:
          if ((v7 & 1) == 0)
          {
            v195[0] = MEMORY[0x1E69E9820];
            v195[1] = 3221225472;
            v195[2] = __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke;
            v195[3] = &unk_1E7102A70;
            v195[4] = self;
            v196 = v125;
            v197 = a4;
            v198 = v12;
            [UIView performWithoutAnimation:v195];
          }

          v21 = MEMORY[0x1E695EFD0];
          v133 = *(MEMORY[0x1E695EFD0] + 8);
          v108 = [v125 _shouldStretchDuringCrossfadeTransition];
          if (v108)
          {
            v22 = [v125 _backgroundView];
            [v22 bounds];
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

          v28 = [(UIViewController *)self view];
          v116 = [v124 barTintColor];
          v117 = [v124 isTranslucent];
          v120 = [v125 isTranslucent];
          if ((*&self->_navigationControllerFlags & 0x800000000) != 0)
          {
            v29 = v124;
          }

          else
          {
            v29 = v125;
          }

          v30 = [v29 _backgroundView];
          [v30 frame];
          v123 = v28;
          [v29 convertRect:v28 toView:?];
          v32 = v31;
          v34 = v33;
          v36 = v35;
          v38 = v37;

          if ((v117 & 1) != 0 || v120)
          {
            v39 = [[_UIBarBackground alloc] initWithFrame:v32, v34, v36, v38];
            [(_UIBarBackground *)v39 setTopAligned:0];
            v42 = objc_alloc_init(_UIBarBackgroundLayoutLegacy);
            [(_UIBarBackground *)v39 setLayout:v42];
            v110 = v42;
            -[_UIBarBackgroundLayoutLegacy configureEffectForStyle:backgroundTintColor:forceOpaque:](v42, "configureEffectForStyle:backgroundTintColor:forceOpaque:", [v124 barStyle], v116, 0);
            -[_UIBarBackgroundLayoutLegacy configureShadowForBarStyle:](v42, "configureShadowForBarStyle:", [v124 barStyle]);
            v43 = [v124 traitCollection];
            v44 = objc_opt_self();
            v45 = [v43 objectForTrait:v44];
            [(_UIBarBackground *)v39 setGroupName:v45];

            v15 = v124;
            v40 = v110;

            [(_UIBarBackground *)v39 transitionBackgroundViews];
            [(UIView *)v39 layoutIfNeeded];
          }

          else
          {
            v39 = [[UIView alloc] initWithFrame:v32, v34, v36, v38];
            v40 = [v124 _backgroundView];
            v41 = [v40 backgroundColor];
            [(UIView *)v39 setBackgroundColor:v41];
          }

          v46 = [(UIView *)v39 layer];
          [v46 setAllowsGroupOpacity:0];

          v47 = [v125 superview];

          v111 = v39;
          if (v47 == v123)
          {
            [v123 insertSubview:v39 belowSubview:v125];
          }

          else
          {
            [v123 addSubview:v39];
          }

          v49 = [(UIViewController *)self view];
          v50 = [v125 _backgroundView];
          [v50 bounds];
          v52 = v51;
          v54 = v53;
          v56 = v55;
          v58 = v57;
          v59 = [v125 _backgroundView];
          [v49 convertRect:v59 fromView:{v52, v54, v56, v58}];
          MinY = CGRectGetMinY(v200);

          v61 = [(UIViewController *)self view];
          v62 = [v15 _backgroundView];
          [v62 bounds];
          v64 = v63;
          v66 = v65;
          v68 = v67;
          v70 = v69;
          v71 = [v15 _backgroundView];
          [v61 convertRect:v71 fromView:{v64, v66, v68, v70}];
          v72 = CGRectGetMinY(v201);

          v73 = v108;
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
            v74 = v15;
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
          v191 = v117;
          v109 = v124;
          v177 = v109;
          v192 = v120;
          v78 = v125;
          v193 = v7 ^ 1;
          v178 = v78;
          v179 = self;
          v79 = v76;
          v180 = v79;
          v80 = v107;
          v181 = v80;
          v182 = v26;
          v183 = v133;
          v184 = v27;
          v185 = v112;
          v186 = v114;
          v194 = v7;
          v187 = 0x3FF0000000000000;
          v188 = 0;
          v190 = 0;
          v189 = 0;
          [UIView performWithoutAnimation:v176];
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_3;
          aBlock[3] = &unk_1E7102AC0;
          v174 = v7 ^ 1;
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
          v175 = v7;
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
          v86 = [(UIViewController *)self transitionCoordinator];
          v87 = v86;
          if (v86)
          {
            v152[0] = MEMORY[0x1E69E9820];
            v152[1] = 3221225472;
            v152[2] = __58__UINavigationController__setToolbarHidden_edge_duration___block_invoke_6;
            v152[3] = &unk_1E70F3770;
            v88 = v86;
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
            if (a5 <= 0.0)
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
              [UIView animateWithDuration:v148 animations:v146 completion:a5];
            }
          }

          v15 = v124;
          v16 = v125;
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
  if (((navigationControllerFlags >> 1) & 1) == v7)
  {
    v11 = 2;
    if (v7)
    {
      v11 = 0;
    }

    *&self->_navigationControllerFlags = navigationControllerFlags & 0xFFFFFFFFFFFFFFFDLL | v11;

    [(UINavigationController *)self _updateFloatingBarContentAnimated:a5 > 0.0];
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

- (void)_hideShowToolbarDidStop:(id)a3 finished:(id)a4 context:(id)a5
{
  v21 = a4;
  v7 = [(UINavigationController *)self _toolbarIsAnimatingInteractively];
  navigationControllerFlags = self->_navigationControllerFlags;
  *&self->_navigationControllerFlags = navigationControllerFlags & 0xFFFFFFFFFFF7FFFFLL;
  if ([(UINavigationController *)self _toolbarAnimationWasCancelled])
  {
    v9 = [(UINavigationController *)self isToolbarHidden];
    v10 = self->_navigationControllerFlags;
    if (v9)
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
      v15 = [(UINavigationController *)self toolbar];
      [v15 removeFromSuperview];
    }

    v16 = [(UINavigationController *)self toolbar];
    [v16 setHidden:!v9];

    [(UINavigationController *)self _setToolbarAnimationWasCancelled:0];
  }

  else if ([v21 BOOLValue])
  {
    if ([(UINavigationController *)self isToolbarHidden])
    {
      v12 = [(UINavigationController *)self toolbar];
      [v12 removeFromSuperview];

      v13 = [(UINavigationController *)self toolbar];
      [v13 setHidden:1];
    }

    else if (a5)
    {
      [(UINavigationController *)self _layoutTopViewController];
    }
  }

  if (v7)
  {
    if (![(UINavigationController *)self _hasInterruptibleNavigationTransition])
    {
      v17 = [(UINavigationController *)self _existingToolbar];
      v18 = [v17 layer];
      [v18 setTimeOffset:0.0];
      LODWORD(v19) = 1.0;
      [v18 setSpeed:v19];
    }

    [(UINavigationController *)self _setToolbarAnimationId:0];
  }

  [(UIView *)self->_toolbar setAutoresizingMask:10];
  v20 = [MEMORY[0x1E696AD88] defaultCenter];
  [v20 postNotificationName:@"_UINavigationControllerToolbarVisibilityDidChangeNotification" object:self];
}

- (id)_viewControllerForNavigationItem:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(UINavigationController *)self viewControllers];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 navigationItem];

        if (v11 == v4)
        {
          v13 = v10;

          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = [(UIViewController *)self->_disappearingViewController navigationItem];

  if (v12 == v4)
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

- (id)_navigationBarToUseForMarginsInNavigationBar:(id)a3
{
  v4 = a3;
  v5 = [(UIViewController *)self modalPresentationStyle];
  if (v5 == UIModalPresentationOverCurrentContext || (v6 = v4, v5 == UIModalPresentationCurrentContext))
  {
    v7 = [(UIViewController *)self presentingViewController];
    v6 = v4;
    if ([v7 _isNavigationController])
    {
      v8 = [v7 _outermostNavigationController];
      v9 = [v8 _existingNavigationBar];

      v6 = v4;
      if (v9)
      {
        v6 = v9;
      }
    }
  }

  return v6;
}

- (id)_preferredStatusBarStyleAnimationParameters
{
  if (_UISolariumEnabled())
  {
    v3 = [[UIStatusBarStyleAnimationParameters alloc] initWithDefaultParameters];
    +[_UIScrollPocketContainerInteraction _lumaUserInterfaceStyleSpringDuration];
    [(UIStatusBarAnimationParameters *)v3 setDuration:?];
    [(UIStatusBarAnimationParameters *)v3 setDelay:0.0];
    [(UIStatusBarAnimationParameters *)v3 setCurve:5];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UINavigationController;
    v3 = [(UIViewController *)&v5 _preferredStatusBarStyleAnimationParameters];
  }

  return v3;
}

- (int64_t)preferredTrafficLightStyle
{
  v3 = [(UINavigationController *)self navigationBar];
  if (v3)
  {
    v4 = v3;
    v5 = [*(v3 + 472) glassUserInterfaceStyle];

    if (v5 == 2)
    {
      return 1;
    }

    if (v5 == 1)
    {
      return 2;
    }
  }

  v7.receiver = self;
  v7.super_class = UINavigationController;
  return [(UIViewController *)&v7 preferredTrafficLightStyle];
}

- (void)_navigationBarDidChangeStyle:(id)a3
{
  if (self->_navigationBar == a3)
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

- (void)_navigationBarDidEndAnimation:(id)a3
{
  v4 = a3;
  if (self->_navigationBar == v4)
  {
    v5 = [(UIViewController *)self view];
    v6 = [v5 traitCollection];
    if ([v6 userInterfaceIdiom] == 3)
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

  v8 = [(UINavigationController *)self _outermostNavigationController];
  v9 = [v8 _existingNavigationBar];

  if (v9 == v4)
  {
    v10 = [(UIViewController *)self transitionCoordinator];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __56__UINavigationController__navigationBarDidEndAnimation___block_invoke;
      v11[3] = &unk_1E70F3B98;
      v12 = v4;
      [v10 animateAlongsideTransition:0 completion:v11];
    }

    else
    {
      [(UINavigationBar *)v4 _reenableUserInteraction];
    }
  }
}

- (void)_rememberPresentingFocusedItem:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = UINavigationController;
  [(UIViewController *)&v6 _rememberPresentingFocusedItem:v4];
  v5 = [(UINavigationController *)self topViewController];
  if (v4)
  {
    [(UINavigationController *)self _rememberFocusedItem:v4 forViewController:v5];
  }

  else
  {
    [(UINavigationController *)self _forgetFocusedItemForViewController:v5];
  }
}

- (BOOL)_canRestoreFocusAfterTransitionToRecalledItem:(id)a3 inViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dyld_program_sdk_at_least())
  {
    IsFocusedOrFocusable = [(UIViewController *)self _canRestoreFocusAfterTransitionToItem:v6];
  }

  else if (-[UIViewController restoresFocusAfterTransition](self, "restoresFocusAfterTransition") && [v7 restoresFocusAfterTransition])
  {
    v9 = [(UIViewController *)self view];
    if (_UIFocusEnvironmentIsAncestorOfEnvironment(v9, v6))
    {
      IsFocusedOrFocusable = _UIFocusItemIsFocusedOrFocusable(v6);
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

- (void)_didUpdateFocusInContext:(id)a3
{
  v4 = a3;
  v5 = [(UINavigationController *)self topViewController];
  v6 = [v5 view];
  v7 = [v4 nextFocusedItem];
  IsAncestorOfEnvironment = _UIFocusEnvironmentIsAncestorOfEnvironment(v6, v7);

  if (IsAncestorOfEnvironment)
  {
    [(UINavigationController *)self _forgetFocusedItemForViewController:v5];
  }

  v9.receiver = self;
  v9.super_class = UINavigationController;
  [(UIViewController *)&v9 _didUpdateFocusInContext:v4];
}

- (void)_rememberFocusedItem:(id)a3 forViewController:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UINavigationController *)self _rememberedFocusedItemsByViewController];
  [v8 setObject:v7 forKey:v6];
}

- (void)_forgetFocusedItemForViewController:(id)a3
{
  v4 = a3;
  v5 = [(UINavigationController *)self _rememberedFocusedItemsByViewController];
  [v5 removeObjectForKey:v4];
}

- (id)_recallRememberedFocusedItemForViewController:(id)a3
{
  v4 = a3;
  v5 = [(UINavigationController *)self _rememberedFocusedItemsByViewController];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)_updateInteractivePopGestureRecognizersEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(UINavigationController *)self interactivePopGestureRecognizer];
  [v5 setEnabled:v3];

  v6 = [(UINavigationController *)self interactiveContentPopGestureRecognizer];
  [v6 setEnabled:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if ([(UIViewController *)self isViewLoaded])
  {
    v5 = [(UINavigationController *)self topViewController];
    if (v5)
    {
      v6 = v5;
      v7 = [(UINavigationController *)self topViewController];
      v8 = [v7 _existingView];
      v9 = [(UIViewController *)self view];
      v10 = [v8 isDescendantOfView:v9];

      if ((v10 & 1) == 0)
      {
        [(UINavigationController *)self setNeedsDeferredTransition];
        v11 = [(UIViewController *)self view];
        [v11 setNeedsLayout];
      }
    }
  }

  v18.receiver = self;
  v18.super_class = UINavigationController;
  [(UIViewController *)&v18 viewWillAppear:v3];
  v12 = *(&self->_navigationControllerFlags + 8);
  if (v12 < 0)
  {
    *(&self->_navigationControllerFlags + 8) = v12 & 0x7F;
    [(UINavigationController *)self _updateFloatingBarContentAnimated:v3];
  }

  [(_UIViewControllerTransitionConductor *)self->_transitionConductor setHostIsAppearingAnimated:v3];
  if (![(UINavigationController *)self needsDeferredTransition]|| (*(&self->_navigationControllerFlags + 1) & 0x10) != 0)
  {
    v13 = [(UINavigationController *)self topViewController];
    [v13 __viewWillAppear:v3];

    v14 = [(UINavigationController *)self topViewController];

    if (v14)
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
        v17 = [(UINavigationController *)self topViewController];
        [v16 navigationController:self willShowViewController:v17 animated:v3];
      }
    }
  }
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v8.receiver = self;
  v8.super_class = UINavigationController;
  [(UIViewController *)&v8 viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4];
  if (v6)
  {
    if ([(UINavigationController *)self needsDeferredTransition])
    {
      v7 = [(UIViewController *)self view];
      [v7 setNeedsLayout];
    }

    if ([v6 _isHostedInAnotherProcess])
    {
      [(UINavigationController *)self _setPositionBarsExclusivelyWithSafeArea:1];
    }
  }
}

- (void)_setIsWrappingDuringAdaptation:(BOOL)a3
{
  v3 = 0x8000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFF7FFFFFFFFFFFFLL | v3;
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  if ((+[UIView _uip_transitionEnabled]& 1) == 0)
  {
    [(UINavigationController *)self _updateBarsForCurrentInterfaceOrientation];
  }

  v10.receiver = self;
  v10.super_class = UINavigationController;
  [(UIViewController *)&v10 viewDidAppear:v3];
  [(_UIViewControllerTransitionConductor *)self->_transitionConductor setHostIsAppearingAnimated:0];
  if (![(UINavigationController *)self needsDeferredTransition]&& (*&self->_navigationControllerFlags & 0x8000000000004) == 0)
  {
    v5 = [(UINavigationController *)self topViewController];
    [v5 __viewDidAppear:v3];

    if (dyld_program_sdk_at_least())
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
    }

    else
    {
      WeakRetained = [(UINavigationController *)self delegate];
    }

    v7 = WeakRetained;
    v8 = [(UINavigationController *)self topViewController];
    if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
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

      v8 = [(UINavigationController *)self topViewController];
      [v7 navigationController:self didShowViewController:v8 animated:v3];
    }

    goto LABEL_15;
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = UINavigationController;
  [(UIViewController *)&v6 viewWillDisappear:?];
  if ((*&self->_navigationControllerFlags & 0x8000000001000) == 0)
  {
    v5 = [(UINavigationController *)self _viewControllerForDisappearCallback];
    [(UIViewController *)v5 __viewWillDisappear:v3];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = UINavigationController;
  [(UIViewController *)&v17 viewDidDisappear:?];
  if ((*&self->_navigationControllerFlags & 0x8000000001000) == 0)
  {
    v5 = [(UINavigationController *)self _viewControllerForDisappearCallback];
    v6 = v5;
    if ((*&self->_navigationControllerFlags & 0xF0) != 0)
    {
      [v5 _setNavigationControllerContentInsetAdjustment:{0.0, 0.0, 0.0, 0.0}];
      [v6 _setNavigationControllerContentOffsetAdjustment:0.0];
    }

    [(UIViewController *)v6 __viewDidDisappear:v3];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [(UIViewController *)self mutableChildViewControllers];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          if ([v12 _appearState] == 3)
          {
            [(UIViewController *)v12 __viewDidDisappear:v3];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v9);
    }

    [(UINavigationController *)self setDisappearingViewController:0];
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(UINavigationController *)self topViewController];
  [v6 setEditing:v5 animated:v4];
}

- (BOOL)editing
{
  v2 = [(UINavigationController *)self topViewController];
  v3 = [v2 isEditing];

  return v3;
}

- (void)_updateToolbarItemsFromViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  if (_UIUnifiedToolbarEnabled())
  {
    [(UINavigationController *)self _updateFloatingBarContentAnimated:v4];
  }

  else
  {
    v6 = [(UINavigationController *)self topViewController];

    v7 = v9;
    if (v6 != v9)
    {
      goto LABEL_6;
    }

    v8 = [(UINavigationController *)self _existingToolbar];
    _updateToolbarForViewControllerAnimated(v8, v9, v4);
  }

  v7 = v9;
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

- (void)_updateFloatingBarContentAnimated:(BOOL)a3
{
  v3 = a3;
  v26[1] = *MEMORY[0x1E69E9840];
  if ((_UIUnifiedToolbarEnabled() & 1) == 0)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:5140 description:@"Attempted to update floating bar with the feature flag disabled"];
  }

  if (![(UINavigationController *)self _isNestedNavigationController])
  {
    v7 = [(UINavigationController *)self _nestedTopNavigationController];
    v8 = [(UINavigationController *)self _transitionConductor];
    v9 = [v8 transitionContext];

    if (!v9)
    {
      v10 = [v7 topViewController];
      goto LABEL_22;
    }

    if ([v9 isCurrentlyInteractive])
    {
      if ([v9 transitionWasCancelled])
      {
LABEL_17:
        v11 = [v9 toViewController];
        goto LABEL_18;
      }
    }

    else if (![v9 _transitionIsCompleting] || !objc_msgSend(v9, "transitionWasCancelled"))
    {
      goto LABEL_17;
    }

    v11 = [v9 fromViewController];
LABEL_18:
    v12 = v11;
    if ([v11 _isNavigationController])
    {
      v13 = [v12 _nestedTopViewController];
    }

    else
    {
      v13 = v12;
    }

    v10 = v13;

LABEL_22:
    v14 = [v10 navigationItem];
    if (!v3)
    {
      v15 = [(UINavigationController *)self _transitionAnimationContext];
      if ([v15 isAnimated])
      {
      }

      else
      {
        v16 = [v7 _transitionAnimationContext];
        v17 = [v16 isAnimated];

        if (!v17)
        {
          v19 = 0;
LABEL_27:
          if ([(UINavigationController *)self _viewControllerRequiresVisibleToolbarForImplicitInlineSearch:v10])
          {
            floatingBarContainerView = self->_floatingBarContainerView;
            v21 = [v14 searchBarPlacementBarButtonItem];
            v26[0] = v21;
            v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
            [(_UIFloatingBarContainer *)floatingBarContainerView setToolbarItems:v22 avoidsKeyboard:0 animated:v19];
          }

          else
          {
            if ((v7[1288] & 2) == 0 || self && (*(&self->_navigationControllerFlags + 8) & 0x40) != 0)
            {
              [(_UIFloatingBarContainer *)self->_floatingBarContainerView setToolbarItems:MEMORY[0x1E695E0F0] avoidsKeyboard:0 animated:v19];
              goto LABEL_35;
            }

            v23 = self->_floatingBarContainerView;
            v21 = [v10 _relevantToolbarItems];
            -[_UIFloatingBarContainer setToolbarItems:avoidsKeyboard:animated:](v23, "setToolbarItems:avoidsKeyboard:animated:", v21, [v14 _toolbarAvoidsKeyboard], v19);
          }

LABEL_35:
          return;
        }
      }
    }

    v18 = [(_UIFloatingBarContainer *)self->_floatingBarContainerView layer];
    v19 = [v18 hasBeenCommitted];

    goto LABEL_27;
  }

  [(_UIFloatingBarContainer *)self->_floatingBarContainerView setToolbarItems:MEMORY[0x1E695E0F0] avoidsKeyboard:0 animated:0];
  v6 = [(UINavigationController *)self _outermostNavigationController];
  if (v6 != self)
  {
    v25 = v6;
    [(UINavigationController *)v6 _updateFloatingBarContentAnimated:v3];
    v6 = v25;
  }
}

- (id)viewControllerForUnwindSegueAction:(SEL)a3 fromViewController:(id)a4 withSender:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(UIViewController *)self mutableChildViewControllers];
  v11 = 0;
  v12 = [v10 count] - 1;
  while (v12 != -1)
  {
    v13 = [v10 objectAtIndex:v12];

    --v12;
    v11 = v13;
    if ([v13 _canPerformUnwindSegueAction:a3 fromViewController:v8 sender:v9])
    {
      v14 = v13;
      v11 = v14;
      goto LABEL_6;
    }
  }

  v17.receiver = self;
  v17.super_class = UINavigationController;
  v14 = [(UIViewController *)&v17 viewControllerForUnwindSegueAction:a3 fromViewController:v8 withSender:v9];
LABEL_6:
  v15 = v14;

  return v15;
}

- (id)allowedChildViewControllersForUnwindingFromSource:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(UIViewController *)self childViewControllerContainingSegueSource:v4];

  v7 = [(UINavigationController *)self viewControllers];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__UINavigationController_allowedChildViewControllersForUnwindingFromSource___block_invoke;
  v13[3] = &unk_1E7102E98;
  v14 = v6;
  v8 = v5;
  v15 = v8;
  v9 = v6;
  [v7 enumerateObjectsWithOptions:2 usingBlock:v13];

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

- (void)unwindForSegue:(id)a3 towardsViewController:(id)a4
{
  v8 = a4;
  v5 = [(UINavigationController *)self viewControllers];
  v6 = [v5 containsObject:v8];

  if (v6)
  {
    v7 = [(UINavigationController *)self popToViewController:v8 animated:+[UIView areAnimationsEnabled]];
  }
}

- (id)segueForUnwindingToViewController:(id)a3 fromViewController:(id)a4 identifier:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = a4;
  v12 = [(UINavigationController *)self viewControllers];
  v13 = [v12 containsObject:v9];

  if ((v13 & 1) == 0)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:5247 description:{@"toViewController (%@) is not one of my view controllers.", v9}];
  }

  v14 = _UIFirstPopoverSeguePresentedControllerInUnwindingResponderChain(v11, self);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __90__UINavigationController_segueForUnwindingToViewController_fromViewController_identifier___block_invoke;
  v20[3] = &unk_1E70F6228;
  v20[4] = self;
  v21 = v9;
  v22 = v14;
  v15 = v14;
  v16 = v9;
  v17 = [UIStoryboardSegue segueWithIdentifier:v10 source:v11 destination:v16 performHandler:v20];

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
    v3 = [(UINavigationController *)self navigationBar];
    v4 = [v3 topItem];
    v5 = [v4 hidesBackButton] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_canUseBackKeyCommandToTriggerSidebarKeyCommandWithSender:(id)a3
{
  v4 = a3;
  v5 = [(UIViewController *)self splitViewController];
  v6 = v5;
  v7 = v5 && [v5 displayMode] != 2 && objc_msgSend(v6, "displayMode") != 4 && objc_msgSend(v6, "canPerformAction:withSender:", sel_toggleSidebar_, v4) && -[UINavigationController _isNavigationBarVisible](self, "_isNavigationBarVisible");

  return v7;
}

- (void)_performBackKeyCommand:(id)a3
{
  v6 = a3;
  if ([(UINavigationController *)self _canPerformBackKeyCommandToPopViewController])
  {
    v4 = [(UINavigationController *)self popViewControllerAnimated:1];
  }

  else if ([(UINavigationController *)self _canUseBackKeyCommandToTriggerSidebarKeyCommandWithSender:v6])
  {
    v5 = [(UIViewController *)self splitViewController];
    [v5 toggleSidebar:v6];
  }
}

- (void)_userInterfaceIdiomChanged
{
  [(UINavigationController *)self _setupBackGestureRecognizer];
  [(UINavigationController *)self _setupDefaultClipUnderlapWhileTransitioningIfNeeded];

  [(UINavigationController *)self _setupVisualStyle];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UINavigationController;
  [(UIViewController *)&v4 viewIsAppearing:a3];
  [(UINavigationController *)self _setupBackGestureRecognizer];
  [(UINavigationController *)self _setupDefaultClipUnderlapWhileTransitioningIfNeeded];
  if (+[UIView _uip_transitionEnabled])
  {
    [(UINavigationController *)self _updateBarsForCurrentInterfaceOrientation];
  }
}

- (void)_updateNavigationBarScrollPocketContainerInteraction
{
  v19 = [(UINavigationController *)self navigationBar];
  [v19 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [v19 _stack];
  v12 = [v11 topEntry];
  [v12 layoutHeightsForActiveLayout];
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
    v3 = [(UIViewController *)self view];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [(_UIFloatingBarContainer *)self->_floatingBarContainerView setFrame:v5, v7, v9, v11];
    [(_UIFloatingBarContainer *)self->_floatingBarContainerView setHidden:[(UINavigationController *)self _isNestedNavigationController]];
    v12 = [(UIViewController *)self view];
    [v12 bringSubviewToFront:self->_floatingBarContainerView];

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
    v18 = [(UIViewController *)self view];
    [v18 convertRect:self->_floatingBarContainerView toCoordinateSpace:{MinX, v16, Width, v14}];
    [(_UIScrollPocketContainerInteraction *)self->_toolbarScrollPocketContainerInteraction _setElementInteractionRect:?];
  }
}

- (BOOL)_gestureRecognizerShouldBegin:(id)a3
{
  if (self->_backGestureRecognizer != a3)
  {
    return 1;
  }

  v4 = [(UIViewController *)self mutableChildViewControllers];
  v5 = [v4 count];

  if (v5 > 1)
  {
    return 1;
  }

  return [(UINavigationController *)self _isTransitioning];
}

- (BOOL)_gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = 1;
  if (self->__barTapHideGesture == v6 || self->__barSwipeHideGesture == v6)
  {
    v8 = [(UINavigationController *)self topViewController];
    v9 = [v8 _isNestedNavigationController];

    if (v9)
    {
      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)_gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->__barSwipeHideGesture == v6 && [v7 _isGestureType:9])
  {
    v9 = v8;
    v10 = [(UIViewController *)self _existingView];
    v11 = [v9 scrollView];

    v12 = [v11 superview];
    [v11 frame];
    [v12 convertRect:v10 toView:?];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = [(UINavigationController *)self _existingNavigationBar];
    v22 = [v21 superview];
    [v21 frame];
    [v22 convertRect:v10 toView:?];
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
    UICeilToViewScale(v10);
    v34 = MinY <= MaxY + v33;
  }

  else if (self->_backGestureRecognizer == v6)
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

- (void)willShowViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  if (_UIUnifiedToolbarEnabled())
  {
    [(UINavigationController *)self _updateFloatingBarContentAnimated:v4];
  }

  else if ((*&self->_navigationControllerFlags & 2) != 0)
  {
    v6 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor shouldAnimateBottomBarVisibility];
    v7 = [(UINavigationController *)self _existingToolbar];
    _updateToolbarForViewControllerAnimated(v7, v8, v6 & v4);
  }
}

- (void)_didEndTransitionFromView:(id)a3 toView:(id)a4 wasCustom:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v84 = a4;
  navigationControllerFlags = self->_navigationControllerFlags;
  v10 = [(UINavigationController *)self disappearingViewController];
  v11 = [(UINavigationController *)self topViewController];
  if (!v10)
  {
    v82 = (*&self->_navigationControllerFlags >> 49) & 1;
    goto LABEL_5;
  }

  v12 = [(UINavigationController *)self lastOperation];
  v82 = (*&self->_navigationControllerFlags >> 49) & 1;
  if (v12 == 1)
  {
LABEL_5:
    v13 = [v11 _usesSharedView];
    v14 = 1;
    goto LABEL_6;
  }

  v13 = [v10 _usesSharedView];
  v14 = 0;
LABEL_6:
  if (v10 != v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v10 view];
      [(UIViewControllerWrapperView *)v8 unwrapView:v15];

      if (v8 == v84)
      {
        goto LABEL_17;
      }

LABEL_16:
      [v8 removeFromSuperview];
      goto LABEL_17;
    }
  }

  if (!v5)
  {
    goto LABEL_17;
  }

  v16 = [v10 childModalViewController];

  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = [v10 view];
  [v17 superview];
  v81 = v10;
  v18 = v13;
  v19 = v14;
  v20 = navigationControllerFlags;
  v21 = v5;
  v23 = v22 = v8;

  if (v23 == v84)
  {
    v24 = v22;
  }

  else
  {
    v24 = v23;
  }

  [v24 removeFromSuperview];

  v8 = v22;
  v5 = v21;
  navigationControllerFlags = v20;
  v14 = v19;
  v13 = v18;
  v10 = v81;
LABEL_17:
  [(UINavigationController *)self _presentationTransitionUnwrapViewController:v11];
  if ((*(&self->_navigationControllerFlags + 1) & 2) != 0)
  {
    v25 = [(UIViewController *)self _keyboardSceneDelegate];
    [v25 popAnimationStyle];

    *&self->_navigationControllerFlags &= ~0x200uLL;
  }

  keyboardLayoutGuideTransitionAssertion = self->_keyboardLayoutGuideTransitionAssertion;
  if (keyboardLayoutGuideTransitionAssertion)
  {
    [(_UIInvalidatable *)keyboardLayoutGuideTransitionAssertion _invalidate];
    v27 = self->_keyboardLayoutGuideTransitionAssertion;
    self->_keyboardLayoutGuideTransitionAssertion = 0;
  }

  if (v5)
  {
    [v11 view];
    v28 = v11;
    v29 = v10;
    v30 = v13;
    v31 = v14;
    v32 = navigationControllerFlags;
    v33 = v5;
    v35 = v34 = v8;
    v36 = [UIViewControllerWrapperView existingWrapperViewForView:v35];

    v8 = v34;
    v5 = v33;
    navigationControllerFlags = v32;
    v14 = v31;
    v13 = v30;
    v10 = v29;
    v11 = v28;
    if (v36 == v84)
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
      v97 = v84;
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
  if ((v13 & 1) == 0)
  {
    [v10 _setNavigationControllerContentInsetAdjustment:{0.0, 0.0, 0.0, 0.0}];
    [v10 _setNavigationControllerContentOffsetAdjustment:0.0];
  }

  v53 = [(UINavigationController *)self _navigationToolbarTransitionController];
  [v53 endTransition];

  [(UINavigationController *)self _clearLastOperation];
  *&self->_navigationControllerFlags &= ~4uLL;
  deferredTransitionContext = self->_deferredTransitionContext;
  self->_deferredTransitionContext = 0;

  if (v10 != v11 && [(UIViewController *)self _appearState]== 2)
  {
    if ((*(&self->_navigationControllerFlags + 1) & 0x10) == 0)
    {
      v93[0] = MEMORY[0x1E69E9820];
      v93[1] = 3221225472;
      v93[2] = __69__UINavigationController__didEndTransitionFromView_toView_wasCustom___block_invoke_2;
      v93[3] = &unk_1E70F35E0;
      v95 = v82;
      v94 = v10;
      [(UIViewController *)v94 _endAppearanceTransition:v93];
    }

    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __69__UINavigationController__didEndTransitionFromView_toView_wasCustom___block_invoke_3;
    v90[3] = &unk_1E70F5AF0;
    v92 = v14;
    v55 = v91;
    v56 = v11;
    v91[0] = v56;
    v91[1] = self;
    v57 = v90;
    goto LABEL_37;
  }

  if ((*(&self->_navigationControllerFlags + 1) & 0x10) == 0 && [(UIViewController *)self _appearState]!= 2)
  {
    if (v14)
    {
      [v11 setNeedsDidMoveCleanup:1];
    }

    if (v10)
    {
      v87[0] = MEMORY[0x1E69E9820];
      v87[1] = 3221225472;
      v87[2] = __69__UINavigationController__didEndTransitionFromView_toView_wasCustom___block_invoke_4;
      v87[3] = &unk_1E70F35E0;
      v89 = v82;
      v55 = &v88;
      v56 = v10;
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
      if (([UIApp _hasApplicationCalledLaunchDelegate] & 1) != 0 || (objc_msgSend(v11, "_existingView"), v83 = v5, v61 = v8, v62 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v62, "window"), v63 = objc_claimAutoreleasedReturnValue(), v64 = objc_msgSend(v63, "_isHostedInAnotherProcess"), v63, v62, v8 = v61, v5 = v83, v64))
      {
        [v60 navigationController:self didShowViewController:v11 animated:v58];
      }
    }
  }

  [(UINavigationController *)self didShowViewController:v11 animated:v58];
  v65 = self->_navigationControllerFlags;
  if ((v65 & 0x40000000000000) == 0)
  {
    *&self->_navigationControllerFlags = v65 | 0x40000000000000;
    if (v5)
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
      v66 = [(UIViewController *)self _focusSystem];
      v67 = [(UINavigationController *)self topViewController];
      v68 = v8;
      if (v67)
      {
        v69 = [v66 _focusedItemIsContainedInEnvironment:v67 includeSelf:1];
      }

      else
      {
        v69 = 0;
      }

      v70 = [(UINavigationController *)self navigationBar];
      v71 = [v66 _focusedItemIsContainedInEnvironment:v70 includeSelf:1];

      if ((v69 & 1) == 0 && (v71 & 1) == 0)
      {
        v72 = [[_UIFocusUpdateRequest alloc] initWithEnvironment:self];
        [(_UIFocusUpdateRequest *)v72 setAllowsFocusingCurrentItem:1];
        v73 = [(UIViewController *)self _focusSystem];
        [v73 _requestFocusUpdate:v72];
      }

      v8 = v68;
    }
  }

  v74 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  v75 = v74;
  if (v10)
  {
    [v74 setObject:v10 forKey:@"UINavigationControllerLastVisibleViewController"];
  }

  if (v11)
  {
    [v75 setObject:v11 forKey:@"UINavigationControllerNextVisibleViewController"];
  }

  v76 = [MEMORY[0x1E696AD88] defaultCenter];
  [v76 postNotificationName:@"UINavigationControllerDidShowViewControllerNotification" object:self userInfo:v75];

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

- (void)_didCancelTransitionFromViewController:(id)a3 toViewController:(id)a4 wrapperView:(id)a5 wasCustom:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v57 = a5;
  navigationControllerFlags = self->_navigationControllerFlags;
  if (v10)
  {
    v13 = [v10 parentViewController];
    v14 = v13 == self && (*(&self->_navigationControllerFlags + 1) & 0x10) == 0;
  }

  else
  {
    v14 = 1;
  }

  [(UINavigationController *)self setDisappearingViewController:0];
  v15 = [(UIViewController *)self presentedViewController];
  if (v15)
  {
    goto LABEL_18;
  }

  if (![v10 _containedInAbsoluteResponderChain])
  {
    goto LABEL_19;
  }

  v15 = [(UIViewController *)self _keyboardSceneDelegate];
  v16 = +[UIInputViewAnimationStyle animationStyleImmediate];
  [v15 pushAnimationStyle:v16];

  v17 = [MEMORY[0x1E696B098] valueWithPointer:v10];
  v18 = [v15 _restoreInputViewsWithId:v17 animated:1];

  if ((v18 & 1) == 0)
  {
    if ([v10 _containsFirstResponder])
    {
      if (![v11 _containsFirstResponder])
      {
        goto LABEL_17;
      }
    }

    else
    {
      if ([v10 becomeFirstResponder])
      {
        goto LABEL_17;
      }

      v19 = [v15 responder];
      v20 = [v11 _shouldAttemptToPreserveInputViewsForResponder:v19];

      if (!v20)
      {
        goto LABEL_17;
      }

      v21 = [MEMORY[0x1E696B098] valueWithPointer:v11];
      [v15 _preserveInputViewsWithId:v21 animated:1];
    }

    v22 = [v15 responder];
    [v22 resignFirstResponder];
  }

LABEL_17:
  [v15 popAnimationStyle];
LABEL_18:

LABEL_19:
  if (v6)
  {
    v23 = [v11 childModalViewController];

    v24 = [v11 view];
    v25 = v24;
    if (v23)
    {
      v26 = [v24 superview];

      if (v26 == v57)
      {
        v27 = [v11 view];
        [v27 removeFromSuperview];
      }

      else
      {
        [v26 removeFromSuperview];
      }
    }

    else
    {
      [v24 removeFromSuperview];
      v26 = v25;
    }
  }

  [(UINavigationController *)self _presentationTransitionUnwrapViewController:v10];
  if ((*(&self->_navigationControllerFlags + 1) & 2) != 0)
  {
    v28 = [(UIViewController *)self _keyboardSceneDelegate];
    [v28 popAnimationStyle];

    keyboardLayoutGuideTransitionAssertion = self->_keyboardLayoutGuideTransitionAssertion;
    if (keyboardLayoutGuideTransitionAssertion)
    {
      [(_UIInvalidatable *)keyboardLayoutGuideTransitionAssertion _invalidate];
      v30 = self->_keyboardLayoutGuideTransitionAssertion;
      self->_keyboardLayoutGuideTransitionAssertion = 0;
    }

    v31 = [(UINavigationController *)self _window];
    if ([v31 isTrackingKeyboard])
    {
      v32 = [(UIViewController *)self _keyboardSceneDelegate];
      v33 = [v32 hasTrackingAvailable];

      if (v33)
      {
LABEL_33:
        *&self->_navigationControllerFlags &= ~0x200uLL;
        goto LABEL_34;
      }

      v31 = [(UINavigationController *)self _window];
      [v31 moveKeyboardLayoutGuideOverEdge:0 layoutViews:0];
    }

    goto LABEL_33;
  }

LABEL_34:
  if (v14)
  {
    [(UINavigationController *)self removeChildViewController:v11 notifyDidMove:0];
  }

  else
  {
    [(UIViewController *)self _addChildViewController:v10 performHierarchyCheck:0 notifyWillMove:0];
  }

  [(UIViewController *)self _invalidatePreferences:0 excluding:?];
  [v11 cancelBeginAppearanceTransition];
  [v10 cancelBeginAppearanceTransition];
  v34 = [(UINavigationController *)self _outermostNavigationController];
  v35 = [(UINavigationController *)self topViewController];
  [v34 _updateTopViewFramesForViewController:v35 isCancelledTransition:1 isOrientationChange:0];

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
        if (([UIApp _hasApplicationCalledLaunchDelegate] & 1) != 0 || (objc_msgSend(v11, "_existingView"), v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v40, "window"), v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v41, "_isHostedInAnotherProcess"), v41, v40, v42))
        {
          [v39 navigationController:self willShowViewController:v10 animated:v37];
        }
      }

      if (objc_opt_respondsToSelector())
      {
        if (([UIApp _hasApplicationCalledLaunchDelegate] & 1) != 0 || (objc_msgSend(v11, "_existingView"), v43 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v43, "window"), v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v44, "_isHostedInAnotherProcess"), v44, v43, v45))
        {
          [v39 navigationController:self didShowViewController:v10 animated:v37];
        }
      }
    }

    [(UINavigationController *)self willShowViewController:v10 animated:v37];
    [(UINavigationController *)self didShowViewController:v10 animated:v37];
  }

  v46 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  v47 = v46;
  if (v10)
  {
    [v46 setObject:v10 forKey:@"UINavigationControllerLastVisibleViewController"];
  }

  if (v11)
  {
    [v47 setObject:v11 forKey:@"UINavigationControllerNextVisibleViewController"];
  }

  v48 = [MEMORY[0x1E696AD88] defaultCenter];
  [v48 postNotificationName:@"UINavigationControllerDidCancelShowingViewControllerNotification" object:self userInfo:v47];

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

  v53 = [(UINavigationController *)self _outermostNavigationController];
  [v53 _resetScrollViewObservingForViewController:v10];
  v54 = [v11 _contentOrObservableScrollViewForEdge:1];
  v55 = [v11 _contentOrObservableScrollViewForEdge:4];
  [v53 _stopObservingContentScrollView:v54];
  if (v55 != v54)
  {
    [v53 _stopObservingContentScrollView:v55];
  }

  v56 = [(UINavigationController *)self _navigationToolbarTransitionController];
  [v56 cancelTransition];

  [(UINavigationController *)self _updateEnclosingTabBarControllerForStackChange];
  [(UINavigationController *)self _updateBottomBarHiddenState];
}

- (void)_setCustomTransition:(BOOL)a3
{
  v3 = 0x20000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFFFFFFDFFFFLL | v3;
}

- (void)setNeedsDeferredTransition:(BOOL)a3
{
  v3 = a3;
  if ([(UINavigationController *)self allowsWeakReference])
  {
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if ([(_UIViewControllerTransitionConductor *)self->_transitionConductor needsDeferredTransition]!= v3 && v6 != 0)
  {
    [(_UIViewControllerTransitionConductor *)self->_transitionConductor setNeedsDeferredTransition:v3];
    if (v3)
    {
      [(UIView *)self->_containerView setNeedsLayout];
      v8 = [(UIView *)self->_containerView superview];
      [(UIView *)self->_containerView frame];
      [v8 convertPoint:0 toView:?];
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

- (void)_updateBarsForCurrentInterfaceOrientationAndForceBarLayout:(BOOL)a3
{
  [(UINavigationController *)self _setInteractiveScrollActive:0];
  if (a3 || ([(UINavigationController *)self topViewController], v5 = objc_claimAutoreleasedReturnValue(), isHeightOfTopViewsCoordinatedToMatchViewControllerOffsets = _isHeightOfTopViewsCoordinatedToMatchViewControllerOffsets(self, v5), v5, (isHeightOfTopViewsCoordinatedToMatchViewControllerOffsets & 1) == 0))
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

  v7 = [(UINavigationController *)self topViewController];
  [(UINavigationController *)self _computeAndApplyScrollContentInsetDeltaForViewController:v7];

  v8 = [(UINavigationController *)self topViewController];
  [(UINavigationController *)self _updateTopViewFramesForViewController:v8 isCancelledTransition:0 isOrientationChange:1];

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

- (BOOL)_hasTranslucentNavigationBarIncludingViewController:(id)a3
{
  v4 = a3;
  v5 = [(UINavigationController *)self navigationBar];
  IsTranslucentOnScreen = [v5 isTranslucent];

  v7 = [(UINavigationController *)self navigationBar];
  v8 = [v7 _appearanceStorage];
  v9 = [v8 hasAnyCustomBackgroundImage];

  if ((v9 & 1) == 0)
  {
    v10 = [v4 navigationItem];
    if (objc_opt_respondsToSelector())
    {
      v11 = [v10 barStyle];
      v12 = [(UIViewController *)self view];
      v13 = [v12 _screen];
      IsTranslucentOnScreen = _UIBarStyleWithTintColorIsTranslucentOnScreen(v11, 0, v13);
    }
  }

  return IsTranslucentOnScreen;
}

- (BOOL)_shouldNavigationBarInsetViewController:(id)a3 orOverlayContent:(BOOL *)a4
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    *a4 = 0;
  }

  if (([v6 _isNestedNavigationController] & 1) != 0 || (-[UINavigationController _outermostNavigationController](self, "_outermostNavigationController"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "_isNavigationBarEffectivelyVisible"), v8, !v9))
  {
    v10 = 0;
  }

  else
  {
    if (([v7 extendedLayoutIncludesOpaqueBars] & 1) != 0 || -[UINavigationController _hasTranslucentNavigationBarIncludingViewController:](self, "_hasTranslucentNavigationBarIncludingViewController:", v7))
    {
      v10 = [v7 edgesForExtendedLayout] ^ 1;
      if (!a4)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    v10 = 1;
    if (a4)
    {
LABEL_12:
      *a4 = (v10 & 1) == 0;
    }
  }

LABEL_10:

  return v10 & 1;
}

- (BOOL)_shouldTabBarController:(id)a3 insetViewController:(id)a4 orOverlayContent:(BOOL *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 tabBar];
  if ((*(&self->_navigationControllerFlags + 1) & 0xC) == 0)
  {
    v14 = [(UIViewController *)self parentViewController];
    v15 = v14 == v8 ? 1 : [v10 isHidden] ^ 1;

    if (v10)
    {
      if (v15)
      {
        if (([v9 extendedLayoutIncludesOpaqueBars] & 1) != 0 || objc_msgSend(v10, "_isTranslucent"))
        {
          v12 = ([v9 edgesForExtendedLayout] & 4) == 0;
          if (!a5)
          {
            goto LABEL_4;
          }
        }

        else
        {
          v12 = 1;
          if (!a5)
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
  if (a5)
  {
LABEL_3:
    *a5 = v11;
  }

LABEL_4:

  return v12;
}

- (BOOL)_shouldToolBar:(id)a3 insetViewController:(id)a4 orOverlayContent:(BOOL *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    goto LABEL_7;
  }

  if ([(UINavigationController *)self isToolbarHidden])
  {
    if ((*(&self->_navigationControllerFlags + 5) & 0x80) == 0)
    {
      goto LABEL_7;
    }

    v10 = [(UINavigationController *)self _outermostNavigationController];
    if ([v10 isToolbarHidden])
    {

      goto LABEL_7;
    }

    v11 = v10[161];

    if ((v11 & 0x200000000000) == 0)
    {
LABEL_7:
      v12 = 0;
      v13 = 0;
      if (!a5)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  v14 = [v8 isTranslucent];
  if (([v9 extendedLayoutIncludesOpaqueBars] & 1) == 0 && !v14)
  {
    v13 = 1;
    if (!a5)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v13 = ([v9 edgesForExtendedLayout] & 4) == 0;
  if (a5)
  {
LABEL_14:
    v12 = !v13;
LABEL_15:
    *a5 = v12;
  }

LABEL_16:

  return v13;
}

- (BOOL)_shouldChildViewControllerUseFullScreenLayout:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UINavigationController;
  if ([(UIViewController *)&v7 _shouldChildViewControllerUseFullScreenLayout:v4])
  {
    v5 = ![(UINavigationController *)self _shouldNavigationBarInsetViewController:v4];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_updatePalettesWithBlock:(id)a3
{
  v4 = a3;
  topPalette = self->_topPalette;
  if (topPalette)
  {
    v7 = v4;
    v6 = [(_UINavigationControllerPalette *)topPalette _shouldUpdateBackground];
    v4 = v7;
    if (v6)
    {
      v7[2](v7, self->_topPalette);
      v4 = v7;
    }
  }
}

- (void)_setContentOverlayInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  if (![(UINavigationController *)self isToolbarHidden])
  {
    [(UIViewController *)self _contentOverlayInsets];
    if (bottom != v8)
    {
      v9 = [(UINavigationController *)self toolbar];
      v10 = [v9 barPosition];
      if (v10 == 4 || v10 == 1)
      {
        [v9 setNeedsLayout];
      }
    }
  }

  v11.receiver = self;
  v11.super_class = UINavigationController;
  [(UIViewController *)&v11 _setContentOverlayInsets:top, left, bottom, right];
}

- (void)_layoutTopViewControllerLookForNested:(BOOL)a3
{
  v3 = a3;
  v5 = [(UINavigationController *)self topViewController];
  v14 = v5;
  if (v3 && [v5 _isNestedNavigationController])
  {
    v6 = [v14 topViewController];

    v14 = v6;
  }

  v7 = [(UINavigationController *)self disappearingViewController];

  v8 = v14;
  if (v14 != v7)
  {
    if (-[UINavigationController needsDeferredTransition](self, "needsDeferredTransition") || ![v14 isViewLoaded] || -[UINavigationController isCustomTransition](self, "isCustomTransition"))
    {
      p_navigationControllerFlags = &self->_navigationControllerFlags;
      *&self->_navigationControllerFlags |= 0x80000000000000uLL;
      goto LABEL_9;
    }

    if ([(UINavigationController *)self _isNestedNavigationController])
    {
      v12 = [(UINavigationController *)self _outermostNavigationController];
      v13 = [v12 isCustomTransition];

      p_navigationControllerFlags = &self->_navigationControllerFlags;
      *&self->_navigationControllerFlags |= 0x80000000000000uLL;
      if (v13)
      {
LABEL_9:
        if (([objc_opt_class() _directlySetsContentOverlayInsetsForChildren] & 1) == 0)
        {
          [(UIViewController *)self _updateContentOverlayInsetsFromParentIfNecessary];
          [v14 _updateContentOverlayInsetsForSelfAndChildren];
          v10 = [v14 navigationItem];
          v11 = [(UINavigationController *)self _effectiveSearchControllerForSearchBarGivenTopNavigationItem:v10];

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

- (UIEdgeInsets)_edgeInsetsDeferringToCommandeeringTableHeaderViewStyleSearchControllerWithPresentingViewController:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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
    v8 = v4 == 0;
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
        v25 = v3;
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
      v25 = v3;
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
  [v6 _edgeInsetsForChildViewController:v3 insetsAreAbsolute:&v24];
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

- (UIEdgeInsets)_calculateEdgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4
{
  v6 = a3;
  v7 = [(UINavigationController *)self _outermostNavigationController];
  v8 = v7;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  if (v7)
  {
    [(UINavigationController *)v7 _calculateTopLayoutInfoForViewController:v6];
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

  v10 = [(UIViewController *)v8 _existingView];
  if (![v10 _usesMinimumSafeAreas])
  {
    goto LABEL_15;
  }

  v11 = [(UINavigationController *)v8 isNavigationBarHidden];

  if (v11)
  {
    goto LABEL_16;
  }

  v12 = [(UINavigationController *)v8 _positionBarsExclusivelyWithSafeArea];
  [(UIViewController *)v8 _contentOverlayInsets];
  v14 = v13;
  if (v12)
  {
    v10 = [(UIViewController *)v8 _existingView];
    [v10 _minimumSafeAreaInsets];
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
  v17 = [(UIView *)navigationBar traitCollection];
  [(UINavigationBar *)navigationBar _minimumTopPaddingWithTraitCollection:v17];
  v19 = v18;

  if (v19 > 0.0)
  {
    v20 = [(UINavigationController *)v8 navigationBar];
    [v20 center];
    v22 = v21;
    [v20 bounds];
    v24 = v23;
    [v20 anchorPoint];
    v26 = v22 - v24 * v25;
    v27 = [(UINavigationController *)self _computeTopAvoidanceAreaForBar:v20 edge:1uLL hidden:0];
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
      [(UINavigationController *)self _edgeInsetsDeferringToCommandeeringTableHeaderViewStyleSearchControllerWithPresentingViewController:v6];
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
    v38 = [(UINavigationController *)self _existingToolbar];
    if (v38)
    {
      v46 = 0;
      [(UINavigationController *)self _shouldToolBar:v38 insetViewController:v6 orOverlayContent:&v46];
      if (v46 == 1)
      {
        v39 = [(UINavigationController *)self toolbar];
        [v39 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
        v29 = v40;
      }
    }
  }

  *a4 = 0;

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

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4
{
  v6 = a3;
  if ([v6 _isNestedNavigationController])
  {
    *a4 = 1;
    [(UIViewController *)self _contentOverlayInsets];
  }

  else
  {
    [(UINavigationController *)self _calculateEdgeInsetsForChildViewController:v6 insetsAreAbsolute:a4];
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

- (void)_marginInfoForChild:(id)a3 leftMargin:(double *)a4 rightMargin:(double *)a5
{
  v8 = [(UIViewController *)self _existingView];
  v9 = [v8 _shouldReverseLayoutDirection];

  [(UIViewController *)self systemMinimumLayoutMargins];
  if (v9)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  *a4 = v12;
  if (v9)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  *a5 = v13;
}

- (double)_contentMarginForView:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = UINavigationController;
  [(UIViewController *)&v16 _contentMarginForView:v4];
  v6 = v5;
  if (self->_navigationBar == v4 || self->_toolbar == v4)
  {
    if (dyld_program_sdk_at_least())
    {
      v7 = [(UINavigationController *)self topViewController];
      v8 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v7, 1, 0);

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
        [(NSMapTable *)lastContentMarginForView setObject:v14 forKey:v4];
      }
    }
  }

  return v6;
}

- (CGRect)_frameForViewController:(id)a3
{
  v4 = a3;
  v5 = [(UINavigationController *)self navigationTransitionView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  [(UINavigationController *)self _calculateTopLayoutInfoForViewController:v4];
  v14 = [(UINavigationController *)self _viewControllerUnderlapsStatusBar];
  v15 = v4;
  v16 = [(UINavigationController *)self navigationBar];
  v17 = [v16 _barPosition];
  v18 = [v15 searchDisplayController];
  if ([v18 isActive])
  {
    v19 = [v15 searchDisplayController];
    if ([v19 hidNavigationBar])
    {
      v21 = ([v15 edgesForExtendedLayout] & 1) == 0 && v17 == 3;
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
  if (v21 || v14)
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

  v28 = [(UINavigationController *)self _existingToolbar];
  v52 = 0;
  v29 = [(UINavigationController *)self _shouldToolBar:v28 insetViewController:v4 orOverlayContent:&v52];
  v51 = 0;
  v30 = [(UIViewController *)self tabBarController];
  v31 = [v30 tabBar];

  v32 = [(UIViewController *)self tabBarController];
  v33 = [(UINavigationController *)self _shouldTabBarController:v32 insetViewController:v4 orOverlayContent:&v51];

  if ((v33 & 1) == 0)
  {
    if (v29)
    {
      v22 = v22 + 0.0;
      v24 = v24 - (_UIBackgroundExtensionForBarWithInsetFromHomeAffordanceAllowance(v28, 0) + 0.0);
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
  v35 = [(UINavigationController *)self toolbar];
  [v35 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v34 = v36;

  if (v29)
  {
    if (v31)
    {
      v33 |= (~*&self->_navigationControllerFlags & 0xC00) != 0;
    }

    v22 = v22 + 0.0;
    v24 = v24 - (v34 + 0.0);
  }

LABEL_28:
  if (v52 == 1 && v31 && (~*&self->_navigationControllerFlags & 0xC00) != 0)
  {
    v51 = 1;
  }

  if (v33)
  {
    [v31 bounds];
    v38 = v37;
    v39 = [v4 _screen];
    v40 = [v39 _userInterfaceIdiom];

    v24 = v24 - (v38 + 0.0);
    if (v40 == 3)
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
      [v31 bounds];
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

    if (!v21 && v14)
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

    [v4 _setContentOverlayInsets:v45 andLeftMargin:0.0 rightMargin:{v46 + v43, 0.0, -1.79769313e308, -1.79769313e308}];
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

- (CGRect)_frameForWrapperViewForViewController:(id)a3
{
  v3 = [(UINavigationController *)self navigationTransitionView];
  [v3 bounds];
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

- (UIEdgeInsets)_expectedContentInsetDeltaForViewController:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = 0.0;
  if (v4)
  {
    v7 = 0.0;
    if ([v4 automaticallyAdjustsScrollViewInsets])
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

- (double)_scrollViewTopContentInsetForViewController:(id)a3
{
  v4 = a3;
  v5 = [(UINavigationController *)self _outermostNavigationController];
  if ([v5 _hasTranslucentNavigationBarIncludingViewController:v4])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v4 extendedLayoutIncludesOpaqueBars];
  }

  v7 = [(UINavigationController *)self _outermostNavigationController];
  v8 = [v7 _isNavigationBarVisible];

  [(UINavigationController *)self _calculateTopLayoutInfoForViewController:v4, 0, 0];
  v9 = v8 ^ 1;
  if ((v6 & 1) != 0 || v9)
  {
    v10 = [v4 searchDisplayController];
    [v10 hidNavigationBar];

    v11 = [(UINavigationController *)self _window];
    if (![UIApp _appAdoptsUISceneLifecycle] || v11)
    {
      v12 = __UIStatusBarManagerForWindow(v11);
      [v12 isStatusBarHidden];
    }
  }

  return 0.0;
}

- (double)_scrollViewBottomContentInsetForViewController:(id)a3
{
  v4 = a3;
  v5 = [(UINavigationController *)self _existingToolbar];
  v6 = 0.0;
  if (v5 && ![(UINavigationController *)self isToolbarHidden]&& ![(UINavigationController *)self _shouldToolBar:v5 insetViewController:v4])
  {
    v7 = [(UINavigationController *)self toolbar];
    [v7 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v6 = v8;
  }

  v9 = [(UIViewController *)self tabBarController];
  v10 = [v9 tabBar];
  v11 = [(UIViewController *)self tabBarController];
  v12 = [v11 _effectiveTabBarPosition];

  if (v10 && v12 == 1 && (*&self->_navigationControllerFlags & 0xC00) == 0 && ![(UINavigationController *)self _shouldTabBarController:v9 insetViewController:v4 orOverlayContent:0])
  {
    [v10 bounds];
    v6 = v6 + v13;
  }

  v14 = [(UIView *)self->super._view _window];
  [v14 safeAreaInsets];
  v16 = v6 + v15;

  v17 = [(UIViewController *)self _multiColumnViewController];
  v18 = v17;
  if (v17)
  {
    [v17 keyboardInset];
    if (v16 < v19)
    {
      v16 = v19;
    }
  }

  return v16;
}

- (BOOL)_otherExpectedNavigationControllerObservesScrollView:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 _viewControllerForAncestor];
    v7 = [v6 navigationController];
    v8 = [v7 _outermostNavigationController];

    v9 = 0;
    if (v8 && v8 != self)
    {
      v9 = [v5 _isScrollViewScrollObserver:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_updateScrollViewObservationFlagsForScrollView:(id)a3 navigationItem:(id)a4 forEdges:(unint64_t)a5
{
  v5 = a5;
  v18 = a3;
  v8 = a4;
  if (v18 && (![(UINavigationController *)self isNavigationBarHidden]|| [(UINavigationController *)self _hasPotentiallyChromelessBottomBar]) && ![(UINavigationController *)self _otherExpectedNavigationControllerObservesScrollView:v18])
  {
    if (v5)
    {
      isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets = _isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets(self, v18);
      v11 = 0x400000000000000;
      if (!isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets)
      {
        v11 = 0;
      }

      *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFBFFFFFFFFFFFFFFLL | v11;
      v12 = [(UINavigationBar *)self->_navigationBar _forceScrollEdgeAppearance];
      v13 = 0x800000000000000;
      if (!v12)
      {
        v13 = 0;
      }

      *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xF7FFFFFFFFFFFFFFLL | v13;
      if (v8 && [v8 _isManualScrollEdgeAppearanceEnabled])
      {
        [v8 _autoScrollEdgeTransitionDistance];
        v15 = (v14 > 0.0) << 60;
      }

      else
      {
        v15 = 0;
      }

      *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xEFFFFFFFFFFFFFFFLL | v15;
    }

    else if ((v5 & 4) == 0)
    {
      goto LABEL_28;
    }

    if (_UIBarsApplyChromelessEverywhere())
    {
      v16 = [v8 _isManualScrollEdgeAppearanceEnabled];
      v17 = 0x2000000000000000;
      if (v16)
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
    if (v5)
    {
      navigationControllerFlags = *&self->_navigationControllerFlags & 0xE3FFFFFFFFFFFFFFLL;
      *&self->_navigationControllerFlags = navigationControllerFlags;
    }

    else
    {
      if ((v5 & 4) == 0)
      {
        goto LABEL_28;
      }

      navigationControllerFlags = self->_navigationControllerFlags;
    }

    *&self->_navigationControllerFlags = navigationControllerFlags & 0xDFFFFFFFFFFFFFFFLL;
  }

LABEL_28:
}

- (void)_updateAndObserveScrollView:(id)a3 viewController:(id)a4 forEdges:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(UINavigationController *)self _outermostNavigationController];

  if (v8 && v10 != self)
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

  v11 = [v9 navigationItem];
  [(UINavigationController *)self _updateScrollViewObservationFlagsForScrollView:v8 navigationItem:v11 forEdges:a5];

  if (v8)
  {
    v12 = [(UINavigationController *)self _navigationControllerShouldObserveScrollView];
    v13 = [v8 _isScrollViewScrollObserver:self];
    if ((a5 & 1) == 0)
    {
      if ((a5 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

    if (v12)
    {
      navigationControllerFlags = self->_navigationControllerFlags;
      [v8 _setTopScrollIndicatorFollowsContentOffset:(navigationControllerFlags >> 58) & 1];
      if ((navigationControllerFlags & 0x400000000000000) != 0)
      {
        v17 = [(UINavigationBar *)self->_navigationBar _scrollEdgeAppearanceHasChromelessBehavior];
        [v8 _setVerticalScrollIndicatorUsesAlternativeTopSafeAreaInset:v17];
        if (v17)
        {
          navigationBar = self->_navigationBar;
          v19 = [(UINavigationController *)self _nestedTopViewController];
          v20 = [v19 navigationItem];
          [(UINavigationController *)self _widthForLayout];
          [(UINavigationBar *)navigationBar _layoutHeightsForNavigationItem:v20 fittingWidth:?];
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
        [v8 _setAlternativeVerticalScrollIndicatorTopSafeAreaInset:v24];
        [v8 _setShouldAdjustLayoutToCollapseTopSpacing:{v25 | v12 & -[UIViewController _isInPopoverPresentation](self, "_isInPopoverPresentation")}];
        [v8 _setShouldAdjustLayoutToDrawTopSeparator:v12];
        if ((a5 & 4) == 0)
        {
LABEL_6:
          if (v12)
          {
LABEL_7:
            if ((v13 & 1) == 0)
            {
              [v8 _addScrollViewScrollObserver:self];
            }

            [(UINavigationController *)self _observeScrollViewDidScroll:v8 topLayoutType:[(UINavigationController *)self _topLayoutTypeForViewController:v9]];
            goto LABEL_29;
          }

          goto LABEL_27;
        }

LABEL_24:
        v26 = [(UINavigationController *)self _existingActiveVisibleToolbar];
        if (!v26)
        {
          v26 = [(UIViewController *)self _tabBarControllerEnforcingClass:1];
          [v26 _navigationController:self didUpdateAndObserveScrollView:v8 forEdges:a5];
        }

        if (v12)
        {
          goto LABEL_7;
        }

LABEL_27:
        if (v13)
        {
          [(UINavigationController *)self _stopObservingContentScrollView:v8];
        }

        goto LABEL_29;
      }
    }

    else
    {
      [v8 _setTopScrollIndicatorFollowsContentOffset:0];
    }

    [v8 _setVerticalScrollIndicatorUsesAlternativeTopSafeAreaInset:0];
    v25 = 0;
    v24 = 0.0;
    goto LABEL_23;
  }

  if (![(UINavigationController *)self _isNestedNavigationController])
  {
    v14 = [(UINavigationController *)self _existingActiveVisibleToolbar];
    v15 = v14;
    if ((a5 & 4) != 0 && v14)
    {
      [(UINavigationController *)self _updateBackgroundTransitionProgressForScrollView:0 toolbar:v14];
    }
  }

LABEL_29:
}

- (BOOL)_navigationBar:(id)a3 getContentOffsetOfObservedScrollViewIfApplicable:(CGPoint *)a4 velocity:(CGPoint *)a5
{
  v8 = [(UINavigationController *)self _nestedTopViewController];
  isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets = 1;
  v10 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v8, 1, 0);

  if ((_UISolariumEnabled() & 1) == 0)
  {
    isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets = _isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets(self, v10);
  }

  if (((v10 != 0) & isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets) == 1)
  {
    if (a4)
    {
      [v10 contentOffset];
      a4->x = v11;
      a4->y = v12;
    }

    if (a5)
    {
      [v10 _horizontalVelocity];
      v14 = v13 * 1000.0;
      [v10 _verticalVelocity];
      a5->x = v14;
      a5->y = v15 * 1000.0;
    }
  }

  return (v10 != 0) & isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets;
}

- (void)_navigationBar:(id)a3 topItemUpdatedLargeTitleDisplayMode:(id)a4
{
  v10 = a4;
  v5 = [(UINavigationController *)self _nestedTopViewController];
  v6 = [v5 navigationItem];

  if (v6 == v10)
  {
    v7 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v5, 1, 0);
    if (v7 && _isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets(self, v7))
    {
      v8 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v5, 4, 0);

      if (v7 == v8)
      {
        v9 = 5;
      }

      else
      {
        v9 = 1;
      }

      [(UINavigationController *)self _updateScrollViewObservationFlagsForScrollView:v7 navigationItem:v10 forEdges:v9];
    }
  }
}

- (void)_resetScrollViewObservingForViewController:(id)a3
{
  v8 = a3;
  v4 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v8, 1, 0);
  v5 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v8, 4, 0);
  if (v5 == v4)
  {
    v6 = 5;
  }

  else
  {
    v6 = 1;
  }

  [(UINavigationController *)self _updateAndObserveScrollView:v4 viewController:v8 forEdges:v6];
  if (v5 != v4)
  {
    [(UINavigationController *)self _updateAndObserveScrollView:v5 viewController:v8 forEdges:4];
    if (!v5)
    {
      v7 = [v8 navigationItem];
      [(UINavigationController *)self _updateScrollViewObservationFlagsForScrollView:v4 navigationItem:v7 forEdges:1];
    }
  }
}

- (void)_computeAndApplyScrollContentInsetDeltaForViewController:(id)a3
{
  v4 = a3;
  [(UINavigationController *)self _resetScrollViewObservingForViewController:v4];
  v5 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v4, 1, 0);
  v6 = v5;
  if ((*(&self->_navigationControllerFlags + 4) & 0x20) == 0)
  {
    if (!v5 || [(UINavigationController *)self _isPushingOrPopping])
    {
      [(UINavigationController *)self _updateTopViewFramesForViewController:v4];
    }

    v7 = [v6 _viewControllerForAncestor];
    v8 = [v7 navigationController];

    if (v8 != self)
    {
      [(UINavigationController *)v8 _layoutTopViewController];
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __83__UINavigationController__computeAndApplyScrollContentInsetDeltaForViewController___block_invoke;
    v9[3] = &unk_1E70F6228;
    v10 = v6;
    v11 = self;
    v12 = v4;
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

- (void)_updateTopViewFramesForViewController:(id)a3 isCancelledTransition:(BOOL)a4 isOrientationChange:(BOOL)a5
{
  v15 = a3;
  v8 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v15, 1, 0);
  v9 = self;
  v10 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(v9, v15, 1, 0);
  if (a4)
  {
    v11 = 5;
  }

  else if ([(UINavigationController *)v9 _isPushing])
  {
    v11 = 2;
  }

  else
  {
    v12 = [(UINavigationController *)v9 _isPopping];
    v13 = 3;
    if (!v12)
    {
      v13 = 4;
    }

    v14 = v10 != 0;
    if (a5)
    {
      v14 = v13;
    }

    if (v12)
    {
      v11 = v13;
    }

    else
    {
      v11 = v14;
    }
  }

  [(UINavigationController *)v9 _updateTopViewFramesToMatchScrollOffsetInViewController:v15 contentScrollView:v8 topLayoutType:v11];
}

- (BOOL)_shouldDisplaySearchBarInlineForEffectiveSearchControllerGivenTopNavigationItem:(id)a3 traitCollection:(id)a4
{
  v5 = a3;
  v6 = [(UIViewController *)self _splitViewControllerEnforcingClass:1];
  if (![v6 _supportsGlobalSearchHosting])
  {
    goto LABEL_6;
  }

  if (([v6 _isGlobalSearchDonor:self] & 1) == 0)
  {
    if ([v6 _isGlobalSearchRecipient:self])
    {
      v7 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v7 = [v5 _hasIntegratedSearchBarInNavigationBar];
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (id)_effectiveSearchControllerForSearchBarGivenTopNavigationItem:(id)a3
{
  v4 = a3;
  v5 = [(UIViewController *)self _splitViewControllerEnforcingClass:1];
  v6 = v5;
  if (v4 && [v5 _supportsGlobalSearchHosting])
  {
    if ([v6 _isGlobalSearchRecipient:self])
    {
      v7 = [(UIViewController *)self splitViewController];
      v8 = [v7 _globalSearchController];

      v9 = v8;
      v10 = v4;
      v11 = v6;
      goto LABEL_9;
    }

    if ([v6 _isGlobalSearchDonor:self])
    {
      v8 = 0;
      goto LABEL_10;
    }
  }

  v9 = [v4 _searchControllerIfAllowed];
  v8 = v9;
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = 0;
  v11 = 0;
LABEL_9:
  [v9 _setNavigationItemCurrentlyDisplayingSearchBar:v10 withGlobalSearchDelegate:v11];
  v12 = [v8 searchBar];
  [v12 _resetIfNecessaryForNavigationBarHosting:1];

LABEL_10:

  return v8;
}

- (id)_effectiveSearchControllerForScopeBarGivenTopNavigationItem:(id)a3
{
  v4 = a3;
  v5 = [(UIViewController *)self _splitViewControllerEnforcingClass:1];
  if ([v5 _supportsGlobalSearchHosting] && objc_msgSend(v5, "_isGlobalSearchDonor:", self))
  {
    v6 = [(UIViewController *)self splitViewController];
    v7 = [v6 _globalSearchController];
  }

  else
  {
    v7 = [v4 _searchControllerIfAllowed];
  }

  return v7;
}

- (BOOL)_isTransitioningSearchController
{
  v2 = [(UINavigationController *)self topViewController];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 navigationItem];
    v5 = [v4 _searchControllerIfAllowed];

    if ([v5 isActive])
    {
      v6 = [v5 transitionCoordinator];
      v7 = v6 != 0;
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

- (int64_t)_topLayoutTypeForViewController:(id)a3
{
  v4 = 1;
  v5 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, a3, 1, 0);
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

- (void)_scrollToRevealNavigationBarPart:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v17 = [(UINavigationController *)self _outermostNavigationController];
  v7 = [(UINavigationController *)self topViewController];
  v8 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(v17, v7, 1, 0);

  if (v8)
  {
    v9 = [v17 navigationBar];
    v10 = [v9 topItem];
    v11 = [v10 _stackEntry];

    if (v11)
    {
      [v11 activeLayoutHeightRevealingPart:a3];
      if (v12 > 0.0)
      {
        v13 = v12;
        [v9 frame];
        v15 = -(v13 + v14);
        [v8 contentOffset];
        if (v16 > v15)
        {
          [v8 setContentOffset:v4 animated:?];
        }
      }
    }
  }
}

- (void)_performWhileIgnoringUpdateTopViewFramesToMatchScrollOffset:(id)a3
{
  ++self->_updateTopViewFramesToMatchScrollOffsetDisabledCount;
  (*(a3 + 2))(a3, a2);
  --self->_updateTopViewFramesToMatchScrollOffsetDisabledCount;
}

- (void)_updateTopViewFramesToMatchScrollOffsetInViewController:(id)a3 contentScrollView:(id)a4 topLayoutType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if ([(UINavigationController *)self _canUpdateTopViewFramesToMatchScrollView])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    [(UINavigationController *)self _calculateTopViewFramesForLayoutWithViewController:v8 contentScrollView:v9 navBarFrame:&v17 topPaletteFrame:&v15 topLayoutType:a5];
    [v9 setProgrammaticScrollEnabled:!self->_interactiveScrollActive];
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
    [v9 setProgrammaticScrollEnabled:1];
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

- (void)_performTopViewGeometryUpdates:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__UINavigationController__performTopViewGeometryUpdates___block_invoke;
  v6[3] = &unk_1E70F37C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- ($512FAC6031DC579ED3B9B436D64463DA)_calculateTopLayoutInfoForViewController:(SEL)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v31 = 0;
  v7 = [(UINavigationController *)self _shouldNavigationBarInsetViewController:v6 orOverlayContent:&v31];
  v8 = [v6 edgesForExtendedLayout];
  v9 = self;
  v10 = v6;
  if ([(UINavigationController *)v9 _isPushing])
  {
    v11 = 2;
  }

  else if ([(UINavigationController *)v9 _isPopping])
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  v12 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(v9, v10, 1, 0);
  if (qword_1ED497A08 != -1)
  {
    dispatch_once(&qword_1ED497A08, &__block_literal_global_1812);
  }

  v13 = v8 & 1;
  if (byte_1ED49790B == 1)
  {
    if (v11 == 3)
    {
      computingNavigationBarHeightWithRevealPresentationIterations = v9->_computingNavigationBarHeightWithRevealPresentationIterations;
      if (computingNavigationBarHeightWithRevealPresentationIterations < 0x65)
      {
        v9->_computingNavigationBarHeightWithRevealPresentationIterations = computingNavigationBarHeightWithRevealPresentationIterations + 1;
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
            *&buf[4] = v9;
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
            *&buf[4] = v9;
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
      v9->_computingNavigationBarHeightWithRevealPresentationIterations = 0;
    }
  }

  memset(buf, 0, 32);
  [(UINavigationController *)v9 _calculateTopViewFramesForLayoutWithViewController:v10 contentScrollView:v12 navBarFrame:buf topPaletteFrame:0 topLayoutType:v11];
  v16 = *&buf[24];

  topPalette = v9->_topPalette;
  v18 = 0.0;
  if (topPalette && [(_UINavigationControllerPalette *)topPalette isAttached])
  {
    [(_UINavigationControllerPalette *)v9->_topPalette preferredContentInsets];
    if (v19 == 0.0)
    {
      [(UIView *)v9->_topPalette frame];
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
    v24 = [(UINavigationController *)v9 _isNavigationBarVisible];
    v23 = !v24 || v31;
  }

  else
  {
    v23 = 0;
  }

  if ([(UINavigationController *)v9 _isNavigationBarVisible])
  {
    v25 = (*(&v9->_navigationControllerFlags + 1) >> 5) & 1;
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

  if (v7 || (v26 = 0.0, v25) && [(_UINavigationControllerPalette *)v9->_topPalette isVisibleWhenPinningBarIsHidden])
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

- (void)_calculateTopViewFramesForLayoutWithViewController:(id)a3 contentScrollView:(id)a4 navBarFrame:(CGRect *)a5 topPaletteFrame:(CGRect *)a6 topLayoutType:(int64_t)a7
{
  v91 = a3;
  v13 = a4;
  if (!a5)
  {
    v86 = [MEMORY[0x1E696AAA8] currentHandler];
    [v86 handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:7239 description:{@"Invalid parameter not satisfying: %@", @"oNavBarFrame != NULL"}];
  }

  if (!v13)
  {
    a7 = 0;
  }

  if ((a7 - 2) < 3)
  {
    [(UINavigationController *)self _calculateTopViewFramesFromLayoutHeightsWithViewController:v91 contentScrollView:v13 preservingContentInset:(a7 & 0xFFFFFFFFFFFFFFFELL) == 2 respectFullExtension:a7 == 3 gettingNavBarFrame:a5 topPaletteFrame:a6];
    if (a7 != 4)
    {
      goto LABEL_57;
    }

LABEL_11:
    v14 = v91;
    if ([v14 _isNestedNavigationController])
    {
      v15 = [v14 topViewController];

      v14 = v15;
    }

    v16 = [v14 navigationItem];
    [(UINavigationController *)self _intrinsicNavigationBarHeightRangeForNavItem:v16];
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = self;
    v24 = v14;
    v25 = v13;
    if (v24)
    {
      if (v13)
      {
LABEL_15:
        [(UINavigationController *)v23 _topPalettePreferredLayoutHeightForVisibilityStateIfDisplayedForViewController:v24];
        v27 = v26;
        [(UIView *)v23->_navigationBar frame];
        v29 = v28;
        topPalette = v23->_topPalette;
        if (topPalette)
        {
          [(UIView *)topPalette frame];
          v32 = v31;
        }

        else
        {
          v32 = 0.0;
        }

        v43 = v23;
        v44 = v43;
        if (v43->__positionBarsExclusivelyWithSafeArea && (-[UIViewController _existingView](v43, "_existingView"), v45 = objc_claimAutoreleasedReturnValue(), v46 = [v45 _usesMinimumSafeAreas], v45, v46))
        {
          v47 = [(UIViewController *)v44 _existingView];
          [v47 _minimumSafeAreaInsets];
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
          v54 = [(UINavigationController *)v44 _interactiveScrollActive];
          if (v13)
          {
            v55 = [v25 _hasContentForBarInteractions];
          }

          else
          {
            v55 = 0;
          }

          if ((v54 | v55))
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

        v63 = v23->_topPalette;
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

        [(UINavigationController *)v44 _navigationBarSizeForViewController:v24 proposedHeight:[(UINavigationBar *)v23->_navigationBar _hasFixedMaximumHeight]^ 1 allowRubberBandStretch:v22];
        v68 = v67;
        [(UINavigationController *)v44 _widthForLayout];
        v70 = v69;
        [(UIView *)v23->_navigationBar frame];
        v72 = v71;
        v74 = v73;
        if (v44->__positionBarsExclusivelyWithSafeArea)
        {
          v75 = [(UINavigationController *)v44 navigationBar];
          v76 = [v75 traitCollection];
          v77 = [v76 userInterfaceIdiom];

          if (v77 == 3)
          {
            [(UIViewController *)v44 _contentOverlayInsets];
            v72 = v78;
          }
        }

        if (a6)
        {
          v79 = v23->_topPalette;
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
            a6->origin.x = v81;
            a6->origin.y = MaxY;
            a6->size.width = v83;
            a6->size.height = v65;
          }

          else
          {
            v85 = *(MEMORY[0x1E695F058] + 16);
            a6->origin = *MEMORY[0x1E695F058];
            a6->size = v85;
          }
        }

        a5->origin.x = v72;
        a5->origin.y = v74;
        a5->size.width = v70;
        a5->size.height = v68;

        goto LABEL_57;
      }
    }

    else
    {
      v87 = [MEMORY[0x1E696AAA8] currentHandler];
      v88 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGFloat _verticalSpaceToUseForDynamicTopViewLayout(UINavigationController *__strong, CGFloat, UIViewController *__strong, UIScrollView *__strong)"}];
      [v87 handleFailureInFunction:v88 file:@"UINavigationController.m" lineNumber:7536 description:{@"Invalid parameter not satisfying: %@", @"topViewController != nil"}];

      if (v13)
      {
        goto LABEL_15;
      }
    }

    v89 = [MEMORY[0x1E696AAA8] currentHandler];
    v90 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGFloat _verticalSpaceToUseForDynamicTopViewLayout(UINavigationController *__strong, CGFloat, UIViewController *__strong, UIScrollView *__strong)"}];
    [v89 handleFailureInFunction:v90 file:@"UINavigationController.m" lineNumber:7537 description:{@"Invalid parameter not satisfying: %@", @"contentScrollView != nil"}];

    goto LABEL_15;
  }

  if (a7 != 5)
  {
    if (!a7)
    {
      [(UINavigationController *)self _calculateTopViewFramesForExpandedLayoutWithViewController:v91 contentScrollView:v13 gettingNavBarFrame:a5 topPaletteFrame:a6];
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
  a5->origin.x = v34;
  a5->origin.y = v36;
  a5->size.width = v38;
  a5->size.height = v39;
  if (a6)
  {
    transitioningTopPalette = self->_transitioningTopPalette;
    if (!transitioningTopPalette)
    {
      transitioningTopPalette = self->_topPalette;
    }

    [(UIView *)transitioningTopPalette frame];
    a6->origin.x = 0.0;
    a6->origin.y = 0.0;
    a6->size.width = v41;
    a6->size.height = v42;
  }

LABEL_57:
}

- (double)_topPalettePreferredLayoutHeightForVisibilityStateIfDisplayedForViewController:(id)a3
{
  v4 = a3;
  v5 = self->_topPalette;
  v6 = 0.0;
  if (v5)
  {
    v7 = [(UINavigationController *)self topViewController];
    if (v7 == v4)
    {
      v8 = [(UINavigationDeferredTransitionContext *)self->_deferredTransitionContext outgoingTopPalette];
      v9 = v8;
      if (v8 == v5)
      {
        v12 = [(UINavigationDeferredTransitionContext *)self->_deferredTransitionContext outgoingTopPalette];
        v13 = [v12 isAttached];

        if ((v13 & 1) == 0)
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

- (void)_calculateTopViewFramesFromLayoutHeightsWithViewController:(id)a3 contentScrollView:(id)a4 preservingContentInset:(BOOL)a5 respectFullExtension:(BOOL)a6 gettingNavBarFrame:(CGRect *)a7 topPaletteFrame:(CGRect *)a8
{
  v10 = a6;
  v11 = a5;
  v107 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  [(UINavigationController *)self _widthForLayout];
  v17 = v16;
  if ([v14 _isNestedNavigationController])
  {
    v18 = [v14 navigationBar];
    v19 = [v18 topItem];
  }

  else
  {
    v19 = [v14 navigationItem];
  }

  v97 = v19;
  [(UINavigationBar *)self->_navigationBar _layoutHeightsForNavigationItem:v19 fittingWidth:v17];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [(UINavigationController *)self _topPalettePreferredLayoutHeightForVisibilityStateIfDisplayedForViewController:v14];
  v27 = v26;
  v28 = [(UINavigationController *)self _interactiveScrollActive];
  if (v15)
  {
    v29 = [v15 _hasContentForBarInteractions];
  }

  else
  {
    v29 = 0;
  }

  v30 = (v28 | v29) & v11;
  v96 = v15;
  rect = v17;
  if (v30 == 1)
  {
    v31 = _possibleTopViewsHeightBasedOnContentOffsetForScrollView(self, v15);
    if (v31 == 0.0)
    {
      v32 = [(UINavigationController *)self topViewController];
      v33 = [v32 _isNavigationController];

      if (v33)
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

  if ((v30 & v10) == 1)
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
        v93 = a8;
        v38 = [(UINavigationBar *)self->_navigationBar _stack];
        v39 = [(UINavigationController *)self viewControllers];
        v40 = [v39 count];

        v41 = [(UINavigationController *)self topViewController];
        v42 = [v41 _isNestedNavigationController];

        if (v42)
        {
          v43 = [(UINavigationController *)self topViewController];
          v44 = [v43 viewControllers];
          v45 = [v44 count];

          v46 = v45 != 0;
          v47 = v45 - 1;
          v37 = v97;
          if (!v46)
          {
            v47 = 0;
          }

          v40 += v47;
        }

        v94 = v38;
        v48 = [v38 itemCount];
        v49 = v48 - 1;
        if (v40 != v48 && v40 != v49)
        {
          if (os_variant_has_internal_diagnostics())
          {
            v88 = __UIFaultDebugAssertLog();
            if (os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
            {
              v89 = [(UINavigationController *)self viewControllers];
              v90 = [v94 items];
              *buf = 138412546;
              v104 = v89;
              v105 = 2112;
              v106 = v90;
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
              v86 = [(UINavigationController *)self viewControllers];
              v87 = [v94 items];
              *buf = 138412546;
              v104 = v86;
              v105 = 2112;
              v106 = v87;
              _os_log_impl(&dword_188A29000, v85, OS_LOG_TYPE_ERROR, "Unexpected configuration of navigation stack. viewControllers = %@, stack.items = %@", buf, 0x16u);

              v37 = v97;
            }
          }
        }

        if (v40 == v49)
        {
          v51 = [v94 previousBackEntry];
          v52 = v51;
          if (v51)
          {
            v53 = v51;
          }

          else
          {
            v53 = [v94 backEntry];
          }

          v50 = v53;
        }

        else
        {
          v50 = [v94 topEntry];
        }

        v54 = [v50 activeLayout];
        v55 = [(_UINavigationBarLayout *)v54 restingHeights];

        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v92 = v55;
        v56 = [v55 reverseObjectEnumerator];
        v57 = [v56 countByEnumeratingWithState:&v98 objects:v102 count:16];
        if (v57)
        {
          v58 = v57;
          v91 = v50;
          v59 = *v99;
          v60 = v35 + 0.05;
          while (2)
          {
            for (i = 0; i != v58; ++i)
            {
              if (*v99 != v59)
              {
                objc_enumerationMutation(v56);
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

            v58 = [v56 countByEnumeratingWithState:&v98 objects:v102 count:16];
            if (v58)
            {
              continue;
            }

            break;
          }

LABEL_45:
          v37 = v97;
          v50 = v91;
        }

        v25 = v21;
        a8 = v93;
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
    v69 = [(UINavigationController *)self navigationBar];
    v70 = [v69 traitCollection];
    v71 = [v70 userInterfaceIdiom];

    if (v71 == 3)
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
      v83 = [(UINavigationDeferredTransitionContext *)self->_deferredTransitionContext outgoingTopPalette];

      if (v82 != v83)
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

  if (a7)
  {
    a7->origin.x = v66;
    a7->origin.y = v68;
    a7->size.width = rect;
    a7->size.height = v25;
  }

  if (a8)
  {
    a8->origin.x = v75;
    a8->origin.y = MaxY;
    a8->size.width = v79;
    a8->size.height = v81;
  }
}

- (void)_calculateTopViewFramesForExpandedLayoutWithViewController:(id)a3 contentScrollView:(id)a4 gettingNavBarFrame:(CGRect *)a5 topPaletteFrame:(CGRect *)a6
{
  v34 = a3;
  v10 = a4;
  [(UINavigationController *)self _widthForLayout];
  v12 = v11;
  [(UIView *)self->_navigationBar frame];
  [(UINavigationController *)self _navigationBarSizeForViewController:v34 proposedHeight:0 allowRubberBandStretch:v13];
  v15 = v14;
  v16 = [(UINavigationController *)self _interactiveScrollActive];
  if (v10)
  {
    v17 = [v10 _hasContentForBarInteractions];
  }

  else
  {
    v17 = 0;
  }

  if (((v16 | v17) & 1) == 0)
  {
    [(UINavigationController *)self _widthForLayout];
    v19 = v18;
    v20 = [(UINavigationController *)self _navigationBarForNestedNavigationController];
    v21 = [v34 navigationItem];
    [v20 _layoutHeightsForNavigationItem:v21 fittingWidth:v19];
    v15 = v22;
  }

  if (a5)
  {
    [(UIView *)self->_navigationBar frame];
    a5->origin.x = v23;
    a5->origin.y = v24;
    if (self->__positionBarsExclusivelyWithSafeArea)
    {
      v25 = [(UINavigationController *)self navigationBar];
      v26 = [v25 traitCollection];
      v27 = [v26 userInterfaceIdiom];

      if (v27 == 3)
      {
        [(UIViewController *)self _contentOverlayInsets];
        a5->origin.x = v28;
      }
    }

    a5->size.width = v12;
    a5->size.height = v15;
  }

  if (a6)
  {
    if (self->_topPalette)
    {
      [(UINavigationController *)self _frameForPalette:?];
      a6->origin.x = v29;
      a6->origin.y = v30;
      a6->size.width = v31;
      a6->size.height = v32;
    }

    else
    {
      v33 = *(MEMORY[0x1E695F058] + 16);
      a6->origin = *MEMORY[0x1E695F058];
      a6->size = v33;
    }
  }
}

- (double)_preferredHeightForHidingNavigationBarForViewController:(id)a3 topItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = v6;
  if ([(UINavigationController *)v8 isNavigationBarHidden]&& [(_UINavigationControllerPalette *)v8->_topPalette _isPalettePinningBarHidden])
  {
    goto LABEL_14;
  }

  v10 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(v8, v9, 1, 0);
  v11 = [(UINavigationController *)v8 navigationBar];
  [v11 frame];
  if (v12 == 0.0 || !_isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets(v8, v10) || !v8->_interactiveScrollActive && ([v10 isScrollAnimating] & 1) == 0 && (objc_msgSend(v10, "refreshControl"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "refreshControlState"), v13, v14 != 4) && !-[UINavigationController _isPushingOrPopping](v8, "_isPushingOrPopping") && -[UIViewController _appearState](v8, "_appearState") != 3 && (!-[UINavigationController _isAppearingOrAppearedCheck](v8, "_isAppearingOrAppearedCheck") || (objc_msgSend(v11, "_hasVariableHeight") & 1) == 0))
  {

LABEL_14:
    [(UINavigationController *)v8 _intrinsicNavigationBarHeightRangeForNavItem:v7];
    v16 = v17;
    goto LABEL_15;
  }

  [(UIView *)v8->_navigationBar frame];
  v16 = v15;
LABEL_15:

  return v16;
}

- ($1AB5FA073B851C12C2339EC22442E995)_intrinsicNavigationBarHeightRangeForNavItem:(id)a3
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
    v8 = a3;
    [(UINavigationController *)self _widthForLayout];
    [(UINavigationBar *)navigationBar _layoutHeightsForNavigationItem:v8 fittingWidth:?];
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

- (CGSize)_navigationBarSizeForViewController:(id)a3 proposedHeight:(double)a4 allowRubberBandStretch:(BOOL)a5
{
  v8 = a3;
  v9 = [(UINavigationController *)self _navigationBarForNestedNavigationController];
  [(UINavigationController *)self _widthForLayout];
  v11 = v10;
  v12 = [v8 navigationItem];
  [v9 _layoutHeightsForNavigationItem:v12 fittingWidth:v11];
  v14 = v13;
  v16 = v15;

  if (v14 < a4)
  {
    v14 = a4;
  }

  v17 = [(UINavigationController *)self _nestedTopViewController];
  v18 = v17;
  if (v17 == v8)
  {
    goto LABEL_6;
  }

  v19 = [v17 navigationItem];
  v20 = [v19 _searchControllerIfAllowed];
  v21 = [v20 _currentActiveChildViewController];

  if (!v21)
  {
    v22 = v16;
    goto LABEL_15;
  }

  v22 = v16;
  if (v21 == v8)
  {
LABEL_6:
    isHeightOfTopViewsCoordinatedToMatchViewControllerOffsets = _isHeightOfTopViewsCoordinatedToMatchViewControllerOffsets(self, v8);
    if (isHeightOfTopViewsCoordinatedToMatchViewControllerOffsets)
    {
      v22 = v14;
    }

    else
    {
      v22 = v16;
    }

    if (isHeightOfTopViewsCoordinatedToMatchViewControllerOffsets && !a5)
    {
      if (v16 >= v14)
      {
        v22 = v14;
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
    v4 = [(UINavigationController *)self navigationBar];
    [v4 bounds];
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

- (id)_scrollDetentOffsetsForScrollView:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  p_isa = &v5->super.super.super.isa;
  if (v5->__positionBarsExclusivelyWithSafeArea && (-[UIViewController _existingView](v5, "_existingView"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 _usesMinimumSafeAreas], v7, v8))
  {
    v9 = [p_isa _existingView];
    [v9 _minimumSafeAreaInsets];
    v11 = v10;
  }

  else
  {
    [p_isa _contentOverlayInsets];
    v11 = v12;
  }

  v13 = [MEMORY[0x1E695DF70] array];
  [v4 _allowedNavigationOverlapAmount];
  v15 = v14;
  v16 = v14 - v11;
  if ([p_isa _isNavigationBarVisible])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v17 = [p_isa[125] _restingHeights];
    v18 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
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
            objc_enumerationMutation(v17);
          }

          v24 = *(*(&v32 + 1) + 8 * i);
          if ((v22 & 1) == 0 || (v25 = [v4 _canScrollWithoutBouncingIncludingRevealableContentPaddingTopY], v19 = -1073741820.0, v25))
          {
            [v24 floatValue];
            v19 = v26;
          }

          v27 = [MEMORY[0x1E696AD98] numberWithDouble:v16 - v19];
          [v13 addObject:v27];

          v22 = 0;
        }

        v20 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
        v22 = 0;
      }

      while (v20);
    }

    v28 = [v13 lastObject];
    [v28 floatValue];
    v16 = v16 - v29;
  }

  if (v15 > 0.0)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithDouble:v16 - v15];
    [v13 addObject:v30];
  }

  return v13;
}

- (double)_scrollOffsetRetargettedToDetentOffsetIfNecessary:(double)a3 unclampedOriginalTargetOffset:(double)a4 scrollView:(id)a5
{
  v7 = a5;
  v8 = [(UINavigationController *)self _scrollDetentOffsetsForScrollView:v7];
  v9 = [v8 firstObject];
  [v9 floatValue];
  if (v10 <= a3)
  {
    goto LABEL_16;
  }

  v11 = [v8 lastObject];
  [v11 floatValue];
  if (v12 >= a3)
  {

    goto LABEL_16;
  }

  v13 = [v8 count];

  if (v13 < 2)
  {
    goto LABEL_17;
  }

  [v7 _allowedNavigationOverlapAmount];
  v15 = v14;
  if ([v8 count] < 2)
  {
LABEL_14:
    v9 = [v8 lastObject];
    [v9 floatValue];
    a3 = v27;
LABEL_16:

    goto LABEL_17;
  }

  v16 = -a3;
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

      a3 = -v24;
      break;
    }

    if (++v17 >= [v8 count])
    {
      goto LABEL_14;
    }
  }

LABEL_17:

  return a3;
}

- (void)_observeScrollView:(id)a3 willEndDraggingWithVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5 unclampedOriginalTarget:(CGPoint)a6
{
  y = a6.y;
  v9 = a3;
  if (a5)
  {
    v14 = v9;
    isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets = _isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets(self, v9);
    v9 = v14;
    if (isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets)
    {
      v11 = [(UINavigationController *)self topViewController];
      v12 = _insetsOfTopViewControllerScrollViewAutomaticallyAdjustedForLargeTitleView(v11);

      v9 = v14;
      if (v12)
      {
        [(UINavigationController *)self _scrollOffsetRetargettedToDetentOffsetIfNecessary:v14 unclampedOriginalTargetOffset:a5->y scrollView:y];
        v9 = v14;
        a5->y = v13;
      }
    }
  }
}

- (UIEdgeInsets)_revealableContentPaddingForObservedScrollView:(id)a3 includeContentWithCollapsedAffinity:(BOOL)a4
{
  v5 = a3;
  v6 = [(UINavigationController *)self topViewController];
  v7 = _insetsOfTopViewControllerScrollViewAutomaticallyAdjustedForLargeTitleView(v6);

  v8 = 0.0;
  if (v7 && _isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets(self, v5))
  {
    [(UINavigationController *)self _heightRangeOfTopViews];
    v10 = v9;
    v12 = v9 - v11;
    v13 = [(UINavigationController *)self navigationBar];
    [v13 bounds];
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

- (UIEdgeInsets)_collapsableContentPaddingForObservedScrollView:(id)a3
{
  v4 = a3;
  v5 = [(UINavigationController *)self topViewController];
  v6 = _insetsOfTopViewControllerScrollViewAutomaticallyAdjustedForLargeTitleView(v5);

  v7 = 0.0;
  if (v6 && _isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets(self, v4))
  {
    [(UINavigationController *)self _heightRangeOfTopViews];
    v9 = v8;
    v10 = [(UINavigationController *)self navigationBar];
    [v10 bounds];
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

- (double)_navigationBar:(id)a3 preferredHeightForTransitionToHeightRange:(id)a4
{
  var2 = a4.var2;
  var0 = a4.var0;
  v7 = [(UINavigationController *)self topViewController:a3];
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

- (void)_navigationBar:(id)a3 itemEnabledAutoScrollTransition:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (_isNestedNavigationControllerFullyInstalledIntoContainingNavigationController(self))
  {
    v7 = [(UINavigationController *)self _outermostNavigationController];
    [v7 _navigationBar:v11 itemEnabledAutoScrollTransition:v6];
  }

  else
  {
    v8 = [(UINavigationBar *)self->_navigationBar topItem];

    if (v8 != v6)
    {
      goto LABEL_12;
    }

    v7 = [(UINavigationController *)self topViewController];
    v6 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v7, 1, 0);
    v9 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v7, 4, 0);
    if (v6 == v9)
    {
      v10 = 5;
    }

    else
    {
      v10 = 1;
    }

    [(UINavigationController *)self _updateAndObserveScrollView:v6 viewController:v7 forEdges:v10];
    if (v9 && v6 != v9)
    {
      [(UINavigationController *)self _updateAndObserveScrollView:v9 viewController:v7 forEdges:4];
    }
  }

LABEL_12:
}

- (BOOL)_tryRequestPopToItem:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UINavigationController *)self viewControllers];
  v6 = [v5 count];
  if (v6 < 2)
  {
    goto LABEL_21;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = v8;
  v20 = self;
  v21 = v5;
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
    if ([v13 _tryRequestPopToItem:v4])
    {

LABEL_16:
      v5 = v21;
      goto LABEL_20;
    }

    v14 = [v13 topViewController];
    v15 = [v14 navigationItem];

    if (v15 == v4)
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

  v16 = [v12 navigationItem];

  if (v16 != v4)
  {
    goto LABEL_12;
  }

  v17 = v12;
LABEL_18:

  v5 = v21;
  if (v12)
  {
    v18 = [(UINavigationController *)v20 popToViewController:v12 animated:1];
    v7 = v12;
LABEL_20:
  }

LABEL_21:

  return v6 > 1;
}

- (BOOL)_navigationBarTopItemIsNestedNavigationController:(id)a3
{
  v3 = [(UINavigationController *)self topViewController];
  v4 = [v3 _isNestedNavigationController];

  return v4;
}

- (void)_observeScrollViewWillBeginDragging:(id)a3
{
  v6 = a3;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    [(UINavigationController *)self _immediatelyFinishNavigationBarTransition];
  }

  if ((_UISolariumEnabled() & 1) != 0 || (*(&self->_navigationControllerFlags + 7) & 4) != 0)
  {
    v4 = [(UINavigationController *)self topViewController];
    v5 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v4, 1, 0);

    if (v5 == v6)
    {
      [(UINavigationController *)self _setInteractiveScrollActive:1];
    }
  }
}

- (void)_observeScrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v6 = a3;
  v7 = [(UINavigationController *)self topViewController];
  v8 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v7, 1, 0);

  if (v8 == v6 && !a4)
  {

    [(UINavigationController *)self _setInteractiveScrollActive:0];
  }
}

- (void)_observeScrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = [(UINavigationController *)self topViewController];
  v6 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v5, 1, 0);

  if (v6 == v4)
  {

    [(UINavigationController *)self _setInteractiveScrollActive:0];
  }
}

- (void)_observeScrollViewGeometryAffectingContentBottomDidChange:(id)a3
{
  v7 = a3;
  if (_UIBarsApplyChromelessEverywhere())
  {
    v4 = [(UINavigationController *)self _nestedTopViewController];
    v5 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v4, 4, 0);

    if (v5 == v7)
    {
      v6 = [(UINavigationController *)self _existingActiveVisibleToolbar];
      [(UINavigationController *)self _updateBackgroundTransitionProgressForScrollView:v7 toolbar:v6];
    }
  }
}

- (void)_observeScrollViewDidScroll:(id)a3 topLayoutType:(int64_t)a4
{
  v26 = a3;
  v5 = [(UINavigationController *)self topViewController];
  v6 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v5, 1, 0);

  v7 = [(UINavigationController *)self topViewController];
  v8 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v7, 4, 0);

  v9 = _UIBarsApplyChromelessEverywhere();
  v10 = v26;
  if (v9)
  {
    v11 = [(UINavigationBar *)self->_navigationBar _stack];
    v12 = [v11 topEntry];

    v13 = v26;
    if (v12)
    {
      v14 = v6 == v26;
    }

    else
    {
      v14 = 0;
    }

    if (v14 && (*(&self->_navigationControllerFlags + 7) & 0x20) != 0)
    {
      if (![v12 isActiveLayoutVariableHeight] || (objc_msgSend(v12, "layoutHeightsForActiveLayout"), v16 = v15, -[UIView bounds](self->_navigationBar, "bounds"), Height = CGRectGetHeight(v28), v13 = v26, vabdd_f64(v16, Height) < 0.00000011920929))
      {
        v18 = [(UINavigationController *)self _nestedTopViewController];
        v19 = [v18 navigationItem];
        [(UINavigationController *)self _updateManualScrollEdgeAppearanceProgressForScrollView:v26 navigationItem:v19];

        v13 = v26;
      }
    }

    if (v8 == v13)
    {
      v20 = [(UINavigationController *)self _existingActiveVisibleToolbar];
      [(UINavigationController *)self _updateBackgroundTransitionProgressForScrollView:v26 toolbar:v20];
    }

    v10 = v26;
  }

  v21 = v10;
  if (v6 == v10)
  {
    if (_UISolariumEnabled())
    {
      [(UINavigationBar *)self->_navigationBar _observedScrollViewDidScroll];
    }

    navigationControllerFlags = self->_navigationControllerFlags;
    v21 = v26;
    if ((navigationControllerFlags & 0x400000000000000) != 0)
    {
      [(UINavigationController *)self _updateLayoutForScrollView:v26 topLayoutType:1];
      v21 = v26;
      if ((*(&self->_navigationControllerFlags + 7) & 0x20) == 0)
      {
        goto LABEL_24;
      }

      v23 = [(UINavigationController *)self _nestedTopViewController];
      goto LABEL_23;
    }

    if ((navigationControllerFlags & 0x2000000000000000) == 0 && (navigationControllerFlags & 0x1800000000000000) != 0)
    {
      v23 = [(UINavigationController *)self topViewController];
LABEL_23:
      v24 = v23;
      v25 = [v23 navigationItem];
      [(UINavigationController *)self _updateManualScrollEdgeAppearanceProgressForScrollView:v26 navigationItem:v25];

      v21 = v26;
    }
  }

LABEL_24:
}

- (void)_updateLayoutForScrollView:(id)a3 topLayoutType:(int64_t)a4
{
  v6 = a3;
  if (v6)
  {
    if ((*&self->_navigationControllerFlags & 0x2000000000) == 0)
    {
      v17 = v6;
      isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets = _isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets(self, v6);
      v6 = v17;
      if (isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets)
      {
        v8 = [(UINavigationController *)self topViewController];
        v9 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v8, 1, 1);
        if (v9 == v17)
        {

          v11 = v17;
        }

        else
        {
          v10 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v8, 1, 0);

          v11 = v17;
          if (v10 != v17)
          {
            disappearingViewController = self->_disappearingViewController;
            v13 = [(UINavigationController *)self topViewController];
            v14 = [v13 navigationItem];
            v15 = [v14 _searchControllerIfAllowed];

            if (!disappearingViewController)
            {
              if (!v15 || ![v15 isActive] || (objc_msgSend(v15, "_contentOrObservableScrollViewForEdge:", 1), v16 = objc_claimAutoreleasedReturnValue(), v16, v16 != v17))
              {
                [(UINavigationController *)self _stopObservingContentScrollView:v17];
              }
            }

            goto LABEL_14;
          }
        }

        [(UINavigationController *)self _updateNavigationBarHostedRefreshControlToHostRefreshControlForScrollView:v11];
        [(UINavigationController *)self _updateTopViewFramesToMatchScrollOffsetInViewController:v8 contentScrollView:v17 topLayoutType:a4];
LABEL_14:

        v6 = v17;
      }
    }
  }
}

- (void)_updateManualScrollEdgeAppearanceProgressForScrollView:(id)a3 navigationItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 contentOffset];
  v9 = v8;
  [v7 adjustedContentInset];
  v11 = v10;

  v12 = v9 + v11;
  v13 = 0.0;
  v14 = 0.0;
  if ((*(&self->_navigationControllerFlags + 7) & 0x10) != 0)
  {
    [v6 _autoScrollEdgeTransitionDistance];
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
  v17 = v6;
  v18 = v13;
  v15 = v6;
  [UIView performWithoutAnimation:v16];
}

- (void)_setSuspendToolbarBackgroundUpdating:(BOOL)a3
{
  v3 = 0x4000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xBFFFFFFFFFFFFFFFLL | v3;
}

- (void)_updateBackgroundTransitionProgressForScrollView:(id)a3 toolbar:(id)a4 isNavigationTransitionUpdate:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  p_navigationControllerFlags = &self->_navigationControllerFlags;
  if ((*(&self->_navigationControllerFlags + 8) & 1) != 0 || ([UIApp _isActivating] & 1) == 0 && (-[UINavigationController _window](self, "_window"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "windowScene"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "activationState"), v12, v11, v13 != -1))
  {
    v14 = *p_navigationControllerFlags;
    if ((*p_navigationControllerFlags & 0x4000000000000000) == 0 || v5)
    {
      *(p_navigationControllerFlags + 8) |= 1u;
      if ((v14 & 0x4000000000000000) != 0 && v5)
      {
        *p_navigationControllerFlags = v14 & 0xBFFFFFFFFFFFFFFFLL;
      }

      v25 = 0.0;
      if (_UIBarsGetBottomBarBackgroundTransitionProgressForScrollView(v8, v9, &v25))
      {
        if (!v5)
        {
          goto LABEL_22;
        }

        [v9 _backgroundTransitionProgress];
        if (v15 == v25 || !+[UIView _isInAnimationBlockWithAnimationsEnabled])
        {
          goto LABEL_22;
        }

        if ([v9 isMinibar])
        {
          v16 = [v9 compactScrollEdgeAppearance];
          v17 = v16;
          if (v16)
          {
            v18 = v16;
          }

          else
          {
            v18 = [v9 scrollEdgeAppearance];
          }

          v19 = v18;
        }

        else
        {
          v19 = [v9 scrollEdgeAppearance];
        }

        if (!v19 || (v20 = [v19 _hasTransparentBackground], v19, v20))
        {
          v21 = v25;
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __112__UINavigationController__updateBackgroundTransitionProgressForScrollView_toolbar_isNavigationTransitionUpdate___block_invoke;
          v22[3] = &unk_1E70F32F0;
          v23 = v9;
          v24 = v21;
          _UIBarsTwoPartCrossfadeTransitionProgress(v22, 0, v21);
        }

        else
        {
LABEL_22:
          [v9 _setBackgroundTransitionProgress:v25];
        }
      }
    }
  }
}

- (void)_stopObservingContentScrollView:(id)a3
{
  v4 = a3;
  if ([v4 _isScrollViewScrollObserver:self])
  {
    [(UINavigationController *)self _setInteractiveScrollActive:0];
    [v4 _setTopScrollIndicatorFollowsContentOffset:0];
    [v4 _setVerticalScrollIndicatorUsesAlternativeTopSafeAreaInset:0];
    [v4 _setAlternativeVerticalScrollIndicatorTopSafeAreaInset:0.0];
    [v4 _removeScrollViewScrollObserver:self];
  }
}

- (void)_stopObservingContentScrollViewsForViewController:(id)a3
{
  v4 = a3;
  v5 = [v4 _contentOrObservableScrollViewForEdge:1];
  [(UINavigationController *)self _stopObservingContentScrollView:v5];

  v6 = [v4 _contentOrObservableScrollViewForEdge:4];

  [(UINavigationController *)self _stopObservingContentScrollView:v6];
}

- (void)_observeScrollView:(id)a3 didBeginTransitionToDeferredContentOffset:(CGPoint)a4
{
  if ([(UINavigationController *)self _isPushingOrPoppingUsingLayoutToLayoutNavigationTransition:a3])
  {

    [(UINavigationController *)self _performCoordinatedUpdateTopFramesTransitionAnimation];
  }
}

- (void)_observeScrollViewAlignedContentMarginDidChange:(id)a3
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v5 = __74__UINavigationController__observeScrollViewAlignedContentMarginDidChange___block_invoke;
  v6 = &unk_1E7102B18;
  v7 = self;
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

- (void)_observeScrollViewHasClearedContentOffsetAnimation:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_searchControllerToNotifyWhenScrollingAnimationStops);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_searchControllerToNotifyWhenScrollingAnimationStops);
    [v5 _contentScrollViewDidFinishContentOffsetAnimation];

    objc_storeWeak(&self->_searchControllerToNotifyWhenScrollingAnimationStops, 0);
  }
}

- (BOOL)_navigationItemShouldDeferSearchPresentationOrDismissalForScrollViewAnimation:(id)a3
{
  v4 = a3;
  v5 = [v4 _searchControllerIfAllowed];
  if (v5)
  {
    v6 = [(UINavigationController *)self _nestedTopViewController];
    v7 = [v6 navigationItem];

    if (v7 == v4)
    {
      v9 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v6, 1, 0);
      v10 = v9;
      if (v9 && [v9 isScrollAnimating])
      {
        objc_storeWeak(&self->_searchControllerToNotifyWhenScrollingAnimationStops, v5);
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

- (void)_viewSubtreeDidGainScrollView:(id)a3 enclosingViewController:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(UINavigationController *)self _outermostNavigationController];
  v8 = v7;
  if (v7 == self)
  {
    [(UINavigationController *)self _handleSubtreeDidGainScrollView:v13];
    v9 = [(UIViewController *)self _tabBarControllerEnforcingClass:1];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v12 = [(UIViewController *)self presentingViewController];
      v11 = [v12 _tabBarControllerEnforcingClass:1];
    }

    [v11 _viewSubtreeDidGainScrollView:v13 enclosingViewController:v6];
  }

  else
  {
    [(UINavigationController *)v7 _viewSubtreeDidGainScrollView:v13 enclosingViewController:v6];
  }
}

- (void)_viewControllerSubtreeDidGainViewController:(id)a3
{
  v7 = a3;
  v4 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v7, 1, 0);
  if (v4)
  {
    [(UINavigationController *)self _handleSubtreeDidGainScrollView:v4];
  }

  v5 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v7, 4, 0);
  v6 = v5;
  if (v5 && v5 != v4)
  {
    [(UINavigationController *)self _handleSubtreeDidGainScrollView:v5];
  }
}

- (void)_handleSubtreeDidGainScrollView:(id)a3
{
  v12 = a3;
  v4 = [(UINavigationController *)self topViewController];
  v5 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v4, 1, 0);
  v6 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v4, 4, 0);
  v7 = [v12 window];
  if (v7)
  {

    if (v5 == v12 || v6 == v12)
    {
      if (([v5 _isScrollViewScrollObserver:self] & 1) == 0)
      {
        if (v5 == v12)
        {
          v10 = 1;
        }

        else
        {
          v10 = 4;
        }

        v9 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v4, v10, 1);
        v11 = [v9 _safeAreaInsetsFrozen];
        if (v9 != v5)
        {
          [v9 _setSafeAreaInsetsFrozen:1];
        }

        [(UINavigationController *)self _computeAndApplyScrollContentInsetDeltaForViewController:v4];
        [v9 _setSafeAreaInsetsFrozen:v11 updateForUnfreeze:0];
        goto LABEL_18;
      }

      if (!v6 || v6 == v5 || ([v6 _isScrollViewScrollObserver:self] & 1) != 0)
      {
        if ((*(&self->_navigationControllerFlags + 7) & 0x3C) == 0)
        {
          v8 = [v4 navigationItem];
          [UINavigationController _updateScrollViewObservationFlagsForScrollView:"_updateScrollViewObservationFlagsForScrollView:navigationItem:forEdges:" navigationItem:? forEdges:?];

          if (v6)
          {
            if (v6 != v12)
            {
              v9 = [v4 navigationItem];
              [(UINavigationController *)self _updateScrollViewObservationFlagsForScrollView:v6 navigationItem:v9 forEdges:4];
LABEL_18:
            }
          }
        }
      }

      else
      {
        [(UINavigationController *)self _updateAndObserveScrollView:v6 viewController:v4 forEdges:4];
      }
    }
  }
}

- (void)_setInteractiveScrollActive:(BOOL)a3
{
  if (self->_interactiveScrollActive != a3)
  {
    self->_interactiveScrollActive = a3;
    if (a3)
    {
      [(UINavigationController *)self _reloadCachedInteractiveScrollMeasurements];
    }
  }
}

- (void)_immediatelyFinishNavigationBarTransition
{
  v3 = [(UINavigationController *)self _outermostNavigationController];
  v4 = v3;
  if (v3 == self)
  {
    v5 = [(UINavigationController *)self navigationBar];
    v6 = [v5 _immediatelyFinishRunningTransition];

    v7 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionCoordinator];

    if (v7)
    {
      v8 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionCoordinator];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __67__UINavigationController__immediatelyFinishNavigationBarTransition__block_invoke;
      v9[3] = &unk_1E70F3770;
      v10 = v6;
      [v8 animateAlongsideTransition:0 completion:v9];
    }

    else
    {
      v6[2](v6);
    }
  }

  else
  {
    [(UINavigationController *)v3 _immediatelyFinishNavigationBarTransition];
  }
}

- (void)_reloadCachedInteractiveScrollMeasurements
{
  if (self->_interactiveScrollActive)
  {
    self->_interactiveScrollActive = 0;
    p_interactiveScrollNavBarIntrinsicHeightRange = &self->_interactiveScrollNavBarIntrinsicHeightRange;
    v4 = [(UINavigationController *)self _nestedTopViewController];
    v5 = [v4 navigationItem];
    [(UINavigationController *)self _intrinsicNavigationBarHeightRangeForNavItem:v5];
    p_interactiveScrollNavBarIntrinsicHeightRange->minimum = v6;
    p_interactiveScrollNavBarIntrinsicHeightRange->preferred = v7;
    p_interactiveScrollNavBarIntrinsicHeightRange->maximum = v8;

    self->_interactiveScrollActive = 1;
  }
}

- (void)_scrollViewManagerDidFinishScrolling:(id)a3
{
  scrollViewManager = self->_scrollViewManager;
  self->_scrollViewManager = 0;

  [(UIViewController *)self setNeedsFocusUpdate];

  [(UIViewController *)self updateFocusIfNeeded];
}

- (void)_updateNavigationBarHostedRefreshControlToHostRefreshControlForScrollView:(id)a3
{
  v9 = a3;
  if (![(UINavigationController *)self _shouldSkipHostedRefreshControlUpdateSchedulingDeferredUpdateIfNecessary])
  {
    v4 = [(UINavigationController *)self navigationBar];
    v5 = [v4 refreshControlHost];

    v6 = v5;
    v7 = v6;
    if (![(_UINavigationControllerRefreshControlHost *)v6 isHostingRefreshControlOwnedByScrollView:v9])
    {
      if ([(UINavigationController *)self _canHostRefreshControlOwnedByScrollView:v9])
      {
        v7 = [[_UINavigationControllerRefreshControlHost alloc] initWithNavigationController:self scrollView:v9];
      }

      else
      {
        v7 = 0;
      }
    }

    v8 = [(UINavigationController *)self navigationBar];
    [v8 setRefreshControlHost:v7];
  }
}

- (BOOL)_canHostRefreshControlOwnedByScrollView:(id)a3
{
  v7 = (!_isNestedNavigationControllerFullyInstalledIntoContainingNavigationController(self) || (-[UINavigationController _outermostNavigationController](self, "_outermostNavigationController"), v5 = v4 = a3;

  return v7;
}

- (void)_setUpHostedRefreshControlForScrollView:(id)a3
{
  v7 = a3;
  v4 = [(UINavigationController *)self topViewController];
  v5 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v4, 1, 0);

  v6 = v7;
  if (v5 == v7)
  {
    [(UINavigationController *)self _updateNavigationBarHostedRefreshControlToHostRefreshControlForScrollView:v7];
    v6 = v7;
  }
}

- (void)_layoutViewController:(id)a3
{
  v53 = a3;
  [v53 loadViewIfRequired];
  v4 = [objc_opt_class() _directlySetsContentOverlayInsetsForChildren];
  v5 = v53;
  if ((v4 & 1) == 0)
  {
    [(UIViewController *)self _updateContentOverlayInsetsFromParentIfNecessary];
    [v53 _updateContentOverlayInsetsForSelfAndChildren];
    v6 = [(UINavigationController *)self topViewController];

    v5 = v53;
    if (v6 == v53)
    {
      v7 = [(UINavigationController *)self topViewController];
      v8 = [v7 navigationItem];

      v9 = [(UINavigationController *)self _effectiveSearchControllerForSearchBarGivenTopNavigationItem:v8];
      v10 = v9;
      if (v9 && [v9 isActive])
      {
        [v10 _updateContentOverlayInsetsForSelfAndChildren];
      }

      v5 = v53;
    }
  }

  v11 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v5, 1, 0);
  [(UINavigationController *)self _updateNavigationBarHostedRefreshControlToHostRefreshControlForScrollView:v11];

  [(UINavigationController *)self _computeAndApplyScrollContentInsetDeltaForViewController:v53];
  v12 = [v53 view];
  v13 = [v12 superview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v53 view];
    v15 = [(UINavigationController *)self navigationTransitionView];
    v16 = [v14 isDescendantOfView:v15];

    v17 = v53;
    if (!v16)
    {
      goto LABEL_23;
    }

    [(UINavigationController *)self _frameForViewController:v53];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    [(UINavigationController *)self _frameForWrapperViewForViewController:v53];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = [v53 view];
    v35 = [v34 superview];
    [v35 frame];
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
      v41 = [v53 view];
      v42 = [v41 superview];
      [v42 setFrame:{v27, v29, v31, v33}];
    }

    v43 = [v53 view];
    [v43 frame];
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
      v50 = [v53 view];
      [v50 setFrame:{v19, v21, v23, v25}];

      v49 = 1;
    }

    if (![(UINavigationController *)self isToolbarHidden])
    {
      [(UINavigationController *)self _positionToolbarHidden:0];
    }

    v17 = v53;
    if ((v49 & 1) == 0)
    {
      v51 = [v53 _topBarInsetGuideConstraint];
      if (v51)
      {

        v17 = v53;
      }

      else
      {
        v52 = [v53 _bottomBarInsetGuideConstraint];

        v17 = v53;
        if (!v52)
        {
          goto LABEL_23;
        }
      }
    }

    v12 = [v17 view];
    [v12 layoutIfNeeded];
  }

  else
  {
  }

  v17 = v53;
LABEL_23:
}

- (void)_updateScrollViewFromViewController:(id)a3 toViewController:(id)a4
{
  v29 = a3;
  v6 = a4;
  [(UINavigationController *)self _ensureToViewControllersViewIsLoaded:v6];
  v7 = [v29 _contentOrObservableScrollViewForEdge:1];
  v8 = v7;
  if (v7)
  {
    containerView = self->_containerView;
    [v7 center];
    v11 = v10;
    v13 = v12;
    v14 = [v8 superview];
    [(UIView *)containerView convertPoint:v14 fromView:v11, v13];
    v16 = v15;
  }

  else
  {
    v16 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v17 = [v6 _contentOrObservableScrollViewForEdge:1];
  if (v17 == v8 || dyld_program_sdk_at_least() && ([v6 view], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "window"), v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v19))
  {
    *&self->_navigationControllerFlags |= 0x2000000000uLL;
  }

  [(UINavigationController *)self _layoutViewController:v6];
  *&self->_navigationControllerFlags &= ~0x2000000000uLL;
  if (v8)
  {
    v20 = self->_containerView;
    [v8 center];
    v22 = v21;
    v24 = v23;
    v25 = [v8 superview];
    [(UIView *)v20 convertPoint:v25 fromView:v22, v24];
    v27 = v26;

    [v29 _setNavigationControllerContentOffsetAdjustment:v27 - v16 + v27 - v16];
  }

  v28 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v6, 1, 0);
  [(UINavigationController *)self _updateNavigationBarHostedRefreshControlToHostRefreshControlForScrollView:v28];
}

- (void)_notifyTransitionBegan:(id)a3
{
  v4 = [a3 toViewController];
  [v4 _prepareForContainerTransition:self];
}

- (id)valueForUndefinedKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"__cachedTransitionController"])
  {
    UIKVCAccessProhibited(v4, @"UINavigationController");

    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UINavigationController;
    v5 = [(UINavigationController *)&v7 valueForUndefinedKey:v4];
  }

  return v5;
}

- (void)_setCachedTransitionController:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_UINavigationControllerVisualStyle *)self->_visualStyle setTransitionController:v4];
  }
}

- (void)_setCachedInteractionController:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_UINavigationControllerVisualStyle *)self->_visualStyle setInteractionController:v4];
  }
}

- (id)_createBuiltInTransitionControllerForOperation:(int64_t)a3
{
  [(_UINavigationControllerVisualStyle *)self->_visualStyle updateTransitionControllerWithOperation:a3];
  visualStyle = self->_visualStyle;

  return [(_UINavigationControllerVisualStyle *)visualStyle transitionController];
}

- (id)_customTransitionController:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionController];

  if (v5)
  {
    v6 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor transitionController];
    goto LABEL_56;
  }

  v7 = [(UINavigationController *)self disappearingViewController];
  v8 = [(UINavigationController *)self topViewController];
  v9 = [v7 view];
  v61 = [v9 superview];

  v10 = [(UINavigationController *)self lastOperation];
  [(UINavigationController *)self _setUsingBuiltinAnimator:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (v10 == 1)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11;
  if ([(UINavigationController *)self _wantsTabCrossFadeTransition]&& ([(UIViewController *)self traitCollection], v13 = objc_claimAutoreleasedReturnValue(), v14 = [_UITabCrossFadeTransition isSupportedForTraits:v13], v13, v14))
  {
    v15 = [_UITabCrossFadeTransition alloc];
    v16 = [(UIViewController *)self view];
    v17 = [v16 backgroundColor];
    v6 = [(_UITabCrossFadeTransition *)v15 initWithBackgroundColor:v17];
  }

  else
  {
    v6 = 0;
  }

  v18 = [v12 preferredTransition];
  v19 = v18;
  if (v6 || !v18)
  {
    if (v6)
    {
      goto LABEL_21;
    }

    if ([(UINavigationController *)self _shouldIgnoreDelegateTransitionController])
    {
LABEL_15:
      v6 = 0;
      goto LABEL_21;
    }

    navigationControllerFlags = self->_navigationControllerFlags;
    if ((navigationControllerFlags & 0x400000) != 0)
    {
      v22 = [WeakRetained navigationController:self animationControllerForOperation:v10 fromViewController:v7 toViewController:v8];
    }

    else
    {
      if ((navigationControllerFlags & 0x800000) == 0)
      {
        goto LABEL_15;
      }

      v22 = [WeakRetained navigationController:self animatorForOperation:v10 fromViewController:v7 toViewController:v8];
    }

    v6 = v22;
    goto LABEL_21;
  }

  v20 = [(UIViewController *)self traitCollection];
  v6 = [v19 _transitionControllerForViewController:v12 traits:v20 isAppearing:v10 == 1];

LABEL_21:
  if (![(UINavigationController *)self isInteractiveTransition])
  {
    v23 = _AXSReduceMotionReduceSlideTransitionsEnabled();
    if (!v6)
    {
      if (v23)
      {
        v6 = objc_alloc_init(_UINavigationCrossfadeAnimator);
      }
    }
  }

  if (v6)
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

  if (v10 == 1)
  {
    if ([v8 _usesSharedView])
    {
      v25 = [v8 _uiCollectionView];
      if (v25)
      {
        v26 = v25;
        v27 = [v8 _uiCollectionView];
        [v7 _uiCollectionView];
        v28 = v59 = v24;

        if (v27 == v28)
        {
          if (!v59 || ([v59 transitionForOperation:1 fromViewController:v7 toViewController:v8], (v29 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v30 = v8;
            v31 = 1;
            goto LABEL_44;
          }

          goto LABEL_42;
        }
      }
    }
  }

  else if (v10 == 2)
  {
    if ([v7 _usesSharedView])
    {
      v32 = [v8 _uiCollectionView];
      if (v32)
      {
        v33 = v32;
        v34 = [v8 _uiCollectionView];
        [v7 _uiCollectionView];
        v35 = v60 = v24;

        if (v34 == v35)
        {
          if (!v60 || ([v60 transitionForOperation:2 fromViewController:v7 toViewController:v8], (v29 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v30 = v7;
            v31 = 2;
LABEL_44:
            v6 = [v30 _animatorForOperation:v31 fromViewController:v7 toViewController:v8];
            if (v6)
            {
              goto LABEL_47;
            }

            goto LABEL_45;
          }

LABEL_42:
          v6 = v29;
          goto LABEL_47;
        }
      }
    }
  }

LABEL_45:
  v6 = [(UINavigationController *)self _createBuiltInTransitionControllerForOperation:*&self->_navigationControllerFlags >> 4];
  [(UINavigationController *)self _setCachedTransitionController:v6];
  if (!v6)
  {
    [(UINavigationController *)self _setUsingBuiltinAnimator:1];
    goto LABEL_48;
  }

  *&self->_navigationControllerFlags |= 0x40000uLL;
  [(UINavigationController *)self _setUsingBuiltinAnimator:1];
LABEL_47:
  v36 = [_UIViewControllerTransitionContext _associatedTransitionContextForAnimationController:v6];

  if (!v36)
  {
    v38 = objc_alloc_init(_UIViewControllerOneToOneTransitionContext);
    v39 = [v7 view];
    [v39 frame];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;

    [(_UIViewControllerTransitionContext *)v38 _setIsAnimated:v3];
    [(_UIViewControllerOneToOneTransitionContext *)v38 _setFromViewController:v7];
    [(_UIViewControllerOneToOneTransitionContext *)v38 _setToViewController:v8];
    v37 = v61;
    [(_UIViewControllerTransitionContext *)v38 _setContainerView:v61];
    [(_UIViewControllerOneToOneTransitionContext *)v38 _setFromStartFrame:v41, v43, v45, v47];
    [(_UIViewControllerOneToOneTransitionContext *)v38 _setToEndFrame:v41, v43, v45, v47];
    v48 = *MEMORY[0x1E695F058];
    v49 = *(MEMORY[0x1E695F058] + 8);
    v50 = *(MEMORY[0x1E695F058] + 16);
    v51 = *(MEMORY[0x1E695F058] + 24);
    [(_UIViewControllerOneToOneTransitionContext *)v38 _setToStartFrame:*MEMORY[0x1E695F058], v49, v50, v51];
    [(_UIViewControllerOneToOneTransitionContext *)v38 _setFromEndFrame:v48, v49, v50, v51];
    [(_UIViewControllerTransitionContext *)v38 _setAnimator:v6];
    if ([(UINavigationController *)self _isUsingBuiltinAnimator])
    {
      [(_UIViewControllerTransitionContext *)v38 _setCompletionCurve:7];
    }

    v52 = [v8 childModalViewController];
    if (v52)
    {
      v53 = v52;
      v54 = [v8 view];
      v55 = [v54 superview];

      if (v55)
      {
        v56 = [v8 view];
        v57 = [v56 superview];
        [(_UIViewControllerOneToOneTransitionContext *)v38 _setToView:v57];
      }
    }

    goto LABEL_55;
  }

LABEL_48:
  v37 = v61;
LABEL_55:

LABEL_56:

  return v6;
}

- (id)_showcaseView
{
  v2 = [(UINavigationController *)self topViewController];
  v3 = [v2 _showcaseView];

  return v3;
}

- (void)_layoutContainerViewDidMoveToWindow:(id)a3
{
  v4.receiver = self;
  v4.super_class = UINavigationController;
  [(UIViewController *)&v4 _layoutContainerViewDidMoveToWindow:a3];
  [(UINavigationController *)self _setupBackGestureRecognizer];
}

- (void)_layoutContainerViewSemanticContentAttributeChanged:(id)a3
{
  if (self->_containerView == a3)
  {
    [(_UINavigationControllerVisualStyle *)self->_visualStyle layoutContainerViewSemanticContentAttributeChanged:?];
  }
}

- (id)_customInteractionController:(id)a3
{
  v4 = a3;
  v5 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor interactiveTransitionController];

  if (v5)
  {
    v6 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor interactiveTransitionController];
    goto LABEL_29;
  }

  v7 = [v4 _animator];
  v8 = [(_UINavigationControllerVisualStyle *)self->_visualStyle transitionController];

  if (v8 == v7)
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
      v9 = [WeakRetained navigationController:self interactionControllerForAnimationController:v7];
      if (v9)
      {
        goto LABEL_13;
      }

      navigationControllerFlags = self->_navigationControllerFlags;
    }

    if ((navigationControllerFlags & 0x2000000) != 0)
    {
      v9 = [v11 navigationController:self interactionControllerUsingAnimator:v7];
    }

    else
    {
      v9 = 0;
    }

LABEL_13:

    if (v9)
    {
      goto LABEL_6;
    }

LABEL_14:
    v13 = [(UIViewController *)self traitCollection];
    if ([UIView _interruptibleParallaxTransitionsEnabledWithTraitCollection:v13])
    {
      v14 = [(UINavigationController *)self _isUsingBuiltinAnimator];

      if (v14)
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
      v9 = 0;
      goto LABEL_28;
    }

LABEL_19:
    if ([(UINavigationController *)self _shouldUseBuiltinInteractionController]|| ([(_UINavigationControllerVisualStyle *)self->_visualStyle transitionController], v15 = objc_claimAutoreleasedReturnValue(), v15, v7 == v15))
    {
      v16 = [(_UINavigationControllerVisualStyle *)self->_visualStyle interactionController];
      if (v16)
      {
        [v4 _setInteractor:v16];
        v9 = v16;
        if (objc_opt_respondsToSelector())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v9 setAnimationController:v7];
          }
        }
      }

      else
      {
        v9 = [(UINavigationController *)self _createBuiltInInteractionControllerForAnimationController:v7];
      }

      goto LABEL_28;
    }

    goto LABEL_21;
  }

  v9 = [v7 _interactionController];
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_6:
  [v4 _setInteractor:v9];
LABEL_28:
  v6 = v9;

LABEL_29:

  return v6;
}

- (void)_executeNavigationHandler:(id)a3 deferred:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  v6 = [(UINavigationController *)self _updateNavigationBarHandler];

  if (v4)
  {
    if (v6)
    {
      v7 = [(UINavigationController *)self _updateNavigationBarHandler];
      v7[2]();
    }

    [(UINavigationController *)self _setUpdateNavigationBarHandler:v11];
    goto LABEL_10;
  }

  if (v6)
  {
    v8 = [(UINavigationController *)self _updateNavigationBarHandler];
    v8[2]();
    [(UINavigationController *)self _setUpdateNavigationBarHandler:v11];

LABEL_10:
    v9 = v11;
    goto LABEL_11;
  }

  v9 = v11;
  if (self->_navigationBar || ([(UIViewController *)self _existingView], v10 = objc_claimAutoreleasedReturnValue(), v10, v9 = v11, v10))
  {
    v9[2](v9);
    goto LABEL_10;
  }

LABEL_11:
}

- (id)separateSecondaryViewControllerForSplitViewController:(id)a3
{
  v3 = [(UINavigationController *)self _separateViewControllersAfterAndIncludingViewController:0 forSplitViewController:a3];
  v4 = [v3 firstObject];

  return v4;
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

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (sel_showViewController_sender_ == a3 && (*(&self->_navigationControllerFlags + 6) & 0x10) != 0)
  {
    v8 = 0;
    goto LABEL_15;
  }

  if (sel__performBackKeyCommand_ != a3 || ![v6 isEqual:self->_backKeyCommand])
  {
    if (sel_rename_ == a3)
    {
      v9 = [(UINavigationController *)self _canPerformRename:v7];
    }

    else if (sel_runToolbarCustomizationPalette_ == a3)
    {
      v9 = [(UINavigationController *)self _canPerformCustomizeBarActionWithSender:v7];
    }

    else
    {
      v11.receiver = self;
      v11.super_class = UINavigationController;
      v9 = [(UIViewController *)&v11 canPerformAction:a3 withSender:v7];
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

- (void)_prepareForNestedDisplayWithNavigationController:(id)a3
{
  obj = a3;
  v4 = [(UINavigationController *)self viewControllers];
  v5 = [v4 count];

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
  v9 = [obj isToolbarHidden];
  v10 = obj[161];
  if (v9)
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

- (void)_detachTopPaletteIfShowingSearchBarForTopmostViewControllerInNavigationController:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UINavigationControllerPalette *)self->_topPalette navController];

  if (v5 != v4 && (*__UILogGetCategoryCachedImpl("", &qword_1ED497970) & 1) != 0)
  {
    if (v4 == self)
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
      v10 = [(_UINavigationControllerPalette *)topPalette navController];
      v17 = 138412802;
      v18 = topPalette;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = self;
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
      v10 = [(_UINavigationControllerPalette *)v8 navController];
      v17 = 138413058;
      v18 = v8;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = self;
      v23 = 2112;
      v24 = v4;
      v11 = "Palette %@ belongs to nav controller %@, which is neither outer (%@) or inner (%@) nav controller";
      v12 = v9;
      v13 = 42;
    }

    _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, v11, &v17, v13);
  }

LABEL_3:
}

- (void)_noteNestedNavigationControllerDidReturnToNormal:(id)a3
{
  v6 = a3;
  v4 = [v6 _topViewControllerObservableScrollViewForEdge:1];
  [(UINavigationController *)self _stopObservingContentScrollView:v4];

  v5 = [v6 _topViewControllerObservableScrollViewForEdge:4];
  [(UINavigationController *)self _stopObservingContentScrollView:v5];

  [(UINavigationController *)self _detachTopPaletteIfShowingSearchBarForTopmostViewControllerInNavigationController:v6];
}

- (void)_prepareForNormalDisplayWithNavigationController:(id)a3
{
  v9 = a3;
  if ([(UINavigationController *)self _isNestedNavigationController])
  {
    objc_storeWeak(&self->_parentNavigationController, 0);
    v4 = [(UINavigationController *)self navigationBar];
    [v4 _redisplayItems];

    [v9 _noteNestedNavigationControllerDidReturnToNormal:self];
    [(UINavigationController *)self _setTemporaryWindowLocator:v9];
    [(UINavigationController *)self _setIsNestedNavigationController:0];
    navigationControllerFlags = self->_navigationControllerFlags;
    if ((navigationControllerFlags & 0x1100000000000) == 0x100000000000)
    {
      [(UINavigationController *)self setNavigationBarHidden:0 animated:0];
      navigationControllerFlags = self->_navigationControllerFlags;
    }

    *&self->_navigationControllerFlags = navigationControllerFlags & 0xFFFFEFFFFFFFFFFFLL;
    v6 = v9;
    v7 = v9[161];
    if ((v7 & 0x200000000000) != 0)
    {
      [v9 setToolbarHidden:0];
      v6 = v9;
      v7 = v9[161];
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
      v11 = [v9 callStackSymbols];
      *buf = 138413058;
      v16 = self;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "-pushViewController:animated: sent to %@ passing %@, animated = %@,\n%@", buf, 0x2Au);
    }
  }

  v12 = [(UINavigationController *)self _effectiveTransitionForTransition:v4];
  if ([(UIViewController *)v6 useLayoutToLayoutNavigationTransitions])
  {
    v13 = [(UINavigationController *)self topViewController];
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

- (BOOL)_sanityCheckPushViewController:(id)a3 transition:(int)a4 forceImmediate:(BOOL)a5
{
  v5 = a5;
  v83 = *MEMORY[0x1E69E9840];
  v62 = a3;
  if (qword_1ED497A18 != -1)
  {
    dispatch_once(&qword_1ED497A18, &__block_literal_global_1823);
  }

  if (byte_1ED49790C == 1)
  {
    v8 = *(__UILogGetCategoryCachedImpl("NavigationControllerVerboseLoggingForStrictRepeatedPushAssertion", &qword_1ED497990) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      if (v5)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      v10 = MEMORY[0x1E696AF00];
      v11 = v8;
      v12 = [v10 callStackSymbols];
      *buf = 138413314;
      v74 = self;
      v75 = 2112;
      v76 = v62;
      v77 = 2048;
      v78 = a4;
      v79 = 2112;
      v80 = v9;
      v81 = 2112;
      v82 = v12;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "-pushViewController:transition:forceImmediate: sent to %@ passing %@, transition=%lu, forceImmediate=%@\n%@", buf, 0x34u);
    }
  }

  if (!v62)
  {
    NSLog(&cfstr_ApplicationTri.isa, self);
    goto LABEL_29;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self && (*(&self->_navigationControllerFlags + 5) & 8) != 0)
  {
    v61 = [(UIViewController *)self mutableChildViewControllers];
    v13 = [v62 _isNavigationController];
    if ([v61 containsObject:v62])
    {
      v14 = MEMORY[0x1E696AEC0];
      v15 = _UIMainBundleIdentifier();
      v16 = [v14 stringWithFormat:@"%@ is pushing the same view controller instance (%@) more than once which is not supported and is most likely an error in the application : %@", self, v62, v15];

      if (v16)
      {
        goto LABEL_16;
      }
    }

    else if (v13)
    {
      if (![(UINavigationController *)self _allowNestedNavigationControllers])
      {
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Pushing a navigation controller is not supported"];
        if (v16)
        {
LABEL_16:
          v17 = [(UIViewController *)self _splitViewControllerEnforcingClass:1];
          v60 = [v17 _panelImpl];
          if (!v60)
          {
            goto LABEL_83;
          }

          v18 = v62;
          v19 = v17;
          v20 = 0;
          if (!self || !v19)
          {
LABEL_37:
            v55 = v20;
            v59 = v19;

            v58 = [v60 currentState];
            v26 = [v58 _collapsedState];
            if (v26 == 1)
            {
              v27 = @"collapsing";
            }

            else if (v26 == 2)
            {
              v27 = @"collapsed";
            }

            else
            {
              v27 = @"expanding";
              if (!v26)
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
              v74 = v57;
              v75 = 2112;
              v76 = v59;
              _os_log_impl(&dword_188A29000, v28, OS_LOG_TYPE_DEFAULT, "Incorrect push in %@ UISplitViewController, %@", buf, 0x16u);
            }

            v29 = *(__UILogGetCategoryCachedImpl("UINavigationController_in_UISplitViewController", &qword_1ED4979A0) + 8);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v74 = v18;
              _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_DEFAULT, "Rejecting %@", buf, 0xCu);
            }

            v30 = [v59 _printHierarchy];
            v31 = [v30 componentsSeparatedByString:@"\n"];

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
                    v74 = v36;
                    _os_log_impl(&dword_188A29000, v37, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
                  }
                }

                v33 = [v32 countByEnumeratingWithState:&v67 objects:v72 count:16];
              }

              while (v33);
            }

            if ([v60 style])
            {
              v54 = v32;
              v38 = [v60 valueForKey:@"_perColumnViewControllers"];
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
                      v74 = v45;
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
                v50 = [v60 valueForKey:@"panelController"];
                v51 = [v50 valueForKey:@"_internalState"];
                *buf = 138412290;
                v74 = v51;
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
                  v74 = v56;
                  _os_log_fault_impl(&dword_188A29000, v52, OS_LOG_TYPE_FAULT, "Ignoring push instead of throwing exception per UINavigationControllerRelaxRepeatedPushAssertionForSplitViewController default: %@", buf, 0xCu);
                }
              }

              else
              {
                v47 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4979D0) + 8);
                if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v74 = v56;
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
              v22 = [(UINavigationController *)self topViewController];
              v23 = v22;
              if (v22 == v18)
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

- (void)pushViewController:(id)a3 transition:(int)a4 forceImmediate:(BOOL)a5
{
  v5 = a5;
  v6 = *&a4;
  v8 = a3;
  if ([(UINavigationController *)self _sanityCheckPushViewController:v8 transition:v6 forceImmediate:v5])
  {
    v9 = [(UIViewController *)self view];
    v10 = [v9 window];

    navigationControllerFlags = self->_navigationControllerFlags;
    v24 = [(UIViewController *)self mutableChildViewControllers];
    v12 = [v24 lastObject];
    if (v10)
    {
      v13 = 1;
    }

    else
    {
      v13 = v5;
    }

    if ((navigationControllerFlags & 4) == 0 && v13)
    {
      v14 = [(UINavigationController *)self disappearingViewController];
      if (v14)
      {
      }

      else if (![(UINavigationController *)self needsDeferredTransition])
      {
        [(UINavigationController *)self setDisappearingViewController:v12];
      }
    }

    v23 = v12;
    if (v10)
    {
      v15 = [(UINavigationController *)self disappearingViewController];

      LOBYTE(v10) = 0;
      v16 = 0;
      v17 = 0;
      if (v6 && v15)
      {
        v16 = [(UINavigationController *)self _isAppearingOrAppearedCheck];
        LOBYTE(v10) = v16;
        if (v16)
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
      v16 = 0;
      v17 = 0;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__UINavigationController_pushViewController_transition_forceImmediate___block_invoke;
    aBlock[3] = &unk_1E70F45F8;
    v18 = v8;
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
      v27 = v10;
    }

    v22 = _Block_copy(v21);
    [(UINavigationController *)self _applyViewControllers:v19 transition:v17 animated:v16 operation:1 rescheduleBlock:v22];
    if (v16)
    {
      [(UINavigationController *)self _playPushNavigationSound];
    }

    if ((v20 & 1) == 0)
    {
    }
  }
}

- (id)_nthChildViewControllerFromTop:(unint64_t)a3
{
  v4 = [(UIViewController *)self mutableChildViewControllers];
  v5 = [v4 count];
  if (v5 <= a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v4 objectAtIndex:v5 + ~a3];
  }

  return v6;
}

- (id)_findViewControllerToPopTo
{
  v3 = [(UIViewController *)self mutableChildViewControllers];
  v4 = [(UINavigationController *)self disappearingViewController];
  v5 = [v3 lastObject];
  v6 = v5 == v4;

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

- (void)_updateBottomBarHiddenStateFromOtherNavigationController:(id)a3
{
  if (a3)
  {
    *&self->_navigationControllerFlags |= *(a3 + 161) & 0x400;
  }
}

- (void)_hideOrShowBottomBarIfNeededWithTransition:(int)a3
{
  v3 = *&a3;
  v5 = [(UINavigationController *)self _shouldBottomBarBeHidden];
  navigationControllerFlags = self->_navigationControllerFlags;
  v7 = [(UINavigationController *)self _shouldCrossFadeBottomBars];
  v8 = [(UIViewController *)self viewIfLoaded];
  v9 = [v8 _shouldReverseLayoutDirection];

  v10 = self->_navigationControllerFlags;
  if (v5)
  {
    if ((v10 & 0xC00) != 0)
    {
      return;
    }

    if (v3)
    {
      v11 = [(UINavigationController *)self disappearingViewController];
      v12 = [v11 view];

      if ((navigationControllerFlags & 0x20000) != 0)
      {
        v13 = v12;
      }

      else
      {
        v13 = [UIViewControllerWrapperView existingWrapperViewForView:v12];
      }

      v33 = v13;
      v23 = [v13 autoresizingMask];
      [v33 setAutoresizingMask:{objc_msgSend(v33, "autoresizingMask") & 0xFFFFFFFFFFFFFFEFLL}];
    }

    else
    {
      v23 = 0;
      v33 = 0;
    }

    v24 = [(UIViewController *)self tabBarController];
    v25 = [v24 _selectedViewControllerInTabBar];

    if (v25 == self)
    {
      if (v7)
      {
        v32 = 6;
      }

      else
      {
        v32 = v3;
      }

      [v24 _hideBarWithTransition:v32 isExplicit:0 reason:2];
      v30 = self->_navigationControllerFlags;
      *&self->_navigationControllerFlags = v30 | 0x400;
      if (!v7)
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
        [v33 setAutoresizingMask:v23];

        goto LABEL_48;
      }

      v26 = 15;
      v27 = 8;
      if (v9)
      {
        v27 = 2;
      }

      v28 = 2;
      if (v9)
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

  v33 = [(UIViewController *)self tabBarController];
  v14 = [v33 _selectedViewControllerInTabBar];

  if (v14 == self)
  {
    if (v7)
    {
      v20 = 6;
    }

    else
    {
      v20 = v3;
    }

    [v33 _showBarWithTransition:v20 isExplicit:1 reason:2];
    v21 = *&self->_navigationControllerFlags & 0xFFFFFFFFFFFFFBFFLL;
    *&self->_navigationControllerFlags = v21;
    if (!v7)
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
      v22 = v33;
      goto LABEL_49;
    }

    v15 = 15;
    v16 = 2;
    if (v9)
    {
      v16 = 8;
    }

    v17 = 8;
    if (v9)
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

  v22 = v33;
  *&self->_navigationControllerFlags = v19;
LABEL_49:
}

- (void)_tabBarControllerDidFinishShowingTabBar:(id)a3 isHidden:(BOOL)a4
{
  if (a4)
  {
    v5 = [(UINavigationController *)self _didExplicitlyHideTabBar];
    v6 = 1024;
    if (v5)
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFFFFFE7FFFFFBFFLL | v6;
  v7 = [(UINavigationController *)self topViewController];
  [(UINavigationController *)self _computeAndApplyScrollContentInsetDeltaForViewController:v7];

  [(UINavigationController *)self _layoutTopViewController];
}

- (void)_setAllowsInteractivePopWhenNavigationBarHidden:(BOOL)a3
{
  if (a3)
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

- (id)_popViewControllerWithTransition:(int)a3 allowPoppingLast:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v7 = [(UINavigationController *)self viewControllers];
  v8 = [v7 count];

  v9 = v8 == 1 && v4;
  if (v8 > 1 || v9)
  {
    v11 = [(UINavigationController *)self _effectiveTransitionForTransition:v5];
    v10 = [(UINavigationController *)self topViewController];
    v12 = v10;
    v13 = [(UIViewController *)self view];
    v14 = [v13 window];
    v15 = v14 != 0;

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
      v18 = [(UIViewController *)self _keyboardSceneDelegate];
      v19 = [v18 responder];
      v20 = [v10 _shouldAttemptToPreserveInputViewsForResponder:v19];

      if (v20)
      {
        v21 = [MEMORY[0x1E696B098] valueWithPointer:v10];
        [v18 _preserveInputViewsWithId:v21];
      }
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __76__UINavigationController__popViewControllerWithTransition_allowPoppingLast___block_invoke;
    v24[3] = &__block_descriptor_41_e26___NSArray_16__0__NSArray_8l;
    v24[4] = v8;
    v25 = v4;
    v22 = _Block_copy(v24);
    [(UINavigationController *)self _applyViewControllers:v22 transition:v11 animated:v17 operation:2 rescheduleBlock:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
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

- (id)popViewControllerWithAnimationTransition:(int64_t)a3 duration:(double)a4 curve:(int64_t)a5
{
  v7 = (a5 << 16) | (a3 << 20);
  v8 = [(UINavigationController *)self navigationTransitionView];
  [UIView transitionWithView:v8 duration:v7 options:0 animations:0 completion:a4];

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

- (id)popToRootViewControllerWithTransition:(int)a3
{
  v3 = *&a3;
  v5 = [(UIViewController *)self mutableChildViewControllers];
  if ([v5 count] < 2)
  {
    v7 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndex:0];
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

- (id)popToViewController:(id)a3 transition:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__51;
  v22 = __Block_byref_object_dispose__51;
  v23 = 0;
  v7 = [(UINavigationController *)self topViewController];

  if (v7 != v6)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __57__UINavigationController_popToViewController_transition___block_invoke;
    v15 = &unk_1E7102B88;
    v16 = v6;
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

- (id)popToViewControllerWithSnapbackIdentifier:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UIViewController *)self mutableChildViewControllers];
  v8 = [v7 count];
  v9 = v8 - 2;
  if (v8 < 2)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v10 = [v7 objectAtIndex:v9];
    if ([v10 canHandleSnapbackIdentifier:v6 animated:v4])
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
    v11 = [(UINavigationController *)self popToViewController:v10 animated:v4];
  }

  else
  {
LABEL_7:
    v11 = [MEMORY[0x1E695DEC8] array];
  }

  return v11;
}

- (void)_presentationTransitionWrapViewController:(id)a3 forTransitionContext:(id)a4
{
  v24 = a3;
  v5 = a4;
  v6 = [v24 childModalViewController];

  if (v6)
  {
    v7 = [v24 view];
    v8 = [UIViewControllerWrapperView existingWrapperViewForView:v7];

    if (!v8)
    {
      v9 = [v24 view];
      v10 = [v9 superview];

      v11 = [v24 view];
      [v10 bounds];
      v8 = [(UIViewControllerWrapperView *)v12 wrapperViewForView:v13 frame:v14, v15, UIViewControllerWrapperView, v11];

      [v8 setAutoresizingMask:18];
      v16 = [v24 view];
      [v10 insertSubview:v8 belowSubview:v16];

      v17 = [v24 view];
      [v8 addSubview:v17];
    }

    v18 = [_UINavigationPresentationWrapperView alloc];
    [v8 bounds];
    v19 = [(UIView *)v18 initWithFrame:?];
    [(UIView *)v19 setAutoresizingMask:18];
    [v8 insertSubview:v19 atIndex:0];
    v20 = [v24 view];
    [(UIView *)v19 addSubview:v20];

    v21 = [v24 presentedViewController];
    v22 = [v21 presentationController];
    v23 = [v22 containerView];
    [(UIView *)v19 addSubview:v23];

    [v5 _setFromView:v19];
  }
}

- (void)_presentationTransitionUnwrapViewController:(id)a3
{
  v28 = a3;
  v3 = [v28 childModalViewController];

  v4 = v28;
  if (v3)
  {
    v5 = [v28 view];
    v6 = [v5 superview];

    v7 = v6;
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

        v10 = [v9 superview];

        v9 = v10;
        if (!v10)
        {
          goto LABEL_10;
        }
      }

      [v9 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v19 = [v28 view];
      [v19 setFrame:{v12, v14, v16, v18}];

      v20 = [v28 presentedViewController];
      v21 = [v20 presentationController];
      v22 = [v21 containerView];
      [v22 setFrame:{v12, v14, v16, v18}];

      v23 = [v28 view];
      [v9 insertSubview:v23 atIndex:0];

      v24 = [v28 presentedViewController];
      v25 = [v24 presentationController];
      v26 = [v25 containerView];
      v27 = [v28 view];
      [v9 insertSubview:v26 aboveSubview:v27];

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

    v4 = v28;
  }
}

- (BOOL)_transitionConflictsWithNavigationTransitions:(id)a3
{
  v4 = a3;
  if ([v4 presentationStyle] == 4 || objc_msgSend(v4, "presentationStyle") == 3 || objc_msgSend(v4, "presentationStyle") == 6)
  {
    v5 = [v4 viewControllerForKey:@"UITransitionContextToViewController"];
    if (v5 || [v4 presentationStyle] != 4)
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
      v6 = [v4 viewControllerForKey:@"UITransitionContextFromViewController"];
      LOBYTE(v7) = v6 != 0;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)_setAllowsFreezeLayoutForOrientationChangeOnDismissal:(BOOL)a3
{
  v3 = 0x200000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFDFFFFFFFFFFFFFFLL | v3;
}

- (BOOL)_allowsAutorotation
{
  v7.receiver = self;
  v7.super_class = UINavigationController;
  v3 = [(UIViewController *)&v7 _allowsAutorotation];
  v4 = [(UINavigationController *)self topViewController];

  if (v4)
  {
    v5 = [(UINavigationController *)self topViewController];
    v3 &= [v5 _allowsAutorotation];
  }

  return v3;
}

- (BOOL)_doesTopViewControllerSupportInterfaceOrientation:(int64_t)a3
{
  v5 = [(UINavigationController *)self topViewController];

  if (!v5)
  {
    return 1;
  }

  v6 = [(UINavigationController *)self topViewController];
  v7 = [v6 _isSupportedInterfaceOrientation:a3];

  return v7;
}

- (BOOL)_isSupportedInterfaceOrientation:(int64_t)a3
{
  if ([objc_opt_class() _doesOverrideLegacyShouldAutorotateMethod])
  {

    return [(UINavigationController *)self shouldAutorotateToInterfaceOrientation:a3];
  }

  else
  {

    return [(UINavigationController *)self _doesTopViewControllerSupportInterfaceOrientation:a3];
  }
}

- (id)rotatingHeaderView
{
  if ([(UINavigationController *)self isNavigationBarHidden])
  {
    v3 = [(UINavigationController *)self topViewController];
    v4 = [v3 rotatingHeaderView];
  }

  else
  {
    v4 = [(UINavigationController *)self navigationBar];
  }

  return v4;
}

- (id)rotatingFooterView
{
  if ([(UINavigationController *)self isToolbarHidden])
  {
    v3 = [(UINavigationController *)self topViewController];
    v4 = [v3 rotatingFooterView];
  }

  else
  {
    v4 = [(UINavigationController *)self toolbar];
  }

  return v4;
}

- (BOOL)_shouldUseOnePartRotation
{
  v3 = [(UINavigationController *)self topViewController];

  if (!v3)
  {
    return 1;
  }

  v4 = [(UINavigationController *)self topViewController];
  v5 = [v4 _shouldUseOnePartRotation];

  return v5;
}

- (void)_getRotationContentSettings:(id *)a3
{
  v4 = [(UINavigationController *)self topViewController];
  [v4 _getRotationContentSettings:a3];
}

- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v6 = [(UINavigationController *)self topViewController];
  [v6 willRotateToInterfaceOrientation:a3 duration:a4];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v7 = [(UINavigationController *)self topViewController];
  [(UINavigationController *)self _updateBarsForCurrentInterfaceOrientation];
  [v7 willAnimateRotationToInterfaceOrientation:a3 duration:a4];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v9.receiver = self;
  v9.super_class = UINavigationController;
  [(UIViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  if (v7)
  {
    [v7 targetTransform];
    if (!CGAffineTransformIsIdentity(&v10))
    {
      [(UINavigationController *)self _stopTransitionsImmediately];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __77__UINavigationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
      v8[3] = &unk_1E70F3B98;
      v8[4] = self;
      [v7 animateAlongsideTransition:v8 completion:0];
    }
  }
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(UIViewController *)self _freezeLayoutForOrientationChangeOnDismissal])
  {
    v8 = [(UIViewController *)self traitCollection];
    v9 = [v6 userInterfaceStyle];
    if (v9 == [v8 userInterfaceStyle] || (objc_msgSend(v8, "_traitCollectionByReplacingNSIntegerValue:forTraitToken:", 0, 0x1EFE323B0), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "_traitCollectionByReplacingNSIntegerValue:forTraitToken:", 0, 0x1EFE323B0), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqual:", v11), v11, v10, (v12 & 1) == 0))
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __84__UINavigationController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
      v14[3] = &unk_1E70F3B98;
      v14[4] = self;
      [v7 animateAlongsideTransition:v14 completion:0];
    }

    v13.receiver = self;
    v13.super_class = UINavigationController;
    [(UIViewController *)&v13 willTransitionToTraitCollection:v6 withTransitionCoordinator:v7];
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

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
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
      [(UIViewController *)&v35 sizeForChildContentContainer:v7 withParentContainerSize:width, height];
      v15 = v22;
      v17 = v23;
    }

    else
    {
      v24 = [(UIViewController *)self view];
      [v24 frame];
      v26 = v25;
      v28 = v27;

      v29 = [v10 view];
      [v29 frame];
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
    [(UIViewController *)&v34 sizeForChildContentContainer:v7 withParentContainerSize:width, height];
    v15 = v14;
    v17 = v16;
  }

  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)willAnimateFirstHalfOfRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v6 = [(UINavigationController *)self topViewController];
  [v6 willAnimateFirstHalfOfRotationToInterfaceOrientation:a3 duration:a4];
}

- (void)didAnimateFirstHalfOfRotationToInterfaceOrientation:(int64_t)a3
{
  if (![(UINavigationController *)self _shouldUseOnePartRotation])
  {
    [(UINavigationController *)self _updateBarsForCurrentInterfaceOrientation];
  }

  v5 = [(UINavigationController *)self topViewController];
  [v5 didAnimateFirstHalfOfRotationToInterfaceOrientation:a3];
}

- (void)willAnimateSecondHalfOfRotationFromInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v6 = [(UINavigationController *)self topViewController];
  [v6 willAnimateSecondHalfOfRotationFromInterfaceOrientation:a3 duration:a4];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)a3
{
  v4 = [(UINavigationController *)self topViewController];
  [v4 didRotateFromInterfaceOrientation:a3];
}

- (id)rotatingSnapshotViewForWindow:(id)a3
{
  v3 = [(UINavigationController *)self topViewController];
  v4 = [v3 view];

  return v4;
}

- (void)updateTitleForViewController:(id)a3
{
  v7 = a3;
  v4 = [(UIViewController *)self mutableChildViewControllers];
  v5 = v4;
  if (v4 && ![v4 indexOfObjectIdenticalTo:v7])
  {
    v6 = [v7 title];
    [(UIViewController *)self setTitle:v6];
  }
}

- (void)_setPreferredNavigationBarPosition:(int64_t)a3
{
  if (a3 == 4 || a3 == 1)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:9956 description:@"UINavigationBar does not support UIBarPositionBottom or UIBarPositionBottomAttached"];
  }

  if (self->__preferredNavigationBarPosition != a3)
  {
    self->__preferredNavigationBarPosition = a3;
    if ([(UINavigationController *)self _isNavigationBarVisible])
    {
      v7 = [(UIViewController *)self _existingView];
      [v7 setNeedsLayout];
    }
  }
}

- (double)_statusBarHeightForCurrentInterfaceOrientation
{
  if (self->__positionBarsExclusivelyWithSafeArea)
  {
    v3 = self;
    v4 = v3;
    if (self->__positionBarsExclusivelyWithSafeArea && (-[UIViewController _existingView](v3, "_existingView"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 _usesMinimumSafeAreas], v5, v6))
    {
      v7 = [(UIViewController *)v4 _existingView];
      [v7 _minimumSafeAreaInsets];
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

- (int64_t)_positionForBar:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_navigationBar == v5)
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

  else if (self->_toolbar == v5)
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
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected bar sending delegate -barPositionForBar:! %@", v5];
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:10030 description:{@"%@", v7}];

    preferredNavigationBarPosition = 0;
  }

  return preferredNavigationBarPosition;
}

- (id)_findViewControllerToPopToForNavigationItem:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(UIViewController *)self mutableChildViewControllers];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * v9);
        v12 = [v11 navigationItem];

        if (v12 == v4)
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
      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)_updateNavigationBar:(id)a3 fromItems:(id)a4 toItems:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v18 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 count];
  if (v12 + 1 == [v11 count])
  {
    v13 = v10;
    v14 = v11;
    if ([v13 count] >= v12 && objc_msgSend(v14, "count") >= v12)
    {
      if (v12 < 1)
      {
LABEL_13:

        v13 = [v14 lastObject];
        [(UINavigationController *)self navigationBar:v18 shouldPushItem:v13];
        goto LABEL_5;
      }

      v15 = 0;
      while (1)
      {
        v16 = [v13 objectAtIndexedSubscript:v15];
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

  [v18 setItems:v11 animated:v6];
}

- (int64_t)navigationBarNSToolbarSection:(id)a3
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

- (void)navigationBarDidResizeForPrompt:(id)a3
{
  [(UINavigationController *)self _layoutTopViewController];
  v4 = [(UINavigationController *)self topViewController];
  [(UINavigationController *)self _computeAndApplyScrollContentInsetDeltaForViewController:v4];
}

- (id)_interfaceOrientationWindowForBar:(id)a3 matchingBar:(id)a4
{
  if (a3 == a4)
  {
    [(UINavigationController *)self _window];
  }

  else
  {
    [a3 window];
  }
  v4 = ;

  return v4;
}

- (BOOL)_toolbarShouldAnimateItemsUpdate:(id)a3
{
  if (!_UISwiftUIToolbarEnabled())
  {
    return 0;
  }

  v4 = [(UINavigationController *)self _nestedTopNavigationController];
  v5 = [(UINavigationController *)self _transitionAnimationContext];
  if ([v5 isAnimated])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v4 _transitionAnimationContext];
    v6 = [v7 isAnimated];
  }

  return v6;
}

- (void)_observableScrollViewDidChangeFrom:(id)a3 forViewController:(id)a4 edges:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = UINavigationController;
  [(UIViewController *)&v18 _observableScrollViewDidChangeFrom:v8 forViewController:v9 edges:a5];
  if ((a5 & 5) != 0)
  {
    if (a5)
    {
      [(UINavigationController *)self _stopObservingContentScrollView:v8];
    }

    else if ([v8 _isScrollViewScrollObserver:self])
    {
      [v8 _removeScrollViewScrollObserver:self];
    }

    v10 = [(UINavigationController *)self _viewControllerForObservableScrollView];
    if (v10 != v9)
    {
      goto LABEL_29;
    }

    if (a5)
    {
      v11 = [v9 _contentOrObservableScrollViewForEdge:1];
      if ((a5 & 4) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v11 = 0;
      if ((a5 & 4) == 0)
      {
LABEL_9:
        v12 = 0;
        if (!v8)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }
    }

    v12 = [v9 _contentOrObservableScrollViewForEdge:4];
    if (!v8)
    {
      goto LABEL_15;
    }

LABEL_13:
    if ((a5 & 1) != 0 && !v11)
    {
LABEL_16:
      v14 = [(UINavigationController *)self _nestedTopViewController];
      if (v11 == v12)
      {
        v15 = a5;
      }

      else
      {
        v15 = 1;
      }

      [(UINavigationController *)self _updateAndObserveScrollView:v11 viewController:v14 forEdges:v15];

LABEL_20:
      if (v8 && (a5 & 4) != 0 && !v12)
      {
        if (!v11)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v16 = [v12 window];
        if (!v16)
        {
          goto LABEL_28;
        }

        if (v12 == v11)
        {
          goto LABEL_28;
        }
      }

      v17 = [(UINavigationController *)self _nestedTopViewController];
      [(UINavigationController *)self _updateAndObserveScrollView:v12 viewController:v17 forEdges:4];

LABEL_28:
LABEL_29:

      goto LABEL_30;
    }

LABEL_15:
    v13 = [v11 window];

    if (!v13)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

LABEL_30:
}

- (id)_topViewControllerObservableScrollViewForEdge:(unint64_t)a3
{
  v4 = [(UINavigationController *)self _viewControllerForObservableScrollView];
  v5 = [v4 _contentOrObservableScrollViewForEdge:a3];

  return v5;
}

- (void)_navigationBarChangedSize:(id)a3
{
  if (self->_interactiveScrollActive)
  {
    v4 = [(UINavigationController *)self _topViewControllerObservableScrollViewForEdge:1];
    [v4 _setAutomaticContentOffsetAdjustmentEnabled:0];
    [(UINavigationController *)self _reloadCachedInteractiveScrollMeasurements];
    [(UINavigationController *)self _layoutTopViewController];
    [v4 _setAutomaticContentOffsetAdjustmentEnabled:1];
  }

  else
  {
    [(UIView *)self->_containerView setNeedsLayout];
    v4 = [(UINavigationController *)self _nestedTopViewController];
    [(UINavigationController *)self _updateTopViewFramesForViewController:v4];
    v5 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v4, 1, 0);
    [(UINavigationController *)self _updateAndObserveScrollView:v5 viewController:v4 forEdges:1];

    if (self->_externallySetNavControllerPreferredContentSize.width == *MEMORY[0x1E695F060] && self->_externallySetNavControllerPreferredContentSize.height == *(MEMORY[0x1E695F060] + 8))
    {
      [(UINavigationController *)self _setPreferredContentSizeFromChildContentContainer:v4];
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

- (void)_popNavigationBar:(id)a3 item:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([(UINavigationController *)self _isTransitioning])
  {
    if (![(UINavigationController *)self navigationBar:v7 shouldPopItem:v8])
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v9 = [(UINavigationController *)self needsDeferredTransition];
  v10 = [(UINavigationController *)self navigationBar:v7 shouldPopItem:v8];
  v11 = v10;
  if (!v9 && v10 && ([(UINavigationController *)self _isTransitioning]|| [(UINavigationController *)self needsDeferredTransition]))
  {
    if (dyld_program_sdk_at_least())
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:10336 description:{@"Override of -navigationBar:shouldPopItem: returned YES after manually popping a view controller (navigationController=%@)", self}];
    }

    else
    {
      v14 = *(__UILogGetCategoryCachedImpl("Assert", &_popNavigationBar_item____s_category) + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = self;
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

  v3 = [(UINavigationController *)self topViewController];
  if ([v3 useLayoutToLayoutNavigationTransitions])
  {
    v4 = [(UINavigationController *)self _isPerformingLayoutToLayoutTransition];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateBottomBarsForNavigationTransition
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(UINavigationController *)self _nestedTopViewController];
  v4 = v3;
  if (v3)
  {
    v5 = (v3[94] & 3u) - 1 < 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 _existingView];
  v7 = [v6 window];

  if (v7)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __66__UINavigationController__updateBottomBarsForNavigationTransition__block_invoke;
    v19 = &unk_1E70F35B8;
    v20 = self;
    v21 = v4;
    [UIView performWithoutAnimation:&v16];
  }

  else if (v5)
  {
    v8 = *(__UILogGetCategoryCachedImpl("UINavigationController", &_updateBottomBarsForNavigationTransition___s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v23 = self;
      v24 = 2114;
      v25 = v4;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Top view controller's view unexpectedly not in window for navigation transition. Skipping layout. nav = %{public}@, topVC = %{public}@", buf, 0x16u);
    }
  }

  v9 = [(UIViewController *)self _tabBarControllerEnforcingClass:1, v16, v17, v18, v19, v20];
  v10 = v9;
  if (!v9)
  {
    if (v5)
    {
      goto LABEL_13;
    }

LABEL_15:
    [(UINavigationController *)self _setSuspendToolbarBackgroundUpdating:0];
    goto LABEL_17;
  }

  v11 = [v9 _isBarEffectivelyHidden];
  if (!v5)
  {
    if ((v11 & 1) == 0)
    {
      [v10 _setSuspendBarBackgroundUpdating:0];
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (v11)
  {
LABEL_13:
    v14 = [v4 _contentOrObservableScrollViewForEdge:4];
    v15 = [(UINavigationController *)self _existingActiveVisibleToolbar];
    [(UINavigationController *)self _updateBackgroundTransitionProgressForScrollView:v14 toolbar:v15 isNavigationTransitionUpdate:1];

    goto LABEL_17;
  }

  v12 = [v4 _contentOrObservableScrollViewForEdge:4];
  v13 = [v10 tabBar];
  [v10 _updateBackgroundTransitionProgressForScrollView:v12 tabBar:v13 isNavigationTransitionUpdate:1];

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

- (void)_startCoordinatedBottomBarUpdateForTransition:(int)a3
{
  if (![(UINavigationController *)self _isNestedNavigationController])
  {
    navigationBar = self->_navigationBar;
    if (a3 == 2)
    {
      [_UINavigationBarTransitionAssistant popTransitionAssistantForNavigationBar:navigationBar delegate:self crossfade:0];
    }

    else
    {
      [_UINavigationBarTransitionAssistant pushTransitionAssistantForNavigationBar:navigationBar delegate:self crossfade:a3 != 1];
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
      v8 = [v6 transitionCoordinator];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __72__UINavigationController__startCoordinatedBottomBarUpdateForTransition___block_invoke_2;
      v9[3] = &unk_1E70F3770;
      v10 = v7;
      [v8 animateAlongsideTransition:v9 completion:0];
    }

    else
    {
      [v6 duration];
      [UIView animateWithDuration:v7 animations:?];
    }
  }
}

- (void)_navigationBarPrepareToAnimateTransition:(id)a3
{
  v3 = [(UINavigationController *)self topViewController];
  [v3 _prepareForNavigationTransition:1];
}

- (void)_navigationBarWillBeginCoordinatedTransitionAnimations:(id)a3
{
  [(UINavigationController *)self _initializeNavigationDeferredTransitionContextIfNecessary];
  if (![(UINavigationController *)self _isPushingOrPoppingUsingLayoutToLayoutNavigationTransition])
  {
    v4 = [(UINavigationController *)self _nestedTopViewController];
    v8 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v4, 1, 0);

    v5 = [(UINavigationController *)self _nestedTopViewController];
    v6 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v5, 1, 1);

    v7 = [v6 _safeAreaInsetsFrozen];
    if (v8 != v6)
    {
      [v6 _setSafeAreaInsetsFrozen:1];
    }

    [(UINavigationController *)self _performCoordinatedUpdateTopFramesTransitionAnimation];
    if ([(UINavigationController *)self _hasPotentiallyChromelessBottomBar])
    {
      [(UINavigationController *)self _updateBottomBarsForNavigationTransition];
    }

    [v6 _setSafeAreaInsetsFrozen:v7 updateForUnfreeze:0];
  }
}

- (void)_navigationBarWillRunAutomaticDeferredShowsScopeBar:(id)a3
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

- (void)_navigationBarDidUpdateVisibility:(id)a3
{
  v4 = a3;
  [(UINavigationController *)self _layoutTopViewControllerLookForNested:1];
  v5 = [v4 topItem];

  -[_UIScrollPocketContainerInteraction _setActive:](self->_navigationBarScrollPocketContainerInteraction, "_setActive:", [v5 _navigationBarVisibility] == 0);
}

- (void)_navigationBarWillChangeHeightForManualShowOrHideOfSearchScopeBar:(id)a3
{
  v3 = [(UIViewController *)self _existingView];
  if (v3 && (v3[95] & 0x40) == 0)
  {
    v4 = v3;
    [v3 setNeedsLayout];
    v3 = v4;
  }
}

- (CGRect)_incomingNavigationBarFrame
{
  v3 = [(UINavigationController *)self topViewController];
  v4 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(self, v3, 1, 0);
  v5 = self;
  v6 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(v5, v3, 1, 0);
  if ([(UINavigationController *)v5 _isPushing])
  {
    v7 = 2;
  }

  else if ([(UINavigationController *)v5 _isPopping])
  {
    v7 = 3;
  }

  else
  {
    v7 = v6 != 0;
  }

  v12 = 0u;
  v13 = 0u;
  [(UINavigationController *)v5 _calculateTopViewFramesForLayoutWithViewController:v3 contentScrollView:v4 navBarFrame:&v12 topPaletteFrame:0 topLayoutType:v7];

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
  v3 = [(UINavigationController *)self topViewController];
  if ([v3 _isNestedNavigationController])
  {
    v4 = [v3 topViewController];

    v3 = v4;
  }

  [(UINavigationController *)self _updateTopViewFramesForViewController:v3];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __79__UINavigationController__performCoordinatedUpdateTopFramesTransitionAnimation__block_invoke;
  v5[3] = &unk_1E70F3590;
  v5[4] = self;
  [UIView performWithoutAnimation:v5];
}

- (NSDirectionalEdgeInsets)_layoutMarginsforNavigationBar:(id)a3
{
  v4 = a3;
  [v4 _contentMargin];
  v6 = v5;
  v7 = v5;
  if ([v4 insetsLayoutMarginsFromSafeArea])
  {
    v8 = [v4 effectiveUserInterfaceLayoutDirection];
    [(UIViewController *)self _contentOverlayInsets];
    if (v8 == 1)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    if (v8 == 1)
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

- (void)_navigationItemDidUpdateSearchController:(id)a3 oldSearchController:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(UINavigationController *)self _outermostNavigationController];
  v9 = v8;
  if (v8 != self)
  {
    [(UINavigationController *)v8 _navigationItemDidUpdateSearchController:v6 oldSearchController:v7];
  }

  v10 = [(UINavigationController *)self topViewController];
  v11 = [v10 navigationItem];

  if (v11 == v6)
  {
    if (v9 == self)
    {
      v12 = [v6 _searchControllerIfAllowed];
      v13 = [v12 searchBar];
      if (([v13 _isHostedByNavigationBar] & 1) == 0)
      {
LABEL_12:

LABEL_13:
        goto LABEL_14;
      }

      v14 = [(UINavigationController *)self _searchHidNavigationBar];

      if (!v14)
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
        v12 = __UIFaultDebugAssertLog();
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_13;
        }

        v20 = objc_opt_class();
        v13 = NSStringFromClass(v20);
        v21 = objc_opt_class();
        v18 = NSStringFromClass(v21);
        v22 = 138412802;
        v23 = v13;
        v24 = 2112;
        v25 = v18;
        v26 = 2112;
        v27 = v6;
        _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "navigationItem updated to search controller with search bar hosted in navigation bar after hiding the navigation bar. Fix-up may be preventing a later crash. self is a %@. viewController is a %@. navigationItem = %@", &v22, 0x20u);
        goto LABEL_11;
      }

      v15 = *(__UILogGetCategoryCachedImpl("Assert", &_navigationItemDidUpdateSearchController_oldSearchController____s_category) + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v12 = v15;
        v16 = objc_opt_class();
        v13 = NSStringFromClass(v16);
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v22 = 138412802;
        v23 = v13;
        v24 = 2112;
        v25 = v18;
        v26 = 2112;
        v27 = v6;
        _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "navigationItem updated to search controller with search bar hosted in navigation bar after hiding the navigation bar. Fix-up may be preventing a later crash. self is a %@. viewController is a %@. navigationItem = %@", &v22, 0x20u);
LABEL_11:

        goto LABEL_12;
      }
    }

LABEL_14:
    [(UINavigationController *)self _setDefinesPresentationContextIfNecessaryForViewController:v10];
    [(UIView *)self->_navigationTransitionView setNeedsLayout];
    [(UIView *)self->_containerView setNeedsLayout];
  }

  v19 = [(UIViewController *)self _containingTabBarController];
  [v19 _navigationControllerDidUpdateSearchController:self];
}

- (void)_navigationItemDidUpdateToolbarAvoidsKeyboard:(id)a3
{
  v4 = a3;
  v6 = [(UINavigationController *)self topViewController];
  v5 = [v6 navigationItem];

  if (v5 == v4)
  {
    [(UINavigationController *)self _updateToolbarItemsFromViewController:v6 animated:0];
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

- (void)_setKeyboardNotificationToken:(id)a3
{
  v5 = a3;
  if (self->__keyboardAppearedNotificationToken != v5)
  {
    v7 = v5;
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 removeObserver:self->__keyboardAppearedNotificationToken];

    objc_storeStrong(&self->__keyboardAppearedNotificationToken, a3);
    v5 = v7;
  }
}

- (void)_hideForKeyboardAppearance
{
  if (![(UINavigationController *)self _isTransitioning])
  {
    v3 = [(UIViewController *)self _existingView];
    v4 = [v3 window];

    if (v4)
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

- (void)_gestureRecognizedInteractiveHide:(id)a3
{
  v5 = a3;
  v6 = [v5 barAction];
  if (v6)
  {
    v7 = v6;
    v8 = [(UINavigationController *)self _outermostNavigationController];
    v9 = [v5 state];
    v10 = [(UINavigationController *)self _barInteractiveAnimationCoordinator];
    v11 = v10;
    if ((v9 - 1) <= 1)
    {
      v12 = [(UIViewController *)self _existingView];
      [v5 velocityInView:v12];
      v14 = v13;
      if (v11)
      {
        v15 = [(_UIAnimationCoordinator *)v11 stash];
        v16 = [v15 objectForKeyedSubscript:@"NavigationTransitionFinishedEarly"];
        if ([v16 BOOLValue])
        {
        }

        else
        {
          v79 = v8;
          v40 = v12;
          v41 = [(_UIAnimationCoordinator *)v11 stash];
          v42 = [v41 objectForKeyedSubscript:@"NavigationBarAnimateOnEnd"];
          v43 = [v42 BOOLValue];

          if (v43)
          {
            v12 = v40;
          }

          else
          {
            v61 = [(_UIAnimationCoordinator *)v11 stash];
            v62 = [v61 objectForKeyedSubscript:@"NavigationBarCriticalVelocity"];
            [v62 doubleValue];
            v64 = v63;

            v12 = v40;
            if ((v7 != 1 || v14 >= v64) && (v7 != 2 || v14 <= v64))
            {
              v71 = v14 < -v64 && v7 == 2;
              v72 = v14 > -v64 && v7 == 1;
              v8 = v79;
              if (v72 || v71)
              {
                v74 = [(_UIAnimationCoordinator *)v11 stash];
                [v74 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"NavigationTransitionFinishedEarly"];

                [(_UIAnimationCoordinator *)v11 cancelInteractiveAnimation];
                v75 = [(_UIAnimationCoordinator *)v11 stash];
                v76 = [v75 objectForKeyedSubscript:@"NavigationBarStartingMode"];
                -[UINavigationController _setBarsHidden:allowAnimation:](self, "_setBarsHidden:allowAnimation:", [v76 BOOLValue], 0);
              }

              else
              {
                v73 = [(UINavigationController *)self _barInteractiveAnimationCoordinator];
                _gestureProgress(v12, v5, v11);
                [v73 updateInteractiveProgress:?];
              }

              goto LABEL_47;
            }

            v65 = [(_UIAnimationCoordinator *)v11 stash];
            [v65 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"NavigationTransitionFinishedEarly"];

            [(_UIAnimationCoordinator *)v11 finishInteractiveAnimation];
          }

          v8 = v79;
        }

LABEL_47:

        goto LABEL_48;
      }

      v30 = [(UINavigationController *)self isNavigationBarHidden];
      v11 = objc_alloc_init(_UIAnimationCoordinator);
      v80[0] = MEMORY[0x1E69E9820];
      v80[1] = 3221225472;
      v80[2] = __60__UINavigationController__gestureRecognizedInteractiveHide___block_invoke;
      v80[3] = &unk_1E7102BD8;
      v80[4] = self;
      v81 = v30;
      [(_UIAnimationCoordinator *)v11 setAnimator:v80];
      v31 = [v8 _existingView];
      [(_UIAnimationCoordinator *)v11 setContainerView:v31];

      v32 = [v8 topViewController];
      [(_UIAnimationCoordinator *)v11 setViewController:v32];

      v33 = [v8 topViewController];
      v34 = [v33 view];
      [v34 frame];
      [(_UIAnimationCoordinator *)v11 setStartFrame:?];

      v35 = [v8 topViewController];
      v36 = [v35 view];
      [v36 frame];
      [(_UIAnimationCoordinator *)v11 setEndFrame:?];

      v37 = [MEMORY[0x1E696AD98] numberWithBool:v30];
      v38 = [(_UIAnimationCoordinator *)v11 stash];
      [v38 setObject:v37 forKeyedSubscript:@"NavigationBarStartingMode"];

      if (v7 == 2 && v30)
      {
        v39 = [(_UIAnimationCoordinator *)v11 stash];
        [v39 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"NavigationBarAnimateOnEnd"];
      }

      else
      {
        v48 = v7 != 1 || v30;
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
        v39 = [v8 _existingNavigationBar];
        [v39 frame];
        v52 = v51;
        [(_UIAnimationCoordinator *)v11 animateInteractively];
        [v39 frame];
        v54 = v53 - v52;
        v55 = [MEMORY[0x1E696AD98] numberWithDouble:v54];
        v56 = [(_UIAnimationCoordinator *)v11 stash];
        [v56 setObject:v55 forKeyedSubscript:@"NavigationBarTravelDistance"];

        v57 = MEMORY[0x1E696AD98];
        [(_UIAnimationCoordinator *)v11 duration];
        v59 = [v57 numberWithDouble:v54 / v58];
        v60 = [(_UIAnimationCoordinator *)v11 stash];
        [v60 setObject:v59 forKeyedSubscript:@"NavigationBarCriticalVelocity"];
      }

LABEL_40:
      [(UINavigationController *)self _setInteractiveAnimationCoordinator:v11];
      goto LABEL_47;
    }

    if (v9 == 3)
    {
      if (!v10)
      {
        v77 = [MEMORY[0x1E696AAA8] currentHandler];
        [v77 handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:10772 description:{@"Trying to complete an interactive gesture but the animation coordinator is nil! (gesture=%@)", v5}];
      }

      v17 = [(_UIAnimationCoordinator *)v11 stash];
      v18 = [v17 objectForKeyedSubscript:@"NavigationTransitionFinishedEarly"];
      v19 = [v18 BOOLValue];

      if (v19)
      {
        goto LABEL_30;
      }

      v20 = [v8 _existingView];
      _gestureProgress(v20, v5, v11);
      v22 = v21;
      [v5 velocityInView:v20];
      v24 = v23;
      v25 = [(_UIAnimationCoordinator *)v11 stash];
      v26 = [v25 objectForKeyedSubscript:@"NavigationBarAnimateOnEnd"];
      v27 = [v26 BOOLValue];

      if (v27)
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

      v66 = [(_UIAnimationCoordinator *)v11 stash];
      v67 = [v66 objectForKeyedSubscript:@"NavigationBarCriticalVelocity"];
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
      v47 = [(_UIAnimationCoordinator *)v11 stash];
      v70 = [v47 objectForKeyedSubscript:@"NavigationBarStartingMode"];
      -[UINavigationController _setBarsHidden:allowAnimation:](self, "_setBarsHidden:allowAnimation:", [v70 BOOLValue], 0);
    }

    else
    {
      if (!v10)
      {
        v78 = [MEMORY[0x1E696AAA8] currentHandler];
        [v78 handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:10803 description:{@"Trying to complete an interactive gesture but the animation coordinator is nil! (gesture=%@)", v5}];
      }

      v28 = [(_UIAnimationCoordinator *)v11 stash];
      v29 = [v28 objectForKeyedSubscript:@"NavigationTransitionFinishedEarly"];
      if ([v29 BOOLValue])
      {
      }

      else
      {
        v44 = [(_UIAnimationCoordinator *)v11 stash];
        v45 = [v44 objectForKeyedSubscript:@"NavigationBarAnimateOnEnd"];
        v46 = [v45 BOOLValue];

        if ((v46 & 1) == 0)
        {
          [(_UIAnimationCoordinator *)v11 cancelInteractiveAnimation];
        }
      }

      v20 = [(_UIAnimationCoordinator *)v11 stash];
      v47 = [v20 objectForKeyedSubscript:@"NavigationBarStartingMode"];
      -[UINavigationController _setBarsHidden:allowAnimation:](self, "_setBarsHidden:allowAnimation:", [v47 BOOLValue], 0);
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
  v2 = [(UINavigationController *)self _existingToolbar];
  v3 = [v2 items];
  v4 = [v3 count];

  if (!v4)
  {

    v2 = 0;
  }

  return v2;
}

- (BOOL)_useCrossFadeForGestureHiding
{
  v3 = [(UIViewController *)self traitCollection];
  v4 = [(UINavigationController *)self _shouldHideBarsForTraits:v3];

  return v4 && [(UIViewController *)self preferredStatusBarUpdateAnimation]== UIStatusBarAnimationFade;
}

- (void)_gestureRecognizedToggleVisibility:(id)a3
{
  v5 = [a3 tapCategory];
  v6 = v5;
  if (v5 <= 5)
  {
    if (((1 << v5) & 0x15) != 0)
    {
      return;
    }

    if (((1 << v5) & 0x28) == 0)
    {
      if (self->_hidesBarsOnTap)
      {
        v9 = [(UINavigationController *)self _navigationBarForNestedNavigationController];

        if (v9)
        {
          v10 = [(UINavigationController *)self isNavigationBarHidden];
        }

        else
        {
          v11 = [(UINavigationController *)self _existingToolbarWithItems];

          if (!v11)
          {
            return;
          }

          v10 = [(UINavigationController *)self isToolbarHidden];
        }

        v8 = !v10;
        v7 = self;
        goto LABEL_6;
      }

      if (!self->_hidesBarsWhenVerticallyCompact)
      {
        return;
      }
    }

    v7 = self;
    v8 = 0;
LABEL_6:

    [(UINavigationController *)v7 _setBarsHidden:v8];
    return;
  }

  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  [v12 handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:10931 description:{@"Unknown tap gesture category %li", v6}];
}

- (void)_setBarsHidden:(BOOL)a3
{
  v5 = [(UINavigationController *)self _useCrossFadeForGestureHiding];
  v6 = objc_alloc_init(_UIAnimationCoordinator);
  v7 = [(UINavigationController *)self _outermostNavigationController];
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
  v19 = a3;
  v20 = v5;
  v17 = v7;
  v18 = self;
  v8 = v7;
  [(_UIAnimationCoordinator *)v6 setAnimator:&v13];
  v9 = [v8 _existingView];
  [(_UIAnimationCoordinator *)v6 setContainerView:v9];

  v10 = [v8 topViewController];
  [(_UIAnimationCoordinator *)v6 setViewController:v10];

  v11 = [v8 topViewController];
  v12 = [v11 view];
  [v12 frame];
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

- (void)_setBarsHidden:(BOOL)a3 allowAnimation:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = +[UIView areAnimationsEnabled];
  v8 = [(UINavigationController *)self _navigationBarForNestedNavigationController];

  if (v8)
  {
    [(UINavigationController *)self setNavigationBarHidden:v5 animated:v7 & v4];
  }

  v9 = [(UINavigationController *)self _existingToolbarWithItems];

  if (v9)
  {
    [(UINavigationController *)self setToolbarHidden:v5 animated:v7 & v4];
  }

  v14 = [(UINavigationController *)self _outermostNavigationController];
  v10 = [v14 topViewController];
  v11 = [v10 view];
  [v11 setNeedsLayout];

  v12 = [v14 topViewController];
  v13 = [v12 view];
  [v13 layoutIfNeeded];
}

- (id)defaultPNGName
{
  v2 = [(UINavigationController *)self topViewController];
  v3 = [v2 defaultPNGName];

  return v3;
}

- (void)_setNavigationSoundsEnabled:(BOOL)a3
{
  v3 = 0x20000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_navigationControllerFlags = *&self->_navigationControllerFlags & 0xFFDFFFFFFFFFFFFFLL | v3;
}

- (void)updateTabBarItemForViewController:(id)a3
{
  v4 = a3;
  v5 = [(UINavigationController *)self bottomViewController];

  if (v5 == v4)
  {
    v6 = [(UIViewController *)&self->super.super.super.isa _parentViewController];
    [v6 updateTabBarItemForViewController:self];
  }
}

- (CGSize)_adjustedContentSizeForPopover:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ((*&self->_navigationControllerFlags & 1) == 0)
  {
    v6 = [(UINavigationController *)self navigationBar];

    if (v6)
    {
      v7 = [(UINavigationController *)self navigationBar];
      [v7 bounds];
      height = height + v8;

      if (_UISMCBarsEnabled())
      {
        v9 = [(UIViewController *)self traitCollection];
        v10 = [v9 _presentationSemanticContext];

        if (v10 == 3)
        {
          navigationBar = self->_navigationBar;
          v12 = [(UIView *)navigationBar traitCollection];
          [(UINavigationBar *)navigationBar _minimumTopPaddingWithTraitCollection:v12];
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
    v16 = [(UINavigationController *)self _existingToolbar];

    if (v16)
    {
      v17 = [(UINavigationController *)self toolbar];
      [v17 bounds];
      height = height + v18;
    }
  }

  v19 = width;
  v20 = height;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)setContentSizeForViewInPopover:(CGSize)a3
{
  [(UINavigationController *)self _adjustedContentSizeForPopover:a3.width, a3.height];
  v4.receiver = self;
  v4.super_class = UINavigationController;
  [(UIViewController *)&v4 setContentSizeForViewInPopover:?];
}

- (void)setPreferredContentSize:(CGSize)a3
{
  self->_externallySetNavControllerPreferredContentSize = a3;
  if (a3.width != *MEMORY[0x1E695F060] || a3.height != *(MEMORY[0x1E695F060] + 8))
  {
    [(UINavigationController *)self _adjustedContentSizeForPopover:?];
  }

  v5.receiver = self;
  v5.super_class = UINavigationController;
  [(UIViewController *)&v5 setPreferredContentSize:?];
}

- (CGSize)contentSizeForViewInPopover
{
  v3 = [(UINavigationController *)self topViewController];

  if (v3)
  {
    v4 = [(UINavigationController *)self topViewController];
    [v4 view];

    v5 = [(UINavigationController *)self topViewController];
    [v5 contentSizeForViewInPopover];
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

- (CGSize)_preferredContentSizeForcingLoad:(BOOL)a3
{
  v3 = a3;
  v18.receiver = self;
  v18.super_class = UINavigationController;
  [(UIViewController *)&v18 preferredContentSize];
  v7 = v6;
  v8 = v5;
  if (v6 == *MEMORY[0x1E695F060] && v5 == *(MEMORY[0x1E695F060] + 8))
  {
    v10 = [(UINavigationController *)self topViewController];

    if (v10)
    {
      v11 = [(UINavigationController *)self topViewController];
      v12 = v11;
      if (v3)
      {
        [v11 view];
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

- (void)_setPreferredContentSizeFromChildContentContainer:(id)a3
{
  v4 = a3;
  v5 = [(UINavigationController *)self topViewController];

  if (v5 == v4)
  {
    [v4 preferredContentSize];
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

          v8 = 1;
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
  v8 = [(UIViewController *)&v10 isModalInPopover];
LABEL_11:

  return v8;
}

- (id)_viewForContentInPopover
{
  v3 = [(UIViewController *)self childModalViewController];
  if (v3 && (v4 = v3, -[UIViewController childModalViewController](self, "childModalViewController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isModalInPopover], v5, v4, v6))
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

- (void)_willBecomeContentViewControllerOfPopover:(id)a3
{
  [(UIViewController *)self _setPopoverController:a3];
  if (self->_navigationBar)
  {
    v4 = [(UINavigationController *)self navigationBar];
    if ([v4 barStyle])
    {
LABEL_3:

      goto LABEL_5;
    }

    WeakRetained = objc_loadWeakRetained(&self->super._popoverController);
    v6 = [WeakRetained _popoverControllerStyle];

    if (!v6)
    {
      v10 = [(UINavigationController *)self navigationBar];
      self->_savedNavBarStyleBeforeSheet = [v10 barStyle];

      v4 = [(UINavigationController *)self navigationBar];
      [v4 setBarStyle:4];
      goto LABEL_3;
    }
  }

LABEL_5:
  if (!self->_toolbar)
  {
    goto LABEL_9;
  }

  v7 = [(UINavigationController *)self toolbar];
  if ([v7 barStyle])
  {
    goto LABEL_7;
  }

  v8 = objc_loadWeakRetained(&self->super._popoverController);
  v9 = [v8 _popoverControllerStyle];

  if (!v9)
  {
    v11 = [(UINavigationController *)self toolbar];
    self->_savedToolBarStyleBeforeSheet = [v11 barStyle];

    v7 = [(UINavigationController *)self toolbar];
    [v7 setBarStyle:4];
LABEL_7:
  }

LABEL_9:
  [(UINavigationController *)self _setClipUnderlapWhileTransitioning:1];

  [(UINavigationController *)self _startDeferredTransitionIfNeeded];
}

- (void)_didResignContentViewControllerOfPopover:(id)a3
{
  v17 = a3;
  [(UINavigationController *)self _setClipUnderlapWhileTransitioning:0];
  v4 = [(UIViewController *)self _popoverController];

  if (v4 == v17)
  {
    [(UIViewController *)self _setPopoverController:0];
    v5 = [(UINavigationController *)self navigationBar];
    if (v5)
    {
      v6 = v5;
      v7 = [(UINavigationController *)self navigationBar];
      v8 = [v7 barStyle];

      if (v8 == 4)
      {
        savedNavBarStyleBeforeSheet = self->_savedNavBarStyleBeforeSheet;
        v10 = [(UINavigationController *)self navigationBar];
        [v10 setBarStyle:savedNavBarStyleBeforeSheet];
      }
    }

    v11 = [(UINavigationController *)self toolbar];
    if (v11)
    {
      v12 = v11;
      v13 = [(UINavigationController *)self toolbar];
      v14 = [v13 barStyle];

      if (v14 == 4)
      {
        savedToolBarStyleBeforeSheet = self->_savedToolBarStyleBeforeSheet;
        v16 = [(UINavigationController *)self toolbar];
        [v16 setBarStyle:savedToolBarStyleBeforeSheet];
      }
    }
  }

  [v17 _stopWatchingForNavigationControllerNotifications:self];
}

- (void)_forwardPaletteToViewControllerIfNeeded:(id)a3
{
  v8 = a3;
  v4 = [(UINavigationController *)self disappearingViewController];
  v5 = [v4 navigationItem];
  v6 = [v5 _bottomPalette];

  if ([v6 isPinned])
  {
    v7 = [v8 navigationItem];
    [v7 _setBottomPalette:v6];
  }
}

- (void)_setCreatedBySplitViewController:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_navigationControllerFlags + 8) = *(&self->_navigationControllerFlags + 8) & 0xFD | v3;
}

- (void)_executeSplitViewControllerActions:(id)a3
{
  p_navigationControllerFlags = &self->_navigationControllerFlags;
  v4 = *(&self->_navigationControllerFlags + 8);
  *(&self->_navigationControllerFlags + 8) = v4 | 4;
  (*(a3 + 2))(a3, a2);
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

- (void)_navigationBar:(id)a3 topItemUpdatedContentLayout:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIViewController *)self _splitViewControllerEnforcingClass:1];
  [v8 _navigationController:self navigationBar:v7 topItemUpdatedContentLayout:v6];
}

- (void)_navigationBar:(id)a3 itemBackButtonUpdated:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIViewController *)self _splitViewControllerEnforcingClass:1];
  [v8 _navigationController:self navigationBar:v7 itemBackButtonUpdated:v6];
}

- (id)_navigationBarAdditionalActionsForBackButtonMenu:(id)a3
{
  v4 = a3;
  v5 = [(UIViewController *)self _splitViewControllerEnforcingClass:1];
  v6 = [v5 _navigationController:self navigationBarAdditionalActionsForBackButtonMenu:v4];

  return v6;
}

- (BOOL)_navigationBarShouldShowSidebarToggleInNSToolbar:(id)a3
{
  v3 = [(UIViewController *)self _splitViewControllerEnforcingClass:1];
  v4 = [v3 _needsNSToolbarSidebarToggle];

  return v4;
}

- (void)_navigationBar:(id)a3 topItemUpdatedSearchBarPlacementAllowsToolbarIntegration:(id)a4
{
  v7 = a4;
  v5 = [v7 _searchControllerIfAllowed];
  if (v5)
  {
    v6 = [(UINavigationController *)self _nestedTopViewController];
    [v6 _invalidateRelevantToolbarItems];
    [(UINavigationController *)self _updateToolbarItemsFromViewController:v6 animated:0];
    if (([v7 searchBarPlacementAllowsToolbarIntegration] & 1) == 0 && objc_msgSend(v5, "_isSearchTextFieldBorrowed"))
    {
      [v5 _setInlineSearchAccessoryEnabled:0];
    }
  }
}

- (void)_navigationBar:(id)a3 topItemUpdatedSearchBarPlacementAllowsExternalIntegration:(id)a4
{
  v4 = [(UIViewController *)self _splitViewControllerEnforcingClass:1, a4];
  if (v4)
  {
    v5 = v4;
    [v4 _updateForGlobalSearchControllerChange];
    v4 = v5;
  }
}

- (void)_navigationBar:(id)a3 topItemUpdatedSearchController:(id)a4
{
  v5 = [(UINavigationController *)self _nestedTopViewController:a3];
  [v5 _invalidateRelevantToolbarItems];
  [(UINavigationController *)self _updateToolbarItemsFromViewController:v5 animated:0];
}

- (id)_effectiveDelegateForNavigationItem:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UINavigationController *)self disappearingViewController];
  v6 = [v5 _existingNavigationItem];

  if (v6 == v4)
  {
    v10 = self;
    goto LABEL_23;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [(UIViewController *)self childViewControllers];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_22;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v22;
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v21 + 1) + 8 * i);
      v14 = [v13 _existingNavigationItem];

      if (v14 == v4)
      {
        v18 = self;
LABEL_21:

        v10 = v18;
        goto LABEL_22;
      }

      if (![v13 _isNestedNavigationController])
      {
        continue;
      }

      v15 = v13;
      v16 = [(UINavigationController *)v15 bottomViewController];
      v17 = [v16 _existingNavigationItem];

      if (v17 == v4)
      {
        v19 = self;

        v10 = v19;
        goto LABEL_13;
      }

      v18 = [(UINavigationController *)v15 _effectiveDelegateForNavigationItem:v4];

      if (v18)
      {
        v10 = v15;
        goto LABEL_21;
      }

      v10 = 0;
LABEL_13:
    }

    v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_22:

LABEL_23:

  return v10;
}

- (void)_collapseViewController:(id)a3 forSplitViewController:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([v7 _isNavigationController])
  {
    v9 = v7;
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
  v13 = [(UIViewController *)self _keyboardSceneDelegate];
  v14 = [v13 responder];
  v15 = [v7 _shouldAttemptToPreserveInputViewsForResponder:v14];

  if (v15)
  {
    v16 = [v13 responder];
    [v16 _setShouldEndWritingToolsOnResign:0];

    v17 = [MEMORY[0x1E696B098] valueWithPointer:v7];
    [v13 _preserveInputViewsWithId:v17];

    v18 = [v13 responder];
    [v18 resignFirstResponder];
  }

  if (os_variant_has_internal_diagnostics())
  {
    v28 = *(__UILogGetCategoryCachedImpl("UINavigationController", &qword_1ED4979D8) + 8);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 138477827;
      *&v29[4] = v7;
      _os_log_impl(&dword_188A29000, v28, OS_LOG_TYPE_DEFAULT, "UINavigationController for collapsing UISplitViewController about to push view controller %{private}@", v29, 0xCu);
    }
  }

  else
  {
    v19 = [v8 _panelImpl];

    if (!v19)
    {
      v20 = *(__UILogGetCategoryCachedImpl("UISplitViewController", &qword_1ED4979E0) + 8);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        *v29 = 138543618;
        *&v29[4] = objc_opt_class();
        *&v29[12] = 2048;
        *&v29[14] = v7;
        v22 = *&v29[4];
        _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_DEFAULT, "UINavigationController for collapsing UISplitViewController about to push view controller <%{public}@: %p>", v29, 0x16u);
      }

      if ([v8 isCollapsed])
      {
        v23 = [(UINavigationController *)self viewControllers];
        v24 = [v23 containsObject:v7];

        if (v24)
        {
          v25 = [MEMORY[0x1E696AAA8] currentHandler];
          [v25 handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:11501 description:@"UISplitViewController collapse will push the same view controller a second time"];
        }
      }
    }
  }

  [(UINavigationController *)self pushViewController:v7 animated:0];
  v26 = [MEMORY[0x1E696B098] valueWithPointer:v7];
  [v13 _restoreInputViewsWithId:v26 animated:0];

  v27 = [v13 responder];
  [v27 _setShouldEndWritingToolsOnResign:1];
}

- (id)_separateViewControllersAfterAndIncludingViewController:(id)a3 forSplitViewController:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(UINavigationController *)self topViewController];
  v7 = v6;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;
  v10 = [(UINavigationController *)self viewControllers];
  v11 = v10;
  v12 = MEMORY[0x1E695E0F0];
  if (v9)
  {
    v13 = [v10 indexOfObject:v9];
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

    if (v5 || v14 != [v11 count] - 1)
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
  v2 = [(UINavigationController *)self bottomViewController];
  v3 = [v2 _moreListTitle];

  return v3;
}

- (id)moreListImage
{
  v2 = [(UINavigationController *)self bottomViewController];
  v3 = [v2 moreListImage];

  return v3;
}

- (id)moreListSelectedImage
{
  v2 = [(UINavigationController *)self bottomViewController];
  v3 = [v2 moreListSelectedImage];

  return v3;
}

- (id)moreListTableCell
{
  v2 = [(UINavigationController *)self bottomViewController];
  v3 = [v2 moreListTableCell];

  return v3;
}

- (void)_ensureToViewControllersViewIsLoaded:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v4 topViewController];
    [v3 loadViewIfNeeded];
  }

  [v4 loadViewIfNeeded];
}

- (void)transitionConductorWillStartImmediateTransition:(id)a3
{
  *&self->_navigationControllerFlags |= 4uLL;
  v3 = [(UINavigationController *)self _outermostNavigationController];
  v3[161] |= 8uLL;
}

- (void)transitionConductor:(id)a3 beginPinningInputViewsForTransitionFromViewController:(id)a4 toViewController:(id)a5 forTransitionType:(int)a6
{
  v31 = a4;
  v9 = a5;
  v10 = [(UIViewController *)self _focusBehavior];
  if ([v10 syncsFocusAndResponder])
  {
    v11 = [(UIViewController *)self _focusSystem];
    v12 = [v11 focusedItem];

    if (v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v13 = [(UIViewController *)self presentedViewController];
  if (v13)
  {
    goto LABEL_6;
  }

  if (![v9 _containedInAbsoluteResponderChain])
  {
    goto LABEL_12;
  }

  if (([v9 _containsFirstResponder] & 1) == 0 && !-[UIResponder _disableAutomaticKeyboardBehavior](self, "_disableAutomaticKeyboardBehavior"))
  {
    v13 = [(UIViewController *)self _keyboardSceneDelegate];
    v15 = ((a6 - 17) < 0xFFFFFFFE) & [(UINavigationController *)self _isViewControllerFullWidth];
    if (v15 == 1)
    {
      [v13 _setIgnoresPinning:1 allowImmediateReload:0];
    }

    v16 = [(UIViewController *)self parentViewController];
    v17 = [v16 _isHostedRootViewController];

    if (v31)
    {
      v18 = 1;
    }

    else
    {
      v19 = [(UIViewController *)self presentingViewController];

      v20 = (v19 != 0) | v17;
      if (v19)
      {
        v21 = 1;
      }

      else
      {
        v21 = v17;
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
        [v13 _beginDisablingAnimations];
        v18 = (v19 != 0) | v17;
      }
    }

    v23 = [(UINavigationController *)self _keyboardAnimationStyle];
    [v13 pushAnimationStyle:v23];

    v22 = 0;
LABEL_27:
    if (([v9 becomeFirstResponder] & 1) == 0)
    {
      v24 = [(UINavigationController *)self _keyboardAnimationStyle];
      [v13 pushAnimationStyle:v24];

      v25 = [v13 responder];
      v26 = [v31 _shouldAttemptToPreserveInputViewsForResponder:v25];

      if (v26)
      {
        v27 = [MEMORY[0x1E696B098] valueWithPointer:v31];
        [v13 _preserveInputViewsWithId:v27 animated:1];

        v28 = [v13 responder];
        [v28 resignFirstResponder];
      }

      else
      {
        v28 = [v13 responder];
        [v28 _clearBecomeFirstResponderWhenCapable];
      }

      [v13 popAnimationStyle];
      v29 = [v13 responder];

      if (!v29)
      {
        v30 = [MEMORY[0x1E696B098] valueWithPointer:v9];
        [v13 _restoreInputViewsWithId:v30 animated:1];
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
      [v13 popAnimationStyle];
      if (v18)
      {
LABEL_35:
        if (!v15)
        {
          goto LABEL_6;
        }

LABEL_39:
        [v13 _setIgnoresPinning:0 allowImmediateReload:0];
        goto LABEL_6;
      }
    }

    [v13 _endDisablingAnimations];
    if (!v15)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

  if ([v31 _containsFirstResponder])
  {
    v13 = [(UIViewController *)self _keyboardSceneDelegate];
    v14 = [v13 responder];
    [v14 resignFirstResponder];

LABEL_6:
  }

LABEL_12:
}

- (void)transitionConductor:(id)a3 willTransitionFromViewController:(id)a4 toViewController:(id)a5
{
  v12 = a4;
  v7 = a5;
  [(UINavigationController *)self _initializeNavigationDeferredTransitionContextIfNecessary];
  v8 = [(UIViewController *)self _focusSystem];
  if (v12)
  {
    if ([v12 isViewLoaded])
    {
      v9 = [v12 view];
      v10 = [v8 _focusedItemIsContainedInEnvironment:v9 includeSelf:1];

      if (v10)
      {
        v11 = [v8 focusedItem];
        [(UINavigationController *)self _rememberFocusedItem:v11 forViewController:v12];
      }
    }
  }

  [(UINavigationController *)self _ensureToViewControllersViewIsLoaded:v7];
}

- (id)transitionConductor:(id)a3 retargetedToViewControllerForTransitionFromViewController:(id)a4 toViewController:(id)a5 transition:(int)a6
{
  v46 = a3;
  v9 = a4;
  v10 = a5;
  navigationControllerFlags = self->_navigationControllerFlags;
  v12 = (navigationControllerFlags >> 8) & 1;
  v13 = v12;
  v14 = [(UIViewController *)self _appearState];
  v15 = v14 - 3;
  if (v9 == v10 || v15 < 0xFFFFFFFE)
  {
    goto LABEL_18;
  }

  v16 = v14;
  if (v14 == 1)
  {
    v13 = [v46 hostIsAppearingAnimated];
  }

  if ((*&self->_navigationControllerFlags & 0x1000) == 0)
  {
    v17 = v9;
    if ((navigationControllerFlags & 0x100) == 0)
    {
      v17 = v9;
      if ((*&self->_navigationControllerFlags & 0xF0) == 0x20)
      {
        v18 = [v9 parentViewController];

        v17 = v9;
        if (!v18)
        {
          if (v9)
          {
            v20 = v9[192];
            v9[192] = v20 | 0x100;
            [v9 setParentViewController:self];
            v9[192] = v9[192] & 0xFEFF | v20 & 0x100;
            [v9 beginAppearanceTransition:0 animated:v13];
            v21 = v9[192];
            v9[192] = v21 | 0x100;
            [v9 setParentViewController:0];
            v9[192] = v9[192] & 0xFEFF | v21 & 0x100;
            v19 = self->_navigationControllerFlags;
            goto LABEL_16;
          }

          v17 = 0;
        }
      }
    }

    [v17 beginAppearanceTransition:0 animated:v13];
  }

  v19 = self->_navigationControllerFlags;
  if (!v9 && v16 == 1)
  {
    if ((v19 & 0x8000000001000) == 0)
    {
      [v10 __viewWillAppear:v13];
    }

    goto LABEL_18;
  }

LABEL_16:
  if ((v19 & 0x1000) == 0)
  {
    [v10 beginAppearanceTransition:1 animated:v13];
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
    v24 = [(UINavigationController *)self topViewController];
    if (v24)
    {
      [v23 navigationController:self willShowViewController:v24 animated:v12];
    }

    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  v26 = [(UINavigationController *)self topViewController];
  if (v26 == v10)
  {
    v28 = v10;
  }

  else
  {
    do
    {
      v27 = [v10 parentViewController];
      [v10 didMoveToParentViewController:v27];

      [v10 cancelBeginAppearanceTransition];
      [v26 loadViewIfRequired];
      v28 = v26;

      [v28 beginAppearanceTransition:1 animated:v13];
      v26 = [(UINavigationController *)self topViewController];

      if (v26)
      {
        v29 = v25;
      }

      else
      {
        v29 = 0;
      }

      if (v29 == 1)
      {
        [v23 navigationController:self willShowViewController:v26 animated:v12];
      }

      v10 = v28;
    }

    while (v28 != v26);
  }

  [(UINavigationController *)self willShowViewController:v28 animated:v12];
  [(UINavigationController *)self _privateWillShowViewController:v28];
  v30 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  v31 = v30;
  if (v9)
  {
    [v30 setObject:v9 forKey:@"UINavigationControllerLastVisibleViewController"];
  }

  if (!v28)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithBool:v12];
    [v31 setObject:v36 forKey:@"UINavigationControllerTransitionIsAnimated"];

    v34 = [MEMORY[0x1E696AD88] defaultCenter];
    [v34 postNotificationName:@"UINavigationControllerWillShowViewControllerNotification" object:self userInfo:v31];
    goto LABEL_46;
  }

  [v31 setObject:v28 forKey:@"UINavigationControllerNextVisibleViewController"];
  v32 = [MEMORY[0x1E696AD98] numberWithBool:v12];
  [v31 setObject:v32 forKey:@"UINavigationControllerTransitionIsAnimated"];

  v33 = [MEMORY[0x1E696AD88] defaultCenter];
  [v33 postNotificationName:@"UINavigationControllerWillShowViewControllerNotification" object:self userInfo:v31];

  if (a6)
  {
    *&self->_navigationControllerFlags |= 0x200uLL;
    v34 = [(UIViewController *)self _keyboardSceneDelegate];
    v35 = [(UINavigationController *)self _keyboardAnimationStyle];
    [v34 pushAnimationStyle:v35];

LABEL_46:
    goto LABEL_47;
  }

  v34 = [(UINavigationController *)self _window];
  if (([v34 isTrackingKeyboard] & 1) == 0)
  {
    goto LABEL_46;
  }

  v37 = [(UIViewController *)self _keyboardSceneDelegate];
  v38 = [v37 hasTrackingAvailable];

  if ((v38 & 1) == 0)
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
      v34 = [(UINavigationController *)self _window];
      v39 = [v34 _obtainKeyboardLayoutGuideTransitionAssertionForReason:@"UINavigationController unanimated transition"];
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

- (void)transitionConductor:(id)a3 didStartDeferredTransition:(BOOL)a4 context:(id)a5
{
  v6 = a4;
  v41 = a3;
  v8 = a5;
  if (v8 || ([v41 transitionContext], v35 = objc_claimAutoreleasedReturnValue(), v35, !v35))
  {
    if (v6)
    {
      v9 = [v8 fromViewController];
      if ((*&self->_navigationControllerFlags & 0xF0) == 0x20 || (*&self->_navigationControllerFlags & 0x4000000000000) != 0)
      {
        if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_NavigationControllerShouldMaintainOverrideTraitCollectionForPoppingViewController, @"NavigationControllerShouldMaintainOverrideTraitCollectionForPoppingViewController", _UIInternalPreferenceUpdateBool) & 1) != 0 || byte_1ED48AC44)
        {
          v11 = [(UIViewController *)self overrideTraitCollectionForChildViewController:v9];
          overrideTraitCollectionForPoppingViewControler = self->_overrideTraitCollectionForPoppingViewControler;
          self->_overrideTraitCollectionForPoppingViewControler = v11;

          [v9 set_departingParentViewController:self];
        }

        [(UINavigationController *)self removeChildViewController:v9 notifyDidMove:0];
      }

      v13 = [(UINavigationController *)self topViewController];
      v14 = [v13 childModalViewController];

      if (v14)
      {
        v15 = [v13 view];
        v16 = [v15 superview];

        if (v16)
        {
          [v16 bounds];
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v24 = v23;
          v25 = [v13 view];
          [v25 setFrame:{v18, v20, v22, v24}];

          v26 = [v13 presentedViewController];
          v27 = [v26 presentationController];
          v28 = [v27 containerView];
          [v28 setFrame:{v18, v20, v22, v24}];

          v29 = [v13 presentedViewController];
          v30 = [v29 presentationController];
          v31 = [v30 containerView];
          [v16 addSubview:v31];
        }
      }

      [(UINavigationController *)self _notifyTransitionBegan:v8];
    }

    if ((*&self->_navigationControllerFlags & 4) == 0)
    {
      [(UINavigationController *)self _clearLastOperation];
    }

    if (v6)
    {
      v32 = [(UINavigationController *)self topViewController];
      if (_UISolariumEnabled())
      {
        [v32 _invalidateRelevantToolbarItems];
      }
    }

    else
    {
      [(UINavigationController *)self _layoutTopViewController];
      v32 = [(UINavigationController *)self topViewController];
    }

    if ((*&self->_navigationControllerFlags & 2) != 0)
    {
      v33 = [v32 _relevantToolbarItems];
      v34 = [v33 count];

      if (v34)
      {
        if (_UIUnifiedToolbarEnabled())
        {
          if (v6)
          {
            [(UINavigationController *)self _updateFloatingBarContentAnimated:(*&self->_navigationControllerFlags >> 8) & 1];
          }
        }

        else
        {
          v36 = [(UINavigationController *)self _existingToolbar];
          v37 = [(UINavigationController *)self topViewController];
          _updateToolbarForViewControllerAnimated(v36, v37, (*&self->_navigationControllerFlags >> 8) & 1);
        }
      }
    }

    v38 = [(UINavigationController *)self _updateNavigationBarHandler];

    if (v38)
    {
      v39 = [(UINavigationController *)self _updateNavigationBarHandler];
      [(UINavigationController *)self _setUpdateNavigationBarHandler:0];
      v39[2](v39);
      if ([(UINavigationController *)self isInteractiveTransition])
      {
        v40 = [(UINavigationController *)self _navigationBarForNestedNavigationController];
        [v40 _beginInteractiveTransition];
      }
    }

    *&self->_navigationControllerFlags &= ~0x8000000000000000;
  }
}

- (void)transitionConductor:(id)a3 didStartCustomTransitionWithContext:(id)a4
{
  v101 = *MEMORY[0x1E69E9840];
  v72 = a3;
  v80 = a4;
  v6 = [v80 toViewController];
  v81 = [v80 fromViewController];
  v7 = [v81 navigationItem];
  v76 = [v7 _searchControllerIfAllowed];

  if ([v76 isActive])
  {
    [v76 _setTransitioningOutWithoutDisappearing:1];
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
  v15 = [(UINavigationController *)self _outermostNavigationController];
  v15[161] |= 8uLL;

  *&self->_navigationControllerFlags |= 0x20000uLL;
  v16 = [(UIViewController *)self _focusSystem];
  [v16 _lockEnvironment:self];

  LOBYTE(v16) = (*&self->_navigationControllerFlags & 0xF0) != 16;
  v77 = [v80 _transitionCoordinator];
  v78 = [(UIViewController *)self presentedViewController];
  v74 = [v78 activePresentationController];
  v73 = [(_UIViewControllerTransitionConductor *)self->_transitionConductor interactiveTransitionController];
  v17 = v16 ^ 1;
  if (!v78)
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0)
  {
    if ([v74 _shouldDismissWithNavigationPop])
    {
      v18 = [v74 _sourceViewController];
      v19 = [v18 _isMemberOfViewControllerHierarchy:v81];

      if (v19)
      {
        if ((objc_opt_respondsToSelector() & 1) != 0 && [v73 _supportsCoordinatedPresentationDismissal])
        {
          v20 = objc_alloc_init(_UIPresentedViewControllerInteractivePopTransitioningDelegate);
          v21 = [UIViewControllerBuiltinTransitionViewAnimator alloc];
          v22 = [(UIViewController *)self view];
          if ([v22 _shouldReverseLayoutDirection])
          {
            v23 = 1;
          }

          else
          {
            v23 = 2;
          }

          v24 = [(UIViewControllerBuiltinTransitionViewAnimator *)v21 initWithTransition:v23];
          [(_UIPresentedViewControllerInteractivePopTransitioningDelegate *)v20 setAnimator:v24];

          [(_UIPresentedViewControllerInteractivePopTransitioningDelegate *)v20 setInteractor:v73];
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
        v92 = v78;
        v93 = v74;
        v94 = self;
        v88[0] = MEMORY[0x1E69E9820];
        v88[1] = 3221225472;
        v88[2] = __82__UINavigationController_transitionConductor_didStartCustomTransitionWithContext___block_invoke_2;
        v88[3] = &unk_1E70F3B98;
        v89 = v92;
        v25 = v20;
        [v77 animateAlongsideTransition:v90 completion:v88];
      }
    }
  }

  v26 = [(UINavigationController *)self topViewController];
  v27 = v26;
  if (v26 != v6)
  {
    v28 = v26;

    v6 = v28;
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v29 = [(UIViewController *)self mutableChildViewControllers];
  v30 = [v29 countByEnumeratingWithState:&v84 objects:v95 count:16];
  if (v30)
  {
    v31 = *v85;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v85 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = *(*(&v84 + 1) + 8 * i);
        if (v33 != v6 && [*(*(&v84 + 1) + 8 * i) _isContainmentChanging])
        {
          [v33 didMoveToParentViewController:self];
        }
      }

      v30 = [v29 countByEnumeratingWithState:&v84 objects:v95 count:16];
    }

    while (v30);
  }

  v34 = [(UINavigationController *)self _isAppearingOrAppearedCheck];
  if (v34)
  {
    if ((*(&self->_navigationControllerFlags + 1) & 0x10) != 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"custom navigation transition - no popping between different orienations!"];
    }

    [v81 beginAppearanceTransition:0 animated:1];
    [v6 beginAppearanceTransition:1 animated:1];
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
  if (v34)
  {
    if (objc_opt_respondsToSelector())
    {
      v37 = [(UINavigationController *)self topViewController];
      [v36 navigationController:self willShowViewController:v37 animated:1];

      v34 = 1;
    }

    else
    {
      v34 = 0;
    }
  }

  v38 = [(UINavigationController *)self topViewController];

  if (v6 == v38)
  {
    v40 = v6;
  }

  else
  {
    do
    {
      v39 = [v6 parentViewController];
      [v6 didMoveToParentViewController:v39];

      [v6 cancelBeginAppearanceTransition];
      [v38 view];

      v40 = v38;
      [v40 beginAppearanceTransition:1 animated:1];
      if (v34)
      {
        v41 = [(UINavigationController *)self topViewController];
        [v36 navigationController:self willShowViewController:v41 animated:1];
      }

      v38 = [(UINavigationController *)self topViewController];

      v6 = v40;
    }

    while (v40 != v38);
  }

  [(UINavigationController *)self _privateWillShowViewController:v40];
  [(UINavigationController *)self _setDefinesPresentationContextIfNecessaryForViewController:v40];
  v79 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  if (v81)
  {
    [v79 setObject:v81 forKey:@"UINavigationControllerLastVisibleViewController"];
  }

  if (v40)
  {
    [v79 setObject:v40 forKey:@"UINavigationControllerNextVisibleViewController"];
  }

  v42 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v79 setObject:v42 forKey:@"UINavigationControllerTransitionIsAnimated"];

  v43 = [MEMORY[0x1E696AD88] defaultCenter];
  [v43 postNotificationName:@"UINavigationControllerWillShowViewControllerNotification" object:self userInfo:v79];

  if (_UIUnifiedToolbarEnabled())
  {
    [(UINavigationController *)self _updateFloatingBarContentAnimated:1];
    objc_initWeak(&buf, self);
    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = __82__UINavigationController_transitionConductor_didStartCustomTransitionWithContext___block_invoke_3;
    v82[3] = &unk_1E7102C50;
    objc_copyWeak(&v83, &buf);
    [v77 notifyWhenInteractionChangesUsingBlock:v82];
    objc_destroyWeak(&v83);
    objc_destroyWeak(&buf);
  }

  else
  {
    [(UINavigationController *)self _startToolbarTransitionIfNecessary:v80 animated:1];
  }

  [(UINavigationController *)self _startPaletteTransitionIfNecessary:v77 animated:1];
  v44 = [(UINavigationController *)self _outermostNavigationController];
  v45 = [v44 _tabBarControllerEnforcingClass:1];
  v75 = v45;
  if (v45)
  {
    v46 = [v45 _isBarEffectivelyHidden] ^ 1;
  }

  else
  {
    v46 = 0;
  }

  v47 = [v44 _hasPotentiallyChromelessBottomBar];
  navigationControllerFlags = self->_navigationControllerFlags;
  if (!v47)
  {
    *&self->_navigationControllerFlags = navigationControllerFlags & 0x7FFFFFFFFFFFFFFFLL;
    [v80 _setNeedsBottomBarCrossfade:0];
    goto LABEL_66;
  }

  if ((navigationControllerFlags & 0x8000000000000000) != 0)
  {
    v49 = (navigationControllerFlags >> 46) & 1;
    *&self->_navigationControllerFlags = navigationControllerFlags & 0x7FFFFFFFFFFFFFFFLL;
    [v80 _setNeedsBottomBarCrossfade:v49];
    if ((v49 & 1) == 0)
    {
      goto LABEL_66;
    }
  }

  else
  {
    [v80 _setNeedsBottomBarCrossfade:1];
  }

  if (v46)
  {
    [v75 _setSuspendBarBackgroundUpdating:1];
  }

  else
  {
    [v44 _setSuspendToolbarBackgroundUpdating:1];
  }

LABEL_66:
  [(UINavigationController *)self _updateScrollViewFromViewController:v81 toViewController:v40];
  v50 = [(UINavigationController *)self _deferredTransition];
  if (v50)
  {
    v51 = [(UINavigationController *)self _keyboardAnimationStyle];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_75:

      goto LABEL_76;
    }

    *&self->_navigationControllerFlags |= 0x200uLL;
    v52 = [(UINavigationController *)self _window];
    if ([v52 isTrackingKeyboard])
    {
      v53 = [(UIViewController *)self _keyboardSceneDelegate];
      v54 = [v53 hasTrackingAvailable];

      if (v54)
      {
        goto LABEL_74;
      }

      v55 = [(UINavigationController *)self _keyboardScreenEdgeForTransition:v50];
      if ([v51 disableAlongsideView])
      {
        goto LABEL_74;
      }

      v56 = [(UINavigationController *)self _window];
      [v56 moveKeyboardLayoutGuideOverEdge:v55 layoutViews:1];

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

      v52 = [(UINavigationController *)self _window];
      v57 = [v52 _obtainKeyboardLayoutGuideTransitionAssertionForReason:@"UINavigationController custom transition"];
      keyboardLayoutGuideTransitionAssertion = self->_keyboardLayoutGuideTransitionAssertion;
      self->_keyboardLayoutGuideTransitionAssertion = v57;
    }

LABEL_74:
    v59 = [(UIViewController *)self _keyboardSceneDelegate];
    [v59 pushAnimationStyle:v51];

    goto LABEL_75;
  }

LABEL_76:
  v60 = MEMORY[0x1E696AEC0];
  v61 = self;
  v62 = objc_opt_class();
  v63 = NSStringFromClass(v62);
  v64 = [v60 stringWithFormat:@"<%@: %p>", v63, v61];

  v65 = [v60 stringWithFormat:@"UINavigationController transition : %@", v64];

  v66 = [(UIViewController *)v61 view];
  v67 = [v66 window];
  v68 = [(UIWindow *)v67 _acquireOrientationLockAssertionWithReason:v65];
  windowRotationLockAssertion = v61->_windowRotationLockAssertion;
  v61->_windowRotationLockAssertion = v68;

  *&self->_navigationControllerFlags &= ~0x40000000000000uLL;
  [v80 _setPerformingLayoutToLayoutTransition:{-[UINavigationController _isPerformingLayoutToLayoutTransition](v61, "_isPerformingLayoutToLayoutTransition")}];
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

- (void)transitionConductor:(id)a3 didEndCustomTransitionWithContext:(id)a4 didComplete:(BOOL)a5
{
  v5 = a5;
  v48 = a4;
  v7 = [v48 fromViewController];
  v8 = [v48 toViewController];
  v9 = [v48 viewForKey:@"UITransitionContextFromView"];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [v7 view];
  }

  v12 = v11;

  v13 = [v7 navigationItem];
  v14 = [v13 _searchControllerIfAllowed];

  [v14 _setTransitioningOutWithoutDisappearing:0];
  v15 = [v48 _needsBottomBarCrossfade];
  v16 = v48;
  if (v15)
  {
    v17 = [v48 _transitioningBottomBarIsTabBar];
    v18 = [(UINavigationController *)self _outermostNavigationController];
    v19 = [v18 _tabBarControllerEnforcingClass:1];
    v20 = v19;
    if (v17)
    {
      if ([v19 _suspendBarBackgroundUpdating])
      {
        v47 = v12;
        [v20 _setSuspendBarBackgroundUpdating:0];
        v21 = [v18 _viewControllerForObservableScrollView];
        v22 = [v21 _contentOrObservableScrollViewForEdge:4];
        v23 = [v20 tabBar];
        [v20 _updateBackgroundTransitionProgressForScrollView:v22 tabBar:v23 isNavigationTransitionUpdate:1];
LABEL_10:

        v12 = v47;
      }
    }

    else if ([v18 _suspendToolbarBackgroundUpdating])
    {
      v47 = v12;
      [v18 _setSuspendToolbarBackgroundUpdating:0];
      v21 = [v18 _viewControllerForObservableScrollView];
      v22 = [v21 _contentOrObservableScrollViewForEdge:4];
      v23 = [v18 _existingActiveVisibleToolbar];
      [v18 _updateBackgroundTransitionProgressForScrollView:v22 toolbar:v23 isNavigationTransitionUpdate:1];
      goto LABEL_10;
    }

    v16 = v48;
  }

  v24 = [v16 containerView];
  if (v5)
  {
    v25 = [(UINavigationController *)self topViewController];
    [(UINavigationController *)self _didEndTransitionFromView:v12 toView:v24 wasCustom:1];
    [(UINavigationController *)self _setPreferredContentSizeFromChildContentContainer:v25];
  }

  else
  {
    v26 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    v25 = v26;
    if (v7)
    {
      [v26 setObject:v7 forKey:@"UINavigationControllerNextVisibleViewController"];
    }

    if (v8)
    {
      [v25 setObject:v8 forKey:@"UINavigationControllerLastVisibleViewController"];
    }

    v27 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v48, "isAnimated")}];
    [v25 setObject:v27 forKey:@"UINavigationControllerTransitionIsAnimated"];

    v28 = [MEMORY[0x1E696AD88] defaultCenter];
    [v28 postNotificationName:@"UINavigationControllerWillShowViewControllerNotification" object:self userInfo:v25];

    [(UINavigationController *)self _forgetFocusedItemForViewController:v7];
    [(UINavigationController *)self _didCancelTransitionFromViewController:v7 toViewController:v8 wrapperView:v24 wasCustom:1];
  }

  v29 = [(UIViewController *)self _focusSystem];
  [v29 _unlockEnvironment:self];

  overrideTraitCollectionForPoppingViewControler = self->_overrideTraitCollectionForPoppingViewControler;
  self->_overrideTraitCollectionForPoppingViewControler = 0;

  [v7 set_departingParentViewController:0];
  *&self->_navigationControllerFlags &= 0xFFFFFFFFFFF9FFFFLL;
  v31 = [v48 _postInteractiveCompletionHandler];

  if (v31)
  {
    v32 = [v48 _postInteractiveCompletionHandler];
    v32[2]();

    [v48 _setPostInteractiveCompletionHandler:0];
  }

  if ([v48 isInterruptible])
  {
    [(_UIViewControllerTransitionConductor *)self->_transitionConductor setCustomNavigationTransitionDuration:0.0];
    [(UINavigationController *)self setInteractiveTransition:0];
  }

  navigationControllerFlags = self->_navigationControllerFlags;
  if ([v48 _isPerformingLayoutToLayoutTransition])
  {
    v34 = v24;
    v35 = v14;
    v36 = v12;
    v37 = navigationControllerFlags & 0xF0;
    v38 = [v7 view];
    if (v5)
    {
      v39 = [v8 _uiCollectionView];
      v40 = [v39 delegate];

      if (v40 == v7)
      {
        v41 = [v8 _uiCollectionView];
        [v41 setDelegate:v8];
      }

      v42 = v7;
      if (v37 == 16)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v43 = [v7 _uiCollectionView];
      [v38 addSubview:v43];

      v42 = v8;
      if (v37 != 16)
      {
LABEL_31:

        v12 = v36;
        v14 = v35;
        v24 = v34;
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

  [v48 _setTransitionIsInFlight:0];
  [v48 _setInteractor:0];
  [v48 _setAnimator:0];
  [(_UIViewControllerTransitionConductor *)self->_transitionConductor setTransitionController:0];
  [(_UIViewControllerTransitionConductor *)self->_transitionConductor setInteractiveTransitionController:0];
  v44 = [(UINavigationController *)self navigationBar];
  v45 = v44;
  if (v44)
  {
    [v44 _reenableUserInteractionWhenReadyWithContext:v48];
  }

  else
  {
    [v48 _enableInteractionForDisabledViews];
  }

  [(_UIInvalidatable *)self->_windowRotationLockAssertion _invalidate];
  windowRotationLockAssertion = self->_windowRotationLockAssertion;
  self->_windowRotationLockAssertion = 0;

  [(UINavigationController *)self _setUsingBuiltinAnimator:0];
}

- (void)transitionConductor:(id)a3 interactiveTransitionDidUpdateProgress:(double)a4 finish:(BOOL)a5 transitionCompleted:(BOOL)a6 transitionContext:(id)a7
{
  v8 = a6;
  v9 = a5;
  v13 = a3;
  v12 = a7;
  if (v9 && v8)
  {
    [(UINavigationController *)self _finishInteractiveTransition:v12 transitionContext:a4];
  }

  else if (v9)
  {
    [(UINavigationController *)self _cancelInteractiveTransition:v12 transitionContext:a4];
  }

  else
  {
    [(UINavigationController *)self _updateInteractiveTransition:a4];
  }
}

- (CGRect)transitionConductor:(id)a3 frameForViewController:(id)a4
{
  [(UINavigationController *)self _frameForViewController:a4];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)transitionConductor:(id)a3 frameForWrapperViewForViewController:(id)a4
{
  [(UINavigationController *)self _frameForWrapperViewForViewController:a4];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)encodeRestorableStateWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UIViewController *)self childViewControllers];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SChildViewCont.isa, "[UINavigationController(StateRestoration) encodeRestorableStateWithCoder:]", v5);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__UINavigationController_StateRestoration__encodeRestorableStateWithCoder___block_invoke;
  v14[3] = &unk_1E7102C78;
  v7 = v6;
  v15 = v7;
  _UISaveReferencedChildViewControllers(v5, v14);
  if ([(UINavigationController *)self _allowNestedNavigationControllers])
  {
    [v4 encodeBool:1 forKey:@"kAllowsNestedNavigationControllerKey"];
  }

  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SNavigationCon.isa, "[UINavigationController(StateRestoration) encodeRestorableStateWithCoder:]", v7);
  }

  [v4 encodeObject:v7 forKey:@"kUIViewControllerChildrenKey"];
  v8 = [(UINavigationController *)self topViewController];
  if (v8)
  {
    v9 = v8;
    v10 = [(UINavigationController *)self topViewController];
    v11 = [v10 restorationIdentifier];

    if (!v11)
    {
      if (_UIStateRestorationDebugLogEnabled())
      {
        v12 = [(UINavigationController *)self topViewController];
        NSLog(&cfstr_STopViewContro.isa, "[UINavigationController(StateRestoration) encodeRestorableStateWithCoder:]", v12);
      }

      [UIApp ignoreSnapshotOnNextApplicationLaunch];
    }
  }

  v13.receiver = self;
  v13.super_class = UINavigationController;
  [(UIViewController *)&v13 encodeRestorableStateWithCoder:v4];
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

- (void)decodeRestorableStateWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 decodeBoolForKey:@"kAllowsNestedNavigationControllerKey"])
  {
    [(UINavigationController *)self _setAllowNestedNavigationControllers:1];
  }

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"kUIViewControllerChildrenKey"];

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
    v15 = [(UIResponder *)self _restorationIdentifierPath];
    NSLog(&cfstr_SNoChildViewCo.isa, "[UINavigationController(StateRestoration) decodeRestorableStateWithCoder:]", v15, self);
  }

  v16.receiver = self;
  v16.super_class = UINavigationController;
  [(UIResponder *)&v16 decodeRestorableStateWithCoder:v4];
}

- (void)_updateControlledViewsToFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = UINavigationController;
  [(UIViewController *)&v4 _updateControlledViewsToFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(UINavigationController *)self _frameForPalette:self->_topPalette];
  [(_UINavigationControllerPalette *)self->_topPalette setFrame:?];
}

- (CGRect)_frameForPalette:(id)a3
{
  v4 = a3;
  v5 = [v4 boundaryEdge];
  [v4 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  if (v5)
  {
    if (v5 == 5)
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
        v20 = [(UINavigationController *)self _navigationBarForNestedNavigationController];
        [v20 frame];
        v11 = v21;
      }
    }

    else if (v5 == 2)
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
        v15 = [(UINavigationController *)self _navigationBarForNestedNavigationController];
        [v15 frame];
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

- (CGRect)_boundsForPalette:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = [a3 boundaryEdge];
  if (v7)
  {
    if (v7 == 5 || v7 == 2)
    {
      v8 = [(UINavigationController *)self _navigationBarForNestedNavigationController];
      [v8 bounds];
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

- (id)_pinningBarForPalette:(id)a3
{
  v4 = [a3 boundaryEdge];
  if (v4)
  {
    if (v4 == 5 || v4 == 2)
    {
      v4 = [(UINavigationController *)self _navigationBarForNestedNavigationController];
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Palettes currently can only have a top boundary edge or no boundary edge"];
      v4 = 0;
    }
  }

  return v4;
}

- (id)paletteForEdge:(unint64_t)a3 size:(CGSize)a4
{
  v4 = [[UIView alloc] initWithFrame:0.0, 0.0, a4.width, a4.height];
  v5 = [(_UINavigationBarPalette *)[_UINavigationBarBridgingPalette alloc] initWithContentView:v4];

  return v5;
}

- (id)_managedSearchPaletteForEdge:(unint64_t)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = objc_opt_class();

  return [(UINavigationController *)self _paletteForEdge:a3 size:v8 paletteClass:width, height];
}

- (id)_paletteForEdge:(unint64_t)a3 size:(CGSize)a4 paletteClass:(Class)a5
{
  height = a4.height;
  width = a4.width;
  v29 = *MEMORY[0x1E69E9840];
  if (a3 != 2 && a3 != 5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"UINavigationController.m" lineNumber:12556 description:@"Only edge = UIBoundaryEdgeTop and UIBoundaryEdgeTopAbove are currently supported!"];
  }

  v12 = [(objc_class *)a5 isSubclassOfClass:objc_opt_class()];
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

    v25 = NSStringFromClass(a5);
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
    v25 = NSStringFromClass(a5);
    v27 = 138412290;
    v28 = v25;
    _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "DEBUG ASSERTION: Requested to make a palette of a class that isn't a subclass of _UINavigationControllerPalette. Requested class = %@. Making a _UINavigationControllerPalette instead on release builds of UIKit.", &v27, 0xCu);
  }

LABEL_15:
LABEL_16:
  a5 = objc_opt_class();
LABEL_6:
  v13 = [[a5 alloc] _initWithNavigationController:self forEdge:a3];
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

- (void)_installPaletteIntoViewHierarchy:(id)a3
{
  v11 = a3;
  v4 = [(UINavigationController *)self navigationBar];
  v5 = [(UIViewController *)self view];
  if ([v11 boundaryEdge] == 5)
  {
    [v5 insertSubview:v11 aboveSubview:v4];
  }

  else
  {
    paletteClippingView = self->_paletteClippingView;
    if (!paletteClippingView)
    {
      v7 = [_UINavigationControllerPaletteClippingView alloc];
      v8 = [(UIViewController *)self view];
      [v8 bounds];
      v9 = [(UIView *)v7 initWithFrame:?];

      [(UIView *)v9 setAutoresizingMask:18];
      [(UIView *)v9 setPreservesSuperviewLayoutMargins:1];
      [v5 insertSubview:v9 belowSubview:v4];
      v10 = self->_paletteClippingView;
      self->_paletteClippingView = v9;

      paletteClippingView = self->_paletteClippingView;
    }

    [(UIView *)paletteClippingView addSubview:v11];
  }
}

- (void)attachPalette:(id)a3 isPinned:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [v6 setPinned:v4];
  v8 = [(UINavigationController *)self topViewController];
  v7 = [v8 navigationItem];
  [v7 _setBottomPalette:v6];
}

- (void)_detachPalette:(id)a3
{
  v8 = a3;
  v4 = [v8 boundaryEdge];
  v5 = [v8 _pinningBar];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 _setShadowAlpha:{(objc_msgSend(v8, "pinningBarShadowWasHidden") ^ 1)}];
  }

  if ([(UINavigationController *)self isNavigationBarHidden])
  {
    [v8 _setPalettePinningBarHidden:0];
  }

  [v8 removeFromSuperview];
  if (!v4)
  {
    v6 = 1152;
    goto LABEL_11;
  }

  if (v4 == 5 || v4 == 2)
  {
    v6 = 1136;
LABEL_11:
    v7 = *(&self->super.super.super.isa + v6);
    *(&self->super.super.super.isa + v6) = 0;

    goto LABEL_13;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Palettes currently can only have a top boundary edge or no boundary edge"];
LABEL_13:
  [v8 _setAttached:0 didComplete:1];
}

- (id)existingPaletteForEdge:(unint64_t)a3
{
  v3 = [(UINavigationController *)self topViewController];
  v4 = [v3 navigationItem];
  v5 = [v4 _bottomPalette];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (void)detachPalette:(id)a3 isInPaletteTransition:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  v6 = [(UINavigationController *)self _outermostNavigationController];
  v7 = v6;
  if (v6 == self)
  {
    if (self->_topPalette == v11 || self->_freePalette == v11 || ([(UINavigationDeferredTransitionContext *)self->_deferredTransitionContext outgoingTopPalette], v8 = objc_claimAutoreleasedReturnValue(), v8, v8 == v11))
    {
      [(_UINavigationControllerPalette *)v11 _setAttached:0 didComplete:0];
      if (!v4)
      {
        [(UINavigationController *)self _detachPalette:v11];
        if (![(UINavigationController *)self isNavigationBarHidden])
        {
          v9 = [(UINavigationController *)self topViewController];
          [(UINavigationController *)self _computeAndApplyScrollContentInsetDeltaForViewController:v9];
        }
      }

      if ([(_UINavigationControllerPalette *)self->_topPalette _restartPaletteTransitionIfNecessary])
      {
        v10 = [(UIViewController *)self transitionCoordinator];
        [(UINavigationController *)self _startPaletteTransitionIfNecessary:v10 animated:0];
      }
    }
  }

  else
  {
    [(UINavigationController *)v6 detachPalette:v11 isInPaletteTransition:v4];
  }
}

- (void)detachPalette:(id)a3
{
  v11 = a3;
  v4 = [(UINavigationController *)self _outermostNavigationController];
  v5 = v4;
  if (v4 == self)
  {
    v6 = [(UINavigationController *)v4 disappearingViewController];
    v7 = [v6 navigationItem];
    v8 = [v7 _bottomPalette];
    [v8 setPinned:0];

    v9 = [(UINavigationController *)v5 topViewController];
    v10 = [v9 navigationItem];
    [v10 _setBottomPalette:0];
  }

  else
  {
    [(UINavigationController *)v4 detachPalette:v11];
  }
}

- (void)_startPaletteTransitionIfNecessary:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (![(UINavigationController *)self _isNestedNavigationController])
  {
    goto LABEL_5;
  }

  v7 = [(UINavigationController *)self _outermostNavigationController];
  v8 = v7;
  if (v7 == self)
  {

LABEL_5:
    *&self->_navigationControllerFlags &= ~8uLL;
    [(UIView *)self->_paletteClippingView setClipsToBounds:1];
    if ([(UINavigationController *)self isBuiltinTransition])
    {
      v9 = [(UINavigationController *)self isCustomTransition];
    }

    else
    {
      v9 = 0;
    }

    v10 = [(UINavigationController *)self isInteractiveTransition];
    v11 = [(UINavigationController *)self _navigationBarForNestedNavigationController];
    if (!self->_topPalette)
    {
      goto LABEL_63;
    }

    v12 = [(UINavigationController *)self _isNavigationBarVisible];
    v13 = [(_UINavigationControllerPalette *)self->_topPalette isAttached];
    if (v12)
    {
      if (!v13 || ([(UIView *)self->_topPalette superview], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
      {
        if (![(_UINavigationControllerPalette *)self->_topPalette isAttached]|| [(_UINavigationControllerPalette *)self->_topPalette isPinned])
        {
          if ([(_UINavigationControllerPalette *)self->_topPalette isAttached])
          {
            v15 = 0;
            if (v9 && v10)
            {
              [v11 frame];
              MaxY = CGRectGetMaxY(v90);
              v17 = [v11 layer];
              v18 = [v17 presentationLayer];
              [v18 frame];
              v15 = MaxY != CGRectGetMaxY(v91);
            }

            goto LABEL_34;
          }

          goto LABEL_32;
        }

        [(UINavigationController *)self detachPalette:self->_topPalette isInPaletteTransition:1];
LABEL_38:
        v60 = v10;
        [(UINavigationDeferredTransitionContext *)self->_deferredTransitionContext setOutgoingTopPalette:self->_topPalette];
        v23 = 0;
        v61 = 1;
        goto LABEL_39;
      }

      goto LABEL_31;
    }

    if (v13)
    {
      v19 = [(UIView *)self->_topPalette superview];
      if (v19)
      {
        v20 = v19;
        if (![(_UINavigationControllerPalette *)self->_topPalette isPinned]&& [(UINavigationController *)self _isTransitioning])
        {

LABEL_28:
          if (![(_UINavigationControllerPalette *)self->_topPalette isPinned])
          {
            goto LABEL_38;
          }

          v60 = v10;
          v61 = 0;
          v23 = 0;
LABEL_39:
          v62 = v9;
          v42 = [(UIViewController *)self view];
          v43 = [v42 _shouldReverseLayoutDirection];

          if (v43 != ([(UINavigationController *)self lastOperation]== 1))
          {
            v44 = 8;
          }

          else
          {
            v44 = 2;
          }

          v45 = [(UIView *)self->_topPalette superview];
          v46 = v45 == 0;

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
          v53 = v11;
          v54 = v11;
          v76 = v61;
          v77 = v23;
          v78 = v62;
          v73 = v54;
          v75 = v44;
          v79 = v46;
          v55 = _Block_copy(aBlock);
          if (v6 && v4)
          {
            v56 = self->_topPalette;
            v63[0] = MEMORY[0x1E69E9820];
            v63[1] = 3221225472;
            v63[2] = __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_7;
            v63[3] = &unk_1E7102E28;
            v68 = v23;
            v64 = v54;
            v65 = self;
            v69 = v62;
            v66 = v80;
            v67 = v44;
            v70 = v60;
            [v6 animateAlongsideTransitionInView:v56 animation:v63 completion:v55];
            v11 = v53;
            if (self->_transitioningTopPalette)
            {
              v57 = [v6 _alongsideAnimationViews];
              [v57 addObject:self->_transitioningTopPalette];
            }
          }

          else
          {
            [(UINavigationController *)self _positionPaletteHidden:v23 ^ 1u edge:v44];
            v11 = v53;
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

        v21 = [(_UINavigationControllerPalette *)self->_topPalette isVisibleWhenPinningBarIsHidden];

        if (!v21)
        {
          goto LABEL_28;
        }
      }
    }

    if ([(_UINavigationControllerPalette *)self->_topPalette isAttached])
    {
      v22 = [(UIView *)self->_topPalette superview];
      if (v22)
      {
      }

      else if ([(_UINavigationControllerPalette *)self->_topPalette isVisibleWhenPinningBarIsHidden])
      {
LABEL_31:
        v60 = v10;
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
      if (!v6)
      {
LABEL_63:

        goto LABEL_64;
      }

      if (v15)
      {
        v24 = [v11 layer];
        v25 = [v24 presentationLayer];
        [v25 frame];
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
        v85 = v11;
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
        [v6 animateAlongsideTransition:v84 completion:v83];

        goto LABEL_63;
      }

LABEL_62:
      [(_UINavigationControllerPalette *)self->_topPalette _setRestartPaletteTransitionIfNecessary:1];
      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 3221225472;
      v82[2] = __82__UINavigationController__UIPalette___startPaletteTransitionIfNecessary_animated___block_invoke_4;
      v82[3] = &unk_1E70F3B98;
      v82[4] = self;
      [v6 animateAlongsideTransition:0 completion:v82];
      goto LABEL_63;
    }

    v41 = [(UIView *)self->_topPalette superview];

    if (!v41)
    {
      if (!v6)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    goto LABEL_38;
  }

  [(UINavigationController *)v7 _startPaletteTransitionIfNecessary:v6 animated:v4];

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

- (void)_prepareCollectionViewController:(id)a3 forSharingWithCollectionViewController:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = [v10 parentViewController];

  if (v6)
  {
    v7 = [v5 _uiCollectionView];
    v8 = [v10 _uiCollectionView];

    if (v7 != v8)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ is configured to share a different collection view than %@", v10, v5}];
    }
  }

  else
  {
    [v10 _clearSharedView];
    [v10 _setUsesSharedView:1];
    v9 = [v5 _uiCollectionView];
    [v10 _setSharedCollectionView:v9];
  }
}

- (void)_prepareCollectionViewControllerForSharing:(id)a3
{
  v4 = a3;
  v5 = [(UINavigationController *)self topViewController];
  [(UINavigationController *)self _prepareCollectionViewController:v4 forSharingWithCollectionViewController:v5];
}

- (void)_prepareCollectionViewControllers:(id)a3 forSharingInRange:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [v6 firstIndex];
  v8 = [v6 indexGreaterThanIndex:v7];
  v9 = [v17 objectAtIndex:v7];
  v10 = [v9 _uiCollectionView];
  if (v10)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (v9 != v10 && (isKindOfClass & 1) != 0)
    {
      v12 = [v9 _uiCollectionView];
      [v12 setDataSource:v9];

      v13 = [v9 _uiCollectionView];
      [v13 layoutIfNeeded];
    }
  }

  if (v7 != 0x7FFFFFFFFFFFFFFFLL && v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    do
    {
      v14 = [v17 objectAtIndex:v7];
      v15 = [v17 objectAtIndex:v8];
      [(UINavigationController *)self _prepareCollectionViewController:v15 forSharingWithCollectionViewController:v14];
      v16 = [v6 indexGreaterThanIndex:v8];

      v7 = v8;
      v8 = v16;
    }

    while (v16 != 0x7FFFFFFFFFFFFFFFLL);
  }
}

- (id)_effectiveActivityItemsConfiguration
{
  v7.receiver = self;
  v7.super_class = UINavigationController;
  v3 = [(UIResponder *)&v7 _effectiveActivityItemsConfiguration];
  if (!v3)
  {
    v4 = [(UINavigationController *)self viewControllers];
    v5 = [v4 lastObject];

    v3 = [v5 _effectiveActivityItemsConfiguration];
  }

  return v3;
}

@end