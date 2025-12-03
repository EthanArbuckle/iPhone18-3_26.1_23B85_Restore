@interface UISplitViewControllerPanelImpl
- (BOOL)_allowMoveToSecondaryOnlyGetIsInForcedOverlayFromGestureOrRestrictedWidth:(BOOL *)width;
- (BOOL)_alwaysHideSidebarToggleButton;
- (BOOL)_configurationPermitsFluidCloseGestureWithPrimaryShown:(BOOL)shown supplementaryShown:(BOOL)supplementaryShown;
- (BOOL)_configurationPermitsFluidOpenGestureWithPrimaryShown:(BOOL)shown supplementaryShown:(BOOL)supplementaryShown;
- (BOOL)_disableAutomaticKeyboardBehavior;
- (BOOL)_fluidGestureRecognizerShouldBegin:(id)begin;
- (BOOL)_gestureIsForcingOverlay;
- (BOOL)_hasDoubleSideBar;
- (BOOL)_hasPreferredInterfaceOrientationForPresentation;
- (BOOL)_iPadShouldUseOverlayInCurrentEnvironment;
- (BOOL)_iPhoneShouldUseOverlayInCurrentEnvironment;
- (BOOL)_interfaceIsCompactForWidth:(double)width;
- (BOOL)_isCollapsed;
- (BOOL)_isCollapsedOrCollapsing;
- (BOOL)_isDisplayModeBarButtonVisible;
- (BOOL)_isExpanding;
- (BOOL)_isPrimaryShown;
- (BOOL)_isRotating;
- (BOOL)_isSecondaryColumnCompactInTotalWidth:(double)width withPrimaryColumnWidth:(double)columnWidth supplementaryColumnWidth:(double)supplementaryColumnWidth;
- (BOOL)_isViewControllerForObservableScrollViewAmbiguous;
- (BOOL)_layoutPrimaryOnRight;
- (BOOL)_scrollViewPreventsGestureForHitView:(id)view;
- (BOOL)_setPanelConfigurationWithIsPrimaryShown:(BOOL)shown isSupplementaryShown:(BOOL)supplementaryShown shouldUseOverlay:(BOOL)overlay dimMainIfNecessary:(BOOL)necessary;
- (BOOL)_setPanelConfigurationWithIsPrimaryShown:(BOOL)shown shouldUseOverlay:(BOOL)overlay;
- (BOOL)_shouldReturnBoundsWidthForColumnWidth;
- (BOOL)_shouldShowNSToolbarSidebarToggle;
- (BOOL)_shouldZeroSafeAreaInsetsForViewController:(id)controller;
- (BOOL)_unspecifiedStyleGestureRecognizerShouldBegin:(id)begin;
- (BOOL)_usePaddingForEdgeInsetsForChildViewController:(id)controller;
- (BOOL)_wantsFloatingSidebar;
- (BOOL)_wantsSideBarImageForOneOverSecondary;
- (BOOL)allowsSecondaryOnlyShortcutButton;
- (BOOL)canTileSidebarColumn:(int64_t)column;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isCollapsed;
- (BOOL)isShowingColumn:(int64_t)column;
- (BOOL)panelController:(id)controller collapseOntoPrimaryViewController:(id)viewController;
- (BOOL)panelController:(id)controller collapsePrimaryViewController:(id)viewController withFallbackSecondaryViewController:(id)secondaryViewController onTopOfSupplementaryViewController:(id)supplementaryViewController transitionCoordinator:(id)coordinator;
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)prefersInterfaceOrientationLocked;
- (BOOL)prefersPointerLocked;
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation;
- (BOOL)shouldUpdateFocusInContext:(id)context;
- (CGRect)_frameForChildContentContainer:(id)container;
- (CGSize)_contentSizeForChildViewController:(id)controller inPopoverController:(id)popoverController;
- (CGSize)_defaultViewSizeForResolvingDisplayModeOrSplitBehavior;
- (CGSize)_predictedDetailSizeForPredictedEndState:(id)state;
- (CGSize)_preferredContentSize;
- (CGSize)_screenSize;
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size;
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
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute;
- (UIEdgeInsets)_tvOSColumnStyleExtraInsetsForChildViewController:(id)controller;
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
- (UISplitViewControllerPanelImpl)initWithSplitViewController:(id)controller;
- (UIView)preferredFocusedView;
- (UIViewController)_childViewControllerForSpokenContent;
- (UIViewController)_viewControllerForObservableScrollView;
- (UIViewController)childViewControllerForStatusBarStyle;
- (UIViewController)masterViewController;
- (UIViewControllerTransitionCoordinator)transitionCoordinator;
- (_UISplitViewControllerStyle)styleProvider;
- (_UITabContainerView)tabBarHostedView;
- (double)_contentMarginForChildViewController:(id)controller;
- (double)_defaultMaximumPrimaryColumnWidthForSize:(CGSize)size;
- (double)_defaultMaximumSupplementaryColumnWidthForSize:(CGSize)size;
- (double)_inspectorDividerPosition;
- (double)_primaryColumnWidthForSize:(CGSize)size isCompact:(BOOL)compact shouldUseOverlay:(BOOL)overlay;
- (double)_primaryColumnWidthForSize:(CGSize)size shouldUseOverlay:(BOOL)overlay;
- (double)_primaryDividerPosition;
- (double)_supplementaryDividerPosition;
- (double)effectiveMinimumPrimaryColumnWidth;
- (double)panelController:(id)controller expectedWidthForColumnForViewController:(id)viewController;
- (double)primaryColumnWidth;
- (double)supplementaryColumnWidth;
- (float)gutterWidth;
- (id)_childContainingSender:(id)sender;
- (id)_columnStyleDelegate;
- (id)_currentPrimaryChildViewController;
- (id)_currentSupplementaryChildViewController;
- (id)_enterFullScreenSymbolImage;
- (id)_fullScreenSymbolImageForDisplayMode:(int64_t)mode;
- (id)_hiddenColumnsInCurrentEnvironmentWithConcreteDisplayMode:(int64_t)mode;
- (id)_leaveFullScreenSymbolImage;
- (id)_navigationBarForSidebarButtonForColumn:(int64_t)column;
- (id)_navigationBarForSidebarButtonForDisplayMode:(int64_t)mode;
- (id)_navigationController:(id)controller navigationBarAdditionalActionsForBackButtonMenu:(id)menu;
- (id)_newBarContentAnimationClippingView;
- (id)_nextVisibleViewControllerForResponderAfterChildViewController:(id)controller;
- (id)_orderedPreferredFocusedViewControllers;
- (id)_sidebarChevronSymbolImage;
- (id)_sidebarToggleSymbolImage;
- (id)_topLevelViewControllerForColumn:(int64_t)column;
- (id)_traitCollectionForChildEnvironment:(id)environment;
- (id)_unspecifiedStyleChildViewControllersToSendViewWillTransitionToSize;
- (id)_unspecifiedStyleViewControllers;
- (id)leadingVisibleViewController;
- (id)navigationControllerForColumn:(int64_t)column;
- (id)panelController:(id)controller navigationBarForViewController:(id)viewController;
- (id)panelController:(id)controller separateSecondaryViewControllerFromPrimaryViewController:(id)viewController;
- (id)panelController:(id)controller separateSupplementaryViewControllerFromPrimaryViewController:(id)viewController;
- (id)panelController:(id)controller unspecifiedStyleSeparateSecondaryViewControllerFromPrimaryViewController:(id)viewController;
- (id)panelController:(id)controller willBeginAnimatedTransitionToStateRequest:(id)request predictedEndState:(id)state predictedDuration:(double)duration;
- (id)panelControllerWillUpdate:(id)update;
- (id)primaryViewControllerForCollapsingPanelController:(id)controller;
- (id)primaryViewControllerForExpandingPanelController:(id)controller;
- (id)trailingVisibleViewController;
- (id)viewControllerForColumn:(int64_t)column;
- (int64_t)_columnForMonitoredNavigationController:(id)controller;
- (int64_t)_columnForView:(id)view getIsContent:(BOOL *)content;
- (int64_t)_concreteDisplayModeForCurrentEnvironment;
- (int64_t)_currentInterfaceIdiom;
- (int64_t)_defaultPrimaryOffscreenGestureModeForCurrentIdiom;
- (int64_t)_displayModeForState:(id)state;
- (int64_t)_effectiveTargetDisplayMode;
- (int64_t)_effectiveTargetDisplayModeForDisplayMode:(int64_t)mode;
- (int64_t)_fullScreenStateForOrientation:(int64_t)orientation viewWidth:(double)width;
- (int64_t)_greatestAllowedAutohidingDisplayModeInSize:(CGSize)size;
- (int64_t)_nextTargetDisplayModeForDisplayMode:(int64_t)mode showMoreIfPossible:(BOOL)possible;
- (int64_t)_svcOrientation;
- (int64_t)_svcViewWindowOrientation;
- (int64_t)_unspecifiedStyleDisplayModeForState:(id)state;
- (int64_t)allowedDisplayModeForCurrentSplitBehaviorGivenDisplayMode:(int64_t)mode;
- (int64_t)defaultDisplayModeForSize:(CGSize)size;
- (int64_t)defaultDisplayModeForSplitBehavior:(int64_t)behavior;
- (int64_t)displayMode;
- (int64_t)displayModeButtonVisibility;
- (int64_t)preferredCenterStatusBarStyle;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (int64_t)preferredLeadingStatusBarStyle;
- (int64_t)preferredTrafficLightStyle;
- (int64_t)preferredTrailingStatusBarStyle;
- (int64_t)splitBehavior;
- (int64_t)splitBehaviorForSize:(CGSize)size;
- (int64_t)splitBehaviorInCurrentEnvironment;
- (int64_t)topColumnForCollapsingPanelController:(id)controller;
- (int64_t)userGeneratedDisplayMode;
- (int64_t)validDisplayModeWithAllColumns;
- (uint64_t)_columnForViewController:(char)controller forceExpandedResult:;
- (unint64_t)_effectivePrimaryRectEdge;
- (unint64_t)preferredScreenEdgesDeferringSystemGestures;
- (unint64_t)supportedInterfaceOrientations;
- (void)_allowingMutationsInDelegateCallback:(id)callback;
- (void)_changeToDisplayMode:(int64_t)mode fromPreferredDisplayMode:(int64_t)displayMode;
- (void)_commonInit;
- (void)_didChangeToFirstResponder:(id)responder;
- (void)_didEndSnapshotSession;
- (void)_didUpdateFocusInContext:(id)context;
- (void)_displayModeBarButtonItemWasUsedForFirstTime:(id)time;
- (void)_fluidPresentationGestureRecognizerChanged:(id)changed;
- (void)_fluidUpdatePresentationGestureRecognizers;
- (void)_getPrimaryShown:(BOOL *)shown shouldUseOverlay:(BOOL *)overlay;
- (void)_getPrimaryShown:(BOOL *)shown supplementaryShown:(BOOL *)supplementaryShown shouldUseOverlay:(BOOL *)overlay dimMainIfNecessary:(BOOL *)necessary;
- (void)_getPrimaryShown:(BOOL *)shown supplementaryShown:(BOOL *)supplementaryShown shouldUseOverlay:(BOOL *)overlay dimMainIfNecessary:(BOOL *)necessary forDisplayMode:(int64_t)mode;
- (void)_handleArrowPress:(id)press;
- (void)_handleFocusMovementDidFail:(id)fail;
- (void)_initWithCoder:(id)coder;
- (void)_invalidateAllowsTriggeringSidebarKeyCommandAction;
- (void)_marginInfoForChild:(id)child leftMargin:(double *)margin rightMargin:(double *)rightMargin;
- (void)_navigationController:(id)controller navigationBar:(id)bar itemBackButtonUpdated:(id)updated;
- (void)_navigationController:(id)controller navigationBar:(id)bar topItemUpdatedContentLayout:(id)layout;
- (void)_navigationControllerDidChangeNavigationBarHidden:(id)hidden;
- (void)_navigationControllerDidUpdateStack:(id)stack;
- (void)_notifyFluidPresentationGestureDidEnd;
- (void)_notifyFluidPresentationGestureWillBegin;
- (void)_popOverrideOfReportedDisplayMode;
- (void)_popoverController:(id)controller didChangeFromVisible:(BOOL)visible;
- (void)_popoverController:(id)controller willChangeToVisible:(BOOL)visible;
- (void)_presentationGestureRecognizerChanged:(id)changed;
- (void)_primaryColumnWidthAffectingPropertyDidChange;
- (void)_pushOverrideOfReportedDisplayMode:(int64_t)mode;
- (void)_revealSecondaryColumnIfNecessary;
- (void)_setAllowsDimmedSecondaryAsDeepestUnambiguousResponder:(BOOL)responder;
- (void)_setDisplayModeButtonItemTitle:(id)title;
- (void)_setFluidSidebarPresentationGestureRecognizer:(id)recognizer;
- (void)_setForceDisplayModeBarButtonHidden:(BOOL)hidden;
- (void)_setIgnoresSheetContext:(BOOL)context;
- (void)_setInteractiveSidebarWidth:(double)width;
- (void)_setNumberOfSidebarColumnsVisibleFromGesture:(unint64_t)gesture withVelocity:(double)velocity;
- (void)_setPresentationGestureRecognizer:(id)recognizer;
- (void)_setPrimaryShownFromGesture:(BOOL)gesture hideAll:(BOOL)all;
- (void)_setShowsSeparators:(BOOL)separators;
- (void)_setUsesExtraWidePrimaryColumn:(BOOL)column;
- (void)_setVisibleToggleButtonRequiresPresentsWithGesture:(BOOL)gesture;
- (void)_setWantsFloatingSidebar:(BOOL)sidebar;
- (void)_stopTransitionsInViewController:(id)controller;
- (void)_supplementaryOrPrimaryColumnWidthAffectingPropertyDidChange;
- (void)_tabBarControllerDidChangeSelection:(id)selection;
- (void)_transitionFromDisplayMode:(int64_t)mode toDisplayMode:(int64_t)displayMode updateSplitBehaviorOverrides:(BOOL)overrides userGenerated:(BOOL)generated;
- (void)_triggerDisplayModeAction:(id)action;
- (void)_triggerSecondaryOnlyShortcutAction:(id)action;
- (void)_triggerSidebarKeyCommandAction:(id)action;
- (void)_unspecifiedShowDetailViewController:(id)controller onTargetVC:(id)c sender:(id)sender;
- (void)_unspecifiedStyleChangeToDisplayMode:(int64_t)mode fromPreferredDisplayMode:(int64_t)displayMode;
- (void)_unspecifiedStylePanelController:(id)controller didChangeToState:(id)state withSize:(CGSize)size;
- (void)_unspecifiedStylePresentationGestureRecognizerChanged:(id)changed;
- (void)_unspecifiedStyleSetPrimaryShownFromGesture:(BOOL)gesture;
- (void)_unspecifiedStyleSetViewControllers:(id)controllers;
- (void)_unspecifiedStyleTriggerDisplayModeAction:(id)action;
- (void)_unspecifiedStyleUpdateDisplayModeButtonItem;
- (void)_updateAllowsTriggeringSidebarKeyCommandAction;
- (void)_updateChildContentMargins;
- (void)_updateConfigurationBackgroundStyle;
- (void)_updateDimmingView;
- (void)_updateDisplayModeButtonItem;
- (void)_updateDisplayModeButtonItemAndResetForCanceledAnimationWithTransitionCoordinator:(id)coordinator;
- (void)_updateDisplayModeButtonItemForDisplayMode:(int64_t)mode;
- (void)_updateDisplayModeButtonItemIfNecessaryForChangingNavigationController:(id)controller;
- (void)_updatePresentationGestureRecognizer;
- (void)_updateSplitBehaviorOverridesForTransitionFromDisplayMode:(uint64_t)mode toDisplayMode:(uint64_t)displayMode shouldResizeIfNecessary:(uint64_t)necessary;
- (void)_updateTriggerSidebarKeyCommandTitleForNewDisplayMode:(int64_t)mode;
- (void)_validateTriggerSidebarKeyCommand:(id)command;
- (void)_viewControllerChildViewControllersDidChange:(id)change;
- (void)_willBeginSnapshotSession;
- (void)_willShowCollapsedDetailViewController:(id)controller inTargetController:(id)targetController;
- (void)animateToRequest:(id)request;
- (void)callDeprecatedWillHideDelegateCallbackIfNecessary;
- (void)callDeprecatedWillShowDelegateCallbackIfNecessary;
- (void)dealloc;
- (void)decodeRestorableStateWithCoder:(id)coder;
- (void)dimmingViewWasTapped:(id)tapped;
- (void)encodeRestorableStateWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)getPrimaryColumnWidth:(double *)width supplementaryColumnWidth:(double *)columnWidth forSize:(CGSize)size displayMode:(int64_t)mode isCompact:(BOOL)compact shouldUseOverlay:(BOOL)overlay;
- (void)getPrimaryColumnWidth:(double *)width supplementaryColumnWidth:(double *)columnWidth forSize:(CGSize)size displayMode:(int64_t)mode shouldUseOverlay:(BOOL)overlay;
- (void)getPrimaryColumnWidth:(double *)width supplementaryColumnWidth:(double *)columnWidth forSize:(CGSize)size displayMode:(int64_t)mode splitBehavior:(int64_t)behavior isCompact:(BOOL)compact shouldUseOverlay:(BOOL)overlay;
- (void)hideColumn:(int64_t)column;
- (void)loadView;
- (void)panelController:(id)controller adjustLeadingViewController:(id)viewController forKeyboardInfo:(id)info;
- (void)panelController:(id)controller adjustTrailingViewController:(id)viewController forKeyboardInfo:(id)info;
- (void)panelController:(id)controller animateTransitionToStateRequest:(id)request predictedEndState:(id)state predictedDuration:(double)duration;
- (void)panelController:(id)controller collapsePrimaryViewController:(id)viewController withFallbackSecondaryViewController:(id)secondaryViewController transitionCoordinator:(id)coordinator;
- (void)panelController:(id)controller didChangeToState:(id)state withSize:(CGSize)size;
- (void)panelController:(id)controller didEndAnimatedTransitionToStateRequest:(id)request;
- (void)panelController:(id)controller willBeginAnimationToPrimarySize:(CGSize)size supplementarySize:(CGSize)supplementarySize secondarySize:(CGSize)secondarySize;
- (void)panelController:(id)controller willChangeToState:(id)state;
- (void)panelControllerDidCollapse:(id)collapse;
- (void)panelControllerDidExpand:(id)expand;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)preparePanelControllerForCollapse;
- (void)removeChildViewController:(id)controller;
- (void)sendColumnShowHideNotificationsForNewState:(id)state newDisplayMode:(int64_t)mode oldDisplayMode:(int64_t)displayMode;
- (void)sendWillHideColumn:(int64_t)column;
- (void)sendWillShowColumn:(int64_t)column;
- (void)setConfiguration:(id)configuration;
- (void)setDelegate:(id)delegate;
- (void)setDisplayModeButtonVisibility:(int64_t)visibility;
- (void)setGutterWidth:(float)width;
- (void)setHidesMasterViewInPortrait:(BOOL)portrait;
- (void)setMaximumPrimaryColumnWidth:(double)width;
- (void)setMaximumSupplementaryColumnWidth:(double)width;
- (void)setMinimumPrimaryColumnWidth:(double)width;
- (void)setMinimumSupplementaryColumnWidth:(double)width;
- (void)setPreferredDisplayMode:(int64_t)mode;
- (void)setPreferredPrimaryColumnWidth:(double)width;
- (void)setPreferredPrimaryColumnWidthFraction:(double)fraction;
- (void)setPreferredSupplementaryColumnWidth:(double)width;
- (void)setPreferredSupplementaryColumnWidthFraction:(double)fraction;
- (void)setPrefersOverlayInRegularWidthPhone:(BOOL)phone;
- (void)setPresentsWithGesture:(BOOL)gesture;
- (void)setPrimaryBackgroundStyle:(int64_t)style;
- (void)setPrimaryEdge:(int64_t)edge;
- (void)setShowsSecondaryOnlyButton:(BOOL)button;
- (void)setStateRequest:(id)request;
- (void)setStyle:(int64_t)style;
- (void)setSupplementaryColumnAdoptsPrimaryBackgroundStyle:(BOOL)style;
- (void)setUserGeneratedDisplayMode:(int64_t)mode;
- (void)setUsesDeviceOverlayPreferences:(BOOL)preferences;
- (void)setView:(id)view;
- (void)setViewController:(id)controller forColumn:(int64_t)column;
- (void)setViewControllers:(id)controllers;
- (void)showColumn:(int64_t)column;
- (void)showDetailViewController:(id)controller sender:(id)sender;
- (void)showViewController:(id)controller sender:(id)sender;
- (void)toggleMasterVisible:(id)visible;
- (void)traitCollectionDidChange:(id)change;
- (void)unloadViewForced:(BOOL)forced;
- (void)updatePanelControllerForViewControllerChangeInColumn:(int64_t)column alwaysAnimate:(BOOL)animate shouldUpdateCollapsedNavStack:(BOOL)stack;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation UISplitViewControllerPanelImpl

- (UISplitViewControllerPanelImpl)initWithSplitViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = UISplitViewControllerPanelImpl;
  v5 = [(UISplitViewControllerPanelImpl *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_svc, controllerCopy);
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

  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  [panelController setDelegate:self];

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

  _extender = [(_UIHyperInteractor *)self->_interactor _extender];
  extender = self->_extender;
  self->_extender = _extender;

  styleProvider = [(UISplitViewControllerPanelImpl *)self styleProvider];
  [styleProvider maximumRubberbandingDistance];
  [(_UIHyperConstantExtender *)self->_extender _setMaximumDistance:?];

  v22 = objc_loadWeakRetained(&self->_svc);
  traitCollection = [v22 traitCollection];
  self->_presentsWithGesture = [traitCollection userInterfaceIdiom] != 6;

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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIFocusMovementDidFailNotification" object:0];

  v4.receiver = self;
  v4.super_class = UISplitViewControllerPanelImpl;
  [(UISplitViewControllerPanelImpl *)&v4 dealloc];
}

- (void)_handleFocusMovementDidFail:(id)fail
{
  if (qword_1ED49D968 != -1)
  {
    dispatch_once(&qword_1ED49D968, &__block_literal_global_1604);
  }
}

- (void)_initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"UISplitViewControllerPreferredDisplayMode"])
  {
    self->_preferredDisplayMode = [coderCopy decodeIntegerForKey:@"UISplitViewControllerPreferredDisplayMode"];
  }

  if ([coderCopy containsValueForKey:@"UISplitViewControllerPreferredSplitBehavior"])
  {
    self->_preferredSplitBehavior = [coderCopy decodeIntegerForKey:@"UISplitViewControllerPreferredSplitBehavior"];
  }

  if ([coderCopy containsValueForKey:@"UISplitViewControllerPreferredPrimaryColumnWidthFraction"])
  {
    [coderCopy decodeDoubleForKey:@"UISplitViewControllerPreferredPrimaryColumnWidthFraction"];
    self->_preferredPrimaryColumnWidthFraction = v4;
  }

  if ([coderCopy containsValueForKey:@"UISplitViewControllerPreferredPrimaryColumnWidth"])
  {
    [coderCopy decodeDoubleForKey:@"UISplitViewControllerPreferredPrimaryColumnWidth"];
    self->_preferredPrimaryColumnWidth = v5;
  }

  if ([coderCopy containsValueForKey:@"UISplitViewControllerMaximumPrimaryColumnWidth"])
  {
    [coderCopy decodeDoubleForKey:@"UISplitViewControllerMaximumPrimaryColumnWidth"];
    self->_maximumPrimaryColumnWidth = v6;
  }

  if ([coderCopy containsValueForKey:@"UISplitViewControllerMinimumPrimaryColumnWidth"])
  {
    [coderCopy decodeDoubleForKey:@"UISplitViewControllerMinimumPrimaryColumnWidth"];
    self->_minimumPrimaryColumnWidth = v7;
  }

  if ([coderCopy containsValueForKey:@"UISplitViewControllerPreferredSupplementaryColumnWidthFraction"])
  {
    [coderCopy decodeDoubleForKey:@"UISplitViewControllerPreferredSupplementaryColumnWidthFraction"];
    self->_preferredSupplementaryColumnWidthFraction = v8;
  }

  if ([coderCopy containsValueForKey:@"UISplitViewControllerPreferredSupplementaryColumnWidth"])
  {
    [coderCopy decodeDoubleForKey:@"UISplitViewControllerPreferredSupplementaryColumnWidth"];
    self->_preferredSupplementaryColumnWidth = v9;
  }

  if ([coderCopy containsValueForKey:@"UISplitViewControllerMaximumSupplementaryColumnWidth"])
  {
    [coderCopy decodeDoubleForKey:@"UISplitViewControllerMaximumSupplementaryColumnWidth"];
    self->_maximumSupplementaryColumnWidth = v10;
  }

  if ([coderCopy containsValueForKey:@"UISplitViewControllerMinimumSupplementaryColumnWidth"])
  {
    [coderCopy decodeDoubleForKey:@"UISplitViewControllerMinimumSupplementaryColumnWidth"];
    self->_minimumSupplementaryColumnWidth = v11;
  }

  if ([coderCopy containsValueForKey:@"UISplitViewControllerPrimaryEdge"])
  {
    self->_primaryEdge = [coderCopy decodeIntegerForKey:@"UISplitViewControllerPrimaryEdge"];
  }

  if ([coderCopy containsValueForKey:@"UISplitViewControllerPresentsWithGesture"])
  {
    self->_presentsWithGesture = [coderCopy decodeBoolForKey:@"UISplitViewControllerPresentsWithGesture"];
  }

  if ([coderCopy containsValueForKey:@"UISplitViewControllerShowsSecondaryOnlyButton"])
  {
    v12 = [coderCopy decodeBoolForKey:@"UISplitViewControllerShowsSecondaryOnlyButton"];
    v13 = 0x8000000;
    if (!v12)
    {
      v13 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFFFFF7FFFFFFLL | v13);
  }

  if ([coderCopy containsValueForKey:@"UISplitViewControllerUsesDeviceOverlayPreferences"])
  {
    v14 = [coderCopy decodeBoolForKey:@"UISplitViewControllerUsesDeviceOverlayPreferences"];
    v15 = 0x2000;
    if (!v14)
    {
      v15 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFFFFFFFFDFFFLL | v15);
  }

  if ([coderCopy containsValueForKey:@"UISplitViewControllerUsesExtraWidePrimaryColumn"])
  {
    v16 = [coderCopy decodeBoolForKey:@"UISplitViewControllerUsesExtraWidePrimaryColumn"];
    v17 = 4096;
    if (!v16)
    {
      v17 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFFFFFFFFEFFFLL | v17);
  }

  if ([coderCopy containsValueForKey:@"UISplitViewControllerPrimaryBackgroundStyle"])
  {
    -[UISplitViewControllerPanelImpl setPrimaryBackgroundStyle:](self, "setPrimaryBackgroundStyle:", [coderCopy decodeIntegerForKey:@"UISplitViewControllerPrimaryBackgroundStyle"]);
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  childViewControllers = [WeakRetained childViewControllers];
  v20 = [childViewControllers mutableCopy];

  if ([coderCopy containsValueForKey:@"UISplitViewControllerStyle"])
  {
    v21 = [coderCopy decodeIntegerForKey:@"UISplitViewControllerStyle"];
    if ((dyld_program_sdk_at_least() & 1) == 0 && v21 == 1)
    {
      v22 = objc_loadWeakRetained(&self->_svc);
      childViewControllers2 = [v22 childViewControllers];
      v21 = [childViewControllers2 count] != 1;
    }

    [(UIPanelController *)self->_panelController setStyle:v21];
  }

  [(UISplitViewControllerPanelImpl *)self setViewControllers:v20];
  if ([coderCopy containsValueForKey:@"UISplitViewControllerCompactColumnVC"])
  {
    v24 = [coderCopy decodeObjectForKey:@"UISplitViewControllerCompactColumnVC"];
    [(UISplitViewControllerPanelImpl *)self setViewController:v24 forColumn:3];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  preferredDisplayMode = self->_preferredDisplayMode;
  v10 = coderCopy;
  if (preferredDisplayMode)
  {
    [coderCopy encodeInteger:preferredDisplayMode forKey:@"UISplitViewControllerPreferredDisplayMode"];
    coderCopy = v10;
  }

  preferredSplitBehavior = self->_preferredSplitBehavior;
  if (preferredSplitBehavior)
  {
    [v10 encodeInteger:preferredSplitBehavior forKey:@"UISplitViewControllerPreferredSplitBehavior"];
    coderCopy = v10;
  }

  if (self->_preferredPrimaryColumnWidthFraction != -3.40282347e38)
  {
    [v10 encodeDouble:@"UISplitViewControllerPreferredPrimaryColumnWidthFraction" forKey:?];
    coderCopy = v10;
  }

  if (self->_preferredPrimaryColumnWidth != -3.40282347e38)
  {
    [v10 encodeDouble:@"UISplitViewControllerPreferredPrimaryColumnWidth" forKey:?];
    coderCopy = v10;
  }

  if (self->_maximumPrimaryColumnWidth != -3.40282347e38)
  {
    [v10 encodeDouble:@"UISplitViewControllerMaximumPrimaryColumnWidth" forKey:?];
    coderCopy = v10;
  }

  if (self->_minimumPrimaryColumnWidth != -3.40282347e38)
  {
    [v10 encodeDouble:@"UISplitViewControllerMinimumPrimaryColumnWidth" forKey:?];
    coderCopy = v10;
  }

  if (self->_preferredSupplementaryColumnWidthFraction != -3.40282347e38)
  {
    [v10 encodeDouble:@"UISplitViewControllerPreferredSupplementaryColumnWidthFraction" forKey:?];
    coderCopy = v10;
  }

  if (self->_preferredSupplementaryColumnWidth != -3.40282347e38)
  {
    [v10 encodeDouble:@"UISplitViewControllerPreferredSupplementaryColumnWidth" forKey:?];
    coderCopy = v10;
  }

  if (self->_maximumSupplementaryColumnWidth != -3.40282347e38)
  {
    [v10 encodeDouble:@"UISplitViewControllerMaximumSupplementaryColumnWidth" forKey:?];
    coderCopy = v10;
  }

  if (self->_minimumSupplementaryColumnWidth != -3.40282347e38)
  {
    [v10 encodeDouble:@"UISplitViewControllerMinimumSupplementaryColumnWidth" forKey:?];
    coderCopy = v10;
  }

  [coderCopy encodeInteger:self->_primaryEdge forKey:@"UISplitViewControllerPrimaryEdge"];
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
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  collapsedViewController = [panelController collapsedViewController];

  if (collapsedViewController)
  {
    v9[0] = collapsedViewController;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    v5 = objc_opt_new();
    _currentPrimaryChildViewController = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
    if (_currentPrimaryChildViewController)
    {
      [v5 addObject:_currentPrimaryChildViewController];
    }

    panelController2 = [(UISplitViewControllerPanelImpl *)self panelController];
    collapsedViewController = [panelController2 mainViewController];

    if (collapsedViewController)
    {
      [v5 addObject:collapsedViewController];
    }
  }

  return v5;
}

- (NSArray)viewControllers
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    panelController = [(UISplitViewControllerPanelImpl *)self panelController];
    collapsedViewController = [panelController collapsedViewController];

    if (collapsedViewController)
    {
      v10[0] = collapsedViewController;
      _unspecifiedStyleViewControllers = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    }

    else
    {
      _unspecifiedStyleViewControllers = objc_opt_new();
      _currentPrimaryChildViewController = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
      if (_currentPrimaryChildViewController)
      {
        [_unspecifiedStyleViewControllers addObject:_currentPrimaryChildViewController];
      }

      _currentSupplementaryChildViewController = [(UISplitViewControllerPanelImpl *)self _currentSupplementaryChildViewController];

      if (_currentSupplementaryChildViewController)
      {
        [_unspecifiedStyleViewControllers addObject:_currentSupplementaryChildViewController];
      }

      panelController2 = [(UISplitViewControllerPanelImpl *)self panelController];
      collapsedViewController = [panelController2 mainViewController];

      if (collapsedViewController)
      {
        [_unspecifiedStyleViewControllers addObject:collapsedViewController];
      }
    }
  }

  else
  {
    _unspecifiedStyleViewControllers = [(UISplitViewControllerPanelImpl *)self _unspecifiedStyleViewControllers];
  }

  return _unspecifiedStyleViewControllers;
}

- (void)_unspecifiedStyleSetViewControllers:(id)controllers
{
  controllersCopy = controllers;
  if ([controllersCopy count])
  {
    v4 = [controllersCopy objectAtIndexedSubscript:0];
  }

  else
  {
    v4 = 0;
  }

  if ([controllersCopy count] < 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [controllersCopy objectAtIndexedSubscript:1];
  }

  _isPrimaryLeading = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  v8 = panelController;
  if (_isPrimaryLeading)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  if (_isPrimaryLeading)
  {
    v10 = 0;
  }

  else
  {
    v10 = v4;
  }

  [panelController setLeadingViewController:v9];

  panelController2 = [(UISplitViewControllerPanelImpl *)self panelController];
  [panelController2 setMainViewController:v5];

  panelController3 = [(UISplitViewControllerPanelImpl *)self panelController];
  [panelController3 setTrailingViewController:v10];

  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    mutableChildViewControllers = [WeakRetained mutableChildViewControllers];

    v15 = [mutableChildViewControllers indexOfObjectIdenticalTo:v4];
    if (v15 && v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [mutableChildViewControllers exchangeObjectAtIndex:v15 withObjectAtIndex:0];
    }
  }
}

- (void)setViewControllers:(id)controllers
{
  v26 = *MEMORY[0x1E69E9840];
  controllersCopy = controllers;
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (!style)
  {
    [(UISplitViewControllerPanelImpl *)self _unspecifiedStyleSetViewControllers:controllersCopy];
    goto LABEL_30;
  }

  v6 = style;
  v7 = [controllersCopy count];
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
      v12 = [controllersCopy objectAtIndexedSubscript:0];
      [(UISplitViewControllerPanelImpl *)self setViewController:v12 forColumn:0];

      if (v8 == 1)
      {
        goto LABEL_28;
      }

      v17 = controllersCopy;
      v18 = 1;
LABEL_27:
      v20 = [v17 objectAtIndexedSubscript:v18];
LABEL_29:
      v21 = v20;
      [(UISplitViewControllerPanelImpl *)self setViewController:v20 forColumn:2];

      goto LABEL_30;
    }

    selfCopy2 = self;
    v16 = 0;
  }

  else
  {
    if (v8)
    {
      v13 = [controllersCopy objectAtIndexedSubscript:0];
      [(UISplitViewControllerPanelImpl *)self setViewController:v13 forColumn:0];

      if (v8 == 1)
      {
        v14 = objc_alloc_init(UIViewController);
        [(UISplitViewControllerPanelImpl *)self setViewController:v14 forColumn:1];
      }

      else
      {
        v19 = [controllersCopy objectAtIndexedSubscript:1];
        [(UISplitViewControllerPanelImpl *)self setViewController:v19 forColumn:1];

        if (v8 >= 3)
        {
          v17 = controllersCopy;
          v18 = 2;
          goto LABEL_27;
        }
      }

LABEL_28:
      v20 = objc_alloc_init(UIViewController);
      goto LABEL_29;
    }

    [(UISplitViewControllerPanelImpl *)self setViewController:0 forColumn:0];
    selfCopy2 = self;
    v16 = 1;
  }

  [(UISplitViewControllerPanelImpl *)selfCopy2 setViewController:0 forColumn:v16];
  [(UISplitViewControllerPanelImpl *)self setViewController:0 forColumn:2];
LABEL_30:
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    _columnStyleDelegate = [(UISplitViewControllerPanelImpl *)self _columnStyleDelegate];
    if (_columnStyleDelegate)
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

- (void)setPresentsWithGesture:(BOOL)gesture
{
  if (self->_presentsWithGesture != gesture)
  {
    self->_presentsWithGesture = gesture;
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
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  v3 = [panelController collapsedState] == 3;

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
    panelController = [(UISplitViewControllerPanelImpl *)self panelController];
    currentState = [panelController currentState];
    isCollapsed = [currentState isCollapsed];

    return isCollapsed;
  }
}

- (void)setPreferredDisplayMode:(int64_t)mode
{
  if (self->_preferredDisplayMode | mode)
  {
    self->_preferredDisplayMode = mode;
    [UISplitViewControllerPanelImpl _changeToDisplayMode:"_changeToDisplayMode:fromPreferredDisplayMode:" fromPreferredDisplayMode:?];
    *&self->_flags |= 0x200uLL;
  }
}

- (int64_t)displayMode
{
  if ([(NSMutableArray *)self->_overrideReportedDisplayModeStack count])
  {
    lastObject = [(NSMutableArray *)self->_overrideReportedDisplayModeStack lastObject];
    integerValue = [lastObject integerValue];
  }

  else
  {
    lastObject = [(UISplitViewControllerPanelImpl *)self panelController];
    currentState = [lastObject currentState];
    integerValue = [(UISplitViewControllerPanelImpl *)self _displayModeForState:currentState];
  }

  return integerValue;
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

- (void)setPreferredPrimaryColumnWidthFraction:(double)fraction
{
  if (self->_preferredPrimaryColumnWidthFraction != fraction)
  {
    self->_preferredPrimaryColumnWidthFraction = fraction;
    [(UISplitViewControllerPanelImpl *)self _primaryColumnWidthAffectingPropertyDidChange];
  }
}

- (void)setPreferredPrimaryColumnWidth:(double)width
{
  if (self->_preferredPrimaryColumnWidth != width)
  {
    self->_preferredPrimaryColumnWidth = width;
    [(UISplitViewControllerPanelImpl *)self _primaryColumnWidthAffectingPropertyDidChange];
  }
}

- (void)setMinimumPrimaryColumnWidth:(double)width
{
  if (self->_minimumPrimaryColumnWidth != width)
  {
    self->_minimumPrimaryColumnWidth = width;
    [(UISplitViewControllerPanelImpl *)self _primaryColumnWidthAffectingPropertyDidChange];
  }
}

- (void)setMaximumPrimaryColumnWidth:(double)width
{
  if (self->_maximumPrimaryColumnWidth != width)
  {
    self->_maximumPrimaryColumnWidth = width;
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

- (void)setPreferredSupplementaryColumnWidth:(double)width
{
  if (self->_preferredSupplementaryColumnWidth != width)
  {
    self->_preferredSupplementaryColumnWidth = width;
    dyld_program_sdk_at_least();

    [(UISplitViewControllerPanelImpl *)self _supplementaryOrPrimaryColumnWidthAffectingPropertyDidChange];
  }
}

- (BOOL)_shouldReturnBoundsWidthForColumnWidth
{
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  currentState = [panelController currentState];

  isCollapsed = currentState == 0;
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    if (currentState)
    {
      isCollapsed = [currentState isCollapsed];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_svc);
      traitCollection = [WeakRetained traitCollection];
      isCollapsed = [traitCollection horizontalSizeClass] == 1;
    }
  }

  else if (currentState && ([currentState isCollapsed] & 1) != 0)
  {
    isCollapsed = 1;
  }

  return isCollapsed;
}

- (double)primaryColumnWidth
{
  if ([(UISplitViewControllerPanelImpl *)self _shouldReturnBoundsWidthForColumnWidth])
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    view = [WeakRetained view];
    [view bounds];
    v6 = v5;
LABEL_11:

    goto LABEL_12;
  }

  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  WeakRetained = [panelController currentState];

  _isPrimaryLeading = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
  if (_isPrimaryLeading)
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
    panelController2 = [(UISplitViewControllerPanelImpl *)self panelController];
    v11 = panelController2;
    if (WeakRetained)
    {
      [panelController2 possibleStates];
    }

    else
    {
      [panelController2 uncachedPossibleStates];
    }
    view = ;

    v6 = minNonzeroPrimaryWidthInStates(view, _isPrimaryLeading);
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
      view = [WeakRetained view];
      [view bounds];
      MatchingState = v6;
    }

    else
    {
      panelController = [(UISplitViewControllerPanelImpl *)self panelController];
      WeakRetained = [panelController currentState];

      [WeakRetained supplementaryWidth];
      if (v8 > 0.0)
      {
        MatchingState = v8;
LABEL_14:

        return MatchingState;
      }

      _isPrimaryLeading = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
      panelController2 = [(UISplitViewControllerPanelImpl *)self panelController];
      v11 = panelController2;
      if (WeakRetained)
      {
        view = [panelController2 possibleStates];

        if (_isPrimaryLeading)
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
        view = [panelController2 uncachedPossibleStates];

        v13 = minNonzeroPrimaryWidthInStates(view, _isPrimaryLeading);
      }

      MatchingState = minNonzeroSupplementaryWidthInStateWithPrimaryWidthGetMatchingState(view, _isPrimaryLeading, 0, v13);
    }

    goto LABEL_14;
  }

  return MatchingState;
}

- (void)showViewController:(id)controller sender:(id)sender
{
  v68 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  senderCopy = sender;
  if (controllerCopy)
  {
    v9 = [(UISplitViewControllerPanelImpl *)self _childContainingSender:senderCopy];
    if (v9 == controllerCopy)
    {
LABEL_38:

      goto LABEL_39;
    }

    WeakRetained = objc_loadWeakRetained(&self->_svc);
    delegate = [(UISplitViewControllerPanelImpl *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      style = [(UISplitViewControllerPanelImpl *)self style];
      if (style)
      {
        v13 = style;
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

      else if ([delegate splitViewController:WeakRetained showViewController:controllerCopy sender:senderCopy])
      {
        goto LABEL_37;
      }
    }

    panelController = [(UISplitViewControllerPanelImpl *)self panelController];
    isCollapsed = [panelController isCollapsed];

    style2 = [(UISplitViewControllerPanelImpl *)self style];
    if (style2)
    {
      v21 = style2;
      v22 = [(UISplitViewControllerPanelImpl *)self _columnForViewController:controllerCopy];
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
            v61 = delegate;
            v45 = WeakRetained;
            v46 = objc_loadWeakRetained(&self->_svc);
            delegate2 = [v46 delegate];
            [v60 raise:v59 format:{@"%@ disallowed underneath delegate callback from %@ to %@", v44, v46, delegate2}];

            WeakRetained = v45;
            delegate = v61;
          }

          [(UISplitViewControllerPanelImpl *)self updatePanelControllerForViewControllerChangeInColumn:v24 alwaysAnimate:1];
          if (isCollapsed)
          {
            goto LABEL_37;
          }

          if (v24 == 2)
          {
            [(UISplitViewControllerPanelImpl *)self _revealSecondaryColumnIfNecessary];
          }

          else
          {
            displayMode = [(UISplitViewControllerPanelImpl *)self displayMode];
            if ((_UISplitViewControllerColumnIsVisibleForDisplayMode([(UISplitViewControllerPanelImpl *)self style], v24, displayMode) & 1) == 0)
            {
              v49 = [(UISplitViewControllerPanelImpl *)self _nextTargetDisplayModeForDisplayMode:displayMode showMoreIfPossible:1];
              if ((_UISplitViewControllerColumnIsVisibleForDisplayMode([(UISplitViewControllerPanelImpl *)self style], v24, v49) & 1) == 0)
              {
                v49 = [(UISplitViewControllerPanelImpl *)self _nextTargetDisplayModeForDisplayMode:v49 showMoreIfPossible:1];
              }

              if ((_UISplitViewControllerColumnIsVisibleForDisplayMode([(UISplitViewControllerPanelImpl *)self style], v24, v49) & 1) == 0)
              {
                v52 = delegate;
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

                delegate = v52;
                goto LABEL_37;
              }

              [(UISplitViewControllerPanelImpl *)self _transitionFromDisplayMode:displayMode toDisplayMode:v49];
            }
          }

LABEL_37:

          goto LABEL_38;
        }
      }

      else
      {
        v24 = v22;
        if ((v22 != 3) | isCollapsed & 1)
        {
          goto LABEL_25;
        }
      }

      v33 = *(__UILogGetCategoryCachedImpl("UISplitViewController", &qword_1ED49D898) + 8);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = delegate;
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
        delegate = v34;
      }
    }

    else if ((isCollapsed & 1) == 0)
    {
      v25 = delegate;
      v26 = WeakRetained;
      v27 = objc_loadWeakRetained(&self->_svc);
      viewControllers = [v27 viewControllers];

      v29 = objc_loadWeakRetained(&self->_svc);
      masterViewController = [v29 masterViewController];

      if (masterViewController == v9)
      {
        v63[0] = controllerCopy;
        v31 = [viewControllers objectAtIndexedSubscript:1];
        v63[1] = v31;
        v32 = v63;
      }

      else
      {
        v31 = [viewControllers objectAtIndexedSubscript:0];
        v62[0] = v31;
        v62[1] = controllerCopy;
        v32 = v62;
      }

      v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];

      v51 = objc_loadWeakRetained(&self->_svc);
      [v51 setViewControllers:v50];

      WeakRetained = v26;
      delegate = v25;
      goto LABEL_37;
    }

    if (+[UIView areAnimationsEnabled])
    {
      v39 = delegate;
      v40 = objc_loadWeakRetained(&self->_svc);
      [v40 view];
      v42 = v41 = WeakRetained;
      window = [v42 window];
      [v41 presentViewController:controllerCopy animated:window != 0 completion:0];

      WeakRetained = v41;
      delegate = v39;
    }

    else
    {
      [WeakRetained presentViewController:controllerCopy animated:0 completion:0];
    }

    goto LABEL_37;
  }

LABEL_39:
}

- (void)_unspecifiedShowDetailViewController:(id)controller onTargetVC:(id)c sender:(id)sender
{
  v27 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  cCopy = c;
  senderCopy = sender;
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  isCollapsed = [panelController isCollapsed];

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v14 = WeakRetained;
  if ((isCollapsed & 1) == 0)
  {
    masterViewController = [WeakRetained masterViewController];

    if (masterViewController)
    {
      v25 = masterViewController;
      v26 = controllerCopy;
      v16 = MEMORY[0x1E695DEC8];
      v17 = &v25;
      v18 = 2;
    }

    else
    {
      v24 = controllerCopy;
      v16 = MEMORY[0x1E695DEC8];
      v17 = &v24;
      v18 = 1;
    }

    v22 = [v16 arrayWithObjects:v17 count:{v18, v24, v25, v26, v27}];
    v23 = objc_loadWeakRetained(&self->_svc);
    [v23 setViewControllers:v22];

    goto LABEL_10;
  }

  [WeakRetained _willShowCollapsedDetailViewController:controllerCopy inTargetController:cCopy];

  if (![objc_opt_class() doesOverrideViewControllerMethod:sel_showViewController_sender_])
  {
    masterViewController = objc_loadWeakRetained(&self->_svc);
    if (+[UIView areAnimationsEnabled])
    {
      v19 = objc_loadWeakRetained(&self->_svc);
      view = [v19 view];
      window = [view window];
      [masterViewController presentViewController:controllerCopy animated:window != 0 completion:0];
    }

    else
    {
      [masterViewController presentViewController:controllerCopy animated:0 completion:0];
    }

LABEL_10:

    goto LABEL_11;
  }

  [cCopy showViewController:controllerCopy sender:senderCopy];
LABEL_11:
}

- (void)_revealSecondaryColumnIfNecessary
{
  currentState = [(UISplitViewControllerPanelImpl *)self currentState];
  v4 = [(UISplitViewControllerPanelImpl *)self _displayModeForState:currentState];

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

- (void)showDetailViewController:(id)controller sender:(id)sender
{
  v81 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  senderCopy = sender;
  if (controllerCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    detailViewController = [WeakRetained detailViewController];
    style = [(UISplitViewControllerPanelImpl *)self style];
    panelController = [(UISplitViewControllerPanelImpl *)self panelController];
    isCollapsed = [panelController isCollapsed];

    _existingView = [detailViewController _existingView];
    window = [_existingView window];

    if (!window || detailViewController == controllerCopy)
    {
      if (((style != 0) & isCollapsed) == 1 && (-[NSMutableDictionary objectForKeyedSubscript:](self->_perColumnViewControllers, "objectForKeyedSubscript:", &unk_1EFE30238), v16 = objc_claimAutoreleasedReturnValue(), [v16 viewController], v17 = objc_claimAutoreleasedReturnValue(), v16, v17))
      {
        masterViewController = v17;

        detailViewController = masterViewController;
      }

      else
      {
        masterViewController = [WeakRetained masterViewController];
      }

      detailViewController = masterViewController;
    }

    if (detailViewController == controllerCopy)
    {
      goto LABEL_74;
    }

    v70 = senderCopy;
    delegate = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      style2 = [(UISplitViewControllerPanelImpl *)self style];
      if (style2)
      {
        v20 = style2;
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

      else if ([delegate splitViewController:WeakRetained showDetailViewController:controllerCopy sender:senderCopy])
      {
        goto LABEL_73;
      }
    }

    if (style)
    {
      senderCopy = v70;
      if ((isCollapsed & 1) == 0)
      {
        if ([(UISplitViewControllerPanelImpl *)self _columnForViewController:controllerCopy]== 2)
        {
          [(UISplitViewControllerPanelImpl *)self updatePanelControllerForViewControllerChangeInColumn:2];
        }

        else
        {
          [(UISplitViewControllerPanelImpl *)self setViewController:controllerCopy forColumn:2];
        }

        [(UISplitViewControllerPanelImpl *)self _revealSecondaryColumnIfNecessary];
        goto LABEL_73;
      }

      v25 = [(UISplitViewControllerPanelImpl *)self _columnForViewController:detailViewController];
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
          navigationControllerWrapper = [v33 navigationControllerWrapper];

          if (detailViewController == navigationControllerWrapper)
          {
            v35 = [(NSMutableDictionary *)*p_perColumnViewControllers objectForKeyedSubscript:v30];
            navigationController = [v35 navigationController];

            detailViewController = navigationController;
          }

          senderCopy = v70;
          v27 = v67;
LABEL_35:
          if ([detailViewController _isNavigationController])
          {
            v37 = detailViewController;
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
              view = [v46 view];
              window2 = [view window];
              [WeakRetained presentViewController:controllerCopy animated:window2 != 0 completion:0];
            }

            else
            {
              [WeakRetained presentViewController:controllerCopy animated:0 completion:0];
            }

LABEL_72:

            goto LABEL_73;
          }

          if ([controllerCopy _isNavigationController])
          {
            [v38 _setAllowNestedNavigationControllers:1];
          }

          if (v25 || style != 2)
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
              v52 = controllerCopy;
              navigationController2 = v52;
              if (v25 == v27)
              {
                v54 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
                [v54 navigationController];
                v55 = v68 = v52;
                _existingView2 = [v55 _existingView];
                window3 = [_existingView2 window];

                v52 = v68;
                navigationController2 = v68;
                if (!window3)
                {
                  [(UISplitViewControllerPanelImpl *)self setViewController:v68 forColumn:2];
                  v58 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
                  navigationControllerWrapper2 = [v58 navigationControllerWrapper];
                  v60 = navigationControllerWrapper2;
                  if (navigationControllerWrapper2)
                  {
                    navigationController2 = navigationControllerWrapper2;
                  }

                  else
                  {
                    v52 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
                    navigationController2 = [v52 navigationController];
                  }

                  if ([navigationController2 _isNavigationController])
                  {
                    [v38 _setAllowNestedNavigationControllers:1];
                  }

                  v52 = v68;
                  if (!navigationController2)
                  {
                    navigationController2 = v68;
                  }
                }
              }

              topViewController = [v38 topViewController];

              if (topViewController != navigationController2)
              {
                v71[0] = MEMORY[0x1E69E9820];
                v71[1] = 3221225472;
                v71[2] = __66__UISplitViewControllerPanelImpl_showDetailViewController_sender___block_invoke_3;
                v71[3] = &unk_1E70F6228;
                v72 = detailViewController;
                v73 = navigationController2;
                v74 = v70;
                [v38 _executeSplitViewControllerActions:v71];
              }

              if (v66)
              {
                v62 = [_UISplitViewControllerColumnContents alloc];
                v63 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
                navigationControllerWrapper3 = [v63 navigationControllerWrapper];
                v65 = [(_UISplitViewControllerColumnContents *)v62 initWithViewController:v52 navigationController:v38 navigationControllerWrapper:navigationControllerWrapper3];

                [(NSMutableDictionary *)self->_perColumnViewControllers setObject:v65 forKey:&unk_1EFE30208];
              }

              senderCopy = v70;
              goto LABEL_72;
            }
          }

          else
          {
            v39 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
            navigationController3 = [v39 navigationController];

            topViewController2 = [v38 topViewController];

            if (topViewController2 == navigationController3)
            {
              v49 = 1;
            }

            else
            {
              viewControllers = [v38 viewControllers];
              v43 = [viewControllers containsObject:navigationController3];

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
              v44[5] = navigationController3;
              v51 = navigationController3;
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
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v32 = _UISplitViewControllerColumnDescription(v25);
        [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:1531 description:{@"Unexpected target column, %@, for pushing new detail vc, %@, onto UISplitViewController, %@", v32, controllerCopy, WeakRetained}];

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

    senderCopy = v70;
    [(UISplitViewControllerPanelImpl *)self _unspecifiedShowDetailViewController:controllerCopy onTargetVC:detailViewController sender:v70];
LABEL_73:

LABEL_74:
  }
}

- (void)setStyle:(int64_t)style
{
  if ([(UIPanelController *)self->_panelController style]!= style)
  {
    panelController = self->_panelController;

    [(UIPanelController *)panelController setStyle:style];
  }
}

- (void)setShowsSecondaryOnlyButton:(BOOL)button
{
  v3 = 0x8000000;
  if (!button)
  {
    v3 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (BOOL)_interfaceIsCompactForWidth:(double)width
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  traitCollection = [WeakRetained traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
  {
    return width < 260.0;
  }

  else
  {
    return _UIUserInterfaceSizeClassForWidth(width) == 1;
  }
}

- (BOOL)_isSecondaryColumnCompactInTotalWidth:(double)width withPrimaryColumnWidth:(double)columnWidth supplementaryColumnWidth:(double)supplementaryColumnWidth
{
  style = [(UISplitViewControllerPanelImpl *)self style];
  v11 = style;
  if ((style - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = _UISplitViewControllerStyleDescription(v11);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:1643 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v17}];

    columnWidthCopy3 = columnWidth;
  }

  else
  {
    columnWidthCopy3 = columnWidth;
    if (style == 2)
    {
      v13 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];

      if (v13)
      {
        columnWidthCopy3 = columnWidth + supplementaryColumnWidth;
      }

      else
      {
        columnWidthCopy3 = columnWidth;
      }
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  if (_UISplitViewControllerWantsPickerBehaviors(WeakRetained))
  {

    if (columnWidth == 0.0 || supplementaryColumnWidth == 0.0)
    {
      return 0;
    }
  }

  else
  {
  }

  return [(UISplitViewControllerPanelImpl *)self _interfaceIsCompactForWidth:width - columnWidthCopy3];
}

- (int64_t)splitBehaviorForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  styleProvider = [(UISplitViewControllerPanelImpl *)self styleProvider];
  v6 = [styleProvider splitBehaviorForSize:{width, height}];

  return v6;
}

- (int64_t)splitBehaviorInCurrentEnvironment
{
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = _UISplitViewControllerStyleDescription(style);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:1696 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v13}];
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
      if (style != 2)
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

- (int64_t)allowedDisplayModeForCurrentSplitBehaviorGivenDisplayMode:(int64_t)mode
{
  splitBehavior = [(UISplitViewControllerPanelImpl *)self splitBehavior];
  if (!self)
  {
    return 0;
  }

  if ((mode - 4) >= 3)
  {
    if ((mode - 2) <= 1)
    {
      if (splitBehavior == 2)
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

  else if (splitBehavior == 2)
  {
    return 5;
  }

  else
  {
    v6 = 4;
    modeCopy = 6;
    if (splitBehavior != 3)
    {
      modeCopy = mode;
    }

    if (splitBehavior != 1)
    {
      v6 = modeCopy;
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

  return mode;
}

- (void)setViewController:(id)controller forColumn:(int64_t)column
{
  v154 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  selfCopy = self;
  v9 = [(UISplitViewControllerPanelImpl *)self _columnForViewController:controllerCopy];
  _isTabBarController = [controllerCopy _isTabBarController];
  if (_isTabBarController)
  {
    v11 = controllerCopy;
  }

  else
  {
    v11 = 0;
  }

  v116 = v11;
  v13 = column == 2 || column == 0;
  if (!v13 || v9 != column)
  {
    if (v9 == column)
    {
      goto LABEL_146;
    }

    goto LABEL_41;
  }

  navigationController = [controllerCopy navigationController];
  if ([navigationController _isCreatedBySplitViewController])
  {
    v5 = column == 2;
    childViewControllers = [controllerCopy childViewControllers];
    firstObject = [childViewControllers firstObject];
    _isNavigationController = [firstObject _isNavigationController];

    if (!(v5 & (_isNavigationController ^ 1)) || !v116)
    {
      if (_isNavigationController)
      {
        goto LABEL_41;
      }

      goto LABEL_34;
    }
  }

  else
  {

    if (column != 2 || !v116)
    {
      goto LABEL_34;
    }
  }

  selectedViewController = [v116 selectedViewController];
  _isNavigationController2 = [selectedViewController _isNavigationController];
  if (_isNavigationController2)
  {
    _isNavigationController = [(NSMutableDictionary *)selfCopy->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
    navigationController2 = [_isNavigationController navigationController];
    v5 = navigationController2;
    if (selectedViewController != navigationController2)
    {

      goto LABEL_41;
    }

    if ([selectedViewController _isNavigationController])
    {

      goto LABEL_30;
    }
  }

  else if ([selectedViewController _isNavigationController])
  {
LABEL_30:

    goto LABEL_34;
  }

  v21 = [(NSMutableDictionary *)selfCopy->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
  navigationControllerWrapper = [v21 navigationControllerWrapper];

  if (_isNavigationController2)
  {
  }

  if (v116 == navigationControllerWrapper)
  {
    goto LABEL_41;
  }

LABEL_34:
  perColumnViewControllers = selfCopy->_perColumnViewControllers;
  v24 = [MEMORY[0x1E696AD98] numberWithInteger:column];
  v25 = [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:v24];
  navigationControllerWrapper2 = [v25 navigationControllerWrapper];

  if (navigationControllerWrapper2 == controllerCopy)
  {
    childViewControllers2 = [controllerCopy childViewControllers];
    v28 = [childViewControllers2 count];

    if (v28)
    {
      v148 = 0;
      v29 = [controllerCopy _wrapsNavigationController:&v148];
      topViewController = v148;
      if (topViewController)
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

      v32 = selfCopy->_perColumnViewControllers;
      v33 = [MEMORY[0x1E696AD98] numberWithInteger:column];
      v34 = [(NSMutableDictionary *)v32 objectForKeyedSubscript:v33];
      navigationController3 = [v34 navigationController];
      v36 = topViewController == navigationController3;

      if (!v36)
      {
LABEL_41:
        _isCollapsed = [(UISplitViewControllerPanelImpl *)selfCopy _isCollapsed];
        v38 = controllerCopy;
        if (_isCollapsed)
        {
          v39 = [(NSMutableDictionary *)selfCopy->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30238];
          viewController = [v39 viewController];
          v112 = viewController == 0;
        }

        else
        {
          v112 = 0;
        }

        v41 = [(NSMutableDictionary *)selfCopy->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30238];
        viewController2 = [v41 viewController];
        v43 = column != 3 && _isCollapsed;
        if (viewController2 || !v43)
        {
        }

        else
        {
          v44 = selfCopy->_perColumnViewControllers;
          v45 = [MEMORY[0x1E696AD98] numberWithInteger:column];
          v46 = [(NSMutableDictionary *)v44 objectForKeyedSubscript:v45];
          navigationController4 = [v46 navigationController];
          if (navigationController4)
          {
            v48 = (navigationController4[94] & 3u) - 1 < 2;

            if (v48)
            {
              if (os_variant_has_internal_diagnostics())
              {
                v105 = __UIFaultDebugAssertLog();
                if (os_log_type_enabled(v105, OS_LOG_TYPE_FAULT))
                {
                  v107 = _UISplitViewControllerColumnDescription(column);
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
                  v51 = _UISplitViewControllerColumnDescription(column);
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
        if (!v38 || column == 3)
        {
          v113 = 1;
          topViewController = v38;
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

          topViewController = [v52 topViewController];

          if (_isCollapsed && !column)
          {
            [v52 _setAllowNestedNavigationControllers:1];
            v70 = [(NSMutableDictionary *)selfCopy->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
            navigationController5 = [v70 navigationController];

            v113 = 1;
            if (navigationController5 && v52 && navigationController5 != v52)
            {
              v72 = [(NSMutableDictionary *)selfCopy->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
              navigationController6 = [v72 navigationController];
              v74 = navigationController6;
              if (navigationController6)
              {
                navigationController7 = navigationController6;
              }

              else
              {
                v114 = [(NSMutableDictionary *)selfCopy->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
                navigationControllerWrapper3 = [v114 navigationControllerWrapper];
                if (navigationControllerWrapper3)
                {
                  v89 = navigationControllerWrapper3;
                  navigationController7 = navigationControllerWrapper3;
                }

                else
                {
                  v97 = [(NSMutableDictionary *)selfCopy->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
                  navigationController7 = [v97 navigationController];

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
              navigationController5 = navigationController5;
              v143 = navigationController5;
              v98 = navigationController7;
              v144 = v98;
              v145 = selfCopy;
              [navigationController5 _executeSplitViewControllerActions:v142];
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

        v55 = _isTabBarController ^ 1;
        if (column == 2)
        {
          v55 = 1;
        }

        if ((v55 & 1) == 0)
        {
          v56 = MEMORY[0x1E695DF30];
          v57 = _UISplitViewControllerColumnDescription(column);
          [v56 raise:*MEMORY[0x1E695D940] format:{@"UITabBarController is unsupported as viewController for -[UISplitViewController setViewController:forColumn:] in %@ column", v57}];
        }

        if (_isTabBarController)
        {
          selectedViewController2 = [v38 selectedViewController];
          if ([selectedViewController2 _isNavigationController])
          {
            v59 = selectedViewController2;

            topViewController2 = [v59 topViewController];
            v52 = v59;
            v115 = v38;
          }

          else
          {
            v115 = 0;
            topViewController2 = v38;
          }

          [v38 _setNotifySplitViewControllerForSelectionChange:1];

          v38 = topViewController2;
        }

        else
        {
          v115 = 0;
        }

        v113 = v52 != 0;
        v61 = v52;
        if (v52 || (v62 = selfCopy->_perColumnViewControllers, [MEMORY[0x1E696AD98] numberWithInteger:column], v63 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKeyedSubscript:](v62, "objectForKeyedSubscript:", v63), v64 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v64, "navigationController"), v61 = objc_claimAutoreleasedReturnValue(), v64, v63, v61))
        {
          v65 = v52 == 0;
          v52 = v61;
          goto LABEL_79;
        }

        if ((column != 2) | _isTabBarController & 1)
        {
          if (column != 2)
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
          topViewController = v38;
          v138 = topViewController;
          [v52 _executeSplitViewControllerActions:v136];

          v113 = 1;
          if (v52)
          {
            v65 = 0;
LABEL_79:
            topViewController3 = [v52 topViewController];
            v67 = topViewController3 == v38;

            if (!v67)
            {
              if (v65)
              {
                _existingView = [v52 _existingView];
                window = [_existingView window];
                if (window)
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

              if (column == 2)
              {
                viewControllers = [v52 viewControllers];
                v78 = [viewControllers containsObject:v38];

                if (v78)
                {
                  v79 = v133;
                  v133[0] = MEMORY[0x1E69E9820];
                  v133[1] = 3221225472;
                  v133[2] = __62__UISplitViewControllerPanelImpl_setViewController_forColumn___block_invoke_4;
                  v133[3] = &unk_1E70F5AF0;
                  v52 = v52;
                  v133[4] = v52;
                  topViewController = v38;
                  v134 = topViewController;
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
                  topViewController = v38;
                  v131 = topViewController;
                  v132 = v111;
                  [v52 _executeSplitViewControllerActions:v130];
                }

                goto LABEL_103;
              }

              if (column == 1 || !_isCollapsed)
              {
                v79 = v127;
                v127[0] = MEMORY[0x1E69E9820];
                v127[1] = 3221225472;
                v127[2] = __62__UISplitViewControllerPanelImpl_setViewController_forColumn___block_invoke_6;
                v127[3] = &unk_1E70F5AF0;
                v52 = v52;
                v127[4] = v52;
                topViewController = v38;
                v128 = topViewController;
                v129 = v111;
                [v52 _executeSplitViewControllerActions:v127];

LABEL_103:
                navigationController5 = v79[4];
LABEL_136:

                goto LABEL_137;
              }

              v80 = [(NSMutableDictionary *)selfCopy->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
              navigationController5 = [v80 navigationController];

              [v52 _setAllowNestedNavigationControllers:1];
              viewControllers2 = [v52 viewControllers];
              v110 = [viewControllers2 mutableCopy];

              v82 = [(NSMutableDictionary *)selfCopy->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
              navigationController8 = [v82 navigationController];
              v84 = navigationController8;
              if (navigationController8)
              {
                navigationController9 = navigationController8;
              }

              else
              {
                v85 = [(NSMutableDictionary *)selfCopy->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
                navigationControllerWrapper4 = [v85 navigationControllerWrapper];
                v87 = navigationControllerWrapper4;
                if (navigationControllerWrapper4)
                {
                  navigationController9 = navigationControllerWrapper4;
                }

                else
                {
                  v90 = [(NSMutableDictionary *)selfCopy->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
                  navigationController9 = [v90 navigationController];
                }
              }

              if (navigationController5 && navigationController5 != v52)
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
                v123 = navigationController5;
                v124 = navigationController9;
                v125 = selfCopy;
                [v123 _executeSplitViewControllerActions:v122];
                if ([*(*(&buf + 1) + 40) count])
                {
                  [v110 addObjectsFromArray:*(*(&buf + 1) + 40)];
                }

                _Block_object_dispose(&buf, 8);
                goto LABEL_130;
              }

              if (!navigationController5)
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

              v91 = [v110 indexOfObject:navigationController9];
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

                  topViewController = v38;
                  goto LABEL_136;
                }
              }

              else
              {
                [v110 removeObjectAtIndex:v92];
                if (v91 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v95 = [v110 indexOfObject:navigationController9];
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
          v99 = selfCopy->_perColumnViewControllers;
          if (!v99)
          {
            v100 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v101 = selfCopy->_perColumnViewControllers;
            selfCopy->_perColumnViewControllers = v100;

            v99 = selfCopy->_perColumnViewControllers;
          }

          if (v52 | topViewController)
          {
            v102 = [[_UISplitViewControllerColumnContents alloc] initWithViewController:topViewController navigationController:v52 navigationControllerWrapper:v115];
            v103 = [MEMORY[0x1E696AD98] numberWithInteger:column];
            [(NSMutableDictionary *)v99 setObject:v102 forKey:v103];
          }

          else
          {
            v102 = [MEMORY[0x1E696AD98] numberWithInteger:column];
            [(NSMutableDictionary *)v99 removeObjectForKey:v102];
          }

          if (v113)
          {
            [(UISplitViewControllerPanelImpl *)selfCopy updatePanelControllerForViewControllerChangeInColumn:column alwaysAnimate:0 shouldUpdateCollapsedNavStack:((column - 3) < 0xFFFFFFFFFFFFFFFELL) & v112];
          }

          WeakRetained = objc_loadWeakRetained(&selfCopy->_svc);
          [WeakRetained _didChangeDeepestActionResponder];

          goto LABEL_145;
        }

        v52 = 0;
        v113 = 1;
LABEL_106:
        topViewController = v38;
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

- (id)viewControllerForColumn:(int64_t)column
{
  perColumnViewControllers = self->_perColumnViewControllers;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:column];
  v5 = [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:v4];

  navigationController = [v5 navigationController];
  navigationControllerWrapper = [v5 navigationControllerWrapper];
  v8 = navigationControllerWrapper;
  if (navigationControllerWrapper)
  {
    viewController = navigationControllerWrapper;
  }

  else if (navigationController && ![navigationController _isCreatedBySplitViewController])
  {
    viewController = navigationController;
  }

  else
  {
    viewController = [v5 viewController];
  }

  v10 = viewController;

  return v10;
}

- (void)hideColumn:(int64_t)column
{
  v45 = *MEMORY[0x1E69E9840];
  style = [(UISplitViewControllerPanelImpl *)self style];
  if ((style - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v39 = _UISplitViewControllerStyleDescription(style);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:1996 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v39}];
  }

  if (column == 1)
  {
    if (style != 2)
    {
      return;
    }
  }

  else
  {
    if (column != 3)
    {
      v7 = column == 0;
      if (!column && style == 2)
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

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:1997 description:{@"Can't hide %@ column", @"Compact"}];
  }

  v7 = 0;
LABEL_11:
  *&self->_flags |= 0x1000000000uLL;
  _isCollapsed = [(UISplitViewControllerPanelImpl *)self _isCollapsed];
  collapsedState = [(UIPanelController *)self->_panelController collapsedState];
  v11 = collapsedState;
  if (_isCollapsed || collapsedState == 1)
  {
    if (style == 2)
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
    navigationController = [v27 navigationController];

    topViewController = [navigationController topViewController];
    v30 = [(UISplitViewControllerPanelImpl *)self _columnForViewController:topViewController];

    if (v24 != column && v30 == column)
    {
      if ((*(&self->_flags + 3) & 0x20) != 0)
      {
        v34 = *(__UILogGetCategoryCachedImpl("UISplitViewController", &qword_1ED49D8B0) + 8);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = v34;
          v36 = _UISplitViewControllerColumnDescription(column);
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
            v33 = _UISplitViewControllerColumnDescription(column);
            *buf = 138543362;
            v44 = v33;
            _os_log_impl(&dword_188A29000, v32, OS_LOG_TYPE_ERROR, "Hiding %{public}@ column before UISplitViewController has finished collapsing can result in inconsistent state. This is a client bug.", buf, 0xCu);
          }
        }

        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __45__UISplitViewControllerPanelImpl_hideColumn___block_invoke;
        v40[3] = &unk_1E70F35B8;
        v41 = navigationController;
        selfCopy = self;
        [v41 _executeSplitViewControllerActions:v40];
      }
    }
  }

  else if (column != 2)
  {
    displayMode = [(UISplitViewControllerPanelImpl *)self displayMode];
    IsVisibleForDisplayMode = _UISplitViewControllerColumnIsVisibleForDisplayMode(style, column, displayMode);
    v14 = 1;
    if (style == 2 && v7)
    {
      v14 = 2;
    }

    if (IsVisibleForDisplayMode)
    {
      v15 = v14;
    }

    else
    {
      v15 = displayMode;
    }

    if (displayMode != v15 && (*&self->_flags & 0x40000000) != 0)
    {
      v16 = *(__UILogGetCategoryCachedImpl("UISplitViewController", &qword_1ED49D8C0) + 8);
      v15 = displayMode;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = v16;
        v18 = _UISplitViewControllerColumnDescription(column);
        *buf = 138543362;
        v44 = v18;
        _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "Hiding %{public}@ column underneath -splitViewController:displayModeForExpandingToProposedDisplayMode: is ignored. The delegate method implementation should return the desired displayMode instead.", buf, 0xCu);

        v15 = displayMode;
      }
    }

    collapsedState2 = [(UIPanelController *)self->_panelController collapsedState];
    if (displayMode != v15 && collapsedState2 == 3)
    {
      v20 = *(__UILogGetCategoryCachedImpl("UISplitViewController", &qword_1ED49D8C8) + 8);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = v20;
        v22 = _UISplitViewControllerColumnDescription(column);
        *buf = 138543362;
        v44 = v22;
        _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "Hiding %{public}@ column before UISplitViewController has finished expanding can result in inconsistent state. This is a client bug.", buf, 0xCu);
      }
    }

    if (displayMode != v15)
    {
      [(UISplitViewControllerPanelImpl *)self _transitionFromDisplayMode:displayMode toDisplayMode:v15];
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

- (void)showColumn:(int64_t)column
{
  v48[1] = *MEMORY[0x1E69E9840];
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v38 = _UISplitViewControllerStyleDescription(style);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2049 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v38}];
  }

  if (column == 3)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2050 description:{@"Can't show %@ column", @"Compact"}];

    v7 = 0;
  }

  else
  {
    v7 = column == 1;
    if (style != 2 && column == 1)
    {
      return;
    }
  }

  if (style != 2 || ([(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220], v8 = objc_claimAutoreleasedReturnValue(), v8, column) || v8)
  {
    *&self->_flags |= 0x1000000000uLL;
    if (![(UISplitViewControllerPanelImpl *)self _isCollapsed])
    {
      if (column == 2)
      {
        [(UISplitViewControllerPanelImpl *)self _revealSecondaryColumnIfNecessary];
      }

      else
      {
        displayMode = [(UISplitViewControllerPanelImpl *)self displayMode];
        if ((_UISplitViewControllerColumnIsVisibleForDisplayMode([(UISplitViewControllerPanelImpl *)self style], column, displayMode) & 1) == 0)
        {
          v21 = style != 2 && column == 0;
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

          [(UISplitViewControllerPanelImpl *)self _transitionFromDisplayMode:displayMode toDisplayMode:v23];
        }
      }

      goto LABEL_18;
    }

    if (style == 2)
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
    navigationController = [v13 navigationController];

    viewControllers = [navigationController viewControllers];
    v16 = [viewControllers count];
    topViewController = [navigationController topViewController];
    v18 = [(UISplitViewControllerPanelImpl *)self _columnForViewController:topViewController];

    if (v18 == column)
    {
      goto LABEL_16;
    }

    if (column != 2)
    {
      if (column == 1)
      {
        if (v18 == 2)
        {
          v24 = self->_perColumnViewControllers;
          goto LABEL_51;
        }

        if (!v18)
        {
          v27 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
          navigationController2 = [v27 navigationController];
          v48[0] = navigationController2;
          v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];

          v29 = v16 + 1;
          goto LABEL_55;
        }
      }

      else if (!column)
      {
        v24 = self->_perColumnViewControllers;
        if (style == 2)
        {
          v25 = [(NSMutableDictionary *)v24 objectForKeyedSubscript:&unk_1EFE30250];
          navigationController3 = [v25 navigationController];
          goto LABEL_52;
        }

LABEL_51:
        v25 = [(NSMutableDictionary *)v24 objectForKeyedSubscript:&unk_1EFE30208];
        navigationController3 = [v25 navigationControllerWrapper];
        if (!navigationController3)
        {
          v35 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
          navigationController4 = [v35 navigationController];
          v29 = [viewControllers indexOfObject:navigationController4];

          goto LABEL_54;
        }

LABEL_52:
        v29 = [viewControllers indexOfObject:navigationController3];
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
            v42 = navigationController;
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
    if (style != 2 || v18)
    {
      v31 = [(NSMutableDictionary *)v30 objectForKeyedSubscript:&unk_1EFE30208];
      navigationControllerWrapper = [v31 navigationControllerWrapper];
      navigationController5 = navigationControllerWrapper;
      if (!navigationControllerWrapper)
      {
        topViewController = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
        navigationController5 = [topViewController navigationController];
      }

      v46 = navigationController5;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
      if (navigationControllerWrapper)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v31 = [(NSMutableDictionary *)v30 objectForKeyedSubscript:&unk_1EFE30250];
      navigationControllerWrapper = [v31 navigationController];
      v47[0] = navigationControllerWrapper;
      topViewController = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
      navigationController5 = [topViewController navigationControllerWrapper];
      navigationController6 = navigationController5;
      if (!navigationController5)
      {
        v40 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
        navigationController6 = [v40 navigationController];
      }

      v47[1] = navigationController6;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
      if (!navigationController5)
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
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = _UISplitViewControllerStyleDescription(style);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2132 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v2}];
  }

  if (![(UISplitViewControllerPanelImpl *)self isCollapsed])
  {
    transitionCoordinator = [(UIPanelController *)self->_panelController transitionCoordinator];
    goto LABEL_15;
  }

  v6 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30238];
  viewController = [v6 viewController];
  if (!viewController)
  {
    if (style == 2 && ([(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220], (v2 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
      navigationController = [v11 navigationController];
    }

    else
    {
      v10 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
      navigationController = [v10 navigationController];

      if (style != 2)
      {
LABEL_13:

        if (navigationController)
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
            navigationController = 0;
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

  navigationController = viewController;

LABEL_14:
  transitionCoordinator = [navigationController transitionCoordinator];

LABEL_15:

  return transitionCoordinator;
}

- (void)setPreferredSupplementaryColumnWidthFraction:(double)fraction
{
  preferredSupplementaryColumnWidthFraction = self->_preferredSupplementaryColumnWidthFraction;
  if (preferredSupplementaryColumnWidthFraction != fraction)
  {
    if (fraction != -3.40282347e38 && (fraction < 0.0 || fraction > 1.0))
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unsupported %@, %g, for supplementary column. Value must be %@", @"minimum or maximum width value", *&fraction, @"UISplitViewControllerAutomaticDimension or between 0 and 1, inclusive"}];
      preferredSupplementaryColumnWidthFraction = self->_preferredSupplementaryColumnWidthFraction;
    }

    self->_preferredSupplementaryColumnWidthFraction = fraction;
    if (!dyld_program_sdk_at_least() || preferredSupplementaryColumnWidthFraction != fraction)
    {

      [(UISplitViewControllerPanelImpl *)self _supplementaryOrPrimaryColumnWidthAffectingPropertyDidChange];
    }
  }
}

- (void)setMinimumSupplementaryColumnWidth:(double)width
{
  if (self->_minimumSupplementaryColumnWidth != width)
  {
    if (width < 0.0 && width != -3.40282347e38)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unsupported %@, %g, for supplementary column. Value must be %@", @"width fraction", *&width, @"UISplitViewControllerAutomaticDimension or nonnegative"}];
    }

    self->_minimumSupplementaryColumnWidth = width;

    [(UISplitViewControllerPanelImpl *)self _primaryColumnWidthAffectingPropertyDidChange];
  }
}

- (void)setMaximumSupplementaryColumnWidth:(double)width
{
  if (self->_maximumSupplementaryColumnWidth != width)
  {
    if (width < 0.0 && width != -3.40282347e38)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unsupported %@, %g, for supplementary column. Value must be %@", @"width fraction", *&width, @"UISplitViewControllerAutomaticDimension or nonnegative"}];
    }

    self->_maximumSupplementaryColumnWidth = width;

    [(UISplitViewControllerPanelImpl *)self _primaryColumnWidthAffectingPropertyDidChange];
  }
}

- (void)setDisplayModeButtonVisibility:(int64_t)visibility
{
  if ([(UISplitViewControllerPanelImpl *)self displayModeButtonVisibility]== visibility)
  {
    return;
  }

  _isDisplayModeBarButtonVisible = [(UISplitViewControllerPanelImpl *)self _isDisplayModeBarButtonVisible];
  if ((visibility - 2) < 3)
  {
    v6 = *&self->_flags & 0xFFFFFFFFFFCFFFFFLL | 0x100000;
LABEL_8:
    self->_flags = v6;
    goto LABEL_9;
  }

  if (visibility == 1)
  {
    v6 = *&self->_flags & 0xFFFFFFFFFFCFFFFFLL | 0x200000;
    goto LABEL_8;
  }

  if (!visibility)
  {
    v6 = *&self->_flags & 0xFFFFFFFFFFCFFFFFLL;
    goto LABEL_8;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unknown displayModeButtonVisibility value: %ld", visibility}];
LABEL_9:
  if (_isDisplayModeBarButtonVisible == [(UISplitViewControllerPanelImpl *)self _alwaysHideSidebarToggleButton])
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

- (void)setPrimaryEdge:(int64_t)edge
{
  if (self->_primaryEdge != edge)
  {
    _currentPrimaryChildViewController = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
    self->_primaryEdge = edge;
    _isPrimaryLeading = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
    panelController = [(UISplitViewControllerPanelImpl *)self panelController];
    if (_isPrimaryLeading)
    {
      v8 = _currentPrimaryChildViewController;
    }

    else
    {
      v8 = 0;
    }

    if (_isPrimaryLeading)
    {
      v9 = 0;
    }

    else
    {
      v9 = _currentPrimaryChildViewController;
    }

    [panelController setLeadingViewController:v8 changingParentage:0];

    panelController2 = [(UISplitViewControllerPanelImpl *)self panelController];
    [panelController2 setTrailingViewController:v9 changingParentage:0];

    [(UISplitViewControllerPanelImpl *)self _updateConfigurationBackgroundStyle];
    if ([(UISplitViewControllerPanelImpl *)self _shouldUseFluidSidebarGestures])
    {
      [(UISplitViewControllerPanelImpl *)self _updatePresentationGestureRecognizer];
    }

    WeakRetained = objc_loadWeakRetained(&self->_svc);
    view = [WeakRetained view];
    [view setNeedsLayout];
  }
}

- (BOOL)_layoutPrimaryOnRight
{
  primaryEdge = self->_primaryEdge;
  if (!primaryEdge)
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    view = [WeakRetained view];
    if ([view _shouldReverseLayoutDirection])
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
    view2 = [v7 view];
    v6 = [view2 _shouldReverseLayoutDirection] ^ 1;

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
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  configuration = [panelController configuration];

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  traitCollection = [WeakRetained traitCollection];
  [traitCollection displayScale];
  if (v7 == 0.0)
  {
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen scale];
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  if ([(UISplitViewControllerPanelImpl *)self _isPrimaryLeading])
  {
    [configuration leadingBorderWidthForScale:v10];
  }

  else
  {
    [configuration trailingBorderWidthForScale:v10];
  }

  v12 = v11;

  return v12;
}

- (void)setGutterWidth:(float)width
{
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  configuration = [panelController configuration];

  widthCopy = width;
  [configuration setLeadingBorderWidthInPoints:widthCopy];
  [configuration setTrailingBorderWidthInPoints:widthCopy];
  panelController2 = [(UISplitViewControllerPanelImpl *)self panelController];
  [panelController2 setConfiguration:configuration];
}

- (void)setHidesMasterViewInPortrait:(BOOL)portrait
{
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style)
  {
    v8 = style;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = _UISplitViewControllerStyleDescription(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2297 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v10}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  delegate = [WeakRetained delegate];

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = objc_loadWeakRetained(&self->_svc);
    [v7 loadViewIfNeeded];
  }
}

- (void)_setDisplayModeButtonItemTitle:(id)title
{
  titleCopy = title;
  displayModeButtonItemTitle = self->_displayModeButtonItemTitle;
  if (displayModeButtonItemTitle != titleCopy)
  {
    v9 = titleCopy;
    v6 = [(NSString *)displayModeButtonItemTitle isEqualToString:titleCopy];
    titleCopy = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_displayModeButtonItemTitle;
      self->_displayModeButtonItemTitle = v7;

      [(UISplitViewControllerPanelImpl *)self _updateDisplayModeButtonItem];
      titleCopy = v9;
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
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  isCollapsed = [panelController isCollapsed];

  return isCollapsed;
}

- (BOOL)_isCollapsedOrCollapsing
{
  if ([(UISplitViewControllerPanelImpl *)self _isCollapsed])
  {
    return 1;
  }

  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  currentState = [panelController currentState];
  v3 = [currentState _collapsedState] == 1;

  return v3;
}

- (UIViewController)masterViewController
{
  if ([(UISplitViewControllerPanelImpl *)self style]== 2)
  {
    v3 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
    if (v3)
    {
      _currentPrimaryChildViewController = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
    }

    else
    {
      v5 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
      navigationController = [v5 navigationController];
      v7 = navigationController;
      if (navigationController)
      {
        _currentPrimaryChildViewController = navigationController;
      }

      else
      {
        v8 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
        _currentPrimaryChildViewController = [v8 viewController];
      }
    }
  }

  else
  {
    _currentPrimaryChildViewController = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
  }

  return _currentPrimaryChildViewController;
}

- (void)setPrefersOverlayInRegularWidthPhone:(BOOL)phone
{
  v3 = 0x4000;
  if (!phone)
  {
    v3 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setUsesDeviceOverlayPreferences:(BOOL)preferences
{
  v3 = 0x2000;
  if (!preferences)
  {
    v3 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)_setUsesExtraWidePrimaryColumn:(BOOL)column
{
  v3 = 4096;
  if (!column)
  {
    v3 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (BOOL)_isRotating
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2406 description:@"Should not be called in this UISplitViewController impl"];

  return 0;
}

- (CGSize)_contentSizeForChildViewController:(id)controller inPopoverController:(id)popoverController
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2416 description:@"Should not be called in this UISplitViewController impl"];

  v7 = *MEMORY[0x1E695F060];
  v8 = *(MEMORY[0x1E695F060] + 8);
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)_popoverController:(id)controller willChangeToVisible:(BOOL)visible
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2422 description:@"Should not be called in this UISplitViewController impl"];
}

- (void)_popoverController:(id)controller didChangeFromVisible:(BOOL)visible
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2427 description:@"Should not be called in this UISplitViewController impl"];
}

- (void)_willShowCollapsedDetailViewController:(id)controller inTargetController:(id)targetController
{
  targetControllerCopy = targetController;
  controllerCopy = controller;
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  [panelController setPreservedDetailController:controllerCopy];

  LODWORD(panelController) = [controllerCopy _isNavigationController];
  if (panelController && [objc_opt_class() doesOverrideViewControllerMethod:sel_showViewController_sender_])
  {
    [targetControllerCopy _setAllowNestedNavigationControllers:1];
  }
}

- (void)_willBeginSnapshotSession
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _existingView = [WeakRetained _existingView];

  v4 = WeakRetained;
  if (_existingView)
  {
    traitCollection = [WeakRetained traitCollection];
    suspendedTraitCollection = self->_suspendedTraitCollection;
    self->_suspendedTraitCollection = traitCollection;

    view = [WeakRetained view];
    [view bounds];
    self->_suspendedSize.width = v8;
    self->_suspendedSize.height = v9;

    panelController = [(UISplitViewControllerPanelImpl *)self panelController];
    currentState = [panelController currentState];
    stateRequest = [currentState stateRequest];
    suspendedStateRequest = self->_suspendedStateRequest;
    self->_suspendedStateRequest = stateRequest;

    if (([WeakRetained _isCollapsed] & 1) == 0)
    {
      panelController2 = [(UISplitViewControllerPanelImpl *)self panelController];
      [panelController2 _storeSuspendedConfiguration];
    }

    _isCollapsed = [WeakRetained _isCollapsed];
    v16 = 1;
    if (_isCollapsed)
    {
      v16 = 2;
    }

    self->_suspendedState = v16;
    _firstResponder = [WeakRetained _firstResponder];
    _window = [_firstResponder _window];
    windowScene = [_window windowScene];
    keyboardSceneDelegate = [windowScene keyboardSceneDelegate];

    suspendedFirstResponder = [_firstResponder _window];
    if (suspendedFirstResponder && [_firstResponder _requiresKeyboardWhenFirstResponder])
    {
      v22 = [keyboardSceneDelegate _isPreservedRestorableResponder:_firstResponder];

      if (v22)
      {
LABEL_11:

        v4 = WeakRetained;
        goto LABEL_12;
      }

      v23 = _firstResponder;
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
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  [panelController _clearSuspendedConfiguration];

  if (self->_suspendedFirstResponder)
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    _window = [WeakRetained _window];
    if (_window)
    {
      v8 = _window;
      v9 = objc_loadWeakRetained(&self->_svc);
      view = [v9 view];
      v11 = [view _containsResponder:self->_suspendedFirstResponder];

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
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  currentState = [panelController currentState];

  v5 = -1.0;
  if (currentState && ([currentState isCollapsed] & 1) == 0)
  {
    if ([(UISplitViewControllerPanelImpl *)self _isPrimaryLeading])
    {
      [currentState leadingWidth];
      v7 = v6;
      if ([(UISplitViewControllerPanelImpl *)self style])
      {
        [currentState leadingOffscreenWidth];
      }

      else
      {
        [currentState leadingDragOffset];
      }
    }

    else
    {
      [currentState trailingWidth];
      v7 = v9;
      if ([(UISplitViewControllerPanelImpl *)self style])
      {
        [currentState trailingOffscreenWidth];
      }

      else
      {
        [currentState trailingDragOffset];
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
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  currentState = [panelController currentState];

  v5 = -1.0;
  if (currentState && ([currentState isCollapsed] & 1) == 0)
  {
    _isPrimaryLeading = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
    [(UISplitViewControllerPanelImpl *)self gutterWidth];
    v8 = v7;
    if (_isPrimaryLeading)
    {
      [currentState leadingWidth];
      v10 = v9;
      [currentState leadingOffscreenWidth];
    }

    else
    {
      [currentState trailingWidth];
      v10 = v12;
      [currentState trailingOffscreenWidth];
    }

    v13 = v10 - v11 + v8;
    [currentState supplementaryWidth];
    v15 = v14 + v13;
    [currentState supplementaryOffscreenWidth];
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
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  currentState = [panelController currentState];

  v5 = -1.0;
  if (currentState && ([currentState isCollapsed] & 1) == 0)
  {
    _isPrimaryLeading = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
    [(UISplitViewControllerPanelImpl *)self gutterWidth];
    v8 = v7;
    if (_isPrimaryLeading)
    {
      [currentState trailingWidth];
      v10 = v9;
      [currentState trailingOffscreenWidth];
    }

    else
    {
      [currentState leadingWidth];
      v10 = v12;
      [currentState leadingOffscreenWidth];
    }

    v13 = v10 - v11 + v8;
    [currentState supplementaryWidth];
    v15 = v14 + v13;
    [currentState supplementaryOffscreenWidth];
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

- (void)setUserGeneratedDisplayMode:(int64_t)mode
{
  style = [(UISplitViewControllerPanelImpl *)self style];
  if ((style - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = style;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = _UISplitViewControllerStyleDescription(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2575 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v10}];
  }

  v7 = *&self->_flags & 0xFFFFFFFFFFFFFF87 | (8 * (mode & 7));
  self->_flags = v7;
  if (mode != 3 && mode != 5)
  {
    self->_flags = (v7 & 0xFFFFFFFFFFFDFFBFLL);
  }
}

- (int64_t)userGeneratedDisplayMode
{
  style = [(UISplitViewControllerPanelImpl *)self style];
  if ((style - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = style;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = _UISplitViewControllerStyleDescription(v6);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2593 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v8}];
  }

  return (*&self->_flags >> 3) & 7;
}

- (int64_t)defaultDisplayModeForSplitBehavior:(int64_t)behavior
{
  if (((behavior - 1) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (int64_t)_greatestAllowedAutohidingDisplayModeInSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v38 = *MEMORY[0x1E69E9840];
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = _UISplitViewControllerStyleDescription(style);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2615 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v24}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v9 = _UISplitViewControllerAutoHidesColumns(WeakRetained);

  if ((v9 & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2615 description:@"Method restricted to autohiding context for UISplitViewController"];
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
    if (style == 2 && v15)
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
    selfCopy = self;
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

- (int64_t)defaultDisplayModeForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v36 = *MEMORY[0x1E69E9840];
  style = [(UISplitViewControllerPanelImpl *)self style];
  if ((style - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v23 = style;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = _UISplitViewControllerStyleDescription(v23);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2649 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v25}];
  }

  if ([(UISplitViewControllerPanelImpl *)self preferredDisplayMode])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = _UISplitViewControllerDisplayModeDescription([(UISplitViewControllerPanelImpl *)self preferredDisplayMode]);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2650 description:{@"Default display mode should not override nonautomatic preferred display mode, %@", v27}];
  }

  height = [(UISplitViewControllerPanelImpl *)self splitBehaviorForSize:width, height];
  height2 = [(UISplitViewControllerPanelImpl *)self defaultDisplayModeForSplitBehavior:height];
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
        v15 = _UISplitViewControllerSplitBehaviorDescription(height);
        v16 = _UISplitViewControllerDisplayModeDescription(height2);
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

    if ((height & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      height2 = [(UISplitViewControllerPanelImpl *)self _greatestAllowedAutohidingDisplayModeInSize:width, height];
      if (_UIGetUISplitViewControllerChamoisResizeLogging())
      {
        v17 = *(__UILogGetCategoryCachedImpl("ChamoisResize", &qword_1ED49D8E8) + 8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = v17;
          v19 = objc_loadWeakRetained(&self->_svc);
          v20 = _UISplitViewControllerSplitBehaviorDescription(height);
          v21 = _UISplitViewControllerDisplayModeDescription(height2);
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

  return height2;
}

- (void)preparePanelControllerForCollapse
{
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = _UISplitViewControllerStyleDescription(style);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2683 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v11}];
  }

  collapsedViewController = [(UIPanelController *)self->_panelController collapsedViewController];
  if (style == 2)
  {
    v5 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];

    if (v5)
    {
      panelController = self->_panelController;
      supplementaryViewController = [(UIPanelController *)panelController supplementaryViewController];
      [(UIPanelController *)panelController setSupplementaryViewController:0 changingParentage:collapsedViewController != supplementaryViewController];
    }
  }

  v8 = self->_panelController;
  mainViewController = [(UIPanelController *)v8 mainViewController];
  [(UIPanelController *)v8 setMainViewController:0 changingParentage:collapsedViewController != mainViewController];
}

- (void)updatePanelControllerForViewControllerChangeInColumn:(int64_t)column alwaysAnimate:(BOOL)animate shouldUpdateCollapsedNavStack:(BOOL)stack
{
  stackCopy = stack;
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v64 = _UISplitViewControllerStyleDescription(style);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2704 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v64}];
  }

  v70 = a2;
  perColumnViewControllers = self->_perColumnViewControllers;
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:column];
  v12 = [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:v11];

  navigationController = [v12 navigationController];
  navigationControllerWrapper = [v12 navigationControllerWrapper];
  _isCollapsed = [(UISplitViewControllerPanelImpl *)self _isCollapsed];
  if (_isCollapsed || !(navigationController | navigationControllerWrapper))
  {
    viewController = [v12 viewController];
  }

  else
  {
    if (navigationControllerWrapper)
    {
      v16 = navigationControllerWrapper;
    }

    else
    {
      v16 = navigationController;
    }

    viewController = v16;
  }

  v73 = viewController;
  if (!column)
  {
    [(UIPanelController *)self->_panelController setLeadingTrailingWrapsNavigationController:navigationControllerWrapper != 0];
  }

  primaryEdge = [(UISplitViewControllerPanelImpl *)self primaryEdge];
  if (v73)
  {
    v19 = stackCopy;
  }

  else
  {
    v19 = 0;
  }

  if (_isCollapsed && v19)
  {
    if (style == 2)
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

    if (column <= 2)
    {
      switch(column)
      {
        case 0:
          collapsedViewController = [(UIPanelController *)self->_panelController collapsedViewController];
          leadingViewController = [(UIPanelController *)self->_panelController leadingViewController];
          if (leadingViewController)
          {
            v46 = 0;
          }

          else
          {
            trailingViewController = [(UIPanelController *)self->_panelController trailingViewController];
            v46 = trailingViewController == 0;
          }

          if (navigationControllerWrapper)
          {
            v56 = navigationControllerWrapper;
          }

          else
          {
            v56 = navigationController;
          }

          panelController = self->_panelController;
          if (primaryEdge)
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
          navigationController2 = [v58 navigationController];

          if (collapsedViewController != navigationController2)
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
          navigationController3 = [v60 navigationController];

          if (collapsedViewController == navigationController3)
          {
            [(UIPanelController *)self->_panelController setSupplementaryViewController:0];
            [(UIPanelController *)self->_panelController setCollapsedViewController:navigationController];
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
            v62 = collapsedViewController;
            v87 = v62;
            selfCopy = self;
            [v62 _executeSplitViewControllerActions:v86];
            [v62 _setAllowNestedNavigationControllers:0];
            [navigationController _setAllowNestedNavigationControllers:1];
            v82[0] = MEMORY[0x1E69E9820];
            v82[1] = 3221225472;
            v82[2] = __131__UISplitViewControllerPanelImpl_updatePanelControllerForViewControllerChangeInColumn_alwaysAnimate_shouldUpdateCollapsedNavStack___block_invoke_2;
            v82[3] = &unk_1E70FEE78;
            v83 = navigationController;
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
          collapsedViewController = [v51 navigationController];

          if (collapsedViewController)
          {
            if (([collapsedViewController _isNavigationController] & 1) == 0)
            {
              currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
              [currentHandler2 handleFailureInMethod:v70 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2755 description:{@"Unexpectedly lost track of navigation controller for showing %@ column when collapsed", @"Supplementary"}];
            }

            topViewController = [collapsedViewController topViewController];
            if (topViewController != v73)
            {
              v53 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
              viewController2 = [v53 viewController];

              if (topViewController == viewController2)
              {
                [(UISplitViewControllerPanelImpl *)self sendWillHideColumn:0];
              }

              [(UISplitViewControllerPanelImpl *)self sendWillShowColumn:1];
              v78[0] = MEMORY[0x1E69E9820];
              v78[1] = 3221225472;
              v78[2] = __131__UISplitViewControllerPanelImpl_updatePanelControllerForViewControllerChangeInColumn_alwaysAnimate_shouldUpdateCollapsedNavStack___block_invoke_3;
              v78[3] = &unk_1E70F5AF0;
              v79 = collapsedViewController;
              v80 = navigationController;
              animateCopy = animate;
              [v79 _executeSplitViewControllerActions:v78];
            }
          }

          goto LABEL_88;
        case 2:
          v25 = self->_perColumnViewControllers;
          v26 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
          v27 = [(NSMutableDictionary *)v25 objectForKeyedSubscript:v26];
          navigationController4 = [v27 navigationController];

          if (navigationController4)
          {
            v69 = v21;
            if (([navigationController4 _isNavigationController] & 1) == 0)
            {
              currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
              [currentHandler3 handleFailureInMethod:v70 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2774 description:{@"Unexpectedly lost track of navigation controller for showing %@ column when collapsed", @"Secondary"}];
            }

            topViewController2 = [navigationController4 topViewController];
            v29 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
            viewController3 = [v29 viewController];

            v31 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
            navigationController5 = [v31 navigationController];

            viewControllers = [navigationController4 viewControllers];
            v34 = [viewControllers mutableCopy];

            v36 = style != 2 || navigationController5 == 0;
            if (!v36 && !v69 && topViewController2 != navigationController5)
            {
              [v34 addObject:navigationController5];
            }

            if (topViewController2 == viewController3 || topViewController2 == navigationController5)
            {
              [(UISplitViewControllerPanelImpl *)self sendWillHideColumn:topViewController2 != viewController3];
              [(UISplitViewControllerPanelImpl *)self sendWillShowColumn:2];
            }

            if (navigationController)
            {
              v37 = navigationController;
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
            v75 = navigationController4;
            v76 = v34;
            animateCopy2 = animate;
            v38 = v34;
            [v75 _executeSplitViewControllerActions:v74];
          }

          goto LABEL_89;
      }

LABEL_54:
      v39 = MEMORY[0x1E695DF30];
      v40 = *MEMORY[0x1E695D940];
      collapsedViewController = _UISplitViewControllerColumnDescription(column);
      [v39 raise:v40 format:{@"Can't assign a view controller to %@ column", collapsedViewController}];
LABEL_88:

      goto LABEL_89;
    }

LABEL_53:
    if ((column - 3) < 2)
    {
      goto LABEL_89;
    }

    goto LABEL_54;
  }

  if (column > 2)
  {
    goto LABEL_53;
  }

  if (column)
  {
    if (column == 1)
    {
      configuration = [(UIPanelController *)self->_panelController configuration];
      [configuration setSupplementaryEdge:primaryEdge];

      if (navigationController)
      {
        v48 = navigationController;
      }

      else
      {
        v48 = v73;
      }

      [(UIPanelController *)self->_panelController setSupplementaryViewController:v48];
      goto LABEL_89;
    }

    if (column != 2)
    {
      goto LABEL_54;
    }

    v22 = v73;
    if (navigationController)
    {
      v22 = navigationController;
    }

    if (navigationControllerWrapper)
    {
      v23 = navigationControllerWrapper;
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
    if (navigationController)
    {
      v42 = navigationController;
    }

    if (navigationControllerWrapper)
    {
      v43 = navigationControllerWrapper;
    }

    else
    {
      v43 = v42;
    }

    v44 = self->_panelController;
    if (primaryEdge)
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

- (uint64_t)_columnForViewController:(char)controller forceExpandedResult:
{
  v5 = a2;
  if (!self)
  {
    v9 = 0;
    goto LABEL_19;
  }

  style = [self style];
  if ((style - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = style;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = _UISplitViewControllerStyleDescription(v16);
    [currentHandler handleFailureInMethod:sel__columnForViewController_forceExpandedResult_ object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:2854 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v18}];

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
  selfCopy = self;
  v7 = [self[1] objectForKeyedSubscript:&unk_1EFE30238];
  v8 = (__79__UISplitViewControllerPanelImpl__columnForViewController_forceExpandedResult___block_invoke)(v20, v7);

  if (v8)
  {
    v9 = 3;
  }

  else
  {
    v9 = 999;
  }

  if (!v8 || (controller & 1) != 0 || ([self _isCollapsedOrCollapsing] & 1) == 0)
  {
    v10 = [self[1] objectForKeyedSubscript:&unk_1EFE30208];
    v11 = v21(v20, v10);

    if (v11)
    {
      v9 = 2;
    }

    else
    {
      v12 = [self[1] objectForKeyedSubscript:&unk_1EFE30250];
      v13 = v21(v20, v12);

      if (v13)
      {
        v9 = 1;
      }

      else
      {
        v14 = [self[1] objectForKeyedSubscript:&unk_1EFE30220];
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

- (void)toggleMasterVisible:(id)visible
{
  visibleCopy = visible;
  if (dyld_program_sdk_at_least())
  {
    [(UISplitViewControllerPanelImpl *)self _triggerDisplayModeAction:visibleCopy];
  }
}

- (void)loadView
{
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  view = [panelController view];

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  [WeakRetained setView:view];

  [view setImpl:self];
  [(UISplitViewControllerPanelImpl *)self _setUpFocusContainerGuides];
}

- (void)setView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  [WeakRetained _super_setView:viewCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  if (_UISplitViewControllerAutoHidesColumns(WeakRetained) && ![(UISplitViewControllerPanelImpl *)self _isCollapsedOrCollapsing])
  {
    v4 = *&self->_flags & 0xC0000;

    if (v4)
    {
      flags = self->_flags;
      self->_flags = (*&flags & 0xFFFFFFFFFFF3FFFFLL);
      displayMode = [(UISplitViewControllerPanelImpl *)self displayMode];
      if (displayMode != [(UISplitViewControllerPanelImpl *)self allowedDisplayModeForCurrentSplitBehaviorGivenDisplayMode:displayMode])
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
    panelController = [(UISplitViewControllerPanelImpl *)self panelController];
    isCollapsed = [panelController isCollapsed];
    panelController2 = [(UISplitViewControllerPanelImpl *)self panelController];
    currentState = [panelController2 currentState];
    isCollapsed2 = [currentState isCollapsed];

    if (isCollapsed == isCollapsed2)
    {
      *&self->_flags &= ~0x80000000uLL;
    }
  }

  [(UISplitViewControllerPanelImpl *)self _updateFocusContainerGuideFrames];
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    [(UISplitViewControllerPanelImpl *)self _updateAllowsTriggeringSidebarKeyCommandAction];
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    view = [WeakRetained view];

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

    style = [(UISplitViewControllerPanelImpl *)self style];
    if (style == 2)
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
    navigationController = [v15 navigationController];

    _existingNavigationBar = [navigationController _existingNavigationBar];
    if ([navigationController isNavigationBarHidden])
    {
      _targetNavigationBarForUISplitViewControllerSidebarButton = [navigationController _targetNavigationBarForUISplitViewControllerSidebarButton];
      v19 = _targetNavigationBarForUISplitViewControllerSidebarButton;
      if (_targetNavigationBarForUISplitViewControllerSidebarButton == _existingNavigationBar)
      {
        v20 = 0;
      }

      else
      {
        v20 = _targetNavigationBarForUISplitViewControllerSidebarButton;
      }

      _existingNavigationBar = v20;
    }

    if (!v12 && style == 2)
    {
      v22 = &unk_1EFE30250;
    }

    else
    {
      v22 = &unk_1EFE30208;
    }

    v23 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:v22];
    navigationController2 = [v23 navigationController];

    _existingNavigationBar2 = [navigationController2 _existingNavigationBar];
    v64 = navigationController;
    if ([navigationController2 isNavigationBarHidden])
    {
      _targetNavigationBarForUISplitViewControllerSidebarButton2 = [navigationController2 _targetNavigationBarForUISplitViewControllerSidebarButton];
      v27 = _targetNavigationBarForUISplitViewControllerSidebarButton2;
      if (_targetNavigationBarForUISplitViewControllerSidebarButton2 == _existingNavigationBar2)
      {
        v28 = 0;
      }

      else
      {
        v28 = _targetNavigationBarForUISplitViewControllerSidebarButton2;
      }

      _existingNavigationBar2 = v28;
    }

    _configuredFloatableView = [(_UIFloatableBarButtonItem *)self->_sidebarToggleButtonItem _configuredFloatableView];
    _referenceView = [(_UIFloatableBarButtonItem *)self->_sidebarToggleButtonItem _referenceView];
    panelController3 = [(UISplitViewControllerPanelImpl *)self panelController];
    view2 = [panelController3 view];
    [view2 layoutIfNeeded];

    [_referenceView bounds];
    [view convertRect:_referenceView fromView:?];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    window = [_referenceView window];

    if (!window)
    {
      [(UIView *)self->_floatableButtonContainer frame];
      v34 = v42;
      v36 = v43;
    }

    _isPrimaryLeading = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
    visualProvider = [_referenceView visualProvider];
    v46 = visualProvider;
    if (_isPrimaryLeading)
    {
      [visualProvider alignmentViewForStaticNavBarButtonLeading];
    }

    else
    {
      [visualProvider alignmentViewForStaticNavBarButtonTrailing];
    }
    v47 = ;

    if ([(UISplitViewControllerPanelImpl *)self _layoutPrimaryOnRight])
    {
      [_referenceView bounds];
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

    panelController4 = [(UISplitViewControllerPanelImpl *)self panelController];
    [panelController4 interpolatedMarginForPrimaryNavigationBar:_existingNavigationBar supplementaryOrSecondaryNavbar:_existingNavigationBar2 getInterpolatedAlpha:v50];
    v53 = v52 - MinX;

    if ([(UISplitViewControllerPanelImpl *)self _layoutPrimaryOnRight])
    {
      [view bounds];
      v54 = CGRectGetMaxX(v69);
      [view safeAreaInsets];
      v56 = v54 - v55 - v53;
      v70.origin.x = v34;
      v70.origin.y = v36;
      v70.size.width = v38;
      v70.size.height = v40;
      v57 = v56 - CGRectGetWidth(v70);
    }

    else
    {
      [view safeAreaInsets];
      v57 = v53 + v58;
    }

    if (!self->_floatableButtonContainer)
    {
      v59 = [[UIView alloc] initWithFrame:v57, v36, v38, v40];
      floatableButtonContainer = self->_floatableButtonContainer;
      self->_floatableButtonContainer = v59;

      [view addSubview:self->_floatableButtonContainer];
      _UIBarsSetAccessibilityLimits(self->_floatableButtonContainer);
    }

    if (_configuredFloatableView)
    {
      superview = [_configuredFloatableView superview];
      v62 = self->_floatableButtonContainer;

      if (superview != v62)
      {
        [(UIView *)self->_floatableButtonContainer bounds];
        [_configuredFloatableView setFrame:?];
        [(UIView *)self->_floatableButtonContainer addSubview:_configuredFloatableView];
        [_configuredFloatableView setAutoresizingMask:18];
      }
    }

    [(UIView *)self->_floatableButtonContainer setFrame:v57, v36, v38, v40];
    [(UIView *)self->_floatableButtonContainer setAlpha:v65];

    goto LABEL_54;
  }
}

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  containerCopy = container;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  supportsColumnStyle = [(UIPanelController *)self->_panelController supportsColumnStyle];
  currentState = [(UIPanelController *)self->_panelController currentState];
  if ([currentState isCollapsed])
  {
    goto LABEL_2;
  }

  v13 = 0.0;
  if (supportsColumnStyle)
  {
    panelController = [(UISplitViewControllerPanelImpl *)self panelController];
    configuration = [panelController configuration];
    [configuration rubberBandExtension];
    v13 = v16;
  }

  panelController2 = [(UISplitViewControllerPanelImpl *)self panelController];
  leadingViewController = [panelController2 leadingViewController];

  if (leadingViewController == containerCopy)
  {
    [currentState leadingWidth];
    v26 = v25;
    if (v25 <= 0.0)
    {
      panelController3 = [(UISplitViewControllerPanelImpl *)self panelController];
      possibleStates = [panelController3 possibleStates];
      v29 = possibleStates;
      v30 = 1;
LABEL_16:
      v26 = minNonzeroPrimaryWidthInStates(possibleStates, v30);
    }

LABEL_17:
    width = v13 + v26;
    goto LABEL_18;
  }

  panelController4 = [(UISplitViewControllerPanelImpl *)self panelController];
  trailingViewController = [panelController4 trailingViewController];

  if (trailingViewController == containerCopy)
  {
    [currentState trailingWidth];
    v26 = v31;
    if (v31 <= 0.0)
    {
      panelController3 = [(UISplitViewControllerPanelImpl *)self panelController];
      possibleStates = [panelController3 possibleStates];
      v29 = possibleStates;
      v30 = 0;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (supportsColumnStyle && ([(UIPanelController *)self->_panelController supplementaryViewController], v21 = objc_claimAutoreleasedReturnValue(), v21, v21 == containerCopy))
  {
    [currentState supplementaryWidth];
    width = v39;
    if (v39 <= 0.0)
    {
      panelController5 = [(UISplitViewControllerPanelImpl *)self panelController];
      possibleStates2 = [panelController5 possibleStates];

      LODWORD(panelController5) = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
      v42 = minNonzeroPrimaryWidthInStates(possibleStates2, panelController5);
      width = minNonzeroSupplementaryWidthInStateWithPrimaryWidthGetMatchingState(possibleStates2, panelController5, 0, v42);
    }

    v43 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];

    if (!v43)
    {
      width = v13 + width;
    }
  }

  else
  {
    mainViewController = [(UIPanelController *)self->_panelController mainViewController];
    v23 = mainViewController;
    if (mainViewController == containerCopy)
    {
    }

    else
    {
      preservedDetailController = [(UIPanelController *)self->_panelController preservedDetailController];

      if (preservedDetailController != containerCopy)
      {
LABEL_2:
        [WeakRetained _super_sizeForChildContentContainer:containerCopy withParentContainerSize:{width, height}];
        width = v11;
        height = v12;
        goto LABEL_18;
      }
    }

    traitCollection = [WeakRetained traitCollection];
    [traitCollection displayScale];
    if (v35 == 0.0)
    {
      mainScreen = [objc_opt_self() mainScreen];
      [mainScreen scale];
      v38 = v37;
    }

    else
    {
      v38 = v35;
    }

    if (([currentState leadingOverlapsMain] & 1) == 0)
    {
      [currentState leadingWidth];
      if (v44 > 0.0)
      {
        [currentState leadingWidth];
        v46 = width - v45;
        configuration2 = [currentState configuration];
        [configuration2 leadingBorderWidthForScale:v38];
        width = v46 - v48;
      }
    }

    if (([currentState trailingOverlapsMain] & 1) == 0)
    {
      [currentState trailingWidth];
      if (v49 > 0.0)
      {
        [currentState trailingWidth];
        v51 = width - v50;
        configuration3 = [currentState configuration];
        [configuration3 trailingBorderWidthForScale:v38];
        width = v51 - v53;
      }
    }

    if (([currentState supplementaryOverlapsMain] & 1) == 0)
    {
      [currentState supplementaryWidth];
      if (v54 > 0.0)
      {
        [currentState supplementaryWidth];
        v56 = width - v55;
        _isPrimaryLeading = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
        configuration4 = [currentState configuration];
        v59 = configuration4;
        if (_isPrimaryLeading)
        {
          [configuration4 leadingBorderWidthForScale:v38];
        }

        else
        {
          [configuration4 trailingBorderWidthForScale:v38];
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

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v63 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  coordinatorCopy = coordinator;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v10 = objc_loadWeakRetained(&self->_delegate);
  _existingView = [WeakRetained _existingView];
  v12 = "_UIMonochromaticTreatment";
  if (_existingView)
  {
    v13 = _existingView;
    traitCollection = [WeakRetained traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];
    horizontalSizeClass2 = [collectionCopy horizontalSizeClass];

    v17 = horizontalSizeClass == horizontalSizeClass2;
    v12 = "_UIMonochromaticTreatment";
    if (!v17)
    {
      objc_storeStrong(&self->_transitioningToTraitCollection, collection);
      *&self->_flags |= 0x80000000uLL;
      _window = [WeakRetained _window];
      firstResponder = [_window firstResponder];

      detailViewController = [WeakRetained detailViewController];
      v21 = detailViewController;
      if (detailViewController)
      {
        v22 = detailViewController;
      }

      else
      {
        v22 = WeakRetained;
      }

      v23 = v22;

      if (![v23 _containsResponder:firstResponder])
      {
        goto LABEL_13;
      }

      if (objc_opt_respondsToSelector())
      {
        style = [(UISplitViewControllerPanelImpl *)self style];
        if (style)
        {
          v25 = style;
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
          v57 = collectionCopy;
          v58 = WeakRetained;
          [coordinatorCopy animateAlongsideTransition:0 completion:v56];

          goto LABEL_14;
        }
      }

      objc_storeStrong(&self->_postTransitionResponder, firstResponder);
      *&self->_flags &= 0xFFFFFFFFFFFFF3FFLL;
      _window2 = [WeakRetained _window];
      [_window2 _setIsSettingFirstResponder:1];

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
        panelController = [(UISplitViewControllerPanelImpl *)self panelController];
        collapsedViewController = [panelController collapsedViewController];

        if (collapsedViewController)
        {
          style2 = [(UISplitViewControllerPanelImpl *)self style];
          v34 = style2;
          if ((style2 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            v51 = _UISplitViewControllerStyleDescription(v34);
            [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:3417 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v51}];

            v36 = 0;
          }

          else
          {
            if (style2 != 2)
            {
              v36 = 0;
LABEL_23:
              perColumnViewControllers = self->_perColumnViewControllers;
              v38 = [MEMORY[0x1E696AD98] numberWithInteger:v36];
              v39 = [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:v38];
              navigationController = [v39 navigationController];

              panelController2 = [(UISplitViewControllerPanelImpl *)self panelController];
              collapsedViewController2 = [panelController2 collapsedViewController];

              if (collapsedViewController2 != navigationController)
              {
LABEL_32:

                goto LABEL_33;
              }

              _nestedTopViewController = [navigationController _nestedTopViewController];
              v44 = [(UISplitViewControllerPanelImpl *)self viewControllerForColumn:0];

              if (_nestedTopViewController == v44)
              {
                v47 = 3;
              }

              else
              {
                v45 = [(UISplitViewControllerPanelImpl *)self viewControllerForColumn:1];

                if (_nestedTopViewController == v45)
                {
                  v47 = 5;
                }

                else
                {
                  v46 = [(UISplitViewControllerPanelImpl *)self viewControllerForColumn:2];

                  if (_nestedTopViewController != v46)
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

            currentHandler = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
            v36 = currentHandler == 0;
          }

          goto LABEL_23;
        }
      }
    }
  }

LABEL_33:
  panelController3 = [(UISplitViewControllerPanelImpl *)self panelController];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = *(v12 + 235);
  v53[2] = __92__UISplitViewControllerPanelImpl_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke_2;
  v53[3] = &unk_1E70F6228;
  v53[4] = self;
  v54 = collectionCopy;
  v55 = coordinatorCopy;
  v49 = coordinatorCopy;
  v50 = collectionCopy;
  [panelController3 willTransitionToTraitCollection:v50 withTransitionCoordinator:v49 superBlock:v53];
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

- (void)traitCollectionDidChange:(id)change
{
  v62 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if ([(UISplitViewControllerPanelImpl *)self _shouldUseFluidSidebarGestures])
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    traitCollection = [WeakRetained traitCollection];
    layoutDirection = [traitCollection layoutDirection];
    layoutDirection2 = [changeCopy layoutDirection];

    if (layoutDirection != layoutDirection2)
    {
      [(UISplitViewControllerPanelImpl *)self _updatePresentationGestureRecognizer];
    }
  }

  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    v8 = objc_loadWeakRetained(&self->_svc);
    traitCollection2 = [v8 traitCollection];
    _presentationSemanticContext = [traitCollection2 _presentationSemanticContext];
    _presentationSemanticContext2 = [changeCopy _presentationSemanticContext];

    if (_presentationSemanticContext != _presentationSemanticContext2)
    {
      _presentationSemanticContext3 = [changeCopy _presentationSemanticContext];
      if (!self)
      {
        goto LABEL_22;
      }

      v14 = _presentationSemanticContext3;
      style = [(UISplitViewControllerPanelImpl *)self style];
      if ((style - 3) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v46 = style;
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v48 = _UISplitViewControllerStyleDescription(v46);
        [currentHandler handleFailureInMethod:sel__updateDisplayModeIfNecessaryForChangeFromPresentationSemanticContext_ object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:3495 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v48}];
      }

      v16 = objc_loadWeakRetained(&self->_svc);
      _existingView = [v16 _existingView];
      [_existingView bounds];
      Width = CGRectGetWidth(v64);

      v19 = objc_loadWeakRetained(&self->_svc);
      traitCollection3 = [v19 traitCollection];
      _presentationSemanticContext4 = [traitCollection3 _presentationSemanticContext];

      if (Width <= 0.0)
      {
        goto LABEL_22;
      }

      v22 = objc_loadWeakRetained(&self->_svc);
      if (!_UISplitViewControllerAutoHidesColumns(v22) || _presentationSemanticContext4 == v14)
      {
      }

      else
      {
        _isCollapsedOrCollapsing = [(UISplitViewControllerPanelImpl *)self _isCollapsedOrCollapsing];

        if (!_isCollapsedOrCollapsing)
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

            displayMode = [(UISplitViewControllerPanelImpl *)self displayMode];
            v28 = displayMode;
            if (displayMode != 2 || _presentationSemanticContext4 == 2)
            {
              if (displayMode != 1 || _presentationSemanticContext4 != 2)
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
              panelController = [(UISplitViewControllerPanelImpl *)self panelController];
              [panelController setNeedsUpdate];

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
                v59 = *&_presentationSemanticContext4;
                v60 = 2048;
                v61 = Width;
                _os_log_impl(&dword_188A29000, v43, OS_LOG_TYPE_ERROR, "%@: Unchanged displayMode, %@, despite change in presentationSemanticContext (from %ld to %ld) with width %g", buf, 0x34u);
              }
            }
          }
        }
      }

LABEL_22:
      panelController2 = [(UISplitViewControllerPanelImpl *)self panelController];
      [panelController2 setNeedsUpdate];
    }
  }

  panelController3 = [(UISplitViewControllerPanelImpl *)self panelController];
  v34 = objc_loadWeakRetained(&self->_svc);
  traitCollection4 = [v34 traitCollection];
  [panelController3 traitCollectionDidChange:changeCopy toNewTraits:traitCollection4];
}

- (int64_t)_svcOrientation
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _window = [WeakRetained _window];
  windowScene = [_window windowScene];
  _interfaceOrientation = [windowScene _interfaceOrientation];

  return _interfaceOrientation;
}

- (int64_t)_svcViewWindowOrientation
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  view = [WeakRetained view];
  window = [view window];
  windowScene = [window windowScene];
  _interfaceOrientation = [windowScene _interfaceOrientation];

  return _interfaceOrientation;
}

- (BOOL)canTileSidebarColumn:(int64_t)column
{
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = _UISplitViewControllerStyleDescription(style);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:3542 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v24}];
  }

  if (column >= 2)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = _UISplitViewControllerColumnDescription(column);
    [v7 raise:v8 format:{@"canTileSidebarColumn not supported for %@ column", v9}];
  }

  if ([(UISplitViewControllerPanelImpl *)self _isCollapsed])
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _existingView = [WeakRetained _existingView];
  [_existingView bounds];
  Width = CGRectGetWidth(v30);
  if (!self)
  {
    goto LABEL_11;
  }

  v14 = Width;
  style2 = [(UISplitViewControllerPanelImpl *)self style];
  if (style2 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = _UISplitViewControllerStyleDescription(style2);
    [currentHandler2 handleFailureInMethod:sel__maximumNumberOfColumnsAllowedToTileInWidth_ object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:3577 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v26}];
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
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:sel__maximumNumberOfColumnsAllowedToTileInWidth_ object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:3588 description:@"Internal UIKit error: UISplitViewControllerDisplayModeOneBesideSecondary should only report nonzero width for one of the primary or supplementary columns"];

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

    if (style2 == 2 && !v19)
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
  if (style == 2 && v16 >= 2)
  {
    if (column == 1)
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

- (BOOL)isShowingColumn:(int64_t)column
{
  if (![(UISplitViewControllerPanelImpl *)self style]|| [(UISplitViewControllerPanelImpl *)self isCollapsed])
  {
    return 0;
  }

  style = [(UISplitViewControllerPanelImpl *)self style];
  displayMode = [(UISplitViewControllerPanelImpl *)self displayMode];

  return _UISplitViewControllerColumnIsVisibleForDisplayMode(style, column, displayMode);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _svcOrientation = [(UISplitViewControllerPanelImpl *)self _svcOrientation];
  v10 = _svcOrientation;
  v11 = _svcOrientation - 1;
  switch(_svcOrientation)
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
      if (_svcOrientation != 2)
      {
        v12 = 0.0;
      }

      break;
  }

  CGAffineTransformMakeRotation(&t1, v12);
  if (coordinatorCopy)
  {
    [coordinatorCopy targetTransform];
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

  _existingView = [WeakRetained _existingView];
  [_existingView bounds];
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
      [WeakRetained _super_viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:{width, height, *&v33, *&v34}];
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
  v36 = coordinatorCopy;
  v19 = WeakRetained;
  traitCollection = [WeakRetained traitCollection];
  v21 = objc_loadWeakRetained(&self->_svc);
  _existingView2 = [v21 _existingView];
  window = [_existingView2 window];
  windowScene = [window windowScene];
  _effectiveUISettings = [windowScene _effectiveUISettings];
  inLiveResize = [_effectiveUISettings inLiveResize];

  v27 = traitCollection;
  if ((inLiveResize & 1) == 0 && [traitCollection userInterfaceIdiom] == 1 && -[UITraitCollection horizontalSizeClass](self->_transitioningToTraitCollection, "horizontalSizeClass") != UIUserInterfaceSizeClassCompact)
  {
    if ([(UISplitViewControllerPanelImpl *)self style])
    {
      if ([(UISplitViewControllerPanelImpl *)self userGeneratedDisplayMode])
      {
        userGeneratedDisplayMode = [(UISplitViewControllerPanelImpl *)self userGeneratedDisplayMode];
        if (userGeneratedDisplayMode != [(UISplitViewControllerPanelImpl *)self preferredDisplayMode])
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

  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  WeakRetained = v19;
  coordinatorCopy = v36;
  if (!userInterfaceIdiom && [(UISplitViewControllerPanelImpl *)self _iPhoneShouldUseOverlayInCurrentEnvironment]&& (*&self->_transitioningFlags & 1) != 0)
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
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __85__UISplitViewControllerPanelImpl_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3;
  v37[3] = &unk_1E70F9780;
  v38 = v19;
  v40 = width;
  v41 = height;
  v39 = v36;
  [panelController viewWillTransitionToSize:v39 withTransitionCoordinator:v37 superBlock:{width, height}];

  *&self->_flags &= ~0x100uLL;
  self->_transitioningToSize = *MEMORY[0x1E695F060];
  self->_transitioningToOrientation = 0;

LABEL_53:
}

- (id)navigationControllerForColumn:(int64_t)column
{
  v3 = [(UISplitViewControllerPanelImpl *)self _topLevelViewControllerForColumn:column];
  navigationController = [v3 navigationController];

  return navigationController;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  containerCopy = container;
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  [panelController preferredContentSizeDidChangeForChildContentContainer:containerCopy];
}

- (id)_orderedPreferredFocusedViewControllers
{
  v18[1] = *MEMORY[0x1E69E9840];
  viewControllers = [(UISplitViewControllerPanelImpl *)self viewControllers];
  if (!dyld_program_sdk_at_least() || ![viewControllers count])
  {
    array = viewControllers;
    goto LABEL_10;
  }

  if (![(UISplitViewControllerPanelImpl *)self style])
  {
    supplementaryViewController = [viewControllers subarrayWithRange:{1, objc_msgSend(viewControllers, "count") - 1}];
    firstObject = [viewControllers firstObject];
    array = [supplementaryViewController arrayByAddingObject:firstObject];

    goto LABEL_32;
  }

  if ([(UISplitViewControllerPanelImpl *)self isCollapsed])
  {
    v4 = [(UISplitViewControllerPanelImpl *)self viewControllerForColumn:3];
    if (v4 || ([(UIPanelController *)self->_panelController collapsedViewController], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      WeakRetained = v4;
      v18[0] = v4;
      viewControllers2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
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
      viewControllers2 = [WeakRetained viewControllers];
    }

    array = viewControllers2;

    goto LABEL_10;
  }

  array = [MEMORY[0x1E695DF70] array];
  if (![(UIPanelController *)self->_panelController isAnimating])
  {
    if ((_UISplitViewControllerColumnIsHiddenOrDimmedForDisplayMode([(UISplitViewControllerPanelImpl *)self style], 2, [(UISplitViewControllerPanelImpl *)self displayMode]) & 1) == 0)
    {
      v13 = [(UISplitViewControllerPanelImpl *)self viewControllerForColumn:2];
      if (v13)
      {
        [array addObject:v13];
      }
    }

    if ((_UISplitViewControllerColumnIsHiddenOrDimmedForDisplayMode([(UISplitViewControllerPanelImpl *)self style], 0, [(UISplitViewControllerPanelImpl *)self displayMode]) & 1) == 0)
    {
      v14 = [(UISplitViewControllerPanelImpl *)self viewControllerForColumn:0];
      if (v14)
      {
        [array addObject:v14];
      }
    }

    if (_UISplitViewControllerColumnIsHiddenOrDimmedForDisplayMode([(UISplitViewControllerPanelImpl *)self style], 1, [(UISplitViewControllerPanelImpl *)self displayMode]))
    {
      goto LABEL_10;
    }

    supplementaryViewController = [(UISplitViewControllerPanelImpl *)self viewControllerForColumn:1];
    if (supplementaryViewController)
    {
      goto LABEL_31;
    }

LABEL_32:

    goto LABEL_10;
  }

  if ([(UIPanelController *)self->_panelController isTrailingViewControllerVisibleAfterAnimation])
  {
    trailingViewController = [(UIPanelController *)self->_panelController trailingViewController];
    [array addObject:trailingViewController];
  }

  if ([(UIPanelController *)self->_panelController isLeadingViewControllerVisibleAfterAnimation])
  {
    leadingViewController = [(UIPanelController *)self->_panelController leadingViewController];
    [array addObject:leadingViewController];
  }

  if ([(UIPanelController *)self->_panelController isSupplementaryViewControllerVisibleAfterAnimation])
  {
    supplementaryViewController = [(UIPanelController *)self->_panelController supplementaryViewController];
LABEL_31:
    [array addObject:supplementaryViewController];
    goto LABEL_32;
  }

LABEL_10:

  return array;
}

- (UIView)preferredFocusedView
{
  v21 = *MEMORY[0x1E69E9840];
  _orderedPreferredFocusedViewControllers = [(UISplitViewControllerPanelImpl *)self _orderedPreferredFocusedViewControllers];
  _lastFocusedChildViewControllerColumn = [(UISplitViewControllerPanelImpl *)self _lastFocusedChildViewControllerColumn];
  if (_lastFocusedChildViewControllerColumn == 999)
  {
    goto LABEL_14;
  }

  v5 = _lastFocusedChildViewControllerColumn;
  if (![(UISplitViewControllerPanelImpl *)self style])
  {
    viewControllers = [(UISplitViewControllerPanelImpl *)self viewControllers];
    if (v5 >= [viewControllers count])
    {
      v6 = 0;
    }

    else
    {
      v6 = [viewControllers objectAtIndexedSubscript:v5];
    }

    if (!v6)
    {
      goto LABEL_13;
    }

LABEL_9:
    if ([_orderedPreferredFocusedViewControllers containsObject:v6])
    {
      preferredFocusedView = [v6 preferredFocusedView];

      if (preferredFocusedView && ([(UIView *)preferredFocusedView _containsPreferredFocusableView]& 1) != 0)
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
  preferredFocusedView = 0;
LABEL_15:
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  WeakRetained = _orderedPreferredFocusedViewControllers;
  v10 = [WeakRetained countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
LABEL_17:
    v13 = 0;
    v14 = preferredFocusedView;
    while (1)
    {
      if (*v17 != v12)
      {
        objc_enumerationMutation(WeakRetained);
      }

      preferredFocusedView = [*(*(&v16 + 1) + 8 * v13) preferredFocusedView];

      if (preferredFocusedView)
      {
        if (([(UIView *)preferredFocusedView _containsPreferredFocusableView]& 1) != 0)
        {
          break;
        }
      }

      ++v13;
      v14 = preferredFocusedView;
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

    if (preferredFocusedView)
    {
      goto LABEL_27;
    }

    WeakRetained = objc_loadWeakRetained(&self->_svc);
    preferredFocusedView = [WeakRetained _super_preferredFocusedView];
  }

LABEL_27:

  return preferredFocusedView;
}

- (NSArray)preferredFocusEnvironments
{
  v25 = *MEMORY[0x1E69E9840];
  _orderedPreferredFocusedViewControllers = [(UISplitViewControllerPanelImpl *)self _orderedPreferredFocusedViewControllers];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _lastFocusedChildViewControllerColumn = [(UISplitViewControllerPanelImpl *)self _lastFocusedChildViewControllerColumn];
  if (_lastFocusedChildViewControllerColumn != 999)
  {
    v6 = _lastFocusedChildViewControllerColumn;
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
      viewControllers = [(UISplitViewControllerPanelImpl *)self viewControllers];
      if (v6 >= [viewControllers count])
      {
        v7 = 0;
      }

      else
      {
        v7 = [viewControllers objectAtIndexedSubscript:v6];
      }

      if (!v7)
      {
        goto LABEL_11;
      }
    }

    if ([_orderedPreferredFocusedViewControllers containsObject:v7])
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
  v9 = _orderedPreferredFocusedViewControllers;
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
  _super_preferredFocusEnvironments = [WeakRetained _super_preferredFocusEnvironments];
  [v4 addObjectsFromArray:_super_preferredFocusEnvironments];

  v17 = objc_loadWeakRetained(&self->_svc);
  v18 = _UIFocusEnvironmentCombinedPreferredFocusEnvironments(v17, v4, [v17 _subclassPreferredFocusedViewPrioritizationType]);

  return v18;
}

- (UIFocusEnvironment)_overridingPreferredFocusEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _super_overridingPreferredFocusEnvironment = [WeakRetained _super_overridingPreferredFocusEnvironment];

  if (_super_overridingPreferredFocusEnvironment)
  {
    firstObject = _super_overridingPreferredFocusEnvironment;
  }

  else
  {
    _orderedPreferredFocusedViewControllers = [(UISplitViewControllerPanelImpl *)self _orderedPreferredFocusedViewControllers];
    if ([_orderedPreferredFocusedViewControllers count] == 1)
    {
      firstObject = [_orderedPreferredFocusedViewControllers firstObject];
    }

    else
    {
      firstObject = 0;
    }
  }

  return firstObject;
}

- (BOOL)shouldUpdateFocusInContext:(id)context
{
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v6 = [WeakRetained _super_shouldUpdateFocusInContext:contextCopy];

  return v6;
}

- (id)leadingVisibleViewController
{
  style = [(UISplitViewControllerPanelImpl *)self style];
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  isAnimating = [panelController isAnimating];
  if (!style)
  {
    panelController2 = [(UISplitViewControllerPanelImpl *)self panelController];
    v8 = panelController2;
    if (isAnimating)
    {
      isLeadingViewControllerVisibleAfterAnimation = [panelController2 isLeadingViewControllerVisibleAfterAnimation];

      if ((isLeadingViewControllerVisibleAfterAnimation & 1) == 0)
      {
LABEL_6:
        panelController3 = [(UISplitViewControllerPanelImpl *)self panelController];
        panelController = panelController3;
        goto LABEL_7;
      }
    }

    else
    {
      currentState = [panelController2 currentState];
      isLeadingVisible = [currentState isLeadingVisible];

      if ((isLeadingVisible & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    panelController4 = [(UISplitViewControllerPanelImpl *)self panelController];
    panelController = panelController4;
LABEL_16:
    leadingViewController = [panelController4 leadingViewController];
    goto LABEL_17;
  }

  if ([(UISplitViewControllerPanelImpl *)self primaryEdge])
  {
LABEL_3:
    panelController3 = panelController;
LABEL_7:
    leadingViewController = [panelController3 mainViewController];
    goto LABEL_17;
  }

  if (isAnimating)
  {
    if (([panelController isLeadingViewControllerVisibleAfterAnimation] & 1) == 0)
    {
      if (([panelController isSupplementaryViewControllerVisibleAfterAnimation] & 1) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_21;
    }

    goto LABEL_15;
  }

  currentState2 = [panelController currentState];
  isLeadingVisible2 = [currentState2 isLeadingVisible];

  if (isLeadingVisible2)
  {
LABEL_15:
    panelController4 = panelController;
    goto LABEL_16;
  }

  currentState3 = [panelController currentState];
  isSupplementaryVisible = [currentState3 isSupplementaryVisible];

  if (!isSupplementaryVisible)
  {
    goto LABEL_3;
  }

LABEL_21:
  leadingViewController = [panelController supplementaryViewController];
LABEL_17:
  v16 = leadingViewController;

  return v16;
}

- (id)trailingVisibleViewController
{
  style = [(UISplitViewControllerPanelImpl *)self style];
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  isAnimating = [panelController isAnimating];
  if (!style)
  {
    panelController2 = [(UISplitViewControllerPanelImpl *)self panelController];
    v8 = panelController2;
    if (isAnimating)
    {
      isTrailingViewControllerVisibleAfterAnimation = [panelController2 isTrailingViewControllerVisibleAfterAnimation];

      if ((isTrailingViewControllerVisibleAfterAnimation & 1) == 0)
      {
LABEL_9:
        panelController3 = [(UISplitViewControllerPanelImpl *)self panelController];
        panelController = panelController3;
        goto LABEL_10;
      }
    }

    else
    {
      currentState = [panelController2 currentState];
      isTrailingVisible = [currentState isTrailingVisible];

      if ((isTrailingVisible & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    panelController4 = [(UISplitViewControllerPanelImpl *)self panelController];
    panelController = panelController4;
LABEL_15:
    trailingViewController = [panelController4 trailingViewController];
    goto LABEL_16;
  }

  if ([(UISplitViewControllerPanelImpl *)self primaryEdge]!= 1)
  {
LABEL_6:
    panelController3 = panelController;
LABEL_10:
    trailingViewController = [panelController3 mainViewController];
    goto LABEL_16;
  }

  if (isAnimating)
  {
    if (([panelController isTrailingViewControllerVisibleAfterAnimation] & 1) == 0)
    {
      if (([panelController isSupplementaryViewControllerVisibleAfterAnimation] & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

    goto LABEL_14;
  }

  currentState2 = [panelController currentState];
  isTrailingVisible2 = [currentState2 isTrailingVisible];

  if (isTrailingVisible2)
  {
LABEL_14:
    panelController4 = panelController;
    goto LABEL_15;
  }

  currentState3 = [panelController currentState];
  isSupplementaryVisible = [currentState3 isSupplementaryVisible];

  if (!isSupplementaryVisible)
  {
    goto LABEL_6;
  }

LABEL_20:
  trailingViewController = [panelController supplementaryViewController];
LABEL_16:
  v16 = trailingViewController;

  return v16;
}

- (int64_t)preferredLeadingStatusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _shouldUseSeparateStatusBarStyles = [WeakRetained _shouldUseSeparateStatusBarStyles];

  if (!_shouldUseSeparateStatusBarStyles)
  {
    return 4;
  }

  leadingVisibleViewController = [(UISplitViewControllerPanelImpl *)self leadingVisibleViewController];
  _effectiveStatusBarStyleViewController = [leadingVisibleViewController _effectiveStatusBarStyleViewController];

  v7 = _viewControllerIfStatusBarPartStyleProviding(_effectiveStatusBarStyleViewController);
  v8 = v7;
  if (!v7 || (v9 = [v7 preferredLeadingStatusBarStyle], v9 == 4))
  {
    preferredStatusBarStyle = [_effectiveStatusBarStyleViewController preferredStatusBarStyle];
    if (preferredStatusBarStyle == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2 * (preferredStatusBarStyle == 3);
    }
  }

  return v9;
}

- (int64_t)preferredTrailingStatusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _shouldUseSeparateStatusBarStyles = [WeakRetained _shouldUseSeparateStatusBarStyles];

  if (!_shouldUseSeparateStatusBarStyles)
  {
    return 4;
  }

  trailingVisibleViewController = [(UISplitViewControllerPanelImpl *)self trailingVisibleViewController];
  _effectiveStatusBarStyleViewController = [trailingVisibleViewController _effectiveStatusBarStyleViewController];

  v7 = _viewControllerIfStatusBarPartStyleProviding(_effectiveStatusBarStyleViewController);
  v8 = v7;
  if (!v7 || (v9 = [v7 preferredTrailingStatusBarStyle], v9 == 4))
  {
    preferredStatusBarStyle = [_effectiveStatusBarStyleViewController preferredStatusBarStyle];
    if (preferredStatusBarStyle == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2 * (preferredStatusBarStyle == 3);
    }
  }

  return v9;
}

- (int64_t)preferredCenterStatusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _shouldUseSeparateStatusBarStyles = [WeakRetained _shouldUseSeparateStatusBarStyles];

  if (_shouldUseSeparateStatusBarStyles)
  {
    style = [(UISplitViewControllerPanelImpl *)self style];
    panelController = [(UISplitViewControllerPanelImpl *)self panelController];
    v7 = panelController;
    if (!style)
    {
      mainViewController = [panelController mainViewController];
      _effectiveStatusBarStyleViewController = [mainViewController _effectiveStatusBarStyleViewController];
      v13 = _effectiveStatusBarStyleViewController;
      v14 = v7;
      goto LABEL_16;
    }

    if ([panelController isAnimating])
    {
      isLeadingViewControllerVisibleAfterAnimation = [v7 isLeadingViewControllerVisibleAfterAnimation];
      isTrailingViewControllerVisibleAfterAnimation = [v7 isTrailingViewControllerVisibleAfterAnimation];
      if (![v7 isSupplementaryViewControllerVisibleAfterAnimation])
      {
        goto LABEL_11;
      }
    }

    else
    {
      currentState = [v7 currentState];
      isLeadingViewControllerVisibleAfterAnimation = [currentState isLeadingVisible];

      currentState2 = [v7 currentState];
      isTrailingViewControllerVisibleAfterAnimation = [currentState2 isTrailingVisible];

      currentState3 = [v7 currentState];
      LODWORD(currentState2) = [currentState3 isSupplementaryVisible];

      if (!currentState2)
      {
        goto LABEL_11;
      }
    }

    if ((isLeadingViewControllerVisibleAfterAnimation | isTrailingViewControllerVisibleAfterAnimation))
    {
      supplementaryViewController = [v7 supplementaryViewController];
      goto LABEL_12;
    }

LABEL_11:
    supplementaryViewController = [v7 mainViewController];
LABEL_12:
    v19 = supplementaryViewController;
    _effectiveStatusBarStyleViewController = [supplementaryViewController _effectiveStatusBarStyleViewController];

    v20 = _viewControllerIfStatusBarPartStyleProviding(_effectiveStatusBarStyleViewController);
    v13 = v20;
    if (v20)
    {
      preferredTrailingStatusBarStyle = [v20 preferredTrailingStatusBarStyle];
      mainViewController = v7;
      v14 = _effectiveStatusBarStyleViewController;
      if (preferredTrailingStatusBarStyle != 4)
      {
LABEL_20:

        return preferredTrailingStatusBarStyle;
      }
    }

    else
    {
      mainViewController = v7;
      v14 = _effectiveStatusBarStyleViewController;
    }

LABEL_16:
    preferredStatusBarStyle = [_effectiveStatusBarStyleViewController preferredStatusBarStyle];
    if (preferredStatusBarStyle == 1)
    {
      preferredTrailingStatusBarStyle = 1;
    }

    else
    {
      preferredTrailingStatusBarStyle = 2 * (preferredStatusBarStyle == 3);
    }

    v7 = mainViewController;
    _effectiveStatusBarStyleViewController = v14;
    goto LABEL_20;
  }

  return 4;
}

- (int64_t)preferredTrafficLightStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _shouldUseSeparateStatusBarStyles = [WeakRetained _shouldUseSeparateStatusBarStyles];

  if (!_shouldUseSeparateStatusBarStyles)
  {
    return 0;
  }

  leadingVisibleViewController = [(UISplitViewControllerPanelImpl *)self leadingVisibleViewController];
  _effectiveStatusBarStyleViewController = [leadingVisibleViewController _effectiveStatusBarStyleViewController];

  preferredTrafficLightStyle = [_effectiveStatusBarStyleViewController preferredTrafficLightStyle];
  return preferredTrafficLightStyle;
}

- (UIViewController)childViewControllerForStatusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _shouldUseNewStatusBarBehavior = [WeakRetained _shouldUseNewStatusBarBehavior];

  v5 = objc_loadWeakRetained(&self->_svc);
  v6 = v5;
  if (_shouldUseNewStatusBarBehavior)
  {
    if ([v5 _shouldUseSeparateStatusBarStyles])
    {
      collapsedViewController = 0;
    }

    else
    {
      panelController = [(UISplitViewControllerPanelImpl *)self panelController];
      collapsedViewController = [panelController collapsedViewController];
    }
  }

  else
  {
    collapsedViewController = [v5 _super_childViewControllerForStatusBarStyle];
  }

  return collapsedViewController;
}

- (BOOL)prefersPointerLocked
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _super_prefersPointerLocked = [WeakRetained _super_prefersPointerLocked];

  return _super_prefersPointerLocked;
}

- (BOOL)prefersInterfaceOrientationLocked
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _super_prefersInterfaceOrientationLocked = [WeakRetained _super_prefersInterfaceOrientationLocked];

  return _super_prefersInterfaceOrientationLocked;
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  _isCollapsed = [(UISplitViewControllerPanelImpl *)self _isCollapsed];
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  v5 = panelController;
  if (_isCollapsed)
  {
    [panelController collapsedViewController];
  }

  else
  {
    [panelController mainViewController];
  }
  v6 = ;

  _effectiveHomeIndicatorAutoHiddenViewController = [v6 _effectiveHomeIndicatorAutoHiddenViewController];
  prefersHomeIndicatorAutoHidden = [_effectiveHomeIndicatorAutoHiddenViewController prefersHomeIndicatorAutoHidden];

  return prefersHomeIndicatorAutoHidden;
}

- (unint64_t)preferredScreenEdgesDeferringSystemGestures
{
  _layoutPrimaryOnRight = [(UISplitViewControllerPanelImpl *)self _layoutPrimaryOnRight];
  leadingVisibleViewController = [(UISplitViewControllerPanelImpl *)self leadingVisibleViewController];
  trailingVisibleViewController = [(UISplitViewControllerPanelImpl *)self trailingVisibleViewController];
  v6 = trailingVisibleViewController;
  if (_layoutPrimaryOnRight)
  {
    v7 = trailingVisibleViewController;
  }

  else
  {
    v7 = leadingVisibleViewController;
  }

  if (_layoutPrimaryOnRight)
  {
    v8 = leadingVisibleViewController;
  }

  else
  {
    v8 = trailingVisibleViewController;
  }

  v9 = v8;
  v10 = v7;
  _effectiveScreenEdgesDeferringSystemGesturesViewController = [v10 _effectiveScreenEdgesDeferringSystemGesturesViewController];
  preferredScreenEdgesDeferringSystemGestures = [_effectiveScreenEdgesDeferringSystemGesturesViewController preferredScreenEdgesDeferringSystemGestures];

  if (v6 == leadingVisibleViewController)
  {
    preferredScreenEdgesDeferringSystemGestures2 = preferredScreenEdgesDeferringSystemGestures;
  }

  else
  {
    _effectiveScreenEdgesDeferringSystemGesturesViewController2 = [v9 _effectiveScreenEdgesDeferringSystemGesturesViewController];
    preferredScreenEdgesDeferringSystemGestures2 = [_effectiveScreenEdgesDeferringSystemGesturesViewController2 preferredScreenEdgesDeferringSystemGestures];
  }

  v15 = preferredScreenEdgesDeferringSystemGestures2 & 0xFFFFFFFFFFFFFFFDLL | preferredScreenEdgesDeferringSystemGestures & 0xFFFFFFFFFFFFFFF7;
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  if ([panelController isAnimating])
  {
    if (([panelController isSupplementaryViewControllerVisibleAfterAnimation] & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  currentState = [panelController currentState];
  isSupplementaryVisible = [currentState isSupplementaryVisible];

  if (isSupplementaryVisible)
  {
LABEL_14:
    supplementaryViewController = [panelController supplementaryViewController];
    _effectiveScreenEdgesDeferringSystemGesturesViewController3 = [supplementaryViewController _effectiveScreenEdgesDeferringSystemGesturesViewController];
    preferredScreenEdgesDeferringSystemGestures3 = [_effectiveScreenEdgesDeferringSystemGesturesViewController3 preferredScreenEdgesDeferringSystemGestures];

    v15 |= preferredScreenEdgesDeferringSystemGestures3 & 0xFFFFFFFFFFFFFFF5;
  }

LABEL_15:
  if (![(UISplitViewControllerPanelImpl *)self _isCollapsed]&& ![(UISplitViewControllerPanelImpl *)self _isPrimaryShown])
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    presentsWithGesture = [WeakRetained presentsWithGesture];

    v24 = 2;
    if (_layoutPrimaryOnRight)
    {
      v24 = 8;
    }

    if ((presentsWithGesture & 1) == 0)
    {
      v24 = 0;
    }

    v15 |= v24;
  }

  return v15;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  childViewControllers = [WeakRetained childViewControllers];

  v6 = [childViewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        v9 &= [*(*(&v12 + 1) + 8 * i) shouldAutorotateToInterfaceOrientation:orientation];
      }

      v7 = [childViewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  delegate = [WeakRetained delegate];

  if (dyld_program_sdk_at_least() && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = objc_loadWeakRetained(&self->_svc);
    _super_supportedInterfaceOrientations = [delegate splitViewControllerSupportedInterfaceOrientations:v5];
  }

  else
  {
    v5 = objc_loadWeakRetained(&self->_svc);
    _super_supportedInterfaceOrientations = [v5 _super_supportedInterfaceOrientations];
  }

  v7 = _super_supportedInterfaceOrientations;

  return v7;
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _super_preferredInterfaceOrientationForPresentation = [WeakRetained _super_preferredInterfaceOrientationForPresentation];

  return _super_preferredInterfaceOrientationForPresentation;
}

- (void)removeChildViewController:(id)controller
{
  controllerCopy = controller;
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  [panelController removeChildViewController:controllerCopy];

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  [WeakRetained _super_removeChildViewController:controllerCopy];
}

- (void)unloadViewForced:(BOOL)forced
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(UISplitViewControllerPanelImpl *)self panelController:forced];
  allViewControllers = [v3 allViewControllers];

  v5 = [allViewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(allViewControllers);
        }

        [*(*(&v9 + 1) + 8 * v8++) unloadViewIfReloadable];
      }

      while (v6 != v8);
      v6 = [allViewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_didUpdateFocusInContext:(id)context
{
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  [WeakRetained _super_didUpdateFocusInContext:contextCopy];

  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    nextFocusedView = [contextCopy nextFocusedView];

    if (!nextFocusedView)
    {
      goto LABEL_13;
    }

    nextFocusedView2 = [contextCopy nextFocusedView];
    self->_lastFocusedChildViewControllerColumn = [(UISplitViewControllerPanelImpl *)self _columnForView:nextFocusedView2 getIsContent:0];
  }

  else
  {
    nextFocusedView2 = [(UISplitViewControllerPanelImpl *)self viewControllers];
    nextFocusedView3 = [contextCopy nextFocusedView];
    _viewControllerForAncestor = [nextFocusedView3 _viewControllerForAncestor];

    if (_viewControllerForAncestor)
    {
      while (1)
      {
        v9 = [nextFocusedView2 indexOfObject:_viewControllerForAncestor];
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        parentViewController = [_viewControllerForAncestor parentViewController];
        v11 = parentViewController;
        if (parentViewController)
        {
          presentingViewController = parentViewController;
        }

        else
        {
          presentingViewController = [_viewControllerForAncestor presentingViewController];
        }

        v13 = presentingViewController;

        _viewControllerForAncestor = v13;
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
  view = [v14 view];
  effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];

  _focusMovement = [contextCopy _focusMovement];
  if ([_focusMovement _inputType] == 4)
  {
    if (effectiveUserInterfaceLayoutDirection)
    {
      v18 = 8;
    }

    else
    {
      v18 = 4;
    }

    focusHeading = [contextCopy focusHeading];

    if (focusHeading == v18)
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
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  gatherMultitaskingDragExclusionRectsFromVisibleColumns = [panelController gatherMultitaskingDragExclusionRectsFromVisibleColumns];

  return gatherMultitaskingDragExclusionRectsFromVisibleColumns;
}

- (BOOL)_hasPreferredInterfaceOrientationForPresentation
{
  if (dyld_program_sdk_at_least())
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    delegate = [WeakRetained delegate];
    v5 = objc_opt_respondsToSelector();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (CGRect)_frameForChildContentContainer:(id)container
{
  v30 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  WeakRetained = [panelController allViewControllers];

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
        if (v11 == containerCopy)
        {
          view = [v11 view];
          [view frame];
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
  view = [WeakRetained view];
  [view bounds];
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

- (BOOL)_usePaddingForEdgeInsetsForChildViewController:(id)controller
{
  controllerCopy = controller;
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

    v5 = [(UISplitViewControllerPanelImpl *)self _columnForViewController:controllerCopy]== v8;
  }

  return v5;
}

- (UIEdgeInsets)_tvOSColumnStyleExtraInsetsForChildViewController:(id)controller
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

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  [WeakRetained _contentOverlayInsets];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    if ([(UISplitViewControllerPanelImpl *)self _usePaddingForEdgeInsetsForChildViewController:controllerCopy])
    {
      _layoutPrimaryOnRight = [(UISplitViewControllerPanelImpl *)self _layoutPrimaryOnRight];
      [(_UIHyperConstantExtender *)self->_extender _maximumDistance];
      v18 = v11 + v17;
      v19 = v15 + v17;
      if (_layoutPrimaryOnRight)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0.0;
      }

      if (_layoutPrimaryOnRight)
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
      view = [controllerCopy view];
      [view frame];
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
      view2 = [controllerCopy view];
      superview = [view2 superview];
      [superview bounds];
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
    [(UISplitViewControllerPanelImpl *)self _contentMarginForChildViewController:controllerCopy];
    v15 = v20;
    v11 = v20;
  }

  v41 = [(UISplitViewControllerPanelImpl *)self tabBarHostedView:*&v48];
  v42 = v41;
  if (v41)
  {
    [v41 floatingTabBarTopInsetForViewController:controllerCopy];
    v9 = v9 + v43;
  }

  *absolute = 1;
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

- (void)_marginInfoForChild:(id)child leftMargin:(double *)margin rightMargin:(double *)rightMargin
{
  childCopy = child;
  if ([(UISplitViewControllerPanelImpl *)self _shouldZeroSafeAreaInsetsForViewController:?])
  {
    *margin = 0.0;
    *rightMargin = 0.0;
  }

  else if ([(UISplitViewControllerPanelImpl *)self style])
  {
    [(UISplitViewControllerPanelImpl *)self _contentMarginForChildViewController:childCopy];
    *rightMargin = v8;
    *margin = v8;
  }

  else
  {
    *margin = -1.79769313e308;
    *rightMargin = -1.79769313e308;
  }
}

- (BOOL)_shouldZeroSafeAreaInsetsForViewController:(id)controller
{
  controllerCopy = controller;
  _currentPrimaryChildViewController = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];

  if (_currentPrimaryChildViewController == controllerCopy && qword_1ED49D968 != -1)
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
  viewControllers = [WeakRetained viewControllers];

  v5 = [viewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(viewControllers);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [(UISplitViewControllerPanelImpl *)self _contentMarginForChildViewController:v9];
        [v9 _setContentMargin:?];
      }

      v6 = [viewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (double)_contentMarginForChildViewController:(id)controller
{
  view = [controller view];
  [UIViewController _horizontalContentMarginForView:view];
  v5 = v4;

  return v5;
}

- (id)_unspecifiedStyleChildViewControllersToSendViewWillTransitionToSize
{
  if (self->_lastNotifiedIsCollapsed)
  {
    array = [MEMORY[0x1E695DF70] array];
    _currentPrimaryChildViewController = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
    if (_currentPrimaryChildViewController)
    {
      [array addObject:_currentPrimaryChildViewController];
    }

    panelController = [(UISplitViewControllerPanelImpl *)self panelController];
    mainViewController = [panelController mainViewController];
    if (mainViewController)
    {
      WeakRetained = mainViewController;
    }

    else
    {
      panelController2 = [(UISplitViewControllerPanelImpl *)self panelController];
      WeakRetained = [panelController2 preservedDetailController];

      if (!WeakRetained)
      {
        goto LABEL_10;
      }
    }

    [array addObject:WeakRetained];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    array = [WeakRetained _super_childViewControllersToSendViewWillTransitionToSize];
  }

LABEL_10:

  return array;
}

- (NSArray)_childViewControllersToSendViewWillTransitionToSize
{
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    if (self->_lastNotifiedIsCollapsed && (-[NSMutableDictionary objectForKeyedSubscript:](self->_perColumnViewControllers, "objectForKeyedSubscript:", &unk_1EFE30238), v3 = objc_claimAutoreleasedReturnValue(), [v3 viewController], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, !v4))
    {
      array = [MEMORY[0x1E695DF70] array];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v12 = __85__UISplitViewControllerPanelImpl__childViewControllersToSendViewWillTransitionToSize__block_invoke;
      v13 = &unk_1E71003B0;
      selfCopy = self;
      v8 = array;
      v15 = v8;
      __85__UISplitViewControllerPanelImpl__childViewControllersToSendViewWillTransitionToSize__block_invoke(v11, 0);
      v12(v11, 1);
      v12(v11, 2);
      v9 = v15;
      _super_childViewControllersToSendViewWillTransitionToSize = v8;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_svc);
      _super_childViewControllersToSendViewWillTransitionToSize = [WeakRetained _super_childViewControllersToSendViewWillTransitionToSize];
    }
  }

  else
  {
    _super_childViewControllersToSendViewWillTransitionToSize = [(UISplitViewControllerPanelImpl *)self _unspecifiedStyleChildViewControllersToSendViewWillTransitionToSize];
  }

  return _super_childViewControllersToSendViewWillTransitionToSize;
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

- (id)_traitCollectionForChildEnvironment:(id)environment
{
  environmentCopy = environment;
  v5 = +[UITraitCollection _emptyTraitCollection];
  if (!v5)
  {
    goto LABEL_39;
  }

  _currentPrimaryChildViewController = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];

  if (_currentPrimaryChildViewController != environmentCopy)
  {
    goto LABEL_16;
  }

  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  currentState = [panelController currentState];

  if ([(UISplitViewControllerPanelImpl *)self _isPrimaryLeading])
  {
    if (([currentState leadingOverlapsMain] & 1) == 0)
    {
LABEL_5:

      goto LABEL_16;
    }
  }

  else if (([currentState trailingOverlapsMain] & 1) == 0)
  {
    goto LABEL_5;
  }

  userInterfaceLevel = [v5 userInterfaceLevel];
  v10 = dyld_program_sdk_at_least();
  if (userInterfaceLevel == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = userInterfaceLevel;
  }

  if (v11 < 1)
  {
    ++v11;
  }

  v12 = v10 ? v11 : userInterfaceLevel;
  v13 = [v5 _traitCollectionByReplacingNSIntegerValue:v12 forTraitToken:0x1EFE32488];

  v5 = v13;
  if (v13)
  {
LABEL_16:
    if (![environmentCopy __isKindOfUIViewController])
    {
      goto LABEL_39;
    }

    _currentPrimaryChildViewController2 = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
    v15 = _currentPrimaryChildViewController2;
    if (_currentPrimaryChildViewController2 == environmentCopy)
    {
    }

    else
    {
      if ((*(&self->_flags + 5) & 0x10) == 0 || [(UISplitViewControllerPanelImpl *)self style]!= 2)
      {
LABEL_25:

        goto LABEL_26;
      }

      v16 = [(UISplitViewControllerPanelImpl *)self _columnForViewController:environmentCopy];

      if (v16 != 1)
      {
LABEL_26:
        _isCollapsed = [(UISplitViewControllerPanelImpl *)self _isCollapsed];
        style = [(UISplitViewControllerPanelImpl *)self style];
        v19 = style;
        if (!style || _isCollapsed)
        {
          if (style != 0 || _isCollapsed)
          {
            v22 = 1;
            if (_isCollapsed)
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
          v20 = [(UISplitViewControllerPanelImpl *)self _columnForViewController:environmentCopy];
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

- (void)_didChangeToFirstResponder:(id)responder
{
  postTransitionResponder = self->_postTransitionResponder;
  if (postTransitionResponder)
  {
    if (postTransitionResponder == responder)
    {
      v5 = (*&self->_flags & 0xFFFFFFFFFFFFF3FFLL);
    }

    else
    {
      flags = self->_flags;
      if (responder)
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
  detailViewController = [WeakRetained detailViewController];

  return detailViewController;
}

- (void)_setAllowsDimmedSecondaryAsDeepestUnambiguousResponder:(BOOL)responder
{
  v3 = 0x1000000;
  if (!responder)
  {
    v3 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)_setIgnoresSheetContext:(BOOL)context
{
  if (((((*&self->_flags & 0x2000000) == 0) ^ context) & 1) == 0)
  {
    v3 = 0x2000000;
    if (!context)
    {
      v3 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFFFFFDFFFFFFLL | v3);
    [(UIPanelController *)self->_panelController setNeedsUpdate];
  }
}

- (void)_setShowsSeparators:(BOOL)separators
{
  v3 = 0x4000000;
  if (!separators)
  {
    v3 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (id)_topLevelViewControllerForColumn:(int64_t)column
{
  perColumnViewControllers = self->_perColumnViewControllers;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v7 = [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:v6];
  navigationControllerWrapper = [v7 navigationControllerWrapper];
  v9 = navigationControllerWrapper;
  if (navigationControllerWrapper)
  {
    viewController = navigationControllerWrapper;
  }

  else
  {
    v11 = self->_perColumnViewControllers;
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:column];
    v13 = [(NSMutableDictionary *)v11 objectForKeyedSubscript:v12];
    navigationController = [v13 navigationController];
    v15 = navigationController;
    if (navigationController)
    {
      viewController = navigationController;
    }

    else
    {
      v16 = self->_perColumnViewControllers;
      v17 = [MEMORY[0x1E696AD98] numberWithInteger:column];
      v18 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:v17];
      viewController = [v18 viewController];
    }
  }

  return viewController;
}

- (UIResponder)_deepestActionResponder
{
  style = [(UISplitViewControllerPanelImpl *)self style];
  currentState = [(UIPanelController *)self->_panelController currentState];
  _collapsedState = [currentState _collapsedState];
  if (!style)
  {
    viewControllers = [(UISplitViewControllerPanelImpl *)self viewControllers];
    lastObject = [viewControllers lastObject];

    if ([lastObject _hasDeepestActionResponder])
    {
LABEL_26:
      _deepestActionResponder = [lastObject _deepestActionResponder];
      goto LABEL_29;
    }

    if (![(UISplitViewControllerPanelImpl *)self isCollapsed])
    {
      viewControllers2 = [(UISplitViewControllerPanelImpl *)self viewControllers];
      WeakRetained = [viewControllers2 firstObject];

      if (WeakRetained != lastObject && ([WeakRetained _hasDeepestActionResponder] & 1) != 0)
      {
        _deepestActionResponder2 = [WeakRetained _deepestActionResponder];
        goto LABEL_28;
      }
    }

LABEL_24:
    lastObject = 0;
    goto LABEL_25;
  }

  if (_collapsedState != 2)
  {
    if (!_collapsedState)
    {
      v6 = [(UISplitViewControllerPanelImpl *)self _displayModeForState:currentState];
      if (*(&self->_flags + 3))
      {
        VisibleColumnForResponderAfterColumn = 2;
        if (_UISplitViewControllerColumnIsVisibleForDisplayMode(style, 2, v6))
        {
          goto LABEL_15;
        }
      }

      else
      {
        VisibleColumnForResponderAfterColumn = 2;
        if (!_UISplitViewControllerColumnIsHiddenOrDimmedForDisplayMode(style, 2, v6))
        {
LABEL_15:
          v13 = 0;
          while (([v13 _hasDeepestActionResponder] & 1) == 0)
          {
            lastObject = [(UISplitViewControllerPanelImpl *)self _topLevelViewControllerForColumn:VisibleColumnForResponderAfterColumn];

            if (([lastObject _hasDeepestActionResponder] & 1) == 0)
            {
              VisibleColumnForResponderAfterColumn = _nextVisibleColumnForResponderAfterColumn(VisibleColumnForResponderAfterColumn, style, v6);
            }

            v13 = lastObject;
            if (VisibleColumnForResponderAfterColumn == 999)
            {
              goto LABEL_25;
            }
          }

          lastObject = v13;
          goto LABEL_25;
        }
      }

      VisibleColumnForResponderAfterColumn = _nextVisibleColumnForResponderAfterColumn(2, style, v6);
      if (VisibleColumnForResponderAfterColumn != 999)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_24;
  }

  lastObject = [(UIPanelController *)self->_panelController collapsedViewController];
LABEL_25:
  if ([lastObject _hasDeepestActionResponder])
  {
    goto LABEL_26;
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _deepestActionResponder2 = [WeakRetained _super_deepestActionResponder];
LABEL_28:
  _deepestActionResponder = _deepestActionResponder2;

LABEL_29:

  return _deepestActionResponder;
}

- (id)_nextVisibleViewControllerForResponderAfterChildViewController:(id)controller
{
  controllerCopy = controller;
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style)
  {
    v6 = style;
    v7 = 2;
    v8 = [(UISplitViewControllerPanelImpl *)self _topLevelViewControllerForColumn:2];

    if (v8 != controllerCopy)
    {
      v7 = 1;
      v9 = [(UISplitViewControllerPanelImpl *)self _topLevelViewControllerForColumn:1];

      if (v9 != controllerCopy)
      {
        v10 = [(UISplitViewControllerPanelImpl *)self _topLevelViewControllerForColumn:0];

        if (v10 == controllerCopy)
        {
          v7 = 0;
        }

        else
        {
          v7 = 999;
        }
      }
    }

    currentState = [(UIPanelController *)self->_panelController currentState];
    VisibleColumnForResponderAfterColumn = _nextVisibleColumnForResponderAfterColumn(v7, v6, [(UISplitViewControllerPanelImpl *)self _displayModeForState:currentState]);
    if (VisibleColumnForResponderAfterColumn == 999)
    {
      masterViewController = 0;
    }

    else
    {
      masterViewController = [(UISplitViewControllerPanelImpl *)self _topLevelViewControllerForColumn:VisibleColumnForResponderAfterColumn];
    }
  }

  else if (![(UISplitViewControllerPanelImpl *)self isCollapsed]&& ([(UISplitViewControllerPanelImpl *)self detailViewController], v14 = objc_claimAutoreleasedReturnValue(), v14, v14 == controllerCopy))
  {
    masterViewController = [(UISplitViewControllerPanelImpl *)self masterViewController];
  }

  else
  {
    masterViewController = 0;
  }

  return masterViewController;
}

- (BOOL)_disableAutomaticKeyboardBehavior
{
  if (self->_postTransitionResponder)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _super_disableAutomaticKeyboardBehavior = [WeakRetained _super_disableAutomaticKeyboardBehavior];

  return _super_disableAutomaticKeyboardBehavior;
}

- (NSString)description
{
  v15.receiver = self;
  v15.super_class = UISplitViewControllerPanelImpl;
  v3 = [(UISplitViewControllerPanelImpl *)&v15 description];
  v4 = [v3 mutableCopy];

  if (os_variant_has_internal_diagnostics())
  {
    style = [(UISplitViewControllerPanelImpl *)self style];
    v7 = _UISplitViewControllerStyleDescription(style);
    [v4 appendFormat:@" style=%@", v7];

    if (style)
    {
      [v4 appendFormat:@" columns=%p", self->_perColumnViewControllers];
      preferredDisplayMode = self->_preferredDisplayMode;
      if (preferredDisplayMode)
      {
        v9 = _UISplitViewControllerDisplayModeDescription(preferredDisplayMode);
        [v4 appendFormat:@" preferredDisplayMode=%@", v9];
      }

      userGeneratedDisplayMode = [(UISplitViewControllerPanelImpl *)self userGeneratedDisplayMode];
      if (userGeneratedDisplayMode)
      {
        v11 = _UISplitViewControllerDisplayModeDescription(userGeneratedDisplayMode);
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

    if (style)
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
  viewControllers = [WeakRetained viewControllers];

  return viewControllers;
}

- (void)encodeRestorableStateWithCoder:(id)coder
{
  v20 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  viewControllers = [WeakRetained viewControllers];

  _UISaveReferencedChildViewControllers(viewControllers, 0);
  [coderCopy encodeInteger:-[UISplitViewControllerPanelImpl _svcOrientation](self forKey:{"_svcOrientation"), @"SplitViewInterfaceOrientation"}];
  v7 = objc_loadWeakRetained(&self->_svc);
  [coderCopy encodeInteger:objc_msgSend(v7 forKey:{"displayMode"), @"SplitViewControllerDisplayMode"}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = viewControllers;
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
        _restorationIdentifierPath = [v13 _restorationIdentifierPath];

        if (!_restorationIdentifierPath)
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

- (void)decodeRestorableStateWithCoder:(id)coder
{
  coderCopy = coder;
  _svcOrientation = [(UISplitViewControllerPanelImpl *)self _svcOrientation];
  v6 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v6 userInterfaceIdiom];

  v8 = [coderCopy decodeObjectForKey:@"UIApplicationStateRestorationUserInterfaceIdiom"];
  if (userInterfaceIdiom == [v8 intValue])
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    [WeakRetained displayMode];

    if (userInterfaceIdiom == 1)
    {
      v10 = [coderCopy decodeBoolForKey:@"SplitViewControllerShowingMasterView"];
    }

    else
    {
      v10 = 0;
    }

    if ([coderCopy containsValueForKey:@"SplitViewControllerDisplayMode"] && objc_msgSend(coderCopy, "containsValueForKey:", @"SplitViewInterfaceOrientation"))
    {
      if ([coderCopy decodeIntegerForKey:@"SplitViewInterfaceOrientation"] != _svcOrientation)
      {
        goto LABEL_31;
      }

      v16 = [coderCopy decodeIntegerForKey:@"SplitViewControllerDisplayMode"];
      goto LABEL_27;
    }

    if ((_svcOrientation - 1) < 2)
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
      displayMode = [v18 displayMode];

      if (v16 != displayMode)
      {
        v20 = objc_loadWeakRetained(&self->_svc);
        _existingView = [v20 _existingView];
        window = [_existingView window];

        if (window)
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
    if (userInterfaceIdiom)
    {
      v11 = @"Unspecified";
    }

    else
    {
      v11 = @"iPhone";
    }

    if (userInterfaceIdiom == 1)
    {
      v11 = @"iPad";
    }

    v12 = v11;
    integerValue = [v8 integerValue];
    if (integerValue)
    {
      v14 = @"Unspecified";
    }

    else
    {
      v14 = @"iPhone";
    }

    if (integerValue == 1)
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
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  allViewControllers = [panelController allViewControllers];

  v6 = [allViewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allViewControllers);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (v10 && (*(v10 + 376) & 3u) - 1 <= 1)
        {
          [v3 addObject:?];
        }
      }

      v7 = [allViewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v3;
}

- (UIActivityItemsConfigurationReading)_effectiveActivityItemsConfiguration
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _super_effectiveActivityItemsConfiguration = [WeakRetained _super_effectiveActivityItemsConfiguration];

  if (!_super_effectiveActivityItemsConfiguration)
  {
    if (!dyld_program_sdk_at_least())
    {
      _super_effectiveActivityItemsConfiguration = 0;
      goto LABEL_13;
    }

    v5 = objc_loadWeakRetained(&self->_svc);
    style = [v5 style];

    v7 = style - 1;
    v8 = objc_loadWeakRetained(&self->_svc);
    collapsedViewController = v8;
    if (v7 > 1)
    {
      viewControllers = [v8 viewControllers];
      lastObject = [viewControllers lastObject];
    }

    else
    {
      viewControllers = [v8 viewControllerForColumn:2];

      v11 = objc_loadWeakRetained(&self->_svc);
      _isCollapsed = [v11 _isCollapsed];

      if (!_isCollapsed)
      {
LABEL_12:
        _super_effectiveActivityItemsConfiguration = [viewControllers _effectiveActivityItemsConfiguration];

        goto LABEL_13;
      }

      panelController = [(UISplitViewControllerPanelImpl *)self panelController];
      collapsedViewController = [panelController collapsedViewController];

      if (!collapsedViewController || (collapsedViewController[94] & 3u) - 1 > 1)
      {
LABEL_11:

        goto LABEL_12;
      }

      lastObject = collapsedViewController;
      collapsedViewController = lastObject;
    }

    v15 = lastObject;

    viewControllers = v15;
    goto LABEL_11;
  }

LABEL_13:

  return _super_effectiveActivityItemsConfiguration;
}

- (UISlidingBarConfiguration)configuration
{
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  configuration = [panelController configuration];

  return configuration;
}

- (void)setConfiguration:(id)configuration
{
  *&self->_flags |= 1uLL;
  configurationCopy = configuration;
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  [panelController setConfiguration:configurationCopy];
}

- (UISlidingBarState)currentState
{
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  currentState = [panelController currentState];

  return currentState;
}

- (NSArray)possibleStates
{
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  possibleStates = [panelController possibleStates];

  return possibleStates;
}

- (UISlidingBarStateRequest)stateRequest
{
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  stateRequest = [panelController stateRequest];

  return stateRequest;
}

- (void)setStateRequest:(id)request
{
  *&self->_flags |= 1uLL;
  requestCopy = request;
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  [panelController setStateRequest:requestCopy];
}

- (void)animateToRequest:(id)request
{
  requestCopy = request;
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  [panelController animateToRequest:requestCopy];
}

- (void)_unspecifiedStyleChangeToDisplayMode:(int64_t)mode fromPreferredDisplayMode:(int64_t)displayMode
{
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style)
  {
    v13 = style;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = _UISplitViewControllerStyleDescription(v13);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:5078 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v15}];
  }

  if ((mode - 1) >= 3)
  {
    if (displayMode == 3 && (*&self->_flags & 0x200) != 0)
    {
      v9 = 2;
    }

    else
    {
      panelController = [(UISplitViewControllerPanelImpl *)self panelController];
      currentState = [panelController currentState];
      v12 = [(UISplitViewControllerPanelImpl *)self _displayModeForState:currentState]== 3;

      v9 = 2 * v12;
    }
  }

  else
  {
    v9 = qword_18A6795A8[mode - 1];
  }

  [(UISplitViewControllerPanelImpl *)self _setPrimaryHidingState:v9];
  panelController2 = [(UISplitViewControllerPanelImpl *)self panelController];
  [panelController2 setNeedsUpdate];
}

- (void)_changeToDisplayMode:(int64_t)mode fromPreferredDisplayMode:(int64_t)displayMode
{
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    v7 = +[UIView _isInAnimationBlockWithAnimationsEnabled];
    if (!mode)
    {
      if (displayMode == 3 && (*&self->_flags & 0x200) != 0 || (-[UISplitViewControllerPanelImpl panelController](self, "panelController"), v8 = objc_claimAutoreleasedReturnValue(), [v8 currentState], v9 = objc_claimAutoreleasedReturnValue(), v10 = -[UISplitViewControllerPanelImpl _displayModeForState:](self, "_displayModeForState:", v9), v9, v8, v10 == 3))
      {
        if ([(UISplitViewControllerPanelImpl *)self splitBehavior]== 2)
        {
          mode = 3;
        }

        else
        {
          mode = 2;
        }
      }

      else
      {
        mode = 0;
      }
    }

    if (v7)
    {
      displayMode = [(UISplitViewControllerPanelImpl *)self displayMode];

      [(UISplitViewControllerPanelImpl *)self _transitionFromDisplayMode:displayMode toDisplayMode:mode];
      return;
    }

    [(UISplitViewControllerPanelImpl *)self setUserGeneratedDisplayMode:mode];
  }

  else
  {
    [(UISplitViewControllerPanelImpl *)self _unspecifiedStyleChangeToDisplayMode:mode fromPreferredDisplayMode:displayMode];
  }

  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  [panelController setNeedsUpdate];
}

- (void)_updateSplitBehaviorOverridesForTransitionFromDisplayMode:(uint64_t)mode toDisplayMode:(uint64_t)displayMode shouldResizeIfNecessary:(uint64_t)necessary
{
  if (mode)
  {
    style = [mode style];
    if ((style - 3) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = style;
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = _UISplitViewControllerStyleDescription(v15);
      [currentHandler handleFailureInMethod:sel__updateSplitBehaviorOverridesForTransitionFromDisplayMode_toDisplayMode_shouldResizeIfNecessary_ object:mode file:@"UISplitViewControllerPanelImpl.m" lineNumber:5175 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v17}];
    }

    WeakRetained = objc_loadWeakRetained((mode + 16));
    v8 = _UISplitViewControllerAutoHidesColumns(WeakRetained);

    if (v8)
    {
      if ([mode _isCollapsed])
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
        *(mode + 288) &= 0xFFFFFFFFFFF3FFFFLL;
        return;
      }

      if (displayMode == 1)
      {
        if (necessary == 2)
        {
LABEL_14:
          view = [*(mode + 504) view];
          [view bounds];
          v12 = v11;
          v14 = v13;

          v19 = 0.0;
          *buf = 0;
          [mode getPrimaryColumnWidth:buf supplementaryColumnWidth:&v19 forSize:necessary displayMode:1 splitBehavior:0 isCompact:0 shouldUseOverlay:{v12, v14}];
          if ([mode _isSecondaryColumnCompactInTotalWidth:v12 withPrimaryColumnWidth:*buf supplementaryColumnWidth:v19])
          {
            *(mode + 288) = *(mode + 288) & 0xFFFFFFFFFFF3FFFFLL | 0x80000;
            if (necessary == 4)
            {
              [mode getPrimaryColumnWidth:buf supplementaryColumnWidth:&v19 forSize:2 displayMode:1 splitBehavior:0 isCompact:0 shouldUseOverlay:{v12, v14}];
              if (([mode _isSecondaryColumnCompactInTotalWidth:v12 withPrimaryColumnWidth:*buf supplementaryColumnWidth:v19] & 1) == 0)
              {
                *(mode + 288) |= 0xC0000uLL;
              }
            }

            [mode allowedDisplayModeForCurrentSplitBehaviorGivenDisplayMode:necessary];
          }

          return;
        }
      }

      else if (displayMode != 2)
      {
        goto LABEL_19;
      }

      if (necessary == 4)
      {
        goto LABEL_14;
      }

LABEL_19:
      if ((necessary - 1) > 1)
      {
        return;
      }

      goto LABEL_20;
    }
  }
}

- (void)_transitionFromDisplayMode:(int64_t)mode toDisplayMode:(int64_t)displayMode updateSplitBehaviorOverrides:(BOOL)overrides userGenerated:(BOOL)generated
{
  generatedCopy = generated;
  overridesCopy = overrides;
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v38 = _UISplitViewControllerStyleDescription(style);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:5237 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v38}];
  }

  if (mode != displayMode)
  {
    if (overridesCopy)
    {
      [UISplitViewControllerPanelImpl _updateSplitBehaviorOverridesForTransitionFromDisplayMode:mode toDisplayMode:displayMode shouldResizeIfNecessary:?];
    }

    v13 = [(UISplitViewControllerPanelImpl *)self allowedDisplayModeForCurrentSplitBehaviorGivenDisplayMode:displayMode];
    if (v13 != mode)
    {
      v14 = v13;
      if (generatedCopy)
      {
        [(UISplitViewControllerPanelImpl *)self setUserGeneratedDisplayMode:v13];
      }

      v46 = 0;
      [(UISplitViewControllerPanelImpl *)self _getPrimaryShown:&v46 + 3 supplementaryShown:&v46 + 2 shouldUseOverlay:&v46 + 1 dimMainIfNecessary:&v46 forDisplayMode:v14];
      v15 = BYTE1(v46);
      if (v14 == 1 && (v46 & 0x100) == 0)
      {
        v45 = 0;
        [(UISplitViewControllerPanelImpl *)self _getPrimaryShown:0 supplementaryShown:0 shouldUseOverlay:&v45 dimMainIfNecessary:0 forDisplayMode:mode];
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
      _isPrimaryLeading = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
      panelController = [(UISplitViewControllerPanelImpl *)self panelController];
      uncachedPossibleStates = [panelController uncachedPossibleStates];

      panelController2 = [(UISplitViewControllerPanelImpl *)self panelController];
      currentState = [panelController2 currentState];
      stateRequest = [currentState stateRequest];

      [stateRequest setUserInitiated:generatedCopy];
      if (HIBYTE(v46) == 1)
      {
        v22 = minNonzeroPrimaryWidthInStates(uncachedPossibleStates, _isPrimaryLeading);
        if (_isPrimaryLeading)
        {
          [stateRequest setLeadingWidth:v22];
          if ((v46 & 0x10000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_18;
        }

        [stateRequest setTrailingWidth:v22];
        if ((v46 & 0x10000) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        [stateRequest setLeadingWidth:0.0];
        [stateRequest setTrailingWidth:0.0];
        if ((v46 & 0x10000) != 0)
        {
          if (_isPrimaryLeading)
          {
LABEL_18:
            [stateRequest leadingWidth];
LABEL_21:
            v39 = 0;
            MatchingState = minNonzeroSupplementaryWidthInStateWithPrimaryWidthGetMatchingState(uncachedPossibleStates, _isPrimaryLeading, &v39, v23);
            v25 = v39;
            v26 = v25;
            if (v25)
            {
              [v25 mainWidth];
              [stateRequest setMainWidth:?];
            }

            [stateRequest setSupplementaryWidth:MatchingState];

LABEL_25:
            if ([(UISplitViewControllerPanelImpl *)self _alwaysHideSidebarToggleButton])
            {
              goto LABEL_26;
            }

            if (style == 2 && (p_perColumnViewControllers = &self->_perColumnViewControllers, [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220], v29 = objc_claimAutoreleasedReturnValue(), v29, v29))
            {
              v30 = &unk_1EFE30250;
            }

            else
            {
              if ((v46 & 0x100) != 0)
              {
                navigationBar = 0;
                goto LABEL_34;
              }

              p_perColumnViewControllers = &self->_perColumnViewControllers;
              v30 = &unk_1EFE30208;
            }

            v31 = [(NSMutableDictionary *)*p_perColumnViewControllers objectForKeyedSubscript:v30];
            navigationController = [v31 navigationController];
            navigationBar = [navigationController navigationBar];

LABEL_34:
            if (![navigationBar _hasBackButton] || !-[UIBarButtonItem _actsAsFakeBackButton](self->_sidebarToggleButtonItem, "_actsAsFakeBackButton"))
            {
              goto LABEL_37;
            }

LABEL_26:
            navigationBar = 0;
LABEL_37:
            panelController3 = [(UISplitViewControllerPanelImpl *)self panelController];
            [panelController3 setNavigationBarForContentLayoutGuideAnimation:navigationBar];

            _allowClientAnimationCoordination = [(UISplitViewControllerPanelImpl *)self _allowClientAnimationCoordination];
            panelController4 = [(UISplitViewControllerPanelImpl *)self panelController];
            [panelController4 setAnimationRequestShouldCoordinate:_allowClientAnimationCoordination];

            panelController5 = [(UISplitViewControllerPanelImpl *)self panelController];
            [panelController5 animateToRequest:stateRequest];

            return;
          }

LABEL_20:
          [stateRequest trailingWidth];
          goto LABEL_21;
        }
      }

LABEL_24:
      [stateRequest setSupplementaryWidth:0.0];
      goto LABEL_25;
    }
  }
}

- (CGSize)_screenSize
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _window = [WeakRetained _window];

  v5 = objc_loadWeakRetained(&self->_svc);
  _screen = [v5 _screen];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = _window;
  }

  else
  {
    v7 = _screen;
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

- (double)_defaultMaximumPrimaryColumnWidthForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    styleProvider = [(UISplitViewControllerPanelImpl *)self styleProvider];
    [styleProvider defaultMaximumWidthForColumn:0 withSize:-[UISplitViewControllerPanelImpl splitBehavior](self splitBehavior:{"splitBehavior"), width, height}];
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
          displayMode = [WeakRetained displayMode];

          if (displayMode == 2)
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
          _usesExtraWidePrimaryColumn = [v17 _usesExtraWidePrimaryColumn];

          v19 = 414.0;
          if (!v15)
          {
            v19 = 375.0;
          }

          if (_usesExtraWidePrimaryColumn)
          {
            return v19;
          }
        }
      }
    }

    else
    {
      v20 = objc_loadWeakRetained(&self->_svc);
      preferredDisplayMode = [v20 preferredDisplayMode];

      if (preferredDisplayMode == 2)
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

- (double)_defaultMaximumSupplementaryColumnWidthForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  style = [(UISplitViewControllerPanelImpl *)self style];
  if ((style - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = style;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = _UISplitViewControllerStyleDescription(v12);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:5472 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v14}];
  }

  styleProvider = [(UISplitViewControllerPanelImpl *)self styleProvider];
  [styleProvider defaultMaximumWidthForColumn:1 withSize:-[UISplitViewControllerPanelImpl splitBehavior](self splitBehavior:{"splitBehavior"), width, height}];
  v10 = v9;

  return v10;
}

- (CGSize)_preferredContentSize
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  if (-[UISplitViewControllerPanelImpl style](self, "style") && ([WeakRetained traitCollection], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "_presentationSemanticContext"), v5, v6 != 3))
  {
    style = [(UISplitViewControllerPanelImpl *)self style];
    if (style - 3 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = _UISplitViewControllerStyleDescription(style);
      [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:5491 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v23}];
    }

    _screen = [WeakRetained _screen];
    [_screen bounds];
    [UIViewController defaultFormSheetSizeForScreenSize:v15, v16];
    v18 = v17;
    v10 = v19;

    if (style == 2)
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

- (double)_primaryColumnWidthForSize:(CGSize)size shouldUseOverlay:(BOOL)overlay
{
  overlayCopy = overlay;
  height = size.height;
  width = size.width;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  -[UISplitViewControllerPanelImpl _primaryColumnWidthForSize:isCompact:shouldUseOverlay:](self, "_primaryColumnWidthForSize:isCompact:shouldUseOverlay:", [WeakRetained _horizontalSizeClass] == 1, overlayCopy, width, height);
  v10 = v9;

  return v10;
}

- (void)getPrimaryColumnWidth:(double *)width supplementaryColumnWidth:(double *)columnWidth forSize:(CGSize)size displayMode:(int64_t)mode shouldUseOverlay:(BOOL)overlay
{
  overlayCopy = overlay;
  height = size.height;
  width = size.width;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  -[UISplitViewControllerPanelImpl getPrimaryColumnWidth:supplementaryColumnWidth:forSize:displayMode:isCompact:shouldUseOverlay:](self, "getPrimaryColumnWidth:supplementaryColumnWidth:forSize:displayMode:isCompact:shouldUseOverlay:", width, columnWidth, mode, [WeakRetained _horizontalSizeClass] == 1, overlayCopy, width, height);
}

- (double)_primaryColumnWidthForSize:(CGSize)size isCompact:(BOOL)compact shouldUseOverlay:(BOOL)overlay
{
  overlayCopy = overlay;
  height = size.height;
  width = size.width;
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style)
  {
    v47 = style;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v49 = _UISplitViewControllerStyleDescription(v47);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:5508 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v49}];

    if (compact)
    {
      return width;
    }
  }

  else if (compact)
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
  userInterfaceIdiom = [v19 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1 || !dyld_program_sdk_at_least())
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

    if (overlayCopy)
    {
      v22 = 375.0;
    }

    else
    {
      v22 = 320.0;
    }

LABEL_28:
    v30 = objc_loadWeakRetained(&self->_svc);
    viewIfLoaded = [v30 viewIfLoaded];
    [viewIfLoaded safeAreaInsets];
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

- (void)getPrimaryColumnWidth:(double *)width supplementaryColumnWidth:(double *)columnWidth forSize:(CGSize)size displayMode:(int64_t)mode isCompact:(BOOL)compact shouldUseOverlay:(BOOL)overlay
{
  overlayCopy = overlay;
  compactCopy = compact;
  height = size.height;
  width = size.width;
  splitBehavior = [(UISplitViewControllerPanelImpl *)self splitBehavior];

  [(UISplitViewControllerPanelImpl *)self getPrimaryColumnWidth:width supplementaryColumnWidth:columnWidth forSize:mode displayMode:splitBehavior splitBehavior:compactCopy isCompact:overlayCopy shouldUseOverlay:width, height];
}

- (void)getPrimaryColumnWidth:(double *)width supplementaryColumnWidth:(double *)columnWidth forSize:(CGSize)size displayMode:(int64_t)mode splitBehavior:(int64_t)behavior isCompact:(BOOL)compact shouldUseOverlay:(BOOL)overlay
{
  overlayCopy = overlay;
  compactCopy = compact;
  height = size.height;
  width = size.width;
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v80 = _UISplitViewControllerStyleDescription(style);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:5600 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v80}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  viewIfLoaded = [WeakRetained viewIfLoaded];

  [viewIfLoaded safeAreaInsets];
  v22 = v21;
  v24 = v23;
  if ([(UISplitViewControllerPanelImpl *)self _layoutPrimaryOnRight])
  {
    v22 = v24;
  }

  if (viewIfLoaded)
  {
    [viewIfLoaded bounds];
    v25 = CGRectGetWidth(v82);
    if (compactCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v25 = 736.0;
    if (compactCopy)
    {
LABEL_7:
      widthCopy = 0.0;
      if (style == 2)
      {
        widthCopy = width;
      }

      goto LABEL_109;
    }
  }

  v76 = overlayCopy;
  v28 = mode == 6 || (mode & 0xFFFFFFFFFFFFFFFELL) == 4;
  v29 = style != 2 || v28;
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
  _currentInterfaceIdiom = [(UISplitViewControllerPanelImpl *)self _currentInterfaceIdiom];
  styleProvider = [(UISplitViewControllerPanelImpl *)self styleProvider];
  [styleProvider defaultMaximumWidthForColumn:0 withSize:behavior splitBehavior:{width, height}];
  v78 = v44;

  styleProvider2 = [(UISplitViewControllerPanelImpl *)self styleProvider];
  [styleProvider2 defaultMaximumWidthForColumn:1 withSize:behavior splitBehavior:{width, height}];
  v47 = v46;

  if (style != 2 && v29)
  {
    v77 = v47;
    if (_currentInterfaceIdiom || [(UISplitViewControllerPanelImpl *)self _usesExtraWidePrimaryColumn])
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
  if (style == 2)
  {
    v50 = v29;
  }

  else
  {
    v50 = 1;
  }

  if (v50)
  {
    if (!_currentInterfaceIdiom)
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

  if (!_currentInterfaceIdiom)
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
  viewIfLoaded2 = [v55 viewIfLoaded];
  [viewIfLoaded2 safeAreaInsets];
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

  if (style == 2)
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

  if (v66 < v63 || style != 2)
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
  if (widthCopy == -3.40282347e38)
  {
    widthCopy = v77;
  }

  if (widthCopy >= v68)
  {
    widthCopy = v68;
  }

  v72 = v48 + v61;
  if (style != 2)
  {
    widthCopy = v36;
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
  if (width)
  {
    *width = width;
  }

  if (columnWidth)
  {
    *columnWidth = widthCopy;
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:5782 description:@"Setting this property is not compatible with the new UISplitViewController SPI"];
    }

    panelController = self->_panelController;

    [(UIPanelController *)panelController setNeedsUpdate];
  }
}

- (void)_supplementaryOrPrimaryColumnWidthAffectingPropertyDidChange
{
  areClippingViewsUnnecessary = [(UIPanelController *)self->_panelController areClippingViewsUnnecessary];
  [(UIPanelController *)self->_panelController setClippingViewsUnnecessary:1];
  [(UIPanelController *)self->_panelController setNeedsUpdate];
  panelController = self->_panelController;

  [(UIPanelController *)panelController setClippingViewsUnnecessary:areClippingViewsUnnecessary];
}

- (CGSize)_defaultViewSizeForResolvingDisplayModeOrSplitBehavior
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _existingView = [WeakRetained _existingView];

  if (_existingView)
  {
    [_existingView bounds];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v9 = objc_loadWeakRetained(&self->_svc);
    _window = [v9 _window];
    [_window bounds];
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
  style = [(UISplitViewControllerPanelImpl *)self style];
  if ((style - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v22 = style;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = _UISplitViewControllerStyleDescription(v22);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:5810 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v24}];
  }

  preferredDisplayMode = [(UISplitViewControllerPanelImpl *)self preferredDisplayMode];
  userGeneratedDisplayMode = [(UISplitViewControllerPanelImpl *)self userGeneratedDisplayMode];
  if ([(UIPanelController *)self->_panelController collapsedState]== 2)
  {
    return 2;
  }

  if (![(UISplitViewControllerPanelImpl *)self presentsWithGesture]&& [(UISplitViewControllerPanelImpl *)self _visibleToggleButtonRequiresPresentsWithGesture])
  {
    if (userGeneratedDisplayMode)
    {
      if (userGeneratedDisplayMode == preferredDisplayMode)
      {
        return preferredDisplayMode;
      }
    }

    else if (preferredDisplayMode)
    {
      return preferredDisplayMode;
    }
  }

  if (userGeneratedDisplayMode)
  {
    v8 = userGeneratedDisplayMode;
  }

  else
  {
    v8 = preferredDisplayMode;
  }

  if ((*&self->_flags & 0x40) != 0)
  {
    v9 = 0;
    preferredDisplayMode = v8;
    if (v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    preferredDisplayMode = [(UISplitViewControllerPanelImpl *)self allowedDisplayModeForCurrentSplitBehaviorGivenDisplayMode:v8];
    v9 = preferredDisplayMode != v8;
    if (preferredDisplayMode)
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
          if (userGeneratedDisplayMode)
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
            userGeneratedDisplayMode = _UISplitViewControllerDisplayModeDescription(v8);
            v16 = [v15 stringWithFormat:@" converted from %@", userGeneratedDisplayMode];
          }

          else
          {
            v16 = &stru_1EFB14550;
          }

          v21 = _UISplitViewControllerDisplayModeDescription(preferredDisplayMode);
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

      return preferredDisplayMode;
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

- (id)_hiddenColumnsInCurrentEnvironmentWithConcreteDisplayMode:(int64_t)mode
{
  v17 = *MEMORY[0x1E69E9840];
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = _UISplitViewControllerStyleDescription(style);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:5856 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v14}];
  }

  v7 = MEMORY[0x1E695E0F0];
  if ((mode - 4) >= 3)
  {
    if ((mode - 2) < 2)
    {
      v8 = &unk_1EFE2BC08;
      if (style != 2)
      {
        v8 = MEMORY[0x1E695E0F0];
      }

LABEL_11:
      v7 = v8;
      goto LABEL_18;
    }

    if (mode == 1)
    {
      v8 = &unk_1EFE2BBF0;
      if (style == 2)
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

      v11 = _UISplitViewControllerDisplayModeDescription(mode);
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
      v11 = _UISplitViewControllerDisplayModeDescription(mode);
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

- (void)_getPrimaryShown:(BOOL *)shown shouldUseOverlay:(BOOL *)overlay
{
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style)
  {
    v17 = style;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = _UISplitViewControllerStyleDescription(v17);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:5893 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v19}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  traitCollection = [WeakRetained traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v12 = objc_loadWeakRetained(&self->_svc);
  preferredDisplayMode = [v12 preferredDisplayMode];

  switch(preferredDisplayMode)
  {
    case 1:
      if (userInterfaceIdiom == 1)
      {
        goto LABEL_16;
      }

      if (userInterfaceIdiom)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    case 2:
LABEL_13:
      LOBYTE(userInterfaceIdiom) = 0;
      goto LABEL_16;
    case 3:
      LOBYTE(userInterfaceIdiom) = 1;
      goto LABEL_16;
  }

  if (!userInterfaceIdiom)
  {
LABEL_14:
    _iPhoneShouldUseOverlayInCurrentEnvironment = [(UISplitViewControllerPanelImpl *)self _iPhoneShouldUseOverlayInCurrentEnvironment];
    goto LABEL_15;
  }

  if (userInterfaceIdiom != 1)
  {
    goto LABEL_13;
  }

  _iPhoneShouldUseOverlayInCurrentEnvironment = [(UISplitViewControllerPanelImpl *)self _iPadShouldUseOverlayInCurrentEnvironment];
LABEL_15:
  LOBYTE(userInterfaceIdiom) = _iPhoneShouldUseOverlayInCurrentEnvironment;
LABEL_16:
  _primaryHidingState = [(UISplitViewControllerPanelImpl *)self _primaryHidingState];
  if (_primaryHidingState == 2)
  {
    v16 = 1;
    if (!shown)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (!_primaryHidingState)
  {
    v16 = userInterfaceIdiom ^ 1;
    if (!shown)
    {
      goto LABEL_22;
    }

LABEL_21:
    *shown = v16;
    goto LABEL_22;
  }

  v16 = 0;
  if (shown)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (overlay)
  {
    *overlay = userInterfaceIdiom;
  }
}

- (void)_getPrimaryShown:(BOOL *)shown supplementaryShown:(BOOL *)supplementaryShown shouldUseOverlay:(BOOL *)overlay dimMainIfNecessary:(BOOL *)necessary forDisplayMode:(int64_t)mode
{
  v30 = *MEMORY[0x1E69E9840];
  style = [(UISplitViewControllerPanelImpl *)self style];
  v15 = style == 2;
  if (style - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = _UISplitViewControllerStyleDescription(style);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:5957 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v27}];
  }

  if ((mode - 4) < 3)
  {
    v15 = 1;
    v16 = 1;
    if (!shown)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ((mode - 2) < 2)
  {
    v16 = style != 2;
    if (!shown)
    {
      goto LABEL_9;
    }

LABEL_8:
    *shown = v16;
    goto LABEL_9;
  }

  if (mode != 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v24 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_40;
      }

      v25 = _UISplitViewControllerDisplayModeDescription(mode);
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
      v25 = _UISplitViewControllerDisplayModeDescription(mode);
      *buf = 138412290;
      v29 = v25;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "unknown display mode: %@", buf, 0xCu);
    }

LABEL_40:
  }

LABEL_41:
  v15 = 0;
  v16 = 0;
  if (shown)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (supplementaryShown)
  {
    *supplementaryShown = v15;
  }

  splitBehavior = [(UISplitViewControllerPanelImpl *)self splitBehavior];
  if ([(UISplitViewControllerPanelImpl *)self presentsWithGesture]|| ![(UISplitViewControllerPanelImpl *)self _visibleToggleButtonRequiresPresentsWithGesture])
  {
    v19 = mode == 3 || splitBehavior == 2;
    v20 = splitBehavior == 3;
  }

  else
  {
    v19 = mode == 3 || mode == 5;
    v20 = mode == 6;
  }

  v22 = v20;
  if (overlay)
  {
    *overlay = v19;
  }

  if (necessary)
  {
    *necessary = v22;
  }
}

- (void)_getPrimaryShown:(BOOL *)shown supplementaryShown:(BOOL *)supplementaryShown shouldUseOverlay:(BOOL *)overlay dimMainIfNecessary:(BOOL *)necessary
{
  style = [(UISplitViewControllerPanelImpl *)self style];
  if ((style - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = style;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = _UISplitViewControllerStyleDescription(v14);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:6007 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v16}];
  }

  _concreteDisplayModeForCurrentEnvironment = [(UISplitViewControllerPanelImpl *)self _concreteDisplayModeForCurrentEnvironment];

  [(UISplitViewControllerPanelImpl *)self _getPrimaryShown:shown supplementaryShown:supplementaryShown shouldUseOverlay:overlay dimMainIfNecessary:necessary forDisplayMode:_concreteDisplayModeForCurrentEnvironment];
}

- (int64_t)validDisplayModeWithAllColumns
{
  style = [(UISplitViewControllerPanelImpl *)self style];
  v5 = style;
  if ((style - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = _UISplitViewControllerStyleDescription(v5);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:6013 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v10}];
  }

  else if (style == 2)
  {
    v6 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];

    if (v6)
    {
      selfCopy2 = self;
      v8 = 4;
      goto LABEL_7;
    }
  }

  selfCopy2 = self;
  v8 = 2;
LABEL_7:

  return [(UISplitViewControllerPanelImpl *)selfCopy2 allowedDisplayModeForCurrentSplitBehaviorGivenDisplayMode:v8];
}

- (double)panelController:(id)controller expectedWidthForColumnForViewController:(id)viewController
{
  viewControllerCopy = viewController;
  v23 = 0.0;
  v6 = 0.0;
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    v7 = [(UISplitViewControllerPanelImpl *)self _columnForViewController:viewControllerCopy];
    if (v7 <= 1)
    {
      v8 = v7;
      validDisplayModeWithAllColumns = [(UISplitViewControllerPanelImpl *)self validDisplayModeWithAllColumns];
      v22 = 0;
      [(UISplitViewControllerPanelImpl *)self _getPrimaryShown:0 supplementaryShown:0 shouldUseOverlay:&v22 dimMainIfNecessary:0 forDisplayMode:validDisplayModeWithAllColumns];
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
      view = [WeakRetained view];
      [view bounds];
      v16 = v15;
      v18 = v17;
      v19 = objc_loadWeakRetained(&self->_svc);
      v20 = [v19 _horizontalSizeClass] == 1;
      [(UISplitViewControllerPanelImpl *)self getPrimaryColumnWidth:v11 supplementaryColumnWidth:v12 forSize:validDisplayModeWithAllColumns displayMode:v20 isCompact:v22 shouldUseOverlay:v16, v18];

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

- (id)panelControllerWillUpdate:(id)update
{
  updateCopy = update;
  [(UISplitViewControllerPanelImpl *)self _updateDimmingView];
  if (qword_1ED49D968 != -1)
  {
    dispatch_once(&qword_1ED49D968, &__block_literal_global_1604);
  }

  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  [panelController setShowShadowViews:1];

  *&self->_flags &= 0xFFFFFFFFFFFFFD7FLL;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  traitCollection = [WeakRetained traitCollection];
  if ([traitCollection horizontalSizeClass] == 1)
  {
    goto LABEL_28;
  }

  style = [(UISplitViewControllerPanelImpl *)self style];
  v9 = style != 0;
  if (style && [(UISplitViewControllerPanelImpl *)self splitBehavior]== 1)
  {
    if ([(UISplitViewControllerPanelImpl *)self _alwaysHideSidebarToggleButton])
    {
      [updateCopy setClippingViewsUnnecessary:1];
    }

    else
    {
      if (style == 2)
      {
        v10 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];

        if (!v10)
        {
          goto LABEL_18;
        }
      }

      if ([(UISplitViewControllerPanelImpl *)self _isPrimaryLeading])
      {
        leadingBarContentClippingView = [updateCopy leadingBarContentClippingView];

        if (!leadingBarContentClippingView)
        {
          _newBarContentAnimationClippingView = [(UISplitViewControllerPanelImpl *)self _newBarContentAnimationClippingView];
          [updateCopy setLeadingBarContentClippingView:_newBarContentAnimationClippingView];
        }

        [updateCopy setTrailingBarContentClippingView:0];
      }

      else
      {
        trailingBarContentClippingView = [updateCopy trailingBarContentClippingView];

        if (!trailingBarContentClippingView)
        {
          _newBarContentAnimationClippingView2 = [(UISplitViewControllerPanelImpl *)self _newBarContentAnimationClippingView];
          [updateCopy setTrailingBarContentClippingView:_newBarContentAnimationClippingView2];
        }

        [updateCopy setLeadingBarContentClippingView:0];
      }

      if (style == 2)
      {
LABEL_18:
        supplementaryBarContentClippingView = [updateCopy supplementaryBarContentClippingView];

        if (!supplementaryBarContentClippingView)
        {
          _newBarContentAnimationClippingView3 = [(UISplitViewControllerPanelImpl *)self _newBarContentAnimationClippingView];
          [updateCopy setSupplementaryBarContentClippingView:_newBarContentAnimationClippingView3];
        }
      }
    }

    [updateCopy setFloatingBarButtonItem:self->_sidebarToggleButtonItem];
  }

  if ([updateCopy isAnimating])
  {
    configuration = [updateCopy configuration];
    v18 = (*(&self->_flags + 2) & 2) != 0 && [(UISplitViewControllerPanelImpl *)self userGeneratedDisplayMode]== 3;
    [configuration setForceOverlay:v18];
    [updateCopy setConfiguration:configuration];

LABEL_28:
    v20 = 0;
    goto LABEL_34;
  }

  stateRequest = [updateCopy stateRequest];
  if ([stateRequest userInitiated])
  {
    v20 = 0;
  }

  else
  {
    v34 = 0;
    v33 = 0;
    if (style)
    {
      style = [(UISplitViewControllerPanelImpl *)self currentState];
      [(UISplitViewControllerPanelImpl *)self _getPrimaryShown:&v33 + 1 supplementaryShown:&v33 shouldUseOverlay:0 dimMainIfNecessary:0 forDisplayMode:[(UISplitViewControllerPanelImpl *)self _displayModeForState:style]];

      [(UISplitViewControllerPanelImpl *)self _getPrimaryShown:&v34 + 3 supplementaryShown:&v34 + 2 shouldUseOverlay:&v34 + 1 dimMainIfNecessary:&v34];
      v21 = [(UISplitViewControllerPanelImpl *)self _setPanelConfigurationWithIsPrimaryShown:HIBYTE(v34) isSupplementaryShown:BYTE2(v34) shouldUseOverlay:BYTE1(v34) dimMainIfNecessary:v34];
      v22 = BYTE2(v34);
      v23 = HIBYTE(v33);
      LOBYTE(style) = v33;
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
    v31 = style;
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
  delegate = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    style = [(UISplitViewControllerPanelImpl *)self style];
    if (style)
    {
      v6 = style;
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
      displayModeButtonItem = [(UISplitViewControllerPanelImpl *)self displayModeButtonItem];
      title = [displayModeButtonItem title];
      v13 = [title copy];

      _currentPrimaryChildViewController = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
      displayModeButtonItem2 = [(UISplitViewControllerPanelImpl *)self displayModeButtonItem];
      [delegate splitViewController:WeakRetained willHideViewController:_currentPrimaryChildViewController withBarButtonItem:displayModeButtonItem2 forPopoverController:0];

      displayModeButtonItem3 = [(UISplitViewControllerPanelImpl *)self displayModeButtonItem];
      title2 = [displayModeButtonItem3 title];

      if (v13 != title2 && ([v13 isEqualToString:title2] & 1) == 0)
      {
        [(UISplitViewControllerPanelImpl *)self _setDisplayModeButtonItemTitle:title2];
      }
    }
  }
}

- (void)callDeprecatedWillShowDelegateCallbackIfNecessary
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  delegate = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    style = [(UISplitViewControllerPanelImpl *)self style];
    if (style)
    {
      v6 = style;
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
      _currentPrimaryChildViewController = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
      displayModeButtonItem = [(UISplitViewControllerPanelImpl *)self displayModeButtonItem];
      [delegate splitViewController:WeakRetained willShowViewController:_currentPrimaryChildViewController invalidatingBarButtonItem:displayModeButtonItem];
    }
  }
}

- (void)panelController:(id)controller willChangeToState:(id)state
{
  controllerCopy = controller;
  stateCopy = state;
  animatingToDisplayMode = self->_animatingToDisplayMode;
  if (!animatingToDisplayMode)
  {
    animatingToDisplayMode = [(UISplitViewControllerPanelImpl *)self _displayModeForState:stateCopy];
  }

  lastNotifiedMode = self->_lastNotifiedMode;
  v10 = animatingToDisplayMode != lastNotifiedMode && lastNotifiedMode != 0;
  if (!lastNotifiedMode)
  {
    goto LABEL_12;
  }

  currentState = [controllerCopy currentState];

  if (!v10)
  {
    if (currentState)
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
  delegate = [WeakRetained delegate];
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
    [delegate splitViewController:WeakRetained willChangeToDisplayMode:animatingToDisplayMode];
    *&self->_flags &= ~0x10000000uLL;
  }

  [(UISplitViewControllerPanelImpl *)self sendColumnShowHideNotificationsForNewState:stateCopy newDisplayMode:animatingToDisplayMode oldDisplayMode:v12];
  [(UISplitViewControllerPanelImpl *)self _updateTriggerSidebarKeyCommandTitleForNewDisplayMode:animatingToDisplayMode];
  if (![(UIPanelController *)self->_panelController collapsedState])
  {
    isCollapsed = [stateCopy isCollapsed];
    v18 = animatingToDisplayMode == 1 || v12 == 1;
    v19 = v18;
    if (!isCollapsed && v12 != animatingToDisplayMode && v19)
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
      navigationController = [v24 navigationController];
      navigationBar = [navigationController navigationBar];
      [navigationBar _refreshBackButtonMenu];
    }
  }

LABEL_40:
}

- (void)_unspecifiedStylePanelController:(id)controller didChangeToState:(id)state withSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  stateCopy = state;
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style)
  {
    v32 = style;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v34 = _UISplitViewControllerStyleDescription(v32);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:6346 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v34}];
  }

  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  isAnimating = [panelController isAnimating];

  if ((isAnimating & 1) == 0)
  {
    panelController2 = [(UISplitViewControllerPanelImpl *)self panelController];
    stateRequest = [panelController2 stateRequest];

    if (stateRequest && [stateRequest userInitiated])
    {
      if ([(UISplitViewControllerPanelImpl *)self _isPrimaryShown])
      {
        [(UISplitViewControllerPanelImpl *)self _setPrimaryHidingState:2];
        if ([(UISplitViewControllerPanelImpl *)self _isPrimaryLeading])
        {
          [stateCopy leadingWidth];
        }

        else
        {
          [stateCopy trailingWidth];
        }

        self->_lastUserInitiatedPrimaryWidth = v14;
      }

      else
      {
        [(UISplitViewControllerPanelImpl *)self _setPrimaryHidingState:1];
      }

      [stateRequest setUserInitiated:0];
      panelController3 = [(UISplitViewControllerPanelImpl *)self panelController];
      [panelController3 setStateRequest:stateRequest];
    }
  }

  [(UISplitViewControllerPanelImpl *)self _updateDisplayModeButtonItem];
  [(UISplitViewControllerPanelImpl *)self _updatePresentationGestureRecognizer];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _currentPrimaryChildViewController = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    _currentPrimaryChildViewController2 = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
    [_currentPrimaryChildViewController2 _splitViewControllerDidUpdate:WeakRetained withSize:{width, height}];
  }

  isCollapsed = [WeakRetained isCollapsed];
  if (self->_lastNotifiedIsCollapsed != isCollapsed)
  {
    self->_lastNotifiedIsCollapsed = isCollapsed;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v22 = objc_loadWeakRetained(&self->_svc);
    [defaultCenter postNotificationName:@"UIViewControllerShowDetailTargetDidChangeNotification" object:v22];
  }

  if ((*&self->_flags & 0x80) != 0)
  {
    displayMode = [(UISplitViewControllerPanelImpl *)self displayMode];
    v24 = [(UISplitViewControllerPanelImpl *)self _effectiveTargetDisplayModeForDisplayMode:displayMode];
    v25 = !v24 || v24 == displayMode;
    v26 = !v25;
    if (self->_lastShouldAllowChange != v26)
    {
      panelController4 = [(UISplitViewControllerPanelImpl *)self panelController];
      [panelController4 setNeedsUpdate];
    }
  }

  panelController5 = [(UISplitViewControllerPanelImpl *)self panelController];
  isAnimating2 = [panelController5 isAnimating];

  if ((isAnimating2 & 1) == 0)
  {
    v30 = objc_loadWeakRetained(&self->_svc);
    [v30 setNeedsStatusBarAppearanceUpdate];

    v31 = objc_loadWeakRetained(&self->_svc);
    [v31 setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
  }
}

- (void)panelController:(id)controller didChangeToState:(id)state withSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  controllerCopy = controller;
  stateCopy = state;
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];

  if (panelController != controllerCopy)
  {
    goto LABEL_52;
  }

  if (![(UISplitViewControllerPanelImpl *)self style])
  {
    [(UISplitViewControllerPanelImpl *)self _unspecifiedStylePanelController:controllerCopy didChangeToState:stateCopy withSize:width, height];
    goto LABEL_52;
  }

  if (([controllerCopy isAnimating] & 1) == 0)
  {
    stateRequest = [controllerCopy stateRequest];
    v12 = stateRequest;
    if (stateRequest && [stateRequest userInitiated])
    {
      if ([(UISplitViewControllerPanelImpl *)self _isPrimaryShown])
      {
        if ([(UISplitViewControllerPanelImpl *)self _isPrimaryLeading])
        {
          [stateCopy leadingWidth];
        }

        else
        {
          [stateCopy trailingWidth];
        }

        self->_lastUserInitiatedPrimaryWidth = v13;
      }

      [(UISplitViewControllerPanelImpl *)self setUserGeneratedDisplayMode:[(UISplitViewControllerPanelImpl *)self _displayModeForState:stateCopy]];
      [v12 setUserInitiated:0];
      [controllerCopy setStateRequest:v12];
    }
  }

  [(UISplitViewControllerPanelImpl *)self _updateDisplayModeButtonItem];
  [(UISplitViewControllerPanelImpl *)self _updatePresentationGestureRecognizer];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _currentPrimaryChildViewController = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    _currentPrimaryChildViewController2 = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
    [_currentPrimaryChildViewController2 _splitViewControllerDidUpdate:WeakRetained withSize:{width, height}];
  }

  isCollapsed = [WeakRetained isCollapsed];
  if (self->_lastNotifiedIsCollapsed != isCollapsed)
  {
    self->_lastNotifiedIsCollapsed = isCollapsed;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v20 = objc_loadWeakRetained(&self->_svc);
    [defaultCenter postNotificationName:@"UIViewControllerShowDetailTargetDidChangeNotification" object:v20];
  }

  displayMode = [(UISplitViewControllerPanelImpl *)self displayMode];
  if ((*&self->_flags & 0x80) != 0)
  {
    v22 = [(UISplitViewControllerPanelImpl *)self _nextTargetDisplayModeForDisplayMode:displayMode showMoreIfPossible:0];
    v23 = !v22 || v22 == displayMode;
    v24 = !v23;
    if (self->_lastShouldAllowChange != v24)
    {
      [controllerCopy setNeedsUpdate];
    }
  }

  panelController2 = [(UISplitViewControllerPanelImpl *)self panelController];
  isAnimating = [panelController2 isAnimating];

  if ((isAnimating & 1) == 0)
  {
    v27 = objc_loadWeakRetained(&self->_svc);
    [v27 setNeedsStatusBarAppearanceUpdate];

    v28 = objc_loadWeakRetained(&self->_svc);
    [v28 setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
  }

  lastSettledDisplayMode = self->_lastSettledDisplayMode;
  v31 = lastSettledDisplayMode != displayMode && lastSettledDisplayMode != 0;
  if (!+[UIView _isInAnimationBlockWithAnimationsEnabled](UIView, "_isInAnimationBlockWithAnimationsEnabled") && ([controllerCopy isAnimating] & 1) == 0 && (v31 || (*(&self->_flags + 4) & 3) != 0) && -[UIGestureRecognizer state](self->__fluidOpenSidebarPresentationGestureRecognizer, "state") == UIGestureRecognizerStatePossible)
  {
    v32 = objc_loadWeakRetained(&self->_svc);
    delegate = [v32 delegate];

    if (*(&self->_flags + 4))
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_48:
        flags = self->_flags;
        self->_lastSettledDisplayMode = displayMode;
        self->_flags = (*&flags & 0xFFFFFFFCFFFFFFFFLL);

        goto LABEL_49;
      }

      v37 = objc_loadWeakRetained(&self->_svc);
      [delegate _splitViewController:v37 didFinishExpandToDisplayMode:displayMode];
    }

    else
    {
      if (!v31)
      {
        goto LABEL_48;
      }

      panelController3 = [(UISplitViewControllerPanelImpl *)self panelController];
      currentState = [panelController3 currentState];
      _collapsedState = [currentState _collapsedState];

      if (_collapsedState || (objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_48;
      }

      v37 = objc_loadWeakRetained(&self->_svc);
      [delegate _splitViewController:v37 didChangeFromDisplayMode:self->_lastSettledDisplayMode toDisplayMode:displayMode];
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

- (int64_t)topColumnForCollapsingPanelController:(id)controller
{
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    v4 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30238];
    viewController = [v4 viewController];
    v6 = viewController;
    if (viewController)
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
    delegate = [WeakRetained delegate];

    if (objc_opt_respondsToSelector())
    {
      objc_opt_respondsToSelector();
      p_flags = &self->_flags;
      *&self->_flags |= 0x30000000uLL;
      v12 = objc_loadWeakRetained(&self->_svc);
      v8 = [delegate splitViewController:v12 topColumnForCollapsingToProposedTopColumn:v8];
      v18 = v8;
    }

    else if (objc_opt_respondsToSelector())
    {
      p_flags = &self->_flags;
      *&self->_flags |= 0x30000000uLL;
      v13 = objc_loadWeakRetained(&self->_svc);
      [delegate splitViewController:v13 willCollapseToProposedTopColumn:&v18];

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
      [delegate _splitViewController:v15 willCollapseToProposedTopColumn:&v17];

      v8 = v17;
      v18 = v17;
    }

    *p_flags &= 0xFFFFFFFFCFFFFFFFLL;
    goto LABEL_18;
  }

  return 999;
}

- (id)primaryViewControllerForCollapsingPanelController:(id)controller
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  delegate = [WeakRetained delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style)
  {
    v7 = style;
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

  v12 = [delegate primaryViewControllerForCollapsingSplitViewController:WeakRetained];
LABEL_6:

  return v12;
}

- (id)primaryViewControllerForExpandingPanelController:(id)controller
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  delegate = [WeakRetained delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style)
  {
    v7 = style;
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

  v12 = [delegate primaryViewControllerForExpandingSplitViewController:WeakRetained];
LABEL_6:

  return v12;
}

- (BOOL)panelController:(id)controller collapseOntoPrimaryViewController:(id)viewController
{
  v40[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    [(UISplitViewControllerPanelImpl *)self preparePanelControllerForCollapse];
    mainViewController = 0;
  }

  else
  {
    [viewControllerCopy _splitViewControllerWillCollapseOntoPrimaryViewController:WeakRetained];
    mainViewController = [(UIPanelController *)self->_panelController mainViewController];
    v10 = objc_loadWeakRetained(&self->_svc);
    v40[0] = viewControllerCopy;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    [v10 setViewControllers:v11];
  }

  if (!UIApp)
  {
    v21 = 1;
    goto LABEL_15;
  }

  delegate = [WeakRetained delegate];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__UISplitViewControllerPanelImpl_panelController_collapseOntoPrimaryViewController___block_invoke;
  aBlock[3] = &unk_1E7103CE0;
  v13 = delegate;
  v26 = v13;
  selfCopy = self;
  v31 = &v32;
  v14 = WeakRetained;
  v28 = v14;
  v15 = mainViewController;
  v29 = v15;
  v16 = viewControllerCopy;
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
      style = [(UISplitViewControllerPanelImpl *)self style];
      if (style)
      {
        v18 = *(__UILogGetCategoryCachedImpl("UISplitViewController", &panelController_collapseOntoPrimaryViewController____s_category) + 8);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = NSStringFromSelector(sel__splitViewController_collapseSecondaryViewController_ontoPrimaryViewController_forRestorationOfCollapsedWhileSuspendedWithPrimaryVisible_);
          v20 = _UISplitViewControllerStyleDescription(style);
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

- (void)panelController:(id)controller collapsePrimaryViewController:(id)viewController withFallbackSecondaryViewController:(id)secondaryViewController transitionCoordinator:(id)coordinator
{
  viewControllerCopy = viewController;
  secondaryViewControllerCopy = secondaryViewController;
  coordinatorCopy = coordinator;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __138__UISplitViewControllerPanelImpl_panelController_collapsePrimaryViewController_withFallbackSecondaryViewController_transitionCoordinator___block_invoke;
  v15[3] = &unk_1E70F6B40;
  v16 = viewControllerCopy;
  v17 = secondaryViewControllerCopy;
  selfCopy = self;
  v19 = coordinatorCopy;
  v12 = coordinatorCopy;
  v13 = secondaryViewControllerCopy;
  v14 = viewControllerCopy;
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

- (BOOL)panelController:(id)controller collapsePrimaryViewController:(id)viewController withFallbackSecondaryViewController:(id)secondaryViewController onTopOfSupplementaryViewController:(id)supplementaryViewController transitionCoordinator:(id)coordinator
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  secondaryViewControllerCopy = secondaryViewController;
  supplementaryViewControllerCopy = supplementaryViewController;
  coordinatorCopy = coordinator;
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style)
  {
    if (supplementaryViewControllerCopy && viewControllerCopy != supplementaryViewControllerCopy)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __173__UISplitViewControllerPanelImpl_panelController_collapsePrimaryViewController_withFallbackSecondaryViewController_onTopOfSupplementaryViewController_transitionCoordinator___block_invoke;
      v19[3] = &unk_1E70F6228;
      v20 = viewControllerCopy;
      v21 = supplementaryViewControllerCopy;
      selfCopy = self;
      [v20 _executeSplitViewControllerActions:v19];
    }

    if (secondaryViewControllerCopy)
    {
      [(UISplitViewControllerPanelImpl *)self panelController:controllerCopy collapsePrimaryViewController:viewControllerCopy withFallbackSecondaryViewController:secondaryViewControllerCopy transitionCoordinator:coordinatorCopy];
    }
  }

  return style != 0;
}

void __173__UISplitViewControllerPanelImpl_panelController_collapsePrimaryViewController_withFallbackSecondaryViewController_onTopOfSupplementaryViewController_transitionCoordinator___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  WeakRetained = objc_loadWeakRetained((a1[6] + 16));
  [v1 _collapseViewController:v2 forSplitViewController:WeakRetained];
}

- (id)panelController:(id)controller separateSecondaryViewControllerFromPrimaryViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  if (![(UISplitViewControllerPanelImpl *)self style])
  {
    v16 = [(UISplitViewControllerPanelImpl *)self panelController:controllerCopy unspecifiedStyleSeparateSecondaryViewControllerFromPrimaryViewController:viewControllerCopy];
    goto LABEL_29;
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  delegate = [WeakRetained delegate];

  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v52 = __107__UISplitViewControllerPanelImpl_panelController_separateSecondaryViewControllerFromPrimaryViewController___block_invoke;
  v53 = &unk_1E7103D08;
  v11 = delegate;
  v54 = v11;
  selfCopy = self;
  __107__UISplitViewControllerPanelImpl_panelController_separateSecondaryViewControllerFromPrimaryViewController___block_invoke(v51, sel__splitViewControllerIsPrimaryVisible_);
  v52(v51, sel_splitViewController_separateSecondaryViewControllerFromPrimaryViewController_);
  v12 = objc_opt_respondsToSelector();
  if (v12 & 1) != 0 || (objc_opt_respondsToSelector())
  {
    _concreteDisplayModeForCurrentEnvironment = [(UISplitViewControllerPanelImpl *)self _concreteDisplayModeForCurrentEnvironment];
    v50 = _concreteDisplayModeForCurrentEnvironment;
    *&self->_flags |= 0x50000000uLL;
    v14 = objc_loadWeakRetained(&self->_svc);
    if (v12)
    {
      v15 = [v11 splitViewController:v14 displayModeForExpandingToProposedDisplayMode:_concreteDisplayModeForCurrentEnvironment];
      v50 = v15;
    }

    else
    {
      [v11 splitViewController:v14 willExpandToProposedDisplayMode:&v50];

      v15 = v50;
    }

    *&self->_flags &= 0xFFFFFFFFAFFFFFFFLL;
    if (v15 != _concreteDisplayModeForCurrentEnvironment)
    {
      if (v15)
      {
        [(UISplitViewControllerPanelImpl *)self setUserGeneratedDisplayMode:v15];
        presentsWithGesture = [(UISplitViewControllerPanelImpl *)self presentsWithGesture];
        flags = self->_flags;
        v19 = ~(*&flags >> 14) & 0x40;
        if (presentsWithGesture)
        {
          v19 = 0;
        }

        self->_flags = (v19 | *&flags & 0xFFFFFFFFFFFFFFBFLL);
      }
    }
  }

  v20 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
  navigationControllerWrapper = [v20 navigationControllerWrapper];
  v22 = navigationControllerWrapper;
  if (navigationControllerWrapper)
  {
    viewController = navigationControllerWrapper;
  }

  else
  {
    navigationController = [v20 navigationController];
    if (navigationController)
    {
      v24 = navigationController;
      _outermostNavigationController = [v24 _outermostNavigationController];
      v26 = v24;
      goto LABEL_18;
    }

    viewController = [v20 viewController];
  }

  v24 = viewController;
  _outermostNavigationController = [viewController navigationController];
  v26 = 0;
LABEL_18:
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __107__UISplitViewControllerPanelImpl_panelController_separateSecondaryViewControllerFromPrimaryViewController___block_invoke_453;
  v46[3] = &unk_1E70F6228;
  v28 = _outermostNavigationController;
  v47 = v28;
  v29 = v24;
  v48 = v29;
  selfCopy2 = self;
  [v28 _executeSplitViewControllerActions:v46];
  if (v29 && [(UISplitViewControllerPanelImpl *)&self->super.isa _columnForViewController:v29 forceExpandedResult:1]!= 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v43 = objc_loadWeakRetained(&self->_svc);
    v38 = [(UISplitViewControllerPanelImpl *)&self->super.isa _columnForViewController:v29 forceExpandedResult:1];
    _UISplitViewControllerColumnDescription(v38);
    v41 = v26;
    v40 = v39 = controllerCopy;
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:6770 description:{@"Unexpected view controller change when expanding %@. Found %@ in %@ column instead of in secondary column. _perColumnViewControllers are %@", v43, v29, v40, self->_perColumnViewControllers}];

    controllerCopy = v39;
    v26 = v41;
  }

  if (![v22 _isTabBarController])
  {
    goto LABEL_27;
  }

  v42 = viewControllerCopy;
  v44 = v11;
  v30 = controllerCopy;
  selectedViewController = [v22 selectedViewController];
  navigationController2 = [v20 navigationController];
  v33 = navigationController2;
  if (selectedViewController == navigationController2)
  {

    goto LABEL_26;
  }

  [v20 viewController];
  v35 = v34 = v26;

  v36 = selectedViewController == v35;
  v26 = v34;
  if (v36)
  {
LABEL_26:

    controllerCopy = v30;
    viewControllerCopy = v42;
    v11 = v44;
LABEL_27:
    [(UISplitViewControllerPanelImpl *)self updatePanelControllerForViewControllerChangeInColumn:2];
    goto LABEL_28;
  }

  [(UISplitViewControllerPanelImpl *)self setViewController:v22 forColumn:2];

  controllerCopy = v30;
  viewControllerCopy = v42;
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

- (id)panelController:(id)controller separateSupplementaryViewControllerFromPrimaryViewController:(id)viewController
{
  v58 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  viewControllerCopy = viewController;
  if ([(UISplitViewControllerPanelImpl *)self style]== 2 && ([(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
    viewController = [v10 viewController];

    v12 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
    navigationController = [v12 navigationController];

    if (viewController != viewControllerCopy && navigationController != viewControllerCopy)
    {
      v14 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30238];
      viewController2 = [v14 viewController];

      if (viewController2 != viewControllerCopy)
      {
        if (os_variant_has_internal_diagnostics())
        {
          v39 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
          {
            v40 = NSStringFromSelector(a2);
            *buf = 138413058;
            *&buf[4] = viewControllerCopy;
            *&buf[12] = 2112;
            *&buf[14] = v40;
            *&buf[22] = 2112;
            v56 = viewController;
            LOWORD(v57) = 2112;
            *(&v57 + 2) = navigationController;
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
            *&buf[4] = viewControllerCopy;
            *&buf[12] = 2112;
            *&buf[14] = v18;
            *&buf[22] = 2112;
            v56 = viewController;
            LOWORD(v57) = 2112;
            *(&v57 + 2) = navigationController;
            _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "Ignoring unexpected UIViewController, %@, passed to %@. Expected %@ or %@. This is an internal UISplitViewController problem.", buf, 0x2Au);
          }
        }
      }
    }

    if (!navigationController)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      WeakRetained = objc_loadWeakRetained(&self->_svc);
      [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:6794 description:{@"Lost track of navigation controller for %@ column when expanding %@", @"Primary", WeakRetained}];
    }

    v19 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
    viewController3 = [v19 viewController];

    v21 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
    navigationController2 = [v21 navigationController];

    if (!navigationController2)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v34 = objc_loadWeakRetained(&self->_svc);
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:6797 description:{@"Lost track of navigation controller for %@ column when expanding %@", @"Supplementary", v34}];
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
    v23 = navigationController;
    v47 = v23;
    v24 = navigationController2;
    v48 = v24;
    selfCopy = self;
    [v23 _executeSplitViewControllerActions:&v43];
    v25 = *(*&buf[8] + 40);
    if (!v25)
    {
      v26 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
      navigationController3 = [v26 navigationController];
      v28 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = navigationController3;

      v25 = *(*&buf[8] + 40);
    }

    if ([(UISplitViewControllerPanelImpl *)self _columnForViewController:v25]!= 1)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v36 = objc_loadWeakRetained(&self->_svc);
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:6808 description:{@"Unexpected view controller change in %@ column for expanding %@", @"Supplementary", v36, v43, v44, v45, v46, v47}];
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

- (id)panelController:(id)controller unspecifiedStyleSeparateSecondaryViewControllerFromPrimaryViewController:(id)viewController
{
  v36 = *MEMORY[0x1E69E9840];
  viewControllerCopy = viewController;
  [(UISplitViewControllerPanelImpl *)self _stopTransitionsInViewController:viewControllerCopy];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  delegate = [WeakRetained delegate];
  *&self->_transitioningFlags = *&self->_transitioningFlags & 0xFE | objc_opt_respondsToSelector() & 1;

  if (*&self->_transitioningFlags)
  {
    v8 = objc_loadWeakRetained(&self->_svc);
    delegate2 = [v8 delegate];
    v10 = objc_loadWeakRetained(&self->_svc);
    if ([delegate2 _splitViewControllerIsPrimaryVisible:v10])
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
  delegate3 = [v12 delegate];
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
    v20 = [viewControllerCopy separateSecondaryViewControllerForSplitViewController:v21];

    goto LABEL_17;
  }

  v17 = objc_loadWeakRetained(&self->_delegate);
  v18 = [v17 splitViewController:v12 separateSecondaryViewControllerFromPrimaryViewController:viewControllerCopy];

  if (!v18)
  {
    goto LABEL_16;
  }

  parentViewController = [v18 parentViewController];

  v20 = v18;
  if (parentViewController == viewControllerCopy)
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
    v34 = viewControllerCopy;
    v35 = v20;
    v27 = MEMORY[0x1E695DEC8];
    v28 = &v34;
    v29 = 2;
  }

  else
  {
    v33 = viewControllerCopy;
    v27 = MEMORY[0x1E695DEC8];
    v28 = &v33;
    v29 = 1;
  }

  v30 = [v27 arrayWithObjects:v28 count:{v29, v33, v34, v35, v36}];
  v31 = objc_loadWeakRetained(&self->_svc);
  [v31 setViewControllers:v30];

  return v20;
}

- (void)panelControllerDidCollapse:(id)collapse
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  delegate = [WeakRetained delegate];

  if (objc_opt_respondsToSelector())
  {
    v5 = objc_loadWeakRetained(&self->_svc);
    [delegate splitViewControllerDidCollapse:v5];
  }
}

- (void)panelControllerDidExpand:(id)expand
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  delegate = [WeakRetained delegate];

  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    v5 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
    navigationController = [v5 navigationController];

    topViewController = [navigationController topViewController];
    navigationItem = [topViewController navigationItem];
    _searchControllerIfAllowed = [navigationItem _searchControllerIfAllowed];

    [_searchControllerIfAllowed _updateHasPendingSuggestionMenuRefreshFlagForReason:3];
    *&self->_flags |= 0x100000000uLL;
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = objc_loadWeakRetained(&self->_svc);
    [delegate splitViewControllerDidExpand:v10];
  }
}

- (CGSize)_predictedDetailSizeForPredictedEndState:(id)state
{
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  view = [WeakRetained view];
  [view bounds];
  v8 = v7;
  v10 = v9;

  _isPrimaryLeading = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
  if (_isPrimaryLeading)
  {
    if ([stateCopy leadingOverlapsMain])
    {
      goto LABEL_10;
    }

    [stateCopy leadingWidth];
  }

  else
  {
    if ([stateCopy trailingOverlapsMain])
    {
      goto LABEL_10;
    }

    [stateCopy trailingWidth];
  }

  v13 = v12;
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  configuration = [panelController configuration];

  v16 = objc_loadWeakRetained(&self->_svc);
  view2 = [v16 view];
  window = [view2 window];
  screen = [window screen];
  [screen scale];
  v21 = v20;

  if (_isPrimaryLeading)
  {
    [configuration leadingBorderWidthForScale:v21];
  }

  else
  {
    [configuration trailingBorderWidthForScale:v21];
  }

  v8 = v8 - (v13 + v22);

LABEL_10:
  v23 = v8;
  v24 = v10;
  result.height = v24;
  result.width = v23;
  return result;
}

- (id)panelController:(id)controller willBeginAnimatedTransitionToStateRequest:(id)request predictedEndState:(id)state predictedDuration:(double)duration
{
  v37 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  delegate = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    style = [(UISplitViewControllerPanelImpl *)self style];
    if (style)
    {
      v14 = style;
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
      [delegate _splitViewController:WeakRetained willBeginAnimatedTransitionToStateRequest:requestCopy];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    style2 = [(UISplitViewControllerPanelImpl *)self style];
    if (style2)
    {
      v20 = style2;
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
      [(UISplitViewControllerPanelImpl *)self _predictedDetailSizeForPredictedEndState:stateCopy];
      v26 = v25;
      v28 = v27;
      v29 = objc_loadWeakRetained(&self->_svc);
      [delegate _splitViewController:v29 willBeginAnimatedTransitionToStateRequest:requestCopy predictedDetailSize:v26 predictedDuration:{v28, duration}];
    }
  }

  self->_animatingToDisplayMode = [(UISplitViewControllerPanelImpl *)self _displayModeForState:stateCopy];
  if (objc_opt_respondsToSelector())
  {
    v30 = objc_loadWeakRetained(&self->_svc);
    v31 = [delegate _splitViewController:v30 animationControllerForTransitionFromDisplayMode:-[UISplitViewControllerPanelImpl displayMode](self toDisplayMode:{"displayMode"), -[UISplitViewControllerPanelImpl _displayModeForState:](self, "_displayModeForState:", stateCopy)}];
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (void)panelController:(id)controller animateTransitionToStateRequest:(id)request predictedEndState:(id)state predictedDuration:(double)duration
{
  v24 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  delegate = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    style = [(UISplitViewControllerPanelImpl *)self style];
    if (style)
    {
      v13 = style;
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
      [(UISplitViewControllerPanelImpl *)self _predictedDetailSizeForPredictedEndState:stateCopy];
      [delegate _splitViewController:WeakRetained animateTransitionToStateRequest:requestCopy detailSize:? duration:?];
    }
  }

  v18 = objc_loadWeakRetained(&self->_svc);
  [v18 setNeedsStatusBarAppearanceUpdate];

  v19 = objc_loadWeakRetained(&self->_svc);
  [v19 setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
}

- (void)panelController:(id)controller didEndAnimatedTransitionToStateRequest:(id)request
{
  v18 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  delegate = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    style = [(UISplitViewControllerPanelImpl *)self style];
    if (style)
    {
      v9 = style;
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
      [delegate _splitViewController:WeakRetained didEndAnimatedTransitionToStateRequest:requestCopy];
    }
  }

  self->_animatingToDisplayMode = 0;
}

- (void)panelController:(id)controller willBeginAnimationToPrimarySize:(CGSize)size supplementarySize:(CGSize)supplementarySize secondarySize:(CGSize)secondarySize
{
  height = secondarySize.height;
  width = secondarySize.width;
  v8 = supplementarySize.height;
  v9 = supplementarySize.width;
  v10 = size.height;
  v11 = size.width;
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v55 = _UISplitViewControllerStyleDescription(style);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:7066 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v55}];
  }

  v15 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
  navigationControllerWrapper = [v15 navigationControllerWrapper];
  v17 = navigationControllerWrapper;
  if (navigationControllerWrapper)
  {
    viewController = navigationControllerWrapper;
  }

  else
  {
    v18 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
    navigationController = [v18 navigationController];
    v20 = navigationController;
    if (navigationController)
    {
      viewController = navigationController;
    }

    else
    {
      v21 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
      viewController = [v21 viewController];
    }
  }

  v22 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
  navigationController2 = [v22 navigationController];
  v24 = navigationController2;
  if (navigationController2)
  {
    viewController2 = navigationController2;
  }

  else
  {
    v26 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
    viewController2 = [v26 viewController];
  }

  v27 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
  navigationControllerWrapper2 = [v27 navigationControllerWrapper];
  v29 = navigationControllerWrapper2;
  if (navigationControllerWrapper2)
  {
    viewController3 = navigationControllerWrapper2;
  }

  else
  {
    v31 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
    navigationController3 = [v31 navigationController];
    v33 = navigationController3;
    if (navigationController3)
    {
      viewController3 = navigationController3;
    }

    else
    {
      v34 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
      viewController3 = [v34 viewController];
    }
  }

  transitionCoordinator = [(UISplitViewControllerPanelImpl *)self transitionCoordinator];
  v36 = transitionCoordinator;
  if (transitionCoordinator)
  {
    _definiteTransitionCoordinator = transitionCoordinator;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    _definiteTransitionCoordinator = [WeakRetained _definiteTransitionCoordinator];
  }

  _existingView = [viewController _existingView];
  [_existingView bounds];
  v41 = v40;
  v43 = v42;

  if (v11 != v41 || v10 != v43)
  {
    [viewController viewWillTransitionToSize:_definiteTransitionCoordinator withTransitionCoordinator:{v11, v10}];
  }

  if (style == 2)
  {
    _existingView2 = [viewController2 _existingView];
    [_existingView2 bounds];
    v46 = v45;
    v48 = v47;

    if (v9 != v46 || v8 != v48)
    {
      [viewController2 viewWillTransitionToSize:_definiteTransitionCoordinator withTransitionCoordinator:{v9, v8}];
    }
  }

  _existingView3 = [viewController3 _existingView];
  [_existingView3 bounds];
  v51 = v50;
  v53 = v52;

  if (width != v51 || height != v53)
  {
    [viewController3 viewWillTransitionToSize:_definiteTransitionCoordinator withTransitionCoordinator:{width, height}];
  }
}

- (void)panelController:(id)controller adjustLeadingViewController:(id)viewController forKeyboardInfo:(id)info
{
  viewControllerCopy = viewController;
  infoCopy = info;
  if (objc_opt_respondsToSelector())
  {
    [viewControllerCopy _adjustNonOverlayScrollViewsForKeyboardInfo:infoCopy];
  }
}

- (void)panelController:(id)controller adjustTrailingViewController:(id)viewController forKeyboardInfo:(id)info
{
  viewControllerCopy = viewController;
  infoCopy = info;
  if (objc_opt_respondsToSelector())
  {
    [viewControllerCopy _adjustNonOverlayScrollViewsForKeyboardInfo:infoCopy];
  }
}

- (id)_navigationBarForSidebarButtonForColumn:(int64_t)column
{
  perColumnViewControllers = self->_perColumnViewControllers;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:column];
  v5 = [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:v4];
  navigationController = [v5 navigationController];

  _existingNavigationBar = [navigationController _existingNavigationBar];
  if ([navigationController isNavigationBarHidden])
  {
    _targetNavigationBarForUISplitViewControllerSidebarButton = [navigationController _targetNavigationBarForUISplitViewControllerSidebarButton];
    v9 = _targetNavigationBarForUISplitViewControllerSidebarButton;
    if (_existingNavigationBar == _targetNavigationBarForUISplitViewControllerSidebarButton)
    {
      v10 = 0;
    }

    else
    {
      v10 = _targetNavigationBarForUISplitViewControllerSidebarButton;
    }

    v11 = v10;

    _existingNavigationBar = v11;
  }

  return _existingNavigationBar;
}

- (BOOL)_wantsSideBarImageForOneOverSecondary
{
  style = [(UISplitViewControllerPanelImpl *)self style];
  v5 = style;
  if ((style - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = _UISplitViewControllerStyleDescription(v5);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:7110 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v9}];
  }

  else if (style == 2)
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
    image = [(UIBarButtonItem *)self->_sidebarToggleButtonItem image];
    _sidebarToggleSymbolImage = [(UISplitViewControllerPanelImpl *)self _sidebarToggleSymbolImage];
    v7 = [image isEqual:_sidebarToggleSymbolImage];
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

- (id)_navigationBarForSidebarButtonForDisplayMode:(int64_t)mode
{
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = _UISplitViewControllerStyleDescription(style);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:7116 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v21}];
  }

  navigationBar = 0;
  if (mode <= 2)
  {
    if (mode != 1)
    {
      if (mode != 2)
      {
        goto LABEL_23;
      }

      if (style == 2)
      {
        v8 = &unk_1EFE30250;
      }

      else
      {
        v8 = &unk_1EFE30220;
      }

      v9 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:v8];
      navigationController = [v9 navigationController];

      navigationBar = [navigationController navigationBar];
      goto LABEL_17;
    }

    v13 = [(UISplitViewControllerPanelImpl *)self _navigationBarForSidebarButtonForColumn:2];
LABEL_22:
    navigationBar = v13;
    goto LABEL_23;
  }

  if (mode == 3)
  {
    _wantsSideBarImageForOneOverSecondary = [(UISplitViewControllerPanelImpl *)self _wantsSideBarImageForOneOverSecondary];
    if (style == 2)
    {
      v15 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
      if (v15)
      {
        navigationController = v15;
        v16 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
        navigationController2 = [v16 navigationController];
        navigationBar = [navigationController2 navigationBar];

LABEL_17:
        goto LABEL_23;
      }
    }

    if (_wantsSideBarImageForOneOverSecondary)
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

  if (mode == 4)
  {
    v11 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
    navigationController3 = [v11 navigationController];
    navigationBar = [navigationController3 navigationBar];
  }

LABEL_23:

  return navigationBar;
}

- (id)panelController:(id)controller navigationBarForViewController:(id)viewController
{
  viewControllerCopy = viewController;
  if ([(UISplitViewControllerPanelImpl *)self _alwaysHideSidebarToggleButton]|| (v6 = [(UISplitViewControllerPanelImpl *)self _columnForViewController:viewControllerCopy], v6 > 2))
  {
    v7 = 0;
  }

  else
  {
    v7 = [(UISplitViewControllerPanelImpl *)self _navigationBarForSidebarButtonForColumn:v6];
  }

  return v7;
}

- (BOOL)_unspecifiedStyleGestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style)
  {
    v23 = style;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = _UISplitViewControllerStyleDescription(v23);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:7160 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v25}];
  }

  _presentationGestureRecognizer = [(UISplitViewControllerPanelImpl *)self _presentationGestureRecognizer];

  if (_presentationGestureRecognizer == beginCopy)
  {
    WeakRetained = [beginCopy view];
    if ([(UISplitViewControllerPanelImpl *)self _isPrimaryShown])
    {
      [beginCopy locationInView:WeakRetained];
      v11 = [WeakRetained hitTest:0 withEvent:?];
      if (!v11)
      {
        LOBYTE(v9) = 0;
LABEL_27:

        goto LABEL_28;
      }

      _currentPrimaryChildViewController = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
      view = [_currentPrimaryChildViewController view];
      v9 = [v11 isDescendantOfView:view] ^ 1;
    }

    else
    {
      [beginCopy translationInView:WeakRetained];
      v15 = v14;
      _layoutPrimaryOnRight = [(UISplitViewControllerPanelImpl *)self _layoutPrimaryOnRight];
      if (_layoutPrimaryOnRight)
      {
        v17 = 8;
      }

      else
      {
        v17 = 2;
      }

      if (_layoutPrimaryOnRight)
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

      [beginCopy locationInView:WeakRetained];
      v11 = [WeakRetained hitTest:0 withEvent:?];
      _scroller = [v11 _scroller];
      if (!_scroller)
      {
        LOBYTE(v9) = 1;
        goto LABEL_27;
      }

      _currentPrimaryChildViewController = _scroller;
      while (([_currentPrimaryChildViewController isDecelerating] & 1) == 0 && (objc_msgSend(_currentPrimaryChildViewController, "_currentlyAbuttedContentEdges") & v17) != 0)
      {
        superview = [_currentPrimaryChildViewController superview];
        _scroller2 = [superview _scroller];

        _currentPrimaryChildViewController = _scroller2;
        if (!_scroller2)
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

  _menuGestureRecognizer = [(UISplitViewControllerPanelImpl *)self _menuGestureRecognizer];

  if (_menuGestureRecognizer == beginCopy)
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

- (BOOL)_configurationPermitsFluidOpenGestureWithPrimaryShown:(BOOL)shown supplementaryShown:(BOOL)supplementaryShown
{
  supplementaryShownCopy = supplementaryShown;
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = _UISplitViewControllerStyleDescription(style);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:7202 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v14}];

    if (shown)
    {
      goto LABEL_4;
    }
  }

  else if (shown)
  {
    goto LABEL_4;
  }

  if (!supplementaryShownCopy)
  {
    return 1;
  }

LABEL_4:
  if (style == 2)
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

  userGeneratedDisplayMode = [(UISplitViewControllerPanelImpl *)self userGeneratedDisplayMode];
  return userGeneratedDisplayMode == 3 || userGeneratedDisplayMode == 5;
}

- (BOOL)_configurationPermitsFluidCloseGestureWithPrimaryShown:(BOOL)shown supplementaryShown:(BOOL)supplementaryShown
{
  supplementaryShownCopy = supplementaryShown;
  shownCopy = shown;
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = _UISplitViewControllerStyleDescription(style);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:7215 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v11}];

    if (!shownCopy)
    {
      goto LABEL_6;
    }
  }

  else if (!shownCopy)
  {
    goto LABEL_6;
  }

  if (supplementaryShownCopy)
  {
    return 1;
  }

  if (!shownCopy && !supplementaryShownCopy)
  {
    return 0;
  }

LABEL_6:
  if (style == 2)
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

  userGeneratedDisplayMode = [(UISplitViewControllerPanelImpl *)self userGeneratedDisplayMode];
  return userGeneratedDisplayMode == 3 || userGeneratedDisplayMode == 5;
}

- (int64_t)_columnForView:(id)view getIsContent:(BOOL *)content
{
  _viewControllerForAncestor = [view _viewControllerForAncestor];
  if (_viewControllerForAncestor)
  {
    v7 = [(UISplitViewControllerPanelImpl *)self _columnForViewController:_viewControllerForAncestor];
    v8 = v7;
    if (content && v7 != 999)
    {
      perColumnViewControllers = self->_perColumnViewControllers;
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
      v11 = [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:v10];
      navigationController = [v11 navigationController];
      if (_viewControllerForAncestor == navigationController)
      {
        v17 = 0;
      }

      else
      {
        v13 = self->_perColumnViewControllers;
        v14 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
        v15 = [(NSMutableDictionary *)v13 objectForKeyedSubscript:v14];
        navigationControllerWrapper = [v15 navigationControllerWrapper];
        v17 = _viewControllerForAncestor != navigationControllerWrapper;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v8 = 999;
  }

  if (content)
  {
    v17 = 0;
LABEL_11:
    *content = v17;
  }

  return v8;
}

- (BOOL)_fluidGestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  if (![(UISplitViewControllerPanelImpl *)self _isCollapsed])
  {
    _fluidOpenSidebarPresentationGestureRecognizer = [(UISplitViewControllerPanelImpl *)self _fluidOpenSidebarPresentationGestureRecognizer];

    if (_fluidOpenSidebarPresentationGestureRecognizer == beginCopy)
    {
      LOBYTE(isSupplementaryVisible) = 1;
      goto LABEL_15;
    }

    _fluidSidebarPresentationGestureRecognizer = [(UISplitViewControllerPanelImpl *)self _fluidSidebarPresentationGestureRecognizer];

    if (_fluidSidebarPresentationGestureRecognizer == beginCopy)
    {
      v8 = beginCopy;
      view = [v8 view];
      [v8 translationInView:view];
      if (v10 == 0.0)
      {
        goto LABEL_13;
      }

      v12 = v10;
      if (fabs(v10) <= fabs(v11))
      {
        goto LABEL_13;
      }

      _effectivePrimaryRectEdge = [(UISplitViewControllerPanelImpl *)self _effectivePrimaryRectEdge];
      if (_effectivePrimaryRectEdge == 2)
      {
        v14 = v12 < 0.0;
      }

      else
      {
        v14 = v12 > 0.0;
      }

      _isPrimaryShown = [(UISplitViewControllerPanelImpl *)self _isPrimaryShown];
      panelController = [(UISplitViewControllerPanelImpl *)self panelController];
      currentState = [panelController currentState];
      isSupplementaryVisible = [currentState isSupplementaryVisible];

      if (v14)
      {
        if (![(UISplitViewControllerPanelImpl *)self _configurationPermitsFluidCloseGestureWithPrimaryShown:_isPrimaryShown supplementaryShown:isSupplementaryVisible])
        {
LABEL_13:
          LOBYTE(isSupplementaryVisible) = 0;
LABEL_14:

          goto LABEL_15;
        }
      }

      else if (![(UISplitViewControllerPanelImpl *)self _configurationPermitsFluidOpenGestureWithPrimaryShown:_isPrimaryShown supplementaryShown:isSupplementaryVisible])
      {
        goto LABEL_13;
      }

      v19 = [v8 _activeEventOfType:10];

      if (v19)
      {
        LOBYTE(isSupplementaryVisible) = 1;
      }

      else
      {
        [v8 locationInView:view];
        v20 = [view hitTest:0 withEvent:?];
        v37 = 0;
        v21 = [(UISplitViewControllerPanelImpl *)self _columnForView:v20 getIsContent:&v37];
        if (v37 != 1 || (*(&self->_flags + 5) & 4) != 0 && (v22 = v21, -[UISplitViewControllerPanelImpl _columnStyleDelegate](self, "_columnStyleDelegate"), v30 = v20, v23 = objc_claimAutoreleasedReturnValue(), WeakRetained = objc_loadWeakRetained(&self->_svc), LODWORD(v22) = [v23 _splitViewController:WeakRetained allowInteractivePresentationGesture:v8 inContentsOfColumn:v22], WeakRetained, v23, v20 = v30, v22))
        {
          LODWORD(isSupplementaryVisible) = ![(UISplitViewControllerPanelImpl *)self _scrollViewPreventsGestureForHitView:v20];
        }

        else
        {
          if (_effectivePrimaryRectEdge == 2)
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
          selfCopy = self;
          v35 = v8;
          v36 = v25;
          if (isSupplementaryVisible)
          {
            LODWORD(isSupplementaryVisible) = __69__UISplitViewControllerPanelImpl__fluidGestureRecognizerShouldBegin___block_invoke(v31, 1);
          }

          if ((isSupplementaryVisible & 1) == 0 && _isPrimaryShown)
          {
            LODWORD(isSupplementaryVisible) = (v32)(v31, 0);
          }
        }

        if ((*(&self->_flags + 5) & 8) != 0)
        {
          _columnStyleDelegate = [(UISplitViewControllerPanelImpl *)self _columnStyleDelegate];
          v27 = objc_loadWeakRetained(&self->_svc);
          if (isSupplementaryVisible)
          {
            v28 = 1;
          }

          else
          {
            v28 = 2;
          }

          v29 = [_columnStyleDelegate _splitViewController:v27 overrideProposedPermission:v28 forInteractivePresentationGesture:v8 inView:v20];

          if (v29)
          {
            LOBYTE(isSupplementaryVisible) = v29 == 1;
          }
        }
      }

      goto LABEL_14;
    }
  }

  LOBYTE(isSupplementaryVisible) = 0;
LABEL_15:

  return isSupplementaryVisible;
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

- (BOOL)_allowMoveToSecondaryOnlyGetIsInForcedOverlayFromGestureOrRestrictedWidth:(BOOL *)width
{
  flags = self->_flags;
  if ((*&flags & 0x20000) == 0 && (*&flags & 0xC0000) != 0x80000)
  {
LABEL_5:
    v10 = [(UISplitViewControllerPanelImpl *)self defaultDisplayModeForSplitBehavior:[(UISplitViewControllerPanelImpl *)self splitBehavior]];
    v7 = 0;
    result = v10 == 1;
LABEL_6:
    if (!width)
    {
      return result;
    }

    goto LABEL_7;
  }

  userGeneratedDisplayMode = [(UISplitViewControllerPanelImpl *)self userGeneratedDisplayMode];
  v7 = 1;
  if (userGeneratedDisplayMode != 3)
  {
    v8 = userGeneratedDisplayMode;
    result = 1;
    if (v8 == 5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  result = 1;
  if (!width)
  {
    return result;
  }

LABEL_7:
  *width = v7;
  return result;
}

- (BOOL)_scrollViewPreventsGestureForHitView:(id)view
{
  _scroller = [view _scroller];
  if (!_scroller)
  {
    return 0;
  }

  v5 = _scroller;
  while (([v5 isDecelerating] & 1) == 0)
  {
    _currentlyAbuttedContentEdges = [v5 _currentlyAbuttedContentEdges];
    v7 = [(UISplitViewControllerPanelImpl *)self _layoutPrimaryOnRight]? 8 : 2;
    if ((v7 & _currentlyAbuttedContentEdges) == 0)
    {
      break;
    }

    superview = [v5 superview];
    _scroller2 = [superview _scroller];

    v5 = _scroller2;
    if (!_scroller2)
    {
      v10 = 0;
      goto LABEL_11;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  if (![(UISplitViewControllerPanelImpl *)self style])
  {
    v7 = [(UISplitViewControllerPanelImpl *)self _unspecifiedStyleGestureRecognizerShouldBegin:beginCopy];
    goto LABEL_7;
  }

  _menuGestureRecognizer = [(UISplitViewControllerPanelImpl *)self _menuGestureRecognizer];

  if (_menuGestureRecognizer == beginCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    LOBYTE(panelController) = [WeakRetained displayMode] == 1;
    goto LABEL_9;
  }

  _sidebarArrowButtonRecognizer = [(UISplitViewControllerPanelImpl *)self _sidebarArrowButtonRecognizer];

  if (_sidebarArrowButtonRecognizer == beginCopy)
  {
    LOBYTE(panelController) = 1;
    goto LABEL_13;
  }

  if (![(UISplitViewControllerPanelImpl *)self _shouldUseFluidSidebarGestures])
  {
    _presentationGestureRecognizer = [(UISplitViewControllerPanelImpl *)self _presentationGestureRecognizer];

    if (_presentationGestureRecognizer != beginCopy)
    {
      LOBYTE(panelController) = 0;
      goto LABEL_13;
    }

    WeakRetained = [beginCopy view];
    [beginCopy translationInView:WeakRetained];
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

    _isPrimaryShown = [(UISplitViewControllerPanelImpl *)self _isPrimaryShown];
    panelController = [(UISplitViewControllerPanelImpl *)self panelController];
    currentState = [panelController currentState];
    isSupplementaryVisible = [currentState isSupplementaryVisible];

    LOBYTE(panelController) = 0;
    if (!v15 && !_isPrimaryShown)
    {
      [beginCopy locationInView:WeakRetained];
      v19 = [WeakRetained hitTest:0 withEvent:?];
      LODWORD(panelController) = ![(UISplitViewControllerPanelImpl *)self _scrollViewPreventsGestureForHitView:v19];
    }

    if ((v15 & (_isPrimaryShown | isSupplementaryVisible)) != 1)
    {
      goto LABEL_9;
    }

    if ([(UISplitViewControllerPanelImpl *)self _allowMoveToSecondaryOnlyGetIsInForcedOverlayFromGestureOrRestrictedWidth:0]|| (_isPrimaryShown & isSupplementaryVisible) != 0)
    {
      if (isSupplementaryVisible)
      {
        panelController2 = [(UISplitViewControllerPanelImpl *)self panelController];
        supplementaryViewController = [panelController2 supplementaryViewController];
        view = [supplementaryViewController view];
      }

      else
      {
        panelController2 = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
        view = [panelController2 view];
      }

      if (view)
      {
        [beginCopy locationInView:WeakRetained];
        v23 = [WeakRetained hitTest:0 withEvent:?];
        v24 = v23;
        if (v23)
        {
          LODWORD(panelController) = [v23 isDescendantOfView:view] ^ 1;
        }

        else
        {
          LOBYTE(panelController) = 0;
        }
      }

      else
      {
        LOBYTE(panelController) = 1;
      }
    }

    else
    {
LABEL_25:
      LOBYTE(panelController) = 0;
    }

LABEL_9:

    goto LABEL_13;
  }

  v7 = [(UISplitViewControllerPanelImpl *)self _fluidGestureRecognizerShouldBegin:beginCopy];
LABEL_7:
  LOBYTE(panelController) = v7;
LABEL_13:

  return panelController;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  recognizerCopy = recognizer;
  if ([(UISplitViewControllerPanelImpl *)self _shouldUseFluidSidebarGestures])
  {
    _fluidOpenSidebarPresentationGestureRecognizer = [(UISplitViewControllerPanelImpl *)self _fluidOpenSidebarPresentationGestureRecognizer];

    if (_fluidOpenSidebarPresentationGestureRecognizer == recognizerCopy)
    {
    }

    else
    {
      _fluidSidebarPresentationGestureRecognizer = [(UISplitViewControllerPanelImpl *)self _fluidSidebarPresentationGestureRecognizer];

      if (!_fluidSidebarPresentationGestureRecognizer)
      {
        goto LABEL_6;
      }
    }

LABEL_8:
    v11 = [touchCopy _isPointerTouch] ^ 1;
    goto LABEL_9;
  }

  _presentationGestureRecognizer = [(UISplitViewControllerPanelImpl *)self _presentationGestureRecognizer];

  if (_presentationGestureRecognizer == recognizerCopy)
  {
    goto LABEL_8;
  }

LABEL_6:
  LOBYTE(v11) = 1;
LABEL_9:

  return v11;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  if ([(UISplitViewControllerPanelImpl *)self _shouldUseFluidSidebarGestures])
  {
    _fluidSidebarPresentationGestureRecognizer = [(UISplitViewControllerPanelImpl *)self _fluidSidebarPresentationGestureRecognizer];
    _fluidOpenSidebarPresentationGestureRecognizer = [(UISplitViewControllerPanelImpl *)self _fluidOpenSidebarPresentationGestureRecognizer];
    v10 = _fluidOpenSidebarPresentationGestureRecognizer;
    if (_fluidSidebarPresentationGestureRecognizer != recognizerCopy || _fluidOpenSidebarPresentationGestureRecognizer == gestureRecognizerCopy)
    {
      v11 = 0;
      if (_fluidOpenSidebarPresentationGestureRecognizer != recognizerCopy || _fluidSidebarPresentationGestureRecognizer == gestureRecognizerCopy)
      {
LABEL_24:

        goto LABEL_25;
      }
    }

    v12 = [gestureRecognizerCopy _isGestureType:8];

    if (v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    _fluidSidebarPresentationGestureRecognizer = [(UISplitViewControllerPanelImpl *)self _presentationGestureRecognizer];
    if (_fluidSidebarPresentationGestureRecognizer != recognizerCopy)
    {
      goto LABEL_11;
    }

    v13 = [gestureRecognizerCopy _isGestureType:8];

    if (v13)
    {
LABEL_7:
      _fluidSidebarPresentationGestureRecognizer = gestureRecognizerCopy;
      if ([_fluidSidebarPresentationGestureRecognizer _failsPastHysteresisWithoutMinTouches])
      {
        if ([_fluidSidebarPresentationGestureRecognizer minimumNumberOfTouches] < 2)
        {
          v11 = 1;
LABEL_25:

          goto LABEL_26;
        }
      }

      else
      {
        v14 = recognizerCopy;
        v15 = _fluidSidebarPresentationGestureRecognizer;
        minimumNumberOfTouches = [v14 minimumNumberOfTouches];
        maximumNumberOfTouches = [v14 maximumNumberOfTouches];
        minimumNumberOfTouches2 = [v14 minimumNumberOfTouches];

        v19 = maximumNumberOfTouches - minimumNumberOfTouches2;
        minimumNumberOfTouches3 = [v15 minimumNumberOfTouches];
        maximumNumberOfTouches2 = [v15 maximumNumberOfTouches];
        minimumNumberOfTouches4 = [v15 minimumNumberOfTouches];

        v31.length = v19 + 1;
        v32.length = maximumNumberOfTouches2 - minimumNumberOfTouches4 + 1;
        v31.location = minimumNumberOfTouches;
        v32.location = minimumNumberOfTouches3;
        if (NSIntersectionRange(v31, v32).length)
        {
          v11 = 1;
          _fluidSidebarPresentationGestureRecognizer = v15;
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
          panelController = [(UISplitViewControllerPanelImpl *)self panelController];
          currentState = [panelController currentState];
          if ([currentState isSupplementaryVisible])
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
        navigationController = [v27 navigationController];
        interactivePopGestureRecognizer = [navigationController interactivePopGestureRecognizer];
        v11 = interactivePopGestureRecognizer == _fluidSidebarPresentationGestureRecognizer;

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

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  name = [gestureRecognizerCopy name];
  v9 = [name isEqualToString:@"com.apple.UIKit.UIWindowDraggingPan"];

  if ([(UISplitViewControllerPanelImpl *)self _shouldUseFluidSidebarGestures])
  {
    _fluidSidebarPresentationGestureRecognizer = [(UISplitViewControllerPanelImpl *)self _fluidSidebarPresentationGestureRecognizer];
    _fluidOpenSidebarPresentationGestureRecognizer = [(UISplitViewControllerPanelImpl *)self _fluidOpenSidebarPresentationGestureRecognizer];
    v12 = _fluidOpenSidebarPresentationGestureRecognizer;
    if (_fluidSidebarPresentationGestureRecognizer != recognizerCopy && _fluidOpenSidebarPresentationGestureRecognizer != recognizerCopy)
    {

LABEL_6:
      _canScrollX = 0;
      goto LABEL_7;
    }

    v16 = [gestureRecognizerCopy _isGestureType:10];
    if ((v16 & 1) == 0 && v12 != gestureRecognizerCopy && _fluidSidebarPresentationGestureRecognizer != gestureRecognizerCopy)
    {
      v17 = [gestureRecognizerCopy _isGestureType:8];
      v18 = v17;
      if (_fluidSidebarPresentationGestureRecognizer == recognizerCopy)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0;
      }

      _canScrollX = v19 & v9;

      if ((_canScrollX & 1) != 0 || !v18)
      {
        goto LABEL_7;
      }

LABEL_20:
      v21 = gestureRecognizerCopy;
      v22 = [recognizerCopy _activeEventOfType:10];

      if (v22)
      {
        if (([v21 allowedScrollTypesMask] & 2) != 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && ([v21 view], v23 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v23, (isKindOfClass))
          {
            view = [v21 view];
            _canScrollX = [view _canScrollX];
          }

          else
          {
            _canScrollX = 1;
          }

          goto LABEL_33;
        }
      }

      else if ([v21 _failsPastHysteresisWithoutMinTouches])
      {
        _canScrollX = [v21 minimumNumberOfTouches] > 1;
LABEL_33:

        goto LABEL_7;
      }

      _canScrollX = 0;
      goto LABEL_33;
    }

    if ((v16 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    _presentationGestureRecognizer = [(UISplitViewControllerPanelImpl *)self _presentationGestureRecognizer];

    if (_presentationGestureRecognizer != recognizerCopy)
    {
      goto LABEL_6;
    }

    if (([gestureRecognizerCopy _isGestureType:10] & 1) == 0)
    {
      v20 = [gestureRecognizerCopy _isGestureType:8];
      _canScrollX = v20 & v9;
      if ((v20 & v9 & 1) != 0 || !v20)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }
  }

  view2 = [recognizerCopy view];
  view3 = [gestureRecognizerCopy view];
  [view2 convertPoint:view3 toView:{10.0, 10.0}];
  v29 = v28;

  view4 = [recognizerCopy view];
  view5 = [gestureRecognizerCopy view];
  [view4 convertPoint:view5 toView:{20.0, 10.0}];
  v33 = v32;

  direction = [gestureRecognizerCopy direction];
  v35 = v29 < v33;
  if (v29 > v33)
  {
    v35 = 1;
  }

  _canScrollX = direction & v35;
LABEL_7:

  return _canScrollX;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  _sidebarArrowButtonRecognizer = [(UISplitViewControllerPanelImpl *)self _sidebarArrowButtonRecognizer];

  return _sidebarArrowButtonRecognizer == recognizerCopy;
}

- (void)sendColumnShowHideNotificationsForNewState:(id)state newDisplayMode:(int64_t)mode oldDisplayMode:(int64_t)displayMode
{
  stateCopy = state;
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (!style)
  {
    goto LABEL_43;
  }

  v9 = style;
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  currentState = [panelController currentState];

  _collapsedState = [currentState _collapsedState];
  perColumnViewControllers = self->_perColumnViewControllers;
  if (!_collapsedState)
  {
    v21 = [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
    viewController = [v21 viewController];
    if ([viewController _appearState] == 2)
    {
      IsVisibleForDisplayMode = _UISplitViewControllerColumnIsVisibleForDisplayMode(v9, 0, displayMode);
    }

    else
    {
      IsVisibleForDisplayMode = 0;
    }

    v26 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
    viewController2 = [v26 viewController];
    if ([viewController2 _appearState] == 2)
    {
      v18 = _UISplitViewControllerColumnIsVisibleForDisplayMode(v9, 1, displayMode);
    }

    else
    {
      v18 = 0;
    }

    v28 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
    viewController3 = [v28 viewController];
    if ([viewController3 _appearState] == 2)
    {
      v19 = _UISplitViewControllerColumnIsVisibleForDisplayMode(v9, 2, displayMode);
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_19;
  }

  v14 = [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30238];
  viewController4 = [v14 viewController];
  _appearState = [viewController4 _appearState];

  if (_appearState != 2)
  {
    v23 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
    viewController5 = [v23 viewController];
    _appearState2 = [viewController5 _appearState];

    if (_appearState2 == 2)
    {
      IsVisibleForDisplayMode = 0;
      v18 = 0;
      v19 = 1;
LABEL_20:
      v20 = 1;
      goto LABEL_21;
    }

    v30 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
    viewController6 = [v30 viewController];
    _appearState3 = [viewController6 _appearState];

    if (_appearState3 == 2)
    {
      IsVisibleForDisplayMode = 0;
      v19 = 0;
      v18 = 1;
      goto LABEL_20;
    }

    v28 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
    viewController3 = [v28 viewController];
    v18 = 0;
    v19 = 0;
    IsVisibleForDisplayMode = [viewController3 _appearState] == 2;
LABEL_19:

    goto LABEL_20;
  }

  IsVisibleForDisplayMode = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
LABEL_21:
  if (![stateCopy _collapsedState] || objc_msgSend(stateCopy, "_collapsedState") == 3)
  {
    v33 = _UISplitViewControllerColumnIsVisibleForDisplayMode(v9, 0, mode);
    v34 = _UISplitViewControllerColumnIsVisibleForDisplayMode(v9, 1, mode);
    v35 = _UISplitViewControllerColumnIsVisibleForDisplayMode(v9, 2, mode);
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

- (void)sendWillShowColumn:(int64_t)column
{
  flags = self->_flags;
  if ((*&flags & 0x1400000000) == 0x400000000)
  {
    self->_flags = (*&flags | 0x10000000);
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v7 = self->_flags;
    _columnStyleDelegate = [(UISplitViewControllerPanelImpl *)self _columnStyleDelegate];
    v9 = _columnStyleDelegate;
    if ((*&v7 & 0x2000000000) != 0)
    {
      [_columnStyleDelegate _splitViewController:WeakRetained willShowColumn:column];
    }

    else
    {
      [_columnStyleDelegate splitViewController:WeakRetained willShowColumn:column];
    }

    *&self->_flags &= ~0x10000000uLL;
  }
}

- (void)sendWillHideColumn:(int64_t)column
{
  flags = self->_flags;
  if ((*&flags & 0x1800000000) == 0x800000000)
  {
    self->_flags = (*&flags | 0x10000000);
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    v7 = self->_flags;
    _columnStyleDelegate = [(UISplitViewControllerPanelImpl *)self _columnStyleDelegate];
    v9 = _columnStyleDelegate;
    if ((*&v7 & 0x2000000000) != 0)
    {
      [_columnStyleDelegate _splitViewController:WeakRetained willHideColumn:column];
    }

    else
    {
      [_columnStyleDelegate splitViewController:WeakRetained willHideColumn:column];
    }

    *&self->_flags &= ~0x10000000uLL;
  }
}

- (id)_currentPrimaryChildViewController
{
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  if ([(UISplitViewControllerPanelImpl *)self _isPrimaryLeading])
  {
    [panelController leadingViewController];
  }

  else
  {
    [panelController trailingViewController];
  }
  v4 = ;

  return v4;
}

- (id)_currentSupplementaryChildViewController
{
  if (![(UIPanelController *)self->_panelController supportsColumnStyle])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:7636 description:@"Incorrect panelController for UISplitViewControllerStyleTripleColumn."];
  }

  panelController = self->_panelController;

  return [(UIPanelController *)panelController supplementaryViewController];
}

- (void)_setPresentationGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if ([(UISplitViewControllerPanelImpl *)self _shouldUseFluidSidebarGestures])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:7647 description:@"Wrong accessor for pre-iOS14 sidebar gesture"];
  }

  sidebarPanGestureRecognizer = self->_sidebarPanGestureRecognizer;
  self->_sidebarPanGestureRecognizer = recognizerCopy;
}

- (UIPanGestureRecognizer)_presentationGestureRecognizer
{
  if ([(UISplitViewControllerPanelImpl *)self _shouldUseFluidSidebarGestures])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:7653 description:@"Wrong accessor for pre-iOS14 sidebar gesture"];
  }

  sidebarPanGestureRecognizer = self->_sidebarPanGestureRecognizer;

  return sidebarPanGestureRecognizer;
}

- (void)_setFluidSidebarPresentationGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  style = [(UISplitViewControllerPanelImpl *)self style];
  if ((style - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = style;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = _UISplitViewControllerStyleDescription(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:7659 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v10}];
  }

  if (![(UISplitViewControllerPanelImpl *)self _shouldUseFluidSidebarGestures])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:7660 description:@"Wrong accessor for fluid sidebar gesture"];
  }

  sidebarPanGestureRecognizer = self->_sidebarPanGestureRecognizer;
  self->_sidebarPanGestureRecognizer = recognizerCopy;
}

- (UIPanGestureRecognizer)_fluidSidebarPresentationGestureRecognizer
{
  style = [(UISplitViewControllerPanelImpl *)self style];
  if ((style - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = style;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = _UISplitViewControllerStyleDescription(v7);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:7666 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v9}];
  }

  if (![(UISplitViewControllerPanelImpl *)self _shouldUseFluidSidebarGestures])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:7667 description:@"Wrong accessor for fluid sidebar gesture"];
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
  presentsWithGesture = [WeakRetained presentsWithGesture];
  _fluidSidebarPresentationGestureRecognizer = [(UISplitViewControllerPanelImpl *)self _fluidSidebarPresentationGestureRecognizer];
  v5 = _fluidSidebarPresentationGestureRecognizer;
  if (presentsWithGesture)
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
      view = [v8 view];

      [view addGestureRecognizer:v6];
      [view addGestureRecognizer:v7];
    }

    _effectivePrimaryRectEdge = [(UISplitViewControllerPanelImpl *)self _effectivePrimaryRectEdge];
    _fluidOpenSidebarPresentationGestureRecognizer = [(UISplitViewControllerPanelImpl *)self _fluidOpenSidebarPresentationGestureRecognizer];
    [_fluidOpenSidebarPresentationGestureRecognizer setEdges:_effectivePrimaryRectEdge];
  }

  else
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    v12 = objc_loadWeakRetained(&self->_svc);
    _fluidOpenSidebarPresentationGestureRecognizer = [v12 view];

    _fluidOpenSidebarPresentationGestureRecognizer2 = [(UISplitViewControllerPanelImpl *)self _fluidOpenSidebarPresentationGestureRecognizer];
    [_fluidOpenSidebarPresentationGestureRecognizer removeGestureRecognizer:_fluidOpenSidebarPresentationGestureRecognizer2];

    _fluidSidebarPresentationGestureRecognizer2 = [(UISplitViewControllerPanelImpl *)self _fluidSidebarPresentationGestureRecognizer];
    [_fluidOpenSidebarPresentationGestureRecognizer removeGestureRecognizer:_fluidSidebarPresentationGestureRecognizer2];

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
    presentsWithGesture = [WeakRetained presentsWithGesture];
    _presentationGestureRecognizer = [(UISplitViewControllerPanelImpl *)self _presentationGestureRecognizer];
    v5 = _presentationGestureRecognizer;
    if (presentsWithGesture)
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
        view = [WeakRetained view];
        [view addGestureRecognizer:v6];
      }

      panelController = [(UISplitViewControllerPanelImpl *)self panelController];
      currentState = [panelController currentState];

      if ([(UISplitViewControllerPanelImpl *)self style])
      {
        v10 = 1;
      }

      else
      {
        if ([(UISplitViewControllerPanelImpl *)self _isPrimaryLeading])
        {
          _leadingEntirelyOverlapsMain = [currentState _leadingEntirelyOverlapsMain];
        }

        else
        {
          _leadingEntirelyOverlapsMain = [currentState _trailingEntirelyOverlapsMain];
        }

        v10 = _leadingEntirelyOverlapsMain;
      }

      _presentationGestureRecognizer2 = [(UISplitViewControllerPanelImpl *)self _presentationGestureRecognizer];
      [_presentationGestureRecognizer2 setEnabled:v10];
    }

    else
    {

      if (v5)
      {
        view2 = [WeakRetained view];
        _presentationGestureRecognizer3 = [(UISplitViewControllerPanelImpl *)self _presentationGestureRecognizer];
        [view2 removeGestureRecognizer:_presentationGestureRecognizer3];

        [(UISplitViewControllerPanelImpl *)self _setPresentationGestureRecognizer:0];
      }
    }
  }
}

- (void)_unspecifiedStylePresentationGestureRecognizerChanged:(id)changed
{
  changedCopy = changed;
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style)
  {
    v16 = style;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = _UISplitViewControllerStyleDescription(v16);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:7756 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v18}];
  }

  state = [changedCopy state];
  if ((state - 3) < 2)
  {
    self->_presentationGestureDirection = 0.0;
  }

  else if ((state - 1) <= 1)
  {
    view = [changedCopy view];
    [changedCopy velocityInView:view];
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
        [changedCopy setTranslation:view inView:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
        v11 = v19;
      }

      self->_presentationGestureDirection = v11;
      _isPrimaryShown = [(UISplitViewControllerPanelImpl *)self _isPrimaryShown];
      _layoutPrimaryOnRight = [(UISplitViewControllerPanelImpl *)self _layoutPrimaryOnRight];
      v14 = -1.0;
      if (!_layoutPrimaryOnRight)
      {
        v14 = 1.0;
      }

      if (((_isPrimaryShown ^ (self->_presentationGestureDirection != v14)) & 1) == 0)
      {
        [changedCopy translationInView:view];
        if (fabs(v15) >= 40.0)
        {
          [(UISplitViewControllerPanelImpl *)self _unspecifiedStyleSetPrimaryShownFromGesture:!_isPrimaryShown];
        }
      }
    }
  }
}

- (void)_notifyFluidPresentationGestureWillBegin
{
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  [panelController setPresentationGestureActive:1];

  flags = self->_flags;
  if ((*&flags & 0x4000000000) != 0)
  {
    self->_flags = (*&flags | 0x10000000);
    _columnStyleDelegate = [(UISplitViewControllerPanelImpl *)self _columnStyleDelegate];
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    [_columnStyleDelegate splitViewControllerInteractivePresentationGestureWillBegin:WeakRetained];
  }

  else
  {
    if ((*&flags & 0x8000000000) == 0)
    {
      return;
    }

    self->_flags = (*&flags | 0x10000000);
    _columnStyleDelegate = [(UISplitViewControllerPanelImpl *)self _columnStyleDelegate];
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    [_columnStyleDelegate _splitViewControllerInteractiveSidebarGestureWillBegin:WeakRetained];
  }

  *&self->_flags &= ~0x10000000uLL;
}

- (void)_notifyFluidPresentationGestureDidEnd
{
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  [panelController setPresentationGestureActive:0];

  flags = self->_flags;
  if ((*&flags & 0x10000000000) != 0)
  {
    self->_flags = (*&flags | 0x10000000);
    _columnStyleDelegate = [(UISplitViewControllerPanelImpl *)self _columnStyleDelegate];
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    [_columnStyleDelegate splitViewControllerInteractivePresentationGestureDidEnd:WeakRetained];
  }

  else
  {
    if ((*&flags & 0x20000000000) == 0)
    {
      return;
    }

    self->_flags = (*&flags | 0x10000000);
    _columnStyleDelegate = [(UISplitViewControllerPanelImpl *)self _columnStyleDelegate];
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    [_columnStyleDelegate _splitViewControllerInteractiveSidebarGestureDidEnd:WeakRetained];
  }

  *&self->_flags &= ~0x10000000uLL;
}

- (void)_fluidPresentationGestureRecognizerChanged:(id)changed
{
  changedCopy = changed;
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v79 = _UISplitViewControllerStyleDescription(style);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:7826 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v79}];
  }

  [(NSMutableArray *)self->_hyperpoints removeAllObjects];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  view = [WeakRetained view];
  [view bounds];
  MaxX = CGRectGetMaxX(v95);

  _layoutPrimaryOnRight = [(UISplitViewControllerPanelImpl *)self _layoutPrimaryOnRight];
  if (_layoutPrimaryOnRight)
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

  if (_layoutPrimaryOnRight)
  {
    v13 = -1.0;
  }

  else
  {
    v13 = 1.0;
  }

  _isPrimaryLeading = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  possibleStates = [panelController possibleStates];
  v17 = minNonzeroPrimaryWidthInStates(possibleStates, _isPrimaryLeading);

  if (style == 2)
  {
    panelController2 = [(UISplitViewControllerPanelImpl *)self panelController];
    possibleStates2 = [panelController2 possibleStates];
    v10 = v10 + v13 * minNonzeroSupplementaryWidthInStateWithPrimaryWidthGetMatchingState(possibleStates2, _isPrimaryLeading, 0, v17);

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
  if (_layoutPrimaryOnRight)
  {
    lastObject = [(NSMutableArray *)hyperpoints lastObject];
    [(NSMutableArray *)self->_hyperpoints firstObject];
  }

  else
  {
    lastObject = [(NSMutableArray *)hyperpoints firstObject];
    [(NSMutableArray *)self->_hyperpoints lastObject];
  }
  v28 = ;
  v29 = changedCopy;
  hyperrectangle = self->_hyperrectangle;
  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = __77__UISplitViewControllerPanelImpl__fluidPresentationGestureRecognizerChanged___block_invoke_3;
  v90[3] = &unk_1E70F4AC0;
  v31 = lastObject;
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
    splitBehavior = [(UISplitViewControllerPanelImpl *)self splitBehavior];

    if (splitBehavior == 1)
    {
      lastObject2 = [v5 lastObject];
      integerValue = [lastObject2 integerValue];

      displayMode = [(UISplitViewControllerPanelImpl *)self displayMode];
      v39 = 1;
      if (integerValue == 1)
      {
        v39 = 2;
      }

      if (integerValue == 2)
      {
        v40 = 4;
      }

      else
      {
        v40 = v39;
      }

      [UISplitViewControllerPanelImpl _updateSplitBehaviorOverridesForTransitionFromDisplayMode:displayMode toDisplayMode:v40 shouldResizeIfNecessary:?];
    }
  }

  else
  {
  }

  state = [changedCopy state];
  if ((state - 3) < 2)
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

    panelController3 = [(UISplitViewControllerPanelImpl *)self panelController];
    interactiveStateRequest = [panelController3 interactiveStateRequest];
    [interactiveStateRequest rubberBandInset];
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
    integerValue2 = [v70 integerValue];

    [(UISplitViewControllerPanelImpl *)self _setNumberOfSidebarColumnsVisibleFromGesture:integerValue2 withVelocity:v69];
    panelController4 = [(UISplitViewControllerPanelImpl *)self panelController];
    LOBYTE(integerValue2) = [panelController4 isAnimating];

    if ((integerValue2 & 1) == 0)
    {
      _alwaysHideSidebarToggleButton = [(UISplitViewControllerPanelImpl *)self _alwaysHideSidebarToggleButton];
      if (style == 2 && !_alwaysHideSidebarToggleButton)
      {
        v74 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];

        if (v74)
        {
          v75 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
          navigationController = [v75 navigationController];
          navigationBar = [navigationController navigationBar];

          [navigationBar _endAnimatingNavItemContentLayoutGuideForStaticButtonVisibilityChange];
          [navigationBar _setShouldFadeStaticNavBarButton:0];
        }
      }

      panelController5 = [(UISplitViewControllerPanelImpl *)self panelController];
      [panelController5 setNavigationBarForContentLayoutGuideAnimation:0];
      goto LABEL_66;
    }
  }

  else
  {
    if (state == 2)
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
      _constrainedPoint = [(_UIHyperInteractor *)self->_interactor _constrainedPoint];
      v55 = *_constrainedPoint;
      if (_layoutPrimaryOnRight)
      {
        v55 = MaxX - *_constrainedPoint;
      }

      [(UISplitViewControllerPanelImpl *)self _setInteractiveSidebarWidth:v55];

      panelController5 = v85;
LABEL_66:

      goto LABEL_67;
    }

    if (state == 1)
    {
      _UIUpdateRequestRegistryAddRecord(&mainRegistry, _fluidPresentationGestureRecognizerChanged__updateRequest, 0x10002Eu);
      [(UISplitViewControllerPanelImpl *)self _notifyFluidPresentationGestureWillBegin];
      [(_UIHyperInteractor *)self->_interactor _setRegion:self->_hyperrectangle];
      panelController6 = [(UISplitViewControllerPanelImpl *)self panelController];
      [panelController6 stopAnimations];

      _alwaysHideSidebarToggleButton2 = [(UISplitViewControllerPanelImpl *)self _alwaysHideSidebarToggleButton];
      if (style == 2 && !_alwaysHideSidebarToggleButton2)
      {
        v44 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];

        if (v44)
        {
          v45 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
          navigationController2 = [v45 navigationController];
          navigationBar2 = [navigationController2 navigationBar];

          _staticNavBarButtonItem = [navigationBar2 _staticNavBarButtonItem];

          if (!_staticNavBarButtonItem)
          {
            [(UISplitViewControllerPanelImpl *)self _updateDisplayModeButtonItemForDisplayMode:[(UISplitViewControllerPanelImpl *)self allowedDisplayModeForCurrentSplitBehaviorGivenDisplayMode:3]];
          }

          if (![(UIBarButtonItem *)self->_sidebarToggleButtonItem isHidden]|| [(_UIFloatableBarButtonItem *)self->_sidebarToggleButtonItem _isFloatable]|| [(UISplitViewControllerPanelImpl *)self displayMode]== 6)
          {
            [navigationBar2 _setShouldFadeStaticNavBarButton:{-[_UIFloatableBarButtonItem _isFloatable](self->_sidebarToggleButtonItem, "_isFloatable") ^ 1}];
            panelController7 = [(UISplitViewControllerPanelImpl *)self panelController];
            [panelController7 setNavigationBarForContentLayoutGuideAnimation:navigationBar2];
          }
        }
      }

      v50 = self->_interactor;
      v86[0] = MEMORY[0x1E69E9820];
      v86[1] = 3221225472;
      v86[2] = __77__UISplitViewControllerPanelImpl__fluidPresentationGestureRecognizerChanged___block_invoke_5;
      v86[3] = &unk_1E7103D58;
      v86[4] = self;
      v87 = !_layoutPrimaryOnRight;
      *&v86[5] = v17;
      *&v86[6] = MaxX;
      [(_UIHyperInteractor *)v50 _mutateUnconstrainedPoint:v86];
      v29 = changedCopy;
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

- (void)_presentationGestureRecognizerChanged:(id)changed
{
  changedCopy = changed;
  if (![(UISplitViewControllerPanelImpl *)self style])
  {
    [(UISplitViewControllerPanelImpl *)self _unspecifiedStylePresentationGestureRecognizerChanged:changedCopy];
    goto LABEL_33;
  }

  if (![(UISplitViewControllerPanelImpl *)self _shouldUseFluidSidebarGestures])
  {
    state = [changedCopy state];
    if ((state - 3) < 2)
    {
      *&self->_flags &= 0xFFFFFFFFFFFE7FFFLL;
      self->_presentationGestureDirection = 0.0;
      goto LABEL_33;
    }

    v5 = (state - 1) > 1;
    v6 = changedCopy;
    if (v5)
    {
      goto LABEL_34;
    }

    view = [changedCopy view];
    [changedCopy velocityInView:view];
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
      [changedCopy setTranslation:view inView:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
      v9.i64[0] = v23;
    }

    *&self->_presentationGestureDirection = v9.i64[0];
    _isPrimaryShown = [(UISplitViewControllerPanelImpl *)self _isPrimaryShown];
    supportsColumnStyle = [(UIPanelController *)self->_panelController supportsColumnStyle];
    if (supportsColumnStyle)
    {
      currentState = [(UIPanelController *)self->_panelController currentState];
      isSupplementaryVisible = [currentState isSupplementaryVisible];
    }

    else
    {
      isSupplementaryVisible = 0;
    }

    _layoutPrimaryOnRight = [(UISplitViewControllerPanelImpl *)self _layoutPrimaryOnRight];
    v16 = 1.0;
    if (_layoutPrimaryOnRight)
    {
      v16 = -1.0;
    }

    presentationGestureDirection = self->_presentationGestureDirection;
    v18 = v16 == presentationGestureDirection;
    if ((v18 & _isPrimaryShown) == 1)
    {
      v18 = supportsColumnStyle & (isSupplementaryVisible ^ 1u);
    }

    if (v16 == presentationGestureDirection)
    {
      v19 = 0;
    }

    else
    {
      v19 = _isPrimaryShown | isSupplementaryVisible;
    }

    if (((v18 | v19) & 1) == 0)
    {
      goto LABEL_32;
    }

    [changedCopy translationInView:view];
    if (fabs(v20) < 40.0)
    {
      goto LABEL_32;
    }

    if (supportsColumnStyle)
    {
      flags = self->_flags;
      if ((*&flags & 0x18000) != 0)
      {
        goto LABEL_32;
      }

      if (!(isSupplementaryVisible & 1 | ((v18 & 1) == 0)))
      {
        v22 = 0x8000;
        goto LABEL_30;
      }

      if (v19 & _isPrimaryShown)
      {
        v22 = 0x10000;
LABEL_30:
        self->_flags = (v22 | *&flags);
      }
    }

    [(UISplitViewControllerPanelImpl *)self _setPrimaryShownFromGesture:v18 hideAll:0];
    goto LABEL_32;
  }

  [(UISplitViewControllerPanelImpl *)self _fluidPresentationGestureRecognizerChanged:changedCopy];
LABEL_33:
  v6 = changedCopy;
LABEL_34:
}

- (BOOL)_isPrimaryShown
{
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  currentState = [panelController currentState];

  if ([(UISplitViewControllerPanelImpl *)self _isPrimaryLeading])
  {
    isLeadingVisible = [currentState isLeadingVisible];
  }

  else
  {
    isLeadingVisible = [currentState isTrailingVisible];
  }

  v6 = isLeadingVisible;

  return v6;
}

- (void)_setInteractiveSidebarWidth:(double)width
{
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v30 = _UISplitViewControllerStyleDescription(style);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:8087 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v30}];
  }

  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  currentState = [panelController currentState];
  stateRequest = [currentState stateRequest];

  _isPrimaryLeading = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
  panelController2 = [(UISplitViewControllerPanelImpl *)self panelController];
  possibleStates = [panelController2 possibleStates];

  v13 = minNonzeroPrimaryWidthInStates(possibleStates, _isPrimaryLeading);
  v14 = v13;
  if (style == 2)
  {
    v31 = 0;
    MatchingState = minNonzeroSupplementaryWidthInStateWithPrimaryWidthGetMatchingState(possibleStates, _isPrimaryLeading, &v31, v13);
    v16 = v31;
    if (v14 + MatchingState <= width)
    {
      widthCopy = v14 + MatchingState;
    }

    else
    {
      widthCopy = width;
    }

    v18 = width - (v14 + MatchingState);
    if (widthCopy >= MatchingState)
    {
      v19 = MatchingState;
    }

    else
    {
      v19 = widthCopy;
    }

    [stateRequest setSupplementaryWidth:v19];
    v20 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
    widthCopy2 = 0.0;
    if (v20)
    {
      [stateRequest supplementaryWidth];
      widthCopy2 = widthCopy - v22;
    }

    v23 = fmax(v18, 0.0);
  }

  else
  {
    v16 = 0;
    if (v13 <= width)
    {
      widthCopy2 = v13;
    }

    else
    {
      widthCopy2 = width;
    }

    v23 = fmax(width - v13, 0.0);
  }

  if (!_isPrimaryLeading)
  {
    [stateRequest setTrailingWidth:widthCopy2];
    if (!v16)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  [stateRequest setLeadingWidth:widthCopy2];
  if (v16)
  {
LABEL_21:
    [v16 mainWidth];
    [stateRequest setMainWidth:?];
  }

LABEL_22:
  [stateRequest setRubberBandInset:v23];
  panelController3 = [(UISplitViewControllerPanelImpl *)self panelController];
  currentState2 = [panelController3 currentState];
  stateRequest2 = [currentState2 stateRequest];
  v27 = [stateRequest isEqual:stateRequest2];

  if ((v27 & 1) == 0)
  {
    panelController4 = [(UISplitViewControllerPanelImpl *)self panelController];
    [panelController4 setInteractiveStateRequest:stateRequest];
  }
}

- (void)_unspecifiedStyleSetPrimaryShownFromGesture:(BOOL)gesture
{
  gestureCopy = gesture;
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style)
  {
    v17 = style;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = _UISplitViewControllerStyleDescription(v17);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:8130 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v19}];
  }

  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  currentState = [panelController currentState];
  stateRequest = [currentState stateRequest];

  _isPrimaryLeading = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
  v10 = _isPrimaryLeading;
  if (gestureCopy)
  {
    panelController2 = [(UISplitViewControllerPanelImpl *)self panelController];
    possibleStates = [panelController2 possibleStates];
    v13 = minNonzeroPrimaryWidthInStates(possibleStates, v10);

    v14 = stateRequest;
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
    if (!_isPrimaryLeading)
    {
      v14 = stateRequest;
LABEL_11:
      [v14 setTrailingWidth:v15];
      goto LABEL_12;
    }

    v14 = stateRequest;
  }

  [v14 setLeadingWidth:v15];
LABEL_12:
  panelController3 = [(UISplitViewControllerPanelImpl *)self panelController];
  [panelController3 animateToRequest:stateRequest];

  v14 = stateRequest;
LABEL_13:
}

- (void)_setNumberOfSidebarColumnsVisibleFromGesture:(unint64_t)gesture withVelocity:(double)velocity
{
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = _UISplitViewControllerStyleDescription(style);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:8160 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v27}];
  }

  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  currentState = [panelController currentState];

  stateRequest = [currentState stateRequest];
  _isPrimaryLeading = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
  panelController2 = [(UISplitViewControllerPanelImpl *)self panelController];
  possibleStates = [panelController2 possibleStates];
  v15 = minNonzeroPrimaryWidthInStates(possibleStates, _isPrimaryLeading);

  if (style == 2)
  {
    if (gesture <= 1)
    {
      v15 = 0.0;
    }

    panelController3 = [(UISplitViewControllerPanelImpl *)self panelController];
    possibleStates2 = [panelController3 possibleStates];
    v28 = 0;
    MatchingState = minNonzeroSupplementaryWidthInStateWithPrimaryWidthGetMatchingState(possibleStates2, _isPrimaryLeading, &v28, v15);
    v19 = v28;

    if (gesture)
    {
      v20 = MatchingState;
    }

    else
    {
      v20 = 0.0;
    }

    [stateRequest setSupplementaryWidth:v20];
  }

  else
  {
    v19 = 0;
    if (!gesture)
    {
      v15 = 0.0;
    }
  }

  if (!_isPrimaryLeading)
  {
    [stateRequest setTrailingWidth:v15];
    if (!v19)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  [stateRequest setLeadingWidth:v15];
  if (v19)
  {
LABEL_16:
    [v19 mainWidth];
    [stateRequest setMainWidth:?];
  }

LABEL_17:
  _allowClientAnimationCoordination = [(UISplitViewControllerPanelImpl *)self _allowClientAnimationCoordination];
  panelController4 = [(UISplitViewControllerPanelImpl *)self panelController];
  [panelController4 setAnimationRequestShouldCoordinate:_allowClientAnimationCoordination];

  panelController5 = [(UISplitViewControllerPanelImpl *)self panelController];
  [panelController5 animateToRequest:stateRequest forceOverlay:-[UISplitViewControllerPanelImpl _gestureIsForcingOverlay](self withVelocity:{"_gestureIsForcingOverlay"), velocity}];

  if (gesture == 1)
  {
    flags = self->_flags;
    if ((~*&self->_flags & 0xC0000) == 0)
    {
      p_flags = &self->_flags;
      goto LABEL_22;
    }
  }

  else if (!gesture)
  {
    p_flags = &self->_flags;
    flags = self->_flags;
LABEL_22:
    *p_flags = (*&flags & 0xFFFFFFFFFFF3FFFFLL);
  }
}

- (BOOL)_gestureIsForcingOverlay
{
  userGeneratedDisplayMode = [(UISplitViewControllerPanelImpl *)self userGeneratedDisplayMode];

  return [(UISplitViewControllerPanelImpl *)self _gestureIsForcingOverlayForDisplayMode:userGeneratedDisplayMode];
}

- (void)_setPrimaryShownFromGesture:(BOOL)gesture hideAll:(BOOL)all
{
  allCopy = all;
  gestureCopy = gesture;
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v33 = _UISplitViewControllerStyleDescription(style);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:8212 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v33}];
  }

  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  currentState = [panelController currentState];

  stateRequest = [currentState stateRequest];
  [stateRequest leadingWidth];
  if (v12 == 0.0 && ([stateRequest trailingWidth], v13 == 0.0))
  {
    [stateRequest supplementaryWidth];
    v15 = v14 == 0.0;
  }

  else
  {
    v15 = 0;
  }

  _isPrimaryLeading = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
  if (!gestureCopy)
  {
    v34 = 0;
    v20 = [(UISplitViewControllerPanelImpl *)self _allowMoveToSecondaryOnlyGetIsInForcedOverlayFromGestureOrRestrictedWidth:&v34];
    if (style == 2 && [currentState isSupplementaryVisible])
    {
      if (_isPrimaryLeading)
      {
        isLeadingVisible = [currentState isLeadingVisible];
      }

      else
      {
        isLeadingVisible = [currentState isTrailingVisible];
      }

      v22 = isLeadingVisible ^ 1;
      if (!v20)
      {
LABEL_32:
        [stateRequest supplementaryWidth];
        if (v30 > 0.0)
        {
LABEL_33:
          if (_isPrimaryLeading)
          {
            [stateRequest setLeadingWidth:0.0];
            goto LABEL_36;
          }

LABEL_35:
          [stateRequest setTrailingWidth:0.0];
        }

LABEL_36:
        panelController2 = [(UISplitViewControllerPanelImpl *)self panelController];
        [panelController2 animateToRequest:stateRequest forceOverlay:v34];

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

    if (((allCopy | v22) & 1) == 0)
    {
      goto LABEL_33;
    }

    [stateRequest setSupplementaryWidth:0.0];
    if (allCopy)
    {
      [stateRequest setLeadingWidth:0.0];
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (style == 2 && ([currentState isSupplementaryVisible] & 1) == 0)
  {
    panelController3 = [(UISplitViewControllerPanelImpl *)self panelController];
    possibleStates = [panelController3 possibleStates];
    [stateRequest setSupplementaryWidth:{minNonzeroSupplementaryWidthInStateWithPrimaryWidthGetMatchingState(possibleStates, _isPrimaryLeading, 0, 0.0)}];

LABEL_23:
    if (v15)
    {
      goto LABEL_24;
    }

LABEL_28:
    *&self->_flags &= ~0x20000uLL;
    goto LABEL_29;
  }

  panelController4 = [(UISplitViewControllerPanelImpl *)self panelController];
  possibleStates2 = [panelController4 possibleStates];
  v19 = minNonzeroPrimaryWidthInStates(possibleStates2, _isPrimaryLeading);

  if (v19 <= 0.0)
  {
    goto LABEL_23;
  }

  if (!_isPrimaryLeading)
  {
    [stateRequest setTrailingWidth:v19];
    if (v15)
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  [stateRequest setLeadingWidth:v19];
  if (!v15)
  {
    goto LABEL_28;
  }

LABEL_24:
  [stateRequest supplementaryWidth];
  if (v25 != 0.0)
  {
    goto LABEL_28;
  }

  [stateRequest leadingWidth];
  v27 = v26;
  [stateRequest trailingWidth];
  if (v27 + v28 <= 0.0)
  {
    goto LABEL_28;
  }

  *&self->_flags |= 0x20000uLL;
  [(UISplitViewControllerPanelImpl *)self setUserGeneratedDisplayMode:3];
LABEL_29:
  panelController5 = [(UISplitViewControllerPanelImpl *)self panelController];
  [panelController5 animateToRequest:stateRequest forceOverlay:(*&self->_flags >> 17) & 1];

LABEL_37:
}

- (void)_updateDimmingView
{
  _dimmingView = [(UISplitViewControllerPanelImpl *)self _dimmingView];

  if (!_dimmingView)
  {
    v4 = objc_alloc_init(UIDimmingView);
    [(UISplitViewControllerPanelImpl *)self _setDimmingView:v4];
    [(UIDimmingView *)v4 setDelegate:self];
    panelController = [(UISplitViewControllerPanelImpl *)self panelController];
    [panelController setDimmingView:v4];
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
  _dimmingView2 = [(UISplitViewControllerPanelImpl *)self _dimmingView];
  [_dimmingView2 setDimmingColor:v7];
}

- (void)dimmingViewWasTapped:(id)tapped
{
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    _shouldUseFluidSidebarGestures = [(UISplitViewControllerPanelImpl *)self _shouldUseFluidSidebarGestures];
    splitBehavior = [(UISplitViewControllerPanelImpl *)self splitBehavior];
    if (_shouldUseFluidSidebarGestures)
    {
      v6 = splitBehavior == 3;
      style = [(UISplitViewControllerPanelImpl *)self style];
      if (![(UISplitViewControllerPanelImpl *)self _alwaysHideSidebarToggleButton]&& style == 2)
      {
        v8 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];

        if (v8)
        {
          v9 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
          navigationController = [v9 navigationController];
          navigationBar = [navigationController navigationBar];

          if (![(UIBarButtonItem *)self->_sidebarToggleButtonItem isHidden]|| [(_UIFloatableBarButtonItem *)self->_sidebarToggleButtonItem _isFloatable]|| [(UISplitViewControllerPanelImpl *)self displayMode]== 6)
          {
            panelController = [(UISplitViewControllerPanelImpl *)self panelController];
            [panelController setNavigationBarForContentLayoutGuideAnimation:navigationBar];

            [navigationBar _setShouldFadeStaticNavBarButton:{-[_UIFloatableBarButtonItem _isFloatable](self->_sidebarToggleButtonItem, "_isFloatable") ^ 1}];
          }
        }
      }

      _allowClientAnimationCoordination = [(UISplitViewControllerPanelImpl *)self _allowClientAnimationCoordination];
      panelController2 = [(UISplitViewControllerPanelImpl *)self panelController];
      [panelController2 setAnimationRequestShouldCoordinate:_allowClientAnimationCoordination];

      [(UISplitViewControllerPanelImpl *)self _setNumberOfSidebarColumnsVisibleFromGesture:v6 withVelocity:0.0];
    }

    else
    {

      [(UISplitViewControllerPanelImpl *)self _setPrimaryShownFromGesture:0 hideAll:splitBehavior != 3];
    }
  }

  else
  {

    [(UISplitViewControllerPanelImpl *)self _unspecifiedStyleSetPrimaryShownFromGesture:0];
  }
}

- (int64_t)_effectiveTargetDisplayMode
{
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style)
  {
    v9 = style;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = _UISplitViewControllerStyleDescription(v9);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:8324 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v11}];
  }

  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  currentState = [panelController currentState];
  v7 = [(UISplitViewControllerPanelImpl *)self _displayModeForState:currentState];

  return [(UISplitViewControllerPanelImpl *)self _effectiveTargetDisplayModeForDisplayMode:v7];
}

- (int64_t)_nextTargetDisplayModeForDisplayMode:(int64_t)mode showMoreIfPossible:(BOOL)possible
{
  possibleCopy = possible;
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = _UISplitViewControllerStyleDescription(style);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:8332 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v21}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  traitCollection = [WeakRetained traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 1)
  {
    goto LABEL_4;
  }

  if (!mode)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:8344 description:@"Unexpected use of UISplitViewControllerDisplayModeAutomatic. This is a UIKit issue."];

    [(UISplitViewControllerPanelImpl *)self splitBehavior];
LABEL_4:
    v12 = 0;
    goto LABEL_5;
  }

  splitBehavior = [(UISplitViewControllerPanelImpl *)self splitBehavior];
  v15 = splitBehavior;
  v12 = 0;
  if (mode > 3)
  {
    switch(mode)
    {
      case 4:
        v18 = 5;
        if (splitBehavior == 3)
        {
          v18 = 6;
        }

        if (splitBehavior == 1)
        {
          v12 = 2;
        }

        else
        {
          v12 = v18;
        }

        break;
      case 5:
        if (splitBehavior == 2)
        {
          v12 = 3;
        }

        else if (splitBehavior == 3)
        {
          v12 = 6;
        }

        else
        {
          v12 = 4;
        }

        break;
      case 6:
        if (splitBehavior == 3)
        {
          v12 = 2;
        }

        else if (splitBehavior == 1)
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
    switch(mode)
    {
      case 1:
        if (splitBehavior == 2)
        {
          v12 = 3;
        }

        else
        {
          v12 = 2;
        }

        break;
      case 2:
        if (splitBehavior == 2)
        {
          v12 = 3;
        }

        else
        {
          v12 = 1;
        }

        if (style == 2 && splitBehavior != 2)
        {
          v16 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
          v19 = 4;
          if (v15 == 3)
          {
            v19 = 6;
          }

          if (v16 != 0 && possibleCopy)
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
        v12 = splitBehavior == 2 ? 1 : 3;
        if (style == 2 && splitBehavior == 2)
        {
          v16 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
          v17 = 5;
          if (!possibleCopy)
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

- (int64_t)_effectiveTargetDisplayModeForDisplayMode:(int64_t)mode
{
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style)
  {
    v20 = style;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = _UISplitViewControllerStyleDescription(v20);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:8431 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v22}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  traitCollection = [WeakRetained traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass != 1 && self->_unspecifiedStyleDisplayModeButtonItem)
  {
    delegate = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [(UISplitViewControllerPanelImpl *)self _pushOverrideOfReportedDisplayMode:mode];
      preferredDisplayMode = [delegate targetDisplayModeForActionInSplitViewController:WeakRetained];
      [(UISplitViewControllerPanelImpl *)self _popOverrideOfReportedDisplayMode];
      if (preferredDisplayMode)
      {
        goto LABEL_36;
      }
    }

    v12 = objc_loadWeakRetained(&self->_svc);
    traitCollection2 = [v12 traitCollection];
    userInterfaceIdiom = [traitCollection2 userInterfaceIdiom];

    preferredDisplayMode = [WeakRetained preferredDisplayMode];
    if (mode == 3)
    {
      _iPadShouldUseOverlayInCurrentEnvironment = 1;
    }

    else if (mode == 1 && userInterfaceIdiom == 1)
    {
      _iPadShouldUseOverlayInCurrentEnvironment = [(UISplitViewControllerPanelImpl *)self _iPadShouldUseOverlayInCurrentEnvironment];
    }

    else
    {
      _iPadShouldUseOverlayInCurrentEnvironment = 0;
      if (mode == 1 && !userInterfaceIdiom)
      {
        _iPadShouldUseOverlayInCurrentEnvironment = [(UISplitViewControllerPanelImpl *)self _iPhoneShouldUseOverlayInCurrentEnvironment];
      }
    }

    v16 = mode & 0xFFFFFFFFFFFFFFFELL;
    if (preferredDisplayMode)
    {
      if (v16 == 2)
      {
        preferredDisplayMode = 1;
LABEL_36:

        goto LABEL_37;
      }

      if (preferredDisplayMode != 1)
      {
        goto LABEL_36;
      }

      preferredDisplayMode = userInterfaceIdiom == 1 ? 3 : 2;
      if (userInterfaceIdiom)
      {
        goto LABEL_36;
      }

      v17 = ![(UISplitViewControllerPanelImpl *)self _iPhoneShouldUseOverlayInCurrentEnvironment];
      v18 = 2;
LABEL_28:
      if (v17)
      {
        preferredDisplayMode = v18;
      }

      else
      {
        preferredDisplayMode = v18 + 1;
      }

      goto LABEL_36;
    }

    if (userInterfaceIdiom == 1)
    {
      if (!_iPadShouldUseOverlayInCurrentEnvironment)
      {
        preferredDisplayMode = 2 * (v16 != 2);
        goto LABEL_36;
      }
    }

    else if (!_iPadShouldUseOverlayInCurrentEnvironment)
    {
      v17 = v16 == 2;
      v18 = 1;
      goto LABEL_28;
    }

    if (v16 == 2)
    {
      preferredDisplayMode = 1;
    }

    else
    {
      preferredDisplayMode = 3;
    }

    goto LABEL_36;
  }

  preferredDisplayMode = 0;
LABEL_37:

  return preferredDisplayMode;
}

- (void)_unspecifiedStyleUpdateDisplayModeButtonItem
{
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style)
  {
    v26 = style;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = _UISplitViewControllerStyleDescription(v26);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:8553 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v28}];
  }

  if (self->_unspecifiedStyleDisplayModeButtonItem)
  {
    v36 = 0;
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    _effectiveTargetDisplayMode = [(UISplitViewControllerPanelImpl *)self _effectiveTargetDisplayMode];
    v7 = _effectiveTargetDisplayMode;
    if ((_effectiveTargetDisplayMode - 2) < 2)
    {
      goto LABEL_9;
    }

    if (_effectiveTargetDisplayMode != 1)
    {
      if (!_effectiveTargetDisplayMode)
      {
        v8 = 0;
        _fullScreenButtonImage2 = 0;
        title = 0;
        v11 = 1;
        LOBYTE(v36) = 1;
        goto LABEL_21;
      }

      v11 = 0;
      v8 = 0;
      _fullScreenButtonImage2 = 0;
LABEL_20:
      title = 0;
LABEL_21:
      if (![(__CFString *)title length]&& !_fullScreenButtonImage2)
      {

        title = @" ";
      }

      delegate = [WeakRetained delegate];
      if (objc_opt_respondsToSelector())
      {
        v34 = title;
        v35 = _fullScreenButtonImage2;
        [delegate _splitViewController:WeakRetained willUpdateDisplayModeButtonItemForTargetMode:v7 withHidden:&v36 image:&v35 title:&v34 showsBackButtonIndicator:&v36 + 1];
        v22 = v35;

        v23 = v34;
        v8 = HIBYTE(v36);
        v11 = v36;
        _fullScreenButtonImage2 = v22;
        title = v23;
      }

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __78__UISplitViewControllerPanelImpl__unspecifiedStyleUpdateDisplayModeButtonItem__block_invoke;
      v29[3] = &unk_1E70F43C8;
      v32 = v8;
      v29[4] = self;
      v30 = _fullScreenButtonImage2;
      v31 = title;
      v33 = v11;
      v24 = title;
      v25 = _fullScreenButtonImage2;
      [UIView performWithoutAnimation:v29];

      return;
    }

    if ([WeakRetained displayMode] == 3)
    {
LABEL_9:
      _currentPrimaryChildViewController = [(UISplitViewControllerPanelImpl *)self _currentPrimaryChildViewController];
      v13 = objc_opt_respondsToSelector();

      if ((v13 & 1) == 0 || (-[UISplitViewControllerPanelImpl _currentPrimaryChildViewController](self, "_currentPrimaryChildViewController"), v14 = objc_claimAutoreleasedReturnValue(), [v14 _splitViewControllerImageForDisplayModeButtonToShowPrimary:WeakRetained], _fullScreenButtonImage2 = objc_claimAutoreleasedReturnValue(), v14, !_fullScreenButtonImage2))
      {
        _displayModeButtonItemTitle = [WeakRetained _displayModeButtonItemTitle];
        v16 = _displayModeButtonItemTitle;
        if (_displayModeButtonItemTitle)
        {
          title = _displayModeButtonItemTitle;
        }

        else
        {
          masterViewController = [WeakRetained masterViewController];
          title = [masterViewController title];
        }

        v11 = 0;
        _fullScreenButtonImage2 = 0;
        v8 = 1;
        HIBYTE(v36) = 1;
        goto LABEL_21;
      }
    }

    else
    {
      _fullScreenButtonImage = [(UISplitViewControllerPanelImpl *)self _fullScreenButtonImage];

      if (!_fullScreenButtonImage)
      {
        v19 = _UIImageWithName(@"UISplitViewControllerFullScreen.png");
        imageFlippedForRightToLeftLayoutDirection = [v19 imageFlippedForRightToLeftLayoutDirection];
        [(UISplitViewControllerPanelImpl *)self _setFullScreenButtonImage:imageFlippedForRightToLeftLayoutDirection];
      }

      _fullScreenButtonImage2 = [(UISplitViewControllerPanelImpl *)self _fullScreenButtonImage];
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
  imageFlippedForRightToLeftLayoutDirection = [v2 imageFlippedForRightToLeftLayoutDirection];

  return imageFlippedForRightToLeftLayoutDirection;
}

- (id)_leaveFullScreenSymbolImage
{
  v2 = [UIImage systemImageNamed:@"arrow.down.right.and.arrow.up.left"];
  imageFlippedForRightToLeftLayoutDirection = [v2 imageFlippedForRightToLeftLayoutDirection];

  return imageFlippedForRightToLeftLayoutDirection;
}

- (id)_fullScreenSymbolImageForDisplayMode:(int64_t)mode
{
  if (!mode)
  {
    mode = [(UISplitViewControllerPanelImpl *)self _concreteDisplayModeForCurrentEnvironment];
  }

  if (mode == 1)
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
  style = [(UISplitViewControllerPanelImpl *)self style];
  v4 = 0;
  if ([(UISplitViewControllerPanelImpl *)self showsSecondaryOnlyButton]&& style == 2)
  {
    v5 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
    v4 = v5 != 0;
  }

  return v4;
}

- (void)_setVisibleToggleButtonRequiresPresentsWithGesture:(BOOL)gesture
{
  v3 = 0x100000;
  if (gesture)
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

  window = [(UIView *)self->_navBarForToggleButton window];
  if (!window || [(UIView *)self->_navBarForToggleButton isHidden])
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

- (void)_setForceDisplayModeBarButtonHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  _isDisplayModeBarButtonVisible = [(UISplitViewControllerPanelImpl *)self _isDisplayModeBarButtonVisible];
  v6 = 0x200000;
  if (!hiddenCopy)
  {
    v6 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFFFFFDFFFFFLL | v6);
  if (hiddenCopy)
  {
    v7 = 0;
    v8 = 1;
  }

  else
  {
    v8 = ![(UISplitViewControllerPanelImpl *)self _alwaysHideSidebarToggleButton];
    v7 = (*(&self->_flags + 2) & 0x20) == 0;
  }

  if (_isDisplayModeBarButtonVisible != v7 && v8)
  {
    [(UISplitViewControllerPanelImpl *)self _updateDisplayModeButtonItem];

    [(UISplitViewControllerPanelImpl *)self _invalidateAllowsTriggeringSidebarKeyCommandAction];
  }
}

- (BOOL)_alwaysHideSidebarToggleButton
{
  styleProvider = [(UISplitViewControllerPanelImpl *)self styleProvider];
  alwaysHideSidebarToggleButton = [styleProvider alwaysHideSidebarToggleButton];

  return alwaysHideSidebarToggleButton;
}

- (void)_updateDisplayModeButtonItemForDisplayMode:(int64_t)mode
{
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v110 = _UISplitViewControllerStyleDescription(style);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:8720 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v110}];
  }

  _isCollapsedOrCollapsing = [(UISplitViewControllerPanelImpl *)self _isCollapsedOrCollapsing];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _concreteDisplayModeForCurrentEnvironment = [(UISplitViewControllerPanelImpl *)self _concreteDisplayModeForCurrentEnvironment];
  v7 = _concreteDisplayModeForCurrentEnvironment;
  if (mode)
  {
    modeCopy = mode;
  }

  else
  {
    modeCopy = _concreteDisplayModeForCurrentEnvironment;
  }

  splitBehavior = [(UISplitViewControllerPanelImpl *)self splitBehavior];
  if (!self->_sidebarToggleButtonItem && !_isCollapsedOrCollapsing)
  {
    v10 = [(UIBarButtonItem *)[_UIFloatableBarButtonItem alloc] initWithImage:0 style:0 target:self action:sel__triggerDisplayModeAction_];
    sidebarToggleButtonItem = self->_sidebarToggleButtonItem;
    self->_sidebarToggleButtonItem = v10;
  }

  _alwaysHideSidebarToggleButton = [(UISplitViewControllerPanelImpl *)self _alwaysHideSidebarToggleButton];
  primaryEdge = [(UISplitViewControllerPanelImpl *)self primaryEdge];
  v14 = primaryEdge == 0;
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
  _gestureIsForcingOverlay = [(UISplitViewControllerPanelImpl *)self _gestureIsForcingOverlay];
  if (!_alwaysHideSidebarToggleButton)
  {
    v17 = _gestureIsForcingOverlay;
    v133[0] = MEMORY[0x1E69E9820];
    v133[1] = 3221225472;
    v134 = __77__UISplitViewControllerPanelImpl__updateDisplayModeButtonItemForDisplayMode___block_invoke;
    v135 = &unk_1E7103D80;
    v136 = &v165;
    v137 = &v159;
    v138 = &v153;
    v139 = &v147;
    v140 = &v141;
    obj = [(UISplitViewControllerPanelImpl *)self _navigationBarForSidebarButtonForDisplayMode:modeCopy];
    if (modeCopy > 3)
    {
      if (modeCopy != 4)
      {
        if (modeCopy == 5)
        {
          if (primaryEdge)
          {
            _sidebarChevronSymbolImage = [(UISplitViewControllerPanelImpl *)self _sidebarChevronSymbolImage];
          }

          else
          {
            _sidebarChevronSymbolImage = 0;
          }

          v32 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
          viewController = [v32 viewController];
          v134(v133, viewController);
          _sidebarToggleSymbolImage = v32;
          v117 = 1;
          goto LABEL_61;
        }

        if (modeCopy == 6)
        {
          _sidebarChevronSymbolImage = [(UISplitViewControllerPanelImpl *)self _sidebarToggleSymbolImage];
          goto LABEL_11;
        }

LABEL_31:
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        viewController = _UISplitViewControllerDisplayModeDescription(modeCopy);
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:8810 description:{@"Unsupported displayMode for configuring bar buttons. %@", viewController}];
        _sidebarChevronSymbolImage = 0;
        _sidebarToggleSymbolImage = currentHandler2;
        v14 = 0;
        v117 = 0;
LABEL_61:

        v16 = v14;
LABEL_88:

        goto LABEL_89;
      }
    }

    else if (modeCopy != 1)
    {
      if (modeCopy != 2)
      {
        if (modeCopy == 3)
        {
          v112 = splitBehavior;
          _sidebarToggleSymbolImage = [(UISplitViewControllerPanelImpl *)self _sidebarToggleSymbolImage];
          _wantsSideBarImageForOneOverSecondary = [(UISplitViewControllerPanelImpl *)self _wantsSideBarImageForOneOverSecondary];
          v117 = !_wantsSideBarImageForOneOverSecondary;
          if (primaryEdge)
          {
            v14 = 0;
          }

          else
          {
            v14 = !_wantsSideBarImageForOneOverSecondary;
          }

          if (primaryEdge)
          {
            v18 = _wantsSideBarImageForOneOverSecondary;
          }

          else
          {
            v18 = 1;
          }

          if (v18)
          {
            v19 = _sidebarToggleSymbolImage;
            if (!_wantsSideBarImageForOneOverSecondary)
            {
              v19 = 0;
            }

            _sidebarChevronSymbolImage = v19;
          }

          else
          {
            _sidebarChevronSymbolImage = [(UISplitViewControllerPanelImpl *)self _sidebarChevronSymbolImage];
          }

          if (style == 2 && ([(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220], (v113 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v111 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
            viewController2 = [v111 viewController];
            v113 = 0;
            v30 = 0;
            v29 = 1;
          }

          else
          {
            primaryEdge = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
            viewController2 = [primaryEdge viewController];
            v29 = 0;
            v30 = 1;
          }

          v134(v133, viewController2);
          if (v30)
          {
          }

          if (v29)
          {
          }

          v16 = v14;
          v31 = _wantsSideBarImageForOneOverSecondary;
          if (style != 2)
          {
            goto LABEL_87;
          }

          if (_wantsSideBarImageForOneOverSecondary || !v14)
          {
            if (!v14)
            {
              v16 = 0;
LABEL_87:
              [(_UIFloatableBarButtonItem *)self->_sidebarToggleButtonItem _setFloatable:!v17 & v31];
              splitBehavior = v112;
              goto LABEL_88;
            }
          }

          else
          {
            v44 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];

            v31 = _wantsSideBarImageForOneOverSecondary;
            if (!v44)
            {
              v16 = 1;
              goto LABEL_87;
            }
          }

          v45 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
          navigationController = [v45 navigationController];

          viewControllers = [navigationController viewControllers];
          if ([viewControllers count] < 2)
          {
            v16 = 0;
          }

          else
          {
            topViewController = [navigationController topViewController];
            navigationItem = [topViewController navigationItem];
            hidesBackButton = [navigationItem hidesBackButton];
            v51 = navigationItem;
            v16 = hidesBackButton ^ 1u;
          }

          goto LABEL_87;
        }

        goto LABEL_31;
      }

      if (style != 2)
      {
        goto LABEL_63;
      }

      v22 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
      if (v22)
      {
        v23 = (splitBehavior & 0xFFFFFFFFFFFFFFFDLL) == 1;
      }

      else
      {
        v23 = 1;
      }

      v24 = v23;

      v25 = v24 ^ 1;
      if (primaryEdge)
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
        _sidebarChevronSymbolImage = 0;
        v14 = v26;
        goto LABEL_65;
      }

      if ((v24 & 1) == 0)
      {
        _sidebarChevronSymbolImage2 = [(UISplitViewControllerPanelImpl *)self _sidebarChevronSymbolImage];
        v117 = 1;
      }

      else
      {
LABEL_63:
        _sidebarChevronSymbolImage2 = [(UISplitViewControllerPanelImpl *)self _sidebarToggleSymbolImage];
        v14 = 0;
        v117 = 0;
      }

      _sidebarChevronSymbolImage = _sidebarChevronSymbolImage2;

      v27 = 1;
LABEL_65:
      v34 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
      viewController3 = [v34 viewController];
      v134(v133, viewController3);

      perColumnViewControllers = self->_perColumnViewControllers;
      if (style == 2)
      {
        [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
      }

      else
      {
        [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
      }
      v37 = ;
      navigationController2 = [v37 navigationController];

      _sidebarToggleSymbolImage = navigationController2;
      if (v14)
      {
        viewControllers2 = [navigationController2 viewControllers];
        if ([viewControllers2 count] < 2)
        {
          v16 = 0;
        }

        else
        {
          topViewController2 = [_sidebarToggleSymbolImage topViewController];
          navigationItem2 = [topViewController2 navigationItem];
          v115 = v27;
          v42 = topViewController2;
          v16 = [navigationItem2 hidesBackButton] ^ 1;

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
          if (splitBehavior == 3)
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

    _sidebarChevronSymbolImage = [(UISplitViewControllerPanelImpl *)self _sidebarToggleSymbolImage];
    [(_UIFloatableBarButtonItem *)self->_sidebarToggleButtonItem _setFloatable:!v17];
    v14 = 0;
    v117 = 0;
    v16 = 0;
    goto LABEL_89;
  }

  obj = 0;
  _sidebarChevronSymbolImage = 0;
LABEL_11:
  v14 = 0;
  v117 = 0;
  v16 = 1;
LABEL_89:
  if (_isCollapsedOrCollapsing || ![(UISplitViewControllerPanelImpl *)self allowsSecondaryOnlyShortcutButton])
  {
    v122 = 0;
    navigationBar = 0;
LABEL_110:
    if (v14)
    {
      v116 = 0;
      image = modeCopy == 3 || modeCopy == 5;
    }

    else
    {
      v116 = 0;
      image = 0;
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

  v122 = [(UISplitViewControllerPanelImpl *)self _fullScreenSymbolImageForDisplayMode:modeCopy];
  v54 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
  navigationController3 = [v54 navigationController];
  navigationBar = [navigationController3 navigationBar];

  v58 = modeCopy == 3 || modeCopy == 5;
  if ((modeCopy == 6 || modeCopy == v58 || [(UISplitViewControllerPanelImpl *)self splitBehavior]== 2) && (modeCopy != 1 || ![(UISplitViewControllerPanelImpl *)self _gestureIsForcingOverlayForDisplayMode:v7]))
  {
    goto LABEL_110;
  }

  if (navigationBar == obj)
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
    image = 0;
    v116 = 1;
  }

  else
  {
    v68 = self->_navBarForToggleButton;

    v60 = 0;
    image = 0;
    v116 = 1;
    v16 = 1;
    obj = v68;
  }

LABEL_119:
  v63 = [(UISplitViewControllerPanelImpl *)self _navigationBarForSidebarButtonForColumn:2];
  [v63 _setStaticNavBarButtonLingers:image];

  v64 = self->_sidebarToggleButtonItem;
  if (!v64)
  {
LABEL_157:
    v65 = 0;
    goto LABEL_158;
  }

  if ((v16 & 1) == 0)
  {
    image = [(UIBarButtonItem *)v64 image];
    if (!image)
    {
      v65 = 1;
      goto LABEL_140;
    }

    v66 = splitBehavior;
    v65 = 1;
    if (v14 | v117 || v66 == 3 || [(UIBarButtonItem *)self->_sidebarToggleButtonItem _showsBackButtonIndicator]|| [(UIBarButtonItem *)self->_sidebarToggleButtonItem _showsChevron])
    {
      goto LABEL_140;
    }

    title = [(UIBarButtonItem *)self->_sidebarToggleButtonItem title];
    if (title)
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
      title = 0;
      v65 = 0;
    }

    else
    {
      view = [(UIBarButtonItem *)self->_sidebarToggleButtonItem view];
      [view alpha];
      v65 = v70 < 0.01;

      title = 0;
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
    [(UIBarButtonItem *)v71 setImage:_sidebarChevronSymbolImage];
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

  isHidden = [(UIBarButtonItem *)v79 isHidden];
  v81 = v60 ^ isHidden;
  if ((v60 ^ isHidden) == 1)
  {
    [(UIBarButtonItem *)self->_secondaryOnlyShortcutButtonItem setHidden:v60];
  }

  image2 = [(UIBarButtonItem *)self->_secondaryOnlyShortcutButtonItem image];
  if (!image2 || (-[UIBarButtonItem image](self->_secondaryOnlyShortcutButtonItem, "image"), v83 = objc_claimAutoreleasedReturnValue(), v84 = [v83 isEqual:v122], v83, image2, (v84 & 1) == 0))
  {
    [(UIBarButtonItem *)self->_secondaryOnlyShortcutButtonItem setImage:v122];
    v81 = v60 & isHidden ^ 1;
  }

  navBarForShortcutButton = self->_navBarForShortcutButton;
  if (navBarForShortcutButton != navigationBar)
  {
    if (!v116)
    {
      goto LABEL_175;
    }

    goto LABEL_171;
  }

  _staticNavBarButtonItem = [(UINavigationBar *)navigationBar _staticNavBarButtonItem];
  v87 = self->_secondaryOnlyShortcutButtonItem;

  v88 = v116 ^ 1;
  if (_staticNavBarButtonItem == v87)
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

    [(UINavigationBar *)navigationBar _setStaticNavBarButtonItem:self->_secondaryOnlyShortcutButtonItem];
    objc_storeStrong(&self->_navBarForShortcutButton, navigationBar);
    goto LABEL_174;
  }

LABEL_175:
  if (style == 2)
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
  viewController4 = [v94 viewController];

  if (viewController4)
  {
    delegate = [(UINavigationBar *)self->_navBarForToggleButton delegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      delegate2 = [(UINavigationBar *)self->_navBarForToggleButton delegate];
      v99 = delegate2;
      if (delegate2 && (*(delegate2 + 376) & 3u) - 1 <= 1)
      {
        v100 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30238];
        viewController5 = [v100 viewController];

        v128 = 0;
        v125[0] = MEMORY[0x1E69E9820];
        v125[1] = 3221225472;
        v125[2] = __77__UISplitViewControllerPanelImpl__updateDisplayModeButtonItemForDisplayMode___block_invoke_2;
        v125[3] = &unk_1E7103DA8;
        v102 = viewController5;
        v126 = v102;
        v127 = &v129;
        [v99 _enumerateAncestorViewControllersUntilStop:&v128 usingBlock:v125];
      }
    }
  }

  if (v65)
  {
    if ((v130[3] & 1) != 0 || !_isCollapsedOrCollapsing || (-[UINavigationBar delegate](self->_navBarForToggleButton, "delegate"), v103 = objc_claimAutoreleasedReturnValue(), v104 = self->_perColumnViewControllers, [MEMORY[0x1E696AD98] numberWithInteger:v90], v105 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKeyedSubscript:](v104, "objectForKeyedSubscript:", v105), v106 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v106, "navigationController"), v107 = objc_claimAutoreleasedReturnValue(), v107, v106, v105, v103, v103 == v107))
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
    _configuredFloatableView = [(_UIFloatableBarButtonItem *)self->_sidebarToggleButtonItem _configuredFloatableView];
    [_configuredFloatableView setTintColor:0];
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

- (void)_unspecifiedStyleTriggerDisplayModeAction:(id)action
{
  _isPrimaryLeading = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
  _effectiveTargetDisplayMode = [(UISplitViewControllerPanelImpl *)self _effectiveTargetDisplayMode];
  if ((_effectiveTargetDisplayMode - 2) >= 2)
  {
    if (_effectiveTargetDisplayMode != 1)
    {
      return;
    }

    panelController = [(UISplitViewControllerPanelImpl *)self panelController];
    currentState = [panelController currentState];
    stateRequest = [currentState stateRequest];

    if (_isPrimaryLeading)
    {
      [stateRequest setLeadingWidth:0.0];
    }

    else
    {
      [stateRequest setTrailingWidth:0.0];
    }

    panelController2 = [(UISplitViewControllerPanelImpl *)self panelController];
    [panelController2 animateToRequest:stateRequest];
  }

  else
  {
    [(UISplitViewControllerPanelImpl *)self _setPanelConfigurationWithIsPrimaryShown:1 shouldUseOverlay:_effectiveTargetDisplayMode == 3];
    panelController3 = [(UISplitViewControllerPanelImpl *)self panelController];
    stateRequest = [panelController3 uncachedPossibleStates];

    panelController4 = [(UISplitViewControllerPanelImpl *)self panelController];
    currentState2 = [panelController4 currentState];
    panelController2 = [currentState2 stateRequest];

    v10 = minNonzeroPrimaryWidthInStates(stateRequest, _isPrimaryLeading);
    if (_isPrimaryLeading)
    {
      [panelController2 setLeadingWidth:v10];
    }

    else
    {
      [panelController2 setTrailingWidth:v10];
    }

    panelController5 = [(UISplitViewControllerPanelImpl *)self panelController];
    [panelController5 animateToRequest:panelController2];
  }
}

- (void)_updateTriggerSidebarKeyCommandTitleForNewDisplayMode:(int64_t)mode
{
  if ([(UISplitViewControllerPanelImpl *)self style]== 2 && ([(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    if ((mode - 4) >= 3)
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

  else if (mode == 1)
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

- (void)_validateTriggerSidebarKeyCommand:(id)command
{
  flags = self->_flags;
  commandCopy = command;
  if ((*&flags & 0x800000) != 0)
  {
    v5 = @"Hide Sidebar";
  }

  else
  {
    v5 = @"Show Sidebar";
  }

  v6 = _UINSLocalizedStringWithDefaultValue(v5, v5);
  [commandCopy setTitle:v6];
}

- (void)_invalidateAllowsTriggeringSidebarKeyCommandAction
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  viewIfLoaded = [WeakRetained viewIfLoaded];
  [viewIfLoaded setNeedsLayout];
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

- (void)_triggerSidebarKeyCommandAction:(id)action
{
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = _UISplitViewControllerStyleDescription(style);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:9126 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v10}];
  }

  if (![(UISplitViewControllerPanelImpl *)self _isCollapsedOrCollapsing])
  {
    displayMode = [(UISplitViewControllerPanelImpl *)self displayMode];
    if (style == 2)
    {
      v7 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];

      if (v7)
      {
        v8 = 1;
        if (displayMode > 6)
        {
LABEL_9:

          [(UISplitViewControllerPanelImpl *)self _transitionFromDisplayMode:displayMode toDisplayMode:v8];
          return;
        }

        if (((1 << displayMode) & 0x56) == 0)
        {
          if (displayMode != 3)
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

    v8 = [(UISplitViewControllerPanelImpl *)self _nextTargetDisplayModeForDisplayMode:displayMode showMoreIfPossible:1];
    goto LABEL_9;
  }
}

- (void)_triggerSecondaryOnlyShortcutAction:(id)action
{
  displayMode = [(UISplitViewControllerPanelImpl *)self displayMode];
  if (displayMode == 1)
  {
    v5 = [(UISplitViewControllerPanelImpl *)self _nextTargetDisplayModeForDisplayMode:1 showMoreIfPossible:1];
  }

  else
  {
    v5 = 1;
  }

  [(UISplitViewControllerPanelImpl *)self _transitionFromDisplayMode:displayMode toDisplayMode:v5 updateSplitBehaviorOverrides:0 userGenerated:1];
}

- (void)_triggerDisplayModeAction:(id)action
{
  actionCopy = action;
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    displayMode = [(UISplitViewControllerPanelImpl *)self displayMode];
    v5 = [(UISplitViewControllerPanelImpl *)self _nextTargetDisplayModeForDisplayMode:displayMode showMoreIfPossible:1];
    _allowClientAnimationCoordination = [(UISplitViewControllerPanelImpl *)self _allowClientAnimationCoordination];
    panelController = [(UISplitViewControllerPanelImpl *)self panelController];
    [panelController setAnimationRequestShouldCoordinate:_allowClientAnimationCoordination];

    if (qword_1ED49D968 != -1)
    {
      dispatch_once(&qword_1ED49D968, &__block_literal_global_1604);
    }

    [(UISplitViewControllerPanelImpl *)self _transitionFromDisplayMode:displayMode toDisplayMode:v5];
  }

  else
  {
    [(UISplitViewControllerPanelImpl *)self _unspecifiedStyleTriggerDisplayModeAction:actionCopy];
  }
}

- (void)_displayModeBarButtonItemWasUsedForFirstTime:(id)time
{
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  [panelController setNeedsUpdate];
}

- (id)_childContainingSender:(id)sender
{
  v17 = *MEMORY[0x1E69E9840];
  senderCopy = sender;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    panelController = [(UISplitViewControllerPanelImpl *)self panelController];
    allViewControllers = [panelController allViewControllers];

    v7 = [allViewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(allViewControllers);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([senderCopy _isMemberOfViewControllerHierarchy:v10])
          {
            v7 = v10;
            goto LABEL_13;
          }
        }

        v7 = [allViewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (int64_t)_unspecifiedStyleDisplayModeForState:(id)state
{
  stateCopy = state;
  _isPrimaryLeading = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
  if (!stateCopy)
  {
    v7 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v7 userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1 || ![(UISplitViewControllerPanelImpl *)self _iPadShouldUseOverlayInCurrentEnvironment])
    {
      goto LABEL_13;
    }

LABEL_14:
    v9 = 1;
    goto LABEL_15;
  }

  v6 = _isPrimaryLeading;
  if ([stateCopy isCollapsed])
  {
LABEL_13:
    v9 = 2;
    goto LABEL_15;
  }

  if (!v6)
  {
    if (([stateCopy isTrailingVisible] & 1) == 0)
    {
      goto LABEL_14;
    }

    if ([stateCopy trailingOverlapsMain])
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (([stateCopy isLeadingVisible] & 1) == 0)
  {
    goto LABEL_14;
  }

  if (([stateCopy leadingOverlapsMain] & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_12:
  v9 = 3;
LABEL_15:

  return v9;
}

- (int64_t)_displayModeForState:(id)state
{
  v26 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    if (stateCopy)
    {
      v5 = stateCopy;
      if (!self)
      {
        v11 = 0;
        goto LABEL_44;
      }

      style = [(UISplitViewControllerPanelImpl *)self style];
      if (style - 3 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v21 = _UISplitViewControllerStyleDescription(style);
        [currentHandler handleFailureInMethod:sel__columnStyleDisplayModeDirectlyFromState_ object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:9262 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v21}];
      }

      _isPrimaryLeading = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
      _collapsedState = [v5 _collapsedState];
      if (_collapsedState == 1)
      {
        v9 = (*(&self->_flags + 3) >> 5) & 1;
      }

      else
      {
        v9 = 0;
      }

      if ((_collapsedState - 3) >= 0xFFFFFFFFFFFFFFFELL && !v9)
      {
        v11 = 2;
LABEL_44:

        goto LABEL_45;
      }

      if (_isPrimaryLeading)
      {
        isLeadingVisible = [v5 isLeadingVisible];
        isSupplementaryVisible = [v5 isSupplementaryVisible];
        if (isLeadingVisible && (isSupplementaryVisible & 1) != 0)
        {
          if ([v5 leadingOverlapsMain])
          {
LABEL_19:
            v11 = 5;
            goto LABEL_44;
          }

LABEL_23:
          configuration = [v5 configuration];
          allowTotalWidthGreaterThanParent = [configuration allowTotalWidthGreaterThanParent];

          if (allowTotalWidthGreaterThanParent)
          {
            v11 = 6;
          }

          else
          {
            v11 = 4;
          }

          goto LABEL_44;
        }

        if (style == 1)
        {
          v16 = isLeadingVisible;
        }

        else
        {
          v16 = 0;
        }

        if (v16)
        {
          leadingOverlapsMain = [v5 leadingOverlapsMain];
          goto LABEL_39;
        }
      }

      else
      {
        isLeadingVisible = [v5 isTrailingVisible];
        isSupplementaryVisible = [v5 isSupplementaryVisible];
        if (isLeadingVisible && (isSupplementaryVisible & 1) != 0)
        {
          if ([v5 trailingOverlapsMain])
          {
            goto LABEL_19;
          }

          goto LABEL_23;
        }

        if (style == 1)
        {
          v18 = isLeadingVisible;
        }

        else
        {
          v18 = 0;
        }

        if (v18)
        {
          leadingOverlapsMain = [v5 trailingOverlapsMain];
LABEL_39:
          if (leadingOverlapsMain)
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

      if ((isLeadingVisible & 1) != 0 || !isSupplementaryVisible)
      {
        if (isLeadingVisible)
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

      leadingOverlapsMain = [v5 supplementaryOverlapsMain];
      goto LABEL_39;
    }

    _concreteDisplayModeForCurrentEnvironment = [(UISplitViewControllerPanelImpl *)self _concreteDisplayModeForCurrentEnvironment];
  }

  else
  {
    _concreteDisplayModeForCurrentEnvironment = [(UISplitViewControllerPanelImpl *)self _unspecifiedStyleDisplayModeForState:stateCopy];
  }

  v11 = _concreteDisplayModeForCurrentEnvironment;
LABEL_45:

  return v11;
}

- (void)_pushOverrideOfReportedDisplayMode:(int64_t)mode
{
  overrideReportedDisplayModeStack = self->_overrideReportedDisplayModeStack;
  if (!overrideReportedDisplayModeStack)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_overrideReportedDisplayModeStack;
    self->_overrideReportedDisplayModeStack = v6;

    overrideReportedDisplayModeStack = self->_overrideReportedDisplayModeStack;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
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

  view = [WeakRetained view];
  [view bounds];
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
  _automaticDisplayModeOnPhoneUsesOverlayInLandscapeDefaultValue = [(UISplitViewControllerPanelImpl *)self usesDeviceOverlayPreferences]&& [(UISplitViewControllerPanelImpl *)self prefersOverlayInRegularWidthPhone]|| +[UISplitViewController _automaticDisplayModeOnPhoneUsesOverlayInLandscapeDefaultValue];
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  v5 = ([WeakRetained presentsWithGesture] & 1) != 0 || -[UISplitViewControllerDisplayModeBarButtonItem _hasBeenUsed](self->_unspecifiedStyleDisplayModeButtonItem, "_hasBeenUsed");

  return _automaticDisplayModeOnPhoneUsesOverlayInLandscapeDefaultValue && v5;
}

- (int64_t)_currentInterfaceIdiom
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  traitCollection = [WeakRetained traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != -1)
  {
    return userInterfaceIdiom;
  }

  v6 = +[UIDevice currentDevice];
  userInterfaceIdiom2 = [v6 userInterfaceIdiom];

  return userInterfaceIdiom2;
}

- (int64_t)_fullScreenStateForOrientation:(int64_t)orientation viewWidth:(double)width
{
  v7 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v7 userInterfaceIdiom];

  if (userInterfaceIdiom != 1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _screen = [WeakRetained _screen];

  v11 = objc_loadWeakRetained(&self->_svc);
  _window = [v11 _window];
  _windowHostingScene = [_window _windowHostingScene];
  _sceneSessionRoleIsCarPlayOrNonInteractiveExternal = [_windowHostingScene _sceneSessionRoleIsCarPlayOrNonInteractiveExternal];

  if ((_sceneSessionRoleIsCarPlayOrNonInteractiveExternal & 1) != 0 || ([_screen _boundsForInterfaceOrientation:orientation], v15 <= width))
  {
    v17 = 0;
  }

  else
  {
    v19 = fmax(v15, v16);
    v20 = orientation - 5;
    v21 = v15 * 0.5;
    if (v19 <= 1210.0 || v20 < 0xFFFFFFFFFFFFFFFELL || (v15 * 0.3 < width ? (v22 = v21 < width) : (v22 = 1), v22))
    {
      if (v20 > 0xFFFFFFFFFFFFFFFDLL && v21 < width && v19 <= 1112.0 && v19 <= 1210.0)
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

- (BOOL)_setPanelConfigurationWithIsPrimaryShown:(BOOL)shown isSupplementaryShown:(BOOL)supplementaryShown shouldUseOverlay:(BOOL)overlay dimMainIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  overlayCopy = overlay;
  supplementaryShownCopy = supplementaryShown;
  shownCopy = shown;
  v60[1] = *MEMORY[0x1E69E9840];
  style = [(UISplitViewControllerPanelImpl *)self style];
  if ((style - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v52 = style;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v54 = _UISplitViewControllerStyleDescription(v52);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:9477 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v54}];
  }

  v13 = shownCopy || supplementaryShownCopy;
  v14 = shownCopy && supplementaryShownCopy;
  v15 = 2;
  if (shownCopy && supplementaryShownCopy)
  {
    v15 = 4;
  }

  v16 = 2;
  if (v14)
  {
    v16 = 6;
  }

  if (necessaryCopy)
  {
    v15 = v16;
  }

  v33 = v14 == 0;
  v17 = 3;
  if (!v33)
  {
    v17 = 5;
  }

  if (!overlayCopy)
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
  _existingView = [WeakRetained _existingView];
  v56 = supplementaryShownCopy;
  if (_existingView)
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
        view = [v21 view];
        [view bounds];
        width = v23;
        height = v25;
      }

      [(UISplitViewControllerPanelImpl *)self getPrimaryColumnWidth:&v58 supplementaryColumnWidth:&v57 forSize:v18 displayMode:overlayCopy shouldUseOverlay:width, height];
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

      v27 = necessaryCopy;
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

    v27 = necessaryCopy;
  }

  else
  {
    v27 = necessaryCopy;
  }

  v28 = MEMORY[0x1E695E0F0];
  v55 = MEMORY[0x1E695E0F0];
LABEL_23:
  v29 = [(UISplitViewControllerPanelImpl *)self _nextTargetDisplayModeForDisplayMode:v18 showMoreIfPossible:0];
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  [panelController configuration];
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
  v35 = !v33 || overlayCopy;
  v36 = !shownCopy | v35;
  _isPrimaryLeading = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
  if (shownCopy && v56)
  {
    goto LABEL_47;
  }

  if (!shownCopy)
  {
    if (_isPrimaryLeading)
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
    supplementaryWidths = v55;
  }

  else
  {
    supplementaryWidths = [v32 supplementaryWidths];
  }

  [(_UIHyperConstantExtender *)self->_extender _maximumDistance];
  [v32 setRubberBandExtension:?];
  [v32 setSupplementaryEdge:self->_primaryEdge];
  [v32 setLeadingMayBeHidden:v36 & _isPrimaryLeading];
  [v32 setTrailingMayBeHidden:v36 & !_isPrimaryLeading];
  v42 = v31 < 4 && v34;
  v43 = v42 || overlayCopy;
  v44 = !v56 || v43;
  [v32 setSupplementaryMayBeHidden:v44];
  v45 = 0.0;
  if (overlayCopy)
  {
    v45 = 1.0;
  }

  [v32 setMinimumMainWidthFraction:v45];
  if (_isPrimaryLeading)
  {
    v46 = v28;
  }

  else
  {
    v46 = MEMORY[0x1E695E0F0];
  }

  if (_isPrimaryLeading)
  {
    v47 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v47 = v28;
  }

  [v32 setLeadingWidths:v46];
  [v32 setTrailingWidths:v47];
  [v32 setSupplementaryWidths:supplementaryWidths];
  [v32 setAllowTotalWidthGreaterThanParent:!overlayCopy & v27];
  v48 = overlayCopy && [(UISplitViewControllerPanelImpl *)self userGeneratedDisplayMode]== 3;
  [v32 setForceOverlay:v48];
  v49 = ([v32 forceOverlay] & 1) != 0 || -[UISplitViewControllerPanelImpl splitBehavior](self, "splitBehavior") != 1;
  [v32 setShouldFadeStaticNavBarButton:v49];
  panelController2 = [(UISplitViewControllerPanelImpl *)self panelController];
  [panelController2 setConfiguration:v32];

  return v34;
}

- (BOOL)_setPanelConfigurationWithIsPrimaryShown:(BOOL)shown shouldUseOverlay:(BOOL)overlay
{
  overlayCopy = overlay;
  shownCopy = shown;
  v39[1] = *MEMORY[0x1E69E9840];
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style)
  {
    v36 = style;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v38 = _UISplitViewControllerStyleDescription(v36);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:9542 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v38}];
  }

  v9 = MEMORY[0x1E695E0F0];
  v10 = MEMORY[0x1E695E0F0];
  if ((*&self->_flags & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_svc);
    _existingView = [WeakRetained _existingView];

    if (_existingView)
    {
      v13 = objc_loadWeakRetained(&self->_svc);
      view = [v13 view];
      [view bounds];
      [(UISplitViewControllerPanelImpl *)self _primaryColumnWidthForSize:overlayCopy shouldUseOverlay:v15, v16];
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
  if (overlayCopy)
  {
    v20 = 3;
    v21 = 1.0;
  }

  else
  {
    v21 = 0.0;
  }

  if (shownCopy)
  {
    v22 = v20;
  }

  else
  {
    v22 = 1;
  }

  v23 = [(UISplitViewControllerPanelImpl *)self _effectiveTargetDisplayModeForDisplayMode:v22];
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  configuration = [panelController configuration];
  v26 = [configuration copy];

  if (v23)
  {
    v27 = v23 == v22;
  }

  else
  {
    v27 = 1;
  }

  v28 = !v27;
  v29 = !v27 || overlayCopy;
  v30 = !shownCopy | v29;
  _isPrimaryLeading = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
  [v26 setLeadingMayBeHidden:v30 & _isPrimaryLeading];
  [v26 setTrailingMayBeHidden:v30 & !_isPrimaryLeading];
  [v26 setMinimumMainWidthFraction:v21];
  if (_isPrimaryLeading)
  {
    v32 = v10;
  }

  else
  {
    v32 = v9;
  }

  if (_isPrimaryLeading)
  {
    v33 = v9;
  }

  else
  {
    v33 = v10;
  }

  [v26 setLeadingWidths:v32];
  [v26 setTrailingWidths:v33];
  panelController2 = [(UISplitViewControllerPanelImpl *)self panelController];
  [panelController2 setConfiguration:v26];

  return v28;
}

- (void)_stopTransitionsInViewController:(id)controller
{
  v15 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  [controllerCopy _stopTransitionsImmediately];
  childViewControllers = [controllerCopy childViewControllers];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [childViewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        [(UISplitViewControllerPanelImpl *)self _stopTransitionsInViewController:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [childViewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_viewControllerChildViewControllersDidChange:(id)change
{
  changeCopy = change;
  v4 = [(UISplitViewControllerPanelImpl *)self _columnForViewController:changeCopy];
  v5 = [(UISplitViewControllerPanelImpl *)&self->super.isa _columnForViewController:changeCopy forceExpandedResult:1];
  if ((v5 & 0x3FD) == 0)
  {
    v6 = v5;
    perColumnViewControllers = self->_perColumnViewControllers;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
    v9 = [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:v8];
    navigationControllerWrapper = [v9 navigationControllerWrapper];
    if (navigationControllerWrapper == changeCopy)
    {
      _isTabBarController = [changeCopy _isTabBarController];

      if ((_isTabBarController & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v11 = self->_perColumnViewControllers;
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
      v13 = [(NSMutableDictionary *)v11 objectForKeyedSubscript:v12];
      viewController = [v13 viewController];
      if (viewController == changeCopy)
      {
        v27 = self->_perColumnViewControllers;
        v15 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
        v16 = v27;
        v28 = v15;
        v26 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:?];
        navigationController = [v26 navigationController];
        if ([navigationController _isCreatedBySplitViewController])
        {
          _isTabBarController2 = [changeCopy _isTabBarController];

          if (_isTabBarController2)
          {
            goto LABEL_11;
          }

LABEL_8:
          [(UISplitViewControllerPanelImpl *)self setViewController:changeCopy forColumn:v6];
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
    navigationController2 = [v21 navigationController];

    if ([navigationController2 isNavigationBarHidden])
    {
      _targetNavigationBarForUISplitViewControllerSidebarButton = [navigationController2 _targetNavigationBarForUISplitViewControllerSidebarButton];
      _existingNavigationBar = [navigationController2 _existingNavigationBar];

      if (_targetNavigationBarForUISplitViewControllerSidebarButton != _existingNavigationBar)
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
    panelController = [(UISplitViewControllerPanelImpl *)self panelController];
    collapsedViewController = [panelController collapsedViewController];

    if (collapsedViewController)
    {
      v6 = objc_loadWeakRetained(&self->_svc);

      if (collapsedViewController != v6)
      {
        _viewControllerForObservableScrollView = [collapsedViewController _viewControllerForObservableScrollView];

        WeakRetained = _viewControllerForObservableScrollView;
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
        viewController = [v9 viewController];
        _viewControllerForObservableScrollView2 = [viewController _viewControllerForObservableScrollView];

        WeakRetained = _viewControllerForObservableScrollView2;
      }

      else
      {
        mainViewController = [(UIPanelController *)self->_panelController mainViewController];
        preservedDetailController = mainViewController;
        if (!mainViewController)
        {
          preservedDetailController = [(UIPanelController *)self->_panelController preservedDetailController];
        }

        _viewControllerForObservableScrollView3 = [preservedDetailController _viewControllerForObservableScrollView];

        if (!mainViewController)
        {
        }

        WeakRetained = _viewControllerForObservableScrollView3;
      }
    }
  }

  return WeakRetained;
}

- (UIViewController)_childViewControllerForSpokenContent
{
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  if ([panelController isCollapsed])
  {
    [panelController collapsedViewController];
  }

  else
  {
    [panelController mainViewController];
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

- (void)_tabBarControllerDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  if ([(UISplitViewControllerPanelImpl *)self _columnForViewController:?]== 2)
  {
    [(UISplitViewControllerPanelImpl *)self setViewController:selectionCopy forColumn:2];
  }
}

- (int64_t)_columnForMonitoredNavigationController:(id)controller
{
  controllerCopy = controller;
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    v5 = [(UISplitViewControllerPanelImpl *)self _columnForViewController:controllerCopy];
    if (v5 != 999)
    {
      perColumnViewControllers = self->_perColumnViewControllers;
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
      v8 = [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:v7];
      navigationController = [v8 navigationController];

      if (navigationController != controllerCopy)
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

- (void)_updateDisplayModeButtonItemIfNecessaryForChangingNavigationController:(id)controller
{
  controllerCopy = controller;
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = _UISplitViewControllerStyleDescription(style);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:9702 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v21}];
  }

  if (![controllerCopy isNavigationBarHidden] || (objc_msgSend(controllerCopy, "_targetNavigationBarForUISplitViewControllerSidebarButton"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(controllerCopy, "_existingNavigationBar"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v6 != v7))
  {
    panelController = [(UISplitViewControllerPanelImpl *)self panelController];
    collapsedState = [panelController collapsedState];

    if (!collapsedState)
    {
      transitionCoordinator = [controllerCopy transitionCoordinator];
      [(UISplitViewControllerPanelImpl *)self _updateDisplayModeButtonItemAndResetForCanceledAnimationWithTransitionCoordinator:transitionCoordinator];

      v11 = [(UISplitViewControllerPanelImpl *)self _columnForMonitoredNavigationController:controllerCopy];
      if (v11 <= 1)
      {
        v12 = v11;
        v13 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30208];
        navigationController = [v13 navigationController];
        navigationBar = [navigationController navigationBar];
        [navigationBar _refreshBackButtonMenu];

        if (style == 2)
        {
          v16 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];

          if (!v12)
          {
            if (v16)
            {
              v17 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30250];
              navigationController2 = [v17 navigationController];
              navigationBar2 = [navigationController2 navigationBar];
              [navigationBar2 _refreshBackButtonMenu];
            }
          }
        }
      }
    }
  }
}

- (void)_navigationControllerDidUpdateStack:(id)stack
{
  stackCopy = stack;
  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    v4 = [(UISplitViewControllerPanelImpl *)self _columnForMonitoredNavigationController:stackCopy];
    if (v4 <= 2)
    {
      v5 = v4;
      topViewController = [stackCopy topViewController];
      perColumnViewControllers = self->_perColumnViewControllers;
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
      v9 = [(NSMutableDictionary *)perColumnViewControllers objectForKeyedSubscript:v8];
      viewController = [v9 viewController];

      if (topViewController != viewController)
      {
        _isCollapsedOrCollapsing = [(UISplitViewControllerPanelImpl *)self _isCollapsedOrCollapsing];
        if (v5 || !_isCollapsedOrCollapsing)
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
            navigationControllerWrapper = 0;
            goto LABEL_14;
          }

LABEL_12:
          v13 = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:v12];
          navigationControllerWrapper = [v13 navigationControllerWrapper];

LABEL_14:
          v15 = [[_UISplitViewControllerColumnContents alloc] initWithViewController:topViewController navigationController:stackCopy navigationControllerWrapper:navigationControllerWrapper];
          v16 = self->_perColumnViewControllers;
          v17 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
          [(NSMutableDictionary *)v16 setObject:v15 forKey:v17];

          goto LABEL_15;
        }

        if (([(UISplitViewControllerPanelImpl *)self _columnForViewController:topViewController]- 3) < 0xFFFFFFFFFFFFFFFELL)
        {
          v12 = &unk_1EFE30220;
          goto LABEL_12;
        }
      }

LABEL_15:
      [(UISplitViewControllerPanelImpl *)self _updateDisplayModeButtonItemIfNecessaryForChangingNavigationController:stackCopy];
    }
  }
}

- (void)_navigationControllerDidChangeNavigationBarHidden:(id)hidden
{
  hiddenCopy = hidden;
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  [panelController navigationControllerDidChangeNavigationBarHidden:hiddenCopy];

  if ([(UISplitViewControllerPanelImpl *)self style])
  {
    _targetNavigationBarForUISplitViewControllerSidebarButton = [hiddenCopy _targetNavigationBarForUISplitViewControllerSidebarButton];
    _existingNavigationBar = [hiddenCopy _existingNavigationBar];
    v7 = _existingNavigationBar;
    if (_targetNavigationBarForUISplitViewControllerSidebarButton == _existingNavigationBar)
    {
      isNavigationBarHidden = [hiddenCopy isNavigationBarHidden];

      if (isNavigationBarHidden)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    if ([(UISplitViewControllerPanelImpl *)self _columnForMonitoredNavigationController:hiddenCopy]<= 2)
    {
      [(UISplitViewControllerPanelImpl *)self _updateDisplayModeButtonItemIfNecessaryForChangingNavigationController:hiddenCopy];
    }
  }

LABEL_7:
}

- (void)_updateDisplayModeButtonItemAndResetForCanceledAnimationWithTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  [(UISplitViewControllerPanelImpl *)self _updateDisplayModeButtonItem];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __116__UISplitViewControllerPanelImpl__updateDisplayModeButtonItemAndResetForCanceledAnimationWithTransitionCoordinator___block_invoke;
  v5[3] = &unk_1E7102C50;
  objc_copyWeak(&v6, &location);
  [coordinatorCopy animateAlongsideTransition:0 completion:v5];
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

- (void)_navigationController:(id)controller navigationBar:(id)bar topItemUpdatedContentLayout:(id)layout
{
  controllerCopy = controller;
  barCopy = bar;
  v8 = [(UISplitViewControllerPanelImpl *)self _navigationBarForSidebarButtonForDisplayMode:[(UISplitViewControllerPanelImpl *)self displayMode]];
  navBarForToggleButton = v8;
  if (!v8)
  {
    navBarForToggleButton = self->_navBarForToggleButton;
  }

  v10 = navBarForToggleButton;

  if (v10 == barCopy && ([controllerCopy isNavigationBarHidden] & 1) == 0)
  {
    panelController = [(UISplitViewControllerPanelImpl *)self panelController];
    collapsedState = [panelController collapsedState];

    if (collapsedState <= 1)
    {
      transitionCoordinator = [controllerCopy transitionCoordinator];
      [(UISplitViewControllerPanelImpl *)self _updateDisplayModeButtonItemAndResetForCanceledAnimationWithTransitionCoordinator:transitionCoordinator];
    }
  }
}

- (void)_navigationController:(id)controller navigationBar:(id)bar itemBackButtonUpdated:(id)updated
{
  if ([(UISplitViewControllerPanelImpl *)self _columnForMonitoredNavigationController:controller, bar, updated]<= 1)
  {

    [(UISplitViewControllerPanelImpl *)self _updateDisplayModeButtonItem];
  }
}

- (id)_navigationController:(id)controller navigationBarAdditionalActionsForBackButtonMenu:(id)menu
{
  v38[2] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  style = [(UISplitViewControllerPanelImpl *)self style];
  if (style - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = _UISplitViewControllerStyleDescription(style);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:9822 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v32}];
  }

  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  if ([panelController collapsedState])
  {

LABEL_18:
    v17 = 0;
    goto LABEL_19;
  }

  _actsAsFakeBackButton = [(UIBarButtonItem *)self->_sidebarToggleButtonItem _actsAsFakeBackButton];

  if (!_actsAsFakeBackButton)
  {
    goto LABEL_18;
  }

  v10 = [(UISplitViewControllerPanelImpl *)self _columnForMonitoredNavigationController:controllerCopy];
  splitBehavior = [(UISplitViewControllerPanelImpl *)self splitBehavior];
  displayMode = [(UISplitViewControllerPanelImpl *)self displayMode];
  v13 = displayMode;
  if (v10 != 2 || displayMode != 1 || splitBehavior != 2)
  {
    v17 = 0;
    if (style != 2 || v10 != 1)
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
      if (v13 != 2 || splitBehavior != 3)
      {
        goto LABEL_19;
      }
    }
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v34 = __104__UISplitViewControllerPanelImpl__navigationController_navigationBarAdditionalActionsForBackButtonMenu___block_invoke;
  v35 = &unk_1E7103DF8;
  selfCopy = self;
  if (style != 2)
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

- (void)_allowingMutationsInDelegateCallback:(id)callback
{
  flags = self->_flags;
  self->_flags = (*&flags & 0xFFFFFFFFEFFFFFFFLL);
  (*(callback + 2))(callback, a2);
  self->_flags = (*&self->_flags & 0xFFFFFFFFEFFFFFFFLL | (((*&flags >> 28) & 1) << 28));
}

- (BOOL)_hasDoubleSideBar
{
  style = [(UISplitViewControllerPanelImpl *)self style];
  v5 = style;
  if ((style - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = _UISplitViewControllerStyleDescription(v5);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:9887 description:{@"Incorrect code path for UISplitViewControllerStyle %@", v9}];

    v7 = 0;
  }

  else
  {
    if (style != 2)
    {
      return 0;
    }

    currentHandler = [(NSMutableDictionary *)self->_perColumnViewControllers objectForKeyedSubscript:&unk_1EFE30220];
    v7 = currentHandler != 0;
  }

  return v7;
}

- (_UISplitViewControllerStyle)styleProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_svc);
  _styleProvider = [WeakRetained _styleProvider];

  return _styleProvider;
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

- (void)_handleArrowPress:(id)press
{
  pressCopy = press;
  _sidebarArrowButtonRecognizer = [(UISplitViewControllerPanelImpl *)self _sidebarArrowButtonRecognizer];

  v5 = pressCopy;
  if (_sidebarArrowButtonRecognizer == pressCopy)
  {
    v6 = [pressCopy state] == 3;
    v5 = pressCopy;
    if (v6 || (v6 = [pressCopy state] == 4, v5 = pressCopy, v6))
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
    _isPrimaryLeading = [(UISplitViewControllerPanelImpl *)self _isPrimaryLeading];
    v6 = !_isPrimaryLeading;
    v7 = _isPrimaryLeading;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  configuration = [panelController configuration];

  [configuration _setLeadingBackgroundStyle:v7];
  [configuration _setTrailingBackgroundStyle:v6];
  v9 = (*(&self->_flags + 5) & 0x10) != 0 && [(UISplitViewControllerPanelImpl *)self style]== 2;
  [configuration _setSupplementaryAdoptsPrimaryBackgroundStyle:v9];
  panelController2 = [(UISplitViewControllerPanelImpl *)self panelController];
  [panelController2 setConfiguration:configuration];
}

- (void)setPrimaryBackgroundStyle:(int64_t)style
{
  if (self->_primaryBackgroundStyle != style)
  {
    self->_primaryBackgroundStyle = style;
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

- (void)setSupplementaryColumnAdoptsPrimaryBackgroundStyle:(BOOL)style
{
  flags = self->_flags;
  if (((((*&flags & 0x100000000000) == 0) ^ style) & 1) == 0)
  {
    v6 = 0x100000000000;
    if (!style)
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
  styleProvider = [(UISplitViewControllerPanelImpl *)self styleProvider];
  primaryBackgroundColor = [styleProvider primaryBackgroundColor];

  return primaryBackgroundColor;
}

- (BOOL)_wantsFloatingSidebar
{
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  wantsFloatingSidebar = [panelController wantsFloatingSidebar];

  return wantsFloatingSidebar;
}

- (void)_setWantsFloatingSidebar:(BOOL)sidebar
{
  sidebarCopy = sidebar;
  panelController = [(UISplitViewControllerPanelImpl *)self panelController];
  [panelController setWantsFloatingSidebar:sidebarCopy];
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