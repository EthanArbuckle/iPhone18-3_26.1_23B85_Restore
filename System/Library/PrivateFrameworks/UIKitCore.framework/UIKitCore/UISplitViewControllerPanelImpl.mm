@interface UISplitViewControllerPanelImpl
- (BOOL)_allowMoveToSecondaryOnlyGetIsInForcedOverlayFromGestureOrRestrictedWidth:(BOOL *)a3;
- (BOOL)_alwaysHideSidebarToggleButton;
- (BOOL)_configurationPermitsFluidCloseGestureWithPrimaryShown:(BOOL)a3 supplementaryShown:(BOOL)a4;
- (BOOL)_configurationPermitsFluidOpenGestureWithPrimaryShown:(BOOL)a3 supplementaryShown:(BOOL)a4;
- (BOOL)_disableAutomaticKeyboardBehavior;
- (BOOL)_fluidGestureRecognizerShouldBegin:(id)a3;
- (BOOL)_gestureIsForcingOverlay;
- (BOOL)_hasDoubleSideBar;
- (BOOL)_hasPreferredInterfaceOrientationForPresentation;
- (BOOL)_iPadShouldUseOverlayInCurrentEnvironment;
- (BOOL)_iPhoneShouldUseOverlayInCurrentEnvironment;
- (BOOL)_interfaceIsCompactForWidth:(double)a3;
- (BOOL)_isCollapsed;
- (BOOL)_isCollapsedOrCollapsing;
- (BOOL)_isDisplayModeBarButtonVisible;
- (BOOL)_isExpanding;
- (BOOL)_isPrimaryShown;
- (BOOL)_isRotating;
- (BOOL)_isSecondaryColumnCompactInTotalWidth:(double)a3 withPrimaryColumnWidth:(double)a4 supplementaryColumnWidth:(double)a5;
- (BOOL)_isViewControllerForObservableScrollViewAmbiguous;
- (BOOL)_layoutPrimaryOnRight;
- (BOOL)_scrollViewPreventsGestureForHitView:(id)a3;
- (BOOL)_setPanelConfigurationWithIsPrimaryShown:(BOOL)a3 isSupplementaryShown:(BOOL)a4 shouldUseOverlay:(BOOL)a5 dimMainIfNecessary:(BOOL)a6;
- (BOOL)_setPanelConfigurationWithIsPrimaryShown:(BOOL)a3 shouldUseOverlay:(BOOL)a4;
- (BOOL)_shouldReturnBoundsWidthForColumnWidth;
- (BOOL)_shouldShowNSToolbarSidebarToggle;
- (BOOL)_shouldZeroSafeAreaInsetsForViewController:(id)a3;
- (BOOL)_unspecifiedStyleGestureRecognizerShouldBegin:(id)a3;
- (BOOL)_usePaddingForEdgeInsetsForChildViewController:(id)a3;
- (BOOL)_wantsFloatingSidebar;
- (BOOL)_wantsSideBarImageForOneOverSecondary;
- (BOOL)allowsSecondaryOnlyShortcutButton;
- (BOOL)canTileSidebarColumn:(int64_t)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isCollapsed;
- (BOOL)isShowingColumn:(int64_t)a3;
- (BOOL)panelController:(id)a3 collapseOntoPrimaryViewController:(id)a4;
- (BOOL)panelController:(id)a3 collapsePrimaryViewController:(id)a4 withFallbackSecondaryViewController:(id)a5 onTopOfSupplementaryViewController:(id)a6 transitionCoordinator:(id)a7;
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)prefersInterfaceOrientationLocked;
- (BOOL)prefersPointerLocked;
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3;
- (BOOL)shouldUpdateFocusInContext:(id)a3;
- (CGRect)_frameForChildContentContainer:(id)a3;
- (CGSize)_contentSizeForChildViewController:(id)a3 inPopoverController:(id)a4;
- (CGSize)_defaultViewSizeForResolvingDisplayModeOrSplitBehavior;
- (CGSize)_predictedDetailSizeForPredictedEndState:(id)a3;
- (CGSize)_preferredContentSize;
- (CGSize)_screenSize;
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
- (NSArray)_additionalViewControllersToCheckForUserActivity;
- (NSArray)_allContainedViewControllers;
- (NSArray)_childViewControllersToSendViewWillTransitionToSize;
- (NSArray)_multitaskingDragExclusionRects;
- (NSArray)possibleStates;
- (NSArray)preferredFocusEnvironments;
- (NSArray)viewControllers;
- (NSString)description;
- (UIActivityItemsConfigurationReading)_effectiveActivityItemsConfiguration;
- (UIBarButtonItem)displayModeButtonItem;
- (UIColor)primaryBackgroundColor;
- (UIDimmingView)_primaryDimmingView;
- (UIEdgeInsets)_additionalSidebarSafeAreaInsets;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4;
- (UIEdgeInsets)_tvOSColumnStyleExtraInsetsForChildViewController:(id)a3;
- (UIFocusEnvironment)_overridingPreferredFocusEnvironment;
- (UIPanGestureRecognizer)_fluidSidebarPresentationGestureRecognizer;
- (UIPanGestureRecognizer)_presentationGestureRecognizer;
- (UIResponder)_deepestActionResponder;
- (UIResponder)_primaryContentResponder;
- (UISlidingBarConfiguration)configuration;
- (UISlidingBarState)currentState;
- (UISlidingBarStateRequest)stateRequest;
- (UISplitViewController)splitViewController;
- (UISplitViewControllerDelegate)delegate;
- (UISplitViewControllerPanelImpl)initWithSplitViewController:(id)a3;
- (UIView)preferredFocusedView;
- (UIViewController)_childViewControllerForSpokenContent;
- (UIViewController)_viewControllerForObservableScrollView;
- (UIViewController)childViewControllerForStatusBarStyle;
- (UIViewController)masterViewController;
- (UIViewControllerTransitionCoordinator)transitionCoordinator;
- (_UISplitViewControllerStyle)styleProvider;
- (_UITabContainerView)tabBarHostedView;
- (double)_contentMarginForChildViewController:(id)a3;
- (double)_defaultMaximumPrimaryColumnWidthForSize:(CGSize)a3;
- (double)_defaultMaximumSupplementaryColumnWidthForSize:(CGSize)a3;
- (double)_inspectorDividerPosition;
- (double)_primaryColumnWidthForSize:(CGSize)a3 isCompact:(BOOL)a4 shouldUseOverlay:(BOOL)a5;
- (double)_primaryColumnWidthForSize:(CGSize)a3 shouldUseOverlay:(BOOL)a4;
- (double)_primaryDividerPosition;
- (double)_supplementaryDividerPosition;
- (double)effectiveMinimumPrimaryColumnWidth;
- (double)panelController:(id)a3 expectedWidthForColumnForViewController:(id)a4;
- (double)primaryColumnWidth;
- (double)supplementaryColumnWidth;
- (float)gutterWidth;
- (id)_childContainingSender:(id)a3;
- (id)_columnStyleDelegate;
- (id)_currentPrimaryChildViewController;
- (id)_currentSupplementaryChildViewController;
- (id)_enterFullScreenSymbolImage;
- (id)_fullScreenSymbolImageForDisplayMode:(int64_t)a3;
- (id)_hiddenColumnsInCurrentEnvironmentWithConcreteDisplayMode:(int64_t)a3;
- (id)_leaveFullScreenSymbolImage;
- (id)_navigationBarForSidebarButtonForColumn:(int64_t)a3;
- (id)_navigationBarForSidebarButtonForDisplayMode:(int64_t)a3;
- (id)_navigationController:(id)a3 navigationBarAdditionalActionsForBackButtonMenu:(id)a4;
- (id)_newBarContentAnimationClippingView;
- (id)_nextVisibleViewControllerForResponderAfterChildViewController:(id)a3;
- (id)_orderedPreferredFocusedViewControllers;
- (id)_sidebarChevronSymbolImage;
- (id)_sidebarToggleSymbolImage;
- (id)_topLevelViewControllerForColumn:(int64_t)a3;
- (id)_traitCollectionForChildEnvironment:(id)a3;
- (id)_unspecifiedStyleChildViewControllersToSendViewWillTransitionToSize;
- (id)_unspecifiedStyleViewControllers;
- (id)leadingVisibleViewController;
- (id)navigationControllerForColumn:(int64_t)a3;
- (id)panelController:(id)a3 navigationBarForViewController:(id)a4;
- (id)panelController:(id)a3 separateSecondaryViewControllerFromPrimaryViewController:(id)a4;
- (id)panelController:(id)a3 separateSupplementaryViewControllerFromPrimaryViewController:(id)a4;
- (id)panelController:(id)a3 unspecifiedStyleSeparateSecondaryViewControllerFromPrimaryViewController:(id)a4;
- (id)panelController:(id)a3 willBeginAnimatedTransitionToStateRequest:(id)a4 predictedEndState:(id)a5 predictedDuration:(double)a6;
- (id)panelControllerWillUpdate:(id)a3;
- (id)primaryViewControllerForCollapsingPanelController:(id)a3;
- (id)primaryViewControllerForExpandingPanelController:(id)a3;
- (id)trailingVisibleViewController;
- (id)viewControllerForColumn:(int64_t)a3;
- (int64_t)_columnForMonitoredNavigationController:(id)a3;
- (int64_t)_columnForView:(id)a3 getIsContent:(BOOL *)a4;
- (int64_t)_concreteDisplayModeForCurrentEnvironment;
- (int64_t)_currentInterfaceIdiom;
- (int64_t)_defaultPrimaryOffscreenGestureModeForCurrentIdiom;
- (int64_t)_displayModeForState:(id)a3;
- (int64_t)_effectiveTargetDisplayMode;
- (int64_t)_effectiveTargetDisplayModeForDisplayMode:(int64_t)a3;
- (int64_t)_fullScreenStateForOrientation:(int64_t)a3 viewWidth:(double)a4;
- (int64_t)_greatestAllowedAutohidingDisplayModeInSize:(CGSize)a3;
- (int64_t)_nextTargetDisplayModeForDisplayMode:(int64_t)a3 showMoreIfPossible:(BOOL)a4;
- (int64_t)_svcOrientation;
- (int64_t)_svcViewWindowOrientation;
- (int64_t)_unspecifiedStyleDisplayModeForState:(id)a3;
- (int64_t)allowedDisplayModeForCurrentSplitBehaviorGivenDisplayMode:(int64_t)a3;
- (int64_t)defaultDisplayModeForSize:(CGSize)a3;
- (int64_t)defaultDisplayModeForSplitBehavior:(int64_t)a3;
- (int64_t)displayMode;
- (int64_t)displayModeButtonVisibility;
- (int64_t)preferredCenterStatusBarStyle;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (int64_t)preferredLeadingStatusBarStyle;
- (int64_t)preferredTrafficLightStyle;
- (int64_t)preferredTrailingStatusBarStyle;
- (int64_t)splitBehavior;
- (int64_t)splitBehaviorForSize:(CGSize)a3;
- (int64_t)splitBehaviorInCurrentEnvironment;
- (int64_t)topColumnForCollapsingPanelController:(id)a3;
- (int64_t)userGeneratedDisplayMode;
- (int64_t)validDisplayModeWithAllColumns;
- (uint64_t)_columnForViewController:(char)a3 forceExpandedResult:;
- (unint64_t)_effectivePrimaryRectEdge;
- (unint64_t)preferredScreenEdgesDeferringSystemGestures;
- (unint64_t)supportedInterfaceOrientations;
- (void)_allowingMutationsInDelegateCallback:(id)a3;
- (void)_changeToDisplayMode:(int64_t)a3 fromPreferredDisplayMode:(int64_t)a4;
- (void)_commonInit;
- (void)_didChangeToFirstResponder:(id)a3;
- (void)_didEndSnapshotSession;
- (void)_didUpdateFocusInContext:(id)a3;
- (void)_displayModeBarButtonItemWasUsedForFirstTime:(id)a3;
- (void)_fluidPresentationGestureRecognizerChanged:(id)a3;
- (void)_fluidUpdatePresentationGestureRecognizers;
- (void)_getPrimaryShown:(BOOL *)a3 shouldUseOverlay:(BOOL *)a4;
- (void)_getPrimaryShown:(BOOL *)a3 supplementaryShown:(BOOL *)a4 shouldUseOverlay:(BOOL *)a5 dimMainIfNecessary:(BOOL *)a6;
- (void)_getPrimaryShown:(BOOL *)a3 supplementaryShown:(BOOL *)a4 shouldUseOverlay:(BOOL *)a5 dimMainIfNecessary:(BOOL *)a6 forDisplayMode:(int64_t)a7;
- (void)_handleArrowPress:(id)a3;
- (void)_handleFocusMovementDidFail:(id)a3;
- (void)_initWithCoder:(id)a3;
- (void)_invalidateAllowsTriggeringSidebarKeyCommandAction;
- (void)_marginInfoForChild:(id)a3 leftMargin:(double *)a4 rightMargin:(double *)a5;
- (void)_navigationController:(id)a3 navigationBar:(id)a4 itemBackButtonUpdated:(id)a5;
- (void)_navigationController:(id)a3 navigationBar:(id)a4 topItemUpdatedContentLayout:(id)a5;
- (void)_navigationControllerDidChangeNavigationBarHidden:(id)a3;
- (void)_navigationControllerDidUpdateStack:(id)a3;
- (void)_notifyFluidPresentationGestureDidEnd;
- (void)_notifyFluidPresentationGestureWillBegin;
- (void)_popOverrideOfReportedDisplayMode;
- (void)_popoverController:(id)a3 didChangeFromVisible:(BOOL)a4;
- (void)_popoverController:(id)a3 willChangeToVisible:(BOOL)a4;
- (void)_presentationGestureRecognizerChanged:(id)a3;
- (void)_primaryColumnWidthAffectingPropertyDidChange;
- (void)_pushOverrideOfReportedDisplayMode:(int64_t)a3;
- (void)_revealSecondaryColumnIfNecessary;
- (void)_setAllowsDimmedSecondaryAsDeepestUnambiguousResponder:(BOOL)a3;
- (void)_setDisplayModeButtonItemTitle:(id)a3;
- (void)_setFluidSidebarPresentationGestureRecognizer:(id)a3;
- (void)_setForceDisplayModeBarButtonHidden:(BOOL)a3;
- (void)_setIgnoresSheetContext:(BOOL)a3;
- (void)_setInteractiveSidebarWidth:(double)a3;
- (void)_setNumberOfSidebarColumnsVisibleFromGesture:(unint64_t)a3 withVelocity:(double)a4;
- (void)_setPresentationGestureRecognizer:(id)a3;
- (void)_setPrimaryShownFromGesture:(BOOL)a3 hideAll:(BOOL)a4;
- (void)_setShowsSeparators:(BOOL)a3;
- (void)_setUsesExtraWidePrimaryColumn:(BOOL)a3;
- (void)_setVisibleToggleButtonRequiresPresentsWithGesture:(BOOL)a3;
- (void)_setWantsFloatingSidebar:(BOOL)a3;
- (void)_stopTransitionsInViewController:(id)a3;
- (void)_supplementaryOrPrimaryColumnWidthAffectingPropertyDidChange;
- (void)_tabBarControllerDidChangeSelection:(id)a3;
- (void)_transitionFromDisplayMode:(int64_t)a3 toDisplayMode:(int64_t)a4 updateSplitBehaviorOverrides:(BOOL)a5 userGenerated:(BOOL)a6;
- (void)_triggerDisplayModeAction:(id)a3;
- (void)_triggerSecondaryOnlyShortcutAction:(id)a3;
- (void)_triggerSidebarKeyCommandAction:(id)a3;
- (void)_unspecifiedShowDetailViewController:(id)a3 onTargetVC:(id)a4 sender:(id)a5;
- (void)_unspecifiedStyleChangeToDisplayMode:(int64_t)a3 fromPreferredDisplayMode:(int64_t)a4;
- (void)_unspecifiedStylePanelController:(id)a3 didChangeToState:(id)a4 withSize:(CGSize)a5;
- (void)_unspecifiedStylePresentationGestureRecognizerChanged:(id)a3;
- (void)_unspecifiedStyleSetPrimaryShownFromGesture:(BOOL)a3;
- (void)_unspecifiedStyleSetViewControllers:(id)a3;
- (void)_unspecifiedStyleTriggerDisplayModeAction:(id)a3;
- (void)_unspecifiedStyleUpdateDisplayModeButtonItem;
- (void)_updateAllowsTriggeringSidebarKeyCommandAction;
- (void)_updateChildContentMargins;
- (void)_updateConfigurationBackgroundStyle;
- (void)_updateDimmingView;
- (void)_updateDisplayModeButtonItem;
- (void)_updateDisplayModeButtonItemAndResetForCanceledAnimationWithTransitionCoordinator:(id)a3;
- (void)_updateDisplayModeButtonItemForDisplayMode:(int64_t)a3;
- (void)_updateDisplayModeButtonItemIfNecessaryForChangingNavigationController:(id)a3;
- (void)_updatePresentationGestureRecognizer;
- (void)_updateSplitBehaviorOverridesForTransitionFromDisplayMode:(uint64_t)a1 toDisplayMode:(uint64_t)a2 shouldResizeIfNecessary:(uint64_t)a3;
- (void)_updateTriggerSidebarKeyCommandTitleForNewDisplayMode:(int64_t)a3;
- (void)_validateTriggerSidebarKeyCommand:(id)a3;
- (void)_viewControllerChildViewControllersDidChange:(id)a3;
- (void)_willBeginSnapshotSession;
- (void)_willShowCollapsedDetailViewController:(id)a3 inTargetController:(id)a4;
- (void)animateToRequest:(id)a3;
- (void)callDeprecatedWillHideDelegateCallbackIfNecessary;
- (void)callDeprecatedWillShowDelegateCallbackIfNecessary;
- (void)dealloc;
- (void)decodeRestorableStateWithCoder:(id)a3;
- (void)dimmingViewWasTapped:(id)a3;
- (void)encodeRestorableStateWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)getPrimaryColumnWidth:(double *)a3 supplementaryColumnWidth:(double *)a4 forSize:(CGSize)a5 displayMode:(int64_t)a6 isCompact:(BOOL)a7 shouldUseOverlay:(BOOL)a8;
- (void)getPrimaryColumnWidth:(double *)a3 supplementaryColumnWidth:(double *)a4 forSize:(CGSize)a5 displayMode:(int64_t)a6 shouldUseOverlay:(BOOL)a7;
- (void)getPrimaryColumnWidth:(double *)a3 supplementaryColumnWidth:(double *)a4 forSize:(CGSize)a5 displayMode:(int64_t)a6 splitBehavior:(int64_t)a7 isCompact:(BOOL)a8 shouldUseOverlay:(BOOL)a9;
- (void)hideColumn:(int64_t)a3;
- (void)loadView;
- (void)panelController:(id)a3 adjustLeadingViewController:(id)a4 forKeyboardInfo:(id)a5;
- (void)panelController:(id)a3 adjustTrailingViewController:(id)a4 forKeyboardInfo:(id)a5;
- (void)panelController:(id)a3 animateTransitionToStateRequest:(id)a4 predictedEndState:(id)a5 predictedDuration:(double)a6;
- (void)panelController:(id)a3 collapsePrimaryViewController:(id)a4 withFallbackSecondaryViewController:(id)a5 transitionCoordinator:(id)a6;
- (void)panelController:(id)a3 didChangeToState:(id)a4 withSize:(CGSize)a5;
- (void)panelController:(id)a3 didEndAnimatedTransitionToStateRequest:(id)a4;
- (void)panelController:(id)a3 willBeginAnimationToPrimarySize:(CGSize)a4 supplementarySize:(CGSize)a5 secondarySize:(CGSize)a6;
- (void)panelController:(id)a3 willChangeToState:(id)a4;
- (void)panelControllerDidCollapse:(id)a3;
- (void)panelControllerDidExpand:(id)a3;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)preparePanelControllerForCollapse;
- (void)removeChildViewController:(id)a3;
- (void)sendColumnShowHideNotificationsForNewState:(id)a3 newDisplayMode:(int64_t)a4 oldDisplayMode:(int64_t)a5;
- (void)sendWillHideColumn:(int64_t)a3;
- (void)sendWillShowColumn:(int64_t)a3;
- (void)setConfiguration:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setDisplayModeButtonVisibility:(int64_t)a3;
- (void)setGutterWidth:(float)a3;
- (void)setHidesMasterViewInPortrait:(BOOL)a3;
- (void)setMaximumPrimaryColumnWidth:(double)a3;
- (void)setMaximumSupplementaryColumnWidth:(double)a3;
- (void)setMinimumPrimaryColumnWidth:(double)a3;
- (void)setMinimumSupplementaryColumnWidth:(double)a3;
- (void)setPreferredDisplayMode:(int64_t)a3;
- (void)setPreferredPrimaryColumnWidth:(double)a3;
- (void)setPreferredPrimaryColumnWidthFraction:(double)a3;
- (void)setPreferredSupplementaryColumnWidth:(double)a3;
- (void)setPreferredSupplementaryColumnWidthFraction:(double)a3;
- (void)setPrefersOverlayInRegularWidthPhone:(BOOL)a3;
- (void)setPresentsWithGesture:(BOOL)a3;
- (void)setPrimaryBackgroundStyle:(int64_t)a3;
- (void)setPrimaryEdge:(int64_t)a3;
- (void)setShowsSecondaryOnlyButton:(BOOL)a3;
- (void)setStateRequest:(id)a3;
- (void)setStyle:(int64_t)a3;
- (void)setSupplementaryColumnAdoptsPrimaryBackgroundStyle:(BOOL)a3;
- (void)setUserGeneratedDisplayMode:(int64_t)a3;
- (void)setUsesDeviceOverlayPreferences:(BOOL)a3;
- (void)setView:(id)a3;
- (void)setViewController:(id)a3 forColumn:(int64_t)a4;
- (void)setViewControllers:(id)a3;
- (void)showColumn:(int64_t)a3;
- (void)showDetailViewController:(id)a3 sender:(id)a4;
- (void)showViewController:(id)a3 sender:(id)a4;
- (void)toggleMasterVisible:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)unloadViewForced:(BOOL)a3;
- (void)updatePanelControllerForViewControllerChangeInColumn:(int64_t)a3 alwaysAnimate:(BOOL)a4 shouldUpdateCollapsedNavStack:(BOOL)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation UISplitViewControllerPanelImpl

- (UISplitViewControllerPanelImpl)initWithSplitViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UISplitViewControllerPanelImpl;
  v5 = [(UISplitViewControllerPanelImpl *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_svc, v4);
    v6->_lastNotifiedTopColumnForCollapse = 999;
  }

  return v6;
}

- (void)_commonInit
{
  v3 = [UIPanelController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v5 = [(UIPanelController *)v3 initWithOwningViewController:WeakRetained];
  [(UISplitViewControllerPanelImpl *)self setPanelController:v5];

  v6 = [(UISplitViewControllerPanelImpl *)self panelController];
  [v6 setDelegate:self];

  self->_preferredPrimaryColumnWidthFraction = -3.40282347e38;
  v7 = vdupq_n_s64(0xC7EFFFFFE0000000);
  *&self->_preferredPrimaryColumnWidth = v7;
  *&self->_maximumPrimaryColumnWidth = v7;
  *&self->_preferredSupplementaryColumnWidthFraction = v7;
  self->_maximumSupplementaryColumnWidth = -3.40282347e38;
  self->_primaryEdge = 0;
  v8 = MEMORY[0x1E695DF70];
  v9 = [[_UIHyperpoint alloc] initWithDimensions:1];
  v10 = [[_UIHyperpoint alloc] initWithDimensions:1];
  v11 = [v8 arrayWithObjects:{v9, v10, 0}];
  hyperpoints = self->_hyperpoints;
  self->_hyperpoints = v11;

  v13 = [[_UIHyperregionUnion alloc] initWithDimensions:1];
  regionUnion = self->_regionUnion;
  self->_regionUnion = v13;

  [(_UIHyperregionUnion *)self->_regionUnion _setRegions:self->_hyperpoints];
  v15 = [[_UIHyperrectangle alloc] initWithDimensions:1];
  hyperrectangle = self->_hyperrectangle;
  self->_hyperrectangle = v15;

  v17 = [[_UIHyperInteractor alloc] initWithDimensions:1];
  interactor = self->_interactor;
  self->_interactor = v17;

  v19 = [(_UIHyperInteractor *)self->_interactor _extender];
  extender = self->_extender;
  self->_extender = v19;

  v21 = [(UISplitViewControllerPanelImpl *)self styleProvider];
  [v21 maximumRubberbandingDistance];
  [(_UIHyperConstantExtender *)self->_extender _setMaximumDistance:?];

  v22 = objc_loadWeakRetained(&self->_svc);
  v23 = [v22 traitCollection];
  self->_presentsWithGesture = [v23 userInterfaceIdiom] != 6;

  v24 = dyld_program_sdk_at_least();
  v25 = 0x2000;
  if (!v24)
  {
    v25 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFFFFFFFDFFFLL | v25);
  v26 = +[UISplitViewController _devicePrefersOverlayInRegularWidth];
  v27 = 0x4000;
  if (!v26)
  {
    v27 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFFFFFFFBFFFLL | v27);
  self->_primaryBackgroundStyle = 0;
  self->_lastFocusedChildViewControllerColumn = 999;
  self->__primaryOffscreenGestureMode = [(UISplitViewControllerPanelImpl *)self _defaultPrimaryOffscreenGestureModeForCurrentIdiom];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIFocusMovementDidFailNotification" object:0];

  v4.receiver = self;
  v4.super_class = UISplitViewControllerPanelImpl;
  [(UISplitViewControllerPanelImpl *)&v4 dealloc];
}

- (void)_handleFocusMovementDidFail:(id)a3
{
  if (qword_1ED49D968 != -1)
  {
    dispatch_once(&qword_1ED49D968, &__block_literal_global_1604);
  }
}

- (void)_initWithCoder:(id)a3
{
  v25 = a3;
  if ([v25 containsValueForKey:@"UISplitViewControllerPreferredDisplayMode"])
  {
    self->_preferredDisplayMode = [v25 decodeIntegerForKey:@"UISplitViewControllerPreferredDisplayMode"];
  }

  if ([v25 containsValueForKey:@"UISplitViewControllerPreferredSplitBehavior"])
  {
    self->_preferredSplitBehavior = [v25 decodeIntegerForKey:@"UISplitViewControllerPreferredSplitBehavior"];
  }

  if ([v25 containsValueForKey:@"UISplitViewControllerPreferredPrimaryColumnWidthFraction"])
  {
    [v25 decodeDoubleForKey:@"UISplitViewControllerPreferredPrimaryColumnWidthFraction"];
    self->_preferredPrimaryColumnWidthFraction = v4;
  }

  if ([v25 containsValueForKey:@"UISplitViewControllerPreferredPrimaryColumnWidth"])
  {
    [v25 decodeDoubleForKey:@"UISplitViewControllerPreferredPrimaryColumnWidth"];
    self->_preferredPrimaryColumnWidth = v5;
  }

  if ([v25 containsValueForKey:@"UISplitViewControllerMaximumPrimaryColumnWidth"])
  {
    [v25 decodeDoubleForKey:@"UISplitViewControllerMaximumPrimaryColumnWidth"];
    self->_maximumPrimaryColumnWidth = v6;
  }

  if ([v25 containsValueForKey:@"UISplitViewControllerMinimumPrimaryColumnWidth"])
  {
    [v25 decodeDoubleForKey:@"UISplitViewControllerMinimumPrimaryColumnWidth"];
    self->_minimumPrimaryColumnWidth = v7;
  }

  if ([v25 containsValueForKey:@"UISplitViewControllerPreferredSupplementaryColumnWidthFraction"])
  {
    [v25 decodeDoubleForKey:@"UISplitViewControllerPreferredSupplementaryColumnWidthFraction"];
    self->_preferredSupplementaryColumnWidthFraction = v8;
  }

  if ([v25 containsValueForKey:@"UISplitViewControllerPreferredSupplementaryColumnWidth"])
  {
    [v25 decodeDoubleForKey:@"UISplitViewControllerPreferredSupplementaryColumnWidth"];
    self->_preferredSupplementaryColumnWidth = v9;
  }

  if ([v25 containsValueForKey:@"UISplitViewControllerMaximumSupplementaryColumnWidth"])
  {
    [v25 decodeDoubleForKey:@"UISplitViewControllerMaximumSupplementaryColumnWidth"];
    self->_maximumSupplementaryColumnWidth = v10;
  }

  if ([v25 containsValueForKey:@"UISplitViewControllerMinimumSupplementaryColumnWidth"])
  {
    [v25 decodeDoubleForKey:@"UISplitViewControllerMinimumSupplementaryColumnWidth"];
    self->_minimumSupplementaryColumnWidth = v11;
  }

  if ([v25 containsValueForKey:@"UISplitViewControllerPrimaryEdge"])
  {
    self->_primaryEdge = [v25 decodeIntegerForKey:@"UISplitViewControllerPrimaryEdge"];
  }

  if ([v25 containsValueForKey:@"UISplitViewControllerPresentsWithGesture"])
  {
    self->_presentsWithGesture = [v25 decodeBoolForKey:@"UISplitViewControllerPresentsWithGesture"];
  }

  if ([v25 containsValueForKey:@"UISplitViewControllerShowsSecondaryOnlyButton"])
  {
    v12 = [v25 decodeBoolForKey:@"UISplitViewControllerShowsSecondaryOnlyButton"];
    v13 = 0x8000000;
    if (!v12)
    {
      v13 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFFFFF7FFFFFFLL | v13);
  }

  if ([v25 containsValueForKey:@"UISplitViewControllerUsesDeviceOverlayPreferences"])
  {
    v14 = [v25 decodeBoolForKey:@"UISplitViewControllerUsesDeviceOverlayPreferences"];
    v15 = 0x2000;
    if (!v14)
    {
      v15 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFFFFFFFFDFFFLL | v15);
  }

  if ([v25 containsValueForKey:@"UISplitViewControllerUsesExtraWidePrimaryColumn"])
  {
    v16 = [v25 decodeBoolForKey:@"UISplitViewControllerUsesExtraWidePrimaryColumn"];
    v17 = 4096;
    if (!v16)
    {
      v17 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFFFFFFFFEFFFLL | v17);
  }

  if ([v25 containsValueForKey:@"UISplitViewControllerPrimaryBackgroundStyle"])
  {
    -[UISplitViewControllerPanelImpl setPrimaryBackgroundStyle:](self, "setPrimaryBackgroundStyle:", [v25 decodeIntegerForKey:@"UISplitViewControllerPrimaryBackgroundStyle"]);
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v19 = [WeakRetained childViewControllers];
  v20 = [v19 mutableCopy];

  if ([v25 containsValueForKey:@"UISplitViewControllerStyle"])
  {
    v21 = [v25 decodeIntegerForKey:@"UISplitViewControllerStyle"];
    if ((dyld_program_sdk_at_least() & 1) == 0 && v21 == 1)
    {
      v22 = objc_loadWeakRetained(&self->_svc);
      v23 = [v22 childViewControllers];
      v21 = [v23 count] != 1;
    }

    [(UIPanelController *)self->_panelController setStyle:v21];
  }

  [(UISplitViewControllerPanelImpl *)self setViewControllers:v20];
  if ([v25 containsValueForKey:@"UISplitViewControllerCompactColumnVC"])
  {
    v24 = [v25 decodeObjectForKey:@"UISplitViewControllerCompactColumnVC"];
    [(UISplitViewControllerPanelImpl *)self setViewController:v24 forColumn:3];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  preferredDisplayMode = self->_preferredDisplayMode;
  v10 = v4;
  if (preferredDisplayMode)
  {
    [v4 encodeInteger:preferredDisplayMode forKey:@"UISplitViewControllerPreferredDisplayMode"];
    v4 = v10;
  }

  preferredSplitBehavior = self->_preferredSplitBehavior;
  if (preferredSplitBehavior)
  {
    [v10 encodeInteger:preferredSplitBehavior forKey:@"UISplitViewControllerPreferredSplitBehavior"];
    v4 = v10;
  }

  if (self->_preferredPrimaryColumnWidthFraction != -3.40282347e38)
  {
    [v10 encodeDouble:@"UISplitViewControllerPreferredPrimaryColumnWidthFraction" forKey:?];
    v4 = v10;
  }

  if (self->_preferredPrimaryColumnWidth != -3.40282347e38)
  {
    [v10 encodeDouble:@"UISplitViewControllerPreferredPrimaryColumnWidth" forKey:?];
    v4 = v10;
  }

  if (self->_maximumPrimaryColumnWidth != -3.40282347e38)
  {
    [v10 encodeDouble:@"UISplitViewControllerMaximumPrimaryColumnWidth" forKey:?];
    v4 = v10;
  }

  if (self->_minimumPrimaryColumnWidth != -3.40282347e38)
  {
    [v10 encodeDouble:@"UISplitViewControllerMinimumPrimaryColumnWidth" forKey:?];
    v4 = v10;
  }

  if (self->_preferredSupplementaryColumnWidthFraction != -3.40282347e38)
  {
    [v10 encodeDouble:@"UISplitViewControllerPreferredSupplementaryColumnWidthFraction" forKey:?];
    v4 = v10;
  }

  if (self->_preferredSupplementaryColumnWidth != -3.40282347e38)
  {
    [v10 encodeDouble:@"UISplitViewControllerPreferredSupplementaryColumnWidth" forKey:?];
    v4 = v10;
  }

  if (self->_maximumSupplementaryColumnWidth != -3.40282347e38)
  {
    [v10 encodeDouble:@"UISplitViewControllerMaximumSupplementaryColumnWidth" forKey:?];
    v4 = v10;
  }

  if (self->_minimumSupplementaryColumnWidth != -3.40282347e38)
  {
    [v10 encodeDouble:@"UISplitViewControllerMinimumSupplementaryColumnWidth" forKey:?];
    v4 = v10;
  }

  [v4 encodeInteger:self->_primaryEdge forKey:@"UISplitViewControllerPrimaryEdge"];
  [v10 encodeBool:self->_presentsWithGesture forKey:@"UISplitViewControllerPresentsWithGesture"];
  [v10 encodeBool:(*&self->_flags >> 27) & 1 forKey:@"UISplitViewControllerShowsSecondaryOnlyButton"];
  [v10 encodeBool:(*&self->_flags >> 13) & 1 forKey:@"UISplitViewControllerUsesDeviceOverlayPreferences"];
  [v10 encodeBool:(*&self->_flags >> 12) & 1 forKey:@"UISplitViewControllerUsesExtraWidePrimaryColumn"];
  [v10 encodeInteger:-[UIPanelController style](self->_panelController forKey:{"style"), @"UISplitViewControllerStyle"}];
  primaryBackgroundStyle = self->_primaryBackgroundStyle;
  if (primaryBackgroundStyle)
  {
    [v10 encodeInteger:primaryBackgroundStyle forKey:@"UISplitViewControllerPrimaryBackgroundStyle"];
  }

  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    v8 = [(UISplitViewControllerPanelImpl *)self viewControllerForColumn:3];
    if (v8)
    {
      v9 = v8;
      [v10 encodeObject:v8 forKey:@"UISplitViewControllerCompactColumnVC"];
    }
  }
}

- (id)_unspecifiedStyleViewControllers
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [(UISplitViewControllerPanelImpl *)self panelController];
  v4 = [v3 collapsedViewController];

  if (v4)
  {
    v9[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    v5 = objc_opt_new();
    v6 = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
    if (v6)
    {
      [v5 addObject:v6];
    }

    v7 = [(UISplitViewControllerPanelImpl *)self panelController];
    v4 = [v7 mainViewController];

    if (v4)
    {
      [v5 addObject:v4];
    }
  }

  return v5;
}

- (NSArray)viewControllers
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    v3 = [(UISplitViewControllerPanelImpl *)self panelController];
    v4 = [v3 collapsedViewController];

    if (v4)
    {
      v10[0] = v4;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    }

    else
    {
      v5 = objc_opt_new();
      v6 = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
      if (v6)
      {
        [v5 addObject:v6];
      }

      v7 = [(UISplitViewControllerPanelImpl *)self _currentSupplementaryChildViewController];

      if (v7)
      {
        [v5 addObject:v7];
      }

      v8 = [(UISplitViewControllerPanelImpl *)self panelController];
      v4 = [v8 mainViewController];

      if (v4)
      {
        [v5 addObject:v4];
      }
    }
  }

  else
  {
    v5 = [(UISplitViewControllerPanelImpl *)self _unspecifiedStyleViewControllers];
  }

  return v5;
}

- (void)_unspecifiedStyleSetViewControllers:(id)a3
{
  v16 = a3;
  if ([v16 count])
  {
    v4 = [v16 objectAtIndexedSubscript:0];
  }

  else
  {
    v4 = 0;
  }

  if ([v16 count] < 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v16 objectAtIndexedSubscript:1];
  }

  v6 = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
  v7 = [(UISplitViewControllerPanelImpl *)self panelController];
  v8 = v7;
  if (v6)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = v4;
  }

  [v7 setLeadingViewController:v9];

  v11 = [(UISplitViewControllerPanelImpl *)self panelController];
  [v11 setMainViewController:v5];

  v12 = [(UISplitViewControllerPanelImpl *)self panelController];
  [v12 setTrailingViewController:v10];

  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v14 = [WeakRetained mutableChildViewControllers];

    v15 = [v14 indexOfObjectIdenticalTo:v4];
    if (v15 && v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v14 exchangeObjectAtIndex:v15 withObjectAtIndex:0];
    }
  }
}

- (void)setViewControllers:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UISplitViewControllerPanelImpl *)self style];
  if (!v5)
  {
    [(UISplitViewControllerPanelImpl *)self _unspecifiedStyleSetViewControllers:v4];
    goto LABEL_30;
  }

  v6 = v5;
  v7 = [v4 count];
  v8 = v7;
  if (v7 > 3 || v7 == 1 || v6 != 1 && v7 == 2 || v6 != 2 && v7 == 3)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v10 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_12;
      }

      v11 = _UISplitViewControllerStyleDescription(v6);
      v22 = 134218242;
      v23 = v8;
      v24 = 2112;
      v25 = v11;
      _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Assigning %ld viewControllers in [UISplitViewController setViewControllers:] is not supported by %@ style. Extra view controllers are ignored. Dummy view controllers are inserted for missing ones.", &v22, 0x16u);
LABEL_11:

LABEL_12:
      goto LABEL_13;
    }

    v9 = *(__UILogGetCategoryCachedImpl("Assert", &setViewControllers____s_category_0) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      v11 = _UISplitViewControllerStyleDescription(v6);
      v22 = 134218242;
      v23 = v8;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Assigning %ld viewControllers in [UISplitViewController setViewControllers:] is not supported by %@ style. Extra view controllers are ignored. Dummy view controllers are inserted for missing ones.", &v22, 0x16u);
      goto LABEL_11;
    }
  }

LABEL_13:
  if (v6 == 1)
  {
    if (v8)
    {
      v12 = [v4 objectAtIndexedSubscript:0];
      [(UISplitViewControllerPanelImpl *)self setViewController:v12 forColumn:0];

      if (v8 == 1)
      {
        goto LABEL_28;
      }

      v17 = v4;
      v18 = 1;
LABEL_27:
      v20 = [v17 objectAtIndexedSubscript:v18];
LABEL_29:
      v21 = v20;
      [(UISplitViewControllerPanelImpl *)self setViewController:v20 forColumn:2];

      goto LABEL_30;
    }

    v15 = self;
    v16 = 0;
  }

  else
  {
    if (v8)
    {
      v13 = [v4 objectAtIndexedSubscript:0];
      [(UISplitViewControllerPanelImpl *)self setViewController:v13 forColumn:0];

      if (v8 == 1)
      {
        v14 = objc_alloc_init(UIViewController);
        [(UISplitViewControllerPanelImpl *)self setViewController:v14 forColumn:1];
      }

      else
      {
        v19 = [v4 objectAtIndexedSubscript:1];
        [(UISplitViewControllerPanelImpl *)self setViewController:v19 forColumn:1];

        if (v8 >= 3)
        {
          v17 = v4;
          v18 = 2;
          goto LABEL_27;
        }
      }

LABEL_28:
      v20 = objc_alloc_init(UIViewController);
      goto LABEL_29;
    }

    [(UISplitViewControllerPanelImpl *)self setViewController:0 forColumn:0];
    v15 = self;
    v16 = 1;
  }

  [(UISplitViewControllerPanelImpl *)v15 setViewController:0 forColumn:v16];
  [(UISplitViewControllerPanelImpl *)self setViewController:0 forColumn:2];
LABEL_30:
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v6 = [(UISplitViewControllerPanelImpl *)self _columnStyleDelegate];
    if (v6)
    {
      v7 = objc_opt_respondsToSelector();
      v8 = 0x400000000;
      if ((v7 & 1) == 0)
      {
        v8 = 0;
      }

      self->_flags = (*&self->_flags & 0xFFFFFFFBFFFFFFFFLL | v8);
      v9 = objc_opt_respondsToSelector();
      flags = self->_flags;
      v11 = 0x800000000;
      if ((v9 & 1) == 0)
      {
        v11 = 0;
      }

      self->_flags = (*&flags & 0xFFFFFFF7FFFFFFFFLL | v11);
      if ((v9 & 1) == 0 && (*&flags & 0x400000000) == 0)
      {
        if (objc_opt_respondsToSelector())
        {
          *&self->_flags |= 0x2400000000uLL;
        }

        if (objc_opt_respondsToSelector())
        {
          *&self->_flags |= 0x2800000000uLL;
        }
      }

      v12 = objc_opt_respondsToSelector();
      v13 = 0x4000000000;
      if ((v12 & 1) == 0)
      {
        v13 = 0;
      }

      self->_flags = (*&self->_flags & 0xFFFFFFBFFFFFFFFFLL | v13);
      v14 = objc_opt_respondsToSelector();
      v15 = 0x10000000000;
      if ((v14 & 1) == 0)
      {
        v15 = 0;
      }

      self->_flags = (*&self->_flags & 0xFFFFFEFFFFFFFFFFLL | v15);
      v16 = objc_opt_respondsToSelector();
      v17 = 0x40000000000;
      if ((v16 & 1) == 0)
      {
        v17 = 0;
      }

      self->_flags = (*&self->_flags & 0xFFFFFBFFFFFFFFFFLL | v17);
      v18 = objc_opt_respondsToSelector();
      v19 = 0x80000000000;
      if ((v18 & 1) == 0)
      {
        v19 = 0;
      }

      self->_flags = (*&self->_flags & 0xFFFFF7FFFFFFFFFFLL | v19);
      v20 = objc_opt_respondsToSelector();
      v21 = 0x8000000000;
      if ((v20 & 1) == 0)
      {
        v21 = 0;
      }

      self->_flags = (*&self->_flags & 0xFFFFFF7FFFFFFFFFLL | v21);
      v22 = objc_opt_respondsToSelector();
      v23 = 0x20000000000;
      if ((v22 & 1) == 0)
      {
        v23 = 0;
      }

      v24 = *&self->_flags & 0xFFFFFDFFFFFFFFFFLL | v23;
    }

    else
    {
      v24 = *&self->_flags & 0xFFFFF813FFFFFFFFLL;
    }

    self->_flags = v24;

    v5 = obj;
  }
}

- (id)_columnStyleDelegate
{
  WeakRetained = [(UISplitViewControllerPanelImpl *)self style];
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  return WeakRetained;
}

- (void)setPresentsWithGesture:(BOOL)a3
{
  if (self->_presentsWithGesture != a3)
  {
    self->_presentsWithGesture = a3;
    [(UISplitViewControllerPanelImpl *)self _updatePresentationGestureRecognizer];
    if ([(UISplitViewControllerPanelImpl *)self style])
    {
      if ([(UISplitViewControllerPanelImpl *)self _visibleToggleButtonRequiresPresentsWithGesture])
      {
        [(UISplitViewControllerPanelImpl *)self _updateDisplayModeButtonItem];

        [(UISplitViewControllerPanelImpl *)self _invalidateAllowsTriggeringSidebarKeyCommandAction];
      }
    }
  }
}

- (BOOL)_isExpanding
{
  v2 = [(UISplitViewControllerPanelImpl *)self panelController];
  v3 = [v2 collapsedState] == 3;

  return v3;
}

- (BOOL)isCollapsed
{
  if ((*(&self->_flags + 3) & 0x80) != 0 || (-[UISplitViewControllerPanelImpl panelController](self, "panelController"), v3 = objc_claimAutoreleasedReturnValue(), [v3 currentState], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, !v4))
  {

    return [(UISplitViewControllerPanelImpl *)self _isCollapsed];
  }

  else
  {
    v5 = [(UISplitViewControllerPanelImpl *)self panelController];
    v6 = [v5 currentState];
    v7 = [v6 isCollapsed];

    return v7;
  }
}

- (void)setPreferredDisplayMode:(int64_t)a3
{
  if (self->_preferredDisplayMode | a3)
  {
    self->_preferredDisplayMode = a3;
    [UISplitViewControllerPanelImpl _changeToDisplayMode:"_changeToDisplayMode:fromPreferredDisplayMode:" fromPreferredDisplayMode:?];
    *&self->_flags |= 0x200uLL;
  }
}

- (int64_t)displayMode
{
  if ([(NSMutableArray *)self->_overrideReportedDisplayModeStack count])
  {
    v3 = [(NSMutableArray *)self->_overrideReportedDisplayModeStack lastObject];
    v4 = [v3 integerValue];
  }

  else
  {
    v3 = [(UISplitViewControllerPanelImpl *)self panelController];
    v5 = [v3 currentState];
    v4 = [(UISplitViewControllerPanelImpl *)self _displayModeForState:v5];
  }

  return v4;
}

- (UIBarButtonItem)displayModeButtonItem
{
  v15 = *MEMORY[0x1E69E9840];
  if (![(UISplitViewControllerPanelImpl *)self style])
  {
    v3 = self->_unspecifiedStyleDisplayModeButtonItem;
    if (!self->_unspecifiedStyleDisplayModeButtonItem)
    {
      v4 = [(UIBarButtonItem *)[UISplitViewControllerDisplayModeBarButtonItem alloc] initWithImage:0 landscapeImagePhone:0 style:0 target:self action:sel__triggerDisplayModeAction_];
      unspecifiedStyleDisplayModeButtonItem = self->_unspecifiedStyleDisplayModeButtonItem;
      self->_unspecifiedStyleDisplayModeButtonItem = v4;

      [(UISplitViewControllerDisplayModeBarButtonItem *)self->_unspecifiedStyleDisplayModeButtonItem _setImpl:self];
      v6 = self->_unspecifiedStyleDisplayModeButtonItem;

      v3 = v6;
    }

    if (v3)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v9 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    v10 = _UISplitViewControllerStyleDescription([(UISplitViewControllerPanelImpl *)self style]);
    v13 = 138412290;
    v14 = v10;
    _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "displayModeButtonItem is internally managed and not exposed for %@ style. Returning an empty, disconnected UIBarButtonItem to fulfill the non-null contract.", &v13, 0xCu);
  }

  else
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &displayModeButtonItem___s_category) + 8);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v9 = v8;
    v10 = _UISplitViewControllerStyleDescription([(UISplitViewControllerPanelImpl *)self style]);
    v13 = 138412290;
    v14 = v10;
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "displayModeButtonItem is internally managed and not exposed for %@ style. Returning an empty, disconnected UIBarButtonItem to fulfill the non-null contract.", &v13, 0xCu);
  }

LABEL_10:
LABEL_11:
  v3 = self->_unspecifiedStyleDisplayModeButtonItem;
  if (v3)
  {
LABEL_5:
    v7 = v3;
    goto LABEL_13;
  }

LABEL_12:
  v7 = objc_alloc_init(UIBarButtonItem);
LABEL_13:
  v11 = v7;

  return v11;
}

- (void)setPreferredPrimaryColumnWidthFraction:(double)a3
{
  if (self->_preferredPrimaryColumnWidthFraction != a3)
  {
    self->_preferredPrimaryColumnWidthFraction = a3;
    [(UISplitViewControllerPanelImpl *)self _primaryColumnWidthAffectingPropertyDidChange];
  }
}

- (void)setPreferredPrimaryColumnWidth:(double)a3
{
  if (self->_preferredPrimaryColumnWidth != a3)
  {
    self->_preferredPrimaryColumnWidth = a3;
    [(UISplitViewControllerPanelImpl *)self _primaryColumnWidthAffectingPropertyDidChange];
  }
}

- (void)setMinimumPrimaryColumnWidth:(double)a3
{
  if (self->_minimumPrimaryColumnWidth != a3)
  {
    self->_minimumPrimaryColumnWidth = a3;
    [(UISplitViewControllerPanelImpl *)self _primaryColumnWidthAffectingPropertyDidChange];
  }
}

- (void)setMaximumPrimaryColumnWidth:(double)a3
{
  if (self->_maximumPrimaryColumnWidth != a3)
  {
    self->_maximumPrimaryColumnWidth = a3;
    [(UISplitViewControllerPanelImpl *)self _primaryColumnWidthAffectingPropertyDidChange];
  }
}

- (double)effectiveMinimumPrimaryColumnWidth
{
  [(UISplitViewControllerPanelImpl *)self minimumPrimaryColumnWidth];
  if (result == -3.40282347e38)
  {
    return 0.0;
  }

  return result;
}

- (void)setPreferredSupplementaryColumnWidth:(double)a3
{
  if (self->_preferredSupplementaryColumnWidth != a3)
  {
    self->_preferredSupplementaryColumnWidth = a3;
    dyld_program_sdk_at_least();

    [(UISplitViewControllerPanelImpl *)self _supplementaryOrPrimaryColumnWidthAffectingPropertyDidChange];
  }
}

- (BOOL)_shouldReturnBoundsWidthForColumnWidth
{
  v3 = [(UISplitViewControllerPanelImpl *)self panelController];
  v4 = [v3 currentState];

  v5 = v4 == 0;
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    if (v4)
    {
      v5 = [v4 isCollapsed];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_svc);
      v7 = [WeakRetained traitCollection];
      v5 = [v7 horizontalSizeClass] == 1;
    }
  }

  else if (v4 && ([v4 isCollapsed] & 1) != 0)
  {
    v5 = 1;
  }

  return v5;
}

- (double)primaryColumnWidth
{
  if ([(UISplitViewControllerPanelImpl *)self _shouldReturnBoundsWidthForColumnWidth])
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v4 = [WeakRetained view];
    [v4 bounds];
    v6 = v5;
LABEL_11:

    goto LABEL_12;
  }

  v7 = [(UISplitViewControllerPanelImpl *)self panelController];
  WeakRetained = [v7 currentState];

  v8 = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
  if (v8)
  {
    [WeakRetained leadingWidth];
  }

  else
  {
    [WeakRetained trailingWidth];
  }

  v6 = v9;
  if (v9 <= 0.0)
  {
    v10 = [(UISplitViewControllerPanelImpl *)self panelController];
    v11 = v10;
    if (WeakRetained)
    {
      [v10 possibleStates];
    }

    else
    {
      [v10 uncachedPossibleStates];
    }
    v4 = ;

    v6 = minNonzeroPrimaryWidthInStates(v4, v8);
    goto LABEL_11;
  }

LABEL_12:

  return v6;
}

- (double)supplementaryColumnWidth
{
  MatchingState = 0.0;
  if ([(UISplitViewControllerPanelImpl *)self style]== 2)
  {
    if ([(UISplitViewControllerPanelImpl *)self _shouldReturnBoundsWidthForColumnWidth])
    {
      WeakRetained = objc_loadWeakRetained(&self->_svc);
      v5 = [WeakRetained view];
      [v5 bounds];
      MatchingState = v6;
    }

    else
    {
      v7 = [(UISplitViewControllerPanelImpl *)self panelController];
      WeakRetained = [v7 currentState];

      [WeakRetained supplementaryWidth];
      if (v8 > 0.0)
      {
        MatchingState = v8;
LABEL_14:

        return MatchingState;
      }

      v9 = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
      v10 = [(UISplitViewControllerPanelImpl *)self panelController];
      v11 = v10;
      if (WeakRetained)
      {
        v5 = [v10 possibleStates];

        if (v9)
        {
          [WeakRetained leadingWidth];
        }

        else
        {
          [WeakRetained trailingWidth];
        }

        v13 = fmax(v12, 0.0);
      }

      else
      {
        v5 = [v10 uncachedPossibleStates];

        v13 = minNonzeroPrimaryWidthInStates(v5, v9);
      }

      MatchingState = minNonzeroSupplementaryWidthInStateWithPrimaryWidthGetMatchingState(v5, v9, 0, v13);
    }

    goto LABEL_14;
  }

  return MatchingState;
}

- (void)showViewController:(id)a3 sender:(id)a4
{
  v68 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = [(UISplitViewControllerPanelImpl *)self _childContainingSender:v8];
    if (v9 == v7)
    {
LABEL_38:

      goto LABEL_39;
    }

    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v11 = [(UISplitViewControllerPanelImpl *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v12 = [(UISplitViewControllerPanelImpl *)self style];
      if (v12)
      {
        v13 = v12;
        v14 = *(__UILogGetCategoryCachedImpl("UISplitViewController", &qword_1ED49D888) + 8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = v14;
          v16 = NSStringFromSelector(sel_splitViewController_showViewController_sender_);
          v17 = _UISplitViewControllerStyleDescription(v13);
          *buf = 138543618;
          v65 = v16;
          v66 = 2114;
          v67 = v17;
          _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Skipping delegate callback, %{public}@. Unsupported for UISplitViewController style %{public}@", buf, 0x16u);
        }
      }

      else if ([v11 splitViewController:WeakRetained showViewController:v7 sender:v8])
      {
        goto LABEL_37;
      }
    }

    v18 = [(UISplitViewControllerPanelImpl *)self panelController];
    v19 = [v18 isCollapsed];

    v20 = [(UISplitViewControllerPanelImpl *)self style];
    if (v20)
    {
      v21 = v20;
      v22 = [(UISplitViewControllerPanelImpl *)self _columnForViewController:v7];
      if (v22 == 999)
      {
        v23 = [(UISplitViewControllerPanelImpl *)self _columnForViewController:v9];
        if (v23 == 1)
        {
          v24 = 2;
          goto LABEL_25;
        }

        if (!v23)
        {
          if (v21 == 1)
          {
            v24 = 2;
          }

          else
          {
            v24 = 1;
          }

LABEL_25:
          if ((*(&self->_flags + 3) & 0x10) != 0)
          {
            v60 = MEMORY[0x1E695DF30];
            v59 = *MEMORY[0x1E695D940];
            v44 = NSStringFromSelector(a2);
            v61 = v11;
            v45 = WeakRetained;
            v46 = objc_loadWeakRetained(&self->_svc);
            v47 = [v46 delegate];
            [v60 raise:v59 format:{@"%@ disallowed underneath delegate callback from %@ to %@", v44, v46, v47}];

            WeakRetained = v45;
            v11 = v61;
          }

          [(UISplitViewControllerPanelImpl *)self updatePanelControllerForViewControllerChangeInColumn:v24 alwaysAnimate:1];
          if (v19)
          {
            goto LABEL_37;
          }

          if (v24 == 2)
          {
            [(UISplitViewControllerPanelImpl *)self _revealSecondaryColumnIfNecessary];
          }

          else
          {
            v48 = [(UISplitViewControllerPanelImpl *)self displayMode];
            if ((_UISplitViewControllerColumnIsVisibleForDisplayMode([(UISplitViewControllerPanelImpl *)self style], v24, v48) & 1) == 0)
            {
              v49 = [(UISplitViewControllerPanelImpl *)self _nextTargetDisplayModeForDisplayMode:v48 showMoreIfPossible:1];
              if ((_UISplitViewControllerColumnIsVisibleForDisplayMode([(UISplitViewControllerPanelImpl *)self style], v24, v49) & 1) == 0)
              {
                v49 = [(UISplitViewControllerPanelImpl *)self _nextTargetDisplayModeForDisplayMode:v49 showMoreIfPossible:1];
              }

              if ((_UISplitViewControllerColumnIsVisibleForDisplayMode([(UISplitViewControllerPanelImpl *)self style], v24, v49) & 1) == 0)
              {
                v52 = v11;
                v53 = WeakRetained;
                if (os_variant_has_internal_diagnostics())
                {
                  v57 = __UIFaultDebugAssertLog();
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
                  {
                    v58 = _UISplitViewControllerColumnDescription(v24);
                    *buf = 138412290;
                    v65 = v58;
                    _os_log_fault_impl(&dword_188A29000, v57, OS_LOG_TYPE_FAULT, "UIKit error: Can't find a display mode where %@ column is visible", buf, 0xCu);
                  }
                }

                else
                {
                  v54 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49D890) + 8);
                  if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_37;
                  }

                  v55 = v54;
                  v56 = _UISplitViewControllerColumnDescription(v24);
                  *buf = 138412290;
                  v65 = v56;
                  _os_log_impl(&dword_188A29000, v55, OS_LOG_TYPE_ERROR, "UIKit error: Can't find a display mode where %@ column is visible", buf, 0xCu);

                  WeakRetained = v53;
                }

                v11 = v52;
                goto LABEL_37;
              }

              [(UISplitViewControllerPanelImpl *)self _transitionFromDisplayMode:v48 toDisplayMode:v49];
            }
          }

LABEL_37:

          goto LABEL_38;
        }
      }

      else
      {
        v24 = v22;
        if ((v22 != 3) | v19 & 1)
        {
          goto LABEL_25;
        }
      }

      v33 = *(__UILogGetCategoryCachedImpl("UISplitViewController", &qword_1ED49D898) + 8);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = v11;
        v35 = v33;
        v36 = objc_opt_class();
        NSStringFromClass(v36);
        v38 = v37 = WeakRetained;
        *buf = 138543618;
        v65 = v38;
        v66 = 2050;
        v67 = v37;
        _os_log_impl(&dword_188A29000, v35, OS_LOG_TYPE_ERROR, "Unexpected request to show compact column when UISplitViewController is not collapsed. Using a default presentation. <%{public}@: %{public}p>", buf, 0x16u);

        WeakRetained = v37;
        v11 = v34;
      }
    }

    else if ((v19 & 1) == 0)
    {
      v25 = v11;
      v26 = WeakRetained;
      v27 = objc_loadWeakRetained(&self->_svc);
      v28 = [v27 viewControllers];

      v29 = objc_loadWeakRetained(&self->_svc);
      v30 = [v29 masterViewController];

      if (v30 == v9)
      {
        v63[0] = v7;
        v31 = [v28 objectAtIndexedSubscript:1];
        v63[1] = v31;
        v32 = v63;
      }

      else
      {
        v31 = [v28 objectAtIndexedSubscript:0];
        v62[0] = v31;
        v62[1] = v7;
        v32 = v62;
      }

      v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];

      v51 = objc_loadWeakRetained(&self->_svc);
      [v51 setViewControllers:v50];

      WeakRetained = v26;
      v11 = v25;
      goto LABEL_37;
    }

    if (+[UIView areAnimationsEnabled])
    {
      v39 = v11;
      v40 = objc_loadWeakRetained(&self->_svc);
      [v40 view];
      v42 = v41 = WeakRetained;
      v43 = [v42 window];
      [v41 presentViewController:v7 animated:v43 != 0 completion:0];

      WeakRetained = v41;
      v11 = v39;
    }

    else
    {
      [WeakRetained presentViewController:v7 animated:0 completion:0];
    }

    goto LABEL_37;
  }

LABEL_39:
}

- (void)_unspecifiedShowDetailViewController:(id)a3 onTargetVC:(id)a4 sender:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UISplitViewControllerPanelImpl *)self panelController];
  v12 = [v11 isCollapsed];

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v14 = WeakRetained;
  if ((v12 & 1) == 0)
  {
    v15 = [WeakRetained masterViewController];

    if (v15)
    {
      v25 = v15;
      v26 = v8;
      v16 = MEMORY[0x1E695DEC8];
      v17 = &v25;
      v18 = 2;
    }

    else
    {
      v24 = v8;
      v16 = MEMORY[0x1E695DEC8];
      v17 = &v24;
      v18 = 1;
    }

    v22 = [v16 arrayWithObjects:v17 count:{v18, v24, v25, v26, v27}];
    v23 = objc_loadWeakRetained(&self->_svc);
    [v23 setViewControllers:v22];

    goto LABEL_10;
  }

  [WeakRetained _willShowCollapsedDetailViewController:v8 inTargetController:v9];

  if (![objc_opt_class() doesOverrideViewControllerMethod:sel_showViewController_sender_])
  {
    v15 = objc_loadWeakRetained(&self->_svc);
    if (+[UIView areAnimationsEnabled])
    {
      v19 = objc_loadWeakRetained(&self->_svc);
      v20 = [v19 view];
      v21 = [v20 window];
      [v15 presentViewController:v8 animated:v21 != 0 completion:0];
    }

    else
    {
      [v15 presentViewController:v8 animated:0 completion:0];
    }

LABEL_10:

    goto LABEL_11;
  }

  [v9 showViewController:v8 sender:v10];
LABEL_11:
}

- (void)_revealSecondaryColumnIfNecessary
{
  v3 = [(UISplitViewControllerPanelImpl *)self currentState];
  v4 = [(UISplitViewControllerPanelImpl *)self _displayModeForState:v3];

  if (_UISplitViewControllerColumnIsHiddenOrDimmedForDisplayMode([(UISplitViewControllerPanelImpl *)self style], 2, v4))
  {
    v5 = 2;
    if (v4 != 6)
    {
      v5 = v4;
    }

    if (v4 == 5)
    {
      v5 = 1;
    }

    if (v4 == 3)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    [(UISplitViewControllerPanelImpl *)self _transitionFromDisplayMode:v4 toDisplayMode:v6];
  }
}

- (void)showDetailViewController:(id)a3 sender:(id)a4
{
  v81 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v10 = [WeakRetained detailViewController];
    v11 = [(UISplitViewControllerPanelImpl *)self style];
    v12 = [(UISplitViewControllerPanelImpl *)self panelController];
    v13 = [v12 isCollapsed];

    v14 = [v10 _existingView];
    v15 = [v14 window];

    if (!v15 || v10 == v7)
    {
      if (((v11 != 0) & v13) == 1 && (-[NSMutableDictionary objectForKeyedSubscript:](self->_perColumnViewControllers, "objectForKeyedSubscript:", &unk_1EFE30238), v16 = objc_claimAutoreleasedReturnValue(), [v16 viewController], v17 = objc_claimAutoreleasedReturnValue(), v16, v17))
      {
        v18 = v17;

        v10 = v18;
      }

      else
      {
        v18 = [WeakRetained masterViewController];
      }

      v10 = v18;
    }

    if (v10 == v7)
    {
      goto LABEL_74;
    }

    v70 = v8;
    v69 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      v19 = [(UISplitViewControllerPanelImpl *)self style];
      if (v19)
      {
        v20 = v19;
        v21 = *(__UILogGetCategoryCachedImpl("UISplitViewController", &showDetailViewController_sender____s_category) + 8);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = v21;
          v23 = NSStringFromSelector(sel_splitViewController_showDetailViewController_sender_);
          v24 = _UISplitViewControllerStyleDescription(v20);
          *buf = 138543618;
          v78 = v23;
          v79 = 2114;
          v80 = v24;
          _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "Skipping delegate callback, %{public}@. Unsupported for UISplitViewController style %{public}@", buf, 0x16u);
        }
      }

      else if ([v69 splitViewController:WeakRetained showDetailViewController:v7 sender:v8])
      {
        goto LABEL_73;
      }
    }

    if (v11)
    {
      v8 = v70;
      if ((v13 & 1) == 0)
      {
        if ([(UISplitViewControllerPanelImpl *)self _columnForViewController:v7]== 2)
        {
          [(UISplitViewControllerPanelImpl *)self updatePanelControllerForViewControllerChangeInColumn:2];
        }

        else
        {
          [(UISplitViewControllerPanelImpl *)self setViewController:v7 forColumn:2];
        }

        [(UISplitViewControllerPanelImpl *)self _revealSecondaryColumnIfNecessary];
        goto LABEL_73;
      }

      v25 = [(UISplitViewControllerPanelImpl *)self _columnForViewController:v10];
      if ([(UISplitViewControllerPanelImpl *)self style]== 2)
      {
        v26 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
        v27 = v26 == 0;
      }

      else
      {
        v27 = 0;
      }

      v67 = v27;
      if (v25 - 4 > 0xFFFFFFFFFFFFFFFDLL || v25 == v27)
      {
        if (v25)
        {
LABEL_26:
          if (v25 != 2)
          {
            goto LABEL_35;
          }

          p_perColumnViewControllers = &self->_perColumnViewControllers;
          perColumnViewControllers = self->_perColumnViewControllers;
          v30 = &unk_1EFE30208;
LABEL_32:
          v33 = [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:v30];
          v34 = [v33 navigationControllerWrapper];

          if (v10 == v34)
          {
            v35 = [(NSMutableDictionary *)*p_perColumnViewControllers objectForKeyedSubscript:v30];
            v36 = [v35 navigationController];

            v10 = v36;
          }

          v8 = v70;
          v27 = v67;
LABEL_35:
          if ([v10 _isNavigationController])
          {
            v37 = v10;
          }

          else
          {
            v37 = 0;
          }

          v38 = v37;
          if (!v38)
          {
            if (+[UIView areAnimationsEnabled])
            {
              v46 = objc_loadWeakRetained(&self->_svc);
              v47 = [v46 view];
              v48 = [v47 window];
              [WeakRetained presentViewController:v7 animated:v48 != 0 completion:0];
            }

            else
            {
              [WeakRetained presentViewController:v7 animated:0 completion:0];
            }

LABEL_72:

            goto LABEL_73;
          }

          if ([v7 _isNavigationController])
          {
            [v38 _setAllowNestedNavigationControllers:1];
          }

          if (v25 || v11 != 2)
          {
            v49 = v25 == 1;
            if (v25 >= 2)
            {
              if (v25 == 2)
              {
                v66 = 1;
                goto LABEL_58;
              }

LABEL_57:
              [(UISplitViewControllerPanelImpl *)self sendWillShowColumn:2];
              v66 = 0;
LABEL_58:
              v52 = v7;
              v53 = v52;
              if (v25 == v27)
              {
                v54 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
                [v54 navigationController];
                v55 = v68 = v52;
                v56 = [v55 _existingView];
                v57 = [v56 window];

                v52 = v68;
                v53 = v68;
                if (!v57)
                {
                  [(UISplitViewControllerPanelImpl *)self setViewController:v68 forColumn:2];
                  v58 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
                  v59 = [v58 navigationControllerWrapper];
                  v60 = v59;
                  if (v59)
                  {
                    v53 = v59;
                  }

                  else
                  {
                    v52 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
                    v53 = [v52 navigationController];
                  }

                  if ([v53 _isNavigationController])
                  {
                    [v38 _setAllowNestedNavigationControllers:1];
                  }

                  v52 = v68;
                  if (!v53)
                  {
                    v53 = v68;
                  }
                }
              }

              v61 = [v38 topViewController];

              if (v61 != v53)
              {
                v71[0] = MEMORY[0x1E69E9820];
                v71[1] = 3221225472;
                v71[2] = __66__UISplitViewControllerPanelImpl_showDetailViewController_sender___block_invoke_3;
                v71[3] = &unk_1E70F6228;
                v72 = v10;
                v73 = v53;
                v74 = v70;
                [v38 _executeSplitViewControllerActions:v71];
              }

              if (v66)
              {
                v62 = [_UISplitViewControllerColumnContents alloc];
                v63 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
                v64 = [v63 navigationControllerWrapper];
                v65 = [(_UISplitViewControllerColumnContents *)v62 initWithViewController:v52 navigationController:v38 navigationControllerWrapper:v64];

                [(NSMutableDictionary *)self->_perColumnViewControllers setObject:v65 forKey:&unk_1EFE30208];
              }

              v8 = v70;
              goto LABEL_72;
            }
          }

          else
          {
            v39 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
            v40 = [v39 navigationController];

            v41 = [v38 topViewController];

            if (v41 == v40)
            {
              v49 = 1;
            }

            else
            {
              v42 = [v38 viewControllers];
              v43 = [v42 containsObject:v40];

              if (v43)
              {
                v44 = v76;
                v76[0] = MEMORY[0x1E69E9820];
                v76[1] = 3221225472;
                v45 = __66__UISplitViewControllerPanelImpl_showDetailViewController_sender___block_invoke;
              }

              else
              {
                v44 = v75;
                v75[0] = MEMORY[0x1E69E9820];
                v75[1] = 3221225472;
                v45 = __66__UISplitViewControllerPanelImpl_showDetailViewController_sender___block_invoke_2;
              }

              v44[2] = v45;
              v44[3] = &unk_1E70F35B8;
              v50 = v38;
              v44[4] = v50;
              v44[5] = v40;
              v51 = v40;
              [v50 _executeSplitViewControllerActions:v44];

              v49 = 0;
            }

            v27 = v67;
          }

          [(UISplitViewControllerPanelImpl *)self sendWillHideColumn:v49];
          goto LABEL_57;
        }
      }

      else
      {
        v31 = [MEMORY[0x1E696AAA8] currentHandler];
        v32 = _UISplitViewControllerColumnDescription(v25);
        [v31 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:1531 description:{@"Unexpected target column, %@, for pushing new detail vc, %@, onto UISplitViewController, %@", v32, v7, WeakRetained}];

        v27 = v67;
        if (v25)
        {
          goto LABEL_26;
        }
      }

      p_perColumnViewControllers = &self->_perColumnViewControllers;
      perColumnViewControllers = self->_perColumnViewControllers;
      v30 = &unk_1EFE30220;
      goto LABEL_32;
    }

    v8 = v70;
    [(UISplitViewControllerPanelImpl *)self _unspecifiedShowDetailViewController:v7 onTargetVC:v10 sender:v70];
LABEL_73:

LABEL_74:
  }
}

- (void)setStyle:(int64_t)a3
{
  if ([(UIPanelController *)self->_panelController style]!= a3)
  {
    panelController = self->_panelController;

    [(UIPanelController *)panelController setStyle:a3];
  }
}

- (void)setShowsSecondaryOnlyButton:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (BOOL)_interfaceIsCompactForWidth:(double)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v5 = [WeakRetained traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 6)
  {
    return a3 < 260.0;
  }

  else
  {
    return _UIUserInterfaceSizeClassForWidth(a3) == 1;
  }
}

- (BOOL)_isSecondaryColumnCompactInTotalWidth:(double)a3 withPrimaryColumnWidth:(double)a4 supplementaryColumnWidth:(double)a5
{
  v10 = [(UISplitViewControllerPanelImpl *)self style];
  v11 = v10;
  if ((v10 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = _UISplitViewControllerStyleDescription(v11);
    [v16 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:1643 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v17}];

    v12 = a4;
  }

  else
  {
    v12 = a4;
    if (v10 == 2)
    {
      v13 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];

      if (v13)
      {
        v12 = a4 + a5;
      }

      else
      {
        v12 = a4;
      }
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  if (_UISplitViewControllerWantsPickerBehaviors(WeakRetained))
  {

    if (a4 == 0.0 || a5 == 0.0)
    {
      return 0;
    }
  }

  else
  {
  }

  return [(UISplitViewControllerPanelImpl *)self _interfaceIsCompactForWidth:a3 - v12];
}

- (int64_t)splitBehaviorForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(UISplitViewControllerPanelImpl *)self styleProvider];
  v6 = [v5 splitBehaviorForSize:{width, height}];

  return v6;
}

- (int64_t)splitBehaviorInCurrentEnvironment
{
  v4 = [(UISplitViewControllerPanelImpl *)self style];
  if (v4 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = _UISplitViewControllerStyleDescription(v4);
    [v12 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:1696 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v13}];
  }

  if ([(UISplitViewControllerPanelImpl *)self _gestureIsForcingOverlay])
  {
    return 2;
  }

  v5 = (*&self->_flags >> 18) & 3;
  if (v5)
  {
    return v5;
  }

  if (dyld_program_sdk_at_least())
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v8 = _UISplitViewControllerWantsPickerBehaviors(WeakRetained);

    if (v8)
    {
      if (v4 != 2)
      {
        return 1;
      }

      v9 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
      if (v9)
      {
        v5 = 3;
      }

      else
      {
        v5 = 1;
      }

      return v5;
    }
  }

  if (*(&self->_flags + 1))
  {
    width = self->_transitioningToSize.width;
    height = self->_transitioningToSize.height;
  }

  else
  {
    [(UISplitViewControllerPanelImpl *)self _defaultViewSizeForResolvingDisplayModeOrSplitBehavior];
  }

  return [(UISplitViewControllerPanelImpl *)self splitBehaviorForSize:width, height];
}

- (int64_t)splitBehavior
{
  if (self->_preferredSplitBehavior)
  {
    return self->_preferredSplitBehavior;
  }

  else
  {
    return [(UISplitViewControllerPanelImpl *)self splitBehaviorInCurrentEnvironment];
  }
}

- (int64_t)allowedDisplayModeForCurrentSplitBehaviorGivenDisplayMode:(int64_t)a3
{
  v5 = [(UISplitViewControllerPanelImpl *)self splitBehavior];
  if (!self)
  {
    return 0;
  }

  if ((a3 - 4) >= 3)
  {
    if ((a3 - 2) <= 1)
    {
      if (v5 == 2)
      {
        return 3;
      }

      else if ((*(&self->_flags + 2) & 2) != 0)
      {
        return 3;
      }

      else
      {
        return 2;
      }
    }
  }

  else if (v5 == 2)
  {
    return 5;
  }

  else
  {
    v6 = 4;
    v7 = 6;
    if (v5 != 3)
    {
      v7 = a3;
    }

    if (v5 != 1)
    {
      v6 = v7;
    }

    if ((*(&self->_flags + 2) & 2) != 0)
    {
      return 5;
    }

    else
    {
      return v6;
    }
  }

  return a3;
}

- (void)setViewController:(id)a3 forColumn:(int64_t)a4
{
  v154 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v117 = self;
  v9 = [(UISplitViewControllerPanelImpl *)self _columnForViewController:v8];
  v10 = [v8 _isTabBarController];
  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  v116 = v11;
  v13 = a4 == 2 || a4 == 0;
  if (!v13 || v9 != a4)
  {
    if (v9 == a4)
    {
      goto LABEL_146;
    }

    goto LABEL_41;
  }

  v15 = [v8 navigationController];
  if ([v15 _isCreatedBySplitViewController])
  {
    v5 = a4 == 2;
    v16 = [v8 childViewControllers];
    v17 = [v16 firstObject];
    v4 = [v17 _isNavigationController];

    if (!(v5 & (v4 ^ 1)) || !v116)
    {
      if (v4)
      {
        goto LABEL_41;
      }

      goto LABEL_34;
    }
  }

  else
  {

    if (a4 != 2 || !v116)
    {
      goto LABEL_34;
    }
  }

  v18 = [v116 selectedViewController];
  v19 = [v18 _isNavigationController];
  if (v19)
  {
    v4 = [(NSMutableDictionary *)v117->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
    v20 = [v4 navigationController];
    v5 = v20;
    if (v18 != v20)
    {

      goto LABEL_41;
    }

    if ([v18 _isNavigationController])
    {

      goto LABEL_30;
    }
  }

  else if ([v18 _isNavigationController])
  {
LABEL_30:

    goto LABEL_34;
  }

  v21 = [(NSMutableDictionary *)v117->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
  v22 = [v21 navigationControllerWrapper];

  if (v19)
  {
  }

  if (v116 == v22)
  {
    goto LABEL_41;
  }

LABEL_34:
  perColumnViewControllers = v117->_perColumnViewControllers;
  v24 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v25 = [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:v24];
  v26 = [v25 navigationControllerWrapper];

  if (v26 == v8)
  {
    v27 = [v8 childViewControllers];
    v28 = [v27 count];

    if (v28)
    {
      v148 = 0;
      v29 = [v8 _wrapsNavigationController:&v148];
      v30 = v148;
      if (v30)
      {
        v31 = v29;
      }

      else
      {
        v31 = 0;
      }

      if (v31 != 1)
      {
LABEL_145:

        goto LABEL_146;
      }

      v32 = v117->_perColumnViewControllers;
      v33 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
      v34 = [(NSMutableDictionary *)v32 objectForKeyedSubscript:v33];
      v35 = [v34 navigationController];
      v36 = v30 == v35;

      if (!v36)
      {
LABEL_41:
        v37 = [(UISplitViewControllerPanelImpl *)v117 _isCollapsed];
        v38 = v8;
        if (v37)
        {
          v39 = [(NSMutableDictionary *)v117->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30238];
          v40 = [v39 viewController];
          v112 = v40 == 0;
        }

        else
        {
          v112 = 0;
        }

        v41 = [(NSMutableDictionary *)v117->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30238];
        v42 = [v41 viewController];
        v43 = a4 != 3 && v37;
        if (v42 || !v43)
        {
        }

        else
        {
          v44 = v117->_perColumnViewControllers;
          v45 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
          v46 = [(NSMutableDictionary *)v44 objectForKeyedSubscript:v45];
          v47 = [v46 navigationController];
          if (v47)
          {
            v48 = (v47[94] & 3u) - 1 < 2;

            if (v48)
            {
              if (os_variant_has_internal_diagnostics())
              {
                v105 = __UIFaultDebugAssertLog();
                if (os_log_type_enabled(v105, OS_LOG_TYPE_FAULT))
                {
                  v107 = _UISplitViewControllerColumnDescription(a4);
                  LODWORD(buf) = 138412290;
                  *(&buf + 4) = v107;
                  _os_log_fault_impl(&dword_188A29000, v105, OS_LOG_TYPE_FAULT, "live swap of view controller in the %@ column when collapsed will result in broken UI", &buf, 0xCu);
                }
              }

              else
              {
                v49 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49D8A0) + 8);
                if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                {
                  v50 = v49;
                  v51 = _UISplitViewControllerColumnDescription(a4);
                  LODWORD(buf) = 138412290;
                  *(&buf + 4) = v51;
                  _os_log_impl(&dword_188A29000, v50, OS_LOG_TYPE_ERROR, "live swap of view controller in the %@ column when collapsed will result in broken UI", &buf, 0xCu);
                }
              }
            }
          }

          else
          {
          }
        }

        v52 = 0;
        if (!v38 || a4 == 3)
        {
          v113 = 1;
          v30 = v38;
          v115 = 0;
          goto LABEL_137;
        }

        v147 = 0;
        v53 = [v38 _wrapsNavigationController:&v147];
        v54 = v147;
        v52 = v54;
        if ((v13 & v53 & 1) != 0 || v54 == v38)
        {
          if ((v13 & v53) != 0)
          {
            v115 = v38;
          }

          else
          {
            v115 = 0;
          }

          v30 = [v52 topViewController];

          if (v37 && !a4)
          {
            [v52 _setAllowNestedNavigationControllers:1];
            v70 = [(NSMutableDictionary *)v117->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
            v71 = [v70 navigationController];

            v113 = 1;
            if (v71 && v52 && v71 != v52)
            {
              v72 = [(NSMutableDictionary *)v117->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
              v73 = [v72 navigationController];
              v74 = v73;
              if (v73)
              {
                v75 = v73;
              }

              else
              {
                v114 = [(NSMutableDictionary *)v117->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
                v88 = [v114 navigationControllerWrapper];
                if (v88)
                {
                  v89 = v88;
                  v75 = v88;
                }

                else
                {
                  v97 = [(NSMutableDictionary *)v117->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
                  v75 = [v97 navigationController];

                  v89 = 0;
                }
              }

              *&buf = 0;
              *(&buf + 1) = &buf;
              v150 = 0x3032000000;
              v151 = __Block_byref_object_copy__58;
              v152 = __Block_byref_object_dispose__58;
              v153 = 0;
              v142[0] = MEMORY[0x1E69E9820];
              v142[1] = 3221225472;
              v142[2] = __62__UISplitViewControllerPanelImpl_setViewController_forColumn___block_invoke;
              v142[3] = &unk_1E7103C20;
              p_buf = &buf;
              v71 = v71;
              v143 = v71;
              v98 = v75;
              v144 = v98;
              v145 = v117;
              [v71 _executeSplitViewControllerActions:v142];
              if ([*(*(&buf + 1) + 40) count])
              {
                v139[0] = MEMORY[0x1E69E9820];
                v139[1] = 3221225472;
                v139[2] = __62__UISplitViewControllerPanelImpl_setViewController_forColumn___block_invoke_2;
                v139[3] = &unk_1E70FCDA0;
                v141 = &buf;
                v140 = v52;
                [v140 _executeSplitViewControllerActions:v139];
              }

              _Block_object_dispose(&buf, 8);
              v113 = 1;
            }

            goto LABEL_136;
          }

          v113 = 1;
          goto LABEL_137;
        }

        v55 = v10 ^ 1;
        if (a4 == 2)
        {
          v55 = 1;
        }

        if ((v55 & 1) == 0)
        {
          v56 = MEMORY[0x1E695DF30];
          v57 = _UISplitViewControllerColumnDescription(a4);
          [v56 raise:*MEMORY[0x1E695D940] format:{@"UITabBarController is unsupported as viewController for -[UISplitViewController setViewController:forColumn:] in %@ column", v57}];
        }

        if (v10)
        {
          v58 = [v38 selectedViewController];
          if ([v58 _isNavigationController])
          {
            v59 = v58;

            v60 = [v59 topViewController];
            v52 = v59;
            v115 = v38;
          }

          else
          {
            v115 = 0;
            v60 = v38;
          }

          [v38 _setNotifySplitViewControllerForSelectionChange:1];

          v38 = v60;
        }

        else
        {
          v115 = 0;
        }

        v113 = v52 != 0;
        v61 = v52;
        if (v52 || (v62 = v117->_perColumnViewControllers, [MEMORY[0x1E696AD98] numberWithInteger:a4], v63 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKeyedSubscript:](v62, "objectForKeyedSubscript:", v63), v64 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v64, "navigationController"), v61 = objc_claimAutoreleasedReturnValue(), v64, v63, v61))
        {
          v65 = v52 == 0;
          v52 = v61;
          goto LABEL_79;
        }

        if ((a4 != 2) | v10 & 1)
        {
          if (a4 != 2)
          {
            goto LABEL_91;
          }
        }

        else if (([v38 _isSplitViewController] & 1) == 0)
        {
LABEL_91:
          v76 = objc_alloc_init(UINavigationController);
          [(UINavigationController *)v76 _setCreatedBySplitViewController:1];
          v136[0] = MEMORY[0x1E69E9820];
          v136[1] = 3221225472;
          v136[2] = __62__UISplitViewControllerPanelImpl_setViewController_forColumn___block_invoke_3;
          v136[3] = &unk_1E70F35B8;
          v52 = v76;
          v137 = v52;
          v30 = v38;
          v138 = v30;
          [v52 _executeSplitViewControllerActions:v136];

          v113 = 1;
          if (v52)
          {
            v65 = 0;
LABEL_79:
            v66 = [v52 topViewController];
            v67 = v66 == v38;

            if (!v67)
            {
              if (v65)
              {
                v68 = [v52 _existingView];
                v69 = [v68 window];
                if (v69)
                {
                  v111 = +[UIView _isInAnimationBlockWithAnimationsEnabled];
                }

                else
                {
                  v111 = 0;
                }
              }

              else
              {
                v111 = 0;
              }

              if (a4 == 2)
              {
                v77 = [v52 viewControllers];
                v78 = [v77 containsObject:v38];

                if (v78)
                {
                  v79 = v133;
                  v133[0] = MEMORY[0x1E69E9820];
                  v133[1] = 3221225472;
                  v133[2] = __62__UISplitViewControllerPanelImpl_setViewController_forColumn___block_invoke_4;
                  v133[3] = &unk_1E70F5AF0;
                  v52 = v52;
                  v133[4] = v52;
                  v30 = v38;
                  v134 = v30;
                  v135 = v111;
                  [v52 _executeSplitViewControllerActions:v133];
                }

                else
                {
                  v79 = v130;
                  v130[0] = MEMORY[0x1E69E9820];
                  v130[1] = 3221225472;
                  v130[2] = __62__UISplitViewControllerPanelImpl_setViewController_forColumn___block_invoke_5;
                  v130[3] = &unk_1E70F5AF0;
                  v52 = v52;
                  v130[4] = v52;
                  v30 = v38;
                  v131 = v30;
                  v132 = v111;
                  [v52 _executeSplitViewControllerActions:v130];
                }

                goto LABEL_103;
              }

              if (a4 == 1 || !v37)
              {
                v79 = v127;
                v127[0] = MEMORY[0x1E69E9820];
                v127[1] = 3221225472;
                v127[2] = __62__UISplitViewControllerPanelImpl_setViewController_forColumn___block_invoke_6;
                v127[3] = &unk_1E70F5AF0;
                v52 = v52;
                v127[4] = v52;
                v30 = v38;
                v128 = v30;
                v129 = v111;
                [v52 _executeSplitViewControllerActions:v127];

LABEL_103:
                v71 = v79[4];
LABEL_136:

                goto LABEL_137;
              }

              v80 = [(NSMutableDictionary *)v117->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
              v71 = [v80 navigationController];

              [v52 _setAllowNestedNavigationControllers:1];
              v81 = [v52 viewControllers];
              v110 = [v81 mutableCopy];

              v82 = [(NSMutableDictionary *)v117->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
              v83 = [v82 navigationController];
              v84 = v83;
              if (v83)
              {
                v109 = v83;
              }

              else
              {
                v85 = [(NSMutableDictionary *)v117->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
                v86 = [v85 navigationControllerWrapper];
                v87 = v86;
                if (v86)
                {
                  v109 = v86;
                }

                else
                {
                  v90 = [(NSMutableDictionary *)v117->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
                  v109 = [v90 navigationController];
                }
              }

              if (v71 && v71 != v52)
              {
                *&buf = 0;
                *(&buf + 1) = &buf;
                v150 = 0x3032000000;
                v151 = __Block_byref_object_copy__58;
                v152 = __Block_byref_object_dispose__58;
                v153 = 0;
                v122[0] = MEMORY[0x1E69E9820];
                v122[1] = 3221225472;
                v122[2] = __62__UISplitViewControllerPanelImpl_setViewController_forColumn___block_invoke_7;
                v122[3] = &unk_1E7103C20;
                v126 = &buf;
                v123 = v71;
                v124 = v109;
                v125 = v117;
                [v123 _executeSplitViewControllerActions:v122];
                if ([*(*(&buf + 1) + 40) count])
                {
                  [v110 addObjectsFromArray:*(*(&buf + 1) + 40)];
                }

                _Block_object_dispose(&buf, 8);
                goto LABEL_130;
              }

              if (!v71)
              {
                if (os_variant_has_internal_diagnostics())
                {
                  v108 = __UIFaultDebugAssertLog();
                  if (os_log_type_enabled(v108, OS_LOG_TYPE_FAULT))
                  {
                    LOWORD(buf) = 0;
                    _os_log_fault_impl(&dword_188A29000, v108, OS_LOG_TYPE_FAULT, "Internal logic error setting a view controller for the Primary column", &buf, 2u);
                  }
                }

                else
                {
                  v106 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49D8A8) + 8);
                  if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                  {
                    LOWORD(buf) = 0;
                    _os_log_impl(&dword_188A29000, v106, OS_LOG_TYPE_ERROR, "Internal logic error setting a view controller for the Primary column", &buf, 2u);
                  }
                }

                goto LABEL_130;
              }

              v91 = [v110 indexOfObject:v109];
              v92 = [v110 indexOfObject:v38];
              v93 = [v110 count];
              if (v92 == 0x7FFFFFFFFFFFFFFFLL)
              {
                if (v93)
                {
                  if (v91 != 0 && v91 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v94 = v91 - 1;
                  }

                  else
                  {
                    v94 = 0;
                  }

LABEL_124:
                  [v110 insertObject:v38 atIndex:v94];
LABEL_130:
                  v118[0] = MEMORY[0x1E69E9820];
                  v118[1] = 3221225472;
                  v118[2] = __62__UISplitViewControllerPanelImpl_setViewController_forColumn___block_invoke_248;
                  v118[3] = &unk_1E70F5AF0;
                  v52 = v52;
                  v119 = v52;
                  v120 = v110;
                  v121 = v111;
                  v96 = v110;
                  [v52 _executeSplitViewControllerActions:v118];

                  v30 = v38;
                  goto LABEL_136;
                }
              }

              else
              {
                [v110 removeObjectAtIndex:v92];
                if (v91 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v95 = [v110 indexOfObject:v109];
                  if (v95 != 0 && v95 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v94 = v95 - 1;
                  }

                  else
                  {
                    v94 = 0;
                  }

                  goto LABEL_124;
                }
              }

              [v110 addObject:v38];
              goto LABEL_130;
            }

            goto LABEL_106;
          }

LABEL_137:
          v99 = v117->_perColumnViewControllers;
          if (!v99)
          {
            v100 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v101 = v117->_perColumnViewControllers;
            v117->_perColumnViewControllers = v100;

            v99 = v117->_perColumnViewControllers;
          }

          if (v52 | v30)
          {
            v102 = [[_UISplitViewControllerColumnContents alloc] initWithViewController:v30 navigationController:v52 navigationControllerWrapper:v115];
            v103 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
            [(NSMutableDictionary *)v99 setObject:v102 forKey:v103];
          }

          else
          {
            v102 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
            [(NSMutableDictionary *)v99 removeObjectForKey:v102];
          }

          if (v113)
          {
            [(UISplitViewControllerPanelImpl *)v117 updatePanelControllerForViewControllerChangeInColumn:a4 alwaysAnimate:0 shouldUpdateCollapsedNavStack:((a4 - 3) < 0xFFFFFFFFFFFFFFFELL) & v112];
          }

          WeakRetained = objc_loadWeakRetained(&v117->_svc);
          [WeakRetained _didChangeDeepestActionResponder];

          goto LABEL_145;
        }

        v52 = 0;
        v113 = 1;
LABEL_106:
        v30 = v38;
        goto LABEL_137;
      }
    }
  }

LABEL_146:
}

void __62__UISplitViewControllerPanelImpl_setViewController_forColumn___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  WeakRetained = objc_loadWeakRetained((a1[6] + 16));
  v4 = [v2 _separateViewControllersAfterAndIncludingViewController:v3 forSplitViewController:WeakRetained];
  v5 = *(a1[7] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __62__UISplitViewControllerPanelImpl_setViewController_forColumn___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(*(a1 + 40) + 8) + 40);
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

        [*(a1 + 32) pushViewController:*(*(&v7 + 1) + 8 * v6++) animated:{0, v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void __62__UISplitViewControllerPanelImpl_setViewController_forColumn___block_invoke_6(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4[0] = *(a1 + 40);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [v2 setViewControllers:v3 animated:*(a1 + 48)];
}

void __62__UISplitViewControllerPanelImpl_setViewController_forColumn___block_invoke_7(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  WeakRetained = objc_loadWeakRetained((a1[6] + 16));
  v4 = [v2 _separateViewControllersAfterAndIncludingViewController:v3 forSplitViewController:WeakRetained];
  v5 = *(a1[7] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)viewControllerForColumn:(int64_t)a3
{
  perColumnViewControllers = self->_perColumnViewControllers;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:v4];

  v6 = [v5 navigationController];
  v7 = [v5 navigationControllerWrapper];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else if (v6 && ![v6 _isCreatedBySplitViewController])
  {
    v9 = v6;
  }

  else
  {
    v9 = [v5 viewController];
  }

  v10 = v9;

  return v10;
}

- (void)hideColumn:(int64_t)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = [(UISplitViewControllerPanelImpl *)self style];
  if ((v6 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    v39 = _UISplitViewControllerStyleDescription(v6);
    [v38 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:1996 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v39}];
  }

  if (a3 == 1)
  {
    if (v6 != 2)
    {
      return;
    }
  }

  else
  {
    if (a3 != 3)
    {
      v7 = a3 == 0;
      if (!a3 && v6 == 2)
      {
        v8 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];

        if (!v8)
        {
          return;
        }

        v7 = 1;
      }

      goto LABEL_11;
    }

    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:1997 description:{@"Can't hide %@ column", @"Compact"}];
  }

  v7 = 0;
LABEL_11:
  *&self->_flags |= 0x1000000000uLL;
  v9 = [(UISplitViewControllerPanelImpl *)self _isCollapsed];
  v10 = [(UIPanelController *)self->_panelController collapsedState];
  v11 = v10;
  if (v9 || v10 == 1)
  {
    if (v6 == 2)
    {
      v23 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
      v24 = v23 == 0;
    }

    else
    {
      v24 = 0;
    }

    perColumnViewControllers = self->_perColumnViewControllers;
    v26 = [MEMORY[0x1E696AD98] numberWithInteger:v24];
    v27 = [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:v26];
    v28 = [v27 navigationController];

    v29 = [v28 topViewController];
    v30 = [(UISplitViewControllerPanelImpl *)self _columnForViewController:v29];

    if (v24 != a3 && v30 == a3)
    {
      if ((*(&self->_flags + 3) & 0x20) != 0)
      {
        v34 = *(__UILogGetCategoryCachedImpl("UISplitViewController", &qword_1ED49D8B0) + 8);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = v34;
          v36 = _UISplitViewControllerColumnDescription(a3);
          *buf = 138543362;
          v44 = v36;
          _os_log_impl(&dword_188A29000, v35, OS_LOG_TYPE_ERROR, "Hiding %{public}@ column underneath -splitViewController:topColumnForProposedTopColumn: is ignored. The delegate method implementation should return the desired top column instead.", buf, 0xCu);
        }
      }

      else
      {
        if (v11 == 1)
        {
          v31 = *(__UILogGetCategoryCachedImpl("UISplitViewController", &qword_1ED49D8B8) + 8);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v32 = v31;
            v33 = _UISplitViewControllerColumnDescription(a3);
            *buf = 138543362;
            v44 = v33;
            _os_log_impl(&dword_188A29000, v32, OS_LOG_TYPE_ERROR, "Hiding %{public}@ column before UISplitViewController has finished collapsing can result in inconsistent state. This is a client bug.", buf, 0xCu);
          }
        }

        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __45__UISplitViewControllerPanelImpl_hideColumn___block_invoke;
        v40[3] = &unk_1E70F35B8;
        v41 = v28;
        v42 = self;
        [v41 _executeSplitViewControllerActions:v40];
      }
    }
  }

  else if (a3 != 2)
  {
    v12 = [(UISplitViewControllerPanelImpl *)self displayMode];
    IsVisibleForDisplayMode = _UISplitViewControllerColumnIsVisibleForDisplayMode(v6, a3, v12);
    v14 = 1;
    if (v6 == 2 && v7)
    {
      v14 = 2;
    }

    if (IsVisibleForDisplayMode)
    {
      v15 = v14;
    }

    else
    {
      v15 = v12;
    }

    if (v12 != v15 && (*&self->_flags & 0x40000000) != 0)
    {
      v16 = *(__UILogGetCategoryCachedImpl("UISplitViewController", &qword_1ED49D8C0) + 8);
      v15 = v12;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = v16;
        v18 = _UISplitViewControllerColumnDescription(a3);
        *buf = 138543362;
        v44 = v18;
        _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "Hiding %{public}@ column underneath -splitViewController:displayModeForExpandingToProposedDisplayMode: is ignored. The delegate method implementation should return the desired displayMode instead.", buf, 0xCu);

        v15 = v12;
      }
    }

    v19 = [(UIPanelController *)self->_panelController collapsedState];
    if (v12 != v15 && v19 == 3)
    {
      v20 = *(__UILogGetCategoryCachedImpl("UISplitViewController", &qword_1ED49D8C8) + 8);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = v20;
        v22 = _UISplitViewControllerColumnDescription(a3);
        *buf = 138543362;
        v44 = v22;
        _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "Hiding %{public}@ column before UISplitViewController has finished expanding can result in inconsistent state. This is a client bug.", buf, 0xCu);
      }
    }

    if (v12 != v15)
    {
      [(UISplitViewControllerPanelImpl *)self _transitionFromDisplayMode:v12 toDisplayMode:v15];
    }
  }

  *&self->_flags &= ~0x1000000000uLL;
}

void __45__UISplitViewControllerPanelImpl_hideColumn___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (+[UIView areAnimationsEnabled])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
    v3 = [WeakRetained view];
    v4 = [v3 window];
    v5 = [v2 popViewControllerAnimated:v4 != 0];
  }

  else
  {
    v6 = [v2 popViewControllerAnimated:0];
  }
}

- (void)showColumn:(int64_t)a3
{
  v48[1] = *MEMORY[0x1E69E9840];
  v6 = [(UISplitViewControllerPanelImpl *)self style];
  if (v6 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    v38 = _UISplitViewControllerStyleDescription(v6);
    [v37 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2049 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v38}];
  }

  if (a3 == 3)
  {
    v39 = [MEMORY[0x1E696AAA8] currentHandler];
    [v39 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2050 description:{@"Can't show %@ column", @"Compact"}];

    v7 = 0;
  }

  else
  {
    v7 = a3 == 1;
    if (v6 != 2 && a3 == 1)
    {
      return;
    }
  }

  if (v6 != 2 || ([(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220], v8 = objc_claimAutoreleasedReturnValue(), v8, a3) || v8)
  {
    *&self->_flags |= 0x1000000000uLL;
    if (![(UISplitViewControllerPanelImpl *)self _isCollapsed])
    {
      if (a3 == 2)
      {
        [(UISplitViewControllerPanelImpl *)self _revealSecondaryColumnIfNecessary];
      }

      else
      {
        v20 = [(UISplitViewControllerPanelImpl *)self displayMode];
        if ((_UISplitViewControllerColumnIsVisibleForDisplayMode([(UISplitViewControllerPanelImpl *)self style], a3, v20) & 1) == 0)
        {
          v21 = v6 != 2 && a3 == 0;
          v22 = 4;
          if (v21)
          {
            v22 = 2;
          }

          if (v7)
          {
            v23 = 2;
          }

          else
          {
            v23 = v22;
          }

          [(UISplitViewControllerPanelImpl *)self _transitionFromDisplayMode:v20 toDisplayMode:v23];
        }
      }

      goto LABEL_18;
    }

    if (v6 == 2)
    {
      v9 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
      v10 = v9 == 0;
    }

    else
    {
      v10 = 0;
    }

    perColumnViewControllers = self->_perColumnViewControllers;
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
    v13 = [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:v12];
    v14 = [v13 navigationController];

    v15 = [v14 viewControllers];
    v16 = [v15 count];
    v17 = [v14 topViewController];
    v18 = [(UISplitViewControllerPanelImpl *)self _columnForViewController:v17];

    if (v18 == a3)
    {
      goto LABEL_16;
    }

    if (a3 != 2)
    {
      if (a3 == 1)
      {
        if (v18 == 2)
        {
          v24 = self->_perColumnViewControllers;
          goto LABEL_51;
        }

        if (!v18)
        {
          v27 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
          v28 = [v27 navigationController];
          v48[0] = v28;
          v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];

          v29 = v16 + 1;
          goto LABEL_55;
        }
      }

      else if (!a3)
      {
        v24 = self->_perColumnViewControllers;
        if (v6 == 2)
        {
          v25 = [(NSMutableDictionary *)v24 objectForKeyedSubscript:&unk_1EFE30250];
          v26 = [v25 navigationController];
          goto LABEL_52;
        }

LABEL_51:
        v25 = [(NSMutableDictionary *)v24 objectForKeyedSubscript:&unk_1EFE30208];
        v26 = [v25 navigationControllerWrapper];
        if (!v26)
        {
          v35 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
          v36 = [v35 navigationController];
          v29 = [v15 indexOfObject:v36];

          goto LABEL_54;
        }

LABEL_52:
        v29 = [v15 indexOfObject:v26];
LABEL_54:

        v19 = 0;
LABEL_55:
        if (v29)
        {
          if (v29 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v41[0] = MEMORY[0x1E69E9820];
            v41[1] = 3221225472;
            v41[2] = __45__UISplitViewControllerPanelImpl_showColumn___block_invoke;
            v41[3] = &unk_1E7103E40;
            v41[4] = self;
            v44 = v29;
            v45 = v16;
            v42 = v14;
            v19 = v19;
            v43 = v19;
            [v42 _executeSplitViewControllerActions:v41];
          }
        }

        goto LABEL_17;
      }

LABEL_16:
      v19 = 0;
LABEL_17:

LABEL_18:
      *&self->_flags &= ~0x1000000000uLL;
      return;
    }

    v30 = self->_perColumnViewControllers;
    if (v6 != 2 || v18)
    {
      v31 = [(NSMutableDictionary *)v30 objectForKeyedSubscript:&unk_1EFE30208];
      v32 = [v31 navigationControllerWrapper];
      v33 = v32;
      if (!v32)
      {
        v17 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
        v33 = [v17 navigationController];
      }

      v46 = v33;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
      if (v32)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v31 = [(NSMutableDictionary *)v30 objectForKeyedSubscript:&unk_1EFE30250];
      v32 = [v31 navigationController];
      v47[0] = v32;
      v17 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
      v33 = [v17 navigationControllerWrapper];
      v34 = v33;
      if (!v33)
      {
        v40 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
        v34 = [v40 navigationController];
      }

      v47[1] = v34;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
      if (!v33)
      {
      }
    }

LABEL_49:
    v29 = [v19 count] + v16;
    goto LABEL_55;
  }
}

void __45__UISplitViewControllerPanelImpl_showColumn___block_invoke(uint64_t a1)
{
  if (+[UIView areAnimationsEnabled])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
    v3 = [WeakRetained view];
    v4 = [v3 window];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = v6 - v7;
  if (v6 <= v7)
  {
    v13 = v7 - v6;
    if (v7 > v6)
    {
      do
      {
        if (--v13)
        {
          v14 = 0;
        }

        else
        {
          v14 = v5;
        }

        v15 = [*(a1 + 40) popViewControllerAnimated:v14];
      }

      while (v13);
    }
  }

  else
  {
    v9 = 0;
    do
    {
      v10 = *(a1 + 40);
      v11 = [*(a1 + 48) objectAtIndexedSubscript:v9];
      if (--v8)
      {
        v12 = 0;
      }

      else
      {
        v12 = v5;
      }

      [v10 pushViewController:v11 animated:v12];

      ++v9;
    }

    while (v8);
  }
}

- (UIViewControllerTransitionCoordinator)transitionCoordinator
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(UISplitViewControllerPanelImpl *)self style];
  if (v5 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = _UISplitViewControllerStyleDescription(v5);
    [v13 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2132 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v2}];
  }

  if (![(UISplitViewControllerPanelImpl *)self isCollapsed])
  {
    v9 = [(UIPanelController *)self->_panelController transitionCoordinator];
    goto LABEL_15;
  }

  v6 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30238];
  v7 = [v6 viewController];
  if (!v7)
  {
    if (v5 == 2 && ([(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220], (v2 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
      v8 = [v11 navigationController];
    }

    else
    {
      v10 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
      v8 = [v10 navigationController];

      if (v5 != 2)
      {
LABEL_13:

        if (v8)
        {
          goto LABEL_14;
        }

        if (os_variant_has_internal_diagnostics())
        {
          v15 = __UIFaultDebugAssertLog();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_22;
          }

          v16 = _UISplitViewControllerStyleDescription([(UISplitViewControllerPanelImpl *)self style]);
          *buf = 138412290;
          v18 = v16;
          _os_log_fault_impl(&dword_188A29000, v15, OS_LOG_TYPE_FAULT, "Unable to locate transition coordinator for collapsed %@ UISplitViewController", buf, 0xCu);
        }

        else
        {
          v14 = *(__UILogGetCategoryCachedImpl("Assert", &transitionCoordinator___s_category) + 8);
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
LABEL_23:
            v8 = 0;
            goto LABEL_14;
          }

          v15 = v14;
          v16 = _UISplitViewControllerStyleDescription([(UISplitViewControllerPanelImpl *)self style]);
          *buf = 138412290;
          v18 = v16;
          _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Unable to locate transition coordinator for collapsed %@ UISplitViewController", buf, 0xCu);
        }

LABEL_22:
        goto LABEL_23;
      }
    }

    goto LABEL_13;
  }

  v8 = v7;

LABEL_14:
  v9 = [v8 transitionCoordinator];

LABEL_15:

  return v9;
}

- (void)setPreferredSupplementaryColumnWidthFraction:(double)a3
{
  preferredSupplementaryColumnWidthFraction = self->_preferredSupplementaryColumnWidthFraction;
  if (preferredSupplementaryColumnWidthFraction != a3)
  {
    if (a3 != -3.40282347e38 && (a3 < 0.0 || a3 > 1.0))
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unsupported %@, %g, for supplementary column. Value must be %@", @"minimum or maximum width value", *&a3, @"UISplitViewControllerAutomaticDimension or between 0 and 1, inclusive"}];
      preferredSupplementaryColumnWidthFraction = self->_preferredSupplementaryColumnWidthFraction;
    }

    self->_preferredSupplementaryColumnWidthFraction = a3;
    if (!dyld_program_sdk_at_least() || preferredSupplementaryColumnWidthFraction != a3)
    {

      [(UISplitViewControllerPanelImpl *)self _supplementaryOrPrimaryColumnWidthAffectingPropertyDidChange];
    }
  }
}

- (void)setMinimumSupplementaryColumnWidth:(double)a3
{
  if (self->_minimumSupplementaryColumnWidth != a3)
  {
    if (a3 < 0.0 && a3 != -3.40282347e38)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unsupported %@, %g, for supplementary column. Value must be %@", @"width fraction", *&a3, @"UISplitViewControllerAutomaticDimension or nonnegative"}];
    }

    self->_minimumSupplementaryColumnWidth = a3;

    [(UISplitViewControllerPanelImpl *)self _primaryColumnWidthAffectingPropertyDidChange];
  }
}

- (void)setMaximumSupplementaryColumnWidth:(double)a3
{
  if (self->_maximumSupplementaryColumnWidth != a3)
  {
    if (a3 < 0.0 && a3 != -3.40282347e38)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unsupported %@, %g, for supplementary column. Value must be %@", @"width fraction", *&a3, @"UISplitViewControllerAutomaticDimension or nonnegative"}];
    }

    self->_maximumSupplementaryColumnWidth = a3;

    [(UISplitViewControllerPanelImpl *)self _primaryColumnWidthAffectingPropertyDidChange];
  }
}

- (void)setDisplayModeButtonVisibility:(int64_t)a3
{
  if ([(UISplitViewControllerPanelImpl *)self displayModeButtonVisibility]== a3)
  {
    return;
  }

  v5 = [(UISplitViewControllerPanelImpl *)self _isDisplayModeBarButtonVisible];
  if ((a3 - 2) < 3)
  {
    v6 = *&self->_flags & 0xFFFFFFFFFFCFFFFFLL | 0x100000;
LABEL_8:
    self->_flags = v6;
    goto LABEL_9;
  }

  if (a3 == 1)
  {
    v6 = *&self->_flags & 0xFFFFFFFFFFCFFFFFLL | 0x200000;
    goto LABEL_8;
  }

  if (!a3)
  {
    v6 = *&self->_flags & 0xFFFFFFFFFFCFFFFFLL;
    goto LABEL_8;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unknown displayModeButtonVisibility value: %ld", a3}];
LABEL_9:
  if (v5 == [(UISplitViewControllerPanelImpl *)self _alwaysHideSidebarToggleButton])
  {
    [(UISplitViewControllerPanelImpl *)self _updateDisplayModeButtonItem];

    [(UISplitViewControllerPanelImpl *)self _invalidateAllowsTriggeringSidebarKeyCommandAction];
  }
}

- (int64_t)displayModeButtonVisibility
{
  flags = self->_flags;
  if ((*&flags & 0x200000) != 0)
  {
    return 1;
  }

  else
  {
    return (*&flags >> 19) & 2;
  }
}

- (void)setPrimaryEdge:(int64_t)a3
{
  if (self->_primaryEdge != a3)
  {
    v13 = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
    self->_primaryEdge = a3;
    v6 = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
    v7 = [(UISplitViewControllerPanelImpl *)self panelController];
    if (v6)
    {
      v8 = v13;
    }

    else
    {
      v8 = 0;
    }

    if (v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = v13;
    }

    [v7 setLeadingViewController:v8 changingParentage:0];

    v10 = [(UISplitViewControllerPanelImpl *)self panelController];
    [v10 setTrailingViewController:v9 changingParentage:0];

    [(UISplitViewControllerPanelImpl *)self _updateConfigurationBackgroundStyle];
    if ([(UISplitViewControllerPanelImpl *)self _shouldUseFluidSidebarGestures])
    {
      [(UISplitViewControllerPanelImpl *)self _updatePresentationGestureRecognizer];
    }

    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v12 = [WeakRetained view];
    [v12 setNeedsLayout];
  }
}

- (BOOL)_layoutPrimaryOnRight
{
  primaryEdge = self->_primaryEdge;
  if (!primaryEdge)
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v3 = [WeakRetained view];
    if ([v3 _shouldReverseLayoutDirection])
    {
      LOBYTE(v6) = 1;
      goto LABEL_10;
    }

    if (self->_primaryEdge != 1)
    {
      LOBYTE(v6) = 0;
      goto LABEL_10;
    }

LABEL_7:
    v7 = objc_loadWeakRetained(&self->_svc);
    v8 = [v7 view];
    v6 = [v8 _shouldReverseLayoutDirection] ^ 1;

    if (primaryEdge)
    {
      return v6;
    }

LABEL_10:

    return v6;
  }

  if (primaryEdge == 1)
  {
    goto LABEL_7;
  }

  LOBYTE(v6) = 0;
  return v6;
}

- (float)gutterWidth
{
  v3 = [(UISplitViewControllerPanelImpl *)self panelController];
  v4 = [v3 configuration];

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v6 = [WeakRetained traitCollection];
  [v6 displayScale];
  if (v7 == 0.0)
  {
    v8 = [objc_opt_self() mainScreen];
    [v8 scale];
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  if ([(UISplitViewControllerPanelImpl *)self _isPrimaryLeading])
  {
    [v4 leadingBorderWidthForScale:v10];
  }

  else
  {
    [v4 trailingBorderWidthForScale:v10];
  }

  v12 = v11;

  return v12;
}

- (void)setGutterWidth:(float)a3
{
  v5 = [(UISplitViewControllerPanelImpl *)self panelController];
  v8 = [v5 configuration];

  v6 = a3;
  [v8 setLeadingBorderWidthInPoints:v6];
  [v8 setTrailingBorderWidthInPoints:v6];
  v7 = [(UISplitViewControllerPanelImpl *)self panelController];
  [v7 setConfiguration:v8];
}

- (void)setHidesMasterViewInPortrait:(BOOL)a3
{
  v5 = [(UISplitViewControllerPanelImpl *)self style];
  if (v5)
  {
    v8 = v5;
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = _UISplitViewControllerStyleDescription(v8);
    [v9 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2297 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v10}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v11 = [WeakRetained delegate];

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = objc_loadWeakRetained(&self->_svc);
    [v7 loadViewIfNeeded];
  }
}

- (void)_setDisplayModeButtonItemTitle:(id)a3
{
  v4 = a3;
  displayModeButtonItemTitle = self->_displayModeButtonItemTitle;
  if (displayModeButtonItemTitle != v4)
  {
    v9 = v4;
    v6 = [(NSString *)displayModeButtonItemTitle isEqualToString:v4];
    v4 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_displayModeButtonItemTitle;
      self->_displayModeButtonItemTitle = v7;

      [(UISplitViewControllerPanelImpl *)self _updateDisplayModeButtonItem];
      v4 = v9;
    }
  }
}

- (UIDimmingView)_primaryDimmingView
{
  [(UISplitViewControllerPanelImpl *)self _updateDimmingView];

  return [(UISplitViewControllerPanelImpl *)self _dimmingView];
}

- (BOOL)_isCollapsed
{
  v2 = [(UISplitViewControllerPanelImpl *)self panelController];
  v3 = [v2 isCollapsed];

  return v3;
}

- (BOOL)_isCollapsedOrCollapsing
{
  if ([(UISplitViewControllerPanelImpl *)self _isCollapsed])
  {
    return 1;
  }

  v4 = [(UISplitViewControllerPanelImpl *)self panelController];
  v5 = [v4 currentState];
  v3 = [v5 _collapsedState] == 1;

  return v3;
}

- (UIViewController)masterViewController
{
  if ([(UISplitViewControllerPanelImpl *)self style]== 2)
  {
    v3 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
    if (v3)
    {
      v4 = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
    }

    else
    {
      v5 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
      v6 = [v5 navigationController];
      v7 = v6;
      if (v6)
      {
        v4 = v6;
      }

      else
      {
        v8 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
        v4 = [v8 viewController];
      }
    }
  }

  else
  {
    v4 = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
  }

  return v4;
}

- (void)setPrefersOverlayInRegularWidthPhone:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setUsesDeviceOverlayPreferences:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)_setUsesExtraWidePrimaryColumn:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (BOOL)_isRotating
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2406 description:@"Should not be called in this UISplitViewController impl"];

  return 0;
}

- (CGSize)_contentSizeForChildViewController:(id)a3 inPopoverController:(id)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2416 description:@"Should not be called in this UISplitViewController impl"];

  v7 = *MEMORY[0x1E695F060];
  v8 = *(MEMORY[0x1E695F060] + 8);
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)_popoverController:(id)a3 willChangeToVisible:(BOOL)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2422 description:@"Should not be called in this UISplitViewController impl"];
}

- (void)_popoverController:(id)a3 didChangeFromVisible:(BOOL)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2427 description:@"Should not be called in this UISplitViewController impl"];
}

- (void)_willShowCollapsedDetailViewController:(id)a3 inTargetController:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(UISplitViewControllerPanelImpl *)self panelController];
  [v7 setPreservedDetailController:v6];

  LODWORD(v7) = [v6 _isNavigationController];
  if (v7 && [objc_opt_class() doesOverrideViewControllerMethod:sel_showViewController_sender_])
  {
    [v8 _setAllowNestedNavigationControllers:1];
  }
}

- (void)_willBeginSnapshotSession
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v3 = [WeakRetained _existingView];

  v4 = WeakRetained;
  if (v3)
  {
    v5 = [WeakRetained traitCollection];
    suspendedTraitCollection = self->_suspendedTraitCollection;
    self->_suspendedTraitCollection = v5;

    v7 = [WeakRetained view];
    [v7 bounds];
    self->_suspendedSize.width = v8;
    self->_suspendedSize.height = v9;

    v10 = [(UISplitViewControllerPanelImpl *)self panelController];
    v11 = [v10 currentState];
    v12 = [v11 stateRequest];
    suspendedStateRequest = self->_suspendedStateRequest;
    self->_suspendedStateRequest = v12;

    if (([WeakRetained _isCollapsed] & 1) == 0)
    {
      v14 = [(UISplitViewControllerPanelImpl *)self panelController];
      [v14 _storeSuspendedConfiguration];
    }

    v15 = [WeakRetained _isCollapsed];
    v16 = 1;
    if (v15)
    {
      v16 = 2;
    }

    self->_suspendedState = v16;
    v17 = [WeakRetained _firstResponder];
    v18 = [v17 _window];
    v19 = [v18 windowScene];
    v20 = [v19 keyboardSceneDelegate];

    suspendedFirstResponder = [v17 _window];
    if (suspendedFirstResponder && [v17 _requiresKeyboardWhenFirstResponder])
    {
      v22 = [v20 _isPreservedRestorableResponder:v17];

      if (v22)
      {
LABEL_11:

        v4 = WeakRetained;
        goto LABEL_12;
      }

      v23 = v17;
      suspendedFirstResponder = self->_suspendedFirstResponder;
      self->_suspendedFirstResponder = v23;
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)_didEndSnapshotSession
{
  suspendedTraitCollection = self->_suspendedTraitCollection;
  self->_suspendedTraitCollection = 0;

  self->_suspendedSize = *MEMORY[0x1E695F060];
  suspendedStateRequest = self->_suspendedStateRequest;
  self->_suspendedStateRequest = 0;

  self->_suspendedState = 0;
  v5 = [(UISplitViewControllerPanelImpl *)self panelController];
  [v5 _clearSuspendedConfiguration];

  if (self->_suspendedFirstResponder)
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v7 = [WeakRetained _window];
    if (v7)
    {
      v8 = v7;
      v9 = objc_loadWeakRetained(&self->_svc);
      v10 = [v9 view];
      v11 = [v10 _containsResponder:self->_suspendedFirstResponder];

      if (v11)
      {
        [(UIResponder *)self->_suspendedFirstResponder becomeFirstResponder];
      }
    }

    else
    {
    }
  }

  suspendedFirstResponder = self->_suspendedFirstResponder;
  self->_suspendedFirstResponder = 0;
}

- (double)_primaryDividerPosition
{
  v3 = [(UISplitViewControllerPanelImpl *)self panelController];
  v4 = [v3 currentState];

  v5 = -1.0;
  if (v4 && ([v4 isCollapsed] & 1) == 0)
  {
    if ([(UISplitViewControllerPanelImpl *)self _isPrimaryLeading])
    {
      [v4 leadingWidth];
      v7 = v6;
      if ([(UISplitViewControllerPanelImpl *)self style])
      {
        [v4 leadingOffscreenWidth];
      }

      else
      {
        [v4 leadingDragOffset];
      }
    }

    else
    {
      [v4 trailingWidth];
      v7 = v9;
      if ([(UISplitViewControllerPanelImpl *)self style])
      {
        [v4 trailingOffscreenWidth];
      }

      else
      {
        [v4 trailingDragOffset];
      }
    }

    v10 = v7 - v8;
    if (v10 <= 0.0)
    {
      v5 = -1.0;
    }

    else
    {
      v5 = v10;
    }
  }

  return v5;
}

- (double)_supplementaryDividerPosition
{
  v3 = [(UISplitViewControllerPanelImpl *)self panelController];
  v4 = [v3 currentState];

  v5 = -1.0;
  if (v4 && ([v4 isCollapsed] & 1) == 0)
  {
    v6 = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
    [(UISplitViewControllerPanelImpl *)self gutterWidth];
    v8 = v7;
    if (v6)
    {
      [v4 leadingWidth];
      v10 = v9;
      [v4 leadingOffscreenWidth];
    }

    else
    {
      [v4 trailingWidth];
      v10 = v12;
      [v4 trailingOffscreenWidth];
    }

    v13 = v10 - v11 + v8;
    [v4 supplementaryWidth];
    v15 = v14 + v13;
    [v4 supplementaryOffscreenWidth];
    v17 = v15 - v16;
    if (v17 <= 0.0)
    {
      v5 = -1.0;
    }

    else
    {
      v5 = v17;
    }
  }

  return v5;
}

- (double)_inspectorDividerPosition
{
  v3 = [(UISplitViewControllerPanelImpl *)self panelController];
  v4 = [v3 currentState];

  v5 = -1.0;
  if (v4 && ([v4 isCollapsed] & 1) == 0)
  {
    v6 = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
    [(UISplitViewControllerPanelImpl *)self gutterWidth];
    v8 = v7;
    if (v6)
    {
      [v4 trailingWidth];
      v10 = v9;
      [v4 trailingOffscreenWidth];
    }

    else
    {
      [v4 leadingWidth];
      v10 = v12;
      [v4 leadingOffscreenWidth];
    }

    v13 = v10 - v11 + v8;
    [v4 supplementaryWidth];
    v15 = v14 + v13;
    [v4 supplementaryOffscreenWidth];
    v17 = v15 - v16;
    if (v17 <= 0.0)
    {
      v5 = -1.0;
    }

    else
    {
      v5 = v17;
    }
  }

  return v5;
}

- (void)setUserGeneratedDisplayMode:(int64_t)a3
{
  v6 = [(UISplitViewControllerPanelImpl *)self style];
  if ((v6 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v6;
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = _UISplitViewControllerStyleDescription(v8);
    [v9 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2575 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v10}];
  }

  v7 = *&self->_flags & 0xFFFFFFFFFFFFFF87 | (8 * (a3 & 7));
  self->_flags = v7;
  if (a3 != 3 && a3 != 5)
  {
    self->_flags = (v7 & 0xFFFFFFFFFFFDFFBFLL);
  }
}

- (int64_t)userGeneratedDisplayMode
{
  v4 = [(UISplitViewControllerPanelImpl *)self style];
  if ((v4 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v4;
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = _UISplitViewControllerStyleDescription(v6);
    [v7 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2593 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v8}];
  }

  return (*&self->_flags >> 3) & 7;
}

- (int64_t)defaultDisplayModeForSplitBehavior:(int64_t)a3
{
  if (((a3 - 1) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (int64_t)_greatestAllowedAutohidingDisplayModeInSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v38 = *MEMORY[0x1E69E9840];
  v7 = [(UISplitViewControllerPanelImpl *)self style];
  if (v7 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = _UISplitViewControllerStyleDescription(v7);
    [v23 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2615 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v24}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v9 = _UISplitViewControllerAutoHidesColumns(WeakRetained);

  if ((v9 & 1) == 0)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2615 description:@"Method restricted to autohiding context for UISplitViewController"];
  }

  if ([(UISplitViewControllerPanelImpl *)self _isSecondaryColumnCompactInTotalWidth:width withPrimaryColumnWidth:0.0 supplementaryColumnWidth:0.0])
  {
    if (_UIGetUISplitViewControllerChamoisResizeLogging())
    {
      v10 = *(__UILogGetCategoryCachedImpl("ChamoisResize", &qword_1ED49D8D0) + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
        v12 = objc_loadWeakRetained(&self->_svc);
        *buf = 138412546;
        v33 = v12;
        v34 = 2048;
        v35 = width;
        _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "%@: Using SecondaryOnly as greatest allowed autohiding display mode in overly narrow width, %g", buf, 0x16u);
      }
    }

    return 1;
  }

  else
  {
    v14 = objc_loadWeakRetained(&self->_svc);
    v15 = _UISplitViewControllerAutoRevealsFullSidebar(v14);
    v13 = 2;
    if (v7 == 2 && v15)
    {
      v16 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
      if (v16)
      {
        v13 = 4;
      }

      else
      {
        v13 = 2;
      }
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v27 = __78__UISplitViewControllerPanelImpl__greatestAllowedAutohidingDisplayModeInSize___block_invoke;
    v28 = &unk_1E7103C48;
    v29 = self;
    v30 = width;
    v31 = height;
    for (i = __78__UISplitViewControllerPanelImpl__greatestAllowedAutohidingDisplayModeInSize___block_invoke(v26, v13); i != v13; i = v27(v26, i))
    {
      v13 = i;
    }

    if (_UIGetUISplitViewControllerChamoisResizeLogging())
    {
      v18 = *(__UILogGetCategoryCachedImpl("ChamoisResize", &qword_1ED49D8D8) + 8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = v18;
        v20 = objc_loadWeakRetained(&self->_svc);
        v21 = _UISplitViewControllerDisplayModeDescription(v13);
        *buf = 138412802;
        v33 = v20;
        v34 = 2112;
        v35 = *&v21;
        v36 = 2048;
        v37 = width;
        _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "%@: Using %@ as greatest allowed autohiding display mode in width %g", buf, 0x20u);
      }
    }
  }

  return v13;
}

uint64_t __78__UISplitViewControllerPanelImpl__greatestAllowedAutohidingDisplayModeInSize___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = 0.0;
  v8 = 0.0;
  [*(a1 + 32) getPrimaryColumnWidth:&v8 supplementaryColumnWidth:&v7 forSize:a2 displayMode:1 splitBehavior:0 isCompact:0 shouldUseOverlay:{*(a1 + 40), *(a1 + 48)}];
  v4 = [*(a1 + 32) _isSecondaryColumnCompactInTotalWidth:*(a1 + 40) withPrimaryColumnWidth:v8 supplementaryColumnWidth:v7];
  if (a2 == 4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return a2;
  }
}

- (int64_t)defaultDisplayModeForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v36 = *MEMORY[0x1E69E9840];
  v7 = [(UISplitViewControllerPanelImpl *)self style];
  if ((v7 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v23 = v7;
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = _UISplitViewControllerStyleDescription(v23);
    [v24 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2649 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v25}];
  }

  if ([(UISplitViewControllerPanelImpl *)self preferredDisplayMode])
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = _UISplitViewControllerDisplayModeDescription([(UISplitViewControllerPanelImpl *)self preferredDisplayMode]);
    [v26 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2650 description:{@"Default display mode should not override nonautomatic preferred display mode, %@", v27}];
  }

  v8 = [(UISplitViewControllerPanelImpl *)self splitBehaviorForSize:width, height];
  v9 = [(UISplitViewControllerPanelImpl *)self defaultDisplayModeForSplitBehavior:v8];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v11 = _UISplitViewControllerAutoHidesColumns(WeakRetained);

  if (v11)
  {
    if (_UIGetUISplitViewControllerChamoisResizeLogging())
    {
      v12 = *(__UILogGetCategoryCachedImpl("ChamoisResize", &qword_1ED49D8E0) + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = v12;
        v14 = objc_loadWeakRetained(&self->_svc);
        v15 = _UISplitViewControllerSplitBehaviorDescription(v8);
        v16 = _UISplitViewControllerDisplayModeDescription(v9);
        *buf = 138413058;
        v29 = v14;
        v30 = 2112;
        v31 = v15;
        v32 = 2048;
        v33 = width;
        v34 = 2112;
        v35 = v16;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "%@: Initial default display mode for %@ in width %g is %@", buf, 0x2Au);
      }
    }

    if ((v8 & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v9 = [(UISplitViewControllerPanelImpl *)self _greatestAllowedAutohidingDisplayModeInSize:width, height];
      if (_UIGetUISplitViewControllerChamoisResizeLogging())
      {
        v17 = *(__UILogGetCategoryCachedImpl("ChamoisResize", &qword_1ED49D8E8) + 8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = v17;
          v19 = objc_loadWeakRetained(&self->_svc);
          v20 = _UISplitViewControllerSplitBehaviorDescription(v8);
          v21 = _UISplitViewControllerDisplayModeDescription(v9);
          *buf = 138413058;
          v29 = v19;
          v30 = 2112;
          v31 = v20;
          v32 = 2048;
          v33 = width;
          v34 = 2112;
          v35 = v21;
          _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "%@: Greatest allowed autohiding display mode for %@ split behavior in width %g is %@", buf, 0x2Au);
        }
      }
    }
  }

  return v9;
}

- (void)preparePanelControllerForCollapse
{
  v4 = [(UISplitViewControllerPanelImpl *)self style];
  if (v4 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = _UISplitViewControllerStyleDescription(v4);
    [v10 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2683 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v11}];
  }

  v12 = [(UIPanelController *)self->_panelController collapsedViewController];
  if (v4 == 2)
  {
    v5 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];

    if (v5)
    {
      panelController = self->_panelController;
      v7 = [(UIPanelController *)panelController supplementaryViewController];
      [(UIPanelController *)panelController setSupplementaryViewController:0 changingParentage:v12 != v7];
    }
  }

  v8 = self->_panelController;
  v9 = [(UIPanelController *)v8 mainViewController];
  [(UIPanelController *)v8 setMainViewController:0 changingParentage:v12 != v9];
}

- (void)updatePanelControllerForViewControllerChangeInColumn:(int64_t)a3 alwaysAnimate:(BOOL)a4 shouldUpdateCollapsedNavStack:(BOOL)a5
{
  v5 = a5;
  v9 = [(UISplitViewControllerPanelImpl *)self style];
  if (v9 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v63 = [MEMORY[0x1E696AAA8] currentHandler];
    v64 = _UISplitViewControllerStyleDescription(v9);
    [v63 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2704 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v64}];
  }

  v70 = a2;
  perColumnViewControllers = self->_perColumnViewControllers;
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v12 = [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:v11];

  v13 = [v12 navigationController];
  v14 = [v12 navigationControllerWrapper];
  v15 = [(UISplitViewControllerPanelImpl *)self _isCollapsed];
  if (v15 || !(v13 | v14))
  {
    v17 = [v12 viewController];
  }

  else
  {
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v13;
    }

    v17 = v16;
  }

  v73 = v17;
  if (!a3)
  {
    [(UIPanelController *)self->_panelController setLeadingTrailingWrapsNavigationController:v14 != 0];
  }

  v18 = [(UISplitViewControllerPanelImpl *)self primaryEdge];
  if (v73)
  {
    v19 = v5;
  }

  else
  {
    v19 = 0;
  }

  if (v15 && v19)
  {
    if (v9 == 2)
    {
      v24 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
      v20 = v24 == 0;

      v21 = v20;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    if (a3 <= 2)
    {
      switch(a3)
      {
        case 0:
          v41 = [(UIPanelController *)self->_panelController collapsedViewController];
          v45 = [(UIPanelController *)self->_panelController leadingViewController];
          if (v45)
          {
            v46 = 0;
          }

          else
          {
            v55 = [(UIPanelController *)self->_panelController trailingViewController];
            v46 = v55 == 0;
          }

          if (v14)
          {
            v56 = v14;
          }

          else
          {
            v56 = v13;
          }

          panelController = self->_panelController;
          if (v18)
          {
            [(UIPanelController *)panelController setTrailingViewController:v56];
            if (!v46)
            {
              goto LABEL_88;
            }
          }

          else
          {
            [(UIPanelController *)panelController setLeadingViewController:v56];
            if (!v46)
            {
              goto LABEL_88;
            }
          }

          v58 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
          v59 = [v58 navigationController];

          if (v41 != v59)
          {
            if (os_variant_has_internal_diagnostics())
            {
              v68 = __UIFaultDebugAssertLog();
              if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_fault_impl(&dword_188A29000, v68, OS_LOG_TYPE_FAULT, "Surprising configuration when changing view controller in primary column while collapsed", buf, 2u);
              }
            }

            else
            {
              v67 = *(__UILogGetCategoryCachedImpl("Assert", &updatePanelControllerForViewControllerChangeInColumn_alwaysAnimate_shouldUpdateCollapsedNavStack____s_category) + 8);
              if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_188A29000, v67, OS_LOG_TYPE_ERROR, "Surprising configuration when changing view controller in primary column while collapsed", buf, 2u);
              }
            }
          }

          v60 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
          v61 = [v60 navigationController];

          if (v41 == v61)
          {
            [(UIPanelController *)self->_panelController setSupplementaryViewController:0];
            [(UIPanelController *)self->_panelController setCollapsedViewController:v13];
            *buf = 0;
            v91 = buf;
            v92 = 0x3032000000;
            v93 = __Block_byref_object_copy__58;
            v94 = __Block_byref_object_dispose__58;
            v95 = 0;
            v86[0] = MEMORY[0x1E69E9820];
            v86[1] = 3221225472;
            v86[2] = __131__UISplitViewControllerPanelImpl_updatePanelControllerForViewControllerChangeInColumn_alwaysAnimate_shouldUpdateCollapsedNavStack___block_invoke;
            v86[3] = &unk_1E70FB728;
            v89 = buf;
            v62 = v41;
            v87 = v62;
            v88 = self;
            [v62 _executeSplitViewControllerActions:v86];
            [v62 _setAllowNestedNavigationControllers:0];
            [v13 _setAllowNestedNavigationControllers:1];
            v82[0] = MEMORY[0x1E69E9820];
            v82[1] = 3221225472;
            v82[2] = __131__UISplitViewControllerPanelImpl_updatePanelControllerForViewControllerChangeInColumn_alwaysAnimate_shouldUpdateCollapsedNavStack___block_invoke_2;
            v82[3] = &unk_1E70FEE78;
            v83 = v13;
            v84 = v62;
            v85 = buf;
            [v83 _executeSplitViewControllerActions:v82];

            _Block_object_dispose(buf, 8);
          }

          goto LABEL_88;
        case 1:
          v49 = self->_perColumnViewControllers;
          v50 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
          v51 = [(NSMutableDictionary *)v49 objectForKeyedSubscript:v50];
          v41 = [v51 navigationController];

          if (v41)
          {
            if (([v41 _isNavigationController] & 1) == 0)
            {
              v65 = [MEMORY[0x1E696AAA8] currentHandler];
              [v65 handleFailureInMethod:v70 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2755 description:{@"Unexpectedly lost track of navigation controller for showing %@ column when collapsed", @"Supplementary"}];
            }

            v52 = [v41 topViewController];
            if (v52 != v73)
            {
              v53 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
              v54 = [v53 viewController];

              if (v52 == v54)
              {
                [(UISplitViewControllerPanelImpl *)self sendWillHideColumn:0];
              }

              [(UISplitViewControllerPanelImpl *)self sendWillShowColumn:1];
              v78[0] = MEMORY[0x1E69E9820];
              v78[1] = 3221225472;
              v78[2] = __131__UISplitViewControllerPanelImpl_updatePanelControllerForViewControllerChangeInColumn_alwaysAnimate_shouldUpdateCollapsedNavStack___block_invoke_3;
              v78[3] = &unk_1E70F5AF0;
              v79 = v41;
              v80 = v13;
              v81 = a4;
              [v79 _executeSplitViewControllerActions:v78];
            }
          }

          goto LABEL_88;
        case 2:
          v25 = self->_perColumnViewControllers;
          v26 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
          v27 = [(NSMutableDictionary *)v25 objectForKeyedSubscript:v26];
          v28 = [v27 navigationController];

          if (v28)
          {
            v69 = v21;
            if (([v28 _isNavigationController] & 1) == 0)
            {
              v66 = [MEMORY[0x1E696AAA8] currentHandler];
              [v66 handleFailureInMethod:v70 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2774 description:{@"Unexpectedly lost track of navigation controller for showing %@ column when collapsed", @"Secondary"}];
            }

            v71 = [v28 topViewController];
            v29 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
            v30 = [v29 viewController];

            v31 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
            v32 = [v31 navigationController];

            v33 = [v28 viewControllers];
            v34 = [v33 mutableCopy];

            v36 = v9 != 2 || v32 == 0;
            if (!v36 && !v69 && v71 != v32)
            {
              [v34 addObject:v32];
            }

            if (v71 == v30 || v71 == v32)
            {
              [(UISplitViewControllerPanelImpl *)self sendWillHideColumn:v71 != v30];
              [(UISplitViewControllerPanelImpl *)self sendWillShowColumn:2];
            }

            if (v13)
            {
              v37 = v13;
            }

            else
            {
              v37 = v73;
            }

            [v34 addObject:v37];
            v74[0] = MEMORY[0x1E69E9820];
            v74[1] = 3221225472;
            v74[2] = __131__UISplitViewControllerPanelImpl_updatePanelControllerForViewControllerChangeInColumn_alwaysAnimate_shouldUpdateCollapsedNavStack___block_invoke_4;
            v74[3] = &unk_1E70F5AF0;
            v75 = v28;
            v76 = v34;
            v77 = a4;
            v38 = v34;
            [v75 _executeSplitViewControllerActions:v74];
          }

          goto LABEL_89;
      }

LABEL_54:
      v39 = MEMORY[0x1E695DF30];
      v40 = *MEMORY[0x1E695D940];
      v41 = _UISplitViewControllerColumnDescription(a3);
      [v39 raise:v40 format:{@"Can't assign a view controller to %@ column", v41}];
LABEL_88:

      goto LABEL_89;
    }

LABEL_53:
    if ((a3 - 3) < 2)
    {
      goto LABEL_89;
    }

    goto LABEL_54;
  }

  if (a3 > 2)
  {
    goto LABEL_53;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      v47 = [(UIPanelController *)self->_panelController configuration];
      [v47 setSupplementaryEdge:v18];

      if (v13)
      {
        v48 = v13;
      }

      else
      {
        v48 = v73;
      }

      [(UIPanelController *)self->_panelController setSupplementaryViewController:v48];
      goto LABEL_89;
    }

    if (a3 != 2)
    {
      goto LABEL_54;
    }

    v22 = v73;
    if (v13)
    {
      v22 = v13;
    }

    if (v14)
    {
      v23 = v14;
    }

    else
    {
      v23 = v22;
    }

    [(UIPanelController *)self->_panelController setMainViewController:v23];
  }

  else
  {
    v42 = v73;
    if (v13)
    {
      v42 = v13;
    }

    if (v14)
    {
      v43 = v14;
    }

    else
    {
      v43 = v42;
    }

    v44 = self->_panelController;
    if (v18)
    {
      [(UIPanelController *)v44 setTrailingViewController:v43];
    }

    else
    {
      [(UIPanelController *)v44 setLeadingViewController:v43];
    }
  }

LABEL_89:
}

void __131__UISplitViewControllerPanelImpl_updatePanelControllerForViewControllerChangeInColumn_alwaysAnimate_shouldUpdateCollapsedNavStack___block_invoke(void *a1)
{
  v5 = a1[4];
  v16 = [*(a1[5] + 8) objectForKeyedSubscript:&unk_1EFE30208];
  v6 = [v16 navigationControllerWrapper];
  v7 = v6;
  if (v6)
  {
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v1 = [*(a1[5] + 8) objectForKeyedSubscript:&unk_1EFE30208];
    v10 = [v1 navigationController];
    v2 = v10;
    if (v10)
    {
      v8 = 0;
      v9 = v10;
    }

    else
    {
      v3 = [*(a1[5] + 8) objectForKeyedSubscript:&unk_1EFE30208];
      v9 = [v3 viewController];
      v8 = 1;
    }
  }

  WeakRetained = objc_loadWeakRetained((a1[5] + 16));
  v12 = [v5 _separateViewControllersAfterAndIncludingViewController:v9 forSplitViewController:WeakRetained];
  v13 = [v12 firstObject];
  v14 = *(a1[6] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  if (v8)
  {
  }

  if (!v7)
  {
  }
}

uint64_t __131__UISplitViewControllerPanelImpl_updatePanelControllerForViewControllerChangeInColumn_alwaysAnimate_shouldUpdateCollapsedNavStack___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) pushViewController:*(a1 + 40) animated:0];
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v3 = *(a1 + 32);

    return [v3 pushViewController:? animated:?];
  }

  return result;
}

uint64_t __131__UISplitViewControllerPanelImpl_updatePanelControllerForViewControllerChangeInColumn_alwaysAnimate_shouldUpdateCollapsedNavStack___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
  {
    v4 = 1;
  }

  else
  {
    v4 = *(a1 + 48);
  }

  return [v2 pushViewController:v3 animated:v4 & 1];
}

uint64_t __131__UISplitViewControllerPanelImpl_updatePanelControllerForViewControllerChangeInColumn_alwaysAnimate_shouldUpdateCollapsedNavStack___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
  {
    v4 = 1;
  }

  else
  {
    v4 = *(a1 + 48);
  }

  return [v2 setViewControllers:v3 animated:v4 & 1];
}

- (uint64_t)_columnForViewController:(char)a3 forceExpandedResult:
{
  v5 = a2;
  if (!a1)
  {
    v9 = 0;
    goto LABEL_19;
  }

  v6 = [a1 style];
  if ((v6 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = v6;
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = _UISplitViewControllerStyleDescription(v16);
    [v17 handleFailureInMethod:sel__columnForViewController_forceExpandedResult_ object:a1 file:@"UISplitViewControllerPanelImpl.m" lineNumber:2854 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v18}];

    if (v5)
    {
      goto LABEL_4;
    }

LABEL_18:
    v9 = 999;
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_18;
  }

LABEL_4:
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v21 = __79__UISplitViewControllerPanelImpl__columnForViewController_forceExpandedResult___block_invoke;
  v22 = &unk_1E7103C70;
  v23 = v5;
  v24 = a1;
  v7 = [a1[1] objectForKeyedSubscript:&unk_1EFE30238];
  v8 = (__79__UISplitViewControllerPanelImpl__columnForViewController_forceExpandedResult___block_invoke)(v20, v7);

  if (v8)
  {
    v9 = 3;
  }

  else
  {
    v9 = 999;
  }

  if (!v8 || (a3 & 1) != 0 || ([a1 _isCollapsedOrCollapsing] & 1) == 0)
  {
    v10 = [a1[1] objectForKeyedSubscript:&unk_1EFE30208];
    v11 = v21(v20, v10);

    if (v11)
    {
      v9 = 2;
    }

    else
    {
      v12 = [a1[1] objectForKeyedSubscript:&unk_1EFE30250];
      v13 = v21(v20, v12);

      if (v13)
      {
        v9 = 1;
      }

      else
      {
        v14 = [a1[1] objectForKeyedSubscript:&unk_1EFE30220];
        v15 = v21(v20, v14);

        if (v15)
        {
          v9 = 0;
        }
      }
    }
  }

LABEL_19:
  return v9;
}

BOOL __79__UISplitViewControllerPanelImpl__columnForViewController_forceExpandedResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 navigationController];
  if (v4 == v5)
  {
    v16 = 1;
LABEL_24:

    goto LABEL_25;
  }

  v6 = [v3 viewController];
  if (v4 == v6)
  {
    goto LABEL_16;
  }

  v7 = [v3 navigationControllerWrapper];

  if (v4 == v7)
  {
    v16 = 1;
    goto LABEL_25;
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
  v5 = [WeakRetained presentingViewController];

  v9 = [v4 presentingViewController];
  v10 = v9;
  if (v9 && v9 != v5)
  {
    v6 = 0;
    do
    {
      v11 = v6;
      v6 = v10;

      v10 = [v6 presentingViewController];
    }

    while (v10 && v10 != v5);

    v12 = [v3 navigationController];
    if (v6 != v12)
    {
      v13 = [v3 viewController];
      v14 = v13;
      if (v6 != v13)
      {
        v15 = [v3 navigationControllerWrapper];

        if (v6 != v15)
        {
          v10 = v4;
          v4 = v6;
          goto LABEL_13;
        }

LABEL_16:
        v16 = 1;
LABEL_23:

        goto LABEL_24;
      }
    }

    v16 = 1;
LABEL_22:

    goto LABEL_23;
  }

LABEL_13:

  if (([v4 _isNestedNavigationController] & 1) == 0)
  {
    v5 = [v4 navigationController];
    if (!v5)
    {
      v16 = 0;
      goto LABEL_24;
    }

    v6 = [v4 navigationController];
    v12 = [v3 navigationController];
    v16 = v6 == v12;
    goto LABEL_22;
  }

  v16 = 0;
LABEL_25:

  return v16;
}

- (void)toggleMasterVisible:(id)a3
{
  v4 = a3;
  if (dyld_program_sdk_at_least())
  {
    [(UISplitViewControllerPanelImpl *)self _triggerDisplayModeAction:v4];
  }
}

- (void)loadView
{
  v3 = [(UISplitViewControllerPanelImpl *)self panelController];
  v5 = [v3 view];

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  [WeakRetained setView:v5];

  [v5 setImpl:self];
  [(UISplitViewControllerPanelImpl *)self _setUpFocusContainerGuides];
}

- (void)setView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  [WeakRetained _super_setView:v4];
}

- (void)viewDidAppear:(BOOL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  if (_UISplitViewControllerAutoHidesColumns(WeakRetained) && ![(UISplitViewControllerPanelImpl *)self _isCollapsedOrCollapsing])
  {
    v4 = *&self->_flags & 0xC0000;

    if (v4)
    {
      flags = self->_flags;
      self->_flags = (*&flags & 0xFFFFFFFFFFF3FFFFLL);
      v6 = [(UISplitViewControllerPanelImpl *)self displayMode];
      if (v6 != [(UISplitViewControllerPanelImpl *)self allowedDisplayModeForCurrentSplitBehaviorGivenDisplayMode:v6])
      {
        self->_flags = (*&self->_flags & 0xFFFFFFFFFFF3FFFFLL | (((*&flags >> 18) & 3) << 18));
      }
    }
  }

  else
  {
  }
}

- (UIEdgeInsets)_additionalSidebarSafeAreaInsets
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

- (void)viewDidLayoutSubviews
{
  if (!self->_transitioningToTraitCollection && (*(&self->_flags + 3) & 0x80) != 0)
  {
    v3 = [(UISplitViewControllerPanelImpl *)self panelController];
    v4 = [v3 isCollapsed];
    v5 = [(UISplitViewControllerPanelImpl *)self panelController];
    v6 = [v5 currentState];
    v7 = [v6 isCollapsed];

    if (v4 == v7)
    {
      *&self->_flags &= ~0x80000000uLL;
    }
  }

  [(UISplitViewControllerPanelImpl *)self _updateFocusContainerGuideFrames];
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    [(UISplitViewControllerPanelImpl *)self _updateAllowsTriggeringSidebarKeyCommandAction];
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v9 = [WeakRetained view];

    if ([(UIBarButtonItem *)self->_sidebarToggleButtonItem isHidden]|| ![(_UIFloatableBarButtonItem *)self->_sidebarToggleButtonItem _isFloating]|| [(UISplitViewControllerPanelImpl *)self _alwaysHideSidebarToggleButton])
    {
      if (self->_floatableButtonContainer || [(UIBarButtonItem *)self->_sidebarToggleButtonItem isHidden]|| [(UISplitViewControllerPanelImpl *)self _alwaysHideSidebarToggleButton])
      {
        [(UIView *)self->_floatableButtonContainer setAlpha:0.0];
LABEL_54:

        return;
      }

      v63 = 1;
    }

    else
    {
      v63 = 0;
    }

    v10 = [(UISplitViewControllerPanelImpl *)self style];
    if (v10 == 2)
    {
      v11 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
      v12 = v11 == 0;
    }

    else
    {
      v12 = 0;
    }

    perColumnViewControllers = self->_perColumnViewControllers;
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
    v15 = [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:v14];
    v16 = [v15 navigationController];

    v17 = [v16 _existingNavigationBar];
    if ([v16 isNavigationBarHidden])
    {
      v18 = [v16 _targetNavigationBarForUISplitViewControllerSidebarButton];
      v19 = v18;
      if (v18 == v17)
      {
        v20 = 0;
      }

      else
      {
        v20 = v18;
      }

      v17 = v20;
    }

    if (!v12 && v10 == 2)
    {
      v22 = &unk_1EFE30250;
    }

    else
    {
      v22 = &unk_1EFE30208;
    }

    v23 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:v22];
    v24 = [v23 navigationController];

    v25 = [v24 _existingNavigationBar];
    v64 = v16;
    if ([v24 isNavigationBarHidden])
    {
      v26 = [v24 _targetNavigationBarForUISplitViewControllerSidebarButton];
      v27 = v26;
      if (v26 == v25)
      {
        v28 = 0;
      }

      else
      {
        v28 = v26;
      }

      v25 = v28;
    }

    v29 = [(_UIFloatableBarButtonItem *)self->_sidebarToggleButtonItem _configuredFloatableView];
    v30 = [(_UIFloatableBarButtonItem *)self->_sidebarToggleButtonItem _referenceView];
    v31 = [(UISplitViewControllerPanelImpl *)self panelController];
    v32 = [v31 view];
    [v32 layoutIfNeeded];

    [v30 bounds];
    [v9 convertRect:v30 fromView:?];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v41 = [v30 window];

    if (!v41)
    {
      [(UIView *)self->_floatableButtonContainer frame];
      v34 = v42;
      v36 = v43;
    }

    v44 = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
    v45 = [v30 visualProvider];
    v46 = v45;
    if (v44)
    {
      [v45 alignmentViewForStaticNavBarButtonLeading];
    }

    else
    {
      [v45 alignmentViewForStaticNavBarButtonTrailing];
    }
    v47 = ;

    if ([(UISplitViewControllerPanelImpl *)self _layoutPrimaryOnRight])
    {
      [v30 bounds];
      MaxX = CGRectGetMaxX(v66);
      [v47 frame];
      MinX = MaxX - CGRectGetMaxX(v67);
    }

    else
    {
      [v47 frame];
      MinX = CGRectGetMinX(v68);
    }

    v65 = 0.0;
    if (v63)
    {
      v50 = 0;
    }

    else
    {
      v50 = &v65;
    }

    v51 = [(UISplitViewControllerPanelImpl *)self panelController];
    [v51 interpolatedMarginForPrimaryNavigationBar:v17 supplementaryOrSecondaryNavbar:v25 getInterpolatedAlpha:v50];
    v53 = v52 - MinX;

    if ([(UISplitViewControllerPanelImpl *)self _layoutPrimaryOnRight])
    {
      [v9 bounds];
      v54 = CGRectGetMaxX(v69);
      [v9 safeAreaInsets];
      v56 = v54 - v55 - v53;
      v70.origin.x = v34;
      v70.origin.y = v36;
      v70.size.width = v38;
      v70.size.height = v40;
      v57 = v56 - CGRectGetWidth(v70);
    }

    else
    {
      [v9 safeAreaInsets];
      v57 = v53 + v58;
    }

    if (!self->_floatableButtonContainer)
    {
      v59 = [[UIView alloc] initWithFrame:v57, v36, v38, v40];
      floatableButtonContainer = self->_floatableButtonContainer;
      self->_floatableButtonContainer = v59;

      [v9 addSubview:self->_floatableButtonContainer];
      _UIBarsSetAccessibilityLimits(self->_floatableButtonContainer);
    }

    if (v29)
    {
      v61 = [v29 superview];
      v62 = self->_floatableButtonContainer;

      if (v61 != v62)
      {
        [(UIView *)self->_floatableButtonContainer bounds];
        [v29 setFrame:?];
        [(UIView *)self->_floatableButtonContainer addSubview:v29];
        [v29 setAutoresizingMask:18];
      }
    }

    [(UIView *)self->_floatableButtonContainer setFrame:v57, v36, v38, v40];
    [(UIView *)self->_floatableButtonContainer setAlpha:v65];

    goto LABEL_54;
  }
}

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v9 = [(UIPanelController *)self->_panelController supportsColumnStyle];
  v10 = [(UIPanelController *)self->_panelController currentState];
  if ([v10 isCollapsed])
  {
    goto LABEL_2;
  }

  v13 = 0.0;
  if (v9)
  {
    v14 = [(UISplitViewControllerPanelImpl *)self panelController];
    v15 = [v14 configuration];
    [v15 rubberBandExtension];
    v13 = v16;
  }

  v17 = [(UISplitViewControllerPanelImpl *)self panelController];
  v18 = [v17 leadingViewController];

  if (v18 == v7)
  {
    [v10 leadingWidth];
    v26 = v25;
    if (v25 <= 0.0)
    {
      v27 = [(UISplitViewControllerPanelImpl *)self panelController];
      v28 = [v27 possibleStates];
      v29 = v28;
      v30 = 1;
LABEL_16:
      v26 = minNonzeroPrimaryWidthInStates(v28, v30);
    }

LABEL_17:
    width = v13 + v26;
    goto LABEL_18;
  }

  v19 = [(UISplitViewControllerPanelImpl *)self panelController];
  v20 = [v19 trailingViewController];

  if (v20 == v7)
  {
    [v10 trailingWidth];
    v26 = v31;
    if (v31 <= 0.0)
    {
      v27 = [(UISplitViewControllerPanelImpl *)self panelController];
      v28 = [v27 possibleStates];
      v29 = v28;
      v30 = 0;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (v9 && ([(UIPanelController *)self->_panelController supplementaryViewController], v21 = objc_claimAutoreleasedReturnValue(), v21, v21 == v7))
  {
    [v10 supplementaryWidth];
    width = v39;
    if (v39 <= 0.0)
    {
      v40 = [(UISplitViewControllerPanelImpl *)self panelController];
      v41 = [v40 possibleStates];

      LODWORD(v40) = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
      v42 = minNonzeroPrimaryWidthInStates(v41, v40);
      width = minNonzeroSupplementaryWidthInStateWithPrimaryWidthGetMatchingState(v41, v40, 0, v42);
    }

    v43 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];

    if (!v43)
    {
      width = v13 + width;
    }
  }

  else
  {
    v22 = [(UIPanelController *)self->_panelController mainViewController];
    v23 = v22;
    if (v22 == v7)
    {
    }

    else
    {
      v24 = [(UIPanelController *)self->_panelController preservedDetailController];

      if (v24 != v7)
      {
LABEL_2:
        [WeakRetained _super_sizeForChildContentContainer:v7 withParentContainerSize:{width, height}];
        width = v11;
        height = v12;
        goto LABEL_18;
      }
    }

    v34 = [WeakRetained traitCollection];
    [v34 displayScale];
    if (v35 == 0.0)
    {
      v36 = [objc_opt_self() mainScreen];
      [v36 scale];
      v38 = v37;
    }

    else
    {
      v38 = v35;
    }

    if (([v10 leadingOverlapsMain] & 1) == 0)
    {
      [v10 leadingWidth];
      if (v44 > 0.0)
      {
        [v10 leadingWidth];
        v46 = width - v45;
        v47 = [v10 configuration];
        [v47 leadingBorderWidthForScale:v38];
        width = v46 - v48;
      }
    }

    if (([v10 trailingOverlapsMain] & 1) == 0)
    {
      [v10 trailingWidth];
      if (v49 > 0.0)
      {
        [v10 trailingWidth];
        v51 = width - v50;
        v52 = [v10 configuration];
        [v52 trailingBorderWidthForScale:v38];
        width = v51 - v53;
      }
    }

    if (([v10 supplementaryOverlapsMain] & 1) == 0)
    {
      [v10 supplementaryWidth];
      if (v54 > 0.0)
      {
        [v10 supplementaryWidth];
        v56 = width - v55;
        v57 = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
        v58 = [v10 configuration];
        v59 = v58;
        if (v57)
        {
          [v58 leadingBorderWidthForScale:v38];
        }

        else
        {
          [v58 trailingBorderWidthForScale:v38];
        }

        v61 = v60;

        width = v56 - v61;
      }
    }
  }

LABEL_18:

  v32 = width;
  v33 = height;
  result.height = v33;
  result.width = v32;
  return result;
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v63 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v10 = objc_loadWeakRetained(&self->_delegate);
  v11 = [WeakRetained _existingView];
  v12 = "_UIMonochromaticTreatment";
  if (v11)
  {
    v13 = v11;
    v14 = [WeakRetained traitCollection];
    v15 = [v14 horizontalSizeClass];
    v16 = [v7 horizontalSizeClass];

    v17 = v15 == v16;
    v12 = "_UIMonochromaticTreatment";
    if (!v17)
    {
      objc_storeStrong(&self->_transitioningToTraitCollection, a3);
      *&self->_flags |= 0x80000000uLL;
      v18 = [WeakRetained _window];
      v19 = [v18 firstResponder];

      v20 = [WeakRetained detailViewController];
      v21 = v20;
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = WeakRetained;
      }

      v23 = v22;

      if (![v23 _containsResponder:v19])
      {
        goto LABEL_13;
      }

      if (objc_opt_respondsToSelector())
      {
        v24 = [(UISplitViewControllerPanelImpl *)self style];
        if (v24)
        {
          v25 = v24;
          v26 = *(__UILogGetCategoryCachedImpl("UISplitViewController", &willTransitionToTraitCollection_withTransitionCoordinator____s_category) + 8);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = v26;
            v28 = NSStringFromSelector(sel__splitViewControllerShouldRestoreResponderAfterTraitCollectionTransition_);
            v29 = _UISplitViewControllerStyleDescription(v25);
            *buf = 138543618;
            v60 = v28;
            v61 = 2114;
            v62 = v29;
            _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_ERROR, "Skipping delegate callback, %{public}@. Unsupported for UISplitViewController style %{public}@", buf, 0x16u);
          }
        }

        else if (![v10 _splitViewControllerShouldRestoreResponderAfterTraitCollectionTransition:WeakRetained])
        {
LABEL_13:
          v56[0] = MEMORY[0x1E69E9820];
          v12 = "_UIMonochromaticTreatment";
          v56[1] = 3221225472;
          v56[2] = __92__UISplitViewControllerPanelImpl_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
          v56[3] = &unk_1E7101978;
          v56[4] = self;
          v57 = v7;
          v58 = WeakRetained;
          [v8 animateAlongsideTransition:0 completion:v56];

          goto LABEL_14;
        }
      }

      objc_storeStrong(&self->_postTransitionResponder, v19);
      *&self->_flags &= 0xFFFFFFFFFFFFF3FFLL;
      v30 = [WeakRetained _window];
      [v30 _setIsSettingFirstResponder:1];

      goto LABEL_13;
    }
  }

LABEL_14:
  if (dyld_program_sdk_at_least())
  {
    if ([(UISplitViewControllerPanelImpl *)self style])
    {
      if (self->_suspendedState == 2)
      {
        v31 = [(UISplitViewControllerPanelImpl *)self panelController];
        v32 = [v31 collapsedViewController];

        if (v32)
        {
          v33 = [(UISplitViewControllerPanelImpl *)self style];
          v34 = v33;
          if ((v33 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v35 = [MEMORY[0x1E696AAA8] currentHandler];
            v51 = _UISplitViewControllerStyleDescription(v34);
            [v35 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:3417 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v51}];

            v36 = 0;
          }

          else
          {
            if (v33 != 2)
            {
              v36 = 0;
LABEL_23:
              perColumnViewControllers = self->_perColumnViewControllers;
              v38 = [MEMORY[0x1E696AD98] numberWithInteger:v36];
              v39 = [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:v38];
              v40 = [v39 navigationController];

              v41 = [(UISplitViewControllerPanelImpl *)self panelController];
              v42 = [v41 collapsedViewController];

              if (v42 != v40)
              {
LABEL_32:

                goto LABEL_33;
              }

              v43 = [v40 _nestedTopViewController];
              v44 = [(UISplitViewControllerPanelImpl *)self viewControllerForColumn:0];

              if (v43 == v44)
              {
                v47 = 3;
              }

              else
              {
                v45 = [(UISplitViewControllerPanelImpl *)self viewControllerForColumn:1];

                if (v43 == v45)
                {
                  v47 = 5;
                }

                else
                {
                  v46 = [(UISplitViewControllerPanelImpl *)self viewControllerForColumn:2];

                  if (v43 != v46)
                  {
LABEL_31:

                    goto LABEL_32;
                  }

                  v47 = 4;
                }
              }

              self->_suspendedState = v47;
              goto LABEL_31;
            }

            v35 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
            v36 = v35 == 0;
          }

          goto LABEL_23;
        }
      }
    }
  }

LABEL_33:
  v48 = [(UISplitViewControllerPanelImpl *)self panelController];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = *(v12 + 235);
  v53[2] = __92__UISplitViewControllerPanelImpl_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke_2;
  v53[3] = &unk_1E70F6228;
  v53[4] = self;
  v54 = v7;
  v55 = v8;
  v49 = v8;
  v50 = v7;
  [v48 willTransitionToTraitCollection:v50 withTransitionCoordinator:v49 superBlock:v53];
}

void __92__UISplitViewControllerPanelImpl_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke(id *a1)
{
  v2 = a1[4];
  v3 = v2[18];
  v2[18] = 0;

  *(a1[4] + 38) = 0;
  v4 = [a1[4] panelController];
  v5 = [v4 currentState];
  v6 = [v5 isCollapsed];
  v7 = [a1[4] panelController];
  v8 = [v7 isCollapsed];

  if (v6 == v8)
  {
    *(a1[4] + 36) &= ~0x80000000uLL;
  }

  if ([a1[5] horizontalSizeClass] != 1)
  {
    v9 = [a1[4] panelController];
    [v9 setPreservedDetailController:0];
  }

  v10 = a1[4];
  v11 = v10[29];
  if (v11)
  {
    if ((*(v10 + 289) & 4) == 0)
    {
      v12 = [a1[6] _containsResponder:?];
      v13 = a1[4];
      if (v12)
      {
        v14 = v13[29];
        if ((*(v13 + 289) & 8) != 0)
        {
          [v14 becomeFirstResponder];
          v15 = 0;
        }

        else
        {
          v15 = v14;
          v16 = [a1[6] _window];
          [v16 _setFirstResponder:*(a1[4] + 29)];
        }

        v41 = 0;
LABEL_15:
        v17 = a1[4];
        v18 = v17[29];
        v17[29] = 0;

        *(a1[4] + 36) &= ~0x400uLL;
        *(a1[4] + 36) &= ~0x800uLL;
        if (v41)
        {
          [v41 _finishResignFirstResponder];
          v19 = [v41 _window];
          if (!v19)
          {
            WeakRetained = objc_loadWeakRetained(a1[4] + 2);
            v31 = [WeakRetained _window];
            v32 = [v31 windowScene];
            v33 = [v32 keyboardSceneDelegate];
            v34 = [v33 responder];

            if (v34 != v41)
            {
              goto LABEL_23;
            }

            v37 = objc_loadWeakRetained(a1[4] + 2);
            v38 = [v37 _window];
            v39 = [v38 windowScene];
            v19 = [v39 keyboardSceneDelegate];

            v40 = [v19 automaticAppearanceInternalEnabled];
            [v19 setAutomaticAppearanceInternalEnabled:1];
            [v19 _reloadInputViewsForResponder:0];
            [v19 setAutomaticAppearanceInternalEnabled:v40];
          }
        }

        else
        {
          if (!v15 || ([v15 _window], (v20 = objc_claimAutoreleasedReturnValue()) == 0) || (v21 = v20, v22 = objc_loadWeakRetained(a1[4] + 2), objc_msgSend(v22, "_window"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "windowScene"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "keyboardSceneDelegate"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "responder"), v26 = objc_claimAutoreleasedReturnValue(), v26, v25, v24, v23, v22, v21, v26))
          {
LABEL_23:
            v35 = objc_loadWeakRetained(a1[4] + 2);
            v36 = [v35 _window];
            [v36 _setIsSettingFirstResponder:0];

            return;
          }

          v19 = objc_loadWeakRetained(a1[4] + 2);
          v27 = [v19 _window];
          v28 = [v27 windowScene];
          v29 = [v28 keyboardSceneDelegate];
          [v29 _reloadInputViewsForResponder:v15];
        }

        goto LABEL_23;
      }

      v11 = v13[29];
    }

    v41 = v11;
    v15 = 0;
    goto LABEL_15;
  }
}

void __92__UISplitViewControllerPanelImpl_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 16));
  [WeakRetained _super_willTransitionToTraitCollection:a1[5] withTransitionCoordinator:a1[6]];
}

- (void)traitCollectionDidChange:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v49 = a3;
  if ([(UISplitViewControllerPanelImpl *)self _shouldUseFluidSidebarGestures])
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v5 = [WeakRetained traitCollection];
    v6 = [v5 layoutDirection];
    v7 = [v49 layoutDirection];

    if (v6 != v7)
    {
      [(UISplitViewControllerPanelImpl *)self _updatePresentationGestureRecognizer];
    }
  }

  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    v8 = objc_loadWeakRetained(&self->_svc);
    v9 = [v8 traitCollection];
    v10 = [v9 _presentationSemanticContext];
    v11 = [v49 _presentationSemanticContext];

    if (v10 != v11)
    {
      v12 = [v49 _presentationSemanticContext];
      if (!self)
      {
        goto LABEL_22;
      }

      v14 = v12;
      v15 = [(UISplitViewControllerPanelImpl *)self style];
      if ((v15 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v46 = v15;
        v47 = [MEMORY[0x1E696AAA8] currentHandler];
        v48 = _UISplitViewControllerStyleDescription(v46);
        [v47 handleFailureInMethod:sel__updateDisplayModeIfNecessaryForChangeFromPresentationSemanticContext_ object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:3495 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v48}];
      }

      v16 = objc_loadWeakRetained(&self->_svc);
      v17 = [v16 _existingView];
      [v17 bounds];
      Width = CGRectGetWidth(v64);

      v19 = objc_loadWeakRetained(&self->_svc);
      v20 = [v19 traitCollection];
      v21 = [v20 _presentationSemanticContext];

      if (Width <= 0.0)
      {
        goto LABEL_22;
      }

      v22 = objc_loadWeakRetained(&self->_svc);
      if (!_UISplitViewControllerAutoHidesColumns(v22) || v21 == v14)
      {
      }

      else
      {
        v23 = [(UISplitViewControllerPanelImpl *)self _isCollapsedOrCollapsing];

        if (!v23)
        {
          v50 = 0.0;
          v51 = 0.0;
          [(UISplitViewControllerPanelImpl *)self getPrimaryColumnWidth:&v51 supplementaryColumnWidth:&v50 forSize:2 displayMode:1 splitBehavior:0 isCompact:0 shouldUseOverlay:Width, 800.0];
          if (v50 == 0.0 || (v13 = v51, v51 == 0.0))
          {
            if (_UIGetUISplitViewControllerChamoisResizeLogging())
            {
              v24 = *(__UILogGetCategoryCachedImpl("ChamoisResize", &qword_1ED49D8F0) + 8);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                v25 = v24;
                v26 = objc_loadWeakRetained(&self->_svc);
                *buf = 138412546;
                v53 = v26;
                v54 = 2048;
                v55 = Width;
                _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "%@: Updating display mode if necessary for change in presentationSemanticContext with width %g", buf, 0x16u);
              }
            }

            v27 = [(UISplitViewControllerPanelImpl *)self displayMode];
            v28 = v27;
            if (v27 != 2 || v21 == 2)
            {
              if (v27 != 1 || v21 != 2)
              {
                goto LABEL_37;
              }

              v30 = [(UISplitViewControllerPanelImpl *)self _isSecondaryColumnCompactInTotalWidth:Width withPrimaryColumnWidth:v51 supplementaryColumnWidth:v50];
              if (v30)
              {
                v31 = 0;
              }

              else
              {
                v31 = 2;
              }
            }

            else
            {
              v29 = [(UISplitViewControllerPanelImpl *)self _isSecondaryColumnCompactInTotalWidth:Width withPrimaryColumnWidth:v51 supplementaryColumnWidth:v50];
              LOBYTE(v30) = !v29;
              v31 = v29;
            }

            if (!v30 && v28 != v31)
            {
              if (_UIGetUISplitViewControllerChamoisResizeLogging())
              {
                v36 = *(__UILogGetCategoryCachedImpl("ChamoisResize", &qword_1ED49D8F8) + 8);
                if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                {
                  v37 = v36;
                  v38 = objc_loadWeakRetained(&self->_svc);
                  v39 = _UISplitViewControllerDisplayModeDescription(v28);
                  v40 = _UISplitViewControllerDisplayModeDescription(v31);
                  *buf = 138413058;
                  v53 = v38;
                  v54 = 2112;
                  v55 = *&v39;
                  v56 = 2112;
                  v57 = v40;
                  v58 = 2048;
                  v59 = Width;
                  _os_log_impl(&dword_188A29000, v37, OS_LOG_TYPE_ERROR, "%@: Automatically changing displayMode from %@ to %@ for change in presentationSemanticContext with width %g", buf, 0x2Au);
                }
              }

              [(UISplitViewControllerPanelImpl *)self setUserGeneratedDisplayMode:0];
              v41 = [(UISplitViewControllerPanelImpl *)self panelController];
              [v41 setNeedsUpdate];

              goto LABEL_22;
            }

LABEL_37:
            if (_UIGetUISplitViewControllerChamoisResizeLogging())
            {
              v42 = *(__UILogGetCategoryCachedImpl("ChamoisResize", &qword_1ED49D900) + 8);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                v43 = v42;
                v44 = objc_loadWeakRetained(&self->_svc);
                v45 = _UISplitViewControllerDisplayModeDescription(v28);
                *buf = 138413314;
                v53 = v44;
                v54 = 2112;
                v55 = *&v45;
                v56 = 2048;
                v57 = v14;
                v58 = 2048;
                v59 = *&v21;
                v60 = 2048;
                v61 = Width;
                _os_log_impl(&dword_188A29000, v43, OS_LOG_TYPE_ERROR, "%@: Unchanged displayMode, %@, despite change in presentationSemanticContext (from %ld to %ld) with width %g", buf, 0x34u);
              }
            }
          }
        }
      }

LABEL_22:
      v32 = [(UISplitViewControllerPanelImpl *)self panelController];
      [v32 setNeedsUpdate];
    }
  }

  v33 = [(UISplitViewControllerPanelImpl *)self panelController];
  v34 = objc_loadWeakRetained(&self->_svc);
  v35 = [v34 traitCollection];
  [v33 traitCollectionDidChange:v49 toNewTraits:v35];
}

- (int64_t)_svcOrientation
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v3 = [WeakRetained _window];
  v4 = [v3 windowScene];
  v5 = [v4 _interfaceOrientation];

  return v5;
}

- (int64_t)_svcViewWindowOrientation
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v3 = [WeakRetained view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 _interfaceOrientation];

  return v6;
}

- (BOOL)canTileSidebarColumn:(int64_t)a3
{
  v6 = [(UISplitViewControllerPanelImpl *)self style];
  if (v6 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = _UISplitViewControllerStyleDescription(v6);
    [v23 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:3542 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v24}];
  }

  if (a3 >= 2)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = _UISplitViewControllerColumnDescription(a3);
    [v7 raise:v8 format:{@"canTileSidebarColumn not supported for %@ column", v9}];
  }

  if ([(UISplitViewControllerPanelImpl *)self _isCollapsed])
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v12 = [WeakRetained _existingView];
  [v12 bounds];
  Width = CGRectGetWidth(v30);
  if (!self)
  {
    goto LABEL_11;
  }

  v14 = Width;
  v15 = [(UISplitViewControllerPanelImpl *)self style];
  if (v15 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = _UISplitViewControllerStyleDescription(v15);
    [v25 handleFailureInMethod:sel__maximumNumberOfColumnsAllowedToTileInWidth_ object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:3577 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v26}];
  }

  if (![(UISplitViewControllerPanelImpl *)self _isSecondaryColumnCompactInTotalWidth:v14 withPrimaryColumnWidth:0.0 supplementaryColumnWidth:0.0])
  {
    v28 = 0.0;
    v29 = 0.0;
    [(UISplitViewControllerPanelImpl *)self getPrimaryColumnWidth:&v29 supplementaryColumnWidth:&v28 forSize:2 displayMode:1 splitBehavior:0 isCompact:0 shouldUseOverlay:v14, 800.0];
    v18 = v28;
    v17 = v29;
    if (v29 != 0.0 && v28 != 0.0)
    {
      v27 = [MEMORY[0x1E696AAA8] currentHandler];
      [v27 handleFailureInMethod:sel__maximumNumberOfColumnsAllowedToTileInWidth_ object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:3588 description:@"Internal UIKit error: UISplitViewControllerDisplayModeOneBesideSecondary should only report nonzero width for one of the primary or supplementary columns"];

      v18 = v28;
      v17 = v29;
    }

    v19 = [(UISplitViewControllerPanelImpl *)self _isSecondaryColumnCompactInTotalWidth:v14 withPrimaryColumnWidth:v17 supplementaryColumnWidth:v18];
    if (v19)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    if (v15 == 2 && !v19)
    {
      v20 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];

      if (v20)
      {
        v28 = 0.0;
        v29 = 0.0;
        [(UISplitViewControllerPanelImpl *)self getPrimaryColumnWidth:&v29 supplementaryColumnWidth:&v28 forSize:4 displayMode:1 splitBehavior:0 isCompact:0 shouldUseOverlay:v14, 800.0];
        if ([(UISplitViewControllerPanelImpl *)self _isSecondaryColumnCompactInTotalWidth:v14 withPrimaryColumnWidth:v29 supplementaryColumnWidth:v28])
        {
          v16 = 2;
        }

        else
        {
          v16 = 3;
        }
      }

      else
      {
        v16 = 2;
      }
    }
  }

  else
  {
LABEL_11:
    v16 = 0;
  }

  result = v16 > 1;
  if (v6 == 2 && v16 >= 2)
  {
    if (a3 == 1)
    {
      v21 = 1;
    }

    else
    {
      v22 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
      v21 = v22 == 0;
    }

    return v16 != 2 || v21;
  }

  return result;
}

- (BOOL)isShowingColumn:(int64_t)a3
{
  if (![(UISplitViewControllerPanelImpl *)self style]|| [(UISplitViewControllerPanelImpl *)self isCollapsed])
  {
    return 0;
  }

  v6 = [(UISplitViewControllerPanelImpl *)self style];
  v7 = [(UISplitViewControllerPanelImpl *)self displayMode];

  return _UISplitViewControllerColumnIsVisibleForDisplayMode(v6, a3, v7);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v9 = [(UISplitViewControllerPanelImpl *)self _svcOrientation];
  v10 = v9;
  v11 = v9 - 1;
  switch(v9)
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
    default:
      v12 = 3.14159265;
      if (v9 != 2)
      {
        v12 = 0.0;
      }

      break;
  }

  CGAffineTransformMakeRotation(&t1, v12);
  if (v7)
  {
    [v7 targetTransform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  CGAffineTransformConcat(&v44, &t1, &t2);
  v13 = 0;
  v34 = vrndaq_f64(*&v44.c);
  v35 = vrndaq_f64(*&v44.a);
  v33 = vrndaq_f64(*&v44.tx);
  while (1)
  {
    *&t1.a = v35;
    *&t1.c = v34;
    v14 = 3.14159265;
    *&t1.tx = v33;
    if (v13 <= 2)
    {
      v14 = dbl_18A679578[v13];
    }

    CGAffineTransformMakeRotation(&v45, v14);
    *&v45.a = vrndaq_f64(*&v45.a);
    *&v45.c = vrndaq_f64(*&v45.c);
    *&v45.tx = vrndaq_f64(*&v45.tx);
    t2 = v45;
    if (CGAffineTransformEqualToTransform(&t1, &t2))
    {
      break;
    }

    if (++v13 == 4)
    {
      v15 = 0;
      goto LABEL_19;
    }
  }

  v15 = qword_18A679558[v13];
LABEL_19:
  if (self->_transitioningToTraitCollection)
  {
    goto LABEL_29;
  }

  v16 = [WeakRetained _existingView];
  [v16 bounds];
  if (width != v18 || height != v17)
  {
    goto LABEL_28;
  }

  if (v11 > 1)
  {
    if ((v10 - 3) < 2)
    {

      if ((v15 - 3) > 1)
      {
        goto LABEL_29;
      }

LABEL_27:
      [WeakRetained _super_viewWillTransitionToSize:v7 withTransitionCoordinator:{width, height, *&v33, *&v34}];
      goto LABEL_53;
    }

LABEL_28:

    goto LABEL_29;
  }

  if ((v15 - 1) < 2)
  {
    goto LABEL_27;
  }

LABEL_29:
  v36 = v7;
  v19 = WeakRetained;
  v20 = [WeakRetained traitCollection];
  v21 = objc_loadWeakRetained(&self->_svc);
  v22 = [v21 _existingView];
  v23 = [v22 window];
  v24 = [v23 windowScene];
  v25 = [v24 _effectiveUISettings];
  v26 = [v25 inLiveResize];

  v27 = v20;
  if ((v26 & 1) == 0 && [v20 userInterfaceIdiom] == 1 && -[UITraitCollection horizontalSizeClass](self->_transitioningToTraitCollection, "horizontalSizeClass") != UIUserInterfaceSizeClassCompact)
  {
    if ([(UISplitViewControllerPanelImpl *)self style])
    {
      if ([(UISplitViewControllerPanelImpl *)self userGeneratedDisplayMode])
      {
        v30 = [(UISplitViewControllerPanelImpl *)self userGeneratedDisplayMode];
        if (v30 != [(UISplitViewControllerPanelImpl *)self preferredDisplayMode])
        {
          [(UISplitViewControllerPanelImpl *)self setUserGeneratedDisplayMode:0];
        }
      }
    }

    else if ([v19 preferredDisplayMode] != 2)
    {
      [(UISplitViewControllerPanelImpl *)self _setPrimaryHidingState:0];
    }
  }

  v28 = [v20 userInterfaceIdiom];
  WeakRetained = v19;
  v7 = v36;
  if (!v28 && [(UISplitViewControllerPanelImpl *)self _iPhoneShouldUseOverlayInCurrentEnvironment]&& (*&self->_transitioningFlags & 1) != 0)
  {
    if ([(UISplitViewControllerPanelImpl *)self style])
    {
      if ((*&self->_transitioningFlags & 2) != 0)
      {
        v29 = 3;
      }

      else
      {
        v29 = 1;
      }

      [(UISplitViewControllerPanelImpl *)self setUserGeneratedDisplayMode:v29];
    }

    else
    {
      if ((*&self->_transitioningFlags & 2) != 0)
      {
        v31 = 2;
      }

      else
      {
        v31 = 1;
      }

      [(UISplitViewControllerPanelImpl *)self _setPrimaryHidingState:v31];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42[4] = self;
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __85__UISplitViewControllerPanelImpl_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v43[3] = &unk_1E70F3B98;
    v43[4] = self;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __85__UISplitViewControllerPanelImpl_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
    v42[3] = &unk_1E70F3B98;
    [v36 _animateAlongsideTransitionInView:0 systemAnimation:1 systemCompletion:1 animation:v43 completion:v42];
  }

  *&self->_flags |= 0x100uLL;
  self->_transitioningToSize.width = width;
  self->_transitioningToSize.height = height;
  self->_transitioningToOrientation = v15;
  v32 = [(UISplitViewControllerPanelImpl *)self panelController];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __85__UISplitViewControllerPanelImpl_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3;
  v37[3] = &unk_1E70F9780;
  v38 = v19;
  v40 = width;
  v41 = height;
  v39 = v36;
  [v32 viewWillTransitionToSize:v39 withTransitionCoordinator:v37 superBlock:{width, height}];

  *&self->_flags &= ~0x100uLL;
  self->_transitioningToSize = *MEMORY[0x1E695F060];
  self->_transitioningToOrientation = 0;

LABEL_53:
}

- (id)navigationControllerForColumn:(int64_t)a3
{
  v3 = [(UISplitViewControllerPanelImpl *)self _topLevelViewControllerForColumn:a3];
  v4 = [v3 navigationController];

  return v4;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4 = a3;
  v5 = [(UISplitViewControllerPanelImpl *)self panelController];
  [v5 preferredContentSizeDidChangeForChildContentContainer:v4];
}

- (id)_orderedPreferredFocusedViewControllers
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = [(UISplitViewControllerPanelImpl *)self viewControllers];
  if (!dyld_program_sdk_at_least() || ![v3 count])
  {
    v7 = v3;
    goto LABEL_10;
  }

  if (![(UISplitViewControllerPanelImpl *)self style])
  {
    v9 = [v3 subarrayWithRange:{1, objc_msgSend(v3, "count") - 1}];
    v10 = [v3 firstObject];
    v7 = [v9 arrayByAddingObject:v10];

    goto LABEL_32;
  }

  if ([(UISplitViewControllerPanelImpl *)self isCollapsed])
  {
    v4 = [(UISplitViewControllerPanelImpl *)self viewControllerForColumn:3];
    if (v4 || ([(UIPanelController *)self->_panelController collapsedViewController], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      WeakRetained = v4;
      v18[0] = v4;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    }

    else
    {
      if (os_variant_has_internal_diagnostics())
      {
        v16 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          *v17 = 0;
          _os_log_fault_impl(&dword_188A29000, v16, OS_LOG_TYPE_FAULT, "Unable to get collapsedViewController while in collapsed state.", v17, 2u);
        }
      }

      else
      {
        v15 = *(__UILogGetCategoryCachedImpl("Assert", &_orderedPreferredFocusedViewControllers___s_category) + 8);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *v17 = 0;
          _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Unable to get collapsedViewController while in collapsed state.", v17, 2u);
        }
      }

      WeakRetained = objc_loadWeakRetained(&self->_svc);
      v6 = [WeakRetained viewControllers];
    }

    v7 = v6;

    goto LABEL_10;
  }

  v7 = [MEMORY[0x1E695DF70] array];
  if (![(UIPanelController *)self->_panelController isAnimating])
  {
    if ((_UISplitViewControllerColumnIsHiddenOrDimmedForDisplayMode([(UISplitViewControllerPanelImpl *)self style], 2, [(UISplitViewControllerPanelImpl *)self displayMode]) & 1) == 0)
    {
      v13 = [(UISplitViewControllerPanelImpl *)self viewControllerForColumn:2];
      if (v13)
      {
        [v7 addObject:v13];
      }
    }

    if ((_UISplitViewControllerColumnIsHiddenOrDimmedForDisplayMode([(UISplitViewControllerPanelImpl *)self style], 0, [(UISplitViewControllerPanelImpl *)self displayMode]) & 1) == 0)
    {
      v14 = [(UISplitViewControllerPanelImpl *)self viewControllerForColumn:0];
      if (v14)
      {
        [v7 addObject:v14];
      }
    }

    if (_UISplitViewControllerColumnIsHiddenOrDimmedForDisplayMode([(UISplitViewControllerPanelImpl *)self style], 1, [(UISplitViewControllerPanelImpl *)self displayMode]))
    {
      goto LABEL_10;
    }

    v9 = [(UISplitViewControllerPanelImpl *)self viewControllerForColumn:1];
    if (v9)
    {
      goto LABEL_31;
    }

LABEL_32:

    goto LABEL_10;
  }

  if ([(UIPanelController *)self->_panelController isTrailingViewControllerVisibleAfterAnimation])
  {
    v11 = [(UIPanelController *)self->_panelController trailingViewController];
    [v7 addObject:v11];
  }

  if ([(UIPanelController *)self->_panelController isLeadingViewControllerVisibleAfterAnimation])
  {
    v12 = [(UIPanelController *)self->_panelController leadingViewController];
    [v7 addObject:v12];
  }

  if ([(UIPanelController *)self->_panelController isSupplementaryViewControllerVisibleAfterAnimation])
  {
    v9 = [(UIPanelController *)self->_panelController supplementaryViewController];
LABEL_31:
    [v7 addObject:v9];
    goto LABEL_32;
  }

LABEL_10:

  return v7;
}

- (UIView)preferredFocusedView
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(UISplitViewControllerPanelImpl *)self _orderedPreferredFocusedViewControllers];
  v4 = [(UISplitViewControllerPanelImpl *)self _lastFocusedChildViewControllerColumn];
  if (v4 == 999)
  {
    goto LABEL_14;
  }

  v5 = v4;
  if (![(UISplitViewControllerPanelImpl *)self style])
  {
    v7 = [(UISplitViewControllerPanelImpl *)self viewControllers];
    if (v5 >= [v7 count])
    {
      v6 = 0;
    }

    else
    {
      v6 = [v7 objectAtIndexedSubscript:v5];
    }

    if (!v6)
    {
      goto LABEL_13;
    }

LABEL_9:
    if ([v3 containsObject:v6])
    {
      v8 = [v6 preferredFocusedView];

      if (v8 && ([(UIView *)v8 _containsPreferredFocusableView]& 1) != 0)
      {
        goto LABEL_27;
      }

      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v6 = [(UISplitViewControllerPanelImpl *)self _topLevelViewControllerForColumn:v5];
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_13:

LABEL_14:
  v8 = 0;
LABEL_15:
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  WeakRetained = v3;
  v10 = [WeakRetained countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
LABEL_17:
    v13 = 0;
    v14 = v8;
    while (1)
    {
      if (*v17 != v12)
      {
        objc_enumerationMutation(WeakRetained);
      }

      v8 = [*(*(&v16 + 1) + 8 * v13) preferredFocusedView];

      if (v8)
      {
        if (([(UIView *)v8 _containsPreferredFocusableView]& 1) != 0)
        {
          break;
        }
      }

      ++v13;
      v14 = v8;
      if (v11 == v13)
      {
        v11 = [WeakRetained countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v11)
        {
          goto LABEL_17;
        }

        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_24:

    if (v8)
    {
      goto LABEL_27;
    }

    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v8 = [WeakRetained _super_preferredFocusedView];
  }

LABEL_27:

  return v8;
}

- (NSArray)preferredFocusEnvironments
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(UISplitViewControllerPanelImpl *)self _orderedPreferredFocusedViewControllers];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [(UISplitViewControllerPanelImpl *)self _lastFocusedChildViewControllerColumn];
  if (v5 != 999)
  {
    v6 = v5;
    if ([(UISplitViewControllerPanelImpl *)self style])
    {
      v7 = [(UISplitViewControllerPanelImpl *)self _topLevelViewControllerForColumn:v6];
      if (!v7)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      v8 = [(UISplitViewControllerPanelImpl *)self viewControllers];
      if (v6 >= [v8 count])
      {
        v7 = 0;
      }

      else
      {
        v7 = [v8 objectAtIndexedSubscript:v6];
      }

      if (!v7)
      {
        goto LABEL_11;
      }
    }

    if ([v3 containsObject:v7])
    {
      [v4 addObject:v7];
    }

    goto LABEL_11;
  }

LABEL_12:
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v3;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if (([v4 containsObject:{v14, v20}] & 1) == 0)
        {
          [v4 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v16 = [WeakRetained _super_preferredFocusEnvironments];
  [v4 addObjectsFromArray:v16];

  v17 = objc_loadWeakRetained(&self->_svc);
  v18 = _UIFocusEnvironmentCombinedPreferredFocusEnvironments(v17, v4, [v17 _subclassPreferredFocusedViewPrioritizationType]);

  return v18;
}

- (UIFocusEnvironment)_overridingPreferredFocusEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v4 = [WeakRetained _super_overridingPreferredFocusEnvironment];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(UISplitViewControllerPanelImpl *)self _orderedPreferredFocusedViewControllers];
    if ([v6 count] == 1)
    {
      v5 = [v6 firstObject];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)shouldUpdateFocusInContext:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v6 = [WeakRetained _super_shouldUpdateFocusInContext:v4];

  return v6;
}

- (id)leadingVisibleViewController
{
  v3 = [(UISplitViewControllerPanelImpl *)self style];
  v4 = [(UISplitViewControllerPanelImpl *)self panelController];
  v5 = [v4 isAnimating];
  if (!v3)
  {
    v7 = [(UISplitViewControllerPanelImpl *)self panelController];
    v8 = v7;
    if (v5)
    {
      v9 = [v7 isLeadingViewControllerVisibleAfterAnimation];

      if ((v9 & 1) == 0)
      {
LABEL_6:
        v6 = [(UISplitViewControllerPanelImpl *)self panelController];
        v4 = v6;
        goto LABEL_7;
      }
    }

    else
    {
      v11 = [v7 currentState];
      v12 = [v11 isLeadingVisible];

      if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v13 = [(UISplitViewControllerPanelImpl *)self panelController];
    v4 = v13;
LABEL_16:
    v10 = [v13 leadingViewController];
    goto LABEL_17;
  }

  if ([(UISplitViewControllerPanelImpl *)self primaryEdge])
  {
LABEL_3:
    v6 = v4;
LABEL_7:
    v10 = [v6 mainViewController];
    goto LABEL_17;
  }

  if (v5)
  {
    if (([v4 isLeadingViewControllerVisibleAfterAnimation] & 1) == 0)
    {
      if (([v4 isSupplementaryViewControllerVisibleAfterAnimation] & 1) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v14 = [v4 currentState];
  v15 = [v14 isLeadingVisible];

  if (v15)
  {
LABEL_15:
    v13 = v4;
    goto LABEL_16;
  }

  v18 = [v4 currentState];
  v19 = [v18 isSupplementaryVisible];

  if (!v19)
  {
    goto LABEL_3;
  }

LABEL_21:
  v10 = [v4 supplementaryViewController];
LABEL_17:
  v16 = v10;

  return v16;
}

- (id)trailingVisibleViewController
{
  v3 = [(UISplitViewControllerPanelImpl *)self style];
  v4 = [(UISplitViewControllerPanelImpl *)self panelController];
  v5 = [v4 isAnimating];
  if (!v3)
  {
    v7 = [(UISplitViewControllerPanelImpl *)self panelController];
    v8 = v7;
    if (v5)
    {
      v9 = [v7 isTrailingViewControllerVisibleAfterAnimation];

      if ((v9 & 1) == 0)
      {
LABEL_9:
        v6 = [(UISplitViewControllerPanelImpl *)self panelController];
        v4 = v6;
        goto LABEL_10;
      }
    }

    else
    {
      v11 = [v7 currentState];
      v12 = [v11 isTrailingVisible];

      if ((v12 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v13 = [(UISplitViewControllerPanelImpl *)self panelController];
    v4 = v13;
LABEL_15:
    v10 = [v13 trailingViewController];
    goto LABEL_16;
  }

  if ([(UISplitViewControllerPanelImpl *)self primaryEdge]!= 1)
  {
LABEL_6:
    v6 = v4;
LABEL_10:
    v10 = [v6 mainViewController];
    goto LABEL_16;
  }

  if (v5)
  {
    if (([v4 isTrailingViewControllerVisibleAfterAnimation] & 1) == 0)
    {
      if (([v4 isSupplementaryViewControllerVisibleAfterAnimation] & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v14 = [v4 currentState];
  v15 = [v14 isTrailingVisible];

  if (v15)
  {
LABEL_14:
    v13 = v4;
    goto LABEL_15;
  }

  v18 = [v4 currentState];
  v19 = [v18 isSupplementaryVisible];

  if (!v19)
  {
    goto LABEL_6;
  }

LABEL_20:
  v10 = [v4 supplementaryViewController];
LABEL_16:
  v16 = v10;

  return v16;
}

- (int64_t)preferredLeadingStatusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v4 = [WeakRetained _shouldUseSeparateStatusBarStyles];

  if (!v4)
  {
    return 4;
  }

  v5 = [(UISplitViewControllerPanelImpl *)self leadingVisibleViewController];
  v6 = [v5 _effectiveStatusBarStyleViewController];

  v7 = _viewControllerIfStatusBarPartStyleProviding(v6);
  v8 = v7;
  if (!v7 || (v9 = [v7 preferredLeadingStatusBarStyle], v9 == 4))
  {
    v10 = [v6 preferredStatusBarStyle];
    if (v10 == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2 * (v10 == 3);
    }
  }

  return v9;
}

- (int64_t)preferredTrailingStatusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v4 = [WeakRetained _shouldUseSeparateStatusBarStyles];

  if (!v4)
  {
    return 4;
  }

  v5 = [(UISplitViewControllerPanelImpl *)self trailingVisibleViewController];
  v6 = [v5 _effectiveStatusBarStyleViewController];

  v7 = _viewControllerIfStatusBarPartStyleProviding(v6);
  v8 = v7;
  if (!v7 || (v9 = [v7 preferredTrailingStatusBarStyle], v9 == 4))
  {
    v10 = [v6 preferredStatusBarStyle];
    if (v10 == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2 * (v10 == 3);
    }
  }

  return v9;
}

- (int64_t)preferredCenterStatusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v4 = [WeakRetained _shouldUseSeparateStatusBarStyles];

  if (v4)
  {
    v5 = [(UISplitViewControllerPanelImpl *)self style];
    v6 = [(UISplitViewControllerPanelImpl *)self panelController];
    v7 = v6;
    if (!v5)
    {
      v11 = [v6 mainViewController];
      v12 = [v11 _effectiveStatusBarStyleViewController];
      v13 = v12;
      v14 = v7;
      goto LABEL_16;
    }

    if ([v6 isAnimating])
    {
      v8 = [v7 isLeadingViewControllerVisibleAfterAnimation];
      v9 = [v7 isTrailingViewControllerVisibleAfterAnimation];
      if (![v7 isSupplementaryViewControllerVisibleAfterAnimation])
      {
        goto LABEL_11;
      }
    }

    else
    {
      v15 = [v7 currentState];
      v8 = [v15 isLeadingVisible];

      v16 = [v7 currentState];
      v9 = [v16 isTrailingVisible];

      v17 = [v7 currentState];
      LODWORD(v16) = [v17 isSupplementaryVisible];

      if (!v16)
      {
        goto LABEL_11;
      }
    }

    if ((v8 | v9))
    {
      v18 = [v7 supplementaryViewController];
      goto LABEL_12;
    }

LABEL_11:
    v18 = [v7 mainViewController];
LABEL_12:
    v19 = v18;
    v12 = [v18 _effectiveStatusBarStyleViewController];

    v20 = _viewControllerIfStatusBarPartStyleProviding(v12);
    v13 = v20;
    if (v20)
    {
      v10 = [v20 preferredTrailingStatusBarStyle];
      v11 = v7;
      v14 = v12;
      if (v10 != 4)
      {
LABEL_20:

        return v10;
      }
    }

    else
    {
      v11 = v7;
      v14 = v12;
    }

LABEL_16:
    v21 = [v12 preferredStatusBarStyle];
    if (v21 == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2 * (v21 == 3);
    }

    v7 = v11;
    v12 = v14;
    goto LABEL_20;
  }

  return 4;
}

- (int64_t)preferredTrafficLightStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v4 = [WeakRetained _shouldUseSeparateStatusBarStyles];

  if (!v4)
  {
    return 0;
  }

  v5 = [(UISplitViewControllerPanelImpl *)self leadingVisibleViewController];
  v6 = [v5 _effectiveStatusBarStyleViewController];

  v7 = [v6 preferredTrafficLightStyle];
  return v7;
}

- (UIViewController)childViewControllerForStatusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v4 = [WeakRetained _shouldUseNewStatusBarBehavior];

  v5 = objc_loadWeakRetained(&self->_svc);
  v6 = v5;
  if (v4)
  {
    if ([v5 _shouldUseSeparateStatusBarStyles])
    {
      v7 = 0;
    }

    else
    {
      v8 = [(UISplitViewControllerPanelImpl *)self panelController];
      v7 = [v8 collapsedViewController];
    }
  }

  else
  {
    v7 = [v5 _super_childViewControllerForStatusBarStyle];
  }

  return v7;
}

- (BOOL)prefersPointerLocked
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v3 = [WeakRetained _super_prefersPointerLocked];

  return v3;
}

- (BOOL)prefersInterfaceOrientationLocked
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v3 = [WeakRetained _super_prefersInterfaceOrientationLocked];

  return v3;
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  v3 = [(UISplitViewControllerPanelImpl *)self _isCollapsed];
  v4 = [(UISplitViewControllerPanelImpl *)self panelController];
  v5 = v4;
  if (v3)
  {
    [v4 collapsedViewController];
  }

  else
  {
    [v4 mainViewController];
  }
  v6 = ;

  v7 = [v6 _effectiveHomeIndicatorAutoHiddenViewController];
  v8 = [v7 prefersHomeIndicatorAutoHidden];

  return v8;
}

- (unint64_t)preferredScreenEdgesDeferringSystemGestures
{
  v3 = [(UISplitViewControllerPanelImpl *)self _layoutPrimaryOnRight];
  v4 = [(UISplitViewControllerPanelImpl *)self leadingVisibleViewController];
  v5 = [(UISplitViewControllerPanelImpl *)self trailingVisibleViewController];
  v6 = v5;
  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v3)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;
  v10 = v7;
  v11 = [v10 _effectiveScreenEdgesDeferringSystemGesturesViewController];
  v12 = [v11 preferredScreenEdgesDeferringSystemGestures];

  if (v6 == v4)
  {
    v14 = v12;
  }

  else
  {
    v13 = [v9 _effectiveScreenEdgesDeferringSystemGesturesViewController];
    v14 = [v13 preferredScreenEdgesDeferringSystemGestures];
  }

  v15 = v14 & 0xFFFFFFFFFFFFFFFDLL | v12 & 0xFFFFFFFFFFFFFFF7;
  v16 = [(UISplitViewControllerPanelImpl *)self panelController];
  if ([v16 isAnimating])
  {
    if (([v16 isSupplementaryViewControllerVisibleAfterAnimation] & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v17 = [v16 currentState];
  v18 = [v17 isSupplementaryVisible];

  if (v18)
  {
LABEL_14:
    v19 = [v16 supplementaryViewController];
    v20 = [v19 _effectiveScreenEdgesDeferringSystemGesturesViewController];
    v21 = [v20 preferredScreenEdgesDeferringSystemGestures];

    v15 |= v21 & 0xFFFFFFFFFFFFFFF5;
  }

LABEL_15:
  if (![(UISplitViewControllerPanelImpl *)self _isCollapsed]&& ![(UISplitViewControllerPanelImpl *)self _isPrimaryShown])
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v23 = [WeakRetained presentsWithGesture];

    v24 = 2;
    if (v3)
    {
      v24 = 8;
    }

    if ((v23 & 1) == 0)
    {
      v24 = 0;
    }

    v15 |= v24;
  }

  return v15;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v5 = [WeakRetained childViewControllers];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    v9 = 1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v9 &= [*(*(&v12 + 1) + 8 * i) shouldAutorotateToInterfaceOrientation:a3];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (unint64_t)supportedInterfaceOrientations
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v4 = [WeakRetained delegate];

  if (dyld_program_sdk_at_least() && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = objc_loadWeakRetained(&self->_svc);
    v6 = [v4 splitViewControllerSupportedInterfaceOrientations:v5];
  }

  else
  {
    v5 = objc_loadWeakRetained(&self->_svc);
    v6 = [v5 _super_supportedInterfaceOrientations];
  }

  v7 = v6;

  return v7;
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v3 = [WeakRetained _super_preferredInterfaceOrientationForPresentation];

  return v3;
}

- (void)removeChildViewController:(id)a3
{
  v4 = a3;
  v5 = [(UISplitViewControllerPanelImpl *)self panelController];
  [v5 removeChildViewController:v4];

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  [WeakRetained _super_removeChildViewController:v4];
}

- (void)unloadViewForced:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(UISplitViewControllerPanelImpl *)self panelController:a3];
  v4 = [v3 allViewControllers];

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

        [*(*(&v9 + 1) + 8 * v8++) unloadViewIfReloadable];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_didUpdateFocusInContext:(id)a3
{
  v20 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  [WeakRetained _super_didUpdateFocusInContext:v20];

  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    v5 = [v20 nextFocusedView];

    if (!v5)
    {
      goto LABEL_13;
    }

    v6 = [v20 nextFocusedView];
    self->_lastFocusedChildViewControllerColumn = [(UISplitViewControllerPanelImpl *)self _columnForView:v6 getIsContent:0];
  }

  else
  {
    v6 = [(UISplitViewControllerPanelImpl *)self viewControllers];
    v7 = [v20 nextFocusedView];
    v8 = [v7 _viewControllerForAncestor];

    if (v8)
    {
      while (1)
      {
        v9 = [v6 indexOfObject:v8];
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v10 = [v8 parentViewController];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = [v8 presentingViewController];
        }

        v13 = v12;

        v8 = v13;
        if (!v13)
        {
          goto LABEL_12;
        }
      }

      self->_lastFocusedChildViewControllerColumn = v9;
    }
  }

LABEL_12:

LABEL_13:
  v14 = objc_loadWeakRetained(&self->_svc);
  v15 = [v14 view];
  v16 = [v15 effectiveUserInterfaceLayoutDirection];

  v17 = [v20 _focusMovement];
  if ([v17 _inputType] == 4)
  {
    if (v16)
    {
      v18 = 8;
    }

    else
    {
      v18 = 4;
    }

    v19 = [v20 focusHeading];

    if (v19 == v18)
    {
      *&self->_flags |= 0x200000000000uLL;
    }
  }

  else
  {
  }
}

- (NSArray)_multitaskingDragExclusionRects
{
  v2 = [(UISplitViewControllerPanelImpl *)self panelController];
  v3 = [v2 gatherMultitaskingDragExclusionRectsFromVisibleColumns];

  return v3;
}

- (BOOL)_hasPreferredInterfaceOrientationForPresentation
{
  if (dyld_program_sdk_at_least())
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v4 = [WeakRetained delegate];
    v5 = objc_opt_respondsToSelector();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (CGRect)_frameForChildContentContainer:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [(UISplitViewControllerPanelImpl *)self panelController];
  WeakRetained = [v5 allViewControllers];

  v7 = [WeakRetained countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(WeakRetained);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        if (v11 == v4)
        {
          v12 = [v11 view];
          [v12 frame];
          goto LABEL_11;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [WeakRetained countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v12 = [WeakRetained view];
  [v12 bounds];
LABEL_11:
  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;

  v21 = v17;
  v22 = v18;
  v23 = v19;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (BOOL)_usePaddingForEdgeInsetsForChildViewController:(id)a3
{
  v4 = a3;
  if ([(UISplitViewControllerPanelImpl *)self _isCollapsedOrCollapsing]|| (v6 = [(UISplitViewControllerPanelImpl *)self style]) == 0)
  {
    v5 = 0;
  }

  else
  {
    if (v6 == 1)
    {
      v8 = 0;
    }

    else if (v6 == 2)
    {
      v7 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    v5 = [(UISplitViewControllerPanelImpl *)self _columnForViewController:v4]== v8;
  }

  return v5;
}

- (UIEdgeInsets)_tvOSColumnStyleExtraInsetsForChildViewController:(id)a3
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

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  [WeakRetained _contentOverlayInsets];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    if ([(UISplitViewControllerPanelImpl *)self _usePaddingForEdgeInsetsForChildViewController:v6])
    {
      v16 = [(UISplitViewControllerPanelImpl *)self _layoutPrimaryOnRight];
      [(_UIHyperConstantExtender *)self->_extender _maximumDistance];
      v18 = v11 + v17;
      v19 = v15 + v17;
      if (v16)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0.0;
      }

      if (v16)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v18;
      }
    }

    else if (![(UISplitViewControllerPanelImpl *)self _isCollapsedOrCollapsing])
    {
      v21 = [v6 view];
      [v21 frame];
      v23 = v22;
      v50 = v24;
      v51 = v22;
      v25 = v24;
      v27 = v26;
      v48 = v28;
      v49 = v26;
      v29 = v28;

      v52.origin.x = v23;
      v52.origin.y = v25;
      v52.size.width = v27;
      v52.size.height = v29;
      v11 = fmax(fmin(v11 - CGRectGetMinX(v52), v11), 0.0);
      v30 = [v6 view];
      v31 = [v30 superview];
      [v31 bounds];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      v53.origin.x = v33;
      v53.origin.y = v35;
      v53.size.width = v37;
      v53.size.height = v39;
      MaxX = CGRectGetMaxX(v53);
      v54.origin.y = v50;
      v54.origin.x = v51;
      v54.size.height = v48;
      v54.size.width = v49;
      v15 = fmax(fmin(v15 - (MaxX - CGRectGetMaxX(v54)), v15), 0.0);
    }
  }

  else
  {
    [(UISplitViewControllerPanelImpl *)self _contentMarginForChildViewController:v6];
    v15 = v20;
    v11 = v20;
  }

  v41 = [(UISplitViewControllerPanelImpl *)self tabBarHostedView:*&v48];
  v42 = v41;
  if (v41)
  {
    [v41 floatingTabBarTopInsetForViewController:v6];
    v9 = v9 + v43;
  }

  *a4 = 1;
  v44 = v9;
  v45 = v11;
  v46 = v13;
  v47 = v15;
  result.right = v47;
  result.bottom = v46;
  result.left = v45;
  result.top = v44;
  return result;
}

- (void)_marginInfoForChild:(id)a3 leftMargin:(double *)a4 rightMargin:(double *)a5
{
  v9 = a3;
  if ([(UISplitViewControllerPanelImpl *)self _shouldZeroSafeAreaInsetsForViewController:?])
  {
    *a4 = 0.0;
    *a5 = 0.0;
  }

  else if ([(UISplitViewControllerPanelImpl *)self style])
  {
    [(UISplitViewControllerPanelImpl *)self _contentMarginForChildViewController:v9];
    *a5 = v8;
    *a4 = v8;
  }

  else
  {
    *a4 = -1.79769313e308;
    *a5 = -1.79769313e308;
  }
}

- (BOOL)_shouldZeroSafeAreaInsetsForViewController:(id)a3
{
  v4 = a3;
  v5 = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];

  if (v5 == v4 && qword_1ED49D968 != -1)
  {
    dispatch_once(&qword_1ED49D968, &__block_literal_global_1604);
  }

  return 0;
}

- (void)_updateChildContentMargins
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v4 = [WeakRetained viewControllers];

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
        [(UISplitViewControllerPanelImpl *)self _contentMarginForChildViewController:v9];
        [v9 _setContentMargin:?];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (double)_contentMarginForChildViewController:(id)a3
{
  v3 = [a3 view];
  [UIViewController _horizontalContentMarginForView:v3];
  v5 = v4;

  return v5;
}

- (id)_unspecifiedStyleChildViewControllersToSendViewWillTransitionToSize
{
  if (self->_lastNotifiedIsCollapsed)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v4 = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
    if (v4)
    {
      [v3 addObject:v4];
    }

    v5 = [(UISplitViewControllerPanelImpl *)self panelController];
    v6 = [v5 mainViewController];
    if (v6)
    {
      WeakRetained = v6;
    }

    else
    {
      v8 = [(UISplitViewControllerPanelImpl *)self panelController];
      WeakRetained = [v8 preservedDetailController];

      if (!WeakRetained)
      {
        goto LABEL_10;
      }
    }

    [v3 addObject:WeakRetained];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v3 = [WeakRetained _super_childViewControllersToSendViewWillTransitionToSize];
  }

LABEL_10:

  return v3;
}

- (NSArray)_childViewControllersToSendViewWillTransitionToSize
{
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    if (self->_lastNotifiedIsCollapsed && (-[NSMutableDictionary objectForKeyedSubscript:](self->_perColumnViewControllers, "objectForKeyedSubscript:", &unk_1EFE30238), v3 = objc_claimAutoreleasedReturnValue(), [v3 viewController], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, !v4))
    {
      v7 = [MEMORY[0x1E695DF70] array];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v12 = __85__UISplitViewControllerPanelImpl__childViewControllersToSendViewWillTransitionToSize__block_invoke;
      v13 = &unk_1E71003B0;
      v14 = self;
      v8 = v7;
      v15 = v8;
      __85__UISplitViewControllerPanelImpl__childViewControllersToSendViewWillTransitionToSize__block_invoke(v11, 0);
      v12(v11, 1);
      v12(v11, 2);
      v9 = v15;
      v6 = v8;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_svc);
      v6 = [WeakRetained _super_childViewControllersToSendViewWillTransitionToSize];
    }
  }

  else
  {
    v6 = [(UISplitViewControllerPanelImpl *)self _unspecifiedStyleChildViewControllersToSendViewWillTransitionToSize];
  }

  return v6;
}

void __85__UISplitViewControllerPanelImpl__childViewControllersToSendViewWillTransitionToSize__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v8 = [v3 objectForKeyedSubscript:v4];

  v5 = v8;
  if (v8)
  {
    v6 = [v8 navigationControllerWrapper];
    if (v6 || ([v8 navigationController], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
LABEL_5:
      [*(a1 + 40) addObject:v7];

      v5 = v8;
      goto LABEL_6;
    }

    v7 = [v8 viewController];
    v5 = v8;
    if (v7)
    {
      goto LABEL_5;
    }
  }

LABEL_6:
}

- (id)_traitCollectionForChildEnvironment:(id)a3
{
  v4 = a3;
  v5 = +[UITraitCollection _emptyTraitCollection];
  if (!v5)
  {
    goto LABEL_39;
  }

  v6 = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];

  if (v6 != v4)
  {
    goto LABEL_16;
  }

  v7 = [(UISplitViewControllerPanelImpl *)self panelController];
  v8 = [v7 currentState];

  if ([(UISplitViewControllerPanelImpl *)self _isPrimaryLeading])
  {
    if (([v8 leadingOverlapsMain] & 1) == 0)
    {
LABEL_5:

      goto LABEL_16;
    }
  }

  else if (([v8 trailingOverlapsMain] & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = [v5 userInterfaceLevel];
  v10 = dyld_program_sdk_at_least();
  if (v9 == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  if (v11 < 1)
  {
    ++v11;
  }

  v12 = v10 ? v11 : v9;
  v13 = [v5 _traitCollectionByReplacingNSIntegerValue:v12 forTraitToken:0x1EFE32488];

  v5 = v13;
  if (v13)
  {
LABEL_16:
    if (![v4 __isKindOfUIViewController])
    {
      goto LABEL_39;
    }

    v14 = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
    v15 = v14;
    if (v14 == v4)
    {
    }

    else
    {
      if ((*(&self->_flags + 5) & 0x10) == 0 || [(UISplitViewControllerPanelImpl *)self style]!= 2)
      {
LABEL_25:

        goto LABEL_26;
      }

      v16 = [(UISplitViewControllerPanelImpl *)self _columnForViewController:v4];

      if (v16 != 1)
      {
LABEL_26:
        v17 = [(UISplitViewControllerPanelImpl *)self _isCollapsed];
        v18 = [(UISplitViewControllerPanelImpl *)self style];
        v19 = v18;
        if (!v18 || v17)
        {
          if (v18 != 0 || v17)
          {
            v22 = 1;
            if (v17)
            {
              v22 = 2;
            }

            v26[0] = MEMORY[0x1E69E9820];
            v26[1] = 3221225472;
            v26[2] = __70__UISplitViewControllerPanelImpl__traitCollectionForChildEnvironment___block_invoke_3;
            v26[3] = &__block_descriptor_40_e27_v16__0___UIMutableTraits__8l;
            v26[4] = v22;
            v23 = v26;
          }

          else
          {
            v23 = &__block_literal_global_153;
          }
        }

        else
        {
          v20 = [(UISplitViewControllerPanelImpl *)self _columnForViewController:v4];
          if ((v20 - 1) >= 3)
          {
            v21 = 1;
            if (v19 == 2)
            {
              v21 = 2;
            }
          }

          else
          {
            v21 = qword_18A679590[v20 - 1];
          }

          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __70__UISplitViewControllerPanelImpl__traitCollectionForChildEnvironment___block_invoke;
          v27[3] = &__block_descriptor_48_e27_v16__0___UIMutableTraits__8l;
          v27[4] = v21;
          v27[5] = v20;
          v23 = v27;
        }

        v24 = [v5 traitCollectionByModifyingTraits:v23];

        v5 = v24;
        goto LABEL_39;
      }
    }

    if (self->_primaryBackgroundStyle != 1)
    {
      goto LABEL_26;
    }

    [v5 _traitCollectionByReplacingNSIntegerValue:2 forTraitToken:0x1EFE32560];
    v5 = v15 = v5;
    goto LABEL_25;
  }

LABEL_39:

  return v5;
}

void __70__UISplitViewControllerPanelImpl__traitCollectionForChildEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_opt_self();
  [v4 setNSIntegerValue:1 forTrait:v3];

  [v4 _setNSIntegerValue:*(a1 + 32) forTraitToken:0x1EFE32590];
  if (*(a1 + 40) < 2uLL || dyld_program_sdk_at_least() && *(a1 + 40) == 3)
  {
    [v4 setHorizontalSizeClass:1];
  }
}

void __70__UISplitViewControllerPanelImpl__traitCollectionForChildEnvironment___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = objc_opt_self();
  [v3 setNSIntegerValue:1 forTrait:v2];

  [v3 _setNSIntegerValue:6 forTraitToken:0x1EFE32590];
}

void __70__UISplitViewControllerPanelImpl__traitCollectionForChildEnvironment___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_opt_self();
  [v3 setNSIntegerValue:v2 forTrait:v4];
}

- (void)_didChangeToFirstResponder:(id)a3
{
  postTransitionResponder = self->_postTransitionResponder;
  if (postTransitionResponder)
  {
    if (postTransitionResponder == a3)
    {
      v5 = (*&self->_flags & 0xFFFFFFFFFFFFF3FFLL);
    }

    else
    {
      flags = self->_flags;
      if (a3)
      {
        v5 = (*&flags | 0x400);
      }

      else
      {
        v5 = (*&flags | 0x800);
      }
    }

    self->_flags = v5;
  }
}

- (UIResponder)_primaryContentResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v3 = [WeakRetained detailViewController];

  return v3;
}

- (void)_setAllowsDimmedSecondaryAsDeepestUnambiguousResponder:(BOOL)a3
{
  v3 = 0x1000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)_setIgnoresSheetContext:(BOOL)a3
{
  if (((((*&self->_flags & 0x2000000) == 0) ^ a3) & 1) == 0)
  {
    v3 = 0x2000000;
    if (!a3)
    {
      v3 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFFFFFDFFFFFFLL | v3);
    [(UIPanelController *)self->_panelController setNeedsUpdate];
  }
}

- (void)_setShowsSeparators:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (id)_topLevelViewControllerForColumn:(int64_t)a3
{
  perColumnViewControllers = self->_perColumnViewControllers;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v7 = [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:v6];
  v8 = [v7 navigationControllerWrapper];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = self->_perColumnViewControllers;
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v13 = [(NSMutableDictionary *)v11 objectForKeyedSubscript:v12];
    v14 = [v13 navigationController];
    v15 = v14;
    if (v14)
    {
      v10 = v14;
    }

    else
    {
      v16 = self->_perColumnViewControllers;
      v17 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      v18 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:v17];
      v10 = [v18 viewController];
    }
  }

  return v10;
}

- (UIResponder)_deepestActionResponder
{
  v3 = [(UISplitViewControllerPanelImpl *)self style];
  v4 = [(UIPanelController *)self->_panelController currentState];
  v5 = [v4 _collapsedState];
  if (!v3)
  {
    v8 = [(UISplitViewControllerPanelImpl *)self viewControllers];
    v9 = [v8 lastObject];

    if ([v9 _hasDeepestActionResponder])
    {
LABEL_26:
      v14 = [v9 _deepestActionResponder];
      goto LABEL_29;
    }

    if (![(UISplitViewControllerPanelImpl *)self isCollapsed])
    {
      v10 = [(UISplitViewControllerPanelImpl *)self viewControllers];
      WeakRetained = [v10 firstObject];

      if (WeakRetained != v9 && ([WeakRetained _hasDeepestActionResponder] & 1) != 0)
      {
        v12 = [WeakRetained _deepestActionResponder];
        goto LABEL_28;
      }
    }

LABEL_24:
    v9 = 0;
    goto LABEL_25;
  }

  if (v5 != 2)
  {
    if (!v5)
    {
      v6 = [(UISplitViewControllerPanelImpl *)self _displayModeForState:v4];
      if (*(&self->_flags + 3))
      {
        VisibleColumnForResponderAfterColumn = 2;
        if (_UISplitViewControllerColumnIsVisibleForDisplayMode(v3, 2, v6))
        {
          goto LABEL_15;
        }
      }

      else
      {
        VisibleColumnForResponderAfterColumn = 2;
        if (!_UISplitViewControllerColumnIsHiddenOrDimmedForDisplayMode(v3, 2, v6))
        {
LABEL_15:
          v13 = 0;
          while (([v13 _hasDeepestActionResponder] & 1) == 0)
          {
            v9 = [(UISplitViewControllerPanelImpl *)self _topLevelViewControllerForColumn:VisibleColumnForResponderAfterColumn];

            if (([v9 _hasDeepestActionResponder] & 1) == 0)
            {
              VisibleColumnForResponderAfterColumn = _nextVisibleColumnForResponderAfterColumn(VisibleColumnForResponderAfterColumn, v3, v6);
            }

            v13 = v9;
            if (VisibleColumnForResponderAfterColumn == 999)
            {
              goto LABEL_25;
            }
          }

          v9 = v13;
          goto LABEL_25;
        }
      }

      VisibleColumnForResponderAfterColumn = _nextVisibleColumnForResponderAfterColumn(2, v3, v6);
      if (VisibleColumnForResponderAfterColumn != 999)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_24;
  }

  v9 = [(UIPanelController *)self->_panelController collapsedViewController];
LABEL_25:
  if ([v9 _hasDeepestActionResponder])
  {
    goto LABEL_26;
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v12 = [WeakRetained _super_deepestActionResponder];
LABEL_28:
  v14 = v12;

LABEL_29:

  return v14;
}

- (id)_nextVisibleViewControllerForResponderAfterChildViewController:(id)a3
{
  v4 = a3;
  v5 = [(UISplitViewControllerPanelImpl *)self style];
  if (v5)
  {
    v6 = v5;
    v7 = 2;
    v8 = [(UISplitViewControllerPanelImpl *)self _topLevelViewControllerForColumn:2];

    if (v8 != v4)
    {
      v7 = 1;
      v9 = [(UISplitViewControllerPanelImpl *)self _topLevelViewControllerForColumn:1];

      if (v9 != v4)
      {
        v10 = [(UISplitViewControllerPanelImpl *)self _topLevelViewControllerForColumn:0];

        if (v10 == v4)
        {
          v7 = 0;
        }

        else
        {
          v7 = 999;
        }
      }
    }

    v11 = [(UIPanelController *)self->_panelController currentState];
    VisibleColumnForResponderAfterColumn = _nextVisibleColumnForResponderAfterColumn(v7, v6, [(UISplitViewControllerPanelImpl *)self _displayModeForState:v11]);
    if (VisibleColumnForResponderAfterColumn == 999)
    {
      v13 = 0;
    }

    else
    {
      v13 = [(UISplitViewControllerPanelImpl *)self _topLevelViewControllerForColumn:VisibleColumnForResponderAfterColumn];
    }
  }

  else if (![(UISplitViewControllerPanelImpl *)self isCollapsed]&& ([(UISplitViewControllerPanelImpl *)self detailViewController], v14 = objc_claimAutoreleasedReturnValue(), v14, v14 == v4))
  {
    v13 = [(UISplitViewControllerPanelImpl *)self masterViewController];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_disableAutomaticKeyboardBehavior
{
  if (self->_postTransitionResponder)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v4 = [WeakRetained _super_disableAutomaticKeyboardBehavior];

  return v4;
}

- (NSString)description
{
  v15.receiver = self;
  v15.super_class = UISplitViewControllerPanelImpl;
  v3 = [(UISplitViewControllerPanelImpl *)&v15 description];
  v4 = [v3 mutableCopy];

  if (os_variant_has_internal_diagnostics())
  {
    v6 = [(UISplitViewControllerPanelImpl *)self style];
    v7 = _UISplitViewControllerStyleDescription(v6);
    [v4 appendFormat:@" style=%@", v7];

    if (v6)
    {
      [v4 appendFormat:@" columns=%p", self->_perColumnViewControllers];
      preferredDisplayMode = self->_preferredDisplayMode;
      if (preferredDisplayMode)
      {
        v9 = _UISplitViewControllerDisplayModeDescription(preferredDisplayMode);
        [v4 appendFormat:@" preferredDisplayMode=%@", v9];
      }

      v10 = [(UISplitViewControllerPanelImpl *)self userGeneratedDisplayMode];
      if (v10)
      {
        v11 = _UISplitViewControllerDisplayModeDescription(v10);
        [v4 appendFormat:@" userGeneratedDisplayMode=%@", v11];

        if ((*&self->_flags & 0x40) != 0)
        {
          [v4 appendString:@"[strict]"];
        }
      }

      preferredSplitBehavior = self->_preferredSplitBehavior;
      if (preferredSplitBehavior)
      {
        v13 = _UISplitViewControllerSplitBehaviorDescription(preferredSplitBehavior);
        [v4 appendFormat:@" preferredSplitBehavior=%@", v13];
      }
    }

    if (self->_preferredPrimaryColumnWidth != -3.40282347e38)
    {
      [v4 appendFormat:@" prefPrimaryColWidth=%g", *&self->_preferredPrimaryColumnWidth];
    }

    if (self->_preferredPrimaryColumnWidthFraction != -3.40282347e38)
    {
      [v4 appendFormat:@" prefPrimaryColWidthFraction=%g", *&self->_preferredPrimaryColumnWidthFraction];
    }

    if (self->_minimumPrimaryColumnWidth != -3.40282347e38)
    {
      [v4 appendFormat:@" minPrimaryColWidth=%g", *&self->_minimumPrimaryColumnWidth];
    }

    if (self->_maximumPrimaryColumnWidth != -3.40282347e38)
    {
      [v4 appendFormat:@" maxPrimaryColWidth=%g", *&self->_maximumPrimaryColumnWidth];
    }

    if (v6)
    {
      if (self->_preferredSupplementaryColumnWidthFraction != -3.40282347e38)
      {
        [v4 appendFormat:@" prefSupplementaryColWidthFraction=%g", *&self->_preferredSupplementaryColumnWidthFraction];
      }

      if (self->_preferredSupplementaryColumnWidth != -3.40282347e38)
      {
        [v4 appendFormat:@" prefSupplementaryColWidth=%g", *&self->_preferredSupplementaryColumnWidth];
      }

      if (self->_minimumSupplementaryColumnWidth != -3.40282347e38)
      {
        [v4 appendFormat:@" minSupplementaryColWidth=%g", *&self->_minimumSupplementaryColumnWidth];
      }

      if (self->_maximumSupplementaryColumnWidth != -3.40282347e38)
      {
        [v4 appendFormat:@" maxSupplementaryColWidth=%g", *&self->_maximumSupplementaryColumnWidth];
      }
    }

    if (![(UISplitViewControllerPanelImpl *)self presentsWithGesture])
    {
      [v4 appendString:@" presentsWithGesture=NO"];
    }

    if ([(UISplitViewControllerPanelImpl *)self primaryEdge]== 1)
    {
      [v4 appendString:@" primaryEdge=Trailing"];
    }

    WeakRetained = objc_loadWeakRetained(&self->_svc);
    [v4 appendFormat:@" svc=%p", WeakRetained];

    [v4 appendFormat:@" panelController=%p", self->_panelController];
  }

  return v4;
}

- (NSArray)_allContainedViewControllers
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v3 = [WeakRetained viewControllers];

  return v3;
}

- (void)encodeRestorableStateWithCoder:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v6 = [WeakRetained viewControllers];

  _UISaveReferencedChildViewControllers(v6, 0);
  [v4 encodeInteger:-[UISplitViewControllerPanelImpl _svcOrientation](self forKey:{"_svcOrientation"), @"SplitViewInterfaceOrientation"}];
  v7 = objc_loadWeakRetained(&self->_svc);
  [v4 encodeInteger:objc_msgSend(v7 forKey:{"displayMode"), @"SplitViewControllerDisplayMode"}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        v14 = [v13 _restorationIdentifierPath];

        if (!v14)
        {
          if (_UIStateRestorationDebugLogEnabled())
          {
            NSLog(&cfstr_SViewControlle.isa, "[UISplitViewControllerPanelImpl encodeRestorableStateWithCoder:]", v13, v15);
          }

          [UIApp ignoreSnapshotOnNextApplicationLaunch];
          goto LABEL_13;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)decodeRestorableStateWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UISplitViewControllerPanelImpl *)self _svcOrientation];
  v6 = +[UIDevice currentDevice];
  v7 = [v6 userInterfaceIdiom];

  v8 = [v4 decodeObjectForKey:@"UIApplicationStateRestorationUserInterfaceIdiom"];
  if (v7 == [v8 intValue])
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    [WeakRetained displayMode];

    if (v7 == 1)
    {
      v10 = [v4 decodeBoolForKey:@"SplitViewControllerShowingMasterView"];
    }

    else
    {
      v10 = 0;
    }

    if ([v4 containsValueForKey:@"SplitViewControllerDisplayMode"] && objc_msgSend(v4, "containsValueForKey:", @"SplitViewInterfaceOrientation"))
    {
      if ([v4 decodeIntegerForKey:@"SplitViewInterfaceOrientation"] != v5)
      {
        goto LABEL_31;
      }

      v16 = [v4 decodeIntegerForKey:@"SplitViewControllerDisplayMode"];
      goto LABEL_27;
    }

    if ((v5 - 1) < 2)
    {
      v17 = v10;
    }

    else
    {
      v17 = 0;
    }

    if (v17 == 1)
    {
      v16 = 3;
LABEL_27:
      v18 = objc_loadWeakRetained(&self->_svc);
      v19 = [v18 displayMode];

      if (v16 != v19)
      {
        v20 = objc_loadWeakRetained(&self->_svc);
        v21 = [v20 _existingView];
        v22 = [v21 window];

        if (v22)
        {
          [(UISplitViewControllerPanelImpl *)self _changeToDisplayMode:v16 fromPreferredDisplayMode:[(UISplitViewControllerPanelImpl *)self preferredDisplayMode]];
        }

        else
        {
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __65__UISplitViewControllerPanelImpl_decodeRestorableStateWithCoder___block_invoke;
          block[3] = &unk_1E70F32F0;
          block[4] = self;
          block[5] = v16;
          dispatch_async(MEMORY[0x1E69E96A0], block);
        }
      }
    }
  }

  else
  {
    if (v7)
    {
      v11 = @"Unspecified";
    }

    else
    {
      v11 = @"iPhone";
    }

    if (v7 == 1)
    {
      v11 = @"iPad";
    }

    v12 = v11;
    v13 = [v8 integerValue];
    if (v13)
    {
      v14 = @"Unspecified";
    }

    else
    {
      v14 = @"iPhone";
    }

    if (v13 == 1)
    {
      v14 = @"iPad";
    }

    v15 = v14;
    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SSkippingCheck.isa, "[UISplitViewControllerPanelImpl decodeRestorableStateWithCoder:]", v12, v15);
    }
  }

LABEL_31:
}

void __65__UISplitViewControllerPanelImpl_decodeRestorableStateWithCoder___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = [WeakRetained _existingView];
  v4 = [v3 window];

  if (v4)
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = [v6 preferredDisplayMode];

    [v6 _changeToDisplayMode:v5 fromPreferredDisplayMode:v7];
  }
}

- (NSArray)_additionalViewControllersToCheckForUserActivity
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(UISplitViewControllerPanelImpl *)self panelController];
  v5 = [v4 allViewControllers];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (v10 && (*(v10 + 376) & 3u) - 1 <= 1)
        {
          [v3 addObject:?];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v3;
}

- (UIActivityItemsConfigurationReading)_effectiveActivityItemsConfiguration
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v4 = [WeakRetained _super_effectiveActivityItemsConfiguration];

  if (!v4)
  {
    if (!dyld_program_sdk_at_least())
    {
      v4 = 0;
      goto LABEL_13;
    }

    v5 = objc_loadWeakRetained(&self->_svc);
    v6 = [v5 style];

    v7 = v6 - 1;
    v8 = objc_loadWeakRetained(&self->_svc);
    v9 = v8;
    if (v7 > 1)
    {
      v10 = [v8 viewControllers];
      v14 = [v10 lastObject];
    }

    else
    {
      v10 = [v8 viewControllerForColumn:2];

      v11 = objc_loadWeakRetained(&self->_svc);
      v12 = [v11 _isCollapsed];

      if (!v12)
      {
LABEL_12:
        v4 = [v10 _effectiveActivityItemsConfiguration];

        goto LABEL_13;
      }

      v13 = [(UISplitViewControllerPanelImpl *)self panelController];
      v9 = [v13 collapsedViewController];

      if (!v9 || (v9[94] & 3u) - 1 > 1)
      {
LABEL_11:

        goto LABEL_12;
      }

      v14 = v9;
      v9 = v14;
    }

    v15 = v14;

    v10 = v15;
    goto LABEL_11;
  }

LABEL_13:

  return v4;
}

- (UISlidingBarConfiguration)configuration
{
  v2 = [(UISplitViewControllerPanelImpl *)self panelController];
  v3 = [v2 configuration];

  return v3;
}

- (void)setConfiguration:(id)a3
{
  *&self->_flags |= 1uLL;
  v4 = a3;
  v5 = [(UISplitViewControllerPanelImpl *)self panelController];
  [v5 setConfiguration:v4];
}

- (UISlidingBarState)currentState
{
  v2 = [(UISplitViewControllerPanelImpl *)self panelController];
  v3 = [v2 currentState];

  return v3;
}

- (NSArray)possibleStates
{
  v2 = [(UISplitViewControllerPanelImpl *)self panelController];
  v3 = [v2 possibleStates];

  return v3;
}

- (UISlidingBarStateRequest)stateRequest
{
  v2 = [(UISplitViewControllerPanelImpl *)self panelController];
  v3 = [v2 stateRequest];

  return v3;
}

- (void)setStateRequest:(id)a3
{
  *&self->_flags |= 1uLL;
  v4 = a3;
  v5 = [(UISplitViewControllerPanelImpl *)self panelController];
  [v5 setStateRequest:v4];
}

- (void)animateToRequest:(id)a3
{
  v4 = a3;
  v5 = [(UISplitViewControllerPanelImpl *)self panelController];
  [v5 animateToRequest:v4];
}

- (void)_unspecifiedStyleChangeToDisplayMode:(int64_t)a3 fromPreferredDisplayMode:(int64_t)a4
{
  v8 = [(UISplitViewControllerPanelImpl *)self style];
  if (v8)
  {
    v13 = v8;
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = _UISplitViewControllerStyleDescription(v13);
    [v14 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:5078 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v15}];
  }

  if ((a3 - 1) >= 3)
  {
    if (a4 == 3 && (*&self->_flags & 0x200) != 0)
    {
      v9 = 2;
    }

    else
    {
      v10 = [(UISplitViewControllerPanelImpl *)self panelController];
      v11 = [v10 currentState];
      v12 = [(UISplitViewControllerPanelImpl *)self _displayModeForState:v11]== 3;

      v9 = 2 * v12;
    }
  }

  else
  {
    v9 = qword_18A6795A8[a3 - 1];
  }

  [(UISplitViewControllerPanelImpl *)self _setPrimaryHidingState:v9];
  v16 = [(UISplitViewControllerPanelImpl *)self panelController];
  [v16 setNeedsUpdate];
}

- (void)_changeToDisplayMode:(int64_t)a3 fromPreferredDisplayMode:(int64_t)a4
{
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    v7 = +[UIView _isInAnimationBlockWithAnimationsEnabled];
    if (!a3)
    {
      if (a4 == 3 && (*&self->_flags & 0x200) != 0 || (-[UISplitViewControllerPanelImpl panelController](self, "panelController"), v8 = objc_claimAutoreleasedReturnValue(), [v8 currentState], v9 = objc_claimAutoreleasedReturnValue(), v10 = -[UISplitViewControllerPanelImpl _displayModeForState:](self, "_displayModeForState:", v9), v9, v8, v10 == 3))
      {
        if ([(UISplitViewControllerPanelImpl *)self splitBehavior]== 2)
        {
          a3 = 3;
        }

        else
        {
          a3 = 2;
        }
      }

      else
      {
        a3 = 0;
      }
    }

    if (v7)
    {
      v11 = [(UISplitViewControllerPanelImpl *)self displayMode];

      [(UISplitViewControllerPanelImpl *)self _transitionFromDisplayMode:v11 toDisplayMode:a3];
      return;
    }

    [(UISplitViewControllerPanelImpl *)self setUserGeneratedDisplayMode:a3];
  }

  else
  {
    [(UISplitViewControllerPanelImpl *)self _unspecifiedStyleChangeToDisplayMode:a3 fromPreferredDisplayMode:a4];
  }

  v12 = [(UISplitViewControllerPanelImpl *)self panelController];
  [v12 setNeedsUpdate];
}

- (void)_updateSplitBehaviorOverridesForTransitionFromDisplayMode:(uint64_t)a1 toDisplayMode:(uint64_t)a2 shouldResizeIfNecessary:(uint64_t)a3
{
  if (a1)
  {
    v6 = [a1 style];
    if ((v6 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = v6;
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = _UISplitViewControllerStyleDescription(v15);
      [v16 handleFailureInMethod:sel__updateSplitBehaviorOverridesForTransitionFromDisplayMode_toDisplayMode_shouldResizeIfNecessary_ object:a1 file:@"UISplitViewControllerPanelImpl.m" lineNumber:5175 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v17}];
    }

    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v8 = _UISplitViewControllerAutoHidesColumns(WeakRetained);

    if (v8)
    {
      if ([a1 _isCollapsed])
      {
        if (os_variant_has_internal_diagnostics())
        {
          v18 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_188A29000, v18, OS_LOG_TYPE_FAULT, "shouldn't be transitioning display modes in collapsed UISVC", buf, 2u);
          }
        }

        else
        {
          v9 = *(__UILogGetCategoryCachedImpl("Assert", &_updateSplitBehaviorOverridesForTransitionFromDisplayMode_toDisplayMode_shouldResizeIfNecessary____s_category) + 8);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "shouldn't be transitioning display modes in collapsed UISVC", buf, 2u);
          }
        }

LABEL_20:
        *(a1 + 288) &= 0xFFFFFFFFFFF3FFFFLL;
        return;
      }

      if (a2 == 1)
      {
        if (a3 == 2)
        {
LABEL_14:
          v10 = [*(a1 + 504) view];
          [v10 bounds];
          v12 = v11;
          v14 = v13;

          v19 = 0.0;
          *buf = 0;
          [a1 getPrimaryColumnWidth:buf supplementaryColumnWidth:&v19 forSize:a3 displayMode:1 splitBehavior:0 isCompact:0 shouldUseOverlay:{v12, v14}];
          if ([a1 _isSecondaryColumnCompactInTotalWidth:v12 withPrimaryColumnWidth:*buf supplementaryColumnWidth:v19])
          {
            *(a1 + 288) = *(a1 + 288) & 0xFFFFFFFFFFF3FFFFLL | 0x80000;
            if (a3 == 4)
            {
              [a1 getPrimaryColumnWidth:buf supplementaryColumnWidth:&v19 forSize:2 displayMode:1 splitBehavior:0 isCompact:0 shouldUseOverlay:{v12, v14}];
              if (([a1 _isSecondaryColumnCompactInTotalWidth:v12 withPrimaryColumnWidth:*buf supplementaryColumnWidth:v19] & 1) == 0)
              {
                *(a1 + 288) |= 0xC0000uLL;
              }
            }

            [a1 allowedDisplayModeForCurrentSplitBehaviorGivenDisplayMode:a3];
          }

          return;
        }
      }

      else if (a2 != 2)
      {
        goto LABEL_19;
      }

      if (a3 == 4)
      {
        goto LABEL_14;
      }

LABEL_19:
      if ((a3 - 1) > 1)
      {
        return;
      }

      goto LABEL_20;
    }
  }
}

- (void)_transitionFromDisplayMode:(int64_t)a3 toDisplayMode:(int64_t)a4 updateSplitBehaviorOverrides:(BOOL)a5 userGenerated:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v12 = [(UISplitViewControllerPanelImpl *)self style];
  if (v12 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    v38 = _UISplitViewControllerStyleDescription(v12);
    [v37 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:5237 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v38}];
  }

  if (a3 != a4)
  {
    if (v7)
    {
      [UISplitViewControllerPanelImpl _updateSplitBehaviorOverridesForTransitionFromDisplayMode:a3 toDisplayMode:a4 shouldResizeIfNecessary:?];
    }

    v13 = [(UISplitViewControllerPanelImpl *)self allowedDisplayModeForCurrentSplitBehaviorGivenDisplayMode:a4];
    if (v13 != a3)
    {
      v14 = v13;
      if (v6)
      {
        [(UISplitViewControllerPanelImpl *)self setUserGeneratedDisplayMode:v13];
      }

      v46 = 0;
      [(UISplitViewControllerPanelImpl *)self _getPrimaryShown:&v46 + 3 supplementaryShown:&v46 + 2 shouldUseOverlay:&v46 + 1 dimMainIfNecessary:&v46 forDisplayMode:v14];
      v15 = BYTE1(v46);
      if (v14 == 1 && (v46 & 0x100) == 0)
      {
        v45 = 0;
        [(UISplitViewControllerPanelImpl *)self _getPrimaryShown:0 supplementaryShown:0 shouldUseOverlay:&v45 dimMainIfNecessary:0 forDisplayMode:a3];
        v15 = v45;
        BYTE1(v46) = v45;
      }

      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __118__UISplitViewControllerPanelImpl__transitionFromDisplayMode_toDisplayMode_updateSplitBehaviorOverrides_userGenerated___block_invoke;
      v40[3] = &unk_1E7102030;
      v40[4] = self;
      v41 = HIBYTE(v46);
      v42 = BYTE2(v46);
      v43 = v15;
      v44 = v46;
      [UIView performWithoutAnimation:v40];
      v16 = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
      v17 = [(UISplitViewControllerPanelImpl *)self panelController];
      v18 = [v17 uncachedPossibleStates];

      v19 = [(UISplitViewControllerPanelImpl *)self panelController];
      v20 = [v19 currentState];
      v21 = [v20 stateRequest];

      [v21 setUserInitiated:v6];
      if (HIBYTE(v46) == 1)
      {
        v22 = minNonzeroPrimaryWidthInStates(v18, v16);
        if (v16)
        {
          [v21 setLeadingWidth:v22];
          if ((v46 & 0x10000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_18;
        }

        [v21 setTrailingWidth:v22];
        if ((v46 & 0x10000) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        [v21 setLeadingWidth:0.0];
        [v21 setTrailingWidth:0.0];
        if ((v46 & 0x10000) != 0)
        {
          if (v16)
          {
LABEL_18:
            [v21 leadingWidth];
LABEL_21:
            v39 = 0;
            MatchingState = minNonzeroSupplementaryWidthInStateWithPrimaryWidthGetMatchingState(v18, v16, &v39, v23);
            v25 = v39;
            v26 = v25;
            if (v25)
            {
              [v25 mainWidth];
              [v21 setMainWidth:?];
            }

            [v21 setSupplementaryWidth:MatchingState];

LABEL_25:
            if ([(UISplitViewControllerPanelImpl *)self _alwaysHideSidebarToggleButton])
            {
              goto LABEL_26;
            }

            if (v12 == 2 && (p_perColumnViewControllers = &self->_perColumnViewControllers, [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220], v29 = objc_claimAutoreleasedReturnValue(), v29, v29))
            {
              v30 = &unk_1EFE30250;
            }

            else
            {
              if ((v46 & 0x100) != 0)
              {
                v27 = 0;
                goto LABEL_34;
              }

              p_perColumnViewControllers = &self->_perColumnViewControllers;
              v30 = &unk_1EFE30208;
            }

            v31 = [(NSMutableDictionary *)*p_perColumnViewControllers objectForKeyedSubscript:v30];
            v32 = [v31 navigationController];
            v27 = [v32 navigationBar];

LABEL_34:
            if (![v27 _hasBackButton] || !-[UIBarButtonItem _actsAsFakeBackButton](self->_sidebarToggleButtonItem, "_actsAsFakeBackButton"))
            {
              goto LABEL_37;
            }

LABEL_26:
            v27 = 0;
LABEL_37:
            v33 = [(UISplitViewControllerPanelImpl *)self panelController];
            [v33 setNavigationBarForContentLayoutGuideAnimation:v27];

            v34 = [(UISplitViewControllerPanelImpl *)self _allowClientAnimationCoordination];
            v35 = [(UISplitViewControllerPanelImpl *)self panelController];
            [v35 setAnimationRequestShouldCoordinate:v34];

            v36 = [(UISplitViewControllerPanelImpl *)self panelController];
            [v36 animateToRequest:v21];

            return;
          }

LABEL_20:
          [v21 trailingWidth];
          goto LABEL_21;
        }
      }

LABEL_24:
      [v21 setSupplementaryWidth:0.0];
      goto LABEL_25;
    }
  }
}

- (CGSize)_screenSize
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v4 = [WeakRetained _window];

  v5 = objc_loadWeakRetained(&self->_svc);
  v6 = [v5 _screen];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  [v7 bounds];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (double)_defaultMaximumPrimaryColumnWidthForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    v6 = [(UISplitViewControllerPanelImpl *)self styleProvider];
    [v6 defaultMaximumWidthForColumn:0 withSize:-[UISplitViewControllerPanelImpl splitBehavior](self splitBehavior:{"splitBehavior"), width, height}];
    v8 = v7;

    return v8;
  }

  else
  {
    [(UISplitViewControllerPanelImpl *)self _screenSize];
    if (v10 >= v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    v13 = [(UISplitViewControllerPanelImpl *)self _svcOrientation]- 3;
    v15 = v12 > 1112.0 && v13 < 2 || v12 > 1210.0;
    if (v15)
    {
      v16 = 375.0;
    }

    else
    {
      v16 = 320.0;
    }

    if (dyld_program_sdk_at_least())
    {
      if (v13 <= 1)
      {
        if (width <= v12 * 0.5)
        {
          WeakRetained = objc_loadWeakRetained(&self->_svc);
          v25 = [WeakRetained displayMode];

          if (v25 == 2)
          {
            return 320.0;
          }

          else
          {
            return 375.0;
          }
        }

        else if (width <= v12 - v16)
        {
          if (v12 <= 1210.0)
          {
            return 320.0;
          }

          else
          {
            return 375.0;
          }
        }

        else
        {
          v17 = objc_loadWeakRetained(&self->_svc);
          v18 = [v17 _usesExtraWidePrimaryColumn];

          v19 = 414.0;
          if (!v15)
          {
            v19 = 375.0;
          }

          if (v18)
          {
            return v19;
          }
        }
      }
    }

    else
    {
      v20 = objc_loadWeakRetained(&self->_svc);
      v21 = [v20 preferredDisplayMode];

      if (v21 == 2)
      {
        v22 = round(width * 0.38);
        if (width <= v12 * 0.5)
        {
          return v22;
        }

        else if (width > v12 - v16 && v13 < 0xFFFFFFFFFFFFFFFELL)
        {
          return v22;
        }
      }
    }

    return v16;
  }
}

- (double)_defaultMaximumSupplementaryColumnWidthForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v7 = [(UISplitViewControllerPanelImpl *)self style];
  if ((v7 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v7;
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = _UISplitViewControllerStyleDescription(v12);
    [v13 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:5472 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v14}];
  }

  v8 = [(UISplitViewControllerPanelImpl *)self styleProvider];
  [v8 defaultMaximumWidthForColumn:1 withSize:-[UISplitViewControllerPanelImpl splitBehavior](self splitBehavior:{"splitBehavior"), width, height}];
  v10 = v9;

  return v10;
}

- (CGSize)_preferredContentSize
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  if (-[UISplitViewControllerPanelImpl style](self, "style") && ([WeakRetained traitCollection], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "_presentationSemanticContext"), v5, v6 != 3))
  {
    v13 = [(UISplitViewControllerPanelImpl *)self style];
    if (v13 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = _UISplitViewControllerStyleDescription(v13);
      [v22 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:5491 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v23}];
    }

    v14 = [WeakRetained _screen];
    [v14 bounds];
    [UIViewController defaultFormSheetSizeForScreenSize:v15, v16];
    v18 = v17;
    v10 = v19;

    if (v13 == 2)
    {
      v20 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
      v21 = 320.0;
      if (!v20)
      {
        v21 = 240.0;
      }

      v8 = v18 + v21;
    }

    else
    {
      v8 = v18 + 240.0;
    }
  }

  else
  {
    [WeakRetained _super_preferredContentSize];
    v8 = v7;
    v10 = v9;
  }

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (double)_primaryColumnWidthForSize:(CGSize)a3 shouldUseOverlay:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  -[UISplitViewControllerPanelImpl _primaryColumnWidthForSize:isCompact:shouldUseOverlay:](self, "_primaryColumnWidthForSize:isCompact:shouldUseOverlay:", [WeakRetained _horizontalSizeClass] == 1, v4, width, height);
  v10 = v9;

  return v10;
}

- (void)getPrimaryColumnWidth:(double *)a3 supplementaryColumnWidth:(double *)a4 forSize:(CGSize)a5 displayMode:(int64_t)a6 shouldUseOverlay:(BOOL)a7
{
  v7 = a7;
  height = a5.height;
  width = a5.width;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  -[UISplitViewControllerPanelImpl getPrimaryColumnWidth:supplementaryColumnWidth:forSize:displayMode:isCompact:shouldUseOverlay:](self, "getPrimaryColumnWidth:supplementaryColumnWidth:forSize:displayMode:isCompact:shouldUseOverlay:", a3, a4, a6, [WeakRetained _horizontalSizeClass] == 1, v7, width, height);
}

- (double)_primaryColumnWidthForSize:(CGSize)a3 isCompact:(BOOL)a4 shouldUseOverlay:(BOOL)a5
{
  v5 = a5;
  height = a3.height;
  width = a3.width;
  v11 = [(UISplitViewControllerPanelImpl *)self style];
  if (v11)
  {
    v47 = v11;
    v48 = [MEMORY[0x1E696AAA8] currentHandler];
    v49 = _UISplitViewControllerStyleDescription(v47);
    [v48 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:5508 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v49}];

    if (a4)
    {
      return width;
    }
  }

  else if (a4)
  {
    return width;
  }

  if (!dyld_program_sdk_at_least())
  {
    return 320.0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  [WeakRetained preferredPrimaryColumnWidthFraction];
  v14 = v13 != -3.40282347e38;

  v15 = objc_loadWeakRetained(&self->_svc);
  [v15 _preferredPrimaryColumnWidth];
  v17 = v16;

  v18 = v17 != -3.40282347e38 || v14;
  v19 = +[UIDevice currentDevice];
  v20 = [v19 userInterfaceIdiom];

  if ((v20 & 0xFFFFFFFFFFFFFFFBLL) != 1 || !dyld_program_sdk_at_least())
  {
    if ([(UISplitViewControllerPanelImpl *)self _currentInterfaceIdiom]|| v18 & 1 | ((dyld_program_sdk_at_least() & 1) == 0))
    {
      if (fmax(width, height) <= 1210.0)
      {
        v22 = 320.0;
      }

      else
      {
        v22 = 375.0;
      }

      if (v17 == -3.40282347e38)
      {
        if (v18)
        {
          v27 = objc_loadWeakRetained(&self->_svc);
          [v27 preferredPrimaryColumnWidthFraction];
          v29 = v28;
        }

        else
        {
          v29 = 0.4;
        }

        width = ceil(width * v29);
        goto LABEL_34;
      }

      v23 = objc_loadWeakRetained(&self->_svc);
      v24 = v23;
      goto LABEL_20;
    }

    if (v5)
    {
      v22 = 375.0;
    }

    else
    {
      v22 = 320.0;
    }

LABEL_28:
    v30 = objc_loadWeakRetained(&self->_svc);
    v31 = [v30 viewIfLoaded];
    [v31 safeAreaInsets];
    v33 = v32;
    v35 = v34;

    if ([(UISplitViewControllerPanelImpl *)self _layoutPrimaryOnRight])
    {
      v36 = v35;
    }

    else
    {
      v36 = v33;
    }

    width = v22 + v36;
    v22 = v22 + v36;
    goto LABEL_34;
  }

  [(UISplitViewControllerPanelImpl *)self _defaultMaximumPrimaryColumnWidthForSize:width, height];
  v22 = v21;
  if (!v18)
  {
    width = v21;
    if (!dyld_program_sdk_at_least())
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  v23 = objc_loadWeakRetained(&self->_svc);
  v24 = v23;
  if (v17 != -3.40282347e38)
  {
LABEL_20:
    [v23 _preferredPrimaryColumnWidth];
    width = v26;
    goto LABEL_21;
  }

  [v23 preferredPrimaryColumnWidthFraction];
  width = ceil(width * v25);
LABEL_21:

LABEL_34:
  v37 = objc_loadWeakRetained(&self->_svc);
  [v37 minimumPrimaryColumnWidth];
  if (v38 == -3.40282347e38)
  {
    v41 = 0.0;
  }

  else
  {
    v39 = objc_loadWeakRetained(&self->_svc);
    [v39 minimumPrimaryColumnWidth];
    v41 = v40;
  }

  if (v41 >= width)
  {
    width = v41;
  }

  v42 = objc_loadWeakRetained(&self->_svc);
  [v42 maximumPrimaryColumnWidth];
  if (v43 != -3.40282347e38)
  {
    v44 = objc_loadWeakRetained(&self->_svc);
    [v44 maximumPrimaryColumnWidth];
    v22 = v45;
  }

  if (v22 < width)
  {
    return v22;
  }

  return width;
}

- (void)getPrimaryColumnWidth:(double *)a3 supplementaryColumnWidth:(double *)a4 forSize:(CGSize)a5 displayMode:(int64_t)a6 isCompact:(BOOL)a7 shouldUseOverlay:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  height = a5.height;
  width = a5.width;
  v16 = [(UISplitViewControllerPanelImpl *)self splitBehavior];

  [(UISplitViewControllerPanelImpl *)self getPrimaryColumnWidth:a3 supplementaryColumnWidth:a4 forSize:a6 displayMode:v16 splitBehavior:v9 isCompact:v8 shouldUseOverlay:width, height];
}

- (void)getPrimaryColumnWidth:(double *)a3 supplementaryColumnWidth:(double *)a4 forSize:(CGSize)a5 displayMode:(int64_t)a6 splitBehavior:(int64_t)a7 isCompact:(BOOL)a8 shouldUseOverlay:(BOOL)a9
{
  v9 = a9;
  v10 = a8;
  height = a5.height;
  width = a5.width;
  v19 = [(UISplitViewControllerPanelImpl *)self style];
  if (v19 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v75 = [MEMORY[0x1E696AAA8] currentHandler];
    v80 = _UISplitViewControllerStyleDescription(v19);
    [v75 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:5600 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v80}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v79 = [WeakRetained viewIfLoaded];

  [v79 safeAreaInsets];
  v22 = v21;
  v24 = v23;
  if ([(UISplitViewControllerPanelImpl *)self _layoutPrimaryOnRight])
  {
    v22 = v24;
  }

  if (v79)
  {
    [v79 bounds];
    v25 = CGRectGetWidth(v82);
    if (v10)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v25 = 736.0;
    if (v10)
    {
LABEL_7:
      v26 = 0.0;
      if (v19 == 2)
      {
        v26 = width;
      }

      goto LABEL_109;
    }
  }

  v76 = v9;
  v28 = a6 == 6 || (a6 & 0xFFFFFFFFFFFFFFFELL) == 4;
  v29 = v19 != 2 || v28;
  [(UISplitViewControllerPanelImpl *)self preferredPrimaryColumnWidth];
  v31 = v30;
  v32 = v30 == -3.40282347e38;
  [(UISplitViewControllerPanelImpl *)self preferredPrimaryColumnWidthFraction];
  v34 = v33;
  [(UISplitViewControllerPanelImpl *)self preferredSupplementaryColumnWidth];
  v36 = v35;
  v37 = v35 == -3.40282347e38;
  [(UISplitViewControllerPanelImpl *)self preferredSupplementaryColumnWidthFraction];
  v39 = v38;
  v40 = v34 == -3.40282347e38 && v32;
  v41 = v38 == -3.40282347e38 && v37;
  v42 = [(UISplitViewControllerPanelImpl *)self _currentInterfaceIdiom];
  v43 = [(UISplitViewControllerPanelImpl *)self styleProvider];
  [v43 defaultMaximumWidthForColumn:0 withSize:a7 splitBehavior:{width, height}];
  v78 = v44;

  v45 = [(UISplitViewControllerPanelImpl *)self styleProvider];
  [v45 defaultMaximumWidthForColumn:1 withSize:a7 splitBehavior:{width, height}];
  v47 = v46;

  if (v19 != 2 && v29)
  {
    v77 = v47;
    if (v42 || [(UISplitViewControllerPanelImpl *)self _usesExtraWidePrimaryColumn])
    {
      v36 = 0.0;
      if (v40)
      {
        v48 = v78;
      }

      else
      {
        v52 = ceil(width * v34);
        if (v31 == -3.40282347e38)
        {
          v48 = v52;
        }

        else
        {
          v48 = v31;
        }
      }
    }

    else
    {
      if (v76)
      {
        v48 = 375.0;
      }

      else
      {
        v48 = 320.0;
      }

      v36 = 0.0;
      v78 = v48;
    }

    goto LABEL_69;
  }

  v49 = v25 - v22;
  if (v19 == 2)
  {
    v50 = v29;
  }

  else
  {
    v50 = 1;
  }

  if (v50)
  {
    if (!v42)
    {
      v48 = 320.0;
      if (v49 + -320.0 + -375.0 <= 50.0)
      {
        v36 = 320.0;
      }

      else
      {
        v36 = 375.0;
      }

      v77 = v36;
      v78 = 320.0;
      goto LABEL_69;
    }

    v51 = ceil(width * v34);
    if (v34 == -3.40282347e38)
    {
      v51 = v78;
    }

    if (v31 == -3.40282347e38)
    {
      v48 = v51;
    }

    else
    {
      v48 = v31;
    }

    v77 = v47;
    if (!v41)
    {
LABEL_51:
      v53 = ceil(width * v39);
      if (v36 == -3.40282347e38)
      {
        v36 = v53;
      }

      goto LABEL_69;
    }

LABEL_47:
    v36 = v47;
    goto LABEL_69;
  }

  if (!v42)
  {
    if (v49 + -320.0 + -375.0 <= 50.0)
    {
      v36 = 320.0;
    }

    else
    {
      v36 = 375.0;
    }

    v48 = 0.0;
    v77 = v36;
    goto LABEL_69;
  }

  v77 = v47;
  v48 = 0.0;
  if (!v41)
  {
    goto LABEL_51;
  }

  if (v40)
  {
    goto LABEL_47;
  }

  v54 = ceil(width * v34);
  if (v31 == -3.40282347e38)
  {
    v36 = v54;
  }

  else
  {
    v36 = v31;
  }

LABEL_69:
  v55 = objc_loadWeakRetained(&self->_svc);
  v56 = [v55 viewIfLoaded];
  [v56 safeAreaInsets];
  v58 = v57;
  v60 = v59;

  if ([(UISplitViewControllerPanelImpl *)self _layoutPrimaryOnRight])
  {
    v61 = v60;
  }

  else
  {
    v61 = v58;
  }

  if (v19 == 2)
  {
    v62 = v29;
  }

  else
  {
    v62 = 1;
  }

  if (v62)
  {
    v63 = v36;
  }

  else
  {
    v63 = v36 + v61;
  }

  [(UISplitViewControllerPanelImpl *)self minimumPrimaryColumnWidth];
  v65 = v64;
  [(UISplitViewControllerPanelImpl *)self minimumSupplementaryColumnWidth];
  if (v66 == -3.40282347e38)
  {
    v66 = 0.0;
  }

  if (v66 < v63 || v19 != 2)
  {
    v68 = v63;
  }

  else
  {
    v68 = v66;
  }

  [(UISplitViewControllerPanelImpl *)self maximumPrimaryColumnWidth];
  v70 = v69;
  [(UISplitViewControllerPanelImpl *)self maximumSupplementaryColumnWidth];
  v71 = v78;
  if (v26 == -3.40282347e38)
  {
    v26 = v77;
  }

  if (v26 >= v68)
  {
    v26 = v68;
  }

  v72 = v48 + v61;
  if (v19 != 2)
  {
    v26 = v36;
  }

  if (!v29)
  {
    v72 = v48;
  }

  if (v65 == -3.40282347e38)
  {
    v73 = 0.0;
  }

  else
  {
    v73 = v65;
  }

  if (v73 >= v72)
  {
    v72 = v73;
  }

  if (v29)
  {
    v74 = v72;
  }

  else
  {
    v74 = v48;
  }

  if (v70 != -3.40282347e38)
  {
    v71 = v70;
  }

  if (v71 < v74)
  {
    v72 = v71;
  }

  if (v29)
  {
    width = v72;
  }

  else
  {
    width = v48;
  }

LABEL_109:
  if (a3)
  {
    *a3 = width;
  }

  if (a4)
  {
    *a4 = v26;
  }
}

- (void)_primaryColumnWidthAffectingPropertyDidChange
{
  if ([(UISplitViewControllerPanelImpl *)self style])
  {

    [(UISplitViewControllerPanelImpl *)self _supplementaryOrPrimaryColumnWidthAffectingPropertyDidChange];
  }

  else
  {
    if (*&self->_flags)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:5782 description:@"Setting this property is not compatible with the new UISplitViewController SPI"];
    }

    panelController = self->_panelController;

    [(UIPanelController *)panelController setNeedsUpdate];
  }
}

- (void)_supplementaryOrPrimaryColumnWidthAffectingPropertyDidChange
{
  v3 = [(UIPanelController *)self->_panelController areClippingViewsUnnecessary];
  [(UIPanelController *)self->_panelController setClippingViewsUnnecessary:1];
  [(UIPanelController *)self->_panelController setNeedsUpdate];
  panelController = self->_panelController;

  [(UIPanelController *)panelController setClippingViewsUnnecessary:v3];
}

- (CGSize)_defaultViewSizeForResolvingDisplayModeOrSplitBehavior
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v4 = [WeakRetained _existingView];

  if (v4)
  {
    [v4 bounds];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v9 = objc_loadWeakRetained(&self->_svc);
    v10 = [v9 _window];
    [v10 bounds];
    v6 = v11;
    v8 = v12;
  }

  v13 = v6;
  v14 = v8;
  result.height = v14;
  result.width = v13;
  return result;
}

- (int64_t)_concreteDisplayModeForCurrentEnvironment
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = [(UISplitViewControllerPanelImpl *)self style];
  if ((v4 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v22 = v4;
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = _UISplitViewControllerStyleDescription(v22);
    [v23 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:5810 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v24}];
  }

  v5 = [(UISplitViewControllerPanelImpl *)self preferredDisplayMode];
  v6 = [(UISplitViewControllerPanelImpl *)self userGeneratedDisplayMode];
  if ([(UIPanelController *)self->_panelController collapsedState]== 2)
  {
    return 2;
  }

  if (![(UISplitViewControllerPanelImpl *)self presentsWithGesture]&& [(UISplitViewControllerPanelImpl *)self _visibleToggleButtonRequiresPresentsWithGesture])
  {
    if (v6)
    {
      if (v6 == v5)
      {
        return v5;
      }
    }

    else if (v5)
    {
      return v5;
    }
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  if ((*&self->_flags & 0x40) != 0)
  {
    v9 = 0;
    v5 = v8;
    if (v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = [(UISplitViewControllerPanelImpl *)self allowedDisplayModeForCurrentSplitBehaviorGivenDisplayMode:v8];
    v9 = v5 != v8;
    if (v5)
    {
LABEL_17:
      WeakRetained = objc_loadWeakRetained(&self->_svc);
      v11 = _UISplitViewControllerAutoHidesColumns(WeakRetained);

      if (v11 && _UIGetUISplitViewControllerChamoisResizeLogging())
      {
        v12 = *(__UILogGetCategoryCachedImpl("ChamoisResize", &qword_1ED49D928) + 8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = objc_loadWeakRetained(&self->_svc);
          if (v6)
          {
            v14 = @"user-generated";
          }

          else
          {
            v14 = @"preferred";
          }

          if (v9)
          {
            v15 = MEMORY[0x1E696AEC0];
            v6 = _UISplitViewControllerDisplayModeDescription(v8);
            v16 = [v15 stringWithFormat:@" converted from %@", v6];
          }

          else
          {
            v16 = &stru_1EFB14550;
          }

          v21 = _UISplitViewControllerDisplayModeDescription(v5);
          *buf = 138413058;
          v26 = v13;
          v27 = 2112;
          v28 = v14;
          v29 = 2112;
          v30 = v16;
          v31 = 2112;
          v32 = v21;
          _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "%@: Using %@ display mode %@%@ for current environment", buf, 0x2Au);
          if (v9)
          {
          }
        }
      }

      return v5;
    }
  }

  if (qword_1ED49D968 != -1)
  {
    dispatch_once(&qword_1ED49D968, &__block_literal_global_1604);
  }

  if (dyld_program_sdk_at_least())
  {
    v17 = objc_loadWeakRetained(&self->_svc);
    v18 = _UISplitViewControllerWantsPickerBehaviors(v17);

    if (v18)
    {
      return 2;
    }
  }

  if (*(&self->_flags + 1))
  {
    width = self->_transitioningToSize.width;
    height = self->_transitioningToSize.height;
  }

  else
  {
    [(UISplitViewControllerPanelImpl *)self _defaultViewSizeForResolvingDisplayModeOrSplitBehavior];
  }

  return [(UISplitViewControllerPanelImpl *)self defaultDisplayModeForSize:width, height];
}

- (id)_hiddenColumnsInCurrentEnvironmentWithConcreteDisplayMode:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = [(UISplitViewControllerPanelImpl *)self style];
  if (v6 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = _UISplitViewControllerStyleDescription(v6);
    [v13 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:5856 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v14}];
  }

  v7 = MEMORY[0x1E695E0F0];
  if ((a3 - 4) >= 3)
  {
    if ((a3 - 2) < 2)
    {
      v8 = &unk_1EFE2BC08;
      if (v6 != 2)
      {
        v8 = MEMORY[0x1E695E0F0];
      }

LABEL_11:
      v7 = v8;
      goto LABEL_18;
    }

    if (a3 == 1)
    {
      v8 = &unk_1EFE2BBF0;
      if (v6 == 2)
      {
        v8 = &unk_1EFE2BBD8;
      }

      goto LABEL_11;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v10 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_16;
      }

      v11 = _UISplitViewControllerDisplayModeDescription(a3);
      *buf = 138412290;
      v16 = v11;
      _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Unrecognized UISplitViewControllerDisplayMode, %@, for determining hidden columns", buf, 0xCu);
    }

    else
    {
      v9 = *(__UILogGetCategoryCachedImpl("Assert", &_hiddenColumnsInCurrentEnvironmentWithConcreteDisplayMode____s_category) + 8);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
LABEL_17:
        v7 = 0;
        goto LABEL_18;
      }

      v10 = v9;
      v11 = _UISplitViewControllerDisplayModeDescription(a3);
      *buf = 138412290;
      v16 = v11;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Unrecognized UISplitViewControllerDisplayMode, %@, for determining hidden columns", buf, 0xCu);
    }

LABEL_16:
    goto LABEL_17;
  }

LABEL_18:

  return v7;
}

- (void)_getPrimaryShown:(BOOL *)a3 shouldUseOverlay:(BOOL *)a4
{
  v8 = [(UISplitViewControllerPanelImpl *)self style];
  if (v8)
  {
    v17 = v8;
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = _UISplitViewControllerStyleDescription(v17);
    [v18 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:5893 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v19}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v10 = [WeakRetained traitCollection];
  v11 = [v10 userInterfaceIdiom];

  v12 = objc_loadWeakRetained(&self->_svc);
  v13 = [v12 preferredDisplayMode];

  switch(v13)
  {
    case 1:
      if (v11 == 1)
      {
        goto LABEL_16;
      }

      if (v11)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    case 2:
LABEL_13:
      LOBYTE(v11) = 0;
      goto LABEL_16;
    case 3:
      LOBYTE(v11) = 1;
      goto LABEL_16;
  }

  if (!v11)
  {
LABEL_14:
    v14 = [(UISplitViewControllerPanelImpl *)self _iPhoneShouldUseOverlayInCurrentEnvironment];
    goto LABEL_15;
  }

  if (v11 != 1)
  {
    goto LABEL_13;
  }

  v14 = [(UISplitViewControllerPanelImpl *)self _iPadShouldUseOverlayInCurrentEnvironment];
LABEL_15:
  LOBYTE(v11) = v14;
LABEL_16:
  v15 = [(UISplitViewControllerPanelImpl *)self _primaryHidingState];
  if (v15 == 2)
  {
    v16 = 1;
    if (!a3)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (!v15)
  {
    v16 = v11 ^ 1;
    if (!a3)
    {
      goto LABEL_22;
    }

LABEL_21:
    *a3 = v16;
    goto LABEL_22;
  }

  v16 = 0;
  if (a3)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (a4)
  {
    *a4 = v11;
  }
}

- (void)_getPrimaryShown:(BOOL *)a3 supplementaryShown:(BOOL *)a4 shouldUseOverlay:(BOOL *)a5 dimMainIfNecessary:(BOOL *)a6 forDisplayMode:(int64_t)a7
{
  v30 = *MEMORY[0x1E69E9840];
  v14 = [(UISplitViewControllerPanelImpl *)self style];
  v15 = v14 == 2;
  if (v14 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = _UISplitViewControllerStyleDescription(v14);
    [v26 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:5957 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v27}];
  }

  if ((a7 - 4) < 3)
  {
    v15 = 1;
    v16 = 1;
    if (!a3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ((a7 - 2) < 2)
  {
    v16 = v14 != 2;
    if (!a3)
    {
      goto LABEL_9;
    }

LABEL_8:
    *a3 = v16;
    goto LABEL_9;
  }

  if (a7 != 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v24 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_40;
      }

      v25 = _UISplitViewControllerDisplayModeDescription(a7);
      *buf = 138412290;
      v29 = v25;
      _os_log_fault_impl(&dword_188A29000, v24, OS_LOG_TYPE_FAULT, "unknown display mode: %@", buf, 0xCu);
    }

    else
    {
      v23 = *(__UILogGetCategoryCachedImpl("Assert", &_getPrimaryShown_supplementaryShown_shouldUseOverlay_dimMainIfNecessary_forDisplayMode____s_category) + 8);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_41;
      }

      v24 = v23;
      v25 = _UISplitViewControllerDisplayModeDescription(a7);
      *buf = 138412290;
      v29 = v25;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "unknown display mode: %@", buf, 0xCu);
    }

LABEL_40:
  }

LABEL_41:
  v15 = 0;
  v16 = 0;
  if (a3)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (a4)
  {
    *a4 = v15;
  }

  v17 = [(UISplitViewControllerPanelImpl *)self splitBehavior];
  if ([(UISplitViewControllerPanelImpl *)self presentsWithGesture]|| ![(UISplitViewControllerPanelImpl *)self _visibleToggleButtonRequiresPresentsWithGesture])
  {
    v19 = a7 == 3 || v17 == 2;
    v20 = v17 == 3;
  }

  else
  {
    v19 = a7 == 3 || a7 == 5;
    v20 = a7 == 6;
  }

  v22 = v20;
  if (a5)
  {
    *a5 = v19;
  }

  if (a6)
  {
    *a6 = v22;
  }
}

- (void)_getPrimaryShown:(BOOL *)a3 supplementaryShown:(BOOL *)a4 shouldUseOverlay:(BOOL *)a5 dimMainIfNecessary:(BOOL *)a6
{
  v12 = [(UISplitViewControllerPanelImpl *)self style];
  if ((v12 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = v12;
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = _UISplitViewControllerStyleDescription(v14);
    [v15 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:6007 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v16}];
  }

  v13 = [(UISplitViewControllerPanelImpl *)self _concreteDisplayModeForCurrentEnvironment];

  [(UISplitViewControllerPanelImpl *)self _getPrimaryShown:a3 supplementaryShown:a4 shouldUseOverlay:a5 dimMainIfNecessary:a6 forDisplayMode:v13];
}

- (int64_t)validDisplayModeWithAllColumns
{
  v4 = [(UISplitViewControllerPanelImpl *)self style];
  v5 = v4;
  if ((v4 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = _UISplitViewControllerStyleDescription(v5);
    [v9 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:6013 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v10}];
  }

  else if (v4 == 2)
  {
    v6 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];

    if (v6)
    {
      v7 = self;
      v8 = 4;
      goto LABEL_7;
    }
  }

  v7 = self;
  v8 = 2;
LABEL_7:

  return [(UISplitViewControllerPanelImpl *)v7 allowedDisplayModeForCurrentSplitBehaviorGivenDisplayMode:v8];
}

- (double)panelController:(id)a3 expectedWidthForColumnForViewController:(id)a4
{
  v5 = a4;
  v23 = 0.0;
  v6 = 0.0;
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    v7 = [(UISplitViewControllerPanelImpl *)self _columnForViewController:v5];
    if (v7 <= 1)
    {
      v8 = v7;
      v9 = [(UISplitViewControllerPanelImpl *)self validDisplayModeWithAllColumns];
      v22 = 0;
      [(UISplitViewControllerPanelImpl *)self _getPrimaryShown:0 supplementaryShown:0 shouldUseOverlay:&v22 dimMainIfNecessary:0 forDisplayMode:v9];
      v10 = v8 == 0;
      if (v8)
      {
        v11 = 0;
      }

      else
      {
        v11 = &v23;
      }

      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = &v23;
      }

      WeakRetained = objc_loadWeakRetained(&self->_svc);
      v14 = [WeakRetained view];
      [v14 bounds];
      v16 = v15;
      v18 = v17;
      v19 = objc_loadWeakRetained(&self->_svc);
      v20 = [v19 _horizontalSizeClass] == 1;
      [(UISplitViewControllerPanelImpl *)self getPrimaryColumnWidth:v11 supplementaryColumnWidth:v12 forSize:v9 displayMode:v20 isCompact:v22 shouldUseOverlay:v16, v18];

      v6 = v23;
    }
  }

  return v6;
}

- (id)_newBarContentAnimationClippingView
{
  v2 = objc_alloc_init(UIView);
  [(UIView *)v2 setClipsToBounds:1];
  return v2;
}

- (id)panelControllerWillUpdate:(id)a3
{
  v4 = a3;
  [(UISplitViewControllerPanelImpl *)self _updateDimmingView];
  if (qword_1ED49D968 != -1)
  {
    dispatch_once(&qword_1ED49D968, &__block_literal_global_1604);
  }

  v5 = [(UISplitViewControllerPanelImpl *)self panelController];
  [v5 setShowShadowViews:1];

  *&self->_flags &= 0xFFFFFFFFFFFFFD7FLL;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v7 = [WeakRetained traitCollection];
  if ([v7 horizontalSizeClass] == 1)
  {
    goto LABEL_28;
  }

  v8 = [(UISplitViewControllerPanelImpl *)self style];
  v9 = v8 != 0;
  if (v8 && [(UISplitViewControllerPanelImpl *)self splitBehavior]== 1)
  {
    if ([(UISplitViewControllerPanelImpl *)self _alwaysHideSidebarToggleButton])
    {
      [v4 setClippingViewsUnnecessary:1];
    }

    else
    {
      if (v8 == 2)
      {
        v10 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];

        if (!v10)
        {
          goto LABEL_18;
        }
      }

      if ([(UISplitViewControllerPanelImpl *)self _isPrimaryLeading])
      {
        v11 = [v4 leadingBarContentClippingView];

        if (!v11)
        {
          v12 = [(UISplitViewControllerPanelImpl *)self _newBarContentAnimationClippingView];
          [v4 setLeadingBarContentClippingView:v12];
        }

        [v4 setTrailingBarContentClippingView:0];
      }

      else
      {
        v13 = [v4 trailingBarContentClippingView];

        if (!v13)
        {
          v14 = [(UISplitViewControllerPanelImpl *)self _newBarContentAnimationClippingView];
          [v4 setTrailingBarContentClippingView:v14];
        }

        [v4 setLeadingBarContentClippingView:0];
      }

      if (v8 == 2)
      {
LABEL_18:
        v15 = [v4 supplementaryBarContentClippingView];

        if (!v15)
        {
          v16 = [(UISplitViewControllerPanelImpl *)self _newBarContentAnimationClippingView];
          [v4 setSupplementaryBarContentClippingView:v16];
        }
      }
    }

    [v4 setFloatingBarButtonItem:self->_sidebarToggleButtonItem];
  }

  if ([v4 isAnimating])
  {
    v17 = [v4 configuration];
    v18 = (*(&self->_flags + 2) & 2) != 0 && [(UISplitViewControllerPanelImpl *)self userGeneratedDisplayMode]== 3;
    [v17 setForceOverlay:v18];
    [v4 setConfiguration:v17];

LABEL_28:
    v20 = 0;
    goto LABEL_34;
  }

  v19 = [v4 stateRequest];
  if ([v19 userInitiated])
  {
    v20 = 0;
  }

  else
  {
    v34 = 0;
    v33 = 0;
    if (v8)
    {
      v8 = [(UISplitViewControllerPanelImpl *)self currentState];
      [(UISplitViewControllerPanelImpl *)self _getPrimaryShown:&v33 + 1 supplementaryShown:&v33 shouldUseOverlay:0 dimMainIfNecessary:0 forDisplayMode:[(UISplitViewControllerPanelImpl *)self _displayModeForState:v8]];

      [(UISplitViewControllerPanelImpl *)self _getPrimaryShown:&v34 + 3 supplementaryShown:&v34 + 2 shouldUseOverlay:&v34 + 1 dimMainIfNecessary:&v34];
      v21 = [(UISplitViewControllerPanelImpl *)self _setPanelConfigurationWithIsPrimaryShown:HIBYTE(v34) isSupplementaryShown:BYTE2(v34) shouldUseOverlay:BYTE1(v34) dimMainIfNecessary:v34];
      v22 = BYTE2(v34);
      v23 = HIBYTE(v33);
      LOBYTE(v8) = v33;
    }

    else
    {
      [(UISplitViewControllerPanelImpl *)self _getPrimaryShown:&v34 + 3 shouldUseOverlay:&v34 + 1];
      v21 = [(UISplitViewControllerPanelImpl *)self _setPanelConfigurationWithIsPrimaryShown:HIBYTE(v34) shouldUseOverlay:BYTE1(v34)];
      v23 = 0;
      v22 = 0;
    }

    self->_lastShouldAllowChange = v21;
    *&self->_flags |= 0x80uLL;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __60__UISplitViewControllerPanelImpl_panelControllerWillUpdate___block_invoke;
    v26[3] = &unk_1E7103CB8;
    v26[4] = self;
    v27 = WeakRetained;
    v28 = HIBYTE(v34);
    v29 = v22;
    v30 = v23;
    v31 = v8;
    v32 = v9;
    v24 = _Block_copy(v26);
    v20 = _Block_copy(v24);
  }

LABEL_34:

  return v20;
}

UISlidingBarStateRequest *__60__UISplitViewControllerPanelImpl_panelControllerWillUpdate___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (*(v6 + 208))
  {
    v7 = *(v6 + 144);
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = [*(a1 + 40) traitCollection];
    }

    v9 = v8;
    v10 = *(a1 + 32);
    if (*(v10 + 289))
    {
      v13 = *(v10 + 160);
      v15 = *(v10 + 168);
    }

    else
    {
      v11 = [*(a1 + 40) _existingView];
      [v11 bounds];
      v13 = v12;
      v15 = v14;

      v10 = *(a1 + 32);
    }

    if ([v9 isEqual:*(v10 + 184)])
    {
      v16 = *(a1 + 32);
      if (v13 == *(v16 + 192) && v15 == *(v16 + 200))
      {
        if (a3)
        {
          *a3 = 1;
          v16 = *(a1 + 32);
        }

        v18 = *(v16 + 208);
        goto LABEL_62;
      }
    }
  }

  if (a3)
  {
    *a3 = 0;
  }

  v18 = objc_alloc_init(UISlidingBarStateRequest);
  [(UISlidingBarStateRequest *)v18 setUserInitiated:0];
  if ((*(a1 + 48) & 1) != 0 || (*(a1 + 49) & 1) != 0 || (*(a1 + 50) & 1) != 0 || *(a1 + 51) == 1)
  {
    v19 = [*(a1 + 32) _isPrimaryLeading];
    if ((*(a1 + 48) & 1) != 0 || *(a1 + 50) == 1)
    {
      v20 = *(a1 + 32);
      v21 = 0.0;
      if ((v20[288] & 1) != 0 && (*(a1 + 52) & 1) == 0)
      {
        v22 = [v20 panelController];
        v23 = [v22 currentState];

        if (v19)
        {
          [v23 leadingWidth];
        }

        else
        {
          [v23 trailingWidth];
        }

        v25 = v24;
        if (v24 > 0.0 || (v25 = *(*(a1 + 32) + 296), v25 > 0.0))
        {
          if (v25 <= 0.0)
          {
            v21 = v25;
          }

          else
          {
            v26 = objc_alloc_init(UISlidingBarStateRequest);
            v27 = v26;
            if (v19)
            {
              [(UISlidingBarStateRequest *)v26 setLeadingWidth:v25];
              v28 = [(UISlidingBarStateRequest *)v27 _closestState:v5];
              [v28 leadingWidth];
            }

            else
            {
              [(UISlidingBarStateRequest *)v26 setTrailingWidth:v25];
              v28 = [(UISlidingBarStateRequest *)v27 _closestState:v5];
              [v28 trailingWidth];
            }

            v21 = v29;
          }
        }
      }

      v30 = minNonzeroPrimaryWidthInStates(v5, v19);
      if (v21 >= v30)
      {
        v30 = v21;
      }

      if (v19)
      {
        if (*(a1 + 48))
        {
          [(UISlidingBarStateRequest *)v18 setLeadingWidth:v30];
        }

        else if (*(a1 + 52) == 1)
        {
          [(UISlidingBarStateRequest *)v18 setLeadingOffscreenWidth:v30];
        }
      }

      else if (*(a1 + 48))
      {
        [(UISlidingBarStateRequest *)v18 setTrailingWidth:v30];
      }

      else if (*(a1 + 52) == 1)
      {
        [(UISlidingBarStateRequest *)v18 setTrailingOffscreenWidth:v30];
      }
    }

    if ((*(a1 + 49) & 1) != 0 || *(a1 + 51) == 1)
    {
      if (v19)
      {
        [(UISlidingBarStateRequest *)v18 leadingWidth];
        v32 = v31;
        [(UISlidingBarStateRequest *)v18 leadingOffscreenWidth];
      }

      else
      {
        [(UISlidingBarStateRequest *)v18 trailingWidth];
        v32 = v34;
        [(UISlidingBarStateRequest *)v18 trailingOffscreenWidth];
      }

      if (v32 >= v33)
      {
        v33 = v32;
      }

      v37 = 0;
      MatchingState = minNonzeroSupplementaryWidthInStateWithPrimaryWidthGetMatchingState(v5, v19, &v37, v33);
      v9 = v37;
      if (*(a1 + 49) != 1 || ([(UISlidingBarStateRequest *)v18 setSupplementaryWidth:MatchingState], *(a1 + 52) == 1) && (*(a1 + 51) & 1) == 0)
      {
        [(UISlidingBarStateRequest *)v18 setSupplementaryOffscreenWidth:MatchingState];
      }

      [v9 mainWidth];
      [(UISlidingBarStateRequest *)v18 setMainWidth:?];
LABEL_62:
    }
  }

  return v18;
}

- (void)callDeprecatedWillHideDelegateCallbackIfNecessary
{
  v22 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v4 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(UISplitViewControllerPanelImpl *)self style];
    if (v5)
    {
      v6 = v5;
      v7 = *(__UILogGetCategoryCachedImpl("UISplitViewController", &callDeprecatedWillHideDelegateCallbackIfNecessary___s_category) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = v7;
        v9 = NSStringFromSelector(sel_splitViewController_willHideViewController_withBarButtonItem_forPopoverController_);
        v10 = _UISplitViewControllerStyleDescription(v6);
        v18 = 138543618;
        v19 = v9;
        v20 = 2114;
        v21 = v10;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Skipping delegate callback, %{public}@. Unsupported for UISplitViewController style %{public}@", &v18, 0x16u);
      }
    }

    else
    {
      v11 = [(UISplitViewControllerPanelImpl *)self displayModeButtonItem];
      v12 = [v11 title];
      v13 = [v12 copy];

      v14 = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
      v15 = [(UISplitViewControllerPanelImpl *)self displayModeButtonItem];
      [v4 splitViewController:WeakRetained willHideViewController:v14 withBarButtonItem:v15 forPopoverController:0];

      v16 = [(UISplitViewControllerPanelImpl *)self displayModeButtonItem];
      v17 = [v16 title];

      if (v13 != v17 && ([v13 isEqualToString:v17] & 1) == 0)
      {
        [(UISplitViewControllerPanelImpl *)self _setDisplayModeButtonItemTitle:v17];
      }
    }
  }
}

- (void)callDeprecatedWillShowDelegateCallbackIfNecessary
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v4 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(UISplitViewControllerPanelImpl *)self style];
    if (v5)
    {
      v6 = v5;
      v7 = *(__UILogGetCategoryCachedImpl("UISplitViewController", &callDeprecatedWillShowDelegateCallbackIfNecessary___s_category) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = v7;
        v9 = NSStringFromSelector(sel_splitViewController_willShowViewController_invalidatingBarButtonItem_);
        v10 = _UISplitViewControllerStyleDescription(v6);
        v13 = 138543618;
        v14 = v9;
        v15 = 2114;
        v16 = v10;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Skipping delegate callback, %{public}@. Unsupported for UISplitViewController style %{public}@", &v13, 0x16u);
      }
    }

    else
    {
      v11 = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
      v12 = [(UISplitViewControllerPanelImpl *)self displayModeButtonItem];
      [v4 splitViewController:WeakRetained willShowViewController:v11 invalidatingBarButtonItem:v12];
    }
  }
}

- (void)panelController:(id)a3 willChangeToState:(id)a4
{
  v28 = a3;
  v6 = a4;
  animatingToDisplayMode = self->_animatingToDisplayMode;
  if (!animatingToDisplayMode)
  {
    animatingToDisplayMode = [(UISplitViewControllerPanelImpl *)self _displayModeForState:v6];
  }

  lastNotifiedMode = self->_lastNotifiedMode;
  v10 = animatingToDisplayMode != lastNotifiedMode && lastNotifiedMode != 0;
  if (!lastNotifiedMode)
  {
    goto LABEL_12;
  }

  v11 = [v28 currentState];

  if (!v10)
  {
    if (v11)
    {
      goto LABEL_40;
    }

LABEL_12:
    if (!dyld_program_sdk_at_least())
    {
      goto LABEL_40;
    }
  }

  v12 = self->_lastNotifiedMode;
  self->_lastNotifiedMode = animatingToDisplayMode;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v14 = [WeakRetained delegate];
  v15 = v12 & 0xFFFFFFFFFFFFFFFELL;
  v16 = animatingToDisplayMode & 0xFFFFFFFFFFFFFFFELL;
  if ((v12 & 0xFFFFFFFFFFFFFFFELL) == 2 && animatingToDisplayMode == 1)
  {
    [(UISplitViewControllerPanelImpl *)self callDeprecatedWillHideDelegateCallbackIfNecessary];
  }

  else if (v16 == 2 && v12 == 1)
  {
    [(UISplitViewControllerPanelImpl *)self callDeprecatedWillShowDelegateCallbackIfNecessary];
  }

  if (objc_opt_respondsToSelector())
  {
    *&self->_flags |= 0x10000000uLL;
    [v14 splitViewController:WeakRetained willChangeToDisplayMode:animatingToDisplayMode];
    *&self->_flags &= ~0x10000000uLL;
  }

  [(UISplitViewControllerPanelImpl *)self sendColumnShowHideNotificationsForNewState:v6 newDisplayMode:animatingToDisplayMode oldDisplayMode:v12];
  [(UISplitViewControllerPanelImpl *)self _updateTriggerSidebarKeyCommandTitleForNewDisplayMode:animatingToDisplayMode];
  if (![(UIPanelController *)self->_panelController collapsedState])
  {
    v17 = [v6 isCollapsed];
    v18 = animatingToDisplayMode == 1 || v12 == 1;
    v19 = v18;
    if (!v17 && v12 != animatingToDisplayMode && v19)
    {
      v27 = objc_loadWeakRetained(&self->_svc);
      v20 = [v27 _tabBarControllerEnforcingClass:1];
      v21 = objc_loadWeakRetained(&self->_svc);
      [v20 _viewControllerObservableScrollViewAmbiguityStatusDidChange:v21];

      v16 = animatingToDisplayMode & 0xFFFFFFFFFFFFFFFELL;
      v15 = v12 & 0xFFFFFFFFFFFFFFFELL;
    }
  }

  if ([(UISplitViewControllerPanelImpl *)self style]== 2)
  {
    v22 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
    v23 = v22 != 0 && v10;

    if (v23 == 1 && (v16 == 2 && (v12 - 5) < 2 || (animatingToDisplayMode - 5) <= 1 && v15 == 2))
    {
      v24 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
      v25 = [v24 navigationController];
      v26 = [v25 navigationBar];
      [v26 _refreshBackButtonMenu];
    }
  }

LABEL_40:
}

- (void)_unspecifiedStylePanelController:(id)a3 didChangeToState:(id)a4 withSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v35 = a4;
  v9 = [(UISplitViewControllerPanelImpl *)self style];
  if (v9)
  {
    v32 = v9;
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    v34 = _UISplitViewControllerStyleDescription(v32);
    [v33 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:6346 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v34}];
  }

  v10 = [(UISplitViewControllerPanelImpl *)self panelController];
  v11 = [v10 isAnimating];

  if ((v11 & 1) == 0)
  {
    v12 = [(UISplitViewControllerPanelImpl *)self panelController];
    v13 = [v12 stateRequest];

    if (v13 && [v13 userInitiated])
    {
      if ([(UISplitViewControllerPanelImpl *)self _isPrimaryShown])
      {
        [(UISplitViewControllerPanelImpl *)self _setPrimaryHidingState:2];
        if ([(UISplitViewControllerPanelImpl *)self _isPrimaryLeading])
        {
          [v35 leadingWidth];
        }

        else
        {
          [v35 trailingWidth];
        }

        self->_lastUserInitiatedPrimaryWidth = v14;
      }

      else
      {
        [(UISplitViewControllerPanelImpl *)self _setPrimaryHidingState:1];
      }

      [v13 setUserInitiated:0];
      v15 = [(UISplitViewControllerPanelImpl *)self panelController];
      [v15 setStateRequest:v13];
    }
  }

  [(UISplitViewControllerPanelImpl *)self _updateDisplayModeButtonItem];
  [(UISplitViewControllerPanelImpl *)self _updatePresentationGestureRecognizer];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v17 = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v19 = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
    [v19 _splitViewControllerDidUpdate:WeakRetained withSize:{width, height}];
  }

  v20 = [WeakRetained isCollapsed];
  if (self->_lastNotifiedIsCollapsed != v20)
  {
    self->_lastNotifiedIsCollapsed = v20;
    v21 = [MEMORY[0x1E696AD88] defaultCenter];
    v22 = objc_loadWeakRetained(&self->_svc);
    [v21 postNotificationName:@"UIViewControllerShowDetailTargetDidChangeNotification" object:v22];
  }

  if ((*&self->_flags & 0x80) != 0)
  {
    v23 = [(UISplitViewControllerPanelImpl *)self displayMode];
    v24 = [(UISplitViewControllerPanelImpl *)self _effectiveTargetDisplayModeForDisplayMode:v23];
    v25 = !v24 || v24 == v23;
    v26 = !v25;
    if (self->_lastShouldAllowChange != v26)
    {
      v27 = [(UISplitViewControllerPanelImpl *)self panelController];
      [v27 setNeedsUpdate];
    }
  }

  v28 = [(UISplitViewControllerPanelImpl *)self panelController];
  v29 = [v28 isAnimating];

  if ((v29 & 1) == 0)
  {
    v30 = objc_loadWeakRetained(&self->_svc);
    [v30 setNeedsStatusBarAppearanceUpdate];

    v31 = objc_loadWeakRetained(&self->_svc);
    [v31 setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
  }
}

- (void)panelController:(id)a3 didChangeToState:(id)a4 withSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v39 = a3;
  v9 = a4;
  v10 = [(UISplitViewControllerPanelImpl *)self panelController];

  if (v10 != v39)
  {
    goto LABEL_52;
  }

  if (![(UISplitViewControllerPanelImpl *)self style])
  {
    [(UISplitViewControllerPanelImpl *)self _unspecifiedStylePanelController:v39 didChangeToState:v9 withSize:width, height];
    goto LABEL_52;
  }

  if (([v39 isAnimating] & 1) == 0)
  {
    v11 = [v39 stateRequest];
    v12 = v11;
    if (v11 && [v11 userInitiated])
    {
      if ([(UISplitViewControllerPanelImpl *)self _isPrimaryShown])
      {
        if ([(UISplitViewControllerPanelImpl *)self _isPrimaryLeading])
        {
          [v9 leadingWidth];
        }

        else
        {
          [v9 trailingWidth];
        }

        self->_lastUserInitiatedPrimaryWidth = v13;
      }

      [(UISplitViewControllerPanelImpl *)self setUserGeneratedDisplayMode:[(UISplitViewControllerPanelImpl *)self _displayModeForState:v9]];
      [v12 setUserInitiated:0];
      [v39 setStateRequest:v12];
    }
  }

  [(UISplitViewControllerPanelImpl *)self _updateDisplayModeButtonItem];
  [(UISplitViewControllerPanelImpl *)self _updatePresentationGestureRecognizer];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v15 = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v17 = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
    [v17 _splitViewControllerDidUpdate:WeakRetained withSize:{width, height}];
  }

  v18 = [WeakRetained isCollapsed];
  if (self->_lastNotifiedIsCollapsed != v18)
  {
    self->_lastNotifiedIsCollapsed = v18;
    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    v20 = objc_loadWeakRetained(&self->_svc);
    [v19 postNotificationName:@"UIViewControllerShowDetailTargetDidChangeNotification" object:v20];
  }

  v21 = [(UISplitViewControllerPanelImpl *)self displayMode];
  if ((*&self->_flags & 0x80) != 0)
  {
    v22 = [(UISplitViewControllerPanelImpl *)self _nextTargetDisplayModeForDisplayMode:v21 showMoreIfPossible:0];
    v23 = !v22 || v22 == v21;
    v24 = !v23;
    if (self->_lastShouldAllowChange != v24)
    {
      [v39 setNeedsUpdate];
    }
  }

  v25 = [(UISplitViewControllerPanelImpl *)self panelController];
  v26 = [v25 isAnimating];

  if ((v26 & 1) == 0)
  {
    v27 = objc_loadWeakRetained(&self->_svc);
    [v27 setNeedsStatusBarAppearanceUpdate];

    v28 = objc_loadWeakRetained(&self->_svc);
    [v28 setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
  }

  lastSettledDisplayMode = self->_lastSettledDisplayMode;
  v31 = lastSettledDisplayMode != v21 && lastSettledDisplayMode != 0;
  if (!+[UIView _isInAnimationBlockWithAnimationsEnabled](UIView, "_isInAnimationBlockWithAnimationsEnabled") && ([v39 isAnimating] & 1) == 0 && (v31 || (*(&self->_flags + 4) & 3) != 0) && -[UIGestureRecognizer state](self->__fluidOpenSidebarPresentationGestureRecognizer, "state") == UIGestureRecognizerStatePossible)
  {
    v32 = objc_loadWeakRetained(&self->_svc);
    v33 = [v32 delegate];

    if (*(&self->_flags + 4))
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_48:
        flags = self->_flags;
        self->_lastSettledDisplayMode = v21;
        self->_flags = (*&flags & 0xFFFFFFFCFFFFFFFFLL);

        goto LABEL_49;
      }

      v37 = objc_loadWeakRetained(&self->_svc);
      [v33 _splitViewController:v37 didFinishExpandToDisplayMode:v21];
    }

    else
    {
      if (!v31)
      {
        goto LABEL_48;
      }

      v34 = [(UISplitViewControllerPanelImpl *)self panelController];
      v35 = [v34 currentState];
      v36 = [v35 _collapsedState];

      if (v36 || (objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_48;
      }

      v37 = objc_loadWeakRetained(&self->_svc);
      [v33 _splitViewController:v37 didChangeFromDisplayMode:self->_lastSettledDisplayMode toDisplayMode:v21];
    }

    goto LABEL_48;
  }

LABEL_49:
  if (qword_1ED49D968 != -1)
  {
    dispatch_once(&qword_1ED49D968, &__block_literal_global_1604);
  }

LABEL_52:
}

- (int64_t)topColumnForCollapsingPanelController:(id)a3
{
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    v4 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30238];
    v5 = [v4 viewController];
    v6 = v5;
    if (v5)
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v18 = v7;
    if (v6)
    {
      v8 = 3;
    }

    else
    {
      suspendedState = self->_suspendedState;
      if (suspendedState == 5)
      {
        v8 = 1;
        v18 = 1;
      }

      else if (suspendedState == 3)
      {
        v8 = 0;
        v18 = 0;
      }

      else
      {
        v8 = 2;
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v10 = [WeakRetained delegate];

    if (objc_opt_respondsToSelector())
    {
      objc_opt_respondsToSelector();
      p_flags = &self->_flags;
      *&self->_flags |= 0x30000000uLL;
      v12 = objc_loadWeakRetained(&self->_svc);
      v8 = [v10 splitViewController:v12 topColumnForCollapsingToProposedTopColumn:v8];
      v18 = v8;
    }

    else if (objc_opt_respondsToSelector())
    {
      p_flags = &self->_flags;
      *&self->_flags |= 0x30000000uLL;
      v13 = objc_loadWeakRetained(&self->_svc);
      [v10 splitViewController:v13 willCollapseToProposedTopColumn:&v18];

      v8 = v18;
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_18:
        self->_lastNotifiedTopColumnForCollapse = v8;

        return v8;
      }

      p_flags = &self->_flags;
      *&self->_flags |= 0x30000000uLL;
      v17 = v8;
      v15 = objc_loadWeakRetained(&self->_svc);
      [v10 _splitViewController:v15 willCollapseToProposedTopColumn:&v17];

      v8 = v17;
      v18 = v17;
    }

    *p_flags &= 0xFFFFFFFFCFFFFFFFLL;
    goto LABEL_18;
  }

  return 999;
}

- (id)primaryViewControllerForCollapsingPanelController:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v5 = [WeakRetained delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v6 = [(UISplitViewControllerPanelImpl *)self style];
  if (v6)
  {
    v7 = v6;
    v8 = *(__UILogGetCategoryCachedImpl("UISplitViewController", &primaryViewControllerForCollapsingPanelController____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      v10 = NSStringFromSelector(sel_primaryViewControllerForCollapsingSplitViewController_);
      v11 = _UISplitViewControllerStyleDescription(v7);
      v14 = 138543618;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Skipping delegate callback, %{public}@. Unsupported for UISplitViewController style %{public}@", &v14, 0x16u);
    }

    goto LABEL_5;
  }

  v12 = [v5 primaryViewControllerForCollapsingSplitViewController:WeakRetained];
LABEL_6:

  return v12;
}

- (id)primaryViewControllerForExpandingPanelController:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v5 = [WeakRetained delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v6 = [(UISplitViewControllerPanelImpl *)self style];
  if (v6)
  {
    v7 = v6;
    v8 = *(__UILogGetCategoryCachedImpl("UISplitViewController", &primaryViewControllerForExpandingPanelController____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      v10 = NSStringFromSelector(sel_primaryViewControllerForExpandingSplitViewController_);
      v11 = _UISplitViewControllerStyleDescription(v7);
      v14 = 138543618;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Skipping delegate callback, %{public}@. Unsupported for UISplitViewController style %{public}@", &v14, 0x16u);
    }

    goto LABEL_5;
  }

  v12 = [v5 primaryViewControllerForExpandingSplitViewController:WeakRetained];
LABEL_6:

  return v12;
}

- (BOOL)panelController:(id)a3 collapseOntoPrimaryViewController:(id)a4
{
  v40[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    [(UISplitViewControllerPanelImpl *)self preparePanelControllerForCollapse];
    v9 = 0;
  }

  else
  {
    [v7 _splitViewControllerWillCollapseOntoPrimaryViewController:WeakRetained];
    v9 = [(UIPanelController *)self->_panelController mainViewController];
    v10 = objc_loadWeakRetained(&self->_svc);
    v40[0] = v7;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    [v10 setViewControllers:v11];
  }

  if (!UIApp)
  {
    v21 = 1;
    goto LABEL_15;
  }

  v12 = [WeakRetained delegate];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__UISplitViewControllerPanelImpl_panelController_collapseOntoPrimaryViewController___block_invoke;
  aBlock[3] = &unk_1E7103CE0;
  v13 = v12;
  v26 = v13;
  v27 = self;
  v31 = &v32;
  v14 = WeakRetained;
  v28 = v14;
  v15 = v9;
  v29 = v15;
  v16 = v7;
  v30 = v16;
  v17 = _Block_copy(aBlock);
  if ([(UISplitViewControllerPanelImpl *)self style]|| (self->_suspendedState - 3) > 1)
  {
    v17[2](v17);
    v21 = *(v33 + 24);
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v24 = [(UISplitViewControllerPanelImpl *)self style];
      if (v24)
      {
        v18 = *(__UILogGetCategoryCachedImpl("UISplitViewController", &panelController_collapseOntoPrimaryViewController____s_category) + 8);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = NSStringFromSelector(sel__splitViewController_collapseSecondaryViewController_ontoPrimaryViewController_forRestorationOfCollapsedWhileSuspendedWithPrimaryVisible_);
          v20 = _UISplitViewControllerStyleDescription(v24);
          *buf = 138543618;
          v37 = v19;
          v38 = 2114;
          v39 = v20;
          _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "Skipping delegate callback, %{public}@. Unsupported for UISplitViewController style %{public}@", buf, 0x16u);
        }

        v21 = 0;
      }

      else
      {
        v21 = [v13 _splitViewController:v14 collapseSecondaryViewController:v15 ontoPrimaryViewController:v16 forRestorationOfCollapsedWhileSuspendedWithPrimaryVisible:self->_suspendedState == 3];
      }

      v23 = v33;
LABEL_22:
      *(v23 + 24) = v21;
      goto LABEL_13;
    }

    v17[2](v17);
    v23 = v33;
    if ((v33[3] & 1) == 0)
    {
      if (self->_suspendedState != 3)
      {
        v21 = 0;
        goto LABEL_13;
      }

      v21 = 1;
      goto LABEL_22;
    }

    v21 = 1;
  }

LABEL_13:

LABEL_15:
  _Block_object_dispose(&v32, 8);

  return v21 & 1;
}

uint64_t __84__UISplitViewControllerPanelImpl_panelController_collapseOntoPrimaryViewController___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 40) style];
    if (v3)
    {
      v4 = v3;
      v5 = *(__UILogGetCategoryCachedImpl("UISplitViewController", &kSplitViewControllerInterfaceOrientationKey_block_invoke___s_category) + 8);
      result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v6 = v5;
        v7 = NSStringFromSelector(sel_splitViewController_collapseSecondaryViewController_ontoPrimaryViewController_);
        v8 = _UISplitViewControllerStyleDescription(v4);
        v9 = 138543618;
        v10 = v7;
        v11 = 2114;
        v12 = v8;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Skipping delegate callback, %{public}@. Unsupported for UISplitViewController style %{public}@", &v9, 0x16u);

        result = 0;
      }
    }

    else
    {
      result = [*(a1 + 32) splitViewController:*(a1 + 48) collapseSecondaryViewController:*(a1 + 56) ontoPrimaryViewController:*(a1 + 64)];
    }

    *(*(*(a1 + 72) + 8) + 24) = result;
  }

  return result;
}

- (void)panelController:(id)a3 collapsePrimaryViewController:(id)a4 withFallbackSecondaryViewController:(id)a5 transitionCoordinator:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __138__UISplitViewControllerPanelImpl_panelController_collapsePrimaryViewController_withFallbackSecondaryViewController_transitionCoordinator___block_invoke;
  v15[3] = &unk_1E70F6B40;
  v16 = v9;
  v17 = v10;
  v18 = self;
  v19 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  [UIView performWithoutAnimation:v15];
}

void __138__UISplitViewControllerPanelImpl_panelController_collapsePrimaryViewController_withFallbackSecondaryViewController_transitionCoordinator___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __138__UISplitViewControllerPanelImpl_panelController_collapsePrimaryViewController_withFallbackSecondaryViewController_transitionCoordinator___block_invoke_2;
  aBlock[3] = &unk_1E70F6B40;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = *(a1 + 48);
  v4 = *(&v7 + 1);
  *&v5 = v2;
  *(&v5 + 1) = v3;
  v9 = v5;
  v10 = v7;
  v6 = _Block_copy(aBlock);
  if ([*(a1 + 32) _isNavigationController])
  {
    [*(a1 + 32) _executeSplitViewControllerActions:v6];
  }

  else
  {
    v6[2](v6);
  }
}

void __138__UISplitViewControllerPanelImpl_panelController_collapsePrimaryViewController_withFallbackSecondaryViewController_transitionCoordinator___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  WeakRetained = objc_loadWeakRetained((a1[6] + 16));
  [v2 _collapseSecondaryViewController:v3 forSplitViewController:WeakRetained withTransitionCoordinator:a1[7]];
}

- (BOOL)panelController:(id)a3 collapsePrimaryViewController:(id)a4 withFallbackSecondaryViewController:(id)a5 onTopOfSupplementaryViewController:(id)a6 transitionCoordinator:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(UISplitViewControllerPanelImpl *)self style];
  if (v17)
  {
    if (v15 && v13 != v15)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __173__UISplitViewControllerPanelImpl_panelController_collapsePrimaryViewController_withFallbackSecondaryViewController_onTopOfSupplementaryViewController_transitionCoordinator___block_invoke;
      v19[3] = &unk_1E70F6228;
      v20 = v13;
      v21 = v15;
      v22 = self;
      [v20 _executeSplitViewControllerActions:v19];
    }

    if (v14)
    {
      [(UISplitViewControllerPanelImpl *)self panelController:v12 collapsePrimaryViewController:v13 withFallbackSecondaryViewController:v14 transitionCoordinator:v16];
    }
  }

  return v17 != 0;
}

void __173__UISplitViewControllerPanelImpl_panelController_collapsePrimaryViewController_withFallbackSecondaryViewController_onTopOfSupplementaryViewController_transitionCoordinator___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  WeakRetained = objc_loadWeakRetained((a1[6] + 16));
  [v1 _collapseViewController:v2 forSplitViewController:WeakRetained];
}

- (id)panelController:(id)a3 separateSecondaryViewControllerFromPrimaryViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (![(UISplitViewControllerPanelImpl *)self style])
  {
    v16 = [(UISplitViewControllerPanelImpl *)self panelController:v7 unspecifiedStyleSeparateSecondaryViewControllerFromPrimaryViewController:v8];
    goto LABEL_29;
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v10 = [WeakRetained delegate];

  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v52 = __107__UISplitViewControllerPanelImpl_panelController_separateSecondaryViewControllerFromPrimaryViewController___block_invoke;
  v53 = &unk_1E7103D08;
  v11 = v10;
  v54 = v11;
  v55 = self;
  __107__UISplitViewControllerPanelImpl_panelController_separateSecondaryViewControllerFromPrimaryViewController___block_invoke(v51, sel__splitViewControllerIsPrimaryVisible_);
  v52(v51, sel_splitViewController_separateSecondaryViewControllerFromPrimaryViewController_);
  v12 = objc_opt_respondsToSelector();
  if (v12 & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v13 = [(UISplitViewControllerPanelImpl *)self _concreteDisplayModeForCurrentEnvironment];
    v50 = v13;
    *&self->_flags |= 0x50000000uLL;
    v14 = objc_loadWeakRetained(&self->_svc);
    if (v12)
    {
      v15 = [v11 splitViewController:v14 displayModeForExpandingToProposedDisplayMode:v13];
      v50 = v15;
    }

    else
    {
      [v11 splitViewController:v14 willExpandToProposedDisplayMode:&v50];

      v15 = v50;
    }

    *&self->_flags &= 0xFFFFFFFFAFFFFFFFLL;
    if (v15 != v13)
    {
      if (v15)
      {
        [(UISplitViewControllerPanelImpl *)self setUserGeneratedDisplayMode:v15];
        v17 = [(UISplitViewControllerPanelImpl *)self presentsWithGesture];
        flags = self->_flags;
        v19 = ~(*&flags >> 14) & 0x40;
        if (v17)
        {
          v19 = 0;
        }

        self->_flags = (v19 | *&flags & 0xFFFFFFFFFFFFFFBFLL);
      }
    }
  }

  v20 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
  v21 = [v20 navigationControllerWrapper];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v27 = [v20 navigationController];
    if (v27)
    {
      v24 = v27;
      v25 = [v24 _outermostNavigationController];
      v26 = v24;
      goto LABEL_18;
    }

    v23 = [v20 viewController];
  }

  v24 = v23;
  v25 = [v23 navigationController];
  v26 = 0;
LABEL_18:
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __107__UISplitViewControllerPanelImpl_panelController_separateSecondaryViewControllerFromPrimaryViewController___block_invoke_453;
  v46[3] = &unk_1E70F6228;
  v28 = v25;
  v47 = v28;
  v29 = v24;
  v48 = v29;
  v49 = self;
  [v28 _executeSplitViewControllerActions:v46];
  if (v29 && [(UISplitViewControllerPanelImpl *)&self->super.isa _columnForViewController:v29 forceExpandedResult:1]!= 2)
  {
    v45 = [MEMORY[0x1E696AAA8] currentHandler];
    v43 = objc_loadWeakRetained(&self->_svc);
    v38 = [(UISplitViewControllerPanelImpl *)&self->super.isa _columnForViewController:v29 forceExpandedResult:1];
    _UISplitViewControllerColumnDescription(v38);
    v41 = v26;
    v40 = v39 = v7;
    [v45 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:6770 description:{@"Unexpected view controller change when expanding %@. Found %@ in %@ column instead of in secondary column. _perColumnViewControllers are %@", v43, v29, v40, self->_perColumnViewControllers}];

    v7 = v39;
    v26 = v41;
  }

  if (![v22 _isTabBarController])
  {
    goto LABEL_27;
  }

  v42 = v8;
  v44 = v11;
  v30 = v7;
  v31 = [v22 selectedViewController];
  v32 = [v20 navigationController];
  v33 = v32;
  if (v31 == v32)
  {

    goto LABEL_26;
  }

  [v20 viewController];
  v35 = v34 = v26;

  v36 = v31 == v35;
  v26 = v34;
  if (v36)
  {
LABEL_26:

    v7 = v30;
    v8 = v42;
    v11 = v44;
LABEL_27:
    [(UISplitViewControllerPanelImpl *)self updatePanelControllerForViewControllerChangeInColumn:2];
    goto LABEL_28;
  }

  [(UISplitViewControllerPanelImpl *)self setViewController:v22 forColumn:2];

  v7 = v30;
  v8 = v42;
  v11 = v44;
LABEL_28:
  v16 = v29;

LABEL_29:

  return v16;
}

void __107__UISplitViewControllerPanelImpl_panelController_separateSecondaryViewControllerFromPrimaryViewController___block_invoke(uint64_t a1, const char *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 40) style];
    if (v4)
    {
      v5 = v4;
      v6 = *(__UILogGetCategoryCachedImpl("UISplitViewController", &kSplitViewControllerInterfaceOrientationKey_block_invoke_2___s_category) + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = v6;
        v8 = NSStringFromSelector(a2);
        v9 = _UISplitViewControllerStyleDescription(v5);
        v10 = 138543618;
        v11 = v8;
        v12 = 2114;
        v13 = v9;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Skipping delegate callback, %{public}@. Unsupported for UISplitViewController style %{public}@", &v10, 0x16u);
      }
    }
  }
}

void __107__UISplitViewControllerPanelImpl_panelController_separateSecondaryViewControllerFromPrimaryViewController___block_invoke_453(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  WeakRetained = objc_loadWeakRetained((a1[6] + 16));
  v3 = [v1 _separateViewControllersAfterAndIncludingViewController:v2 forSplitViewController:WeakRetained];
}

- (id)panelController:(id)a3 separateSupplementaryViewControllerFromPrimaryViewController:(id)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([(UISplitViewControllerPanelImpl *)self style]== 2 && ([(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
    v11 = [v10 viewController];

    v12 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
    v13 = [v12 navigationController];

    if (v11 != v8 && v13 != v8)
    {
      v14 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30238];
      v15 = [v14 viewController];

      if (v15 != v8)
      {
        if (os_variant_has_internal_diagnostics())
        {
          v39 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
          {
            v40 = NSStringFromSelector(a2);
            *buf = 138413058;
            *&buf[4] = v8;
            *&buf[12] = 2112;
            *&buf[14] = v40;
            *&buf[22] = 2112;
            v56 = v11;
            LOWORD(v57) = 2112;
            *(&v57 + 2) = v13;
            _os_log_fault_impl(&dword_188A29000, v39, OS_LOG_TYPE_FAULT, "Ignoring unexpected UIViewController, %@, passed to %@. Expected %@ or %@. This is an internal UISplitViewController problem.", buf, 0x2Au);
          }
        }

        else
        {
          v16 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49D930) + 8);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = v16;
            v18 = NSStringFromSelector(a2);
            *buf = 138413058;
            *&buf[4] = v8;
            *&buf[12] = 2112;
            *&buf[14] = v18;
            *&buf[22] = 2112;
            v56 = v11;
            LOWORD(v57) = 2112;
            *(&v57 + 2) = v13;
            _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "Ignoring unexpected UIViewController, %@, passed to %@. Expected %@ or %@. This is an internal UISplitViewController problem.", buf, 0x2Au);
          }
        }
      }
    }

    if (!v13)
    {
      v31 = [MEMORY[0x1E696AAA8] currentHandler];
      WeakRetained = objc_loadWeakRetained(&self->_svc);
      [v31 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:6794 description:{@"Lost track of navigation controller for %@ column when expanding %@", @"Primary", WeakRetained}];
    }

    v19 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
    v20 = [v19 viewController];

    v21 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
    v22 = [v21 navigationController];

    if (!v22)
    {
      v33 = [MEMORY[0x1E696AAA8] currentHandler];
      v34 = objc_loadWeakRetained(&self->_svc);
      [v33 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:6797 description:{@"Lost track of navigation controller for %@ column when expanding %@", @"Supplementary", v34}];
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v56 = __Block_byref_object_copy__58;
    *&v57 = __Block_byref_object_dispose__58;
    *(&v57 + 1) = 0;
    v43 = MEMORY[0x1E69E9820];
    v44 = 3221225472;
    v45 = __111__UISplitViewControllerPanelImpl_panelController_separateSupplementaryViewControllerFromPrimaryViewController___block_invoke;
    v46 = &unk_1E7103C20;
    v50 = buf;
    v23 = v13;
    v47 = v23;
    v24 = v22;
    v48 = v24;
    v49 = self;
    [v23 _executeSplitViewControllerActions:&v43];
    v25 = *(*&buf[8] + 40);
    if (!v25)
    {
      v26 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
      v27 = [v26 navigationController];
      v28 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v27;

      v25 = *(*&buf[8] + 40);
    }

    if ([(UISplitViewControllerPanelImpl *)self _columnForViewController:v25]!= 1)
    {
      v35 = [MEMORY[0x1E696AAA8] currentHandler];
      v36 = objc_loadWeakRetained(&self->_svc);
      [v35 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:6808 description:{@"Unexpected view controller change in %@ column for expanding %@", @"Supplementary", v36, v43, v44, v45, v46, v47}];
    }

    [(UISplitViewControllerPanelImpl *)self updatePanelControllerForViewControllerChangeInColumn:1];
    if (*(*&buf[8] + 40) != v24)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v41 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
        {
          v42 = *(*&buf[8] + 40);
          *v51 = 138412546;
          v52 = v24;
          v53 = 2112;
          v54 = v42;
          _os_log_fault_impl(&dword_188A29000, v41, OS_LOG_TYPE_FAULT, "Unexpected vc popped when separating supplementary view controller. expected %@; popped %@", v51, 0x16u);
        }
      }

      else
      {
        v37 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49D938) + 8);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = *(*&buf[8] + 40);
          *v51 = 138412546;
          v52 = v24;
          v53 = 2112;
          v54 = v38;
          _os_log_impl(&dword_188A29000, v37, OS_LOG_TYPE_ERROR, "Unexpected vc popped when separating supplementary view controller. expected %@; popped %@", v51, 0x16u);
        }
      }
    }

    v29 = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

void __111__UISplitViewControllerPanelImpl_panelController_separateSupplementaryViewControllerFromPrimaryViewController___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  WeakRetained = objc_loadWeakRetained((a1[6] + 16));
  v4 = [v2 _separateViewControllersAfterAndIncludingViewController:v3 forSplitViewController:WeakRetained];
  v5 = [v4 firstObject];
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)panelController:(id)a3 unspecifiedStyleSeparateSecondaryViewControllerFromPrimaryViewController:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a4;
  [(UISplitViewControllerPanelImpl *)self _stopTransitionsInViewController:v5];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v7 = [WeakRetained delegate];
  *&self->_transitioningFlags = *&self->_transitioningFlags & 0xFE | objc_opt_respondsToSelector() & 1;

  if (*&self->_transitioningFlags)
  {
    v8 = objc_loadWeakRetained(&self->_svc);
    v9 = [v8 delegate];
    v10 = objc_loadWeakRetained(&self->_svc);
    if ([v9 _splitViewControllerIsPrimaryVisible:v10])
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    *&self->_transitioningFlags = *&self->_transitioningFlags & 0xFD | v11;
  }

  else
  {
    *&self->_transitioningFlags &= 0xFCu;
  }

  v12 = objc_loadWeakRetained(&self->_svc);
  v13 = [v12 delegate];
  if (self->_suspendedState == 2 && (transitioningFlags = self->_transitioningFlags, (*&transitioningFlags & 1) != 0))
  {
    v15 = (*&transitioningFlags >> 1) & 1;
    v16 = 1;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v18 = 0;
LABEL_16:
    v21 = objc_loadWeakRetained(&self->_svc);
    v20 = [v5 separateSecondaryViewControllerForSplitViewController:v21];

    goto LABEL_17;
  }

  v17 = objc_loadWeakRetained(&self->_delegate);
  v18 = [v17 splitViewController:v12 separateSecondaryViewControllerFromPrimaryViewController:v5];

  if (!v18)
  {
    goto LABEL_16;
  }

  v19 = [v18 parentViewController];

  v20 = v18;
  if (v19 == v5)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (self->_suspendedState == 2)
  {
    v22 = v20 == 0;
    if (v16)
    {
      v22 = v15;
    }

    v23 = !v22;
    v24 = 3;
    if (v23)
    {
      v24 = 4;
    }

    self->_suspendedState = v24;
  }

  if (v20 || (-[UISplitViewControllerPanelImpl panelController](self, "panelController"), v25 = objc_claimAutoreleasedReturnValue(), [v25 preservedDetailController], v20 = objc_claimAutoreleasedReturnValue(), v25, v20) || (-[UISplitViewControllerPanelImpl panelController](self, "panelController"), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "mainViewController"), v20 = objc_claimAutoreleasedReturnValue(), v26, v20))
  {
    v34 = v5;
    v35 = v20;
    v27 = MEMORY[0x1E695DEC8];
    v28 = &v34;
    v29 = 2;
  }

  else
  {
    v33 = v5;
    v27 = MEMORY[0x1E695DEC8];
    v28 = &v33;
    v29 = 1;
  }

  v30 = [v27 arrayWithObjects:v28 count:{v29, v33, v34, v35, v36}];
  v31 = objc_loadWeakRetained(&self->_svc);
  [v31 setViewControllers:v30];

  return v20;
}

- (void)panelControllerDidCollapse:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v6 = [WeakRetained delegate];

  if (objc_opt_respondsToSelector())
  {
    v5 = objc_loadWeakRetained(&self->_svc);
    [v6 splitViewControllerDidCollapse:v5];
  }
}

- (void)panelControllerDidExpand:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v11 = [WeakRetained delegate];

  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    v5 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
    v6 = [v5 navigationController];

    v7 = [v6 topViewController];
    v8 = [v7 navigationItem];
    v9 = [v8 _searchControllerIfAllowed];

    [v9 _updateHasPendingSuggestionMenuRefreshFlagForReason:3];
    *&self->_flags |= 0x100000000uLL;
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = objc_loadWeakRetained(&self->_svc);
    [v11 splitViewControllerDidExpand:v10];
  }
}

- (CGSize)_predictedDetailSizeForPredictedEndState:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v6 = [WeakRetained view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  v11 = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
  if (v11)
  {
    if ([v4 leadingOverlapsMain])
    {
      goto LABEL_10;
    }

    [v4 leadingWidth];
  }

  else
  {
    if ([v4 trailingOverlapsMain])
    {
      goto LABEL_10;
    }

    [v4 trailingWidth];
  }

  v13 = v12;
  v14 = [(UISplitViewControllerPanelImpl *)self panelController];
  v15 = [v14 configuration];

  v16 = objc_loadWeakRetained(&self->_svc);
  v17 = [v16 view];
  v18 = [v17 window];
  v19 = [v18 screen];
  [v19 scale];
  v21 = v20;

  if (v11)
  {
    [v15 leadingBorderWidthForScale:v21];
  }

  else
  {
    [v15 trailingBorderWidthForScale:v21];
  }

  v8 = v8 - (v13 + v22);

LABEL_10:
  v23 = v8;
  v24 = v10;
  result.height = v24;
  result.width = v23;
  return result;
}

- (id)panelController:(id)a3 willBeginAnimatedTransitionToStateRequest:(id)a4 predictedEndState:(id)a5 predictedDuration:(double)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v12 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v13 = [(UISplitViewControllerPanelImpl *)self style];
    if (v13)
    {
      v14 = v13;
      v15 = *(__UILogGetCategoryCachedImpl("UISplitViewController", &qword_1ED49D940) + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = v15;
        v17 = NSStringFromSelector(sel__splitViewController_willBeginAnimatedTransitionToStateRequest_);
        v18 = _UISplitViewControllerStyleDescription(v14);
        v33 = 138543618;
        v34 = v17;
        v35 = 2114;
        v36 = v18;
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Skipping delegate callback, %{public}@. Unsupported for UISplitViewController style %{public}@", &v33, 0x16u);
      }
    }

    else
    {
      [v12 _splitViewController:WeakRetained willBeginAnimatedTransitionToStateRequest:v9];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v19 = [(UISplitViewControllerPanelImpl *)self style];
    if (v19)
    {
      v20 = v19;
      v21 = *(__UILogGetCategoryCachedImpl("UISplitViewController", &qword_1ED49D948) + 8);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = v21;
        v23 = NSStringFromSelector(sel__splitViewController_willBeginAnimatedTransitionToStateRequest_predictedDetailSize_predictedDuration_);
        v24 = _UISplitViewControllerStyleDescription(v20);
        v33 = 138543618;
        v34 = v23;
        v35 = 2114;
        v36 = v24;
        _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "Skipping delegate callback, %{public}@. Unsupported for UISplitViewController style %{public}@", &v33, 0x16u);
      }
    }

    else
    {
      [(UISplitViewControllerPanelImpl *)self _predictedDetailSizeForPredictedEndState:v10];
      v26 = v25;
      v28 = v27;
      v29 = objc_loadWeakRetained(&self->_svc);
      [v12 _splitViewController:v29 willBeginAnimatedTransitionToStateRequest:v9 predictedDetailSize:v26 predictedDuration:{v28, a6}];
    }
  }

  self->_animatingToDisplayMode = [(UISplitViewControllerPanelImpl *)self _displayModeForState:v10];
  if (objc_opt_respondsToSelector())
  {
    v30 = objc_loadWeakRetained(&self->_svc);
    v31 = [v12 _splitViewController:v30 animationControllerForTransitionFromDisplayMode:-[UISplitViewControllerPanelImpl displayMode](self toDisplayMode:{"displayMode"), -[UISplitViewControllerPanelImpl _displayModeForState:](self, "_displayModeForState:", v10)}];
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (void)panelController:(id)a3 animateTransitionToStateRequest:(id)a4 predictedEndState:(id)a5 predictedDuration:(double)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v11 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = [(UISplitViewControllerPanelImpl *)self style];
    if (v12)
    {
      v13 = v12;
      v14 = *(__UILogGetCategoryCachedImpl("UISplitViewController", &panelController_animateTransitionToStateRequest_predictedEndState_predictedDuration____s_category) + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        v16 = NSStringFromSelector(sel__splitViewController_animateTransitionToStateRequest_detailSize_duration_);
        v17 = _UISplitViewControllerStyleDescription(v13);
        v20 = 138543618;
        v21 = v16;
        v22 = 2114;
        v23 = v17;
        _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Skipping delegate callback, %{public}@. Unsupported for UISplitViewController style %{public}@", &v20, 0x16u);
      }
    }

    else
    {
      [(UISplitViewControllerPanelImpl *)self _predictedDetailSizeForPredictedEndState:v9];
      [v11 _splitViewController:WeakRetained animateTransitionToStateRequest:v8 detailSize:? duration:?];
    }
  }

  v18 = objc_loadWeakRetained(&self->_svc);
  [v18 setNeedsStatusBarAppearanceUpdate];

  v19 = objc_loadWeakRetained(&self->_svc);
  [v19 setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
}

- (void)panelController:(id)a3 didEndAnimatedTransitionToStateRequest:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v7 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [(UISplitViewControllerPanelImpl *)self style];
    if (v8)
    {
      v9 = v8;
      v10 = *(__UILogGetCategoryCachedImpl("UISplitViewController", &panelController_didEndAnimatedTransitionToStateRequest____s_category) + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
        v12 = NSStringFromSelector(sel__splitViewController_didEndAnimatedTransitionToStateRequest_);
        v13 = _UISplitViewControllerStyleDescription(v9);
        v14 = 138543618;
        v15 = v12;
        v16 = 2114;
        v17 = v13;
        _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Skipping delegate callback, %{public}@. Unsupported for UISplitViewController style %{public}@", &v14, 0x16u);
      }
    }

    else
    {
      [v7 _splitViewController:WeakRetained didEndAnimatedTransitionToStateRequest:v5];
    }
  }

  self->_animatingToDisplayMode = 0;
}

- (void)panelController:(id)a3 willBeginAnimationToPrimarySize:(CGSize)a4 supplementarySize:(CGSize)a5 secondarySize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v8 = a5.height;
  v9 = a5.width;
  v10 = a4.height;
  v11 = a4.width;
  v14 = [(UISplitViewControllerPanelImpl *)self style];
  if (v14 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v54 = [MEMORY[0x1E696AAA8] currentHandler];
    v55 = _UISplitViewControllerStyleDescription(v14);
    [v54 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:7066 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v55}];
  }

  v15 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
  v16 = [v15 navigationControllerWrapper];
  v17 = v16;
  if (v16)
  {
    v56 = v16;
  }

  else
  {
    v18 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
    v19 = [v18 navigationController];
    v20 = v19;
    if (v19)
    {
      v56 = v19;
    }

    else
    {
      v21 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
      v56 = [v21 viewController];
    }
  }

  v22 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
  v23 = [v22 navigationController];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v26 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
    v25 = [v26 viewController];
  }

  v27 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
  v28 = [v27 navigationControllerWrapper];
  v29 = v28;
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v31 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
    v32 = [v31 navigationController];
    v33 = v32;
    if (v32)
    {
      v30 = v32;
    }

    else
    {
      v34 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
      v30 = [v34 viewController];
    }
  }

  v35 = [(UISplitViewControllerPanelImpl *)self transitionCoordinator];
  v36 = v35;
  if (v35)
  {
    v37 = v35;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v37 = [WeakRetained _definiteTransitionCoordinator];
  }

  v39 = [v56 _existingView];
  [v39 bounds];
  v41 = v40;
  v43 = v42;

  if (v11 != v41 || v10 != v43)
  {
    [v56 viewWillTransitionToSize:v37 withTransitionCoordinator:{v11, v10}];
  }

  if (v14 == 2)
  {
    v44 = [v25 _existingView];
    [v44 bounds];
    v46 = v45;
    v48 = v47;

    if (v9 != v46 || v8 != v48)
    {
      [v25 viewWillTransitionToSize:v37 withTransitionCoordinator:{v9, v8}];
    }
  }

  v49 = [v30 _existingView];
  [v49 bounds];
  v51 = v50;
  v53 = v52;

  if (width != v51 || height != v53)
  {
    [v30 viewWillTransitionToSize:v37 withTransitionCoordinator:{width, height}];
  }
}

- (void)panelController:(id)a3 adjustLeadingViewController:(id)a4 forKeyboardInfo:(id)a5
{
  v7 = a4;
  v6 = a5;
  if (objc_opt_respondsToSelector())
  {
    [v7 _adjustNonOverlayScrollViewsForKeyboardInfo:v6];
  }
}

- (void)panelController:(id)a3 adjustTrailingViewController:(id)a4 forKeyboardInfo:(id)a5
{
  v7 = a4;
  v6 = a5;
  if (objc_opt_respondsToSelector())
  {
    [v7 _adjustNonOverlayScrollViewsForKeyboardInfo:v6];
  }
}

- (id)_navigationBarForSidebarButtonForColumn:(int64_t)a3
{
  perColumnViewControllers = self->_perColumnViewControllers;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:v4];
  v6 = [v5 navigationController];

  v7 = [v6 _existingNavigationBar];
  if ([v6 isNavigationBarHidden])
  {
    v8 = [v6 _targetNavigationBarForUISplitViewControllerSidebarButton];
    v9 = v8;
    if (v7 == v8)
    {
      v10 = 0;
    }

    else
    {
      v10 = v8;
    }

    v11 = v10;

    v7 = v11;
  }

  return v7;
}

- (BOOL)_wantsSideBarImageForOneOverSecondary
{
  v4 = [(UISplitViewControllerPanelImpl *)self style];
  v5 = v4;
  if ((v4 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = _UISplitViewControllerStyleDescription(v5);
    [v8 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:7110 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v9}];
  }

  else if (v4 == 2)
  {
    v6 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
    if (v6)
    {
      v7 = 0;
LABEL_12:

      return v7;
    }
  }

  if ((*(&self->_flags + 2) & 2) != 0 && (sidebarToggleButtonItem = self->_sidebarToggleButtonItem) != 0 && ![(UIBarButtonItem *)sidebarToggleButtonItem isHidden])
  {
    v12 = [(UIBarButtonItem *)self->_sidebarToggleButtonItem image];
    v13 = [(UISplitViewControllerPanelImpl *)self _sidebarToggleSymbolImage];
    v7 = [v12 isEqual:v13];
  }

  else
  {
    v7 = 0;
  }

  if (v5 == 2)
  {
    v6 = 0;
    goto LABEL_12;
  }

  return v7;
}

- (id)_navigationBarForSidebarButtonForDisplayMode:(int64_t)a3
{
  v6 = [(UISplitViewControllerPanelImpl *)self style];
  if (v6 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = _UISplitViewControllerStyleDescription(v6);
    [v20 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:7116 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v21}];
  }

  v7 = 0;
  if (a3 <= 2)
  {
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        goto LABEL_23;
      }

      if (v6 == 2)
      {
        v8 = &unk_1EFE30250;
      }

      else
      {
        v8 = &unk_1EFE30220;
      }

      v9 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:v8];
      v10 = [v9 navigationController];

      v7 = [v10 navigationBar];
      goto LABEL_17;
    }

    v13 = [(UISplitViewControllerPanelImpl *)self _navigationBarForSidebarButtonForColumn:2];
LABEL_22:
    v7 = v13;
    goto LABEL_23;
  }

  if (a3 == 3)
  {
    v14 = [(UISplitViewControllerPanelImpl *)self _wantsSideBarImageForOneOverSecondary];
    if (v6 == 2)
    {
      v15 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
      if (v15)
      {
        v10 = v15;
        v16 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
        v17 = [v16 navigationController];
        v7 = [v17 navigationBar];

LABEL_17:
        goto LABEL_23;
      }
    }

    if (v14)
    {
      navBarForToggleButton = self->_navBarForToggleButton;
    }

    else
    {
      navBarForToggleButton = 0;
    }

    v13 = navBarForToggleButton;
    goto LABEL_22;
  }

  if (a3 == 4)
  {
    v11 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
    v12 = [v11 navigationController];
    v7 = [v12 navigationBar];
  }

LABEL_23:

  return v7;
}

- (id)panelController:(id)a3 navigationBarForViewController:(id)a4
{
  v5 = a4;
  if ([(UISplitViewControllerPanelImpl *)self _alwaysHideSidebarToggleButton]|| (v6 = [(UISplitViewControllerPanelImpl *)self _columnForViewController:v5], v6 > 2))
  {
    v7 = 0;
  }

  else
  {
    v7 = [(UISplitViewControllerPanelImpl *)self _navigationBarForSidebarButtonForColumn:v6];
  }

  return v7;
}

- (BOOL)_unspecifiedStyleGestureRecognizerShouldBegin:(id)a3
{
  v5 = a3;
  v6 = [(UISplitViewControllerPanelImpl *)self style];
  if (v6)
  {
    v23 = v6;
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = _UISplitViewControllerStyleDescription(v23);
    [v24 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:7160 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v25}];
  }

  v7 = [(UISplitViewControllerPanelImpl *)self _presentationGestureRecognizer];

  if (v7 == v5)
  {
    WeakRetained = [v5 view];
    if ([(UISplitViewControllerPanelImpl *)self _isPrimaryShown])
    {
      [v5 locationInView:WeakRetained];
      v11 = [WeakRetained hitTest:0 withEvent:?];
      if (!v11)
      {
        LOBYTE(v9) = 0;
LABEL_27:

        goto LABEL_28;
      }

      v12 = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
      v13 = [v12 view];
      v9 = [v11 isDescendantOfView:v13] ^ 1;
    }

    else
    {
      [v5 translationInView:WeakRetained];
      v15 = v14;
      v16 = [(UISplitViewControllerPanelImpl *)self _layoutPrimaryOnRight];
      if (v16)
      {
        v17 = 8;
      }

      else
      {
        v17 = 2;
      }

      if (v16)
      {
        v18 = v15 < 0.0;
      }

      else
      {
        v18 = v15 > 0.0;
      }

      if (!v18)
      {
        LOBYTE(v9) = 0;
        goto LABEL_28;
      }

      [v5 locationInView:WeakRetained];
      v11 = [WeakRetained hitTest:0 withEvent:?];
      v19 = [v11 _scroller];
      if (!v19)
      {
        LOBYTE(v9) = 1;
        goto LABEL_27;
      }

      v12 = v19;
      while (([v12 isDecelerating] & 1) == 0 && (objc_msgSend(v12, "_currentlyAbuttedContentEdges") & v17) != 0)
      {
        v20 = [v12 superview];
        v21 = [v20 _scroller];

        v12 = v21;
        if (!v21)
        {
          LOBYTE(v9) = 1;
          goto LABEL_26;
        }
      }

      LOBYTE(v9) = 0;
    }

LABEL_26:

    goto LABEL_27;
  }

  v8 = [(UISplitViewControllerPanelImpl *)self _menuGestureRecognizer];

  if (v8 == v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    LOBYTE(v9) = [WeakRetained displayMode] == 1;
LABEL_28:

    goto LABEL_29;
  }

  LOBYTE(v9) = 0;
LABEL_29:

  return v9;
}

- (BOOL)_configurationPermitsFluidOpenGestureWithPrimaryShown:(BOOL)a3 supplementaryShown:(BOOL)a4
{
  v4 = a4;
  v8 = [(UISplitViewControllerPanelImpl *)self style];
  if (v8 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = _UISplitViewControllerStyleDescription(v8);
    [v13 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:7202 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v14}];

    if (a3)
    {
      goto LABEL_4;
    }
  }

  else if (a3)
  {
    goto LABEL_4;
  }

  if (!v4)
  {
    return 1;
  }

LABEL_4:
  if (v8 == 2)
  {
    v9 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];

    if (v9)
    {
      return 1;
    }
  }

  if ([(UISplitViewControllerPanelImpl *)self splitBehavior]== 2)
  {
    return 1;
  }

  if ((*(&self->_flags + 2) & 2) == 0)
  {
    return 0;
  }

  v11 = [(UISplitViewControllerPanelImpl *)self userGeneratedDisplayMode];
  return v11 == 3 || v11 == 5;
}

- (BOOL)_configurationPermitsFluidCloseGestureWithPrimaryShown:(BOOL)a3 supplementaryShown:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v8 = [(UISplitViewControllerPanelImpl *)self style];
  if (v8 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = _UISplitViewControllerStyleDescription(v8);
    [v10 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:7215 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v11}];

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  else if (!v5)
  {
    goto LABEL_6;
  }

  if (v4)
  {
    return 1;
  }

  if (!v5 && !v4)
  {
    return 0;
  }

LABEL_6:
  if (v8 == 2)
  {
    [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
  }

  if ([(UISplitViewControllerPanelImpl *)self splitBehavior]== 2)
  {
    return 1;
  }

  if ((*(&self->_flags + 2) & 2) == 0)
  {
    return 0;
  }

  v12 = [(UISplitViewControllerPanelImpl *)self userGeneratedDisplayMode];
  return v12 == 3 || v12 == 5;
}

- (int64_t)_columnForView:(id)a3 getIsContent:(BOOL *)a4
{
  v6 = [a3 _viewControllerForAncestor];
  if (v6)
  {
    v7 = [(UISplitViewControllerPanelImpl *)self _columnForViewController:v6];
    v8 = v7;
    if (a4 && v7 != 999)
    {
      perColumnViewControllers = self->_perColumnViewControllers;
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
      v11 = [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:v10];
      v12 = [v11 navigationController];
      if (v6 == v12)
      {
        v17 = 0;
      }

      else
      {
        v13 = self->_perColumnViewControllers;
        v14 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
        v15 = [(NSMutableDictionary *)v13 objectForKeyedSubscript:v14];
        v16 = [v15 navigationControllerWrapper];
        v17 = v6 != v16;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v8 = 999;
  }

  if (a4)
  {
    v17 = 0;
LABEL_11:
    *a4 = v17;
  }

  return v8;
}

- (BOOL)_fluidGestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  if (![(UISplitViewControllerPanelImpl *)self _isCollapsed])
  {
    v5 = [(UISplitViewControllerPanelImpl *)self _fluidOpenSidebarPresentationGestureRecognizer];

    if (v5 == v4)
    {
      LOBYTE(v7) = 1;
      goto LABEL_15;
    }

    v6 = [(UISplitViewControllerPanelImpl *)self _fluidSidebarPresentationGestureRecognizer];

    if (v6 == v4)
    {
      v8 = v4;
      v9 = [v8 view];
      [v8 translationInView:v9];
      if (v10 == 0.0)
      {
        goto LABEL_13;
      }

      v12 = v10;
      if (fabs(v10) <= fabs(v11))
      {
        goto LABEL_13;
      }

      v13 = [(UISplitViewControllerPanelImpl *)self _effectivePrimaryRectEdge];
      if (v13 == 2)
      {
        v14 = v12 < 0.0;
      }

      else
      {
        v14 = v12 > 0.0;
      }

      v15 = [(UISplitViewControllerPanelImpl *)self _isPrimaryShown];
      v16 = [(UISplitViewControllerPanelImpl *)self panelController];
      v17 = [v16 currentState];
      v7 = [v17 isSupplementaryVisible];

      if (v14)
      {
        if (![(UISplitViewControllerPanelImpl *)self _configurationPermitsFluidCloseGestureWithPrimaryShown:v15 supplementaryShown:v7])
        {
LABEL_13:
          LOBYTE(v7) = 0;
LABEL_14:

          goto LABEL_15;
        }
      }

      else if (![(UISplitViewControllerPanelImpl *)self _configurationPermitsFluidOpenGestureWithPrimaryShown:v15 supplementaryShown:v7])
      {
        goto LABEL_13;
      }

      v19 = [v8 _activeEventOfType:10];

      if (v19)
      {
        LOBYTE(v7) = 1;
      }

      else
      {
        [v8 locationInView:v9];
        v20 = [v9 hitTest:0 withEvent:?];
        v37 = 0;
        v21 = [(UISplitViewControllerPanelImpl *)self _columnForView:v20 getIsContent:&v37];
        if (v37 != 1 || (*(&self->_flags + 5) & 4) != 0 && (v22 = v21, -[UISplitViewControllerPanelImpl _columnStyleDelegate](self, "_columnStyleDelegate"), v30 = v20, v23 = objc_claimAutoreleasedReturnValue(), WeakRetained = objc_loadWeakRetained(&self->_svc), LODWORD(v22) = [v23 _splitViewController:WeakRetained allowInteractivePresentationGesture:v8 inContentsOfColumn:v22], WeakRetained, v23, v20 = v30, v22))
        {
          LODWORD(v7) = ![(UISplitViewControllerPanelImpl *)self _scrollViewPreventsGestureForHitView:v20];
        }

        else
        {
          if (v13 == 2)
          {
            v25 = 8;
          }

          else
          {
            v25 = 2;
          }

          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v32 = __69__UISplitViewControllerPanelImpl__fluidGestureRecognizerShouldBegin___block_invoke;
          v33 = &unk_1E7103D30;
          v34 = self;
          v35 = v8;
          v36 = v25;
          if (v7)
          {
            LODWORD(v7) = __69__UISplitViewControllerPanelImpl__fluidGestureRecognizerShouldBegin___block_invoke(v31, 1);
          }

          if ((v7 & 1) == 0 && v15)
          {
            LODWORD(v7) = (v32)(v31, 0);
          }
        }

        if ((*(&self->_flags + 5) & 8) != 0)
        {
          v26 = [(UISplitViewControllerPanelImpl *)self _columnStyleDelegate];
          v27 = objc_loadWeakRetained(&self->_svc);
          if (v7)
          {
            v28 = 1;
          }

          else
          {
            v28 = 2;
          }

          v29 = [v26 _splitViewController:v27 overrideProposedPermission:v28 forInteractivePresentationGesture:v8 inView:v20];

          if (v29)
          {
            LOBYTE(v7) = v29 == 1;
          }
        }
      }

      goto LABEL_14;
    }
  }

  LOBYTE(v7) = 0;
LABEL_15:

  return v7;
}

BOOL __69__UISplitViewControllerPanelImpl__fluidGestureRecognizerShouldBegin___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [v5 viewController];
  v7 = [v6 view];

  [*(a1 + 40) locationInView:v7];
  v9 = v8;
  [v7 bounds];
  if (*(a1 + 48) == 2)
  {
    MinX = CGRectGetMinX(*&v10);
  }

  else
  {
    MinX = CGRectGetMaxX(*&v10);
  }

  v15 = v9 <= MinX + 22.0 && v9 >= MinX + -22.0;

  return v15;
}

- (BOOL)_allowMoveToSecondaryOnlyGetIsInForcedOverlayFromGestureOrRestrictedWidth:(BOOL *)a3
{
  flags = self->_flags;
  if ((*&flags & 0x20000) == 0 && (*&flags & 0xC0000) != 0x80000)
  {
LABEL_5:
    v10 = [(UISplitViewControllerPanelImpl *)self defaultDisplayModeForSplitBehavior:[(UISplitViewControllerPanelImpl *)self splitBehavior]];
    v7 = 0;
    result = v10 == 1;
LABEL_6:
    if (!a3)
    {
      return result;
    }

    goto LABEL_7;
  }

  v6 = [(UISplitViewControllerPanelImpl *)self userGeneratedDisplayMode];
  v7 = 1;
  if (v6 != 3)
  {
    v8 = v6;
    result = 1;
    if (v8 == 5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  result = 1;
  if (!a3)
  {
    return result;
  }

LABEL_7:
  *a3 = v7;
  return result;
}

- (BOOL)_scrollViewPreventsGestureForHitView:(id)a3
{
  v4 = [a3 _scroller];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  while (([v5 isDecelerating] & 1) == 0)
  {
    v6 = [v5 _currentlyAbuttedContentEdges];
    v7 = [(UISplitViewControllerPanelImpl *)self _layoutPrimaryOnRight]? 8 : 2;
    if ((v7 & v6) == 0)
    {
      break;
    }

    v8 = [v5 superview];
    v9 = [v8 _scroller];

    v5 = v9;
    if (!v9)
    {
      v10 = 0;
      goto LABEL_11;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  if (![(UISplitViewControllerPanelImpl *)self style])
  {
    v7 = [(UISplitViewControllerPanelImpl *)self _unspecifiedStyleGestureRecognizerShouldBegin:v4];
    goto LABEL_7;
  }

  v5 = [(UISplitViewControllerPanelImpl *)self _menuGestureRecognizer];

  if (v5 == v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    LOBYTE(v8) = [WeakRetained displayMode] == 1;
    goto LABEL_9;
  }

  v6 = [(UISplitViewControllerPanelImpl *)self _sidebarArrowButtonRecognizer];

  if (v6 == v4)
  {
    LOBYTE(v8) = 1;
    goto LABEL_13;
  }

  if (![(UISplitViewControllerPanelImpl *)self _shouldUseFluidSidebarGestures])
  {
    v10 = [(UISplitViewControllerPanelImpl *)self _presentationGestureRecognizer];

    if (v10 != v4)
    {
      LOBYTE(v8) = 0;
      goto LABEL_13;
    }

    WeakRetained = [v4 view];
    [v4 translationInView:WeakRetained];
    if (v12 == 0.0)
    {
      goto LABEL_25;
    }

    v14 = v12;
    if (fabs(v12) <= fabs(v13))
    {
      goto LABEL_25;
    }

    if ([(UISplitViewControllerPanelImpl *)self _layoutPrimaryOnRight])
    {
      v15 = v14 >= 0.0;
    }

    else
    {
      v15 = v14 <= 0.0;
    }

    v16 = [(UISplitViewControllerPanelImpl *)self _isPrimaryShown];
    v8 = [(UISplitViewControllerPanelImpl *)self panelController];
    v17 = [v8 currentState];
    v18 = [v17 isSupplementaryVisible];

    LOBYTE(v8) = 0;
    if (!v15 && !v16)
    {
      [v4 locationInView:WeakRetained];
      v19 = [WeakRetained hitTest:0 withEvent:?];
      LODWORD(v8) = ![(UISplitViewControllerPanelImpl *)self _scrollViewPreventsGestureForHitView:v19];
    }

    if ((v15 & (v16 | v18)) != 1)
    {
      goto LABEL_9;
    }

    if ([(UISplitViewControllerPanelImpl *)self _allowMoveToSecondaryOnlyGetIsInForcedOverlayFromGestureOrRestrictedWidth:0]|| (v16 & v18) != 0)
    {
      if (v18)
      {
        v20 = [(UISplitViewControllerPanelImpl *)self panelController];
        v21 = [v20 supplementaryViewController];
        v22 = [v21 view];
      }

      else
      {
        v20 = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
        v22 = [v20 view];
      }

      if (v22)
      {
        [v4 locationInView:WeakRetained];
        v23 = [WeakRetained hitTest:0 withEvent:?];
        v24 = v23;
        if (v23)
        {
          LODWORD(v8) = [v23 isDescendantOfView:v22] ^ 1;
        }

        else
        {
          LOBYTE(v8) = 0;
        }
      }

      else
      {
        LOBYTE(v8) = 1;
      }
    }

    else
    {
LABEL_25:
      LOBYTE(v8) = 0;
    }

LABEL_9:

    goto LABEL_13;
  }

  v7 = [(UISplitViewControllerPanelImpl *)self _fluidGestureRecognizerShouldBegin:v4];
LABEL_7:
  LOBYTE(v8) = v7;
LABEL_13:

  return v8;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([(UISplitViewControllerPanelImpl *)self _shouldUseFluidSidebarGestures])
  {
    v8 = [(UISplitViewControllerPanelImpl *)self _fluidOpenSidebarPresentationGestureRecognizer];

    if (v8 == v7)
    {
    }

    else
    {
      v9 = [(UISplitViewControllerPanelImpl *)self _fluidSidebarPresentationGestureRecognizer];

      if (!v9)
      {
        goto LABEL_6;
      }
    }

LABEL_8:
    v11 = [v6 _isPointerTouch] ^ 1;
    goto LABEL_9;
  }

  v10 = [(UISplitViewControllerPanelImpl *)self _presentationGestureRecognizer];

  if (v10 == v7)
  {
    goto LABEL_8;
  }

LABEL_6:
  LOBYTE(v11) = 1;
LABEL_9:

  return v11;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UISplitViewControllerPanelImpl *)self _shouldUseFluidSidebarGestures])
  {
    v8 = [(UISplitViewControllerPanelImpl *)self _fluidSidebarPresentationGestureRecognizer];
    v9 = [(UISplitViewControllerPanelImpl *)self _fluidOpenSidebarPresentationGestureRecognizer];
    v10 = v9;
    if (v8 != v6 || v9 == v7)
    {
      v11 = 0;
      if (v9 != v6 || v8 == v7)
      {
LABEL_24:

        goto LABEL_25;
      }
    }

    v12 = [v7 _isGestureType:8];

    if (v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = [(UISplitViewControllerPanelImpl *)self _presentationGestureRecognizer];
    if (v8 != v6)
    {
      goto LABEL_11;
    }

    v13 = [v7 _isGestureType:8];

    if (v13)
    {
LABEL_7:
      v8 = v7;
      if ([v8 _failsPastHysteresisWithoutMinTouches])
      {
        if ([v8 minimumNumberOfTouches] < 2)
        {
          v11 = 1;
LABEL_25:

          goto LABEL_26;
        }
      }

      else
      {
        v14 = v6;
        v15 = v8;
        v16 = [v14 minimumNumberOfTouches];
        v17 = [v14 maximumNumberOfTouches];
        v18 = [v14 minimumNumberOfTouches];

        v19 = v17 - v18;
        v20 = [v15 minimumNumberOfTouches];
        v21 = [v15 maximumNumberOfTouches];
        v22 = [v15 minimumNumberOfTouches];

        v31.length = v19 + 1;
        v32.length = v21 - v22 + 1;
        v31.location = v16;
        v32.location = v20;
        if (NSIntersectionRange(v31, v32).length)
        {
          v11 = 1;
          v8 = v15;
          goto LABEL_25;
        }
      }

      if ([(UISplitViewControllerPanelImpl *)self _shouldUseFluidSidebarGestures])
      {
        if ([(UISplitViewControllerPanelImpl *)self _isPrimaryShown])
        {
          v23 = 0;
        }

        else
        {
          v24 = [(UISplitViewControllerPanelImpl *)self panelController];
          v25 = [v24 currentState];
          if ([v25 isSupplementaryVisible])
          {
            v23 = 1;
          }

          else
          {
            v23 = 2;
          }
        }

        perColumnViewControllers = self->_perColumnViewControllers;
        v10 = [MEMORY[0x1E696AD98] numberWithInteger:v23];
        v27 = [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:v10];
        v28 = [v27 navigationController];
        v29 = [v28 interactivePopGestureRecognizer];
        v11 = v29 == v8;

        goto LABEL_24;
      }

LABEL_11:
      v11 = 0;
      goto LABEL_25;
    }
  }

  v11 = 0;
LABEL_26:

  return v11;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 name];
  v9 = [v8 isEqualToString:@"com.apple.UIKit.UIWindowDraggingPan"];

  if ([(UISplitViewControllerPanelImpl *)self _shouldUseFluidSidebarGestures])
  {
    v10 = [(UISplitViewControllerPanelImpl *)self _fluidSidebarPresentationGestureRecognizer];
    v11 = [(UISplitViewControllerPanelImpl *)self _fluidOpenSidebarPresentationGestureRecognizer];
    v12 = v11;
    if (v10 != v6 && v11 != v6)
    {

LABEL_6:
      v14 = 0;
      goto LABEL_7;
    }

    v16 = [v7 _isGestureType:10];
    if ((v16 & 1) == 0 && v12 != v7 && v10 != v7)
    {
      v17 = [v7 _isGestureType:8];
      v18 = v17;
      if (v10 == v6)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0;
      }

      v14 = v19 & v9;

      if ((v14 & 1) != 0 || !v18)
      {
        goto LABEL_7;
      }

LABEL_20:
      v21 = v7;
      v22 = [v6 _activeEventOfType:10];

      if (v22)
      {
        if (([v21 allowedScrollTypesMask] & 2) != 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && ([v21 view], v23 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v23, (isKindOfClass))
          {
            v25 = [v21 view];
            v14 = [v25 _canScrollX];
          }

          else
          {
            v14 = 1;
          }

          goto LABEL_33;
        }
      }

      else if ([v21 _failsPastHysteresisWithoutMinTouches])
      {
        v14 = [v21 minimumNumberOfTouches] > 1;
LABEL_33:

        goto LABEL_7;
      }

      v14 = 0;
      goto LABEL_33;
    }

    if ((v16 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v13 = [(UISplitViewControllerPanelImpl *)self _presentationGestureRecognizer];

    if (v13 != v6)
    {
      goto LABEL_6;
    }

    if (([v7 _isGestureType:10] & 1) == 0)
    {
      v20 = [v7 _isGestureType:8];
      v14 = v20 & v9;
      if ((v20 & v9 & 1) != 0 || !v20)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }
  }

  v26 = [v6 view];
  v27 = [v7 view];
  [v26 convertPoint:v27 toView:{10.0, 10.0}];
  v29 = v28;

  v30 = [v6 view];
  v31 = [v7 view];
  [v30 convertPoint:v31 toView:{20.0, 10.0}];
  v33 = v32;

  v34 = [v7 direction];
  v35 = v29 < v33;
  if (v29 > v33)
  {
    v35 = 1;
  }

  v14 = v34 & v35;
LABEL_7:

  return v14;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = a3;
  v6 = [(UISplitViewControllerPanelImpl *)self _sidebarArrowButtonRecognizer];

  return v6 == v5;
}

- (void)sendColumnShowHideNotificationsForNewState:(id)a3 newDisplayMode:(int64_t)a4 oldDisplayMode:(int64_t)a5
{
  v38 = a3;
  v8 = [(UISplitViewControllerPanelImpl *)self style];
  if (!v8)
  {
    goto LABEL_43;
  }

  v9 = v8;
  v10 = [(UISplitViewControllerPanelImpl *)self panelController];
  v11 = [v10 currentState];

  v12 = [v11 _collapsedState];
  perColumnViewControllers = self->_perColumnViewControllers;
  if (!v12)
  {
    v21 = [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
    v22 = [v21 viewController];
    if ([v22 _appearState] == 2)
    {
      IsVisibleForDisplayMode = _UISplitViewControllerColumnIsVisibleForDisplayMode(v9, 0, a5);
    }

    else
    {
      IsVisibleForDisplayMode = 0;
    }

    v26 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
    v27 = [v26 viewController];
    if ([v27 _appearState] == 2)
    {
      v18 = _UISplitViewControllerColumnIsVisibleForDisplayMode(v9, 1, a5);
    }

    else
    {
      v18 = 0;
    }

    v28 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
    v29 = [v28 viewController];
    if ([v29 _appearState] == 2)
    {
      v19 = _UISplitViewControllerColumnIsVisibleForDisplayMode(v9, 2, a5);
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_19;
  }

  v14 = [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30238];
  v15 = [v14 viewController];
  v16 = [v15 _appearState];

  if (v16 != 2)
  {
    v23 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
    v24 = [v23 viewController];
    v25 = [v24 _appearState];

    if (v25 == 2)
    {
      IsVisibleForDisplayMode = 0;
      v18 = 0;
      v19 = 1;
LABEL_20:
      v20 = 1;
      goto LABEL_21;
    }

    v30 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
    v31 = [v30 viewController];
    v32 = [v31 _appearState];

    if (v32 == 2)
    {
      IsVisibleForDisplayMode = 0;
      v19 = 0;
      v18 = 1;
      goto LABEL_20;
    }

    v28 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
    v29 = [v28 viewController];
    v18 = 0;
    v19 = 0;
    IsVisibleForDisplayMode = [v29 _appearState] == 2;
LABEL_19:

    goto LABEL_20;
  }

  IsVisibleForDisplayMode = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
LABEL_21:
  if (![v38 _collapsedState] || objc_msgSend(v38, "_collapsedState") == 3)
  {
    v33 = _UISplitViewControllerColumnIsVisibleForDisplayMode(v9, 0, a4);
    v34 = _UISplitViewControllerColumnIsVisibleForDisplayMode(v9, 1, a4);
    v35 = _UISplitViewControllerColumnIsVisibleForDisplayMode(v9, 2, a4);
    v36 = 0;
    if (!IsVisibleForDisplayMode)
    {
      goto LABEL_28;
    }

LABEL_26:
    if ((v33 & 1) == 0)
    {
      [(UISplitViewControllerPanelImpl *)self sendWillHideColumn:0];
    }

    goto LABEL_28;
  }

  lastNotifiedTopColumnForCollapse = self->_lastNotifiedTopColumnForCollapse;
  v33 = lastNotifiedTopColumnForCollapse == 0;
  v34 = lastNotifiedTopColumnForCollapse == 1;
  v35 = lastNotifiedTopColumnForCollapse == 2;
  v36 = lastNotifiedTopColumnForCollapse == 3;
  if (IsVisibleForDisplayMode)
  {
    goto LABEL_26;
  }

LABEL_28:
  if (!(v34 & 1 | ((v18 & 1) == 0)))
  {
    [(UISplitViewControllerPanelImpl *)self sendWillHideColumn:1];
  }

  if (!(v35 & 1 | ((v19 & 1) == 0)))
  {
    [(UISplitViewControllerPanelImpl *)self sendWillHideColumn:2];
  }

  if (((v20 | v36) & 1) == 0)
  {
    [(UISplitViewControllerPanelImpl *)self sendWillHideColumn:3];
  }

  if (!(v18 & 1 | ((v34 & 1) == 0)))
  {
    [(UISplitViewControllerPanelImpl *)self sendWillShowColumn:1];
  }

  if (!(IsVisibleForDisplayMode & 1 | ((v33 & 1) == 0)))
  {
    [(UISplitViewControllerPanelImpl *)self sendWillShowColumn:0];
  }

  if (!(v19 & 1 | ((v35 & 1) == 0)))
  {
    [(UISplitViewControllerPanelImpl *)self sendWillShowColumn:2];
  }

  if ((v20 & v36) == 1)
  {
    [(UISplitViewControllerPanelImpl *)self sendWillShowColumn:3];
  }

LABEL_43:
}

- (void)sendWillShowColumn:(int64_t)a3
{
  flags = self->_flags;
  if ((*&flags & 0x1400000000) == 0x400000000)
  {
    self->_flags = (*&flags | 0x10000000);
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v7 = self->_flags;
    v8 = [(UISplitViewControllerPanelImpl *)self _columnStyleDelegate];
    v9 = v8;
    if ((*&v7 & 0x2000000000) != 0)
    {
      [v8 _splitViewController:WeakRetained willShowColumn:a3];
    }

    else
    {
      [v8 splitViewController:WeakRetained willShowColumn:a3];
    }

    *&self->_flags &= ~0x10000000uLL;
  }
}

- (void)sendWillHideColumn:(int64_t)a3
{
  flags = self->_flags;
  if ((*&flags & 0x1800000000) == 0x800000000)
  {
    self->_flags = (*&flags | 0x10000000);
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v7 = self->_flags;
    v8 = [(UISplitViewControllerPanelImpl *)self _columnStyleDelegate];
    v9 = v8;
    if ((*&v7 & 0x2000000000) != 0)
    {
      [v8 _splitViewController:WeakRetained willHideColumn:a3];
    }

    else
    {
      [v8 splitViewController:WeakRetained willHideColumn:a3];
    }

    *&self->_flags &= ~0x10000000uLL;
  }
}

- (id)_currentPrimaryChildViewController
{
  v3 = [(UISplitViewControllerPanelImpl *)self panelController];
  if ([(UISplitViewControllerPanelImpl *)self _isPrimaryLeading])
  {
    [v3 leadingViewController];
  }

  else
  {
    [v3 trailingViewController];
  }
  v4 = ;

  return v4;
}

- (id)_currentSupplementaryChildViewController
{
  if (![(UIPanelController *)self->_panelController supportsColumnStyle])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:7636 description:@"Incorrect panelController for UISplitViewControllerStyleTripleColumn."];
  }

  panelController = self->_panelController;

  return [(UIPanelController *)panelController supplementaryViewController];
}

- (void)_setPresentationGestureRecognizer:(id)a3
{
  v5 = a3;
  if ([(UISplitViewControllerPanelImpl *)self _shouldUseFluidSidebarGestures])
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:7647 description:@"Wrong accessor for pre-iOS14 sidebar gesture"];
  }

  sidebarPanGestureRecognizer = self->_sidebarPanGestureRecognizer;
  self->_sidebarPanGestureRecognizer = v5;
}

- (UIPanGestureRecognizer)_presentationGestureRecognizer
{
  if ([(UISplitViewControllerPanelImpl *)self _shouldUseFluidSidebarGestures])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:7653 description:@"Wrong accessor for pre-iOS14 sidebar gesture"];
  }

  sidebarPanGestureRecognizer = self->_sidebarPanGestureRecognizer;

  return sidebarPanGestureRecognizer;
}

- (void)_setFluidSidebarPresentationGestureRecognizer:(id)a3
{
  v5 = a3;
  v6 = [(UISplitViewControllerPanelImpl *)self style];
  if ((v6 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v6;
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = _UISplitViewControllerStyleDescription(v8);
    [v9 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:7659 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v10}];
  }

  if (![(UISplitViewControllerPanelImpl *)self _shouldUseFluidSidebarGestures])
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:7660 description:@"Wrong accessor for fluid sidebar gesture"];
  }

  sidebarPanGestureRecognizer = self->_sidebarPanGestureRecognizer;
  self->_sidebarPanGestureRecognizer = v5;
}

- (UIPanGestureRecognizer)_fluidSidebarPresentationGestureRecognizer
{
  v4 = [(UISplitViewControllerPanelImpl *)self style];
  if ((v4 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v4;
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = _UISplitViewControllerStyleDescription(v7);
    [v8 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:7666 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v9}];
  }

  if (![(UISplitViewControllerPanelImpl *)self _shouldUseFluidSidebarGestures])
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:7667 description:@"Wrong accessor for fluid sidebar gesture"];
  }

  sidebarPanGestureRecognizer = self->_sidebarPanGestureRecognizer;

  return sidebarPanGestureRecognizer;
}

- (unint64_t)_effectivePrimaryRectEdge
{
  if ([(UISplitViewControllerPanelImpl *)self _layoutPrimaryOnRight])
  {
    return 8;
  }

  else
  {
    return 2;
  }
}

- (void)_fluidUpdatePresentationGestureRecognizers
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v3 = [WeakRetained presentsWithGesture];
  v4 = [(UISplitViewControllerPanelImpl *)self _fluidSidebarPresentationGestureRecognizer];
  v5 = v4;
  if (v3)
  {

    if (!v5)
    {
      v6 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:sel__presentationGestureRecognizerChanged_];
      [(UIPanGestureRecognizer *)v6 setMinimumNumberOfTouches:1];
      [(UIPanGestureRecognizer *)v6 setMaximumNumberOfTouches:2];
      [(UIGestureRecognizer *)v6 setAllowedTouchTypes:&unk_1EFE2BC20];
      [(UIPanGestureRecognizer *)v6 setDelegate:self];
      [(UIPanGestureRecognizer *)v6 setAllowedScrollTypesMask:2];
      [(UISplitViewControllerPanelImpl *)self _setFluidSidebarPresentationGestureRecognizer:v6];
      v7 = [[UIScreenEdgePanGestureRecognizer alloc] initWithTarget:self action:sel__presentationGestureRecognizerChanged_];
      [(UIScreenEdgePanGestureRecognizer *)v7 setMinimumNumberOfTouches:1];
      [(UIPanGestureRecognizer *)v7 setMaximumNumberOfTouches:2];
      [(UIGestureRecognizer *)v7 setAllowedTouchTypes:&unk_1EFE2BC38];
      [(UIPanGestureRecognizer *)v7 setDelegate:self];
      [(UISplitViewControllerPanelImpl *)self _setFluidOpenSidebarPresentationGestureRecognizer:v7];
      v8 = objc_loadWeakRetained(&self->_svc);
      v9 = [v8 view];

      [v9 addGestureRecognizer:v6];
      [v9 addGestureRecognizer:v7];
    }

    v10 = [(UISplitViewControllerPanelImpl *)self _effectivePrimaryRectEdge];
    v11 = [(UISplitViewControllerPanelImpl *)self _fluidOpenSidebarPresentationGestureRecognizer];
    [v11 setEdges:v10];
  }

  else
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    v12 = objc_loadWeakRetained(&self->_svc);
    v11 = [v12 view];

    v13 = [(UISplitViewControllerPanelImpl *)self _fluidOpenSidebarPresentationGestureRecognizer];
    [v11 removeGestureRecognizer:v13];

    v14 = [(UISplitViewControllerPanelImpl *)self _fluidSidebarPresentationGestureRecognizer];
    [v11 removeGestureRecognizer:v14];

    [(UISplitViewControllerPanelImpl *)self _setFluidOpenSidebarPresentationGestureRecognizer:0];
    [(UISplitViewControllerPanelImpl *)self _setFluidSidebarPresentationGestureRecognizer:0];
  }

LABEL_8:
}

- (void)_updatePresentationGestureRecognizer
{
  if ([(UISplitViewControllerPanelImpl *)self _shouldUseFluidSidebarGestures])
  {

    [(UISplitViewControllerPanelImpl *)self _fluidUpdatePresentationGestureRecognizers];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v3 = [WeakRetained presentsWithGesture];
    v4 = [(UISplitViewControllerPanelImpl *)self _presentationGestureRecognizer];
    v5 = v4;
    if (v3)
    {

      if (!v5)
      {
        v6 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:sel__presentationGestureRecognizerChanged_];
        [(UIPanGestureRecognizer *)v6 setMinimumNumberOfTouches:1];
        [(UIPanGestureRecognizer *)v6 setMaximumNumberOfTouches:2];
        [(UIGestureRecognizer *)v6 setAllowedTouchTypes:&unk_1EFE2BC50];
        [(UIPanGestureRecognizer *)v6 setDelegate:self];
        [(UIPanGestureRecognizer *)v6 setAllowedScrollTypesMask:2];
        [(UISplitViewControllerPanelImpl *)self _setPresentationGestureRecognizer:v6];
        v7 = [WeakRetained view];
        [v7 addGestureRecognizer:v6];
      }

      v8 = [(UISplitViewControllerPanelImpl *)self panelController];
      v9 = [v8 currentState];

      if ([(UISplitViewControllerPanelImpl *)self style])
      {
        v10 = 1;
      }

      else
      {
        if ([(UISplitViewControllerPanelImpl *)self _isPrimaryLeading])
        {
          v13 = [v9 _leadingEntirelyOverlapsMain];
        }

        else
        {
          v13 = [v9 _trailingEntirelyOverlapsMain];
        }

        v10 = v13;
      }

      v14 = [(UISplitViewControllerPanelImpl *)self _presentationGestureRecognizer];
      [v14 setEnabled:v10];
    }

    else
    {

      if (v5)
      {
        v11 = [WeakRetained view];
        v12 = [(UISplitViewControllerPanelImpl *)self _presentationGestureRecognizer];
        [v11 removeGestureRecognizer:v12];

        [(UISplitViewControllerPanelImpl *)self _setPresentationGestureRecognizer:0];
      }
    }
  }
}

- (void)_unspecifiedStylePresentationGestureRecognizerChanged:(id)a3
{
  v20 = a3;
  v5 = [(UISplitViewControllerPanelImpl *)self style];
  if (v5)
  {
    v16 = v5;
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = _UISplitViewControllerStyleDescription(v16);
    [v17 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:7756 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v18}];
  }

  v6 = [v20 state];
  if ((v6 - 3) < 2)
  {
    self->_presentationGestureDirection = 0.0;
  }

  else if ((v6 - 1) <= 1)
  {
    v7 = [v20 view];
    [v20 velocityInView:v7];
    if (*v8.i64 == 0.0)
    {
      self->_presentationGestureDirection = 0.0;
    }

    else
    {
      v9.i64[0] = 1.0;
      v10.f64[0] = NAN;
      v10.f64[1] = NAN;
      v11 = *vbslq_s8(vnegq_f64(v10), v9, v8).i64;
      if (v11 != self->_presentationGestureDirection)
      {
        v19 = v11;
        [v20 setTranslation:v7 inView:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
        v11 = v19;
      }

      self->_presentationGestureDirection = v11;
      v12 = [(UISplitViewControllerPanelImpl *)self _isPrimaryShown];
      v13 = [(UISplitViewControllerPanelImpl *)self _layoutPrimaryOnRight];
      v14 = -1.0;
      if (!v13)
      {
        v14 = 1.0;
      }

      if (((v12 ^ (self->_presentationGestureDirection != v14)) & 1) == 0)
      {
        [v20 translationInView:v7];
        if (fabs(v15) >= 40.0)
        {
          [(UISplitViewControllerPanelImpl *)self _unspecifiedStyleSetPrimaryShownFromGesture:!v12];
        }
      }
    }
  }
}

- (void)_notifyFluidPresentationGestureWillBegin
{
  v3 = [(UISplitViewControllerPanelImpl *)self panelController];
  [v3 setPresentationGestureActive:1];

  flags = self->_flags;
  if ((*&flags & 0x4000000000) != 0)
  {
    self->_flags = (*&flags | 0x10000000);
    v5 = [(UISplitViewControllerPanelImpl *)self _columnStyleDelegate];
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    [v5 splitViewControllerInteractivePresentationGestureWillBegin:WeakRetained];
  }

  else
  {
    if ((*&flags & 0x8000000000) == 0)
    {
      return;
    }

    self->_flags = (*&flags | 0x10000000);
    v5 = [(UISplitViewControllerPanelImpl *)self _columnStyleDelegate];
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    [v5 _splitViewControllerInteractiveSidebarGestureWillBegin:WeakRetained];
  }

  *&self->_flags &= ~0x10000000uLL;
}

- (void)_notifyFluidPresentationGestureDidEnd
{
  v3 = [(UISplitViewControllerPanelImpl *)self panelController];
  [v3 setPresentationGestureActive:0];

  flags = self->_flags;
  if ((*&flags & 0x10000000000) != 0)
  {
    self->_flags = (*&flags | 0x10000000);
    v5 = [(UISplitViewControllerPanelImpl *)self _columnStyleDelegate];
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    [v5 splitViewControllerInteractivePresentationGestureDidEnd:WeakRetained];
  }

  else
  {
    if ((*&flags & 0x20000000000) == 0)
    {
      return;
    }

    self->_flags = (*&flags | 0x10000000);
    v5 = [(UISplitViewControllerPanelImpl *)self _columnStyleDelegate];
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    [v5 _splitViewControllerInteractiveSidebarGestureDidEnd:WeakRetained];
  }

  *&self->_flags &= ~0x10000000uLL;
}

- (void)_fluidPresentationGestureRecognizerChanged:(id)a3
{
  v80 = a3;
  v81 = [(UISplitViewControllerPanelImpl *)self style];
  if (v81 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v78 = [MEMORY[0x1E696AAA8] currentHandler];
    v79 = _UISplitViewControllerStyleDescription(v81);
    [v78 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:7826 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v79}];
  }

  [(NSMutableArray *)self->_hyperpoints removeAllObjects];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v7 = [WeakRetained view];
  [v7 bounds];
  MaxX = CGRectGetMaxX(v95);

  v9 = [(UISplitViewControllerPanelImpl *)self _layoutPrimaryOnRight];
  if (v9)
  {
    v10 = MaxX;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = [(UISplitViewControllerPanelImpl *)self _allowMoveToSecondaryOnlyGetIsInForcedOverlayFromGestureOrRestrictedWidth:0];
  if (v11 || [(UISplitViewControllerPanelImpl *)self displayMode]== 1)
  {
    v12 = [[_UIHyperpoint alloc] initWithDimensions:1];
    v94[0] = MEMORY[0x1E69E9820];
    v94[1] = 3221225472;
    v94[2] = __77__UISplitViewControllerPanelImpl__fluidPresentationGestureRecognizerChanged___block_invoke;
    v94[3] = &__block_descriptor_40_e9_v16__0_d8l;
    *&v94[4] = v10;
    [(_UIHyperpoint *)v12 _mutateValue:v94];
    [(NSMutableArray *)self->_hyperpoints addObject:v12];
    [v5 addObject:&unk_1EFE30268];
    if (!v11)
    {
      *&self->_flags |= 0x20000uLL;
      [(UISplitViewControllerPanelImpl *)self setUserGeneratedDisplayMode:3];
    }
  }

  if (v9)
  {
    v13 = -1.0;
  }

  else
  {
    v13 = 1.0;
  }

  v14 = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
  v15 = [(UISplitViewControllerPanelImpl *)self panelController];
  v16 = [v15 possibleStates];
  v17 = minNonzeroPrimaryWidthInStates(v16, v14);

  if (v81 == 2)
  {
    v19 = [(UISplitViewControllerPanelImpl *)self panelController];
    v20 = [v19 possibleStates];
    v10 = v10 + v13 * minNonzeroSupplementaryWidthInStateWithPrimaryWidthGetMatchingState(v20, v14, 0, v17);

    v21 = [[_UIHyperpoint alloc] initWithDimensions:1];
    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = __77__UISplitViewControllerPanelImpl__fluidPresentationGestureRecognizerChanged___block_invoke_511;
    v93[3] = &__block_descriptor_40_e9_v16__0_d8l;
    *&v93[4] = v10;
    [(_UIHyperpoint *)v21 _mutateValue:v93];
    [(NSMutableArray *)self->_hyperpoints addObject:v21];
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
    [v5 addObject:v22];

    v23 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];

    if (!v23)
    {
      goto LABEL_19;
    }

    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  v24 = [[_UIHyperpoint alloc] initWithDimensions:1];
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __77__UISplitViewControllerPanelImpl__fluidPresentationGestureRecognizerChanged___block_invoke_2;
  v92[3] = &__block_descriptor_40_e9_v16__0_d8l;
  *&v92[4] = v13 * v17 + v10;
  [(_UIHyperpoint *)v24 _mutateValue:v92];
  [(NSMutableArray *)self->_hyperpoints addObject:v24];
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v18];
  [v5 addObject:v25];

LABEL_19:
  [(_UIHyperregionUnion *)self->_regionUnion _setRegions:self->_hyperpoints];
  hyperpoints = self->_hyperpoints;
  if (v9)
  {
    v27 = [(NSMutableArray *)hyperpoints lastObject];
    [(NSMutableArray *)self->_hyperpoints firstObject];
  }

  else
  {
    v27 = [(NSMutableArray *)hyperpoints firstObject];
    [(NSMutableArray *)self->_hyperpoints lastObject];
  }
  v28 = ;
  v29 = v80;
  hyperrectangle = self->_hyperrectangle;
  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = __77__UISplitViewControllerPanelImpl__fluidPresentationGestureRecognizerChanged___block_invoke_3;
  v90[3] = &unk_1E70F4AC0;
  v31 = v27;
  v91 = v31;
  [(_UIHyperrectangle *)hyperrectangle _mutateMinimumPoint:v90];
  v32 = self->_hyperrectangle;
  v88[0] = MEMORY[0x1E69E9820];
  v88[1] = 3221225472;
  v88[2] = __77__UISplitViewControllerPanelImpl__fluidPresentationGestureRecognizerChanged___block_invoke_4;
  v88[3] = &unk_1E70F4AC0;
  v33 = v28;
  v89 = v33;
  [(_UIHyperrectangle *)v32 _mutateMaximumPoint:v88];
  v34 = objc_loadWeakRetained(&self->_svc);
  if (_UISplitViewControllerAutoHidesColumns(v34))
  {
    v35 = [(UISplitViewControllerPanelImpl *)self splitBehavior];

    if (v35 == 1)
    {
      v36 = [v5 lastObject];
      v37 = [v36 integerValue];

      v38 = [(UISplitViewControllerPanelImpl *)self displayMode];
      v39 = 1;
      if (v37 == 1)
      {
        v39 = 2;
      }

      if (v37 == 2)
      {
        v40 = 4;
      }

      else
      {
        v40 = v39;
      }

      [UISplitViewControllerPanelImpl _updateSplitBehaviorOverridesForTransitionFromDisplayMode:v38 toDisplayMode:v40 shouldResizeIfNecessary:?];
    }
  }

  else
  {
  }

  v41 = [v80 state];
  if ((v41 - 3) < 2)
  {
    _UIUpdateRequestRegistryRemoveRecord(&mainRegistry, _fluidPresentationGestureRecognizerChanged__updateRequest, 0x10002Eu);
    [(UISplitViewControllerPanelImpl *)self _notifyFluidPresentationGestureDidEnd];
    [(_UIHyperInteractor *)self->_interactor _commitTranslation];
    v57 = [(_UIHyperregionUnion *)self->_regionUnion _regionIndexForClosestPoint:0 toPoint:[(_UIHyperInteractor *)self->_interactor _projectedPoint]];
    v58 = *[(_UIHyperInteractor *)self->_interactor _constrainedVelocity];
    v59 = [(NSMutableArray *)self->_hyperpoints objectAtIndexedSubscript:v57];
    v60 = *[v59 _value];
    v61 = v60 - *[(_UIHyperInteractor *)self->_interactor _constrainedPoint];

    [(_UIHyperInteractor *)self->_interactor _setRegion:self->_regionUnion];
    if (v61 == 0.0 || v58 == 0.0)
    {
      v63 = 0.0;
    }

    else
    {
      v63 = v58 / v61;
    }

    v64 = [(UISplitViewControllerPanelImpl *)self panelController];
    v65 = [v64 interactiveStateRequest];
    [v65 rubberBandInset];
    v67 = v66;

    if (v63 > 22.5 && v67 == 0.0)
    {
      v69 = 22.5;
    }

    else
    {
      v69 = v63;
    }

    v70 = [v5 objectAtIndexedSubscript:v57];
    v71 = [v70 integerValue];

    [(UISplitViewControllerPanelImpl *)self _setNumberOfSidebarColumnsVisibleFromGesture:v71 withVelocity:v69];
    v72 = [(UISplitViewControllerPanelImpl *)self panelController];
    LOBYTE(v71) = [v72 isAnimating];

    if ((v71 & 1) == 0)
    {
      v73 = [(UISplitViewControllerPanelImpl *)self _alwaysHideSidebarToggleButton];
      if (v81 == 2 && !v73)
      {
        v74 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];

        if (v74)
        {
          v75 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
          v76 = [v75 navigationController];
          v77 = [v76 navigationBar];

          [v77 _endAnimatingNavItemContentLayoutGuideForStaticButtonVisibilityChange];
          [v77 _setShouldFadeStaticNavBarButton:0];
        }
      }

      v56 = [(UISplitViewControllerPanelImpl *)self panelController];
      [v56 setNavigationBarForContentLayoutGuideAnimation:0];
      goto LABEL_66;
    }
  }

  else
  {
    if (v41 == 2)
    {
LABEL_45:
      interactor = self->_interactor;
      v84[0] = MEMORY[0x1E69E9820];
      v84[1] = 3221225472;
      v84[2] = __77__UISplitViewControllerPanelImpl__fluidPresentationGestureRecognizerChanged___block_invoke_6;
      v84[3] = &unk_1E70F4AC0;
      v52 = v29;
      v85 = v52;
      [(_UIHyperInteractor *)interactor _mutateTranslation:v84];
      v53 = self->_interactor;
      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 3221225472;
      v82[2] = __77__UISplitViewControllerPanelImpl__fluidPresentationGestureRecognizerChanged___block_invoke_7;
      v82[3] = &unk_1E70F4AC0;
      v83 = v52;
      [(_UIHyperInteractor *)v53 _mutateVelocity:v82];
      v54 = [(_UIHyperInteractor *)self->_interactor _constrainedPoint];
      v55 = *v54;
      if (v9)
      {
        v55 = MaxX - *v54;
      }

      [(UISplitViewControllerPanelImpl *)self _setInteractiveSidebarWidth:v55];

      v56 = v85;
LABEL_66:

      goto LABEL_67;
    }

    if (v41 == 1)
    {
      _UIUpdateRequestRegistryAddRecord(&mainRegistry, _fluidPresentationGestureRecognizerChanged__updateRequest, 0x10002Eu);
      [(UISplitViewControllerPanelImpl *)self _notifyFluidPresentationGestureWillBegin];
      [(_UIHyperInteractor *)self->_interactor _setRegion:self->_hyperrectangle];
      v42 = [(UISplitViewControllerPanelImpl *)self panelController];
      [v42 stopAnimations];

      v43 = [(UISplitViewControllerPanelImpl *)self _alwaysHideSidebarToggleButton];
      if (v81 == 2 && !v43)
      {
        v44 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];

        if (v44)
        {
          v45 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
          v46 = [v45 navigationController];
          v47 = [v46 navigationBar];

          v48 = [v47 _staticNavBarButtonItem];

          if (!v48)
          {
            [(UISplitViewControllerPanelImpl *)self _updateDisplayModeButtonItemForDisplayMode:[(UISplitViewControllerPanelImpl *)self allowedDisplayModeForCurrentSplitBehaviorGivenDisplayMode:3]];
          }

          if (![(UIBarButtonItem *)self->_sidebarToggleButtonItem isHidden]|| [(_UIFloatableBarButtonItem *)self->_sidebarToggleButtonItem _isFloatable]|| [(UISplitViewControllerPanelImpl *)self displayMode]== 6)
          {
            [v47 _setShouldFadeStaticNavBarButton:{-[_UIFloatableBarButtonItem _isFloatable](self->_sidebarToggleButtonItem, "_isFloatable") ^ 1}];
            v49 = [(UISplitViewControllerPanelImpl *)self panelController];
            [v49 setNavigationBarForContentLayoutGuideAnimation:v47];
          }
        }
      }

      v50 = self->_interactor;
      v86[0] = MEMORY[0x1E69E9820];
      v86[1] = 3221225472;
      v86[2] = __77__UISplitViewControllerPanelImpl__fluidPresentationGestureRecognizerChanged___block_invoke_5;
      v86[3] = &unk_1E7103D58;
      v86[4] = self;
      v87 = !v9;
      *&v86[5] = v17;
      *&v86[6] = MaxX;
      [(_UIHyperInteractor *)v50 _mutateUnconstrainedPoint:v86];
      v29 = v80;
      goto LABEL_45;
    }
  }

LABEL_67:
}

double __77__UISplitViewControllerPanelImpl__fluidPresentationGestureRecognizerChanged___block_invoke(uint64_t a1, double *a2)
{
  result = *(a1 + 32);
  *a2 = result;
  return result;
}

double __77__UISplitViewControllerPanelImpl__fluidPresentationGestureRecognizerChanged___block_invoke_511(uint64_t a1, double *a2)
{
  result = *(a1 + 32);
  *a2 = result;
  return result;
}

double __77__UISplitViewControllerPanelImpl__fluidPresentationGestureRecognizerChanged___block_invoke_2(uint64_t a1, double *a2)
{
  result = *(a1 + 32);
  *a2 = result;
  return result;
}

double __77__UISplitViewControllerPanelImpl__fluidPresentationGestureRecognizerChanged___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) _value];
  result = *v3;
  *a2 = *v3;
  return result;
}

double __77__UISplitViewControllerPanelImpl__fluidPresentationGestureRecognizerChanged___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) _value];
  result = *v3;
  *a2 = *v3;
  return result;
}

void __77__UISplitViewControllerPanelImpl__fluidPresentationGestureRecognizerChanged___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) panelController];
  v5 = [v4 interactiveStateRequest];

  if ([*(a1 + 32) _isPrimaryLeading])
  {
    [v5 leadingWidth];
  }

  else
  {
    [v5 trailingWidth];
  }

  v7 = v6;
  v8 = 0.0;
  if (v6 > 0.0)
  {
    v9 = *(a1 + 40);
    v10 = v9 < v7;
    v11 = v9 - v7;
    if (v10)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = v11;
    }
  }

  [v5 supplementaryWidth];
  v13 = v7 + v12 - v8;
  v14 = v13;
  if ((*(a1 + 56) & 1) == 0)
  {
    v14 = *(a1 + 48) - v13;
  }

  [*(*(a1 + 32) + 272) _getUnconstrainedPoint:a2 forConstrainedPoint:&v14];
}

uint64_t __77__UISplitViewControllerPanelImpl__fluidPresentationGestureRecognizerChanged___block_invoke_6(uint64_t a1, void *a2)
{
  result = [*(a1 + 32) translationInView:0];
  *a2 = v4;
  return result;
}

uint64_t __77__UISplitViewControllerPanelImpl__fluidPresentationGestureRecognizerChanged___block_invoke_7(uint64_t a1, void *a2)
{
  result = [*(a1 + 32) velocityInView:0];
  *a2 = v4;
  return result;
}

- (void)_presentationGestureRecognizerChanged:(id)a3
{
  v24 = a3;
  if (![(UISplitViewControllerPanelImpl *)self style])
  {
    [(UISplitViewControllerPanelImpl *)self _unspecifiedStylePresentationGestureRecognizerChanged:v24];
    goto LABEL_33;
  }

  if (![(UISplitViewControllerPanelImpl *)self _shouldUseFluidSidebarGestures])
  {
    v4 = [v24 state];
    if ((v4 - 3) < 2)
    {
      *&self->_flags &= 0xFFFFFFFFFFFE7FFFLL;
      self->_presentationGestureDirection = 0.0;
      goto LABEL_33;
    }

    v5 = (v4 - 1) > 1;
    v6 = v24;
    if (v5)
    {
      goto LABEL_34;
    }

    v7 = [v24 view];
    [v24 velocityInView:v7];
    if (*v8.i64 == 0.0)
    {
      self->_presentationGestureDirection = 0.0;
LABEL_32:

      goto LABEL_33;
    }

    v9.i64[0] = 1.0;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v9.i64[0] = vbslq_s8(vnegq_f64(v10), v9, v8).i64[0];
    if (*v9.i64 != self->_presentationGestureDirection)
    {
      v23 = v9.i64[0];
      [v24 setTranslation:v7 inView:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
      v9.i64[0] = v23;
    }

    *&self->_presentationGestureDirection = v9.i64[0];
    v11 = [(UISplitViewControllerPanelImpl *)self _isPrimaryShown];
    v12 = [(UIPanelController *)self->_panelController supportsColumnStyle];
    if (v12)
    {
      v13 = [(UIPanelController *)self->_panelController currentState];
      v14 = [v13 isSupplementaryVisible];
    }

    else
    {
      v14 = 0;
    }

    v15 = [(UISplitViewControllerPanelImpl *)self _layoutPrimaryOnRight];
    v16 = 1.0;
    if (v15)
    {
      v16 = -1.0;
    }

    presentationGestureDirection = self->_presentationGestureDirection;
    v18 = v16 == presentationGestureDirection;
    if ((v18 & v11) == 1)
    {
      v18 = v12 & (v14 ^ 1u);
    }

    if (v16 == presentationGestureDirection)
    {
      v19 = 0;
    }

    else
    {
      v19 = v11 | v14;
    }

    if (((v18 | v19) & 1) == 0)
    {
      goto LABEL_32;
    }

    [v24 translationInView:v7];
    if (fabs(v20) < 40.0)
    {
      goto LABEL_32;
    }

    if (v12)
    {
      flags = self->_flags;
      if ((*&flags & 0x18000) != 0)
      {
        goto LABEL_32;
      }

      if (!(v14 & 1 | ((v18 & 1) == 0)))
      {
        v22 = 0x8000;
        goto LABEL_30;
      }

      if (v19 & v11)
      {
        v22 = 0x10000;
LABEL_30:
        self->_flags = (v22 | *&flags);
      }
    }

    [(UISplitViewControllerPanelImpl *)self _setPrimaryShownFromGesture:v18 hideAll:0];
    goto LABEL_32;
  }

  [(UISplitViewControllerPanelImpl *)self _fluidPresentationGestureRecognizerChanged:v24];
LABEL_33:
  v6 = v24;
LABEL_34:
}

- (BOOL)_isPrimaryShown
{
  v3 = [(UISplitViewControllerPanelImpl *)self panelController];
  v4 = [v3 currentState];

  if ([(UISplitViewControllerPanelImpl *)self _isPrimaryLeading])
  {
    v5 = [v4 isLeadingVisible];
  }

  else
  {
    v5 = [v4 isTrailingVisible];
  }

  v6 = v5;

  return v6;
}

- (void)_setInteractiveSidebarWidth:(double)a3
{
  v6 = [(UISplitViewControllerPanelImpl *)self style];
  if (v6 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    v30 = _UISplitViewControllerStyleDescription(v6);
    [v29 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:8087 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v30}];
  }

  v7 = [(UISplitViewControllerPanelImpl *)self panelController];
  v8 = [v7 currentState];
  v9 = [v8 stateRequest];

  v10 = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
  v11 = [(UISplitViewControllerPanelImpl *)self panelController];
  v12 = [v11 possibleStates];

  v13 = minNonzeroPrimaryWidthInStates(v12, v10);
  v14 = v13;
  if (v6 == 2)
  {
    v31 = 0;
    MatchingState = minNonzeroSupplementaryWidthInStateWithPrimaryWidthGetMatchingState(v12, v10, &v31, v13);
    v16 = v31;
    if (v14 + MatchingState <= a3)
    {
      v17 = v14 + MatchingState;
    }

    else
    {
      v17 = a3;
    }

    v18 = a3 - (v14 + MatchingState);
    if (v17 >= MatchingState)
    {
      v19 = MatchingState;
    }

    else
    {
      v19 = v17;
    }

    [v9 setSupplementaryWidth:v19];
    v20 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
    v21 = 0.0;
    if (v20)
    {
      [v9 supplementaryWidth];
      v21 = v17 - v22;
    }

    v23 = fmax(v18, 0.0);
  }

  else
  {
    v16 = 0;
    if (v13 <= a3)
    {
      v21 = v13;
    }

    else
    {
      v21 = a3;
    }

    v23 = fmax(a3 - v13, 0.0);
  }

  if (!v10)
  {
    [v9 setTrailingWidth:v21];
    if (!v16)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  [v9 setLeadingWidth:v21];
  if (v16)
  {
LABEL_21:
    [v16 mainWidth];
    [v9 setMainWidth:?];
  }

LABEL_22:
  [v9 setRubberBandInset:v23];
  v24 = [(UISplitViewControllerPanelImpl *)self panelController];
  v25 = [v24 currentState];
  v26 = [v25 stateRequest];
  v27 = [v9 isEqual:v26];

  if ((v27 & 1) == 0)
  {
    v28 = [(UISplitViewControllerPanelImpl *)self panelController];
    [v28 setInteractiveStateRequest:v9];
  }
}

- (void)_unspecifiedStyleSetPrimaryShownFromGesture:(BOOL)a3
{
  v3 = a3;
  v6 = [(UISplitViewControllerPanelImpl *)self style];
  if (v6)
  {
    v17 = v6;
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = _UISplitViewControllerStyleDescription(v17);
    [v18 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:8130 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v19}];
  }

  v7 = [(UISplitViewControllerPanelImpl *)self panelController];
  v8 = [v7 currentState];
  v20 = [v8 stateRequest];

  v9 = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
  v10 = v9;
  if (v3)
  {
    v11 = [(UISplitViewControllerPanelImpl *)self panelController];
    v12 = [v11 possibleStates];
    v13 = minNonzeroPrimaryWidthInStates(v12, v10);

    v14 = v20;
    if (v13 <= 0.0)
    {
      goto LABEL_13;
    }

    v15 = v13;
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v15 = 0.0;
    if (!v9)
    {
      v14 = v20;
LABEL_11:
      [v14 setTrailingWidth:v15];
      goto LABEL_12;
    }

    v14 = v20;
  }

  [v14 setLeadingWidth:v15];
LABEL_12:
  v16 = [(UISplitViewControllerPanelImpl *)self panelController];
  [v16 animateToRequest:v20];

  v14 = v20;
LABEL_13:
}

- (void)_setNumberOfSidebarColumnsVisibleFromGesture:(unint64_t)a3 withVelocity:(double)a4
{
  v8 = [(UISplitViewControllerPanelImpl *)self style];
  if (v8 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = _UISplitViewControllerStyleDescription(v8);
    [v26 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:8160 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v27}];
  }

  v9 = [(UISplitViewControllerPanelImpl *)self panelController];
  v10 = [v9 currentState];

  v11 = [v10 stateRequest];
  v12 = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
  v13 = [(UISplitViewControllerPanelImpl *)self panelController];
  v14 = [v13 possibleStates];
  v15 = minNonzeroPrimaryWidthInStates(v14, v12);

  if (v8 == 2)
  {
    if (a3 <= 1)
    {
      v15 = 0.0;
    }

    v16 = [(UISplitViewControllerPanelImpl *)self panelController];
    v17 = [v16 possibleStates];
    v28 = 0;
    MatchingState = minNonzeroSupplementaryWidthInStateWithPrimaryWidthGetMatchingState(v17, v12, &v28, v15);
    v19 = v28;

    if (a3)
    {
      v20 = MatchingState;
    }

    else
    {
      v20 = 0.0;
    }

    [v11 setSupplementaryWidth:v20];
  }

  else
  {
    v19 = 0;
    if (!a3)
    {
      v15 = 0.0;
    }
  }

  if (!v12)
  {
    [v11 setTrailingWidth:v15];
    if (!v19)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  [v11 setLeadingWidth:v15];
  if (v19)
  {
LABEL_16:
    [v19 mainWidth];
    [v11 setMainWidth:?];
  }

LABEL_17:
  v21 = [(UISplitViewControllerPanelImpl *)self _allowClientAnimationCoordination];
  v22 = [(UISplitViewControllerPanelImpl *)self panelController];
  [v22 setAnimationRequestShouldCoordinate:v21];

  v23 = [(UISplitViewControllerPanelImpl *)self panelController];
  [v23 animateToRequest:v11 forceOverlay:-[UISplitViewControllerPanelImpl _gestureIsForcingOverlay](self withVelocity:{"_gestureIsForcingOverlay"), a4}];

  if (a3 == 1)
  {
    flags = self->_flags;
    if ((~*&self->_flags & 0xC0000) == 0)
    {
      p_flags = &self->_flags;
      goto LABEL_22;
    }
  }

  else if (!a3)
  {
    p_flags = &self->_flags;
    flags = self->_flags;
LABEL_22:
    *p_flags = (*&flags & 0xFFFFFFFFFFF3FFFFLL);
  }
}

- (BOOL)_gestureIsForcingOverlay
{
  v3 = [(UISplitViewControllerPanelImpl *)self userGeneratedDisplayMode];

  return [(UISplitViewControllerPanelImpl *)self _gestureIsForcingOverlayForDisplayMode:v3];
}

- (void)_setPrimaryShownFromGesture:(BOOL)a3 hideAll:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v8 = [(UISplitViewControllerPanelImpl *)self style];
  if (v8 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    v33 = _UISplitViewControllerStyleDescription(v8);
    [v32 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:8212 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v33}];
  }

  v9 = [(UISplitViewControllerPanelImpl *)self panelController];
  v10 = [v9 currentState];

  v11 = [v10 stateRequest];
  [v11 leadingWidth];
  if (v12 == 0.0 && ([v11 trailingWidth], v13 == 0.0))
  {
    [v11 supplementaryWidth];
    v15 = v14 == 0.0;
  }

  else
  {
    v15 = 0;
  }

  v16 = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
  if (!v5)
  {
    v34 = 0;
    v20 = [(UISplitViewControllerPanelImpl *)self _allowMoveToSecondaryOnlyGetIsInForcedOverlayFromGestureOrRestrictedWidth:&v34];
    if (v8 == 2 && [v10 isSupplementaryVisible])
    {
      if (v16)
      {
        v21 = [v10 isLeadingVisible];
      }

      else
      {
        v21 = [v10 isTrailingVisible];
      }

      v22 = v21 ^ 1;
      if (!v20)
      {
LABEL_32:
        [v11 supplementaryWidth];
        if (v30 > 0.0)
        {
LABEL_33:
          if (v16)
          {
            [v11 setLeadingWidth:0.0];
            goto LABEL_36;
          }

LABEL_35:
          [v11 setTrailingWidth:0.0];
        }

LABEL_36:
        v31 = [(UISplitViewControllerPanelImpl *)self panelController];
        [v31 animateToRequest:v11 forceOverlay:v34];

        *&self->_flags &= 0xFFFFFFFFFFF3FFFFLL;
        goto LABEL_37;
      }
    }

    else
    {
      v22 = 0;
      if (!v20)
      {
        goto LABEL_32;
      }
    }

    if (((v4 | v22) & 1) == 0)
    {
      goto LABEL_33;
    }

    [v11 setSupplementaryWidth:0.0];
    if (v4)
    {
      [v11 setLeadingWidth:0.0];
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v8 == 2 && ([v10 isSupplementaryVisible] & 1) == 0)
  {
    v23 = [(UISplitViewControllerPanelImpl *)self panelController];
    v24 = [v23 possibleStates];
    [v11 setSupplementaryWidth:{minNonzeroSupplementaryWidthInStateWithPrimaryWidthGetMatchingState(v24, v16, 0, 0.0)}];

LABEL_23:
    if (v15)
    {
      goto LABEL_24;
    }

LABEL_28:
    *&self->_flags &= ~0x20000uLL;
    goto LABEL_29;
  }

  v17 = [(UISplitViewControllerPanelImpl *)self panelController];
  v18 = [v17 possibleStates];
  v19 = minNonzeroPrimaryWidthInStates(v18, v16);

  if (v19 <= 0.0)
  {
    goto LABEL_23;
  }

  if (!v16)
  {
    [v11 setTrailingWidth:v19];
    if (v15)
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  [v11 setLeadingWidth:v19];
  if (!v15)
  {
    goto LABEL_28;
  }

LABEL_24:
  [v11 supplementaryWidth];
  if (v25 != 0.0)
  {
    goto LABEL_28;
  }

  [v11 leadingWidth];
  v27 = v26;
  [v11 trailingWidth];
  if (v27 + v28 <= 0.0)
  {
    goto LABEL_28;
  }

  *&self->_flags |= 0x20000uLL;
  [(UISplitViewControllerPanelImpl *)self setUserGeneratedDisplayMode:3];
LABEL_29:
  v29 = [(UISplitViewControllerPanelImpl *)self panelController];
  [v29 animateToRequest:v11 forceOverlay:(*&self->_flags >> 17) & 1];

LABEL_37:
}

- (void)_updateDimmingView
{
  v3 = [(UISplitViewControllerPanelImpl *)self _dimmingView];

  if (!v3)
  {
    v4 = objc_alloc_init(UIDimmingView);
    [(UISplitViewControllerPanelImpl *)self _setDimmingView:v4];
    [(UIDimmingView *)v4 setDelegate:self];
    v5 = [(UISplitViewControllerPanelImpl *)self panelController];
    [v5 setDimmingView:v4];
  }

  if ([(UISplitViewControllerPanelImpl *)self _wantsVisibleDimmingView])
  {
    +[UIDimmingView defaultDimmingColor];
  }

  else
  {
    +[UIColor clearColor];
  }
  v7 = ;
  v6 = [(UISplitViewControllerPanelImpl *)self _dimmingView];
  [v6 setDimmingColor:v7];
}

- (void)dimmingViewWasTapped:(id)a3
{
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    v4 = [(UISplitViewControllerPanelImpl *)self _shouldUseFluidSidebarGestures];
    v5 = [(UISplitViewControllerPanelImpl *)self splitBehavior];
    if (v4)
    {
      v6 = v5 == 3;
      v7 = [(UISplitViewControllerPanelImpl *)self style];
      if (![(UISplitViewControllerPanelImpl *)self _alwaysHideSidebarToggleButton]&& v7 == 2)
      {
        v8 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];

        if (v8)
        {
          v9 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
          v10 = [v9 navigationController];
          v11 = [v10 navigationBar];

          if (![(UIBarButtonItem *)self->_sidebarToggleButtonItem isHidden]|| [(_UIFloatableBarButtonItem *)self->_sidebarToggleButtonItem _isFloatable]|| [(UISplitViewControllerPanelImpl *)self displayMode]== 6)
          {
            v12 = [(UISplitViewControllerPanelImpl *)self panelController];
            [v12 setNavigationBarForContentLayoutGuideAnimation:v11];

            [v11 _setShouldFadeStaticNavBarButton:{-[_UIFloatableBarButtonItem _isFloatable](self->_sidebarToggleButtonItem, "_isFloatable") ^ 1}];
          }
        }
      }

      v13 = [(UISplitViewControllerPanelImpl *)self _allowClientAnimationCoordination];
      v14 = [(UISplitViewControllerPanelImpl *)self panelController];
      [v14 setAnimationRequestShouldCoordinate:v13];

      [(UISplitViewControllerPanelImpl *)self _setNumberOfSidebarColumnsVisibleFromGesture:v6 withVelocity:0.0];
    }

    else
    {

      [(UISplitViewControllerPanelImpl *)self _setPrimaryShownFromGesture:0 hideAll:v5 != 3];
    }
  }

  else
  {

    [(UISplitViewControllerPanelImpl *)self _unspecifiedStyleSetPrimaryShownFromGesture:0];
  }
}

- (int64_t)_effectiveTargetDisplayMode
{
  v4 = [(UISplitViewControllerPanelImpl *)self style];
  if (v4)
  {
    v9 = v4;
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = _UISplitViewControllerStyleDescription(v9);
    [v10 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:8324 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v11}];
  }

  v5 = [(UISplitViewControllerPanelImpl *)self panelController];
  v6 = [v5 currentState];
  v7 = [(UISplitViewControllerPanelImpl *)self _displayModeForState:v6];

  return [(UISplitViewControllerPanelImpl *)self _effectiveTargetDisplayModeForDisplayMode:v7];
}

- (int64_t)_nextTargetDisplayModeForDisplayMode:(int64_t)a3 showMoreIfPossible:(BOOL)a4
{
  v4 = a4;
  v8 = [(UISplitViewControllerPanelImpl *)self style];
  if (v8 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = _UISplitViewControllerStyleDescription(v8);
    [v20 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:8332 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v21}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v10 = [WeakRetained traitCollection];
  v11 = [v10 horizontalSizeClass];

  if (v11 == 1)
  {
    goto LABEL_4;
  }

  if (!a3)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:8344 description:@"Unexpected use of UISplitViewControllerDisplayModeAutomatic. This is a UIKit issue."];

    [(UISplitViewControllerPanelImpl *)self splitBehavior];
LABEL_4:
    v12 = 0;
    goto LABEL_5;
  }

  v14 = [(UISplitViewControllerPanelImpl *)self splitBehavior];
  v15 = v14;
  v12 = 0;
  if (a3 > 3)
  {
    switch(a3)
    {
      case 4:
        v18 = 5;
        if (v14 == 3)
        {
          v18 = 6;
        }

        if (v14 == 1)
        {
          v12 = 2;
        }

        else
        {
          v12 = v18;
        }

        break;
      case 5:
        if (v14 == 2)
        {
          v12 = 3;
        }

        else if (v14 == 3)
        {
          v12 = 6;
        }

        else
        {
          v12 = 4;
        }

        break;
      case 6:
        if (v14 == 3)
        {
          v12 = 2;
        }

        else if (v14 == 1)
        {
          v12 = 4;
        }

        else
        {
          v12 = 5;
        }

        break;
    }
  }

  else
  {
    switch(a3)
    {
      case 1:
        if (v14 == 2)
        {
          v12 = 3;
        }

        else
        {
          v12 = 2;
        }

        break;
      case 2:
        if (v14 == 2)
        {
          v12 = 3;
        }

        else
        {
          v12 = 1;
        }

        if (v8 == 2 && v14 != 2)
        {
          v16 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
          v19 = 4;
          if (v15 == 3)
          {
            v19 = 6;
          }

          if (v16 != 0 && v4)
          {
            v12 = v19;
          }

          else
          {
            v12 = 1;
          }

          goto LABEL_44;
        }

        break;
      case 3:
        v12 = v14 == 2 ? 1 : 3;
        if (v8 == 2 && v14 == 2)
        {
          v16 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
          v17 = 5;
          if (!v4)
          {
            v17 = 1;
          }

          if (v16)
          {
            v12 = v17;
          }

          else
          {
            v12 = 1;
          }

LABEL_44:
        }

        break;
    }
  }

LABEL_5:

  return v12;
}

- (int64_t)_effectiveTargetDisplayModeForDisplayMode:(int64_t)a3
{
  v6 = [(UISplitViewControllerPanelImpl *)self style];
  if (v6)
  {
    v20 = v6;
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = _UISplitViewControllerStyleDescription(v20);
    [v21 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:8431 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v22}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v8 = [WeakRetained traitCollection];
  v9 = [v8 horizontalSizeClass];

  if (v9 != 1 && self->_unspecifiedStyleDisplayModeButtonItem)
  {
    v10 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [(UISplitViewControllerPanelImpl *)self _pushOverrideOfReportedDisplayMode:a3];
      v11 = [v10 targetDisplayModeForActionInSplitViewController:WeakRetained];
      [(UISplitViewControllerPanelImpl *)self _popOverrideOfReportedDisplayMode];
      if (v11)
      {
        goto LABEL_36;
      }
    }

    v12 = objc_loadWeakRetained(&self->_svc);
    v13 = [v12 traitCollection];
    v14 = [v13 userInterfaceIdiom];

    v11 = [WeakRetained preferredDisplayMode];
    if (a3 == 3)
    {
      v15 = 1;
    }

    else if (a3 == 1 && v14 == 1)
    {
      v15 = [(UISplitViewControllerPanelImpl *)self _iPadShouldUseOverlayInCurrentEnvironment];
    }

    else
    {
      v15 = 0;
      if (a3 == 1 && !v14)
      {
        v15 = [(UISplitViewControllerPanelImpl *)self _iPhoneShouldUseOverlayInCurrentEnvironment];
      }
    }

    v16 = a3 & 0xFFFFFFFFFFFFFFFELL;
    if (v11)
    {
      if (v16 == 2)
      {
        v11 = 1;
LABEL_36:

        goto LABEL_37;
      }

      if (v11 != 1)
      {
        goto LABEL_36;
      }

      v11 = v14 == 1 ? 3 : 2;
      if (v14)
      {
        goto LABEL_36;
      }

      v17 = ![(UISplitViewControllerPanelImpl *)self _iPhoneShouldUseOverlayInCurrentEnvironment];
      v18 = 2;
LABEL_28:
      if (v17)
      {
        v11 = v18;
      }

      else
      {
        v11 = v18 + 1;
      }

      goto LABEL_36;
    }

    if (v14 == 1)
    {
      if (!v15)
      {
        v11 = 2 * (v16 != 2);
        goto LABEL_36;
      }
    }

    else if (!v15)
    {
      v17 = v16 == 2;
      v18 = 1;
      goto LABEL_28;
    }

    if (v16 == 2)
    {
      v11 = 1;
    }

    else
    {
      v11 = 3;
    }

    goto LABEL_36;
  }

  v11 = 0;
LABEL_37:

  return v11;
}

- (void)_unspecifiedStyleUpdateDisplayModeButtonItem
{
  v4 = [(UISplitViewControllerPanelImpl *)self style];
  if (v4)
  {
    v26 = v4;
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = _UISplitViewControllerStyleDescription(v26);
    [v27 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:8553 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v28}];
  }

  if (self->_unspecifiedStyleDisplayModeButtonItem)
  {
    v36 = 0;
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v6 = [(UISplitViewControllerPanelImpl *)self _effectiveTargetDisplayMode];
    v7 = v6;
    if ((v6 - 2) < 2)
    {
      goto LABEL_9;
    }

    if (v6 != 1)
    {
      if (!v6)
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 1;
        LOBYTE(v36) = 1;
        goto LABEL_21;
      }

      v11 = 0;
      v8 = 0;
      v9 = 0;
LABEL_20:
      v10 = 0;
LABEL_21:
      if (![(__CFString *)v10 length]&& !v9)
      {

        v10 = @" ";
      }

      v21 = [WeakRetained delegate];
      if (objc_opt_respondsToSelector())
      {
        v34 = v10;
        v35 = v9;
        [v21 _splitViewController:WeakRetained willUpdateDisplayModeButtonItemForTargetMode:v7 withHidden:&v36 image:&v35 title:&v34 showsBackButtonIndicator:&v36 + 1];
        v22 = v35;

        v23 = v34;
        v8 = HIBYTE(v36);
        v11 = v36;
        v9 = v22;
        v10 = v23;
      }

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __78__UISplitViewControllerPanelImpl__unspecifiedStyleUpdateDisplayModeButtonItem__block_invoke;
      v29[3] = &unk_1E70F43C8;
      v32 = v8;
      v29[4] = self;
      v30 = v9;
      v31 = v10;
      v33 = v11;
      v24 = v10;
      v25 = v9;
      [UIView performWithoutAnimation:v29];

      return;
    }

    if ([WeakRetained displayMode] == 3)
    {
LABEL_9:
      v12 = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
      v13 = objc_opt_respondsToSelector();

      if ((v13 & 1) == 0 || (-[UISplitViewControllerPanelImpl _currentPrimaryChildViewController](self, "_currentPrimaryChildViewController"), v14 = objc_claimAutoreleasedReturnValue(), [v14 _splitViewControllerImageForDisplayModeButtonToShowPrimary:WeakRetained], v9 = objc_claimAutoreleasedReturnValue(), v14, !v9))
      {
        v15 = [WeakRetained _displayModeButtonItemTitle];
        v16 = v15;
        if (v15)
        {
          v10 = v15;
        }

        else
        {
          v17 = [WeakRetained masterViewController];
          v10 = [v17 title];
        }

        v11 = 0;
        v9 = 0;
        v8 = 1;
        HIBYTE(v36) = 1;
        goto LABEL_21;
      }
    }

    else
    {
      v18 = [(UISplitViewControllerPanelImpl *)self _fullScreenButtonImage];

      if (!v18)
      {
        v19 = _UIImageWithName(@"UISplitViewControllerFullScreen.png");
        v20 = [v19 imageFlippedForRightToLeftLayoutDirection];
        [(UISplitViewControllerPanelImpl *)self _setFullScreenButtonImage:v20];
      }

      v9 = [(UISplitViewControllerPanelImpl *)self _fullScreenButtonImage];
    }

    v11 = 0;
    v8 = 0;
    goto LABEL_20;
  }
}

uint64_t __78__UISplitViewControllerPanelImpl__unspecifiedStyleUpdateDisplayModeButtonItem__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) _setShowsBackButtonIndicator:*(a1 + 56)];
  [*(*(a1 + 32) + 24) setImage:*(a1 + 40)];
  [*(*(a1 + 32) + 24) setTitle:*(a1 + 48)];
  [*(*(a1 + 32) + 24) setHidden:*(a1 + 57)];
  v2 = *(a1 + 56) == 1 && +[UIDragInteraction isEnabledByDefault];
  v3 = *(*(a1 + 32) + 24);

  return [v3 setSpringLoaded:v2];
}

- (id)_enterFullScreenSymbolImage
{
  v2 = [UIImage systemImageNamed:@"arrow.up.left.and.arrow.down.right"];
  v3 = [v2 imageFlippedForRightToLeftLayoutDirection];

  return v3;
}

- (id)_leaveFullScreenSymbolImage
{
  v2 = [UIImage systemImageNamed:@"arrow.down.right.and.arrow.up.left"];
  v3 = [v2 imageFlippedForRightToLeftLayoutDirection];

  return v3;
}

- (id)_fullScreenSymbolImageForDisplayMode:(int64_t)a3
{
  if (!a3)
  {
    a3 = [(UISplitViewControllerPanelImpl *)self _concreteDisplayModeForCurrentEnvironment];
  }

  if (a3 == 1)
  {
    [(UISplitViewControllerPanelImpl *)self _leaveFullScreenSymbolImage];
  }

  else
  {
    [(UISplitViewControllerPanelImpl *)self _enterFullScreenSymbolImage];
  }
  v4 = ;

  return v4;
}

- (id)_sidebarToggleSymbolImage
{
  if ([(UISplitViewControllerPanelImpl *)self _isPrimaryLeading])
  {
    v2 = @"sidebar.leading";
  }

  else
  {
    v2 = @"sidebar.trailing";
  }

  return [UIImage systemImageNamed:v2];
}

- (id)_sidebarChevronSymbolImage
{
  if ([(UISplitViewControllerPanelImpl *)self _isPrimaryLeading])
  {
    v2 = @"chevron.backward";
  }

  else
  {
    v2 = @"chevron.forward";
  }

  return [UIImage systemImageNamed:v2];
}

- (BOOL)allowsSecondaryOnlyShortcutButton
{
  v3 = [(UISplitViewControllerPanelImpl *)self style];
  v4 = 0;
  if ([(UISplitViewControllerPanelImpl *)self showsSecondaryOnlyButton]&& v3 == 2)
  {
    v5 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
    v4 = v5 != 0;
  }

  return v4;
}

- (void)_setVisibleToggleButtonRequiresPresentsWithGesture:(BOOL)a3
{
  v3 = 0x100000;
  if (a3)
  {
    v3 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (BOOL)_isDisplayModeBarButtonVisible
{
  if ([(UISplitViewControllerPanelImpl *)self _alwaysHideSidebarToggleButton])
  {
    return 0;
  }

  v3 = [(UIView *)self->_navBarForToggleButton window];
  if (!v3 || [(UIView *)self->_navBarForToggleButton isHidden])
  {

    return 0;
  }

  [(UIView *)self->_navBarForToggleButton alpha];
  v6 = v5;

  if (v6 <= 0.1)
  {
    return 0;
  }

  return ![(UIBarButtonItem *)self->_sidebarToggleButtonItem isHidden];
}

- (void)_setForceDisplayModeBarButtonHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(UISplitViewControllerPanelImpl *)self _isDisplayModeBarButtonVisible];
  v6 = 0x200000;
  if (!v3)
  {
    v6 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFFFFFDFFFFFLL | v6);
  if (v3)
  {
    v7 = 0;
    v8 = 1;
  }

  else
  {
    v8 = ![(UISplitViewControllerPanelImpl *)self _alwaysHideSidebarToggleButton];
    v7 = (*(&self->_flags + 2) & 0x20) == 0;
  }

  if (v5 != v7 && v8)
  {
    [(UISplitViewControllerPanelImpl *)self _updateDisplayModeButtonItem];

    [(UISplitViewControllerPanelImpl *)self _invalidateAllowsTriggeringSidebarKeyCommandAction];
  }
}

- (BOOL)_alwaysHideSidebarToggleButton
{
  v2 = [(UISplitViewControllerPanelImpl *)self styleProvider];
  v3 = [v2 alwaysHideSidebarToggleButton];

  return v3;
}

- (void)_updateDisplayModeButtonItemForDisplayMode:(int64_t)a3
{
  v119 = [(UISplitViewControllerPanelImpl *)self style];
  if (v119 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v109 = [MEMORY[0x1E696AAA8] currentHandler];
    v110 = _UISplitViewControllerStyleDescription(v119);
    [v109 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:8720 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v110}];
  }

  v123 = [(UISplitViewControllerPanelImpl *)self _isCollapsedOrCollapsing];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v6 = [(UISplitViewControllerPanelImpl *)self _concreteDisplayModeForCurrentEnvironment];
  v7 = v6;
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = v6;
  }

  v9 = [(UISplitViewControllerPanelImpl *)self splitBehavior];
  if (!self->_sidebarToggleButtonItem && !v123)
  {
    v10 = [(UIBarButtonItem *)[_UIFloatableBarButtonItem alloc] initWithImage:0 style:0 target:self action:sel__triggerDisplayModeAction_];
    sidebarToggleButtonItem = self->_sidebarToggleButtonItem;
    self->_sidebarToggleButtonItem = v10;
  }

  v12 = [(UISplitViewControllerPanelImpl *)self _alwaysHideSidebarToggleButton];
  v13 = [(UISplitViewControllerPanelImpl *)self primaryEdge];
  v14 = v13 == 0;
  v165 = 0;
  v166 = &v165;
  v167 = 0x3032000000;
  v168 = __Block_byref_object_copy__58;
  v169 = __Block_byref_object_dispose__58;
  v170 = 0;
  v159 = 0;
  v160 = &v159;
  v161 = 0x3032000000;
  v162 = __Block_byref_object_copy__58;
  v163 = __Block_byref_object_dispose__58;
  v164 = 0;
  v153 = 0;
  v154 = &v153;
  v155 = 0x3032000000;
  v156 = __Block_byref_object_copy__58;
  v157 = __Block_byref_object_dispose__58;
  v158 = 0;
  v147 = 0;
  v148 = &v147;
  v149 = 0x3032000000;
  v150 = __Block_byref_object_copy__58;
  v151 = __Block_byref_object_dispose__58;
  v152 = 0;
  v141 = 0;
  v142 = &v141;
  v143 = 0x4010000000;
  v144 = "";
  v145 = 0u;
  v146 = 0u;
  [(_UIFloatableBarButtonItem *)self->_sidebarToggleButtonItem _setFloatable:0];
  v15 = [(UISplitViewControllerPanelImpl *)self _gestureIsForcingOverlay];
  if (!v12)
  {
    v17 = v15;
    v133[0] = MEMORY[0x1E69E9820];
    v133[1] = 3221225472;
    v134 = __77__UISplitViewControllerPanelImpl__updateDisplayModeButtonItemForDisplayMode___block_invoke;
    v135 = &unk_1E7103D80;
    v136 = &v165;
    v137 = &v159;
    v138 = &v153;
    v139 = &v147;
    v140 = &v141;
    obj = [(UISplitViewControllerPanelImpl *)self _navigationBarForSidebarButtonForDisplayMode:v8];
    if (v8 > 3)
    {
      if (v8 != 4)
      {
        if (v8 == 5)
        {
          if (v13)
          {
            v120 = [(UISplitViewControllerPanelImpl *)self _sidebarChevronSymbolImage];
          }

          else
          {
            v120 = 0;
          }

          v32 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
          v21 = [v32 viewController];
          v134(v133, v21);
          v121 = v32;
          v117 = 1;
          goto LABEL_61;
        }

        if (v8 == 6)
        {
          v120 = [(UISplitViewControllerPanelImpl *)self _sidebarToggleSymbolImage];
          goto LABEL_11;
        }

LABEL_31:
        v20 = [MEMORY[0x1E696AAA8] currentHandler];
        v21 = _UISplitViewControllerDisplayModeDescription(v8);
        [v20 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:8810 description:{@"Unsupported displayMode for configuring bar buttons. %@", v21}];
        v120 = 0;
        v121 = v20;
        v14 = 0;
        v117 = 0;
LABEL_61:

        v16 = v14;
LABEL_88:

        goto LABEL_89;
      }
    }

    else if (v8 != 1)
    {
      if (v8 != 2)
      {
        if (v8 == 3)
        {
          v112 = v9;
          v121 = [(UISplitViewControllerPanelImpl *)self _sidebarToggleSymbolImage];
          v114 = [(UISplitViewControllerPanelImpl *)self _wantsSideBarImageForOneOverSecondary];
          v117 = !v114;
          if (v13)
          {
            v14 = 0;
          }

          else
          {
            v14 = !v114;
          }

          if (v13)
          {
            v18 = v114;
          }

          else
          {
            v18 = 1;
          }

          if (v18)
          {
            v19 = v121;
            if (!v114)
            {
              v19 = 0;
            }

            v120 = v19;
          }

          else
          {
            v120 = [(UISplitViewControllerPanelImpl *)self _sidebarChevronSymbolImage];
          }

          if (v119 == 2 && ([(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220], (v113 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v111 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
            v28 = [v111 viewController];
            v113 = 0;
            v30 = 0;
            v29 = 1;
          }

          else
          {
            v13 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
            v28 = [v13 viewController];
            v29 = 0;
            v30 = 1;
          }

          v134(v133, v28);
          if (v30)
          {
          }

          if (v29)
          {
          }

          v16 = v14;
          v31 = v114;
          if (v119 != 2)
          {
            goto LABEL_87;
          }

          if (v114 || !v14)
          {
            if (!v14)
            {
              v16 = 0;
LABEL_87:
              [(_UIFloatableBarButtonItem *)self->_sidebarToggleButtonItem _setFloatable:!v17 & v31];
              v9 = v112;
              goto LABEL_88;
            }
          }

          else
          {
            v44 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];

            v31 = v114;
            if (!v44)
            {
              v16 = 1;
              goto LABEL_87;
            }
          }

          v45 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
          v46 = [v45 navigationController];

          v47 = [v46 viewControllers];
          if ([v47 count] < 2)
          {
            v16 = 0;
          }

          else
          {
            v48 = [v46 topViewController];
            v49 = [v48 navigationItem];
            v50 = [v49 hidesBackButton];
            v51 = v49;
            v16 = v50 ^ 1u;
          }

          goto LABEL_87;
        }

        goto LABEL_31;
      }

      if (v119 != 2)
      {
        goto LABEL_63;
      }

      v22 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
      if (v22)
      {
        v23 = (v9 & 0xFFFFFFFFFFFFFFFDLL) == 1;
      }

      else
      {
        v23 = 1;
      }

      v24 = v23;

      v25 = v24 ^ 1;
      if (v13)
      {
        v26 = 0;
      }

      else
      {
        v26 = v25;
      }

      if ((v24 & 1) == 0 && v26 == v25)
      {
        v117 = v24 ^ 1;
        v27 = 0;
        v120 = 0;
        v14 = v26;
        goto LABEL_65;
      }

      if ((v24 & 1) == 0)
      {
        v33 = [(UISplitViewControllerPanelImpl *)self _sidebarChevronSymbolImage];
        v117 = 1;
      }

      else
      {
LABEL_63:
        v33 = [(UISplitViewControllerPanelImpl *)self _sidebarToggleSymbolImage];
        v14 = 0;
        v117 = 0;
      }

      v120 = v33;

      v27 = 1;
LABEL_65:
      v34 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
      v35 = [v34 viewController];
      v134(v133, v35);

      perColumnViewControllers = self->_perColumnViewControllers;
      if (v119 == 2)
      {
        [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
      }

      else
      {
        [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
      }
      v37 = ;
      v38 = [v37 navigationController];

      v121 = v38;
      if (v14)
      {
        v39 = [v38 viewControllers];
        if ([v39 count] < 2)
        {
          v16 = 0;
        }

        else
        {
          v40 = [v121 topViewController];
          v41 = [v40 navigationItem];
          v115 = v27;
          v42 = v40;
          v16 = [v41 hidesBackButton] ^ 1;

          v27 = v115;
        }

        if (!v17)
        {
          goto LABEL_78;
        }
      }

      else
      {
        v16 = 0;
        if (!v17)
        {
LABEL_78:
          if (v9 == 3)
          {
            v43 = 0;
          }

          else
          {
            v43 = v27;
          }

          goto LABEL_81;
        }
      }

      v43 = 0;
LABEL_81:
      [(_UIFloatableBarButtonItem *)self->_sidebarToggleButtonItem _setFloatable:v43];
      goto LABEL_88;
    }

    v120 = [(UISplitViewControllerPanelImpl *)self _sidebarToggleSymbolImage];
    [(_UIFloatableBarButtonItem *)self->_sidebarToggleButtonItem _setFloatable:!v17];
    v14 = 0;
    v117 = 0;
    v16 = 0;
    goto LABEL_89;
  }

  obj = 0;
  v120 = 0;
LABEL_11:
  v14 = 0;
  v117 = 0;
  v16 = 1;
LABEL_89:
  if (v123 || ![(UISplitViewControllerPanelImpl *)self allowsSecondaryOnlyShortcutButton])
  {
    v122 = 0;
    v56 = 0;
LABEL_110:
    if (v14)
    {
      v116 = 0;
      v61 = v8 == 3 || v8 == 5;
    }

    else
    {
      v116 = 0;
      v61 = 0;
    }

    v60 = 1;
    goto LABEL_119;
  }

  if (!self->_secondaryOnlyShortcutButtonItem)
  {
    v52 = [[UIBarButtonItem alloc] initWithImage:0 style:0 target:self action:sel__triggerSecondaryOnlyShortcutAction_];
    secondaryOnlyShortcutButtonItem = self->_secondaryOnlyShortcutButtonItem;
    self->_secondaryOnlyShortcutButtonItem = v52;
  }

  v122 = [(UISplitViewControllerPanelImpl *)self _fullScreenSymbolImageForDisplayMode:v8];
  v54 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
  v55 = [v54 navigationController];
  v56 = [v55 navigationBar];

  v58 = v8 == 3 || v8 == 5;
  if ((v8 == 6 || v8 == v58 || [(UISplitViewControllerPanelImpl *)self splitBehavior]== 2) && (v8 != 1 || ![(UISplitViewControllerPanelImpl *)self _gestureIsForcingOverlayForDisplayMode:v7]))
  {
    goto LABEL_110;
  }

  if (v56 == obj)
  {
    v59 = v16;
  }

  else
  {
    v59 = 1;
  }

  if (v59)
  {
    v60 = 0;
    v61 = 0;
    v116 = 1;
  }

  else
  {
    v68 = self->_navBarForToggleButton;

    v60 = 0;
    v61 = 0;
    v116 = 1;
    v16 = 1;
    obj = v68;
  }

LABEL_119:
  v63 = [(UISplitViewControllerPanelImpl *)self _navigationBarForSidebarButtonForColumn:2];
  [v63 _setStaticNavBarButtonLingers:v61];

  v64 = self->_sidebarToggleButtonItem;
  if (!v64)
  {
LABEL_157:
    v65 = 0;
    goto LABEL_158;
  }

  if ((v16 & 1) == 0)
  {
    v61 = [(UIBarButtonItem *)v64 image];
    if (!v61)
    {
      v65 = 1;
      goto LABEL_140;
    }

    v66 = v9;
    v65 = 1;
    if (v14 | v117 || v66 == 3 || [(UIBarButtonItem *)self->_sidebarToggleButtonItem _showsBackButtonIndicator]|| [(UIBarButtonItem *)self->_sidebarToggleButtonItem _showsChevron])
    {
      goto LABEL_140;
    }

    v67 = [(UIBarButtonItem *)self->_sidebarToggleButtonItem title];
    if (v67)
    {
LABEL_139:

      goto LABEL_140;
    }
  }

  if (self->_navBarForToggleButton == obj && v16 == [(UIBarButtonItem *)self->_sidebarToggleButtonItem isHidden])
  {
    if (v16)
    {
      v65 = 0;
      goto LABEL_141;
    }

    if (v14 | v117)
    {
      v67 = 0;
      v65 = 0;
    }

    else
    {
      v69 = [(UIBarButtonItem *)self->_sidebarToggleButtonItem view];
      [v69 alpha];
      v65 = v70 < 0.01;

      v67 = 0;
    }

    goto LABEL_139;
  }

  v65 = 1;
  if ((v16 & 1) == 0)
  {
LABEL_140:
  }

LABEL_141:
  [(UIBarButtonItem *)self->_sidebarToggleButtonItem _setShowsBackButtonIndicator:v14];
  [(UIBarButtonItem *)self->_sidebarToggleButtonItem _setShowsChevron:v14];
  [(UIBarButtonItem *)self->_sidebarToggleButtonItem _setActsAsFakeBackButton:v14];
  v71 = self->_sidebarToggleButtonItem;
  if (v14)
  {
    [(UIBarButtonItem *)v71 setImage:v154[5]];
    [(UIBarButtonItem *)self->_sidebarToggleButtonItem setLargeContentSizeImage:v148[5]];
    [(UIBarButtonItem *)self->_sidebarToggleButtonItem setLargeContentSizeImageInsets:v142[4], v142[5], v142[6], v142[7]];
    v72 = self->_sidebarToggleButtonItem;
    if (v154[5])
    {
      [(UIBarButtonItem *)self->_sidebarToggleButtonItem setTitle:0];
      v73 = MEMORY[0x1E695E0F0];
    }

    else
    {
      if ([v166[5] length])
      {
        v76 = v166[5];
      }

      else
      {
        v76 = @" ";
      }

      [(UIBarButtonItem *)v72 setTitle:v76];
      if (v160[5])
      {
        v73 = v160[5];
      }

      else
      {
        v73 = MEMORY[0x1E695E0F0];
      }
    }

    [(UIBarButtonItem *)self->_sidebarToggleButtonItem _setBackButtonAlternateTitles:v73];
    [(UIBarButtonItem *)self->_sidebarToggleButtonItem _setLargeContentSizeTitle:0];
  }

  else
  {
    [(UIBarButtonItem *)v71 setImage:v120];
    [(UIBarButtonItem *)self->_sidebarToggleButtonItem setTitle:0];
    v74 = self->_sidebarToggleButtonItem;
    v75 = _UINSLocalizedStringWithDefaultValue(@"Sidebar", @"Sidebar");
    [(UIBarButtonItem *)v74 _setLargeContentSizeTitle:v75];
  }

  [(UIBarButtonItem *)self->_sidebarToggleButtonItem setHidden:v16];
  if (v117)
  {
    v77 = +[UIDragInteraction isEnabledByDefault];
  }

  else
  {
    v77 = 0;
  }

  [(UIBarButtonItem *)self->_sidebarToggleButtonItem setSpringLoaded:v77];
  navBarForToggleButton = self->_navBarForToggleButton;
  if (!((navBarForToggleButton == obj) | v16 & 1))
  {
    [(UINavigationBar *)navBarForToggleButton _setStaticNavBarButtonItem:0];
    [(UINavigationBar *)obj _setStaticNavBarButtonItem:self->_sidebarToggleButtonItem];
    objc_storeStrong(&self->_navBarForToggleButton, obj);
    goto LABEL_157;
  }

LABEL_158:
  v79 = self->_secondaryOnlyShortcutButtonItem;
  if (!v79)
  {
LABEL_174:
    v81 = 0;
    goto LABEL_175;
  }

  v80 = [(UIBarButtonItem *)v79 isHidden];
  v81 = v60 ^ v80;
  if ((v60 ^ v80) == 1)
  {
    [(UIBarButtonItem *)self->_secondaryOnlyShortcutButtonItem setHidden:v60];
  }

  v82 = [(UIBarButtonItem *)self->_secondaryOnlyShortcutButtonItem image];
  if (!v82 || (-[UIBarButtonItem image](self->_secondaryOnlyShortcutButtonItem, "image"), v83 = objc_claimAutoreleasedReturnValue(), v84 = [v83 isEqual:v122], v83, v82, (v84 & 1) == 0))
  {
    [(UIBarButtonItem *)self->_secondaryOnlyShortcutButtonItem setImage:v122];
    v81 = v60 & v80 ^ 1;
  }

  navBarForShortcutButton = self->_navBarForShortcutButton;
  if (navBarForShortcutButton != v56)
  {
    if (!v116)
    {
      goto LABEL_175;
    }

    goto LABEL_171;
  }

  v86 = [(UINavigationBar *)v56 _staticNavBarButtonItem];
  v87 = self->_secondaryOnlyShortcutButtonItem;

  v88 = v116 ^ 1;
  if (v86 == v87)
  {
    v88 = 1;
  }

  if ((v88 & 1) == 0)
  {
    navBarForShortcutButton = self->_navBarForShortcutButton;
LABEL_171:
    if (navBarForShortcutButton != self->_navBarForToggleButton)
    {
      [(UINavigationBar *)navBarForShortcutButton _setStaticNavBarButtonItem:0];
    }

    [(UINavigationBar *)v56 _setStaticNavBarButtonItem:self->_secondaryOnlyShortcutButtonItem];
    objc_storeStrong(&self->_navBarForShortcutButton, v56);
    goto LABEL_174;
  }

LABEL_175:
  if (v119 == 2)
  {
    v89 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
    v90 = v89 == 0;
  }

  else
  {
    v90 = 0;
  }

  if (v65 & v81)
  {
    v91 = self->_navBarForToggleButton;
    if (v91 != self->_navBarForShortcutButton)
    {
      v65 = 1;
      LOBYTE(v81) = 1;
      goto LABEL_187;
    }

    v92 = v91;
    v93 = v92;
    LOBYTE(v81) = v116 | v16;
    if ((v116 | v16))
    {
      if ((v60 & 1) == 0)
      {
        [(UINavigationBar *)v92 _setStaticNavBarButtonItem:self->_secondaryOnlyShortcutButtonItem];
        v65 = 0;
LABEL_186:

        goto LABEL_187;
      }
    }

    else
    {
      [(UINavigationBar *)v92 _setStaticNavBarButtonItem:self->_sidebarToggleButtonItem];
    }

    v65 = 1;
    goto LABEL_186;
  }

LABEL_187:
  v129 = 0;
  v130 = &v129;
  v131 = 0x2020000000;
  v132 = 0;
  v94 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30238];
  v95 = [v94 viewController];

  if (v95)
  {
    v96 = [(UINavigationBar *)self->_navBarForToggleButton delegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v98 = [(UINavigationBar *)self->_navBarForToggleButton delegate];
      v99 = v98;
      if (v98 && (*(v98 + 376) & 3u) - 1 <= 1)
      {
        v100 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30238];
        v101 = [v100 viewController];

        v128 = 0;
        v125[0] = MEMORY[0x1E69E9820];
        v125[1] = 3221225472;
        v125[2] = __77__UISplitViewControllerPanelImpl__updateDisplayModeButtonItemForDisplayMode___block_invoke_2;
        v125[3] = &unk_1E7103DA8;
        v102 = v101;
        v126 = v102;
        v127 = &v129;
        [v99 _enumerateAncestorViewControllersUntilStop:&v128 usingBlock:v125];
      }
    }
  }

  if (v65)
  {
    if ((v130[3] & 1) != 0 || !v123 || (-[UINavigationBar delegate](self->_navBarForToggleButton, "delegate"), v103 = objc_claimAutoreleasedReturnValue(), v104 = self->_perColumnViewControllers, [MEMORY[0x1E696AD98] numberWithInteger:v90], v105 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKeyedSubscript:](v104, "objectForKeyedSubscript:", v105), v106 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v106, "navigationController"), v107 = objc_claimAutoreleasedReturnValue(), v107, v106, v105, v103, v103 == v107))
    {
      [(UINavigationBar *)self->_navBarForToggleButton _setNeedsStaticNavBarButtonUpdate];
    }
  }

  if (v81)
  {
    [(UINavigationBar *)self->_navBarForShortcutButton _setNeedsStaticNavBarButtonUpdate];
  }

  if ([(_UIFloatableBarButtonItem *)self->_sidebarToggleButtonItem _isFloating])
  {
    v108 = [(_UIFloatableBarButtonItem *)self->_sidebarToggleButtonItem _configuredFloatableView];
    [v108 setTintColor:0];
  }

  _Block_object_dispose(&v129, 8);

  _Block_object_dispose(&v141, 8);
  _Block_object_dispose(&v147, 8);

  _Block_object_dispose(&v153, 8);
  _Block_object_dispose(&v159, 8);

  _Block_object_dispose(&v165, 8);
}

void __77__UISplitViewControllerPanelImpl__updateDisplayModeButtonItemForDisplayMode___block_invoke(void *a1, void *a2)
{
  v3 = [a2 navigationItem];
  v21 = [v3 _effectiveBackBarButtonItem];

  v4 = [v21 title];
  v5 = *(a1[4] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [v21 _backButtonAlternateTitles];
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [v21 image];
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = [v21 largeContentSizeImage];
  v14 = *(a1[7] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  [v21 largeContentSizeImageInsets];
  v16 = *(a1[8] + 8);
  v16[4] = v17;
  v16[5] = v18;
  v16[6] = v19;
  v16[7] = v20;
}

uint64_t __77__UISplitViewControllerPanelImpl__updateDisplayModeButtonItemForDisplayMode___block_invoke_2(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (*(result + 32) == a2)
  {
    *a3 = 1;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (void)_updateDisplayModeButtonItem
{
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    animatingToDisplayMode = self->_animatingToDisplayMode;

    [(UISplitViewControllerPanelImpl *)self _updateDisplayModeButtonItemForDisplayMode:animatingToDisplayMode];
  }

  else
  {

    [(UISplitViewControllerPanelImpl *)self _unspecifiedStyleUpdateDisplayModeButtonItem];
  }
}

- (void)_unspecifiedStyleTriggerDisplayModeAction:(id)a3
{
  v4 = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
  v5 = [(UISplitViewControllerPanelImpl *)self _effectiveTargetDisplayMode];
  if ((v5 - 2) >= 2)
  {
    if (v5 != 1)
    {
      return;
    }

    v11 = [(UISplitViewControllerPanelImpl *)self panelController];
    v12 = [v11 currentState];
    v14 = [v12 stateRequest];

    if (v4)
    {
      [v14 setLeadingWidth:0.0];
    }

    else
    {
      [v14 setTrailingWidth:0.0];
    }

    v9 = [(UISplitViewControllerPanelImpl *)self panelController];
    [v9 animateToRequest:v14];
  }

  else
  {
    [(UISplitViewControllerPanelImpl *)self _setPanelConfigurationWithIsPrimaryShown:1 shouldUseOverlay:v5 == 3];
    v6 = [(UISplitViewControllerPanelImpl *)self panelController];
    v14 = [v6 uncachedPossibleStates];

    v7 = [(UISplitViewControllerPanelImpl *)self panelController];
    v8 = [v7 currentState];
    v9 = [v8 stateRequest];

    v10 = minNonzeroPrimaryWidthInStates(v14, v4);
    if (v4)
    {
      [v9 setLeadingWidth:v10];
    }

    else
    {
      [v9 setTrailingWidth:v10];
    }

    v13 = [(UISplitViewControllerPanelImpl *)self panelController];
    [v13 animateToRequest:v9];
  }
}

- (void)_updateTriggerSidebarKeyCommandTitleForNewDisplayMode:(int64_t)a3
{
  if ([(UISplitViewControllerPanelImpl *)self style]== 2 && ([(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    if ((a3 - 4) >= 3)
    {
LABEL_4:
      flags = self->_flags;
      if ((*&flags & 0x800000) == 0)
      {
        return;
      }

      v7 = (*&flags & 0xFFFFFFFFFF7FFFFFLL);
      goto LABEL_9;
    }
  }

  else if (a3 == 1)
  {
    goto LABEL_4;
  }

  flags = self->_flags;
  if ((*&flags & 0x800000) != 0)
  {
    return;
  }

  v7 = (*&flags | 0x800000);
LABEL_9:
  self->_flags = v7;
  if ((*&flags & 0x400000) != 0)
  {
    v8 = +[UIMenuSystem mainSystem];
    [v8 setNeedsRevalidate];
  }
}

- (void)_validateTriggerSidebarKeyCommand:(id)a3
{
  flags = self->_flags;
  v4 = a3;
  if ((*&flags & 0x800000) != 0)
  {
    v5 = @"Hide Sidebar";
  }

  else
  {
    v5 = @"Show Sidebar";
  }

  v6 = _UINSLocalizedStringWithDefaultValue(v5, v5);
  [v4 setTitle:v6];
}

- (void)_invalidateAllowsTriggeringSidebarKeyCommandAction
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v2 = [WeakRetained viewIfLoaded];
  [v2 setNeedsLayout];
}

- (void)_updateAllowsTriggeringSidebarKeyCommandAction
{
  if ([(UISplitViewControllerPanelImpl *)self style]&& ![(UISplitViewControllerPanelImpl *)self _alwaysHideSidebarToggleButton])
  {
    flags = self->_flags;
    if ((*&flags & 0x400000) != 0)
    {
      return;
    }

    v4 = (*&flags | 0x400000);
  }

  else
  {
    v3 = self->_flags;
    if ((*&v3 & 0x400000) == 0)
    {
      return;
    }

    v4 = (*&v3 & 0xFFFFFFFFFFBFFFFFLL);
  }

  self->_flags = v4;
  v6 = +[UIMenuSystem mainSystem];
  [v6 setNeedsRevalidate];
}

- (void)_triggerSidebarKeyCommandAction:(id)a3
{
  v5 = [(UISplitViewControllerPanelImpl *)self style];
  if (v5 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = _UISplitViewControllerStyleDescription(v5);
    [v9 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:9126 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v10}];
  }

  if (![(UISplitViewControllerPanelImpl *)self _isCollapsedOrCollapsing])
  {
    v6 = [(UISplitViewControllerPanelImpl *)self displayMode];
    if (v5 == 2)
    {
      v7 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];

      if (v7)
      {
        v8 = 1;
        if (v6 > 6)
        {
LABEL_9:

          [(UISplitViewControllerPanelImpl *)self _transitionFromDisplayMode:v6 toDisplayMode:v8];
          return;
        }

        if (((1 << v6) & 0x56) == 0)
        {
          if (v6 != 3)
          {
            goto LABEL_9;
          }

          if ((*(&self->_flags + 2) & 2) != 0)
          {
            [(UISplitViewControllerPanelImpl *)self setUserGeneratedDisplayMode:2, 1];
          }
        }
      }
    }

    v8 = [(UISplitViewControllerPanelImpl *)self _nextTargetDisplayModeForDisplayMode:v6 showMoreIfPossible:1];
    goto LABEL_9;
  }
}

- (void)_triggerSecondaryOnlyShortcutAction:(id)a3
{
  v4 = [(UISplitViewControllerPanelImpl *)self displayMode];
  if (v4 == 1)
  {
    v5 = [(UISplitViewControllerPanelImpl *)self _nextTargetDisplayModeForDisplayMode:1 showMoreIfPossible:1];
  }

  else
  {
    v5 = 1;
  }

  [(UISplitViewControllerPanelImpl *)self _transitionFromDisplayMode:v4 toDisplayMode:v5 updateSplitBehaviorOverrides:0 userGenerated:1];
}

- (void)_triggerDisplayModeAction:(id)a3
{
  v8 = a3;
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    v4 = [(UISplitViewControllerPanelImpl *)self displayMode];
    v5 = [(UISplitViewControllerPanelImpl *)self _nextTargetDisplayModeForDisplayMode:v4 showMoreIfPossible:1];
    v6 = [(UISplitViewControllerPanelImpl *)self _allowClientAnimationCoordination];
    v7 = [(UISplitViewControllerPanelImpl *)self panelController];
    [v7 setAnimationRequestShouldCoordinate:v6];

    if (qword_1ED49D968 != -1)
    {
      dispatch_once(&qword_1ED49D968, &__block_literal_global_1604);
    }

    [(UISplitViewControllerPanelImpl *)self _transitionFromDisplayMode:v4 toDisplayMode:v5];
  }

  else
  {
    [(UISplitViewControllerPanelImpl *)self _unspecifiedStyleTriggerDisplayModeAction:v8];
  }
}

- (void)_displayModeBarButtonItemWasUsedForFirstTime:(id)a3
{
  v3 = [(UISplitViewControllerPanelImpl *)self panelController];
  [v3 setNeedsUpdate];
}

- (id)_childContainingSender:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(UISplitViewControllerPanelImpl *)self panelController];
    v6 = [v5 allViewControllers];

    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([v4 _isMemberOfViewControllerHierarchy:v10])
          {
            v7 = v10;
            goto LABEL_13;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
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
    v7 = 0;
  }

  return v7;
}

- (int64_t)_unspecifiedStyleDisplayModeForState:(id)a3
{
  v4 = a3;
  v5 = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
  if (!v4)
  {
    v7 = +[UIDevice currentDevice];
    v8 = [v7 userInterfaceIdiom];

    if ((v8 & 0xFFFFFFFFFFFFFFFBLL) != 1 || ![(UISplitViewControllerPanelImpl *)self _iPadShouldUseOverlayInCurrentEnvironment])
    {
      goto LABEL_13;
    }

LABEL_14:
    v9 = 1;
    goto LABEL_15;
  }

  v6 = v5;
  if ([v4 isCollapsed])
  {
LABEL_13:
    v9 = 2;
    goto LABEL_15;
  }

  if (!v6)
  {
    if (([v4 isTrailingVisible] & 1) == 0)
    {
      goto LABEL_14;
    }

    if ([v4 trailingOverlapsMain])
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (([v4 isLeadingVisible] & 1) == 0)
  {
    goto LABEL_14;
  }

  if (([v4 leadingOverlapsMain] & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_12:
  v9 = 3;
LABEL_15:

  return v9;
}

- (int64_t)_displayModeForState:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    if (v4)
    {
      v5 = v4;
      if (!self)
      {
        v11 = 0;
        goto LABEL_44;
      }

      v6 = [(UISplitViewControllerPanelImpl *)self style];
      if (v6 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v20 = [MEMORY[0x1E696AAA8] currentHandler];
        v21 = _UISplitViewControllerStyleDescription(v6);
        [v20 handleFailureInMethod:sel__columnStyleDisplayModeDirectlyFromState_ object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:9262 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v21}];
      }

      v7 = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
      v8 = [v5 _collapsedState];
      if (v8 == 1)
      {
        v9 = (*(&self->_flags + 3) >> 5) & 1;
      }

      else
      {
        v9 = 0;
      }

      if ((v8 - 3) >= 0xFFFFFFFFFFFFFFFELL && !v9)
      {
        v11 = 2;
LABEL_44:

        goto LABEL_45;
      }

      if (v7)
      {
        v12 = [v5 isLeadingVisible];
        v13 = [v5 isSupplementaryVisible];
        if (v12 && (v13 & 1) != 0)
        {
          if ([v5 leadingOverlapsMain])
          {
LABEL_19:
            v11 = 5;
            goto LABEL_44;
          }

LABEL_23:
          v14 = [v5 configuration];
          v15 = [v14 allowTotalWidthGreaterThanParent];

          if (v15)
          {
            v11 = 6;
          }

          else
          {
            v11 = 4;
          }

          goto LABEL_44;
        }

        if (v6 == 1)
        {
          v16 = v12;
        }

        else
        {
          v16 = 0;
        }

        if (v16)
        {
          v17 = [v5 leadingOverlapsMain];
          goto LABEL_39;
        }
      }

      else
      {
        v12 = [v5 isTrailingVisible];
        v13 = [v5 isSupplementaryVisible];
        if (v12 && (v13 & 1) != 0)
        {
          if ([v5 trailingOverlapsMain])
          {
            goto LABEL_19;
          }

          goto LABEL_23;
        }

        if (v6 == 1)
        {
          v18 = v12;
        }

        else
        {
          v18 = 0;
        }

        if (v18)
        {
          v17 = [v5 trailingOverlapsMain];
LABEL_39:
          if (v17)
          {
            v11 = 3;
          }

          else
          {
            v11 = 2;
          }

          goto LABEL_44;
        }
      }

      if ((v12 & 1) != 0 || !v13)
      {
        if (v12)
        {
          if (os_variant_has_internal_diagnostics())
          {
            v23 = __UIFaultDebugAssertLog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v25 = v5;
              _os_log_fault_impl(&dword_188A29000, v23, OS_LOG_TYPE_FAULT, "Unsupported UISlidingBarState (primary visible and supplementary not visible) for calculating displayMode. This is an internal UIKit problem. %@", buf, 0xCu);
            }
          }

          else
          {
            v22 = *(__UILogGetCategoryCachedImpl("Assert", &_columnStyleDisplayModeDirectlyFromState____s_category) + 8);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v25 = v5;
              _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "Unsupported UISlidingBarState (primary visible and supplementary not visible) for calculating displayMode. This is an internal UIKit problem. %@", buf, 0xCu);
            }
          }
        }

        v11 = 1;
        goto LABEL_44;
      }

      v17 = [v5 supplementaryOverlapsMain];
      goto LABEL_39;
    }

    v10 = [(UISplitViewControllerPanelImpl *)self _concreteDisplayModeForCurrentEnvironment];
  }

  else
  {
    v10 = [(UISplitViewControllerPanelImpl *)self _unspecifiedStyleDisplayModeForState:v4];
  }

  v11 = v10;
LABEL_45:

  return v11;
}

- (void)_pushOverrideOfReportedDisplayMode:(int64_t)a3
{
  overrideReportedDisplayModeStack = self->_overrideReportedDisplayModeStack;
  if (!overrideReportedDisplayModeStack)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_overrideReportedDisplayModeStack;
    self->_overrideReportedDisplayModeStack = v6;

    overrideReportedDisplayModeStack = self->_overrideReportedDisplayModeStack;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(NSMutableArray *)overrideReportedDisplayModeStack addObject:v8];
}

- (void)_popOverrideOfReportedDisplayMode
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v4 = [(NSMutableArray *)self->_overrideReportedDisplayModeStack count];
  if (has_internal_diagnostics)
  {
    if (!v4)
    {
      v5 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "UISVCPanelImpl _popOverrideOfReportedDisplayMode: stack is empty, can't pop", buf, 2u);
      }
    }
  }

  else if (!v4)
  {
    v6 = *(__UILogGetCategoryCachedImpl("Assert", &_popOverrideOfReportedDisplayMode___s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "UISVCPanelImpl _popOverrideOfReportedDisplayMode: stack is empty, can't pop", v7, 2u);
    }
  }

  [(NSMutableArray *)self->_overrideReportedDisplayModeStack removeLastObject];
}

- (BOOL)_iPadShouldUseOverlayInCurrentEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  if ((*&self->_flags & 0x100) != 0)
  {
    transitioningToOrientation = self->_transitioningToOrientation;
    goto LABEL_3;
  }

  transitioningToOrientation = [(UISplitViewControllerPanelImpl *)self _svcViewWindowOrientation];
  if ((*&self->_flags & 0x100) != 0)
  {
LABEL_3:
    width = self->_transitioningToSize.width;
    goto LABEL_6;
  }

  v6 = [WeakRetained view];
  [v6 bounds];
  width = v7;

LABEL_6:
  v8 = [(UISplitViewControllerPanelImpl *)self _fullScreenStateForOrientation:transitioningToOrientation viewWidth:width];
  v9 = (transitioningToOrientation - 1) < 2;
  if (v8 == 2)
  {
    v9 = 0;
  }

  v10 = v8 == 1 || v9;

  return v10;
}

- (BOOL)_iPhoneShouldUseOverlayInCurrentEnvironment
{
  v3 = [(UISplitViewControllerPanelImpl *)self usesDeviceOverlayPreferences]&& [(UISplitViewControllerPanelImpl *)self prefersOverlayInRegularWidthPhone]|| +[UISplitViewController _automaticDisplayModeOnPhoneUsesOverlayInLandscapeDefaultValue];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v5 = ([WeakRetained presentsWithGesture] & 1) != 0 || -[UISplitViewControllerDisplayModeBarButtonItem _hasBeenUsed](self->_unspecifiedStyleDisplayModeButtonItem, "_hasBeenUsed");

  return v3 && v5;
}

- (int64_t)_currentInterfaceIdiom
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v3 = [WeakRetained traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 != -1)
  {
    return v4;
  }

  v6 = +[UIDevice currentDevice];
  v7 = [v6 userInterfaceIdiom];

  return v7;
}

- (int64_t)_fullScreenStateForOrientation:(int64_t)a3 viewWidth:(double)a4
{
  v7 = +[UIDevice currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 != 1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v10 = [WeakRetained _screen];

  v11 = objc_loadWeakRetained(&self->_svc);
  v12 = [v11 _window];
  v13 = [v12 _windowHostingScene];
  v14 = [v13 _sceneSessionRoleIsCarPlayOrNonInteractiveExternal];

  if ((v14 & 1) != 0 || ([v10 _boundsForInterfaceOrientation:a3], v15 <= a4))
  {
    v17 = 0;
  }

  else
  {
    v19 = fmax(v15, v16);
    v20 = a3 - 5;
    v21 = v15 * 0.5;
    if (v19 <= 1210.0 || v20 < 0xFFFFFFFFFFFFFFFELL || (v15 * 0.3 < a4 ? (v22 = v21 < a4) : (v22 = 1), v22))
    {
      if (v20 > 0xFFFFFFFFFFFFFFFDLL && v21 < a4 && v19 <= 1112.0 && v19 <= 1210.0)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }
    }

    else
    {
      v17 = 1;
    }
  }

  return v17;
}

- (BOOL)_setPanelConfigurationWithIsPrimaryShown:(BOOL)a3 isSupplementaryShown:(BOOL)a4 shouldUseOverlay:(BOOL)a5 dimMainIfNecessary:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v60[1] = *MEMORY[0x1E69E9840];
  v12 = [(UISplitViewControllerPanelImpl *)self style];
  if ((v12 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v52 = v12;
    v53 = [MEMORY[0x1E696AAA8] currentHandler];
    v54 = _UISplitViewControllerStyleDescription(v52);
    [v53 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:9477 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v54}];
  }

  v13 = v9 || v8;
  v14 = v9 && v8;
  v15 = 2;
  if (v9 && v8)
  {
    v15 = 4;
  }

  v16 = 2;
  if (v14)
  {
    v16 = 6;
  }

  if (v6)
  {
    v15 = v16;
  }

  v33 = v14 == 0;
  v17 = 3;
  if (!v33)
  {
    v17 = 5;
  }

  if (!v7)
  {
    v17 = v15;
  }

  if (v13 == 1)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1;
  }

  v57 = 0.0;
  v58 = 0.0;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v20 = [WeakRetained _existingView];
  v56 = v8;
  if (v20)
  {

    if (v13)
    {
      if (*(&self->_flags + 1))
      {
        width = self->_transitioningToSize.width;
        height = self->_transitioningToSize.height;
      }

      else
      {
        v21 = objc_loadWeakRetained(&self->_svc);
        v22 = [v21 view];
        [v22 bounds];
        width = v23;
        height = v25;
      }

      [(UISplitViewControllerPanelImpl *)self getPrimaryColumnWidth:&v58 supplementaryColumnWidth:&v57 forSize:v18 displayMode:v7 shouldUseOverlay:width, height];
      if (v58 <= 0.0)
      {
        v28 = MEMORY[0x1E695E0F0];
      }

      else
      {
        v38 = [MEMORY[0x1E696AD98] numberWithDouble:v58];
        v60[0] = v38;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:1];
      }

      v27 = v6;
      if (v57 <= 0.0)
      {
        v55 = MEMORY[0x1E695E0F0];
      }

      else
      {
        v39 = [MEMORY[0x1E696AD98] numberWithDouble:v57];
        v59 = v39;
        v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
      }

      goto LABEL_23;
    }

    v27 = v6;
  }

  else
  {
    v27 = v6;
  }

  v28 = MEMORY[0x1E695E0F0];
  v55 = MEMORY[0x1E695E0F0];
LABEL_23:
  v29 = [(UISplitViewControllerPanelImpl *)self _nextTargetDisplayModeForDisplayMode:v18 showMoreIfPossible:0];
  v30 = [(UISplitViewControllerPanelImpl *)self panelController];
  [v30 configuration];
  v32 = v31 = v18;

  if (v29)
  {
    v33 = v29 == v31;
  }

  else
  {
    v33 = 1;
  }

  v34 = !v33;
  v35 = !v33 || v7;
  v36 = !v9 | v35;
  v37 = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
  if (v9 && v56)
  {
    goto LABEL_47;
  }

  if (!v9)
  {
    if (v37)
    {
      [v32 leadingWidths];
    }

    else
    {
      [v32 trailingWidths];
    }
    v40 = ;

    v28 = v40;
  }

  if (v56)
  {
LABEL_47:
    v41 = v55;
  }

  else
  {
    v41 = [v32 supplementaryWidths];
  }

  [(_UIHyperConstantExtender *)self->_extender _maximumDistance];
  [v32 setRubberBandExtension:?];
  [v32 setSupplementaryEdge:self->_primaryEdge];
  [v32 setLeadingMayBeHidden:v36 & v37];
  [v32 setTrailingMayBeHidden:v36 & !v37];
  v42 = v31 < 4 && v34;
  v43 = v42 || v7;
  v44 = !v56 || v43;
  [v32 setSupplementaryMayBeHidden:v44];
  v45 = 0.0;
  if (v7)
  {
    v45 = 1.0;
  }

  [v32 setMinimumMainWidthFraction:v45];
  if (v37)
  {
    v46 = v28;
  }

  else
  {
    v46 = MEMORY[0x1E695E0F0];
  }

  if (v37)
  {
    v47 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v47 = v28;
  }

  [v32 setLeadingWidths:v46];
  [v32 setTrailingWidths:v47];
  [v32 setSupplementaryWidths:v41];
  [v32 setAllowTotalWidthGreaterThanParent:!v7 & v27];
  v48 = v7 && [(UISplitViewControllerPanelImpl *)self userGeneratedDisplayMode]== 3;
  [v32 setForceOverlay:v48];
  v49 = ([v32 forceOverlay] & 1) != 0 || -[UISplitViewControllerPanelImpl splitBehavior](self, "splitBehavior") != 1;
  [v32 setShouldFadeStaticNavBarButton:v49];
  v50 = [(UISplitViewControllerPanelImpl *)self panelController];
  [v50 setConfiguration:v32];

  return v34;
}

- (BOOL)_setPanelConfigurationWithIsPrimaryShown:(BOOL)a3 shouldUseOverlay:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v39[1] = *MEMORY[0x1E69E9840];
  v8 = [(UISplitViewControllerPanelImpl *)self style];
  if (v8)
  {
    v36 = v8;
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    v38 = _UISplitViewControllerStyleDescription(v36);
    [v37 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:9542 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v38}];
  }

  v9 = MEMORY[0x1E695E0F0];
  v10 = MEMORY[0x1E695E0F0];
  if ((*&self->_flags & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v12 = [WeakRetained _existingView];

    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_svc);
      v14 = [v13 view];
      [v14 bounds];
      [(UISplitViewControllerPanelImpl *)self _primaryColumnWidthForSize:v4 shouldUseOverlay:v15, v16];
      v18 = v17;

      v19 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
      v39[0] = v19;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
    }

    else
    {
      v10 = MEMORY[0x1E695E0F0];
    }
  }

  v20 = 2;
  if (v4)
  {
    v20 = 3;
    v21 = 1.0;
  }

  else
  {
    v21 = 0.0;
  }

  if (v5)
  {
    v22 = v20;
  }

  else
  {
    v22 = 1;
  }

  v23 = [(UISplitViewControllerPanelImpl *)self _effectiveTargetDisplayModeForDisplayMode:v22];
  v24 = [(UISplitViewControllerPanelImpl *)self panelController];
  v25 = [v24 configuration];
  v26 = [v25 copy];

  if (v23)
  {
    v27 = v23 == v22;
  }

  else
  {
    v27 = 1;
  }

  v28 = !v27;
  v29 = !v27 || v4;
  v30 = !v5 | v29;
  v31 = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
  [v26 setLeadingMayBeHidden:v30 & v31];
  [v26 setTrailingMayBeHidden:v30 & !v31];
  [v26 setMinimumMainWidthFraction:v21];
  if (v31)
  {
    v32 = v10;
  }

  else
  {
    v32 = v9;
  }

  if (v31)
  {
    v33 = v9;
  }

  else
  {
    v33 = v10;
  }

  [v26 setLeadingWidths:v32];
  [v26 setTrailingWidths:v33];
  v34 = [(UISplitViewControllerPanelImpl *)self panelController];
  [v34 setConfiguration:v26];

  return v28;
}

- (void)_stopTransitionsInViewController:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 _stopTransitionsImmediately];
  v5 = [v4 childViewControllers];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        [(UISplitViewControllerPanelImpl *)self _stopTransitionsInViewController:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_viewControllerChildViewControllersDidChange:(id)a3
{
  v29 = a3;
  v4 = [(UISplitViewControllerPanelImpl *)self _columnForViewController:v29];
  v5 = [(UISplitViewControllerPanelImpl *)&self->super.isa _columnForViewController:v29 forceExpandedResult:1];
  if ((v5 & 0x3FD) == 0)
  {
    v6 = v5;
    perColumnViewControllers = self->_perColumnViewControllers;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
    v9 = [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:v8];
    v10 = [v9 navigationControllerWrapper];
    if (v10 == v29)
    {
      v18 = [v29 _isTabBarController];

      if ((v18 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v11 = self->_perColumnViewControllers;
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
      v13 = [(NSMutableDictionary *)v11 objectForKeyedSubscript:v12];
      v14 = [v13 viewController];
      if (v14 == v29)
      {
        v27 = self->_perColumnViewControllers;
        v15 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
        v16 = v27;
        v28 = v15;
        v26 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:?];
        v17 = [v26 navigationController];
        if ([v17 _isCreatedBySplitViewController])
        {
          v25 = [v29 _isTabBarController];

          if (v25)
          {
            goto LABEL_11;
          }

LABEL_8:
          [(UISplitViewControllerPanelImpl *)self setViewController:v29 forColumn:v6];
          goto LABEL_17;
        }
      }
    }
  }

LABEL_11:
  if (v4 != 3 && v4 != 999)
  {
    v19 = self->_perColumnViewControllers;
    v20 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
    v21 = [(NSMutableDictionary *)v19 objectForKeyedSubscript:v20];
    v22 = [v21 navigationController];

    if ([v22 isNavigationBarHidden])
    {
      v23 = [v22 _targetNavigationBarForUISplitViewControllerSidebarButton];
      v24 = [v22 _existingNavigationBar];

      if (v23 != v24)
      {
        [(UISplitViewControllerPanelImpl *)self _updateDisplayModeButtonItem];
      }
    }
  }

LABEL_17:
}

- (UIViewController)_viewControllerForObservableScrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  if ([(UIPanelController *)self->_panelController isCollapsed])
  {
    v4 = [(UISplitViewControllerPanelImpl *)self panelController];
    v5 = [v4 collapsedViewController];

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_svc);

      if (v5 != v6)
      {
        v7 = [v5 _viewControllerForObservableScrollView];

        WeakRetained = v7;
      }
    }

    else if ([(UIPanelController *)self->_panelController collapsedState]!= 1)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v17 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "Unexpected nil collapsedVC in the panelController", buf, 2u);
        }
      }

      else
      {
        v16 = *(__UILogGetCategoryCachedImpl("Assert", &_viewControllerForObservableScrollView___s_category) + 8);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *v18 = 0;
          _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Unexpected nil collapsedVC in the panelController", v18, 2u);
        }
      }
    }
  }

  else
  {
    animatingToDisplayMode = self->_animatingToDisplayMode;
    if (!animatingToDisplayMode)
    {
      animatingToDisplayMode = [(UISplitViewControllerPanelImpl *)self displayMode];
    }

    if (animatingToDisplayMode == 1)
    {
      if ([(UISplitViewControllerPanelImpl *)self style])
      {
        v9 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
        v10 = [v9 viewController];
        v11 = [v10 _viewControllerForObservableScrollView];

        WeakRetained = v11;
      }

      else
      {
        v13 = [(UIPanelController *)self->_panelController mainViewController];
        v14 = v13;
        if (!v13)
        {
          v14 = [(UIPanelController *)self->_panelController preservedDetailController];
        }

        v15 = [v14 _viewControllerForObservableScrollView];

        if (!v13)
        {
        }

        WeakRetained = v15;
      }
    }
  }

  return WeakRetained;
}

- (UIViewController)_childViewControllerForSpokenContent
{
  v2 = [(UISplitViewControllerPanelImpl *)self panelController];
  if ([v2 isCollapsed])
  {
    [v2 collapsedViewController];
  }

  else
  {
    [v2 mainViewController];
  }
  v3 = ;

  return v3;
}

- (BOOL)_isViewControllerForObservableScrollViewAmbiguous
{
  animatingToDisplayMode = self->_animatingToDisplayMode;
  if (!animatingToDisplayMode)
  {
    animatingToDisplayMode = [(UISplitViewControllerPanelImpl *)self displayMode];
  }

  return (animatingToDisplayMode != 1) & ~[(UISplitViewControllerPanelImpl *)self isCollapsed];
}

- (void)_tabBarControllerDidChangeSelection:(id)a3
{
  v4 = a3;
  if ([(UISplitViewControllerPanelImpl *)self _columnForViewController:?]== 2)
  {
    [(UISplitViewControllerPanelImpl *)self setViewController:v4 forColumn:2];
  }
}

- (int64_t)_columnForMonitoredNavigationController:(id)a3
{
  v4 = a3;
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    v5 = [(UISplitViewControllerPanelImpl *)self _columnForViewController:v4];
    if (v5 != 999)
    {
      perColumnViewControllers = self->_perColumnViewControllers;
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
      v8 = [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:v7];
      v9 = [v8 navigationController];

      if (v9 != v4)
      {
        v5 = 999;
      }
    }
  }

  else
  {
    v5 = 999;
  }

  return v5;
}

- (void)_updateDisplayModeButtonItemIfNecessaryForChangingNavigationController:(id)a3
{
  v22 = a3;
  v5 = [(UISplitViewControllerPanelImpl *)self style];
  if (v5 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = _UISplitViewControllerStyleDescription(v5);
    [v20 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:9702 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v21}];
  }

  if (![v22 isNavigationBarHidden] || (objc_msgSend(v22, "_targetNavigationBarForUISplitViewControllerSidebarButton"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "_existingNavigationBar"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v6 != v7))
  {
    v8 = [(UISplitViewControllerPanelImpl *)self panelController];
    v9 = [v8 collapsedState];

    if (!v9)
    {
      v10 = [v22 transitionCoordinator];
      [(UISplitViewControllerPanelImpl *)self _updateDisplayModeButtonItemAndResetForCanceledAnimationWithTransitionCoordinator:v10];

      v11 = [(UISplitViewControllerPanelImpl *)self _columnForMonitoredNavigationController:v22];
      if (v11 <= 1)
      {
        v12 = v11;
        v13 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
        v14 = [v13 navigationController];
        v15 = [v14 navigationBar];
        [v15 _refreshBackButtonMenu];

        if (v5 == 2)
        {
          v16 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];

          if (!v12)
          {
            if (v16)
            {
              v17 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
              v18 = [v17 navigationController];
              v19 = [v18 navigationBar];
              [v19 _refreshBackButtonMenu];
            }
          }
        }
      }
    }
  }
}

- (void)_navigationControllerDidUpdateStack:(id)a3
{
  v18 = a3;
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    v4 = [(UISplitViewControllerPanelImpl *)self _columnForMonitoredNavigationController:v18];
    if (v4 <= 2)
    {
      v5 = v4;
      v6 = [v18 topViewController];
      perColumnViewControllers = self->_perColumnViewControllers;
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
      v9 = [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:v8];
      v10 = [v9 viewController];

      if (v6 != v10)
      {
        v11 = [(UISplitViewControllerPanelImpl *)self _isCollapsedOrCollapsing];
        if (v5 || !v11)
        {
          if (v5 == 2)
          {
            v12 = &unk_1EFE30208;
          }

          else
          {
            v12 = &unk_1EFE30220;
          }

          if ((v5 | 2) != 2)
          {
            v14 = 0;
            goto LABEL_14;
          }

LABEL_12:
          v13 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:v12];
          v14 = [v13 navigationControllerWrapper];

LABEL_14:
          v15 = [[_UISplitViewControllerColumnContents alloc] initWithViewController:v6 navigationController:v18 navigationControllerWrapper:v14];
          v16 = self->_perColumnViewControllers;
          v17 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
          [(NSMutableDictionary *)v16 setObject:v15 forKey:v17];

          goto LABEL_15;
        }

        if (([(UISplitViewControllerPanelImpl *)self _columnForViewController:v6]- 3) < 0xFFFFFFFFFFFFFFFELL)
        {
          v12 = &unk_1EFE30220;
          goto LABEL_12;
        }
      }

LABEL_15:
      [(UISplitViewControllerPanelImpl *)self _updateDisplayModeButtonItemIfNecessaryForChangingNavigationController:v18];
    }
  }
}

- (void)_navigationControllerDidChangeNavigationBarHidden:(id)a3
{
  v9 = a3;
  v4 = [(UISplitViewControllerPanelImpl *)self panelController];
  [v4 navigationControllerDidChangeNavigationBarHidden:v9];

  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    v5 = [v9 _targetNavigationBarForUISplitViewControllerSidebarButton];
    v6 = [v9 _existingNavigationBar];
    v7 = v6;
    if (v5 == v6)
    {
      v8 = [v9 isNavigationBarHidden];

      if (v8)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    if ([(UISplitViewControllerPanelImpl *)self _columnForMonitoredNavigationController:v9]<= 2)
    {
      [(UISplitViewControllerPanelImpl *)self _updateDisplayModeButtonItemIfNecessaryForChangingNavigationController:v9];
    }
  }

LABEL_7:
}

- (void)_updateDisplayModeButtonItemAndResetForCanceledAnimationWithTransitionCoordinator:(id)a3
{
  v4 = a3;
  [(UISplitViewControllerPanelImpl *)self _updateDisplayModeButtonItem];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __116__UISplitViewControllerPanelImpl__updateDisplayModeButtonItemAndResetForCanceledAnimationWithTransitionCoordinator___block_invoke;
  v5[3] = &unk_1E7102C50;
  objc_copyWeak(&v6, &location);
  [v4 animateAlongsideTransition:0 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __116__UISplitViewControllerPanelImpl__updateDisplayModeButtonItemAndResetForCanceledAnimationWithTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 isCancelled])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _updateDisplayModeButtonItem];
  }
}

- (void)_navigationController:(id)a3 navigationBar:(id)a4 topItemUpdatedContentLayout:(id)a5
{
  v14 = a3;
  v7 = a4;
  v8 = [(UISplitViewControllerPanelImpl *)self _navigationBarForSidebarButtonForDisplayMode:[(UISplitViewControllerPanelImpl *)self displayMode]];
  navBarForToggleButton = v8;
  if (!v8)
  {
    navBarForToggleButton = self->_navBarForToggleButton;
  }

  v10 = navBarForToggleButton;

  if (v10 == v7 && ([v14 isNavigationBarHidden] & 1) == 0)
  {
    v11 = [(UISplitViewControllerPanelImpl *)self panelController];
    v12 = [v11 collapsedState];

    if (v12 <= 1)
    {
      v13 = [v14 transitionCoordinator];
      [(UISplitViewControllerPanelImpl *)self _updateDisplayModeButtonItemAndResetForCanceledAnimationWithTransitionCoordinator:v13];
    }
  }
}

- (void)_navigationController:(id)a3 navigationBar:(id)a4 itemBackButtonUpdated:(id)a5
{
  if ([(UISplitViewControllerPanelImpl *)self _columnForMonitoredNavigationController:a3, a4, a5]<= 1)
  {

    [(UISplitViewControllerPanelImpl *)self _updateDisplayModeButtonItem];
  }
}

- (id)_navigationController:(id)a3 navigationBarAdditionalActionsForBackButtonMenu:(id)a4
{
  v38[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(UISplitViewControllerPanelImpl *)self style];
  if (v7 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = _UISplitViewControllerStyleDescription(v7);
    [v31 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:9822 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v32}];
  }

  v8 = [(UISplitViewControllerPanelImpl *)self panelController];
  if ([v8 collapsedState])
  {

LABEL_18:
    v17 = 0;
    goto LABEL_19;
  }

  v9 = [(UIBarButtonItem *)self->_sidebarToggleButtonItem _actsAsFakeBackButton];

  if (!v9)
  {
    goto LABEL_18;
  }

  v10 = [(UISplitViewControllerPanelImpl *)self _columnForMonitoredNavigationController:v6];
  v11 = [(UISplitViewControllerPanelImpl *)self splitBehavior];
  v12 = [(UISplitViewControllerPanelImpl *)self displayMode];
  v13 = v12;
  if (v10 != 2 || v12 != 1 || v11 != 2)
  {
    v17 = 0;
    if (v7 != 2 || v10 != 1)
    {
      goto LABEL_19;
    }

    v18 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
    if (!v18)
    {
      goto LABEL_18;
    }

    if (v13 == 3)
    {
    }

    else
    {

      v17 = 0;
      if (v13 != 2 || v11 != 3)
      {
        goto LABEL_19;
      }
    }
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v34 = __104__UISplitViewControllerPanelImpl__navigationController_navigationBarAdditionalActionsForBackButtonMenu___block_invoke;
  v35 = &unk_1E7103DF8;
  v36 = self;
  if (v7 != 2)
  {
    if (v10 == 2)
    {
      v14 = __104__UISplitViewControllerPanelImpl__navigationController_navigationBarAdditionalActionsForBackButtonMenu___block_invoke;
LABEL_12:
      v15 = v14(v33, 0);
      v16 = 0;
LABEL_32:
      v24 = v15 != 0;
      v25 = v16 != 0;
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v22 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];

  if (!v22)
  {
    if (v10 == 2)
    {
      v23 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];

      v14 = v34;
      if (v23)
      {
        goto LABEL_12;
      }

      v16 = v34(v33, 1);
LABEL_31:
      v15 = 0;
      goto LABEL_32;
    }

LABEL_30:
    v16 = 0;
    goto LABEL_31;
  }

  if (v10 == 2)
  {
    v16 = v34(v33, 1);
  }

  else
  {
    v16 = 0;
  }

  v30 = v34(v33, 0);
  v15 = v30;
  v24 = v30 != 0;
  v25 = v16 != 0;
  if (v30 && v16)
  {
    v38[0] = v16;
    v38[1] = v30;
    v27 = MEMORY[0x1E695DEC8];
    v28 = v38;
    v29 = 2;
LABEL_43:
    v17 = [v27 arrayWithObjects:v28 count:v29];
    goto LABEL_44;
  }

LABEL_33:
  if (v24 || v25)
  {
    if (v25)
    {
      v26 = v16;
    }

    else
    {
      v26 = v15;
    }

    v37 = v26;
    v27 = MEMORY[0x1E695DEC8];
    v28 = &v37;
    v29 = 1;
    goto LABEL_43;
  }

  v17 = 0;
LABEL_44:

LABEL_19:
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = MEMORY[0x1E695E0F0];
  }

  v20 = v19;

  return v19;
}

id __104__UISplitViewControllerPanelImpl__navigationController_navigationBarAdditionalActionsForBackButtonMenu___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 viewController];
  v8 = [v7 navigationItem];
  v9 = [v8 _backButtonTitleAllowingGenericTitles:0];

  if ([v9 length])
  {
    v10 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v11 = [v9 stringByTrimmingCharactersInSet:v10];

    v9 = v11;
  }

  if ([v9 length])
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = _UISplitViewControllerColumnDescription(a2);
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
    v15 = [v12 stringWithFormat:@"Show%@<UISplitViewController:%p>", v13, WeakRetained];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __104__UISplitViewControllerPanelImpl__navigationController_navigationBarAdditionalActionsForBackButtonMenu___block_invoke_2;
    v18[3] = &unk_1E7103DD0;
    v18[4] = *(a1 + 32);
    v18[5] = a2;
    v16 = [UIAction actionWithTitle:v9 image:0 identifier:v15 handler:v18];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)_allowingMutationsInDelegateCallback:(id)a3
{
  flags = self->_flags;
  self->_flags = (*&flags & 0xFFFFFFFFEFFFFFFFLL);
  (*(a3 + 2))(a3, a2);
  self->_flags = (*&self->_flags & 0xFFFFFFFFEFFFFFFFLL | (((*&flags >> 28) & 1) << 28));
}

- (BOOL)_hasDoubleSideBar
{
  v4 = [(UISplitViewControllerPanelImpl *)self style];
  v5 = v4;
  if ((v4 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = _UISplitViewControllerStyleDescription(v5);
    [v6 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:9887 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v9}];

    v7 = 0;
  }

  else
  {
    if (v4 != 2)
    {
      return 0;
    }

    v6 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
    v7 = v6 != 0;
  }

  return v7;
}

- (_UISplitViewControllerStyle)styleProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v3 = [WeakRetained _styleProvider];

  return v3;
}

- (UISplitViewController)splitViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);

  return WeakRetained;
}

- (int64_t)_defaultPrimaryOffscreenGestureModeForCurrentIdiom
{
  if (qword_1ED49D968 != -1)
  {
    dispatch_once(&qword_1ED49D968, &__block_literal_global_1604);
  }

  return 0;
}

- (void)_handleArrowPress:(id)a3
{
  v7 = a3;
  v4 = [(UISplitViewControllerPanelImpl *)self _sidebarArrowButtonRecognizer];

  v5 = v7;
  if (v4 == v7)
  {
    v6 = [v7 state] == 3;
    v5 = v7;
    if (v6 || (v6 = [v7 state] == 4, v5 = v7, v6))
    {
      *&self->_flags &= ~0x200000000000uLL;
    }
  }
}

- (void)_updateConfigurationBackgroundStyle
{
  primaryBackgroundStyle = self->_primaryBackgroundStyle;
  if (primaryBackgroundStyle == 999 || primaryBackgroundStyle == 1)
  {
    v5 = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
    v6 = !v5;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = [(UISplitViewControllerPanelImpl *)self panelController];
  v11 = [v8 configuration];

  [v11 _setLeadingBackgroundStyle:v7];
  [v11 _setTrailingBackgroundStyle:v6];
  v9 = (*(&self->_flags + 5) & 0x10) != 0 && [(UISplitViewControllerPanelImpl *)self style]== 2;
  [v11 _setSupplementaryAdoptsPrimaryBackgroundStyle:v9];
  v10 = [(UISplitViewControllerPanelImpl *)self panelController];
  [v10 setConfiguration:v11];
}

- (void)setPrimaryBackgroundStyle:(int64_t)a3
{
  if (self->_primaryBackgroundStyle != a3)
  {
    self->_primaryBackgroundStyle = a3;
    [(UISplitViewControllerPanelImpl *)self _updateConfigurationBackgroundStyle];
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    [WeakRetained _updateTraitsIfNecessary];
  }
}

- (BOOL)_shouldShowNSToolbarSidebarToggle
{
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    return ![(UISplitViewControllerPanelImpl *)self _alwaysHideSidebarToggleButton];
  }

  else
  {
    return 1;
  }
}

- (void)setSupplementaryColumnAdoptsPrimaryBackgroundStyle:(BOOL)a3
{
  flags = self->_flags;
  if (((((*&flags & 0x100000000000) == 0) ^ a3) & 1) == 0)
  {
    v6 = 0x100000000000;
    if (!a3)
    {
      v6 = 0;
    }

    self->_flags = (*&flags & 0xFFFFEFFFFFFFFFFFLL | v6);
    [(UISplitViewControllerPanelImpl *)self _updateConfigurationBackgroundStyle];
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    [WeakRetained _updateTraitsIfNecessary];
  }
}

- (UIColor)primaryBackgroundColor
{
  v2 = [(UISplitViewControllerPanelImpl *)self styleProvider];
  v3 = [v2 primaryBackgroundColor];

  return v3;
}

- (BOOL)_wantsFloatingSidebar
{
  v2 = [(UISplitViewControllerPanelImpl *)self panelController];
  v3 = [v2 wantsFloatingSidebar];

  return v3;
}

- (void)_setWantsFloatingSidebar:(BOOL)a3
{
  v3 = a3;
  v4 = [(UISplitViewControllerPanelImpl *)self panelController];
  [v4 setWantsFloatingSidebar:v3];
}

- (UISplitViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_UITabContainerView)tabBarHostedView
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBarHostedView);

  return WeakRetained;
}

@end